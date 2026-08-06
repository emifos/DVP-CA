import express from "express";
import cors from "cors";
import dotenv from "dotenv";
import articlesRouter from "./routes/articles";

dotenv.config();

const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.json());
app.use(cors());

app.use("/articles", articlesRouter);

app.listen(PORT, () => {
  console.log(`Hello from http://localhost:${PORT}`);
});
