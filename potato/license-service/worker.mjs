const encoder = new TextEncoder();
const decoder = new TextDecoder();
const SESSION_SECONDS = 3600;

function json(value, status = 200) {
  return Response.json(value, { status, headers: { "Cache-Control": "no-store" } });
}

function base64url(bytes) {
  return btoa(String.fromCharCode(...new Uint8Array(bytes)))
    .replaceAll("+", "-").replaceAll("/", "_").replace(/=+$/, "");
}

function unbase64url(text) {
  if (!/^[a-z0-9_-]+$/i.test(text)) throw new Error("Invalid base64url");
  return Uint8Array.from(atob(text.replaceAll("-", "+").replaceAll("_", "/")), (byte) => byte.charCodeAt(0));
}

async function smallJson(request) {
  if (!request.body) return null;
  const textDecoder = new TextDecoder();
  const reader = request.body.getReader();
  let total = 0;
  const chunks = [];
  for (;;) {
    const { value, done } = await reader.read();
    if (done) break;
    total += value.length;
    if (total > 1024) {
      await reader.cancel();
      return null;
    }
    chunks.push(textDecoder.decode(value, { stream: true }));
  }
  return JSON.parse(chunks.join("") + textDecoder.decode());
}

export async function hashKey(key) {
  const digest = new Uint8Array(await crypto.subtle.digest("SHA-256", encoder.encode(key)));
  return Array.from(digest, (byte) => byte.toString(16).padStart(2, "0")).join("");
}

export async function handle(request, env, now = Math.floor(Date.now() / 1000)) {
  if (new URL(request.url).pathname !== "/v1/license") return json({ ok: false }, 404);
  if (request.method !== "POST") return json({ ok: false }, 405);
  if (typeof env.EVOLVY_SIGNING_KEY !== "string" || env.EVOLVY_SIGNING_KEY.length < 32) {
    return json({ ok: false }, 503);
  }
  let licences;
  let input;
  try {
    licences = JSON.parse(env.EVOLVY_LICENSES);
    input = await smallJson(request);
  } catch {
    return json({ ok: false }, 400);
  }
  if (!licences || typeof licences !== "object" || Array.isArray(licences)) return json({ ok: false }, 503);
  if (!input || typeof input.account !== "string" || !/^[1-9]\d{0,15}$/.test(input.account)) {
    return json({ ok: false }, 400);
  }
  const account = input.account;
  const signKey = await crypto.subtle.importKey("raw", encoder.encode(env.EVOLVY_SIGNING_KEY),
    { name: "HMAC", hash: "SHA-256" }, false, ["sign", "verify"]);
  let hash;
  if (typeof input.key === "string" && input.session === undefined && /^[\w-]{16,120}$/.test(input.key)) {
    hash = await hashKey(input.key);
  } else if (typeof input.session === "string" && input.key === undefined && input.session.length <= 500) {
    try {
      const [payload, signature, extra] = input.session.split(".");
      if (!payload || !signature || extra !== undefined) return json({ ok: false }, 403);
      const valid = await crypto.subtle.verify("HMAC", signKey, unbase64url(signature), encoder.encode(payload));
      const session = valid && JSON.parse(decoder.decode(unbase64url(payload)));
      if (!session || session.account !== account || !Number.isInteger(session.until) || session.until <= now
          || typeof session.hash !== "string" || !/^[a-f0-9]{64}$/.test(session.hash)) return json({ ok: false }, 403);
      hash = session.hash;
    } catch {
      return json({ ok: false }, 403);
    }
  } else return json({ ok: false }, 400);
  const row = Object.hasOwn(licences, hash) && licences[hash];
  const expires = row?.expiresAt;
  const lifetime = row?.lifetime === true && expires === undefined;
  if (!row || row.revoked === true || (row.account !== "*" && row.account !== account)
      || (!lifetime && (!Number.isInteger(expires) || expires <= now || expires >= 253402300800))) {
    return json({ ok: false }, 403);
  }
  const payload = base64url(encoder.encode(JSON.stringify({
    hash, account, until: Math.min(now + SESSION_SECONDS, lifetime ? Infinity : expires),
  })));
  const signature = base64url(await crypto.subtle.sign("HMAC", signKey, encoder.encode(payload)));
  return json({
    ok: true, plan: typeof row.plan === "string" ? row.plan.slice(0, 24) : "Member",
    lifetime, expiresAt: lifetime ? undefined : expires,
    keyLabel: typeof row.label === "string" ? row.label.slice(0, 16) : "EVOLVY ••••",
    session: `${payload}.${signature}`,
  });
}

export default { fetch: handleRequest };

function handleRequest(request, env) {
  return handle(request, env);
}
