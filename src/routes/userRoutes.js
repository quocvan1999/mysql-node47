import express from "express";
import { order } from "../controllers/userController.js";

const userRoutes = express.Router();

// API ORDER
userRoutes.post("/order", order);

export default userRoutes;
