SELECT * FROM `Products` WHERE `id` = 15;

START TRANSACTION;

UPDATE `Products`
SET `price` = 1199.00
WHERE `id` = 15;

COMMIT;

SELECT * FROM `Products` WHERE `id` = 15;