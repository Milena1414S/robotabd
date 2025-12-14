SELECT *
FROM `Products`
WHERE `category_id` = 1 AND `price` < 140;

SELECT *
FROM `Orders`
WHERE `status` IN ('shipped', 'completed');

SELECT *
FROM `Users`
WHERE `email` LIKE '%@gmail.com';

SELECT *
FROM `Products`
ORDER BY `price` DESC;

