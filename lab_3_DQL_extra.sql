SELECT 
	`category_id`, 
	COUNT(*) AS `total_products`
FROM 
	`products`
GROUP BY 
	`category_id`;

SELECT 
	SUM(`price` * `stock_quantity`) AS `total_stock_value`
FROM 
	`products`;

SELECT
	AVG(`price`) AS `average_price`,
	MIN(`price`) AS `min_price`,
	MAX(`price`) AS `max_price`
FROM
	`products`
WHERE 
	`category_id` = 1 ;


SELECT
  u.name,
  SUM(oi.quantity * oi.price_at_purchase) AS total_spent
FROM
  Users AS u
JOIN
  Orders AS o ON u.id = o.user_id
JOIN
  Order_Items AS oi ON o.id = oi.order_id
GROUP BY
  u.id, u.name
ORDER BY
  total_spent DESC

 SELECT
  u.name,
  SUM(oi.quantity * oi.price_at_purchase) AS total_spent
FROM
  Users AS u
JOIN
  Orders AS o ON u.id = o.user_id
JOIN
  Order_Items AS oi ON o.id = oi.order_id
GROUP BY
  u.id, u.name
HAVING
  total_spent > 100
ORDER BY
  total_spent DESC

SELECT
	u.name AS customer_name,
	p.name AS product_name,
	oi.quantity,
	o.status
FROM
	Users AS u
INNER JOIN
	Orders AS o ON u.id = o.user_id
INNER JOIN
	Order_Items AS oi ON o.id = oi.order_id
INNER JOIN
	Products AS p ON oi.product_id = p.id
WHERE
	o.status = 'completed'
ORDER BY
	u.name

SELECT
	u.name AS customer_name,
	o.id AS order_id
FROM
	Users AS u
LEFT JOIN
	Orders AS o ON u.id = o.user_id
ORDER BY
	u.name

SELECT
	p.name
FROM
	Products AS p
WHERE
	p.id NOT IN (
		SELECT DISTINCT oi.product_id FROM Order_Items AS oi
  )

SELECT
	u.name AS item_name,
	'User' AS item_type
FROM
	`users` AS u
UNION
SELECT
	c.name AS item_name,
	'Category' AS item_type
FROM
	`categories` AS c
ORDER BY
	item_type, item_name
