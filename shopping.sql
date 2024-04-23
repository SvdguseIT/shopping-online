-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 04:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_detail`
--

CREATE TABLE `address_detail` (
  `address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL DEFAULT '',
  `city` varchar(75) NOT NULL DEFAULT '',
  `state` varchar(75) NOT NULL DEFAULT '',
  `type_name` varchar(50) NOT NULL DEFAULT '',
  `postal_code` varchar(20) NOT NULL DEFAULT '',
  `is_default` int(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address_detail`
--

INSERT INTO `address_detail` (`address_id`, `user_id`, `name`, `phone`, `address`, `city`, `state`, `type_name`, `postal_code`, `is_default`, `status`, `created_date`, `modify_date`) VALUES
(1, 2, 'My Home', '9475000023', 'No 400, Main Street.', 'Colombo', '-', 'Home', '400016', 0, 1, '2024-03-24 10:33:23', '2024-03-25 23:29:54'),
(2, 2, 'My Home', '9475000078', '456D, Kandy Road.', 'Kandy', '-', 'Home', '400004', 1, 1, '2024-03-24 10:38:54', '2024-03-25 23:29:00'),
(3, 2, '1', '1234567890', 'abcd', 'abcd', 'abcd', 'Office', '673902', 0, 2, '2024-03-24 23:15:27', '2024-03-25 23:17:23'),
(4, 2, 'Office1', '6758492011', 'Shop 15, Shopping Complex', 'Colombo', '-', 'Office', '110033', 0, 1, '2024-03-24 23:18:09', '2024-03-25 11:43:16'),
(5, 2, 'My Home', '2345678190', '444B, Gamunupura Street', 'Colombo', '-', 'Home', '456546', 0, 1, '2024-03-24 11:39:37', '2024-03-25 11:39:37');

-- --------------------------------------------------------

--
-- Table structure for table `area_detail`
--

CREATE TABLE `area_detail` (
  `area_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `area_detail`
--

INSERT INTO `area_detail` (`area_id`, `zone_id`, `name`, `status`, `created_date`, `modify_date`) VALUES
(1, 2, 'Area 1', 1, '2024-03-25 16:32:06', '2024-03-26 16:33:46'),
(2, 2, 'Area 2', 1, '2024-03-25 16:37:51', '2024-03-26 16:37:51'),
(3, 1, 'Area 2', 1, '2024-03-25 16:37:55', '2024-03-26 16:37:55'),
(4, 1, 'Area 1', 1, '2024-03-25 16:37:59', '2024-03-26 16:37:59'),
(5, 1, 'Area 3', 1, '2024-03-25 16:38:02', '2024-03-26 16:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `brand_detail`
--

CREATE TABLE `brand_detail` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(150) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '1: active, 2: deleted',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand_detail`
--

INSERT INTO `brand_detail` (`brand_id`, `brand_name`, `status`, `created_date`, `modify_date`) VALUES
(1, 'Selina', 1, '2024-03-25 15:16:50', '2024-03-26 15:18:39');

-- --------------------------------------------------------

--
-- Table structure for table `cart_detail`
--

CREATE TABLE `cart_detail` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `prod_id` int(11) NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_detail`
--

INSERT INTO `cart_detail` (`cart_id`, `user_id`, `prod_id`, `qty`, `status`, `created_date`, `modify_date`) VALUES
(1, 2, 5, 0, 2, '2023-08-06 16:50:58', '2023-08-06 16:53:08'),
(2, 2, 6, 1, 2, '2023-08-06 16:52:48', '2023-08-06 16:54:53'),
(3, 2, 5, 1, 2, '2023-08-08 08:18:57', '2023-08-08 08:19:29'),
(4, 2, 5, 3, 2, '2023-08-08 09:37:44', '2023-08-08 10:12:44'),
(5, 2, 11, 1, 2, '2023-08-08 09:38:01', '2023-08-08 10:12:45'),
(6, 2, 10, 3, 2, '2023-08-08 09:38:02', '2023-08-08 10:12:47'),
(7, 2, 5, 1, 2, '2023-08-08 10:13:04', '2023-08-08 11:45:08'),
(8, 2, 6, 1, 2, '2023-08-08 10:13:06', '2023-08-08 11:45:09'),
(9, 2, 6, 1, 2, '2023-08-08 10:13:08', '2023-08-08 10:13:14'),
(10, 7, 5, 1, 2, '2023-08-08 11:18:33', '2023-08-08 11:31:27'),
(11, 7, 5, 4, 2, '2023-08-08 11:19:31', '2023-08-08 11:44:17'),
(12, 7, 6, 1, 2, '2023-08-08 11:19:55', '2023-08-08 11:37:50'),
(13, 7, 7, 0, 2, '2023-08-08 11:21:24', '2023-08-08 11:32:58'),
(14, 7, 5, 1, 2, '2023-08-08 11:46:21', '2023-08-08 11:47:03'),
(15, 7, 5, 1, 2, '2023-08-08 11:47:08', '2023-08-08 11:47:13'),
(16, 7, 5, 2, 1, '2023-08-08 11:50:56', '2023-08-08 11:59:41'),
(17, 7, 6, 3, 1, '2023-08-08 11:51:03', '2023-08-08 11:51:03'),
(18, 2, 5, 1, 2, '2023-08-08 11:53:14', '2023-08-10 10:26:51'),
(19, 7, 5, 1, 1, '2023-08-10 10:37:12', '2023-08-10 10:37:12'),
(20, 7, 6, 1, 1, '2023-08-10 10:37:14', '2023-08-10 10:37:14'),
(21, 7, 6, 1, 1, '2023-08-10 10:37:16', '2023-08-10 10:37:16'),
(22, 2, 5, 3, 2, '2023-08-10 10:38:03', '2023-08-10 10:39:14'),
(23, 2, 6, 2, 2, '2023-08-10 10:38:10', '2023-08-10 10:39:14'),
(24, 2, 5, 1, 2, '2023-08-10 17:56:55', '2023-08-10 19:23:38'),
(25, 2, 6, 1, 2, '2023-08-10 17:56:57', '2023-08-10 19:23:38'),
(26, 2, 5, 1, 2, '2023-08-10 19:24:33', '2023-08-10 19:25:02'),
(27, 2, 6, 1, 2, '2023-08-10 19:24:35', '2023-08-10 19:25:02'),
(28, 2, 6, 1, 2, '2023-08-10 19:24:37', '2023-08-10 19:25:02'),
(29, 2, 5, 1, 2, '2023-08-10 19:27:56', '2023-08-10 19:28:26'),
(30, 2, 5, 1, 2, '2023-08-10 19:28:53', '2023-08-10 19:29:26'),
(31, 2, 5, 1, 2, '2023-08-10 19:31:36', '2023-08-10 19:32:02'),
(32, 2, 5, 1, 2, '2023-08-10 19:34:46', '2023-08-10 19:34:55'),
(33, 2, 5, 2, 2, '2023-08-10 19:35:51', '2023-08-10 19:41:14'),
(34, 2, 6, 2, 2, '2023-08-10 19:35:54', '2023-08-10 19:41:14'),
(35, 2, 7, 1, 2, '2023-08-10 19:36:04', '2023-08-10 19:41:14'),
(36, 2, 5, 1, 1, '2023-08-11 16:32:23', '2023-08-11 16:32:23');

-- --------------------------------------------------------

--
-- Table structure for table `category_detail`
--

CREATE TABLE `category_detail` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL DEFAULT '',
  `image` varchar(75) NOT NULL DEFAULT '',
  `color` varchar(10) NOT NULL DEFAULT '000000',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT 'delete',
  `created_data` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite_detail`
--

CREATE TABLE `favorite_detail` (
  `fav_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorite_detail`
--

INSERT INTO `favorite_detail` (`fav_id`, `prod_id`, `user_id`, `status`, `created_date`, `modify_date`) VALUES
(1, 5, 5, 1, '2024-03-25 15:19:57', '2024-03-26 15:19:57'),
(9, 10, 2, 1, '2024-03-25 00:57:23', '2024-03-26 00:57:23'),
(11, 6, 2, 1, '2024-03-25 17:19:23', '2024-03-26 17:19:23'),
(12, 5, 2, 1, '2024-03-25 00:00:00', '2024-03-26 19:09:56'),
(13, 7, 2, 1, '2024-03-25 19:15:55', '2024-03-26 19:15:55');

-- --------------------------------------------------------

--
-- Table structure for table `image_detail`
--

CREATE TABLE `image_detail` (
  `img_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL DEFAULT 0,
  `image` varchar(75) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '1 = active, 2 = delete',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image_detail`
--

INSERT INTO `image_detail` (`img_id`, `prod_id`, `image`, `status`, `created_date`, `modify_date`) VALUES
(4, 5, 'product/202307310947354735xuruflIucc.png', 1, '2024-03-25 09:47:35', '2024-03-26 09:47:35'),
(5, 6, 'product/202307310951365136W6nJvPCdzQ.png', 1, '2024-03-25 09:51:36', '2024-03-26 09:51:36'),
(6, 7, 'product/202307310958175817ytVf7AVIOl.png', 1, '2024-03-25 09:58:17', '2024-03-26 09:58:17'),
(7, 8, 'product/202307311010091094RZ1nWHTug.png', 1, '2024-03-25 10:10:09', '2024-03-26 10:10:09'),
(8, 9, 'product/202307311011551155pIjIPWIb4w.png', 1, '2024-03-25 10:11:55', '2024-03-26 10:11:55'),
(9, 10, 'product/20230731101409149FomkojOsMt.png', 1, '2024-03-25 10:14:09', '2024-03-26 10:14:09'),
(10, 11, 'product/202307311018321832QsO9noUdBS.png', 1, '2024-03-25 10:18:32', '2024-03-26 10:18:32'),
(11, 12, 'product/202307311022232223jrsJiejIQu.png', 1, '2024-03-25 10:22:23', '2024-03-26 10:22:23');

-- --------------------------------------------------------

--
-- Table structure for table `notification_detail`
--

CREATE TABLE `notification_detail` (
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `ref_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(100) NOT NULL DEFAULT '',
  `message` varchar(500) NOT NULL DEFAULT '',
  `notification_type` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1,
  `is_read` int(1) NOT NULL DEFAULT 1 COMMENT '1 = new, 2 = read',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offer_detail`
--

CREATE TABLE `offer_detail` (
  `offer_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `start_date` datetime NOT NULL DEFAULT current_timestamp(),
  `end_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_id` int(11) NOT NULL,
  `cart_id` varchar(500) NOT NULL DEFAULT '' COMMENT '1,2,3,4,5',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `total_price` double NOT NULL DEFAULT 0,
  `user_pay_price` double NOT NULL DEFAULT 0,
  `discount_price` double NOT NULL DEFAULT 0,
  `deliver_price` double NOT NULL DEFAULT 0,
  `promo_code_id` varchar(20) NOT NULL DEFAULT '',
  `deliver_type` int(1) NOT NULL DEFAULT 1 COMMENT '1: Deliver, 2: Collection',
  `payment_type` int(1) NOT NULL DEFAULT 1 COMMENT '1: COD, 2: Online',
  `payment_status` int(1) NOT NULL DEFAULT 1 COMMENT '1: waiting, 2: done, 3: fail, 4: refund',
  `order_status` int(1) NOT NULL DEFAULT 1 COMMENT '1: new, 2: order_accept, 3: order_delivered, 4: cancel, 5: order declined',
  `status` int(1) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_payment_detail`
--

CREATE TABLE `order_payment_detail` (
  `transaction_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `transaction_payload` varchar(5000) NOT NULL DEFAULT '',
  `payment_transaction_id` varchar(100) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_method_detail`
--

CREATE TABLE `payment_method_detail` (
  `pay_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `card_number` varchar(50) NOT NULL DEFAULT '',
  `card_month` varchar(3) NOT NULL DEFAULT '',
  `card_year` varchar(5) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `prod_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL DEFAULT 0,
  `brand_id` int(11) NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(200) NOT NULL DEFAULT '',
  `detail` varchar(5000) NOT NULL DEFAULT '',
  `unit_name` varchar(50) NOT NULL DEFAULT '',
  `unit_value` varchar(20) NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '1: active, 2: delete',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promo_code_detail`
--

CREATE TABLE `promo_code_detail` (
  `promo_code_id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL DEFAULT '',
  `description` varchar(5000) NOT NULL DEFAULT '',
  `type` int(1) NOT NULL DEFAULT 1 COMMENT '1 = Per% , 2 = Fix Amount',
  `min_order_amount` double NOT NULL DEFAULT 0,
  `max_discount_amount` double NOT NULL DEFAULT 500,
  `offer_price` decimal(10,0) NOT NULL DEFAULT 0,
  `start_date` datetime NOT NULL DEFAULT current_timestamp(),
  `end_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_detail`
--

CREATE TABLE `review_detail` (
  `review_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `rate` varchar(5) NOT NULL DEFAULT '',
  `message` varchar(1000) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type_detail`
--

CREATE TABLE `type_detail` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL DEFAULT '',
  `image` varchar(75) NOT NULL DEFAULT '',
  `color` varchar(8) NOT NULL DEFAULT '000000',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '1 = active, 2 =delete',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `user_id` int(11) NOT NULL,
  `username` varchar(75) NOT NULL DEFAULT '',
  `user_type` int(1) NOT NULL DEFAULT 1 COMMENT '1 = user, 2 = admin',
  `name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `mobile` varchar(15) NOT NULL DEFAULT '',
  `mobile-code` varchar(6) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `auth_token` varchar(100) NOT NULL DEFAULT '',
  `device_token` varchar(150) NOT NULL DEFAULT '',
  `reset_code` varchar(6) NOT NULL DEFAULT '0000',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '1: active, 2 = delete',
  `create _date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`user_id`, `username`, `user_type`, `name`, `email`, `mobile`, `mobile-code`, `password`, `auth_token`, `device_token`, `reset_code`, `status`, `create _date`, `modify_date`) VALUES
(1, 'admin', 2, 'admin', 'admin@admin.com', '', '', '', 'L3ROzNF2KBvQ07o0D4qi', '', '0000', 1, '2024-03-22 17:20:13', '2024-03-22 17:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `zone_detail`
--

CREATE TABLE `zone_detail` (
  `zone_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modify_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_detail`
--
ALTER TABLE `address_detail`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `area_detail`
--
ALTER TABLE `area_detail`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `brand_detail`
--
ALTER TABLE `brand_detail`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category_detail`
--
ALTER TABLE `category_detail`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `favorite_detail`
--
ALTER TABLE `favorite_detail`
  ADD PRIMARY KEY (`fav_id`);

--
-- Indexes for table `image_detail`
--
ALTER TABLE `image_detail`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_detail`
--
ALTER TABLE `category_detail`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
