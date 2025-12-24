import express from "express";
import { config } from "./config.js";
import reportRoutes from "./routes/report.js";

const app = express();
app.use(express.json({ limit: "10mb" }));

app.get("/health", (_req, res) => {
  res.json({ ok: true, service: "ReportGen" });
});

app.use("/", reportRoutes);

app.listen(config.port, "0.0.0.0", () => {
  console.log(`ReportGen listening on :${config.port}`);
});
