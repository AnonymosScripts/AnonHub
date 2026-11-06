import assert from "node:assert/strict";
import { test } from "node:test";
import { handle, hashKey } from "./worker.mjs";

const now = 2_000_000_000;
const key = "EVOLVY-only-a-fake-test-key";
const hash = await hashKey(key);
const signing = "fake-test-signing-material".repeat(2);
const licensed = { account: "123", plan: "Member", expiresAt: now + 7200, label: "MASKED" };
const env = (row = licensed) => ({ EVOLVY_SIGNING_KEY: signing, EVOLVY_LICENSES: JSON.stringify({ [hash]: row }) });
const post = (body, workerEnv = env(), at = now) => handle(new Request("https://test.invalid/v1/license", {
  method: "POST", body: JSON.stringify(body),
}), workerEnv, at);

test("valid key issues a session without returning the key", async () => {
  const response = await post({ key, account: "123" });
  assert.equal(response.status, 200);
  assert.equal(response.headers.get("cache-control"), "no-store");
  const data = await response.json();
  assert.equal(data.expiresAt, licensed.expiresAt);
  assert.equal(data.keyLabel, "MASKED");
  assert.ok(data.session);
  assert.ok(!JSON.stringify(data).includes(key));
});

test("session can be renewed and is bound to its account, signature and expiry", async () => {
  const { session } = await (await post({ key, account: "123" })).json();
  assert.equal((await post({ session, account: "123" }, env(), now + 900)).status, 200);
  assert.equal((await post({ session, account: "124" })).status, 403);
  assert.equal((await post({ session: "A" + session.slice(1), account: "123" })).status, 403);
  assert.equal((await post({ session, account: "123" }, env(), now + 3600)).status, 403);
  assert.equal((await post({ session, account: "123" }, env({ ...licensed, revoked: true }))).status, 403);
});

test("rejects missing, expired or wrong-account keys and oversized payloads", async () => {
  assert.equal((await post({ key, account: "124" })).status, 403);
  assert.equal((await post({ key: "EVOLVY-different-test-key", account: "123" })).status, 403);
  assert.equal((await post({ key, account: "123" }, env(), now + 7200)).status, 403);
  assert.equal((await post({ key, account: "123", data: "x".repeat(1500) })).status, 400);
  assert.equal((await post({ key, account: "123" }, {})).status, 503);
});

test("lifetime has no licence expiry but its resume session expires", async () => {
  const response = await post({ key, account: "123" }, env({ account: "123", lifetime: true }));
  const data = await response.json();
  assert.equal(data.lifetime, true);
  assert.equal(data.expiresAt, undefined);
  assert.equal((await post({ session: data.session, account: "123" }, env({ account: "123", lifetime: true }), now + 3600)).status, 403);
});
