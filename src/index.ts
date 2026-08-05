import express from "express";

const app = express();
const PORT = 3000;

app.get("/", (reg, res) => {
  res.json({ message: "Hello!" });
});

app.listen(PORT, () => {
  console.log(`Hello from http://localhost:${PORT}`);
});
