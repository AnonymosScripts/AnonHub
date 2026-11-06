import { randomBytes } from "node:crypto";
import { hashKey } from "./worker.mjs";

const [account, duration] = process.argv.slice(2);
const days = Number(duration);
if (!account || !/^[1-9]\d{0,15}$/.test(account) || !duration
    || (duration !== "lifetime" && (!Number.isInteger(days) || days < 1 || days > 3650))) {
  process.stderr.write("Uso: node issue-key.mjs <RobloxUserId> <dias|lifetime>\n");
  process.exitCode = 1;
} else {
  const key = "EVOLVY-" + randomBytes(24).toString("base64url");
  const row = { account, plan: "Member", label: "EVOLVY •" + key.slice(-4) };
  if (duration === "lifetime") row.lifetime = true;
  else row.expiresAt = Math.floor(Date.now() / 1000) + days * 86400;
  process.stdout.write("Key para entregar em privado:\n" + key + "\n\n");
  process.stdout.write("Registro para o segredo EVOLVY_LICENSES:\n");
  process.stdout.write(JSON.stringify({ [await hashKey(key)]: row }, null, 2) + "\n");
}
