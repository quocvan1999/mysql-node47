import express from "express";
import rootRoutes from "./src/routes/rootRoutes.js";
import cors from "cors";

const app = express();

app.use(cors());

app.use(express.json());

app.use(rootRoutes);

app.listen(8080, () => {
  console.log("BE starting with port 8080");
});
