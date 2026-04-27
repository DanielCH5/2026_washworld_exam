-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mariadb
-- Generation Time: Apr 27, 2026 at 12:29 PM
-- Server version: 10.6.20-MariaDB-ubu2004
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2026_1_wash_world`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `addon_pk` char(32) NOT NULL,
  `addon_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_pk` char(32) NOT NULL,
  `brand_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_pk` varchar(10) NOT NULL,
  `user_fk` char(32) NOT NULL,
  `model_fk` char(32) NOT NULL,
  `car_nickname` varchar(50) NOT NULL,
  `car_electric` char(1) NOT NULL,
  `wash_fk` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_pk` char(32) NOT NULL,
  `location_name` varchar(50) NOT NULL,
  `location_address` varchar(100) NOT NULL,
  `location_lat` varchar(13) NOT NULL,
  `location_lon` varchar(13) NOT NULL,
  `location_open_hours` varchar(5) NOT NULL,
  `location_wash_halls` char(1) NOT NULL,
  `location_mat_cleaner` char(1) NOT NULL,
  `location_vacuum` char(1) NOT NULL,
  `location_pre_wash` char(1) NOT NULL,
  `location_max_meters` decimal(3,2) NOT NULL,
  `location_max_mirrors_width_meters` decimal(3,2) NOT NULL,
  `region_fk` char(1) NOT NULL,
  `location_end_url` varchar(50) NOT NULL,
  `location_image_end_url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `model_pk` char(32) NOT NULL,
  `brands_fk` char(32) NOT NULL,
  `model_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_pk` char(32) NOT NULL,
  `user_fk` char(32) NOT NULL,
  `wash_fk` char(1) NOT NULL,
  `order_time_at` bigint(20) UNSIGNED NOT NULL,
  `location_fk` char(32) NOT NULL,
  `car_fk` char(32) NOT NULL,
  `status_fk` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `region_pk` char(1) NOT NULL,
  `region_name` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_pk` char(1) NOT NULL,
  `status_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_pk` char(32) NOT NULL,
  `user_first_name` varchar(20) NOT NULL,
  `user_last_name` varchar(20) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_hashed_password` varchar(255) NOT NULL,
  `user_created_at` bigint(20) UNSIGNED NOT NULL,
  `user_verified_at` bigint(20) UNSIGNED NOT NULL,
  `user_changed_at` bigint(20) UNSIGNED NOT NULL,
  `user_deleted_at` bigint(20) UNSIGNED NOT NULL,
  `user_reset_at` bigint(20) UNSIGNED NOT NULL,
  `user_reset_password_key` char(32) NOT NULL,
  `user_verification_key` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `washes`
--

CREATE TABLE `washes` (
  `wash_pk` char(1) NOT NULL,
  `wash_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`addon_pk`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_pk`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_pk`),
  ADD KEY `model_fk` (`model_fk`),
  ADD KEY `cars_ibfk_1` (`user_fk`),
  ADD KEY `wash_fk` (`wash_fk`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_pk`),
  ADD KEY `region_fk` (`region_fk`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`model_pk`),
  ADD KEY `brands_fk` (`brands_fk`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_pk`),
  ADD KEY `car_fk` (`car_fk`),
  ADD KEY `location_fk` (`location_fk`),
  ADD KEY `status_fk` (`status_fk`),
  ADD KEY `user_fk` (`user_fk`),
  ADD KEY `wash_fk` (`wash_fk`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`region_pk`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_pk`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_pk`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `washes`
--
ALTER TABLE `washes`
  ADD PRIMARY KEY (`wash_pk`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`user_fk`) REFERENCES `users` (`user_pk`),
  ADD CONSTRAINT `cars_ibfk_2` FOREIGN KEY (`wash_fk`) REFERENCES `washes` (`wash_pk`),
  ADD CONSTRAINT `model_fk` FOREIGN KEY (`model_fk`) REFERENCES `models` (`model_pk`);

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `region_fk` FOREIGN KEY (`region_fk`) REFERENCES `regions` (`region_pk`);

--
-- Constraints for table `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `brands_fk` FOREIGN KEY (`brands_fk`) REFERENCES `brands` (`brand_pk`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `car_fk` FOREIGN KEY (`car_fk`) REFERENCES `cars` (`car_pk`),
  ADD CONSTRAINT `location_fk` FOREIGN KEY (`location_fk`) REFERENCES `locations` (`location_pk`),
  ADD CONSTRAINT `status_fk` FOREIGN KEY (`status_fk`) REFERENCES `status` (`status_pk`),
  ADD CONSTRAINT `user_fk` FOREIGN KEY (`user_fk`) REFERENCES `users` (`user_pk`),
  ADD CONSTRAINT `wash_fk` FOREIGN KEY (`wash_fk`) REFERENCES `washes` (`wash_pk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
