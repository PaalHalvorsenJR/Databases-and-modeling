-- Answers for Task1
-- ***************************

-- Queries for a
CREATE TABLE `Ratings` (
  `user_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `rate` INT CHECK (`rate` >= 0 AND `rate` <= 5),
  `comment` VARCHAR(1000),
  PRIMARY KEY (`user_id`, `product_id`),
  FOREIGN KEY (`user_id`) REFERENCES `Users` (`user_id`),
  FOREIGN KEY (`product_id`) REFERENCES `Products` (`product_id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ***************************
-- Queries for b
INSERT iNTO `ratings` (user_id,product_id,rate,comment)
Values (1, 86, 3, `Could be better, but still functional.`),
(2, 74, 3, `Could use some improvement.`),
(7, 102, 4, `Solid product, no major complaints.`),
(8, 60, 4, `Satisfied with my purchase.`),
(9, 94, 5, `Excellent product, exceeded expectations!`),
(10, 113, 5, `Incredible product, would buy again!`),
(11, 68, 5, `Excellent product, exceeded expectations.`),
(12, 83, 4, `Good value for the price.`),
(13, 80, 2, `Disappointed, not as expected.`),
(14, 67, 2, `Poor quality, would not recommend.`),
(15, 100, 4, `Solid product, no major complaints.`),
(16, 69, 2, `Disappointed, not as expected.`),
(17, 99, 5, `Love this product, would buy again.`),
(18, 65, 3, `Could be better, but still functional.`),
(19, 80, 4, `Good product, easy to use.`),
(21, 57, 4, `Good product, would buy again.`),
(22, 19, 4, `Good product, would buy again.`),
(23, 60, 3, `Decent product, nothing special.`),
(24, 53, 3, `Average product, not sure if I would buy again.`),
(25, 109, 4, `Good product, would buy again.`),
(26, 92, 4, `Satisfied with my purchase.`),
(29, 75, 4, `Good value for the price.`),
(30, 79, 4, `Good product, would recommend.`),
(31, 108, 5, `Love this product, would buy again.`),
(32, 104, 5, `Great product, would buy again.`),
(35, 66, 2, `Poor quality, would not recommend.`),
(36, 104, 4, `Good product, would buy again.`),
(40, 45, 3, `Just okay, not sure if I would buy again.`),
(41, 6, 5, `Impressive product, highly recommend!`),
(42, 106, 5, `Amazing product, definitely worth it!`),
(45, 84, 5, `Amazing product, definitely worth it!`),
(46, 114, 5, `Impressive product, highly recommend!`),
(47, 89, 4, `Good product, easy to use.`),
(48, 101, 4, `Good product for the price.`),
(49, 38, 3, `Could use some improvement.`),
(50, 112, 5, `Excellent product, exceeded expectations!`);

-- ***************************
-- Queries for c
UPDATE `products`
SET `price` = `price` * 1.2
WHERE `category` = `Tablet`;

-- ***************************
-- Queries for d

update `products`
set `quantity` = `quantity` + 1
where `quantity` = `smartphone` 
and `category` = `smartphone`;

-- ***************************


