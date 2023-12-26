-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2023 at 08:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ng_food_kiosk`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `status` varchar(1) NOT NULL COMMENT 'N-not submitted, S-submitted, P-paid, D-delivered, C-cancelled',
  `order_date_time` datetime NOT NULL,
  `preparation_time` smallint(6) NOT NULL,
  `delivery_type` varchar(1) NOT NULL COMMENT 'O-onsite, D-delivery',
  `table_nb` int(11) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  `delivery_adress` varchar(200) DEFAULT NULL,
  `delivery_email` varchar(100) DEFAULT NULL,
  `delivery_phone` varchar(20) DEFAULT NULL,
  `delivery_client_name` varchar(30) DEFAULT NULL,
  `delivery_date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `session_id`, `status`, `order_date_time`, `preparation_time`, `delivery_type`, `table_nb`, `total`, `delivery_adress`, `delivery_email`, `delivery_phone`, `delivery_client_name`, `delivery_date_time`) VALUES
(1, 1, 'N', '2023-06-17 00:00:00', 10, 'O', NULL, 25.00, NULL, NULL, NULL, NULL, NULL),
(2, 0, 'S', '2023-06-20 00:00:00', 10, 'O', NULL, 45.00, NULL, NULL, NULL, NULL, NULL),
(3, 0, 'S', '2023-06-20 00:00:00', 10, 'O', NULL, 63.00, NULL, NULL, NULL, NULL, NULL),
(4, 0, 'S', '2023-06-20 00:00:00', 10, 'O', NULL, 63.00, NULL, NULL, NULL, NULL, NULL),
(5, 0, 'S', '2023-06-20 00:00:00', 10, 'O', NULL, 63.00, NULL, NULL, NULL, NULL, NULL),
(6, 0, 'S', '2023-06-20 00:00:00', 10, 'O', NULL, 63.00, NULL, NULL, NULL, NULL, NULL),
(7, 0, 'S', '2023-06-20 00:00:00', 10, 'O', NULL, 63.00, NULL, NULL, NULL, NULL, NULL),
(8, 0, 'S', '2023-06-20 00:00:00', 10, 'O', NULL, 63.00, NULL, NULL, NULL, NULL, NULL),
(9, 0, 'S', '2023-06-20 00:00:00', 10, 'O', NULL, 65.00, NULL, NULL, NULL, NULL, NULL),
(10, 0, 'S', '2023-06-20 00:00:00', 10, 'O', NULL, 65.00, NULL, NULL, NULL, NULL, NULL),
(11, 0, 'S', '2023-06-20 00:00:00', 10, 'O', NULL, 63.00, NULL, NULL, NULL, NULL, NULL),
(12, 0, 'S', '2023-06-20 00:00:00', 10, 'O', NULL, 2.00, NULL, NULL, NULL, NULL, NULL),
(13, 0, 'S', '2023-06-20 00:00:00', 10, 'O', NULL, 2.00, NULL, NULL, NULL, NULL, NULL),
(14, 0, 'S', '2023-06-20 00:00:00', 10, 'O', NULL, 2.00, NULL, NULL, NULL, NULL, NULL),
(15, 7, 'S', '2023-06-21 00:00:00', 10, 'O', NULL, 58.00, NULL, NULL, NULL, NULL, NULL),
(16, 7, 'S', '2023-06-21 00:00:00', 10, 'O', NULL, 45.00, NULL, NULL, NULL, NULL, NULL),
(17, 7, 'S', '2023-06-21 00:00:00', 10, 'O', NULL, 45.00, NULL, NULL, NULL, NULL, NULL),
(18, 7, 'S', '2023-06-21 00:00:00', 10, 'O', NULL, 45.00, NULL, NULL, NULL, NULL, NULL),
(19, 7, 'S', '2023-06-21 00:00:00', 10, 'O', NULL, 20.00, NULL, NULL, NULL, NULL, NULL),
(20, 7, 'S', '2023-06-21 00:00:00', 10, 'O', NULL, 53.00, NULL, NULL, NULL, NULL, NULL),
(21, 7, 'S', '2023-06-21 00:00:00', 10, 'O', 12, 53.00, '', '', '', '', '0000-00-00 00:00:00'),
(22, 7, 'S', '2023-06-21 00:00:00', 10, 'D', 0, 53.00, 'Długa 15/23', 'rgrempka@gmail.com', '+48 784 61', 'Jan', '0000-00-00 00:00:00'),
(23, 7, 'S', '2023-06-21 15:11:30', 10, 'D', 0, 53.00, 'Długa 15/23', 'rgrempka@gmail.com', '+48 784 616 758', 'Jan', '2023-06-22 15:05:00'),
(24, 7, 'S', '2023-06-21 15:14:29', 10, 'D', 0, 53.00, 'Długa 15/23', 'rgrempka@gmail.com', '+48 784 616 758', 'Jan', '2023-06-22 15:05:00'),
(25, 7, 'S', '2023-06-21 15:15:38', 10, 'D', 0, 53.00, 'Długa 15/23', 'rgrempka@gmail.com', '+48 784 616 758', 'Jan', '2023-06-22 15:05:00'),
(26, 7, 'S', '2023-06-21 15:18:56', 10, 'D', 0, 53.00, 'Długa 15/23', 'rgrempka@gmail.com', '+48 784 616 758', '', '2023-06-22 15:05:00'),
(27, 7, 'S', '2023-06-21 15:26:41', 10, 'D', 0, 53.00, 'Długa 15/23', 'rgrempka@gmail.com', '+48 784 616 758', '', '2023-06-22 15:05:00'),
(29, 7, 'S', '2023-06-21 16:39:18', 0, 'O', 2, 11.00, '', '', '', '', '0000-00-00 00:00:00'),
(30, 7, 'S', '2023-06-21 16:39:30', 0, 'O', 2, 11.00, '', '', '', '', '0000-00-00 00:00:00'),
(31, 7, 'S', '2023-06-21 17:19:52', 0, '', 0, 10.00, '', '', '', '', '0000-00-00 00:00:00'),
(32, 7, 'S', '2023-06-21 17:55:11', 0, 'D', 0, 40.00, 'Długa 15/23', 'rgrempka@gmail.com', '+48 784 616 758', 'Jan', '2023-06-21 21:54:00'),
(33, 7, 'S', '2023-06-21 20:31:56', 0, '', 0, 20.00, '', '', '', '', '0000-00-00 00:00:00'),
(34, 7, 'S', '2023-06-21 20:33:03', 0, '', 0, 20.00, '', '', '', '', '0000-00-00 00:00:00'),
(35, 7, 'S', '2023-06-21 20:33:51', 0, '', 0, 20.00, '', '', '', '', '0000-00-00 00:00:00'),
(36, 7, 'S', '2023-06-21 20:33:54', 0, '', 0, 20.00, '', '', '', '', '0000-00-00 00:00:00'),
(37, 7, 'S', '2023-06-21 20:35:00', 0, '', 0, 20.00, '', '', '', '', '0000-00-00 00:00:00'),
(38, 7, 'S', '2023-06-21 20:36:00', 0, '', 0, 20.00, '', '', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `qty` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `session_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `date_time`, `qty`, `unit_price`, `session_id`) VALUES
(1, 1, 1, '2023-06-17 16:37:50', 1, 20.00, 1),
(2, 1, 5, '2023-06-17 16:38:20', 1, 5.00, 1),
(3, 6, 4, '0000-00-00 00:00:00', 1, 5.00, 0),
(4, 8, 4, '2023-06-20 17:30:59', 1, 5.00, 0),
(5, 9, 6, '2023-06-20 17:30:59', 1, 1.00, 0),
(6, 10, 1, '2023-06-20 17:30:59', 1, 20.00, 0),
(7, 10, 2, '2023-06-20 17:30:59', 1, 15.00, 0),
(8, 10, 3, '2023-06-20 17:30:59', 1, 18.00, 0),
(9, 10, 5, '2023-06-20 17:30:59', 1, 5.00, 0),
(10, 10, 4, '2023-06-20 17:30:59', 1, 5.00, 0),
(11, 10, 7, '2023-06-20 17:30:59', 1, 1.00, 0),
(12, 10, 6, '2023-06-20 17:30:59', 1, 1.00, 0),
(13, 11, 5, '2023-06-20 17:30:59', 1, 5.00, 0),
(14, 11, 4, '2023-06-20 17:30:59', 1, 5.00, 0),
(15, 11, 1, '2023-06-20 17:30:59', 1, 20.00, 0),
(16, 11, 2, '2023-06-20 17:30:59', 1, 15.00, 0),
(17, 11, 3, '2023-06-20 17:30:59', 1, 18.00, 0),
(18, 12, 6, '2023-06-20 17:30:59', 1, 1.00, 0),
(19, 12, 7, '2023-06-20 17:30:59', 1, 1.00, 0),
(20, 13, 6, '2023-06-20 17:30:59', 1, 1.00, 0),
(21, 13, 7, '2023-06-20 17:30:59', 1, 1.00, 0),
(22, 14, 6, '2023-06-20 17:30:59', 1, 1.00, 0),
(23, 14, 7, '2023-06-20 17:30:59', 1, 1.00, 0),
(24, 15, 1, '2023-06-21 17:30:59', 1, 20.00, 7),
(25, 15, 2, '2023-06-21 17:30:59', 1, 15.00, 7),
(26, 15, 3, '2023-06-21 17:30:59', 1, 18.00, 7),
(27, 15, 4, '2023-06-21 17:30:59', 1, 5.00, 7),
(28, 16, 5, '2023-06-21 17:30:59', 1, 5.00, 7),
(29, 16, 4, '2023-06-21 17:30:59', 1, 5.00, 7),
(30, 16, 1, '2023-06-21 17:30:59', 1, 20.00, 7),
(31, 16, 2, '2023-06-21 17:30:59', 1, 15.00, 7),
(32, 17, 5, '2023-06-21 17:30:59', 1, 5.00, 7),
(33, 17, 4, '2023-06-21 17:30:59', 1, 5.00, 7),
(34, 17, 1, '2023-06-21 17:30:59', 1, 20.00, 7),
(35, 17, 2, '2023-06-21 17:30:59', 1, 15.00, 7),
(36, 18, 5, '2023-06-21 17:30:59', 1, 5.00, 7),
(37, 18, 4, '2023-06-21 17:30:59', 1, 5.00, 7),
(38, 18, 1, '2023-06-21 17:30:59', 1, 20.00, 7),
(39, 18, 2, '2023-06-21 17:30:59', 1, 15.00, 7),
(40, 19, 5, '2023-06-21 17:30:59', 1, 5.00, 7),
(41, 19, 2, '2023-06-21 17:30:59', 1, 15.00, 7),
(42, 20, 2, '2023-06-21 17:30:59', 1, 15.00, 7),
(43, 20, 3, '2023-06-21 17:30:59', 1, 18.00, 7),
(44, 20, 1, '2023-06-21 17:30:59', 1, 20.00, 7),
(45, 21, 2, '2023-06-21 17:30:59', 1, 15.00, 7),
(46, 21, 3, '2023-06-21 17:30:59', 1, 18.00, 7),
(47, 21, 1, '2023-06-21 17:30:59', 1, 20.00, 7),
(48, 22, 2, '2023-06-21 17:30:59', 1, 15.00, 7),
(49, 22, 3, '2023-06-21 17:30:59', 1, 18.00, 7),
(50, 22, 1, '2023-06-21 17:30:59', 1, 20.00, 7),
(51, 23, 2, '2023-06-21 17:30:59', 1, 15.00, 7),
(52, 23, 3, '2023-06-21 17:30:59', 1, 18.00, 7),
(53, 23, 1, '2023-06-21 17:30:59', 1, 20.00, 7),
(54, 24, 2, '2023-06-21 17:30:59', 1, 15.00, 7),
(55, 24, 3, '2023-06-21 17:30:59', 1, 18.00, 7),
(56, 24, 1, '2023-06-21 17:30:59', 1, 20.00, 7),
(57, 25, 2, '2023-06-21 17:30:59', 1, 15.00, 7),
(58, 25, 3, '2023-06-21 17:30:59', 1, 18.00, 7),
(59, 25, 1, '2023-06-21 17:30:59', 1, 20.00, 7),
(60, 26, 2, '2023-06-21 13:18:56', 1, 15.00, 7),
(61, 26, 3, '2023-06-21 13:18:56', 1, 18.00, 7),
(62, 26, 1, '2023-06-21 13:18:56', 1, 20.00, 7),
(63, 27, 2, '2023-06-21 13:26:41', 1, 15.00, 7),
(64, 27, 3, '2023-06-21 13:26:41', 1, 18.00, 7),
(65, 27, 1, '2023-06-21 13:26:41', 1, 20.00, 7),
(66, 29, 5, '2023-06-21 14:39:18', 1, 5.00, 7),
(67, 29, 4, '2023-06-21 14:39:18', 1, 5.00, 7),
(68, 29, 6, '2023-06-21 14:39:18', 1, 1.00, 7),
(69, 30, 5, '2023-06-21 14:39:30', 1, 5.00, 7),
(70, 30, 4, '2023-06-21 14:39:30', 1, 5.00, 7),
(71, 30, 6, '2023-06-21 14:39:30', 1, 1.00, 7),
(72, 31, 5, '2023-06-21 15:19:52', 1, 5.00, 7),
(73, 31, 4, '2023-06-21 15:19:52', 1, 5.00, 7),
(74, 32, 5, '2023-06-21 15:55:11', 1, 5.00, 7),
(75, 32, 4, '2023-06-21 15:55:11', 1, 5.00, 7),
(76, 32, 5, '2023-06-21 15:55:11', 1, 5.00, 7),
(77, 32, 4, '2023-06-21 15:55:11', 1, 5.00, 7),
(78, 32, 1, '2023-06-21 15:55:11', 1, 20.00, 7),
(79, 33, 5, '2023-06-21 18:31:56', 1, 5.00, 7),
(80, 33, 4, '2023-06-21 18:31:56', 1, 5.00, 7),
(81, 33, 5, '2023-06-21 18:31:56', 1, 5.00, 7),
(82, 33, 4, '2023-06-21 18:31:56', 1, 5.00, 7),
(83, 34, 5, '2023-06-21 18:33:03', 1, 5.00, 7),
(84, 34, 4, '2023-06-21 18:33:03', 1, 5.00, 7),
(85, 34, 5, '2023-06-21 18:33:03', 1, 5.00, 7),
(86, 34, 4, '2023-06-21 18:33:03', 1, 5.00, 7),
(87, 35, 5, '2023-06-21 18:33:51', 1, 5.00, 7),
(88, 35, 4, '2023-06-21 18:33:51', 1, 5.00, 7),
(89, 35, 5, '2023-06-21 18:33:51', 1, 5.00, 7),
(90, 35, 4, '2023-06-21 18:33:51', 1, 5.00, 7),
(91, 36, 5, '2023-06-21 18:33:54', 1, 5.00, 7),
(92, 36, 4, '2023-06-21 18:33:54', 1, 5.00, 7),
(93, 36, 5, '2023-06-21 18:33:54', 1, 5.00, 7),
(94, 36, 4, '2023-06-21 18:33:54', 1, 5.00, 7),
(95, 37, 5, '2023-06-21 18:35:00', 1, 5.00, 7),
(96, 37, 4, '2023-06-21 18:35:00', 1, 5.00, 7),
(97, 37, 5, '2023-06-21 18:35:00', 1, 5.00, 7),
(98, 37, 4, '2023-06-21 18:35:00', 1, 5.00, 7),
(99, 38, 5, '2023-06-21 18:36:00', 1, 5.00, 7),
(100, 38, 4, '2023-06-21 18:36:00', 1, 5.00, 7),
(101, 38, 5, '2023-06-21 18:36:00', 1, 5.00, 7),
(102, 38, 4, '2023-06-21 18:36:00', 1, 5.00, 7);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `qty_on_stock` int(11) NOT NULL,
  `type` varchar(1) NOT NULL COMMENT 'M-meal, B-baverage, A-addon',
  `preparation_time` int(11) NOT NULL COMMENT 'in minutes',
  `picture_id` varchar(300) DEFAULT NULL COMMENT 'location to the image file',
  `session_id` int(11) DEFAULT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `unit_price`, `qty_on_stock`, `type`, `preparation_time`, `picture_id`, `session_id`, `description`) VALUES
(1, 'BURGER KING', 20.00, 1000, 'M', 10, NULL, 1, 'Roll with beef cutlet, tomato, salad and mayonnaise'),
(2, 'CHICKEN BURGER', 15.00, 1000, 'M', 10, '', 1, 'Roll with chicken cutlet, tomato, salad and mayonnaise'),
(3, 'VEGE BURGER', 18.00, 1000, 'M', 10, '', 1, 'Roll with tofu cutlet, tomato, salad and mayonnaise'),
(4, 'MINERAL WATER NON GAS 200 ML', 5.00, 1000, 'B', 0, '', 1, 'Mineral water non gas'),
(5, 'COFFEE BLACK 200 ML ', 5.00, 1000, 'B', 1, NULL, 1, 'Black coffee'),
(6, 'KETCHUP', 1.00, 1000, 'A', 0, NULL, 1, ''),
(7, 'MAYONNAISE\r\n', 1.00, 1000, 'A', 0, NULL, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `product_items`
--

CREATE TABLE `product_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_items`
--

INSERT INTO `product_items` (`id`, `product_id`, `name`, `qty`) VALUES
(1, 1, 'ROLL', 1),
(2, 1, 'SALAD', 1),
(3, 1, 'TOMATO', 1),
(4, 1, 'BEEF CUTLET', 2),
(5, 1, 'MAYONNAISE', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id_fk` (`order_id`),
  ADD KEY `product_id_fk` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_items`
--
ALTER TABLE `product_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id_fk2` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_items`
--
ALTER TABLE `product_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_id_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `product_id_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_items`
--
ALTER TABLE `product_items`
  ADD CONSTRAINT `product_id_fk2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
