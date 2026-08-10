import express from "express";
import cors from "cors";
import dotenv from "dotenv";
import articlesRouter from "./routes/articles";
import authRoutes from "./routes/auth";

dotenv.config();

const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.json());
app.use(cors());

app.use("/articles", articlesRouter);
app.use("/auth", authRoutes);

app.listen(PORT, () => {
  console.log(`Hello from http://localhost:${PORT}`);
});
