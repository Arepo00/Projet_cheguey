// ReportGen/src/storage.js
import fs from "fs/promises";
import { existsSync } from "fs";
import path from "path";

export async function ensureDir(dirPath) {
  await fs.mkdir(dirPath, { recursive: true });
}

export async function writeJson(filePath, obj) {
  const dir = path.dirname(filePath);
  await ensureDir(dir);
  await fs.writeFile(filePath, JSON.stringify(obj, null, 2), "utf-8");
}

export async function readJson(filePath) {
  const s = await fs.readFile(filePath, "utf-8");
  return JSON.parse(s);
}

export async function safeStat(filePath) {
  try {
    return await fs.stat(filePath);
  } catch {
    return null;
  }
}

export async function listDirs(parentDir) {
  const entries = await fs.readdir(parentDir, { withFileTypes: true });
  return entries.filter((e) => e.isDirectory()).map((e) => e.name);
}

export async function rmrf(targetPath) {
  await fs.rm(targetPath, { recursive: true, force: true });
}
