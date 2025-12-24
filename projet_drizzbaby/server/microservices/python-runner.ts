import { promisify } from "util";
import { execFile } from "child_process";
import path from "path";
import { fileURLToPath } from "url";
import type { InsertFinding } from "@shared/schema";

const execFileAsync = promisify(execFile);

const currentDir = path.dirname(fileURLToPath(import.meta.url));
const pythonDir = path.resolve(currentDir, "../python_microservices");

// 🔹 commande Python : sur ton Windows, c'est "py"
const PYTHON_CMD =
  process.env.PYTHON_CMD || (process.platform === "win32" ? "py" : "python3");

export interface PythonMicroserviceResult {
  findings: Omit<InsertFinding, "scanId">[];
}

export async function runPythonMicroservice(
  scriptName: string,
  apkPath: string,
): Promise<PythonMicroserviceResult> {
  const scriptPath = path.join(pythonDir, scriptName);

  try {
    const { stdout } = await execFileAsync(PYTHON_CMD, [scriptPath, apkPath], {
      maxBuffer: 10 * 1024 * 1024,
    });
    return JSON.parse(stdout) as PythonMicroserviceResult;
  } catch (error) {
    console.error(`Python microservice ${scriptName} failed:`, error);
    return { findings: [] };
  }
}
