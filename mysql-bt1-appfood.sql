CREATE DATABASE app_food

USER app_food

-- Table users
CREATE TABLE users(
	user_id INT AUTO_INCREMENT PRIMARY KEY,
	full_name VARCHAR(100),
	email VARCHAR(100),
	pass_word VARCHAR(150)
)

-- Add data table users
INSERT INTO users (full_name, email, pass_word) VALUES
('John Doe', 'john.doe@example.com', 'password123'),
('Jane Smith', 'jane.smith@example.com', 'password123'),
('Michael Johnson', 'michael.johnson@example.com', 'password123'),
('Emily Davis', 'emily.davis@example.com', 'password123'),
('David Brown', 'david.brown@example.com', 'password123'),
('Sophia Wilson', 'sophia.wilson@example.com', 'password123'),
('James Taylor', 'james.taylor@example.com', 'password123'),
('Olivia Martinez', 'olivia.martinez@example.com', 'password123'),
('Daniel White', 'daniel.white@example.com', 'password123'),
('Isabella Harris', 'isabella.harris@example.com', 'password123'),
('Matthew Clark', 'matthew.clark@example.com', 'password123'),
('Ava Rodriguez', 'ava.rodriguez@example.com', 'password123'),
('Lucas Lewis', 'lucas.lewis@example.com', 'password123'),
('Mia Walker', 'mia.walker@example.com', 'password123'),
('Alexander Hall', 'alexander.hall@example.com', 'password123'),
('Amelia Allen', 'amelia.allen@example.com', 'password123'),
('Ethan Scott', 'ethan.scott@example.com', 'password123'),
('Abigail Young', 'abigail.young@example.com', 'password123'),
('William King', 'william.king@example.com', 'password123'),
('Charlotte Wright', 'charlotte.wright@example.com', 'password123')
('Test khong hoat dong', 'charlotte.wright@example.com', 'password123');

-- Table restaurant
CREATE TABLE restaurant(
	res_id INT AUTO_INCREMENT PRIMARY KEY,
	res_name VARCHAR(150),
	image VARCHAR(255),
	description VARCHAR(255)
)

-- Add data table restaurant
INSERT INTO restaurant (res_name, image, description) VALUES
('Sunset Grill', 'https://example.com/images/sunset-grill.jpg', 'A cozy beachside grill with the best sunsets.'),
('Ocean Breeze', 'https://example.com/images/ocean-breeze.jpg', 'A seafood lover’s paradise, fresh from the sea.'),
('Mountain View Bistro', 'https://example.com/images/mountain-view.jpg', 'Rustic dishes with an incredible view of the mountains.'),
('Urban Eatery', 'https://example.com/images/urban-eatery.jpg', 'Trendy dishes for city dwellers with a love for food.'),
('Green Garden', 'https://example.com/images/green-garden.jpg', 'Farm-to-table vegetarian delights.'),
('The Spice Route', 'https://example.com/images/spice-route.jpg', 'Exotic flavors from across Asia and the Middle East.'),
('La Dolce Vita', 'https://example.com/images/la-dolce-vita.jpg', 'Authentic Italian cuisine in a romantic setting.'),
('The Steakhouse', 'https://example.com/images/steakhouse.jpg', 'Premium steaks and a wide selection of wines.'),
('Sushi Dreams', 'https://example.com/images/sushi-dreams.jpg', 'Fresh and innovative sushi dishes with a modern twist.'),
('Taco Fiesta', 'https://example.com/images/taco-fiesta.jpg', 'A vibrant spot for the best tacos and margaritas.'),
('The Breakfast Club', 'https://example.com/images/breakfast-club.jpg', 'Start your day right with delicious breakfast options.'),
('Burgers & Brews', 'https://example.com/images/burgers-brews.jpg', 'Gourmet burgers paired with the best craft beers.'),
('Café de Paris', 'https://example.com/images/cafe-de-paris.jpg', 'A quaint French café offering pastries and coffee.'),
('The Vegan Corner', 'https://example.com/images/vegan-corner.jpg', 'Innovative plant-based dishes for the conscious eater.'),
('Pizza Palace', 'https://example.com/images/pizza-palace.jpg', 'Stone-baked pizzas with a variety of fresh toppings.'),
('BBQ Nation', 'https://example.com/images/bbq-nation.jpg', 'A mecca for barbecue enthusiasts, smoky and spicy.'),
('The Golden Dragon', 'https://example.com/images/golden-dragon.jpg', 'Traditional Chinese dishes in a modern setting.'),
('El Rancho', 'https://example.com/images/el-rancho.jpg', 'Tex-Mex flavors with a touch of Southwest charm.'),
('The Noodle House', 'https://example.com/images/noodle-house.jpg', 'Authentic noodle dishes from all over Asia.'),
('Street Bites', 'https://example.com/images/street-bites.jpg', 'Street food classics from around the world.');

-- Table food type
CREATE TABLE food_type(
	type_id INT AUTO_INCREMENT PRIMARY KEY,
	type_name VARCHAR(150)
)

-- Add data table food type
INSERT INTO food_type (type_name) VALUES
('Italian'),
('Chinese'),
('Mexican'),
('Japanese'),
('Indian'),
('Thai'),
('French'),
('Vietnamese'),
('Greek'),
('Spanish'),
('American'),
('Turkish'),
('Korean'),
('Mediterranean'),
('Lebanese'),
('Brazilian'),
('Caribbean'),
('Ethiopian'),
('Moroccan'),
('German');

-- Table rate res
CREATE TABLE rate_res(
	rate_res_id INT PRIMARY KEY AUTO_INCREMENT,

	user_id INT,
	FOREIGN KEY(user_id) REFERENCES users(user_id),
	
	res_id INT,
	FOREIGN KEY(res_id) REFERENCES restaurant(res_id),
	
	amount INT,
	date_rate DATE
)

-- Add data table rate res
INSERT INTO rate_res (user_id, res_id, amount, date_rate) VALUES
(1, 1, 5, '2024-09-01'),
(2, 2, 4, '2024-09-02'),
(3, 3, 3, '2024-09-03'),
(4, 4, 5, '2024-09-04'),
(5, 5, 4, '2024-09-05'),
(6, 6, 5, '2024-09-06'),
(7, 7, 3, '2024-09-07'),
(8, 8, 4, '2024-09-08'),
(9, 9, 5, '2024-09-09'),
(10, 10, 4, '2024-09-10'),
(11, 11, 5, '2024-09-11'),
(12, 12, 3, '2024-09-12'),
(13, 13, 4, '2024-09-13'),
(14, 14, 5, '2024-09-14'),
(15, 15, 3, '2024-09-15'),
(16, 16, 4, '2024-09-16'),
(17, 17, 5, '2024-09-17'),
(18, 18, 4, '2024-09-18'),
(19, 19, 3, '2024-09-19'),
(20, 20, 5, '2024-09-20');

-- Table like res
CREATE TABLE like_res(
	like_res_id INT PRIMARY KEY AUTO_INCREMENT,
	
	user_id INT,
	FOREIGN KEY(user_id) REFERENCES users(user_id),
	
	res_id INT,
	FOREIGN KEY(res_id) REFERENCES restaurant(res_id),
	
	date_like DATE
)

-- Add data table like res
INSERT INTO like_res (user_id, res_id, date_like) VALUES
(1, 1, '2024-09-01'),
(2, 2, '2024-09-02'),
(3, 3, '2024-09-03'),
(4, 4, '2024-09-04'),
(5, 5, '2024-09-05'),
(6, 6, '2024-09-06'),
(7, 7, '2024-09-07'),
(8, 8, '2024-09-08'),
(9, 9, '2024-09-09'),
(10, 10, '2024-09-10'),
(11, 11, '2024-09-11'),
(12, 12, '2024-09-12'),
(13, 13, '2024-09-13'),
(14, 14, '2024-09-14'),
(15, 15, '2024-09-15'),
(16, 16, '2024-09-16'),
(17, 17, '2024-09-17'),
(18, 18, '2024-09-18'),
(19, 19, '2024-09-19'),
(20, 20, '2024-09-20');


-- Table foods
CREATE TABLE foods(
	food_id INT PRIMARY KEY AUTO_INCREMENT,
	
	food_name VARCHAR(255),
	image VARCHAR(255),
	price FLOAT,
	description VARCHAR(255),
	
	type_id INT,
	FOREIGN KEY(type_id) REFERENCES food_type(type_id)
)

-- Add data table foods
INSERT INTO foods (food_name, type_id, price, image, description) VALUES
('Margherita Pizza', 1, 150000, 'https://example.com/images/margherita-pizza.jpg', 'Classic Italian pizza with tomatoes and mozzarella.'),
('General Tso\'s Chicken', 2, 120000, 'https://example.com/images/general-tsos-chicken.jpg', 'Spicy, tangy, and sweet Chinese-style fried chicken.'),
('Tacos al Pastor', 3, 90000, 'https://example.com/images/tacos-al-pastor.jpg', 'Mexican tacos with marinated pork and pineapple.'),
('Sushi Roll', 4, 180000, 'https://example.com/images/sushi-roll.jpg', 'Fresh sushi rolls with salmon, avocado, and rice.'),
('Chicken Curry', 5, 160000, 'https://example.com/images/chicken-curry.jpg', 'Rich and flavorful Indian chicken curry.'),
('Pad Thai', 6, 130000, 'https://example.com/images/pad-thai.jpg', 'Popular Thai stir-fried noodles with shrimp and peanuts.'),
('Croissant', 7, 50000, 'https://example.com/images/croissant.jpg', 'Buttery and flaky French pastry.'),
('Pho', 8, 100000, 'https://example.com/images/pho.jpg', 'Traditional Vietnamese beef noodle soup.'),
('Gyro', 9, 120000, 'https://example.com/images/gyro.jpg', 'Greek pita filled with seasoned lamb and vegetables.'),
('Paella', 10, 180000, 'https://example.com/images/paella.jpg', 'Spanish rice dish with seafood and saffron.'),
('Cheeseburger', 11, 140000, 'https://example.com/images/cheeseburger.jpg', 'Juicy American cheeseburger with lettuce and tomato.'),
('Lamb Kebab', 12, 170000, 'https://example.com/images/lamb-kebab.jpg', 'Grilled Turkish lamb skewers with spices.'),
('Bibimbap', 13, 150000, 'https://example.com/images/bibimbap.jpg', 'Korean rice bowl with vegetables, beef, and egg.'),
('Falafel Wrap', 14, 110000, 'https://example.com/images/falafel-wrap.jpg', 'Mediterranean wrap with falafel, hummus, and veggies.'),
('Hummus', 15, 80000, 'https://example.com/images/hummus.jpg', 'Traditional Lebanese chickpea dip served with pita.'),
('Churrasco', 16, 200000, 'https://example.com/images/churrasco.jpg', 'Brazilian grilled beef steak with chimichurri.'),
('Jerk Chicken', 17, 150000, 'https://example.com/images/jerk-chicken.jpg', 'Spicy Caribbean jerk chicken with rice and peas.'),
('Doro Wat', 18, 130000, 'https://example.com/images/doro-wat.jpg', 'Ethiopian spicy chicken stew with injera.'),
('Tagine', 19, 160000, 'https://example.com/images/tagine.jpg', 'Moroccan slow-cooked meat and vegetable stew.'),
('Bratwurst', 20, 100000, 'https://example.com/images/bratwurst.jpg', 'German sausage served with mustard and sauerkraut.');

-- Table order
CREATE TABLE orders(
	order_id INT PRIMARY KEY AUTO_INCREMENT,
	
	user_id INT,
	FOREIGN KEY(user_id) REFERENCES users(user_id),
	
	food_id INT,
	FOREIGN KEY(food_id) REFERENCES foods(food_id),
	
	amount INT,
	code VARCHAR(100),
	arr_sub_id VARCHAR(100)
)

-- Add data table order
INSERT INTO orders (food_id, user_id, amount, arr_sub_id) VALUES
(1, 1, 2, 'SUB123, SUB456'),
(2, 2, 1, 'SUB789'),
(3, 3, 3, 'SUB101, SUB102'),
(4, 4, 2, 'SUB103, SUB104'),
(5, 5, 1, 'SUB105'),
(6, 6, 4, 'SUB106, SUB107'),
(7, 7, 2, 'SUB108'),
(8, 8, 3, 'SUB109, SUB110'),
(9, 9, 1, 'SUB111'),
(10, 10, 2, 'SUB112, SUB113'),
(11, 11, 1, 'SUB114'),
(12, 12, 2, 'SUB115, SUB116'),
(13, 13, 3, 'SUB117'),
(14, 14, 4, 'SUB118, SUB119'),
(15, 15, 1, 'SUB120'),
(16, 16, 3, 'SUB121, SUB122'),
(17, 17, 2, 'SUB123'),
(18, 18, 4, 'SUB124, SUB125'),
(19, 19, 1, 'SUB126'),
(20, 20, 2, 'SUB127, SUB128');

-- Table sub food
CREATE TABLE sub_food(
	sub_id INT PRIMARY KEY AUTO_INCREMENT,
	
	sub_name VARCHAR(150),
	sub_price FLOAT,

	food_id INT,
	FOREIGN KEY(food_id) REFERENCES foods(food_id)
)

-- Add data to table sub_food
INSERT INTO sub_food (sub_name, sub_price, food_id) VALUES
('Grated Parmesan', 30000, 1),
('Extra Chicken', 35000, 1),
('Chili Flakes', 10000, 2),
('Garlic Sauce', 25000, 2),
('Spicy Mayo', 15000, 3),
('Bacon Bits', 40000, 3),
('Grilled Vegetables', 20000, 4),
('Fried Onions', 12000, 4),
('Mozzarella Cheese', 32000, 5),
('Black Olives', 18000, 5),
('Sun-Dried Tomatoes', 22000, 6),
('Ranch Dressing', 27000, 6),
('Pickles', 16000, 7),
('Green Peppers', 14000, 7),
('Pepperoni Slices', 30000, 8),
('Ham Slices', 35000, 8),
('Pineapple Chunks', 20000, 9),
('Jalapenos', 18000, 9),
('Sour Cream', 25000, 10),
('BBQ Sauce', 15000, 10);

----------------------QUERY---------------------------
-- Tìm 5 người đã like nhà hàng nhiều nhất.
SELECT COUNT(u.user_id) as "Like", u.user_id, u.full_name FROM users u
INNER JOIN like_res lr ON u.user_id = lr.user_id
GROUP BY u.user_id, u.full_name
ORDER BY COUNT(u.user_id) DESC
LIMIT 5

-- Tìm 2 nhà hàng có lượt like nhiều nhất.
SELECT COUNT(res.res_id) as "Like", res.res_id, res.res_name FROM restaurant res
INNER JOIN like_res lr ON res.res_id = lr.res_id
GROUP BY res.res_id, res.res_name
ORDER BY COUNT(res.res_id) DESC
LIMIT 2

-- Tìm người đã đặt hàng nhiều nhất.
SELECT COUNT(u.user_id) as "Order", u.user_id, u.full_name FROM users u
INNER JOIN orders ON u.user_id = orders.user_id
GROUP BY u.user_id, u.full_name
ORDER BY COUNT(u.user_id) DESC
LIMIT 1

-- Tìm người dùng không hoạt động trong hệ thống (không đặt hàng, không like, không đánh giá nhà hàng).
SELECT u.user_id, u.full_name FROM users u
LEFT JOIN orders ON u.user_id = orders.user_id
LEFT JOIN like_res lr ON u.user_id = lr.user_id
LEFT JOIN rate_res rr ON u.user_id = rr.user_id
WHERE orders.user_id IS NULL AND lr.user_id IS NULL AND rr.user_id IS NULL





