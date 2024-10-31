import initModels from "../models/init-models.js";
import sequelize from "../models/connect.js";

const model = initModels(sequelize);

export const likeRestaurant = async (req, res) => {
  try {
    const { user_id, res_id, date_like } = req.body;
    await model.like_res.create({
      user_id,
      res_id,
      date_like,
    });
    return res.status(201).json({ message: "Like restaurant successfully" });
  } catch (error) {
    return res.status(500).json({ message: "Error from Api like restaurant" });
  }
};

export const unlikeRestaurant = async (req, res) => {
  try {
    const { id } = req.params;
    await model.like_res.destroy({
      where: {
        like_res_id: id,
      },
    });
    return res.status(200).json({ message: "Unlike restaurant successfully" });
  } catch (error) {
    return res
      .status(500)
      .json({ message: "Error from Api unlike restaurant" });
  }
};

export const getLikeRestaurantByResId = async (req, res) => {
  try {
    const { id } = req.params;
    const data = await model.like_res.findAll({
      where: {
        res_id: id,
      },
    });

    return res.status(200).json(data);
  } catch (error) {
    return res
      .status(500)
      .json({ message: "Error from Api get like restaurant by res id" });
  }
};

export const getLikeRestaurantByUserId = async (req, res) => {
  try {
    const { id } = req.params;
    const data = await model.like_res.findAll({
      where: {
        user_id: id,
      },
    });

    return res.status(200).json(data);
  } catch (error) {
    return res
      .status(500)
      .json({ message: "Error from Api get like restaurant by user id" });
  }
};

export const rateRestaurant = async (req, res) => {
  try {
    const { user_id, res_id, amount, date_rate } = req.body;
    await model.rate_res.create({
      user_id,
      res_id,
      amount,
      date_rate,
    });
    return res.status(201).json({ message: "Rate restaurant successfully" });
  } catch (error) {
    return res.status(500).json({ message: "Error from Api rate restaurant" });
  }
};

export const getRateRestaurantByResId = async (req, res) => {
  try {
    const { id } = req.params;
    const data = await model.rate_res.findAll({
      where: {
        res_id: id,
      },
    });

    return res.status(200).json(data);
  } catch (error) {
    return res
      .status(500)
      .json({ message: "Error from Api get rate restaurant by res id" });
  }
};

export const getRateRestaurantByUserId = async (req, res) => {
  try {
    const { id } = req.params;
    const data = await model.rate_res.findAll({
      where: {
        user_id: id,
      },
    });

    return res.status(200).json(data);
  } catch (error) {
    return res
      .status(500)
      .json({ message: "Error from Api get rate restaurant by user id" });
  }
};
