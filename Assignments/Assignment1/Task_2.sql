-- Answers for Task2
-- ***************************

-- Queries for a
SELECT * 
FROM `users`
WHERE `registered_date` BETWEEN '2010-02-03' AND '2020-02-03';

-- ***************************
-- Queries for b
SELECT *
FROM `products`
ORDER BY `price` ASC;

-- ***************************
-- Queries for c
SELECT * 
from `products`
WHERE `quantity` = 0;


-- ***************************
-- Queries for d
SELECT `order_id`, ROUND(SUM(`price`), 2) AS `total_price`
FROM `ordersproducts`
GROUP BY `order_id`;

-- ***************************
-- Queries for e
Select ROUND(AVG(`price`),2) AS `average_price`
FROM `products`
WHERE `quantity` > 0;

