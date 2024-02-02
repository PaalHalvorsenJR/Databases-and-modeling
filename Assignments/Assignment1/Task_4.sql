-- Answers for Task1
-- ***************************

-- Queries for a
select `products`.*, `ratings`.`rate` as `rating`
from `products`
left join `ratings` on `ratings`.`product_id` = `products`.`product_id`
where `ratings`.`product_id` is null;

-- ***************************
-- Queries for b
SELECT 
`products`.`product_id`, `products`.`model`,
`products`.`price` AS `current_price`,
`orderspruducts`.`price` AS `last_order_price`,
`orders`.`registered_date` AS `last_order_date`
FROM 
`products` `products`
INNER JOIN (
    SELECT 
        `product_id`,
        MAX(`registered_date`) AS `max_order_date`
        FROM 
        `orders` `orders`
        INNER JOIN `ordersproducts` `orderspruducts` ON `orders`.`order_id` = `orderspruducts`.`order_id`
        GROUP BY 
        `product_id`
    ) `latest_order` ON `products`.`product_id` = `latest_order`.`product_id`
INNER JOIN `ordersproducts` `orderspruducts` ON `products`.`product_id` = `orderspruducts`.`product_id` AND `orderspruducts`.`price` != `products`.`price`
INNER JOIN `orders` `orders` ON `orderspruducts`.`order_id` = `orders`.`order_id` AND `orders`.`registered_date` = `latest_order`.`max_order_date`
ORDER BY `products`.`product_id` ASC;

--***************************
-- Queries for c
SELECT `products`.`product_id`, `products`.`model`, `ratings`.`rate`
FROM `products`
INNER JOIN `ratings` ON `ratings`.`product_id` = `products`.`product_id`
WHERE `rate` = (select max(`rate`) from `ratings`)
ORDER BY `products`.`product_id` ASC;

-- ***************************
-- Queries for d

SELECT `products`.`product_id`, `products`.`model`, SUM(`ordersproducts`.`quantity`) / DATEDIFF('2023-02-24', '2005-04-08') AS `avg_daily_sales`
FROM `products`
inner join `ordersproducts` on `ordersproducts`.`product_id` = `products`.`product_id`
inner join `orders` on `orders`.`order_id` = `ordersproducts`.`order_id`
WHERE `orders`.`registered_date` BETWEEN '2005-04-08' and '2023-02-24'
GROUp BY `products`.`product_id`
ORDER BY `products`.`product_id` ASC;

