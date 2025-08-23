import fs from "node:fs";
import path from "node:path";

const root = process.cwd();
const candidates = [
  path.join(root, "data", "items.final.json"),
  path.join(root, "data", "items.cleaned.json"),
  path.join(root, "data", "items.json")
];

const targetDir = path.join(root, "public", "data");
const target = path.join(targetDir, "items.json");

if (!fs.existsSync(targetDir)) fs.mkdirSync(targetDir, { recursive: true });

for (const p of candidates) {
  if (fs.existsSync(p)) {
    fs.copyFileSync(p, target);
    console.log(`[sync-data] -> public/data/items.json (from ${path.basename(p)})`);
    process.exit(0);
  }
}
console.warn("[sync-data] No source items file found under /data");
process.exit(0);
