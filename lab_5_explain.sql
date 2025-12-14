EXPLAIN SELECT * FROM `Products` WHERE `price` = 709.00;

CREATE INDEX `idx_products_price` ON `Products` (`price`);