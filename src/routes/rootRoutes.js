import express from "express";
import restaurantRoutes from "./restaurantRoutes.js";
import userRoutes from "./userRoutes.js";

const rootRoutes = express.Router();

rootRoutes.use("/res", restaurantRoutes);
rootRoutes.use("/user", userRoutes);

export default rootRoutes;
