-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2023 at 10:49 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment_2`
--
CREATE DATABASE IF NOT EXISTS `assignment_2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `assignment_2`;

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--
-- Creation: Apr 03, 2023 at 09:52 AM
--

DROP TABLE IF EXISTS `Products`;
CREATE TABLE IF NOT EXISTS `Products` (
  `product_id` int(11) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `Products`:
--

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`product_id`, `brand`, `category`, `model`, `price`, `quantity`) VALUES
(1, 'Apple', 'Smartphone', 'iPhone 12', 699, 63),
(2, 'Samsung', 'Smartphone', 'Galaxy S21', 799, 19),
(3, 'Google', 'Smartphone', 'Pixel 5', 699, 87),
(4, 'OnePlus', 'Smartphone', '8 Pro', 799, 0),
(5, 'Motorola', 'Smartphone', 'Edge+', 999, 29),
(6, 'Xiaomi', 'Smartphone', 'Mi 11', 749, 31),
(7, 'Oppo', 'Smartphone', 'Find X3 Pro', 1099, 0),
(8, 'Vivo', 'Smartphone', 'X60 Pro', 799, 100),
(9, 'Huawei', 'Smartphone', 'P40 Pro', 799, 85),
(10, 'LG', 'Smartphone', 'Velvet', 599, 74),
(11, 'Nokia', 'Smartphone', '9.3 PureView', 699, 37),
(12, 'Realme', 'Smartphone', 'X7 Pro', 449, 0),
(13, 'iQOO', 'Smartphone', '5 Pro', 599, 56),
(14, 'ZTE', 'Smartphone', 'Axon 30 Ultra', 599, 99),
(15, 'TCL', 'Smartphone', '10 Pro', 449, 49),
(16, 'Meizu', 'Smartphone', '17', 599, 80),
(17, 'ASUS', 'Smartphone', 'ROG Phone 5', 999, 15),
(18, 'BlackShark', 'Smartphone', '4', 499, 75),
(19, 'Apple', 'Laptop', 'MacBook Air', 999, 17),
(20, 'Dell', 'Laptop', 'XPS 13', 1199, 3),
(21, 'Microsoft', 'Laptop', 'Surface Laptop 3', 999, 34),
(22, 'Lenovo', 'Laptop', 'ThinkPad X1 Carbon', 1499, 0),
(23, 'HP', 'Laptop', 'Spectre x360', 1199, 46),
(24, 'Acer', 'Laptop', 'Swift 5', 999, 59),
(25, 'ASUS', 'Laptop', 'ZenBook UX425', 1099, 36),
(26, 'Razer', 'Laptop', 'Blade Pro 17', 2499, 69),
(27, 'Gigabyte', 'Laptop', 'Aero 15 OLED', 1799, 98),
(28, 'MSI', 'Laptop', 'GS66 Stealth', 1499, 42),
(29, 'Samsung', 'Laptop', 'Notebook 9 Pro', 1099, 88),
(30, 'LG', 'Laptop', 'Gram 17', 1499, 27),
(31, 'Huawei', 'Laptop', 'MateBook X Pro', 1499, 100),
(32, 'Dell', 'Laptop', 'Inspiron 14 5000', 599, 21),
(33, 'HP', 'Laptop', 'Envy x360', 849, 6),
(34, 'Acer', 'Laptop', 'Chromebook Spin 311', 299, 34),
(35, 'ASUS', 'Laptop', 'Chromebook Flip C434', 499, 24),
(36, 'Samsung', 'Laptop', 'Chromebook Plus', 499, 33),
(37, 'Lenovo', 'Laptop', 'IdeaPad 3', 349, 61),
(38, 'Apple', 'Tablet', 'iPad Pro', 799, 70),
(39, 'Samsung', 'Tablet', 'Galaxy Tab S7', 499, 81),
(40, 'Microsoft', 'Tablet', 'Surface Pro 7', 899, 6),
(41, 'Lenovo', 'Tablet', 'Yoga Tab 5', 229, 78),
(42, 'Amazon', 'Tablet', 'Fire HD 8', 89.99, 49),
(43, 'ASUS', 'Tablet', 'Chromebook Tablet CT100', 299, 60),
(44, 'Google', 'Tablet', 'Pixel Slate', 599, 93),
(45, 'Huawei', 'Tablet', 'MediaPad M5 Lite', 299, 79),
(46, 'Acer', 'Tablet', 'Iconia One 10', 149, 47),
(47, 'Archos', 'Tablet', 'Diamond Tab', 199, 38),
(48, 'HP', 'Tablet', 'Chromebook X2', 599, 87),
(49, 'LG', 'Tablet', 'G Pad 5', 149, 3),
(50, 'Samsung', 'Tablet', 'Galaxy Tab A7', 229, 14),
(51, 'Microsoft', 'Tablet', 'Surface Go 2', 399, 77),
(52, 'Lenovo', 'Tablet', 'Tab P11 Pro', 499, 42),
(53, 'Amazon', 'Tablet', 'Fire HD 10', 149.99, 67),
(54, 'ASUS', 'Tablet', 'ZenPad 3S 10', 299, 93),
(55, 'Google', 'Smart Display', 'Nest Hub Max', 229, 89),
(56, 'Huawei', 'Tablet', 'MediaPad T5', 199, 40),
(57, 'Apple', 'Headphones', 'AirPods Pro', 249, 17),
(58, 'Bose', 'Headphones', 'QuietComfort 35 II', 199, 47),
(59, 'Beats', 'Headphones', 'Solo Pro', 299, 64),
(60, 'Sony', 'Headphones', 'WH-1000XM4', 349, 9),
(61, 'Sennheiser', 'Headphones', 'Momentum 3', 349, 73),
(62, 'Jabra', 'Headphones', 'Elite 85h', 229, 29),
(63, 'Bowers & Wilkins', 'Headphones', 'PX7', 399, 27),
(64, 'AKG', 'Headphones', 'N700NC', 299, 47),
(65, 'Bang & Olufsen', 'Headphones', 'Beoplay H9i', 449, 96),
(66, 'Plantronics', 'Headphones', 'BackBeat Go 810', 149, 98),
(67, 'Audio-Technica', 'Headphones', 'ATH-M50xBT', 169, 37),
(68, 'JBL', 'Headphones', 'Club One', 199, 25),
(69, 'Shure', 'Headphones', 'Aonic 50', 399, 99),
(70, 'HyperX', 'Headphones', 'Cloud Flight 2', 159, 79),
(71, 'SteelSeries', 'Headphones', 'Arctis 7P', 229, 0),
(72, 'Corsair', 'Headphones', 'HS60 Pro', 79.99, 7),
(73, 'Logitech', 'Headphones', 'G533 Wireless', 129, 85),
(74, 'Razer', 'Headphones', 'Nari Ultimate', 199, 12),
(75, 'Creative Sound Blaster', 'Headphones', 'JAM Ultra Wireless', 29.99, 0),
(76, 'Canon', 'Camera', 'EOS R6', 2499, 35),
(77, 'Nikon', 'Camera', 'Z7 II', 2999, 21),
(78, 'Sony', 'Camera', 'A1', 6499, 49),
(79, 'Fujifilm', 'Camera', 'X-T4', 1699, 20),
(80, 'Olympus', 'Camera', 'OM-D E-M1 Mark III', 1799, 65),
(81, 'Panasonic', 'Camera', 'Lumix GH5', 1999, 31),
(82, 'Leica', 'Camera', 'M10-R', 7995, 69),
(83, 'Hasselblad', 'Camera', 'X1D II 50C', 5750, 72),
(84, 'Pentax', 'Camera', 'K-3 Mark III', 1999, 86),
(85, 'Sigma', 'Camera', 'fp L', 1999, 90),
(86, 'Logitech', 'Keyboard', 'G915 TKL', 229, 83),
(87, 'Corsair', 'Keyboard', 'K95 RGB Platinum XT', 199, 0),
(88, 'Razer', 'Keyboard', 'BlackWidow Elite', 169, 43),
(89, 'SteelSeries', 'Keyboard', 'Apex 7 TKL', 149, 26),
(90, 'HyperX', 'Keyboard', 'Alloy FPS Pro', 79.99, 99),
(91, 'Microsoft', 'Keyboard', 'Surface Keyboard', 129, 32),
(92, 'Apple', 'Keyboard', 'Magic Keyboard', 99, 64),
(93, 'Logitech', 'Keyboard', 'G Pro X Mechanical Gaming', 149, 70),
(94, 'Corsair', 'Keyboard', 'K70 RGB MK.2 SE', 169, 68),
(95, 'Razer', 'Keyboard', 'Huntsman Mini', 129, 15),
(96, 'SteelSeries', 'Keyboard', 'Apex Pro', 199, 80),
(97, 'HyperX', 'Keyboard', 'Alloy FPS RGB', 109, 61),
(98, 'Microsoft', 'Keyboard & Mouse', 'Wireless Desktop 900', 49.99, 19),
(99, 'Apple', 'Mouse', 'Magic Mouse 2', 79, 13),
(100, 'Logitech', 'Mouse', 'G502 HERO', 79.99, 6),
(101, 'Corsair', 'Mouse', 'Dark Core RGB/SE', 79.99, 10),
(102, 'Razer', 'Mouse', 'DeathAdder Elite', 69.99, 23),
(103, 'SteelSeries', 'Mouse', 'Rival 600', 99.99, 0),
(104, 'HyperX', 'Mouse', 'Pulsefire FPS Pro', 59.99, 40),
(105, 'Apple', 'Smartwatch', 'Apple Watch Series 6', 399, 21),
(106, 'Samsung', 'Smartwatch', 'Galaxy Watch Active2', 249, 25),
(107, 'Fitbit', 'Smartwatch', 'Versa 3', 229, 80),
(108, 'Garmin', 'Smartwatch', 'Vivoactive 4', 349, 55),
(109, 'TicWatch', 'Smartwatch', 'Pro 3', 249, 99),
(110, 'Amazfit', 'Smartwatch', 'GTS 2', 159, 6),
(111, 'Huawei', 'Smartwatch', 'Watch GT 2 Pro', 299, 85),
(112, 'Skagen', 'Smartwatch', 'Falster 3', 295, 88),
(113, 'Withings', 'Smartwatch', 'Steel HR Sport', 199, 27),
(114, 'Mobvoi', 'Smartwatch', 'TicWatch S2', 139, 21);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--
-- Creation: Apr 03, 2023 at 09:52 AM
--

DROP TABLE IF EXISTS `Users`;
CREATE TABLE IF NOT EXISTS `Users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `registered_date` date NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `Users`:
--

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`user_id`, `name`, `username`, `email`, `password`, `registered_date`) VALUES
(1, 'John Moore', 'rlittle', 'kerrdaniel@example.org', 'd9f31be340a88dd5efeb562323393f3bf68bf3aae2c37c62030e6537586ce7d6', '2009-12-20'),
(2, 'Stacy Flowers', 'guzmangrant', 'adamgordon@example.com', '4706386a34b6a0e84981059311c92afc3968f5b4356a6a6a409105ad8726d77d', '2021-06-11'),
(3, 'Emily Howard', 'michelle32', 'guerraphillip@example.net', '502e86ebcf4a7028f25a36898c508e67baabfb687a20eaa2d89db00a3177c1f1', '2008-07-17'),
(4, 'Daniel Mitchell', 'chenjeremiah', 'brooksdonna@example.org', '17db6a35e772ff5e6661b23d8d0a084ae205efba7a62a24eab981160334b01c3', '2005-06-24'),
(5, 'Mark Mathews', 'patelrichard', 'dfoley@example.com', 'be7360c4bab71d59e101f3054dfbb7d713ea0bb50a03308b294a254faa41638c', '2003-03-25'),
(6, 'Steven Williams', 'wrightrobert', 'ggreer@example.net', 'c535c71bfc5c8282cec9be089847141de351b47519920359b310d1820721ea55', '2021-04-08'),
(7, 'Erica Suarez', 'natashamorgan', 'stevenjensen@example.net', '0fe3cf275d1c327f7d47466884fba3137cb5fe986f919657932edeee87e68ae3', '2023-01-17'),
(8, 'Mia Martin', 'ricebarbara', 'williamslaurie@example.com', 'e4c4bdc6829c6484ac17a34a07a1908834dd4d8d34448402920a8aef4615b1ca', '2020-03-30'),
(9, 'Sarah Vaughn', 'dianamolina', 'roblespatrick@example.com', '1af5462983cbda447053b3ac51494e9f0aea7826447988b8cfe34d87e4fae2a7', '2019-12-04'),
(10, 'Mark Hawkins', 'devin34', 'jeremysuarez@example.net', '1a398c4c5f54d8814a4ad0560f3d34088d273a01ab92071e1cd2f6e604667040', '2005-10-24'),
(11, 'Robert Johnson', 'paynekevin', 'charris@example.com', 'efc10f19cb4b6924abe2f303d95a1ba3ed946829dc76b73a8c9db3f3cae3d84c', '2015-02-24'),
(12, 'Ethan Shaw', 'williamhoffman', 'jenniferoneill@example.org', 'ad1322b4f157051ad01cbd0d42d4151fa6f417c84793bd3c6056d0fda43f8ee2', '2019-03-05'),
(13, 'Austin Brown', 'cchambers', 'deborahbond@example.com', 'e27604dd2278c01ec0e16488b409bde360485933688f2fdcd9990bf7edcf8f1f', '2004-02-02'),
(14, 'Stephanie Juarez', 'stephenmendoza', 'hannah94@example.net', '78d29fe1849bbedd36d28297320a778913a5eaa7f864b48dca328acf7591ba60', '2016-03-30'),
(15, 'Kristine Lewis PhD', 'colleen39', 'vincentcunningham@example.org', '270fbf295782b70ff1f9300f5976edaf4daa4271177f2fcb406273c7f84f7927', '2022-05-21'),
(16, 'Patty Wilkerson', 'kennedywilliam', 'colleennelson@example.org', 'b5fae397711c312863d154d5de9f169970e4d2ce0b44103ba5be2a34c152d8ef', '2022-10-13'),
(17, 'Tina Jones', 'nicoleweeks', 'mcox@example.com', '668986a18a843541c47e871529f8f7870dbba5413e55b551abef3cec22e5f1de', '2011-05-21'),
(18, 'Cynthia Brown', 'haynesjulie', 'douglas29@example.net', 'be18b7c860bcb46e7cc12a12a7ee2a8a1d38a7f550f2285b4b723cca994a69b5', '2001-07-04'),
(19, 'Madison Jennings', 'kglover', 'kathleendrake@example.com', '5387674e3bb8ee0036ef83b0c6812b829b89db0b4d5d4eafad2b7e3db4ed60ee', '2001-11-30'),
(20, 'Sandra Mcmahon', 'williamkline', 'carmengould@example.net', '6768b5a99a337857ed021b9028985f33f05217179183b91bbf56e527f9ee5366', '2007-05-14'),
(21, 'Ashley Moore', 'jbolton', 'ginajones@example.com', 'b9fca4ee3ab9ec17d8bc926439ae90474d59bb1383b40d60b6d663035a6b66b7', '2010-12-12'),
(22, 'Lindsay Watson', 'xwhite', 'aaron96@example.com', '43e7ef5f3ad16bafb98ef1f241c8374d5e694046660591658d2b494f7634346c', '2017-06-17'),
(23, 'Daniel Beck MD', 'nhowell', 'kristie37@example.net', '4e336c9c45508b178bdfacf81d1a6ba6fad7781a50decb739518f2bc3c7edb95', '2006-05-04'),
(24, 'Leslie Gay', 'tami83', 'lindsay28@example.org', '6a0a1f24f8caa0e203a6ca6b45638317b0566195a71fda2caf56ec3113d74753', '2017-03-28'),
(25, 'Vanessa Rojas', 'pblack', 'dylan10@example.net', 'c6cc262449eeec104f6675c02146f8b3de62adba6b1c9a214d2fb57836ea8d10', '2015-11-02'),
(26, 'Eric Rich', 'daltondustin', 'taylorjohn@example.com', '5be931f9a2c50121ff61bb95e1194d0f96a1f284787b9e132a75078ef36a3ea1', '2007-04-10'),
(27, 'Charles Wilson', 'fhodges', 'chanjoseph@example.net', 'aa0baf08c1a780360929802c979ae2a93313c5b8a1d1bda78982cdb2fc2eb0a1', '2012-06-11'),
(28, 'Lindsay Hutchinson', 'morrowmelanie', 'brownbrian@example.com', '21105cfe6fdd768f701955bccf9495617c877d744b99ace6e696bb1aa5406e57', '2001-08-27'),
(29, 'Chris Benitez', 'vwashington', 'samantha81@example.com', 'ee214615bbaa1f6b77ad9971470ade0c91ecfb119e01433978c95e6ff868753d', '2022-06-02'),
(30, 'Stacy Valdez', 'michelethompson', 'mcarter@example.net', 'b8f0d99df2be0df61a76c55905414d38189f31cd2ab4df0633bd231924459385', '2005-04-15'),
(31, 'Samantha Blevins', 'chamberskimberly', 'jocelynwilliams@example.net', '4ab9350bd4c7bc56ba0a6bfae035cf24361e4dbfddfcbc03faac9c0fb468a8b9', '2023-01-28'),
(32, 'Wendy Curtis', 'kelleylisa', 'morganemily@example.com', '40e9ba9b1a1094ebcdbb4ef786d1aa7c61e1c1d84ec6d068079fae57a3597e7c', '2017-08-30'),
(33, 'Daniel Casey', 'turneramanda', 'diazdonald@example.org', 'c583cb736b4a66e9bbf5c89009d144b5ea7058a8b298b616b9138ec0672b78ae', '2009-06-13'),
(34, 'Jonathan Cortez', 'cchen', 'brucesmith@example.com', 'fb23c58261ec92c511f1cacccf4d63926c99a4e2ef146e775893a185c61363cd', '2013-10-12'),
(35, 'Caleb Murphy', 'thompsonjohn', 'gary82@example.org', '6e59c4ae5eb7c7db5126bc79a244e23103bfd8c63c5e63588cbb19a1b3df9ec7', '2000-03-28'),
(36, 'Vanessa Allen', 'bmoore', 'sarah68@example.net', '6239734215ec0b765e3e84b51f362ec4ea5149f5e7e11c91b8d5c81abe3a48c3', '2011-06-20'),
(37, 'Ashley Burns', 'preston31', 'pyu@example.com', '98b50492d533fe96cc3d5ef807c1d33e93d196a6f023349663869d5f10580497', '2005-11-13'),
(38, 'Abigail Carlson', 'starkjennifer', 'emiller@example.net', 'e80a790f6ba46659528fafb917b17a764e6d7fdff7147b905b7afd1fff38f64d', '2014-03-07'),
(39, 'John Vega', 'justin81', 'leegonzales@example.com', '5b16bda46279cea6e733baa999b1b02c24db3ea7029128bab76a2bdb24b6e544', '2017-10-01'),
(40, 'Vincent Kelly', 'obailey', 'kimberlyroberts@example.org', 'b315d8d012d5ea7de6ae2e4838a6a8260782affc16ad6736173395032293353e', '2007-05-03'),
(41, 'Francisco Benson', 'kelly59', 'jonesjesse@example.com', '7eea841e41b1abeca43c38575dfb0a0d2d8f69474e99ca3bd8994a8b43cf7e6b', '2022-12-18'),
(42, 'Travis Jones', 'bushscott', 'caroline37@example.org', '46402a420ba4f21dbe37bcb3c9088e2a902c572ea4c9c4c6f72feab764393a12', '2020-04-05'),
(43, 'Anthony Williams', 'ronaldwelch', 'lscott@example.net', 'aef97dc3ea3858c440ea56de74d663eb54361c03d7f928979f9f0a2ac7c789d8', '2018-05-13'),
(44, 'Kathy Smith', 'ijennings', 'kevinwest@example.net', 'e7cf2b35467548db682352531bc6f2a3b23b3a950d2d007360632aea8fa3b8c6', '2011-01-18'),
(45, 'Justin Taylor', 'william70', 'chloebrown@example.com', '19c7b9f82f76e6c73ebaa26cd60cad437b4b6d07bb90a5dc97d962d08f3e32dc', '2011-07-28'),
(46, 'James Martinez', 'hectorpeterson', 'speterson@example.net', '78e37a1d787b54dd040d25f84fd37aa18b63ac15a3f9961bc87e4318b0d4d813', '2019-04-30'),
(47, 'Tara White', 'beckerandrew', 'ryannelson@example.net', '843c0faf0553ac1aae730261ed14678204378ad33a9b182fb6c1ed6b901f59af', '2013-05-22'),
(48, 'Patrick Fernandez', 'troy78', 'william28@example.net', '9aae22912500b0fca1d5ba59b4ff5167bd213f08df3a3b66d65ec39dac4a9ce0', '2011-09-23'),
(49, 'Nathaniel Morse', 'bobby68', 'xcastillo@example.org', 'e5f7a40dc801ab26325384e36353b23c0e2f40604634bfeb8f063e105943e106', '2016-02-21'),
(50, 'William Berger', 'estradajennifer', 'william50@example.com', 'b5b79b1415f088343d222863a21eaef12a9cf2e0682d3f59013c8f91af15ac79', '2002-04-23');


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table Products
--

--
-- Metadata for table Users
--

--
-- Metadata for database assignment_2
--
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
