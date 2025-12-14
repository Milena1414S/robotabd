SELECT * FROM `products` WHERE `id` = 1;

START TRANSACTION;

INSERT INTO `Orders` (`user_id`, `status`) 
VALUES (1, 'pending');

SET @new_order_id = LAST_INSERT_ID();

INSERT INTO `Order_Items` (`order_id`, `product_id`, `quantity`, `price_at_purchase`)
VALUES (@new_order_id, 1, 2, 799.00);

UPDATE `Products`
SET `stock_quantity` = `stock_quantity` - 2
WHERE `id` = 1;

COMMIT;

SELECT * FROM `products` WHERE `id` = 1;