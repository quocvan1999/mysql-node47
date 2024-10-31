import initModels from "../models/init-models.js";
import sequelize from "../models/connect.js";

const model = initModels(sequelize);

export const order = async (req, res) => {
  try {
    const { food_id, user_id, amount, arr_sub_id } = req.body;

    await model.orders.create({
      food_id,
      user_id,
      amount,
      arr_sub_id,
    });
    return res.status(201).json({ message: "Order successfully" });
  } catch (error) {
    return res.status(500).json({ message: "Error from Api order" });
  }
};
