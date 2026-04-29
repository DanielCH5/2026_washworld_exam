-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Vært: mariadb
-- Genereringstid: 29. 04 2026 kl. 11:06:41
-- Serverversion: 10.6.20-MariaDB-ubu2004
-- PHP-version: 8.3.26

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
-- Struktur-dump for tabellen `addons`
--

CREATE TABLE `addons` (
  `addon_pk` char(32) NOT NULL,
  `addon_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `addons_orders`
--

CREATE TABLE `addons_orders` (
  `order_fk` char(32) NOT NULL,
  `addon_fk` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `brands`
--

CREATE TABLE `brands` (
  `brand_pk` char(32) NOT NULL,
  `brand_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `cars`
--

CREATE TABLE `cars` (
  `car_pk` varchar(10) NOT NULL,
  `user_fk` char(32) NOT NULL,
  `model_fk` char(32) NOT NULL,
  `car_nickname` varchar(50) NOT NULL,
  `car_electric` tinyint(1) NOT NULL,
  `car_deleted_at` bigint(20) NOT NULL,
  `subscription_fk` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `locations`
--

CREATE TABLE `locations` (
  `location_pk` char(32) NOT NULL,
  `location_name` varchar(50) NOT NULL,
  `location_address` varchar(100) NOT NULL,
  `location_lat` decimal(10,7) NOT NULL,
  `location_lon` decimal(10,7) NOT NULL,
  `location_open_hours` varchar(20) NOT NULL,
  `location_wash_halls` tinyint(1) NOT NULL,
  `location_mat_cleaner` tinyint(1) NOT NULL,
  `location_vacuum` tinyint(1) NOT NULL,
  `location_pre_wash` tinyint(1) NOT NULL,
  `location_max_meters` decimal(5,2) NOT NULL,
  `location_max_mirrors_width_meters` decimal(5,2) NOT NULL,
  `region_fk` char(1) NOT NULL,
  `location_end_url` varchar(50) DEFAULT NULL,
  `location_image_end_url` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `models`
--

CREATE TABLE `models` (
  `model_pk` char(32) NOT NULL,
  `brand_fk` char(32) NOT NULL,
  `model_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `orders`
--

CREATE TABLE `orders` (
  `order_pk` char(32) NOT NULL,
  `user_fk` char(32) NOT NULL,
  `wash_fk` char(1) NOT NULL,
  `order_time_at` bigint(20) UNSIGNED NOT NULL,
  `location_fk` char(32) NOT NULL,
  `car_fk` varchar(10) NOT NULL,
  `status_fk` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `regions`
--

CREATE TABLE `regions` (
  `region_pk` char(1) NOT NULL,
  `region_name` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `status`
--

CREATE TABLE `status` (
  `status_pk` char(1) NOT NULL,
  `status_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `subscriptions`
--

CREATE TABLE `subscriptions` (
  `subscription_pk` char(32) NOT NULL,
  `wash_fk` char(1) NOT NULL,
  `location_fk` char(32) DEFAULT NULL,
  `all_locations` tinyint(1) DEFAULT NULL,
  `subscription_deleted_at` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE `users` (
  `user_pk` char(32) NOT NULL,
  `user_first_name` varchar(20) NOT NULL,
  `user_last_name` varchar(20) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_hashed_password` varchar(255) NOT NULL,
  `user_created_at` bigint(20) UNSIGNED NOT NULL,
  `user_verified_at` bigint(20) UNSIGNED DEFAULT NULL,
  `user_changed_at` bigint(20) UNSIGNED DEFAULT NULL,
  `user_deleted_at` bigint(20) UNSIGNED DEFAULT NULL,
  `user_reset_at` bigint(20) UNSIGNED DEFAULT NULL,
  `user_reset_password_key` char(32) DEFAULT NULL,
  `user_verification_key` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `washes`
--

CREATE TABLE `washes` (
  `wash_pk` char(1) NOT NULL,
  `wash_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`addon_pk`);

--
-- Indeks for tabel `addons_orders`
--
ALTER TABLE `addons_orders`
  ADD KEY `idx_addons_orders_order` (`order_fk`),
  ADD KEY `idx_addons_orders_addon` (`addon_fk`);

--
-- Indeks for tabel `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_pk`);

--
-- Indeks for tabel `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_pk`),
  ADD KEY `idx_cars_user` (`user_fk`),
  ADD KEY `idx_cars_model` (`model_fk`),
  ADD KEY `idx_cars_subscription` (`subscription_fk`);

--
-- Indeks for tabel `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_pk`),
  ADD KEY `idx_locations_region` (`region_fk`);

--
-- Indeks for tabel `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`model_pk`),
  ADD KEY `idx_models_brand` (`brand_fk`);

--
-- Indeks for tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_pk`),
  ADD KEY `idx_orders_user` (`user_fk`),
  ADD KEY `idx_orders_wash` (`wash_fk`),
  ADD KEY `idx_orders_location` (`location_fk`),
  ADD KEY `idx_orders_car` (`car_fk`),
  ADD KEY `idx_orders_status` (`status_fk`);

--
-- Indeks for tabel `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`region_pk`);

--
-- Indeks for tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_pk`);

--
-- Indeks for tabel `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`subscription_pk`),
  ADD KEY `idx_subscriptions_wash` (`wash_fk`),
  ADD KEY `idx_subscriptions_location` (`location_fk`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_pk`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indeks for tabel `washes`
--
ALTER TABLE `washes`
  ADD PRIMARY KEY (`wash_pk`);

--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `addons_orders`
--
ALTER TABLE `addons_orders`
  ADD CONSTRAINT `fk_addons_orders_addon` FOREIGN KEY (`addon_fk`) REFERENCES `addons` (`addon_pk`),
  ADD CONSTRAINT `fk_addons_orders_order` FOREIGN KEY (`order_fk`) REFERENCES `orders` (`order_pk`);

--
-- Begrænsninger for tabel `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `fk_cars_model` FOREIGN KEY (`model_fk`) REFERENCES `models` (`model_pk`),
  ADD CONSTRAINT `fk_cars_subscription` FOREIGN KEY (`subscription_fk`) REFERENCES `subscriptions` (`subscription_pk`),
  ADD CONSTRAINT `fk_cars_user` FOREIGN KEY (`user_fk`) REFERENCES `users` (`user_pk`);

--
-- Begrænsninger for tabel `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `fk_locations_region` FOREIGN KEY (`region_fk`) REFERENCES `regions` (`region_pk`);

--
-- Begrænsninger for tabel `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `fk_models_brand` FOREIGN KEY (`brand_fk`) REFERENCES `brands` (`brand_pk`);

--
-- Begrænsninger for tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_car` FOREIGN KEY (`car_fk`) REFERENCES `cars` (`car_pk`),
  ADD CONSTRAINT `fk_orders_location` FOREIGN KEY (`location_fk`) REFERENCES `locations` (`location_pk`),
  ADD CONSTRAINT `fk_orders_status` FOREIGN KEY (`status_fk`) REFERENCES `status` (`status_pk`),
  ADD CONSTRAINT `fk_orders_user` FOREIGN KEY (`user_fk`) REFERENCES `users` (`user_pk`),
  ADD CONSTRAINT `fk_orders_wash` FOREIGN KEY (`wash_fk`) REFERENCES `washes` (`wash_pk`);

--
-- Begrænsninger for tabel `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `fk_subscriptions_location` FOREIGN KEY (`location_fk`) REFERENCES `locations` (`location_pk`),
  ADD CONSTRAINT `fk_subscriptions_wash` FOREIGN KEY (`wash_fk`) REFERENCES `washes` (`wash_pk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
