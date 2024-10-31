import express from "express";
import {
  getLikeRestaurantByResId,
  likeRestaurant,
  unlikeRestaurant,
  getLikeRestaurantByUserId,
  rateRestaurant,
  getRateRestaurantByResId,
  getRateRestaurantByUserId,
} from "../controllers/restaurantController.js";

const restaurantRoutes = express.Router();

// API LIKE RESTAURANT
restaurantRoutes.post("/like-restaurant", likeRestaurant);

// API UNLIKE RESTAURANT
restaurantRoutes.delete("/unlike-restaurant/:id", unlikeRestaurant);

// API GET LIKE RESTAURANT BY RES_ID
restaurantRoutes.get(
  "/get-like-restaurant-res-id/:id",
  getLikeRestaurantByResId
);

// API GET LIKE RESTAURANT BY USER_ID
restaurantRoutes.get(
  "/get-like-restaurant-user-id/:id",
  getLikeRestaurantByUserId
);

// API CREATE RATE RESTAURANT
restaurantRoutes.post("/rate-restaurant", rateRestaurant);

// API GET RATE RESTAURANT BY RES_ID
restaurantRoutes.get(
  "/get-rate-restaurant-res-id/:id",
  getRateRestaurantByResId
);

// API GET RATE RESTAURANT BY USER_ID
restaurantRoutes.get(
  "/get-rate-restaurant-user-id/:id",
  getRateRestaurantByUserId
);

export default restaurantRoutes;
