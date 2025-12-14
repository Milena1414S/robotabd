INSERT INTO `Users` (`name`, `email`, `password_hash`) VALUES
('Сергій Новіков', 'novikov@gmail.com', 'hash142');

INSERT INTO `Products` (`name`, `description`, `price`, `stock_quantity`, `category_id`) VALUES
('Hator Gravity TKL', 'Бюджетна, але якісна клавіатура від української компанії.', 39.00, 10, 1);

UPDATE `products`
SET `price` = 149.99
WHERE `name` = "Ducky One 3 Mini";

DELETE FROM `Order_Items`
WHERE `order_id` = 2 AND `product_id` = 2;

