-- Answers for Task3
-- ***************************
-- Queries for a
SELECT `products`.*, `ratings`.`rate` as `rating`
FROM `products`
INNER JOIN `ratings` ON `ratings`.`product_id` = `products`.`product_id`
WHERE `ratings`.`rate` > 2
ORDER BY `ratings`.`rate` desc, `products`.`product_id` asc;
-- ***************************
-- Queries for b

SELECT `products`.`model`, `ordersproducts`.`order_id`, `orders`.`registered_date`
FROM `ordersproducts`
INNER JOIN `orders` ON `orders`.`order_id` = `ordersproducts`.`order_id`
INNER JOIN `products` ON `products`.`product_id` = `ordersproducts`.`product_id`
WHERE `orders`.`registered_date` = '2010-02-03';

-- ***************************
-- Queries for c

SELECT `users`.*,  count(`orders`.`order_id`) as `orders_count`  
FROM `users`
INNER JOIN `orders` ON `orders`.`user_id` = `users`.`user_id`
GROUP BY `users`.`user_id`
having `orders_count` > 2;

-- ***************************
-- Queries for d 
SELECT `products`.`product_id`, `products`.`model`, `ordersproducts`.`quantity`, `orders`.`order_id`
FROM `products`
INNER JOIN `ordersproducts` ON `ordersproducts`.`product_id` = `products`.`product_id`
INNER JOIN `orders` ON `orders`.`order_id` = `ordersproducts`.`order_id`
WHERE `ordersproducts`.`quantity` = 2
GROUP BY `products`.`product_id`
HAVING COUNT(`orders`.`order_id`) = 1
ORDER BY `products`.`product_id` ASC;

--***************************
-- Queries for e
SELECT `users`.*
FROM `users`
INNER JOIN `orders` ON `orders`.`user_id` = `users`.`user_id`
WHERE `users`.`username` = 'justin81';








