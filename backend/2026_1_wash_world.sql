-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Vært: mariadb
-- Genereringstid: 19. 05 2026 kl. 12:18:09
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
  `addon_pk` int(11) NOT NULL,
  `addon_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Data dump for tabellen `addons`
--

INSERT INTO `addons` (`addon_pk`, `addon_name`) VALUES
(1, 'Foam pre-wash'),
(2, 'Active shampoo'),
(3, 'Wheel wash'),
(4, 'High-pressure wash'),
(5, 'Brush wash'),
(6, 'Wax'),
(7, 'Drying'),
(8, 'High gloss'),
(9, 'Underbody wash'),
(10, 'Foam wash'),
(11, 'Degreasing'),
(12, 'Seasonal cleaning');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `addons_orders`
--

CREATE TABLE `addons_orders` (
  `order_fk` char(32) NOT NULL,
  `addon_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Data dump for tabellen `addons_orders`
--

INSERT INTO `addons_orders` (`order_fk`, `addon_fk`) VALUES
('9af465e12d8c427d9f2acdb566aebab6', 1),
('9af465e12d8c427d9f2acdb566aebab6', 2),
('9af465e12d8c427d9f2acdb566aebab6', 3),
('9af465e12d8c427d9f2acdb566aebab6', 4),
('9af465e12d8c427d9f2acdb566aebab6', 5),
('9af465e12d8c427d9f2acdb566aebab6', 6),
('9af465e12d8c427d9f2acdb566aebab6', 7),
('ef1518f68ecc45caafc0a1b4113b8d47', 1),
('ef1518f68ecc45caafc0a1b4113b8d47', 2),
('ef1518f68ecc45caafc0a1b4113b8d47', 3),
('ef1518f68ecc45caafc0a1b4113b8d47', 4),
('ef1518f68ecc45caafc0a1b4113b8d47', 5),
('ef1518f68ecc45caafc0a1b4113b8d47', 6),
('ef1518f68ecc45caafc0a1b4113b8d47', 7),
('d636ecb6dc6443a1acc210858abe2cbf', 1),
('d636ecb6dc6443a1acc210858abe2cbf', 2),
('d636ecb6dc6443a1acc210858abe2cbf', 3),
('d636ecb6dc6443a1acc210858abe2cbf', 4),
('d636ecb6dc6443a1acc210858abe2cbf', 5),
('d636ecb6dc6443a1acc210858abe2cbf', 6),
('d636ecb6dc6443a1acc210858abe2cbf', 7),
('6d403886a8f9494ea292c8131ae66691', 1),
('6d403886a8f9494ea292c8131ae66691', 2),
('6d403886a8f9494ea292c8131ae66691', 3),
('6d403886a8f9494ea292c8131ae66691', 4),
('6d403886a8f9494ea292c8131ae66691', 5),
('6d403886a8f9494ea292c8131ae66691', 6),
('6d403886a8f9494ea292c8131ae66691', 7),
('761fbb7fe4144f4fb6e79b722f476850', 1),
('761fbb7fe4144f4fb6e79b722f476850', 2),
('761fbb7fe4144f4fb6e79b722f476850', 3),
('761fbb7fe4144f4fb6e79b722f476850', 4),
('761fbb7fe4144f4fb6e79b722f476850', 5),
('761fbb7fe4144f4fb6e79b722f476850', 6),
('761fbb7fe4144f4fb6e79b722f476850', 7),
('b5866ca362e64bd09d84cb0704f2c085', 1),
('b5866ca362e64bd09d84cb0704f2c085', 2),
('b5866ca362e64bd09d84cb0704f2c085', 3),
('b5866ca362e64bd09d84cb0704f2c085', 4),
('b5866ca362e64bd09d84cb0704f2c085', 5),
('b5866ca362e64bd09d84cb0704f2c085', 6),
('b5866ca362e64bd09d84cb0704f2c085', 7),
('d649c29b87304876b7aa338c0e6e0596', 1),
('d649c29b87304876b7aa338c0e6e0596', 2),
('d649c29b87304876b7aa338c0e6e0596', 3),
('d649c29b87304876b7aa338c0e6e0596', 4),
('d649c29b87304876b7aa338c0e6e0596', 5),
('d649c29b87304876b7aa338c0e6e0596', 6),
('d649c29b87304876b7aa338c0e6e0596', 7),
('2b5b13c5caaa491ab4aeca30605881b0', 1),
('2b5b13c5caaa491ab4aeca30605881b0', 2),
('2b5b13c5caaa491ab4aeca30605881b0', 3),
('2b5b13c5caaa491ab4aeca30605881b0', 4),
('2b5b13c5caaa491ab4aeca30605881b0', 5),
('2b5b13c5caaa491ab4aeca30605881b0', 6),
('2b5b13c5caaa491ab4aeca30605881b0', 7),
('28ce6765eb974350a0a571401570b970', 1),
('28ce6765eb974350a0a571401570b970', 2),
('28ce6765eb974350a0a571401570b970', 3),
('28ce6765eb974350a0a571401570b970', 4),
('28ce6765eb974350a0a571401570b970', 5),
('28ce6765eb974350a0a571401570b970', 6),
('28ce6765eb974350a0a571401570b970', 7),
('229ac3953f6b4fce8994b9f70c24171a', 1),
('229ac3953f6b4fce8994b9f70c24171a', 2),
('229ac3953f6b4fce8994b9f70c24171a', 3),
('229ac3953f6b4fce8994b9f70c24171a', 4),
('229ac3953f6b4fce8994b9f70c24171a', 5),
('229ac3953f6b4fce8994b9f70c24171a', 6),
('229ac3953f6b4fce8994b9f70c24171a', 7),
('e62e935b91f64295841a820ccf52a31c', 1),
('e62e935b91f64295841a820ccf52a31c', 2),
('e62e935b91f64295841a820ccf52a31c', 3),
('e62e935b91f64295841a820ccf52a31c', 4),
('e62e935b91f64295841a820ccf52a31c', 5),
('e62e935b91f64295841a820ccf52a31c', 6),
('e62e935b91f64295841a820ccf52a31c', 7),
('1b7143f158cc47459ef0a8eafcde985b', 1),
('1b7143f158cc47459ef0a8eafcde985b', 2),
('1b7143f158cc47459ef0a8eafcde985b', 3),
('1b7143f158cc47459ef0a8eafcde985b', 4),
('1b7143f158cc47459ef0a8eafcde985b', 5),
('1b7143f158cc47459ef0a8eafcde985b', 6),
('1b7143f158cc47459ef0a8eafcde985b', 7),
('80c77257f6e247e1b483c8c93f5caa52', 1),
('80c77257f6e247e1b483c8c93f5caa52', 2),
('80c77257f6e247e1b483c8c93f5caa52', 3),
('80c77257f6e247e1b483c8c93f5caa52', 4),
('80c77257f6e247e1b483c8c93f5caa52', 5),
('80c77257f6e247e1b483c8c93f5caa52', 6),
('80c77257f6e247e1b483c8c93f5caa52', 7),
('8890af4c15a14460aefaff18527103be', 1),
('8890af4c15a14460aefaff18527103be', 2),
('8890af4c15a14460aefaff18527103be', 3),
('8890af4c15a14460aefaff18527103be', 4),
('8890af4c15a14460aefaff18527103be', 5),
('8890af4c15a14460aefaff18527103be', 6),
('8890af4c15a14460aefaff18527103be', 7),
('86dd724757a544ee97271dc97886eebe', 1),
('86dd724757a544ee97271dc97886eebe', 2),
('86dd724757a544ee97271dc97886eebe', 3),
('86dd724757a544ee97271dc97886eebe', 4),
('86dd724757a544ee97271dc97886eebe', 5),
('86dd724757a544ee97271dc97886eebe', 6),
('86dd724757a544ee97271dc97886eebe', 7),
('b2b0508e649949c0ae7a9c97fda9fbe3', 1),
('b2b0508e649949c0ae7a9c97fda9fbe3', 2),
('b2b0508e649949c0ae7a9c97fda9fbe3', 3),
('b2b0508e649949c0ae7a9c97fda9fbe3', 4),
('b2b0508e649949c0ae7a9c97fda9fbe3', 5),
('b2b0508e649949c0ae7a9c97fda9fbe3', 6),
('b2b0508e649949c0ae7a9c97fda9fbe3', 7),
('be647257aa374604ae869d10c38e96d5', 1),
('be647257aa374604ae869d10c38e96d5', 2),
('be647257aa374604ae869d10c38e96d5', 3),
('be647257aa374604ae869d10c38e96d5', 4),
('be647257aa374604ae869d10c38e96d5', 5),
('be647257aa374604ae869d10c38e96d5', 6),
('be647257aa374604ae869d10c38e96d5', 7),
('7860fd13623e4c758966540d59b127fc', 1),
('7860fd13623e4c758966540d59b127fc', 2),
('7860fd13623e4c758966540d59b127fc', 3),
('7860fd13623e4c758966540d59b127fc', 4),
('7860fd13623e4c758966540d59b127fc', 5),
('7860fd13623e4c758966540d59b127fc', 6),
('7860fd13623e4c758966540d59b127fc', 7),
('258e87a0bbf84043b3481ced0ef27484', 1),
('258e87a0bbf84043b3481ced0ef27484', 2),
('258e87a0bbf84043b3481ced0ef27484', 3),
('258e87a0bbf84043b3481ced0ef27484', 4),
('258e87a0bbf84043b3481ced0ef27484', 5),
('258e87a0bbf84043b3481ced0ef27484', 6),
('258e87a0bbf84043b3481ced0ef27484', 7),
('f167f1fd2dcd4c01beda7bb3f0f185dc', 1),
('f167f1fd2dcd4c01beda7bb3f0f185dc', 2),
('f167f1fd2dcd4c01beda7bb3f0f185dc', 3),
('f167f1fd2dcd4c01beda7bb3f0f185dc', 4),
('f167f1fd2dcd4c01beda7bb3f0f185dc', 5),
('f167f1fd2dcd4c01beda7bb3f0f185dc', 6),
('f167f1fd2dcd4c01beda7bb3f0f185dc', 7),
('f5600b755c484f8bba2458525edab44d', 1),
('f5600b755c484f8bba2458525edab44d', 2),
('f5600b755c484f8bba2458525edab44d', 3),
('f5600b755c484f8bba2458525edab44d', 4),
('f5600b755c484f8bba2458525edab44d', 5),
('f5600b755c484f8bba2458525edab44d', 6),
('f5600b755c484f8bba2458525edab44d', 7),
('66175f0eecb0452a942dad71d717792d', 1),
('66175f0eecb0452a942dad71d717792d', 2),
('66175f0eecb0452a942dad71d717792d', 3),
('66175f0eecb0452a942dad71d717792d', 4),
('66175f0eecb0452a942dad71d717792d', 5),
('66175f0eecb0452a942dad71d717792d', 6),
('66175f0eecb0452a942dad71d717792d', 7),
('5a52351a40de40309703640df0259321', 1),
('5a52351a40de40309703640df0259321', 2),
('5a52351a40de40309703640df0259321', 3),
('5a52351a40de40309703640df0259321', 4),
('5a52351a40de40309703640df0259321', 5),
('5a52351a40de40309703640df0259321', 6),
('5a52351a40de40309703640df0259321', 7),
('b1667830b02c4e02910a7b5d94dccd78', 1),
('b1667830b02c4e02910a7b5d94dccd78', 2),
('b1667830b02c4e02910a7b5d94dccd78', 3),
('b1667830b02c4e02910a7b5d94dccd78', 4),
('b1667830b02c4e02910a7b5d94dccd78', 5),
('b1667830b02c4e02910a7b5d94dccd78', 6),
('b1667830b02c4e02910a7b5d94dccd78', 7),
('2aeef21cda654191a325ac0fc646ecd6', 1),
('2aeef21cda654191a325ac0fc646ecd6', 2),
('2aeef21cda654191a325ac0fc646ecd6', 3),
('2aeef21cda654191a325ac0fc646ecd6', 4),
('2aeef21cda654191a325ac0fc646ecd6', 5),
('2aeef21cda654191a325ac0fc646ecd6', 6),
('2aeef21cda654191a325ac0fc646ecd6', 7),
('7a58b4c6058e45cc983e5379b408d799', 1),
('7a58b4c6058e45cc983e5379b408d799', 2),
('7a58b4c6058e45cc983e5379b408d799', 3),
('7a58b4c6058e45cc983e5379b408d799', 4),
('7a58b4c6058e45cc983e5379b408d799', 5),
('7a58b4c6058e45cc983e5379b408d799', 6),
('7a58b4c6058e45cc983e5379b408d799', 7),
('b90d603002d14eb0bfbf41d9c2228c12', 1),
('b90d603002d14eb0bfbf41d9c2228c12', 2),
('b90d603002d14eb0bfbf41d9c2228c12', 3),
('b90d603002d14eb0bfbf41d9c2228c12', 4),
('b90d603002d14eb0bfbf41d9c2228c12', 5),
('b90d603002d14eb0bfbf41d9c2228c12', 6),
('b90d603002d14eb0bfbf41d9c2228c12', 7);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `brands`
--

CREATE TABLE `brands` (
  `brand_pk` char(32) NOT NULL,
  `brand_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Data dump for tabellen `brands`
--

INSERT INTO `brands` (`brand_pk`, `brand_name`) VALUES
('02e74f10e0324f9cb8a7d6e5f4321098', 'LandRover'),
('17e62166fc854c42976543210ffeedd6', 'Buick'),
('182be0c5cdcd4b3aa2b19876543210ff', 'AlfaRomeo'),
('19ca14e7ea634f189876543210ffeedd', 'McLaren'),
('1c383cd30b7c49299876543210ffeedd', 'Bugatti'),
('1f0e3dad9990487aa6b5c4d3e2f11234', 'Subaru'),
('1ff1de7740054f6ba2d1e0f123456789', 'Bentley'),
('2838023a778d45ca976543210ffeedce', 'Seat'),
('33e75ff09dd64e8ab7c6d5e4f3219876', 'Volvo'),
('3416a75f4cea4d64976543210ffeedd8', 'Chrysler'),
('34173cb38f074e6ba5d4c3b2a1987654', 'Renault'),
('37693cfc7480492fa3d2e1f123456789', 'Lamborghini'),
('3c59dc048e884f7aa5b4c3d2e1f12345', 'Porsche'),
('45c48cce2e2d4fb7a7d0f8a7b9e6c123', 'Ford'),
('4e732ced34634f0ca9b8c7d6e5f43210', 'Jaguar'),
('6364d3f0f4954c4ba3b2a19876543210', 'Fiat'),
('642e92efb79448fd976543210ffeedd1', 'Suzuki'),
('6512bd43d9ca4e7bb8a1c5d2e3f4a567', 'BMW'),
('67c6a1e7ce56490e976543210ffeedd2', 'Infiniti'),
('6c8349cc72604a20976543210ffeedd4', 'Lincoln'),
('6ea9ab1baa0e4f7ba6c5d4e3f2198765', 'Peugeot'),
('6f4922f455684f8ab7c6d5e4f3212345', 'Mazda'),
('70efdf2ec9b04e0db8a7c6d5e4f32123', 'Kia'),
('8e296a067a374f1ba1d0e123456789ab', 'RollsRoyce'),
('8f14e45fceea467aa3f3f4fdbf6f9d91', 'Toyota'),
('98f1370821014f6ab5c4d3e2f1123456', 'Lexus'),
('9a1158154dfa44b9976543210ffeedcd', 'Opel'),
('9bf31c7ff0624f3db8e9a7b6c5d4e321', 'Nissan'),
('a1d0c6e83f024d53976543210ffeedd7', 'Cadillac'),
('a5771bce93e24e97976543210ffeeddb', 'Mini'),
('a5bfc9e079644f08976543210ffeeddc', 'AstonMartin'),
('a684eceee76f4297976543210ffeedcb', 'Smart'),
('aab3238922bc4f0c9d8e7f6a5b4c3211', 'Volkswagen'),
('b53b3a3d6ab94f86976543210ffeedca', 'Tesla'),
('b6d767d2f8ed4f0ba4c3d2e1f1234567', 'Ferrari'),
('c0c7c76d30bd46db976543210ffeedcf', 'Skoda'),
('c16a5320fa474d5ba4c3b2a198765432', 'Citroen'),
('c20ad4d76fe94f2f9c8a7e6d5b4c3210', 'Mercedes'),
('c51ce410c1244d5ab7e8f9a0b1c2d345', 'Audi'),
('c74d97b01eae4c0ab9d8e7f6a5b4c322', 'Hyundai'),
('c9f0f895fb984b2d9f4b8b3e8d6e5a11', 'Honda'),
('d3d9446802a4429bbf4c5a6f7e8d9123', 'Chevrolet'),
('d645920e395f4c75976543210ffeedd9', 'Dodge'),
('d67d8ab4f4c14d86976543210ffeedda', 'Jeep'),
('d82c8d1619ad43a8976543210ffeedcc', 'Saab'),
('d9d4f495e875491f976543210ffeedd3', 'Acura'),
('e369853df7664a29a19876543210ffee', 'Maserati'),
('f457c545a9de47ec976543210ffeedd0', 'Mitsubishi'),
('f7177163c8334b31976543210ffeedd5', 'GMC');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `cars`
--

CREATE TABLE `cars` (
  `car_pk` varchar(10) NOT NULL,
  `user_fk` char(32) NOT NULL,
  `model_fk` char(32) NOT NULL,
  `car_nickname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Data dump for tabellen `cars`
--

INSERT INTO `cars` (`car_pk`, `user_fk`, `model_fk`, `car_nickname`) VALUES
('DDDDDDDD', '3bcede93719e4343b83b80dcc3084671', '08b9c0d1e2f3488899aabbccddeeff05', 'MarleyMarley'),
('DDDDDDDK', '3bcede93719e4343b83b80dcc3084671', '08b9c0d1e2f3488899aabbccddeeff01', 'MarleyMarley');

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
  `location_empty_wash_halls` int(11) NOT NULL,
  `location_self_wash` tinyint(4) NOT NULL,
  `location_mat_cleaner` tinyint(1) NOT NULL,
  `location_vacuum` tinyint(1) NOT NULL,
  `location_pre_wash` tinyint(1) NOT NULL,
  `location_max_meters` decimal(3,2) NOT NULL,
  `location_max_mirrors_width_meters` decimal(3,2) NOT NULL,
  `region_fk` int(11) NOT NULL,
  `location_end_url` varchar(50) DEFAULT NULL,
  `location_image_end_url` varchar(100) DEFAULT NULL,
  `location_status_message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Data dump for tabellen `locations`
--

INSERT INTO `locations` (`location_pk`, `location_name`, `location_address`, `location_lat`, `location_lon`, `location_open_hours`, `location_wash_halls`, `location_empty_wash_halls`, `location_self_wash`, `location_mat_cleaner`, `location_vacuum`, `location_pre_wash`, `location_max_meters`, `location_max_mirrors_width_meters`, `region_fk`, `location_end_url`, `location_image_end_url`, `location_status_message`) VALUES
('000fed6383f24abf809bf150ca970997', 'Odense SØ - Ørbækvej', 'Ørbækvej 99, 5220 Odense SØ', 55.3798740, 10.4330660, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 3, '/odense-so-orbaekvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('01206e4a8cbb418080dab136d75da57b', 'Ribe - Trojels Knæ', 'Trojels Knæ 6, 6760 Ribe', 55.3514850, 8.7803110, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/ribe-trojels-knae/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('015fbc196fed419198038415567a5975', 'Ballerup - Industriparken', 'Industriparken 6, 2750 Ballerup', 55.7287140, 12.3732950, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 1, '/ballerup-industriparken/', '/2021/03/28140256/WashWorld_m_bil2.jpg', 'Bås 2 er ude af drift. Tekniker er tilkaldt.; Vi udfører service i Hal 1 , så du får en bedre vaskeoplevelse.; Vi rengør Hal 2, så du får en bedre vaskeoplevelse.'),
('0187bcb3e1074ada9093dacd6a64d13d', 'Kolding - Vejlevej 132', 'Vejlevej 132, 6000 Kolding', 55.5040386, 9.4582265, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/kolding-vejlevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('020d39079e0b49399685940edf568cda', 'Næstved - Gl. Holstedvej', 'Gammel Holstedvej 1, 4700 Næstved', 55.2496811, 11.7820310, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/naestved-gl-holstedvej/', '/2021/11/28140219/2-vask.png', ''),
('025ff465013d4eff96354bef75ab0c91', 'Næstved - Gl. Holstedvej', 'Gammel Holstedvej 1, 4700 Næstved', 55.2496811, 11.7820310, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/naestved-gl-holstedvej/', '/2021/11/28140219/2-vask.png', ''),
('02a50b508ae348b48193819fb7b368da', 'Ballerup - Industriparken', 'Industriparken 6, 2750 Ballerup', 55.7287140, 12.3732950, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 1, '/ballerup-industriparken/', '/2021/03/28140256/WashWorld_m_bil2.jpg', ''),
('0306849f83c24152bd9499443ed6d777', 'Fredericia - Strevelinsvej', 'Strevelinsvej 5, 7000 Fredericia', 55.5355191, 9.7187001, '7-22', 3, 3, 0, 0, 2, 0, 2.60, 2.55, 2, '/fredericia-strevelinsvej/', '/2021/11/28140218/3.png', ''),
('0326b577bf744be6ba5a79b0518a7de4', 'Ribe - Trojels Knæ', 'Trojels Knæ 6, 6760 Ribe', 55.3514850, 8.7803110, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/ribe-trojels-knae/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('040c2cf940d5463f979ab1b391626b6a', 'Tønder - Centerbuen', 'Centerbuen 5, 6270 Tønder', 54.9515046, 8.8878000, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/tonder-centerbuen/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('04e94331227945a78f483c904af57f77', 'Roskilde - Byleddet', 'Byleddet 2, 4000 Roskilde', 55.6437095, 12.1091142, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.58, 1, '/roskilde-byleddet/', '/2021/11/28140217/2-scaled.jpg', ''),
('051a981b622b481fb6ad5a8d0cf8639d', 'Frederikshavn - Apholmenvej', 'Apholmenvej 9, 9900 Frederikshavn', 57.4621933, 10.5194482, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/frederikshavn-apholmenvej/', '/2021/11/28140214/Ikke-navngivet-1-5.png', ''),
('052fb920997248898e5b26533fd68195', 'Horsens - Vejlevej', 'Vejlevej 102, 8700 Horsens', 55.8330850, 9.8047440, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/horsens-vejlevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('05832f48bc9f47289a21d69d643e525f', 'Søborg - Dynamovej', 'Dynamovej 4, 2860 Søborg', 55.7337313, 12.4599606, '7-22', 4, 4, 3, 0, 6, 0, 2.60, 2.55, 1, '/soborg-dynamovej/', '/2021/11/28140216/5.png', ''),
('06fc8a543c5349c48543ee34ced71778', 'Højbjerg - Bjødstrupvej', 'Bjødstrupvej 20E, 8270 Højbjerg', 56.1075250, 10.1669670, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/hojbjerg-bjodstrupvej/', '/2021/11/28140214/2.png', ''),
('072d1ee6c0db4e3aae016fe1e2d3a949', 'Taastrup - Roskildevej', 'Roskildevej 376, 2630 Taastrup', 55.6580371, 12.2947118, '7-22', 3, 3, 0, 0, 4, 0, 2.60, 2.55, 1, '/taastrup-roskildevej/', '/2021/11/28140216/5.png', ''),
('087f2751e37d46c1aa10c09789500740', 'Hillerød - Industrivænget ', 'Industrivænget 3, 3400 Hillerød', 55.9314810, 12.2829960, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/hilleroed-industrivaenget/', '0', ''),
('09d1c041b4b9420586a5ad4537b01e38', 'Frederikshavn - Apholmenvej', 'Apholmenvej 9, 9900 Frederikshavn', 57.4621933, 10.5194482, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/frederikshavn-apholmenvej/', '/2021/11/28140214/Ikke-navngivet-1-5.png', 'Hal 2 er ude af drift. Tekniker er tilkaldt.'),
('09e6ab1db2d140c3a9becdd09977f926', 'Holstebro - Nybo Bakke', 'Nybo Bakke 2, 7500 Holstebro', 56.3418890, 8.6353950, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/holstebro-nybovej/', '/2021/11/28140219/2-vask.png', ''),
('0a64491abfc74fe1b32ae20a99dcf492', 'Frederiksværk - Hanehovedvej', 'Hanehovedvej 49, 3300 Frederiksværk', 55.9775589, 12.0074471, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/frederiksvaerk-hanehovedvej/', '0', ''),
('0a73a9514385455fb5bc8370fde15ad1', 'Silkeborg - Nordre Ringvej', 'Nordre Ringvej 90, 8600 Silkeborg', 56.1814130, 9.5369542, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/silkeborg-nordre-ringvej/', '/2021/11/28140224/Ikke-navngivet-1.png', ''),
('0ac87bbae6a747e394f8701e36d215cd', 'Viborg - Falkevej', 'Falkevej 25, 8800 Viborg', 56.4441610, 9.3884560, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 2, '/viborg-falkevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('0b0c684593ea427fb2a5972edaa1c33e', 'Nørresundby - Loftbrovej', 'Loftbrovej 2, 9400 Nørresundby', 57.0891424, 9.9692410, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 2, '/norresundby-loftbrovej/', '/2021/11/28140213/2-vaskehaller.jpg-1.png', ''),
('0b736d7f80504274b30c3cec2153a8b6', 'Kolding - Vejlevej 132', 'Vejlevej 132, 6000 Kolding', 55.5040386, 9.4582265, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/kolding-vejlevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('0c6986d58d6743a99ce1f5b3814ae1e7', 'Fredericia - Strevelinsvej', 'Strevelinsvej 5, 7000 Fredericia', 55.5355191, 9.7187001, '7-22', 3, 3, 0, 0, 2, 0, 2.60, 2.55, 2, '/fredericia-strevelinsvej/', '/2021/11/28140218/3.png', 'Hal 3 er ude af drift. Tekniker er tilkaldt.'),
('0c6acc220f824f16bc770493f9bcf97a', 'Viborg - Falkevej', 'Falkevej 25, 8800 Viborg', 56.4441610, 9.3884560, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 2, '/viborg-falkevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('0cd8300409bc4782bd5a933584753470', 'Farum - Gammelgårdsvej', 'Gammelgårdsvej 84, 3520 Farum', 55.8169430, 12.3703500, '7-22', 3, 3, 3, 0, 2, 0, 2.60, 2.55, 1, '/farum-gammelgardsvej/', '/2021/11/28140218/3.png', ''),
('0ce13d64c892496e8c4bcf0865055bcd', 'Slagelse - Smedegade', 'Smedegade 77, 4200 Slagelse', 55.4076851, 11.3678455, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/slagelse-smedegade/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('0d031048a09448588d5ad222459e2e3e', 'Næstved - Gl. Holstedvej', 'Gammel Holstedvej 1, 4700 Næstved', 55.2496811, 11.7820310, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/naestved-gl-holstedvej/', '/2021/11/28140219/2-vask.png', ''),
('0e0ac9e40a69437db6f5e1e778b87c01', 'Nykøbing Falster - Guldborgsundcentret', 'Guldborgsundcentret 32, 4800 Nykøbing Falster', 54.7588014, 11.8514371, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.38, 1, '/nykobing-falster-guldborgsundcentret/', '/2021/11/28140217/2-scaled.jpg', ''),
('0e8d317fbc8d48daaddbf8ae0cb804e4', 'Randers - Messingvej', 'Messingvej 10, 8940 Randers', 56.4303617, 10.0538152, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/randers-messingvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('0ed6686c54394b4da8f1ab8b6cb84fad', 'Struer - Bredgade', 'Bredgade 58, 7600 Struer ', 56.4804349, 8.5855352, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/struer-bredgade/', '/2022/02/02084352/DSC7628.jpg', ''),
('0f82a92c2305419d871acef71a029140', 'Aalborg - Otto Mønstedsvej', 'Otto Mønsteds Vej 5, 9200 Aalborg', 57.0152480, 9.8962560, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/aalborg-otto-monstedsvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('0fb0e01bcfbd4f11a79d9443422442bd', 'Holbæk - Springstrup', 'Springstrup 5, 4300 Holbæk', 55.7030262, 11.6660911, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 1, '/holbaek-springstrup/', '/2021/11/28140218/3.png', ''),
('0fb2d2cd72ce43cbb214468673b0ed93', 'Nyborg - Storebæltsvej', 'Storebæltsvej 7F, 5800 Nyborg', 55.3084979, 10.8096242, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 3, '/nyborg-storebaeltsvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('103945e3fae14f7fbb58dd985ae12f01', 'Vejle - Soldalen', 'Soldalen 4, 7100 Vejle', 55.6812381, 9.5674556, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/vejle-soldalen/', '/2021/11/28140217/2-scaled.jpg', ''),
('1068fe37144e4b81a901ab9d4f40358a', 'Skive - Øster Fælled vej', 'Øster Fælled vej 4, 7800 Skive', 56.5615666, 9.0395673, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/skive-oster-faelled-vej/', '/2021/11/28140216/2_2.png', ''),
('108b4c617337417b82e6f98a886e8465', 'Nakskov - Løjtoftevej', 'Løjtoftevej 6, 4900 Nakskov ', 54.8324750, 11.1496620, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 1, '/nakskov-lojtoftevej/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('11cf295d7fcf43249a69ef1e092b7b11', 'Odense V - Bystævnevej', 'Bystævnevej 5, 5200 Odense', 55.3950257, 10.3465247, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 3, '/odense-v-bystaevnevej/', '/2021/11/28140218/3.png', ''),
('121a562a7e6449c6afdf94f47c53dcc5', 'Næstved - Erantisvej', 'Erantisvej 52, 4700 Næstved', 55.2391726, 11.7779768, '7-22', 3, 3, 1, 0, 0, 0, 2.60, 2.55, 1, '/naestved-erantisvej/', '/2021/11/28140218/3.png', ''),
('12b47750be874ada83a5bf6d81059439', 'Vejle - Solkilde Allé', 'Solkilde Alle 11, 7100 Vejle', 55.7234586, 9.5847778, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/vejle-solkilde-alle/', '/2021/11/28140219/2-vask.png', ''),
('1312bbb12a7e488b9dedb2d379aed1ef', 'Helsingør - Klostermosevej', 'Klostermosevej 103, 3000 Helsingør', 56.0240180, 12.5718630, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/helsingor-klostermosevej/', '/2021/11/28140219/2-vask.png', 'Hal 1 er ude af drift. Tekniker er tilkaldt.'),
('13e117984ab64246b83eae5e0fbc482c', 'Kalundborg - Holbækvej', 'Holbækvej 74, 4400 Kalundborg', 55.6787670, 11.1358300, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 1, '/kalundborg-holbaekvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('1411dfc413bd4dc2a8dad95ad82816df', 'Herlev - Nørrelundvej', 'Nørrelundvej 2, 2730 Herlev', 55.7253650, 12.4166970, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/herlev-norrelundvej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('15bd6a9d900744809d6bcba19a61c720', 'Søborg - Dynamovej', 'Dynamovej 4, 2860 Søborg', 55.7337313, 12.4599606, '7-22', 4, 4, 3, 0, 6, 0, 2.60, 2.55, 1, '/soborg-dynamovej/', '/2021/11/28140216/5.png', ''),
('161b2e19bda84a48bd40c927284948a3', 'Fredericia - Vejlevej', 'Vejlevej 20, 7000 Fredericia', 55.5696911, 9.7276223, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/fredericia-vejlevej/', '0', ''),
('1649e8c912ad4af0850eaea52dff81ae', 'Nykøbing Falster - Guldborgsundcentret', 'Guldborgsundcentret 32, 4800 Nykøbing Falster', 54.7588014, 11.8514371, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.38, 1, '/nykobing-falster-guldborgsundcentret/', '/2021/11/28140217/2-scaled.jpg', ''),
('16cbe2187ce84dfea15a1bcc3de83b07', 'Nakskov - Løjtoftevej', 'Løjtoftevej 6, 4900 Nakskov ', 54.8324750, 11.1496620, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 1, '/nakskov-lojtoftevej/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('1796a7b850fa4200b1eda876acfb69f3', 'Aalborg, Gug - Gammel Vissevej', 'Gammel Vissevej 1C, 9210 Aalborg - Gug', 57.0063139, 9.9259463, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/aalborg-gug-gammel-vissevej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('17a4fd0827ab44169237398748b2b7a1', 'Kolding - Vejlevej 251', 'Vejlevej 251, 6000 Kolding', 55.5136635, 9.4546968, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 2, '/kolding-vejlevej-251/', '/2021/11/28140218/3.png', ''),
('17a8692f34784fcfa97044ba4039facf', 'Viby - Gunnar Clausens vej', 'Gunnar Clausens Vej 2A, 8260 Viby', 56.1113730, 10.1250330, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 2, '/viby-gunnar-clausens-vej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('17ff1fa1f6e74d2689b44c6a8a1d8cd5', 'Ebeltoft - Færgevejen', 'Færgevejen 3, 8400 Ebeltoft', 56.1908092, 10.6721231, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.58, 2, '/ebeltoft-faergevejen/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('18c531bae2f64a0aae20c4f527558f24', 'Odense - Nyborgvej', 'Nyborgvej 343, 5220 Odense', 55.3915296, 10.4358192, '7-22', 3, 3, 0, 0, 0, 0, 2.60, 2.55, 3, '/odense-nyborgvej/', '/2021/11/28140218/3.png', ''),
('19c0cc091f054c2c86365e4509fe4787', 'Vejle - Solkilde Allé', 'Solkilde Alle 11, 7100 Vejle', 55.7234586, 9.5847778, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/vejle-solkilde-alle/', '/2021/11/28140219/2-vask.png', 'Hal 2 er ude af drift. Tekniker er tilkaldt.'),
('19d02b69981b49b48b9a7413b32ee2f0', 'Aalborg - Otto Mønstedsvej', 'Otto Mønsteds Vej 5, 9200 Aalborg', 57.0152480, 9.8962560, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/aalborg-otto-monstedsvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('1a3722d407c242f4b2eea6716df8bbfa', 'Viby - Gunnar Clausens vej', 'Gunnar Clausens Vej 2A, 8260 Viby', 56.1113730, 10.1250330, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 2, '/viby-gunnar-clausens-vej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', 'Hal 2 er ude af drift. Tekniker er tilkaldt.'),
('1a8c9e90236a4a1096bc2c58d94b4fc2', 'Ribe - Trojels Knæ', 'Trojels Knæ 6, 6760 Ribe', 55.3514850, 8.7803110, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/ribe-trojels-knae/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('1aa627e40c134f4b9b89dab064d593f0', 'Silkeborg - Nordre Ringvej', 'Nordre Ringvej 90, 8600 Silkeborg', 56.1814130, 9.5369542, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/silkeborg-nordre-ringvej/', '/2021/11/28140224/Ikke-navngivet-1.png', ''),
('1b58a8e8cb9a4cceb0c553b206361cea', 'Viby - Gunnar Clausens vej', 'Gunnar Clausens Vej 2A, 8260 Viby', 56.1113730, 10.1250330, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 2, '/viby-gunnar-clausens-vej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('1b7bc34c9c584c8ba522db176f01ac9a', 'Holstebro - Nybo Bakke', 'Nybo Bakke 2, 7500 Holstebro', 56.3418890, 8.6353950, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/holstebro-nybovej/', '/2021/11/28140219/2-vask.png', ''),
('1b9d875b45dd42fe89927ba91defde8f', 'Sorø - Apotekervej', 'Apotekervej 14, 4180 Sorø', 55.4451368, 11.5632552, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/soro-apotekervej/', '/2021/11/28140216/2_2.png', ''),
('1ba4412d6c194057be8d110a6a01a21e', 'Tønder - Centerbuen', 'Centerbuen 5, 6270 Tønder', 54.9515046, 8.8878000, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/tonder-centerbuen/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('1be1b90318574fc4b4317bd743e1d6b1', 'Struer - Bredgade', 'Bredgade 58, 7600 Struer ', 56.4804349, 8.5855352, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/struer-bredgade/', '/2022/02/02084352/DSC7628.jpg', ''),
('1c093e9a7d574f769d02071e8ae9b323', 'Ringsted - Frejasvej', 'Frejasvej 43, 4100 Ringsted', 55.4306693, 11.8014193, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 1, '/ringsted-frejasvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('1cb716c9e0c94e23a1ff4e36c9620836', 'Ebeltoft - Færgevejen', 'Færgevejen 3, 8400 Ebeltoft', 56.1908092, 10.6721231, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.58, 2, '/ebeltoft-faergevejen/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('1ebef28457124d7bb430feed4b225fdd', 'Helsingør - Klostermosevej', 'Klostermosevej 103, 3000 Helsingør', 56.0240180, 12.5718630, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/helsingor-klostermosevej/', '/2021/11/28140219/2-vask.png', ''),
('200726ba0bba4caea707a8f3da283fac', 'Holbæk - Springstrup', 'Springstrup 5, 4300 Holbæk', 55.7030262, 11.6660911, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 1, '/holbaek-springstrup/', '/2021/11/28140218/3.png', ''),
('208ae4ed456941778a871289716b2d3e', 'Esbjerg - Sædding Ringvej', 'Sædding Ringvej 6, 6710 Esbjerg', 55.5037278, 8.4074192, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/esbjerg-saedding-ringvej/', '/2021/11/28140223/Ikke-navngivet-1-1.png', ''),
('215ec9ebf2c340eab6e76c893d11e311', 'Svendborg - Odensevej', 'Odensevej 94, 5700 Svendborg', 55.0729498, 10.5823982, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/svendborg-odensevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('219378ed0b044219b3a86aeef9efff1b', 'Herning - Dæmningen', 'Dæmningen 21, 7400 Herning', 56.1321410, 8.9593500, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/herning-daemningen/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('22681fbf83b84269a47915eed460a705', 'Nørresundby - Loftbrovej', 'Loftbrovej 2, 9400 Nørresundby', 57.0891424, 9.9692410, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 2, '/norresundby-loftbrovej/', '/2021/11/28140213/2-vaskehaller.jpg-1.png', ''),
('2280555a555044e9a2b7744a0a127a6b', 'Odense SØ - Ørbækvej', 'Ørbækvej 99, 5220 Odense SØ', 55.3798740, 10.4330660, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 3, '/odense-so-orbaekvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('22d9059d18474378be2859c9552556e2', 'Viborg - Falkevej', 'Falkevej 25, 8800 Viborg', 56.4441610, 9.3884560, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 2, '/viborg-falkevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('22dbb03f92514687bb7f8fb3de2430bc', 'Herning - Guldborgvej', 'Guldborgvej 2-4, 7400 Herning', 56.1535542, 8.9847445, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 2, '/herning-guldborgvej/', '/2021/11/28140215/2_2-1.png', ''),
('22e3e154c6004dc988d7600aec39fb47', 'Ishøj - Vejleåvej', 'Vejleåvej 19, 2635 Ishøj', 55.6233845, 12.3211668, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/ishoj-vejleavej/', '/2021/11/28140211/2-1.png', ''),
('22ffaaced1a74ef0b63f0866af34c4b4', 'Risskov - Ravnsøvej', 'Ravnsøvej 48B, 8240 Risskov', 56.2020620, 10.2444900, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/risskov-ravnsovej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('23252bd5a34142bb801bdd3f6052ca3a', 'Roskilde - Ringstedvej', 'Ringstedvej 73, 4000 Roskilde', 55.6284269, 12.0665595, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/roskilde-ringstedvej/', '/2021/11/28140216/2_2.png', ''),
('235fefb1bbc0455eb9e3cd8cd0867020', 'Fredericia - Strevelinsvej', 'Strevelinsvej 5, 7000 Fredericia', 55.5355191, 9.7187001, '7-22', 3, 3, 0, 0, 2, 0, 2.60, 2.55, 2, '/fredericia-strevelinsvej/', '/2021/11/28140218/3.png', ''),
('25b63bd94e9d4569a167cfb639b0b971', 'Fredericia - Vejlevej', 'Vejlevej 20, 7000 Fredericia', 55.5696911, 9.7276223, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/fredericia-vejlevej/', '0', ''),
('25ba8ae80cbe4f5cb75944d75052bf43', 'Køge - Københavnsvej', 'Københavnsvej 86, 4600 Køge', 55.4718050, 12.1819530, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 1, '/koge-kobenhavnsvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('26690391a6004b93bdab5e3930b6a1c8', 'Struer - Bredgade', 'Bredgade 58, 7600 Struer ', 56.4804349, 8.5855352, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/struer-bredgade/', '/2022/02/02084352/DSC7628.jpg', ''),
('270cf642aea84173b668bc2a6bfb4336', 'Fredericia - Strevelinsvej', 'Strevelinsvej 5, 7000 Fredericia', 55.5355191, 9.7187001, '7-22', 3, 3, 0, 0, 2, 0, 2.60, 2.55, 2, '/fredericia-strevelinsvej/', '/2021/11/28140218/3.png', ''),
('27a4e4fb0ab349198dcbdf6eb18ec560', 'Slagelse - Smedegade', 'Smedegade 77, 4200 Slagelse', 55.4076851, 11.3678455, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/slagelse-smedegade/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('28f62585904445638507569a560c0501', 'Tilst - Blomstervej', 'Blomstervej 2T, 8381 Tilst', 56.1817870, 10.1250000, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/tilst-blomstervej/', '/2021/11/28140219/2-vask.png', ''),
('299036fabe054f0d901c24367c93faba', 'Frederikssund - Askelundsvej', 'Askelundsvej 8, 3600 Frederikssund', 55.8451508, 12.0742911, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 1, '/frederikssund-askelundsvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('29ea257628424f1c8d29d9b78235dc47', 'Hillerød - Industrivænget ', 'Industrivænget 3, 3400 Hillerød', 55.9314810, 12.2829960, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/hilleroed-industrivaenget/', '0', ''),
('2a0b3785613a465a97ba9d4334eb8e69', 'Sorø - Apotekervej', 'Apotekervej 14, 4180 Sorø', 55.4451368, 11.5632552, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/soro-apotekervej/', '/2021/11/28140216/2_2.png', ''),
('2a45207af0e04e819fea6ba112c8c998', 'Silkeborg - Nordre Ringvej', 'Nordre Ringvej 90, 8600 Silkeborg', 56.1814130, 9.5369542, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/silkeborg-nordre-ringvej/', '/2021/11/28140224/Ikke-navngivet-1.png', ''),
('2a6da5661d6c4dabb56d0866ac0f90d3', 'Roskilde - Ringstedvej', 'Ringstedvej 73, 4000 Roskilde', 55.6284269, 12.0665595, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/roskilde-ringstedvej/', '/2021/11/28140216/2_2.png', ''),
('2a7af2c96d5c4059a14e46a0b956529b', 'Aabenraa - Egevej', 'Egevej 4, 6200 Aabenraa', 55.0656429, 9.3644501, '7-22', 1, 1, 1, 0, 0, 0, 2.60, 2.55, 2, '/aabenraa-egevej/', '/2021/11/28140221/1-vaskehal.jpg.png', ''),
('2ae3a886b3ca4ff8b0046e3265c927b1', 'Ikast - Europavej', 'Europavej 3, 7430 Ikast', 56.1236985, 9.1754224, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/ikast-europavej/', '/2021/11/28140221/1-vaskehal.jpg.png', ''),
('2afb01be6258488faf6907b88f63e88c', 'Struer - Bredgade', 'Bredgade 58, 7600 Struer ', 56.4804349, 8.5855352, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/struer-bredgade/', '/2022/02/02084352/DSC7628.jpg', ''),
('2bd164b900024c4ebc0075a029bea70b', 'Silkeborg - Nordre Ringvej', 'Nordre Ringvej 90, 8600 Silkeborg', 56.1814130, 9.5369542, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/silkeborg-nordre-ringvej/', '/2021/11/28140224/Ikke-navngivet-1.png', ''),
('2cc17e4927ba492c8ae6355de10841a3', 'Sorø - Apotekervej', 'Apotekervej 14, 4180 Sorø', 55.4451368, 11.5632552, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/soro-apotekervej/', '/2021/11/28140216/2_2.png', ''),
('2cda32a53ff34ebea4cd4fd189302bb7', 'Roskilde - Byleddet', 'Byleddet 2, 4000 Roskilde', 55.6437095, 12.1091142, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.58, 1, '/roskilde-byleddet/', '/2021/11/28140217/2-scaled.jpg', ''),
('2d06f49058ab4e60ad1daf88f0eceba3', 'Risskov - Ravnsøvej', 'Ravnsøvej 48B, 8240 Risskov', 56.2020620, 10.2444900, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/risskov-ravnsovej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('2d837fb7cba14cb7a8500e63625ee62b', 'Brande - Vestergårdsvej', 'Vestergårdsvej 3, 7330 Brande', 55.9606470, 9.1034260, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/brande-vestergardsvej/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('2d9fe8024d354e5899383e2d93c2f0f9', 'Risskov - Ravnsøvej', 'Ravnsøvej 48B, 8240 Risskov', 56.2020620, 10.2444900, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/risskov-ravnsovej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('2e2ce4b6803f42b3a82e083930ed0ffc', 'Frederikshavn - Apholmenvej', 'Apholmenvej 9, 9900 Frederikshavn', 57.4621933, 10.5194482, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/frederikshavn-apholmenvej/', '/2021/11/28140214/Ikke-navngivet-1-5.png', ''),
('2f976c2a768f47f2918c48515e37b2df', 'Ribe - Trojels Knæ', 'Trojels Knæ 6, 6760 Ribe', 55.3514850, 8.7803110, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/ribe-trojels-knae/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('30267d87fe4e47cca637a9266fc18d21', 'Ballerup - Industriparken', 'Industriparken 6, 2750 Ballerup', 55.7287140, 12.3732950, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 1, '/ballerup-industriparken/', '/2021/03/28140256/WashWorld_m_bil2.jpg', ''),
('30e0c46addf149f6b299ef4db87b8aea', 'Hillerød - Industrivænget ', 'Industrivænget 3, 3400 Hillerød', 55.9314810, 12.2829960, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/hilleroed-industrivaenget/', '0', ''),
('30efec59f7a142d8adc2801ecb7f4b06', 'Herning - Guldborgvej', 'Guldborgvej 2-4, 7400 Herning', 56.1535542, 8.9847445, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 2, '/herning-guldborgvej/', '/2021/11/28140215/2_2-1.png', ''),
('31cc194707c249838396c2926e89ba29', 'Brøndby Strand - Gl. Køge Landevej', 'Gammel Køge Landevej 690, 2660 Brøndby Strand', 55.6182310, 12.4239500, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 1, '/brondby-strand-gl-koge-landevej/', '/2021/11/28140219/2-vask.png', ''),
('32a1d43d45fd42279ed17ba8af79ed74', 'Kalundborg - Holbækvej', 'Holbækvej 74, 4400 Kalundborg', 55.6787670, 11.1358300, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 1, '/kalundborg-holbaekvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('331754c8d53d4a69ba5914cf63d889f9', 'Farum - Gammelgårdsvej', 'Gammelgårdsvej 84, 3520 Farum', 55.8169430, 12.3703500, '7-22', 3, 3, 3, 0, 2, 0, 2.60, 2.55, 1, '/farum-gammelgardsvej/', '/2021/11/28140218/3.png', ''),
('33b37de516604874ba6e6b5cbc3ef80f', 'Viborg - Vognmagervej', 'Vognmagervej 21E, 8800 Viborg', 56.4693658, 9.4094306, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/viborg-vognmagervej/', '/2021/11/28140216/2_2.png', ''),
('33b76f80083040eaa01ecdc30064c971', 'Herlev - Nørrelundvej', 'Nørrelundvej 2, 2730 Herlev', 55.7253650, 12.4166970, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/herlev-norrelundvej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('349730361ee746adbb7a465cf473081c', 'Helsingør - Klostermosevej', 'Klostermosevej 103, 3000 Helsingør', 56.0240180, 12.5718630, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/helsingor-klostermosevej/', '/2021/11/28140219/2-vask.png', ''),
('34b3a14b7fe6405cb9fd39048db9d222', 'Kolding - Vejlevej 251', 'Vejlevej 251, 6000 Kolding', 55.5136635, 9.4546968, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 2, '/kolding-vejlevej-251/', '/2021/11/28140218/3.png', 'Hal 3 tager kun imod medlemmer.'),
('3532dccb37f943cfaa251240707ce42c', 'Middelfart - Skovsvinget', 'Skovsvinget 27c, 5500 Middelfart', 55.5120128, 9.7661805, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/middelfart-skovsvinget/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('357f8c1b485b4792bbfc6e12f01ebe59', 'Farum - Gammelgårdsvej', 'Gammelgårdsvej 84, 3520 Farum', 55.8169430, 12.3703500, '7-22', 3, 3, 3, 0, 2, 0, 2.60, 2.55, 1, '/farum-gammelgardsvej/', '/2021/11/28140218/3.png', ''),
('359882207060472188ddcef119973c75', 'Næstved - Erantisvej', 'Erantisvej 52, 4700 Næstved', 55.2391726, 11.7779768, '7-22', 3, 3, 1, 0, 0, 0, 2.60, 2.55, 1, '/naestved-erantisvej/', '/2021/11/28140218/3.png', ''),
('3598b235cf5643deaddb908b974d9dd3', 'Aalborg, Gug - Gammel Vissevej', 'Gammel Vissevej 1C, 9210 Aalborg - Gug', 57.0063139, 9.9259463, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/aalborg-gug-gammel-vissevej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('35dde40bbbd847b79c4a386816eea4bb', 'Randers - Udbyhøjvej', 'Udbyhøjvej 7, 8930 Randers', 56.4660468, 10.0542498, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/randers-udbyhojvej/', '/2021/11/28140219/2-vask.png', ''),
('363678dbd7f540d597741fd066a4fa51', 'Tilst - Blomstervej', 'Blomstervej 2T, 8381 Tilst', 56.1817870, 10.1250000, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/tilst-blomstervej/', '/2021/11/28140219/2-vask.png', ''),
('368b014378854b58844d888f98b261f3', 'Taastrup - Roskildevej', 'Roskildevej 376, 2630 Taastrup', 55.6580371, 12.2947118, '7-22', 3, 3, 0, 0, 4, 0, 2.60, 2.55, 1, '/taastrup-roskildevej/', '/2021/11/28140216/5.png', ''),
('36a15381af7a4f38b4c1f825b9acdd5e', 'Esbjerg - Sædding Ringvej', 'Sædding Ringvej 6, 6710 Esbjerg', 55.5037278, 8.4074192, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/esbjerg-saedding-ringvej/', '/2021/11/28140223/Ikke-navngivet-1-1.png', ''),
('37038e773c4740a4a9841020623d9047', 'Svendborg - Nyborgvej', 'Nyborgvej 4, 5700 Svendborg', 55.0628931, 10.6185919, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/svendborg-nyborgvej/', '/2021/11/28140216/2_2.png', ''),
('37072a7897364bf1a59b2f183d9c1ec6', 'Tønder - Centerbuen', 'Centerbuen 5, 6270 Tønder', 54.9515046, 8.8878000, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/tonder-centerbuen/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('373ec67c1bfe43df87b6f406e84c2a53', 'Ballerup - Industriparken', 'Industriparken 6, 2750 Ballerup', 55.7287140, 12.3732950, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 1, '/ballerup-industriparken/', '/2021/03/28140256/WashWorld_m_bil2.jpg', ''),
('37624c7cdf054678907a1ea15ce82ef7', 'Odense V - Bystævnevej', 'Bystævnevej 5, 5200 Odense', 55.3950257, 10.3465247, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 3, '/odense-v-bystaevnevej/', '/2021/11/28140218/3.png', ''),
('39ef2652d8444cf3a55d768d19b075c6', 'Viborg - Falkevej', 'Falkevej 25, 8800 Viborg', 56.4441610, 9.3884560, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 2, '/viborg-falkevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('3a6823bb972a4a2380db28608436ec04', 'Frederikssund - Askelundsvej', 'Askelundsvej 8, 3600 Frederikssund', 55.8451508, 12.0742911, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 1, '/frederikssund-askelundsvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('3c33637554c447d682d6feba9811684b', 'Tønder - Centerbuen', 'Centerbuen 5, 6270 Tønder', 54.9515046, 8.8878000, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/tonder-centerbuen/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('3c6b4905547d4328b3381cd2ef8b8806', 'Sorø - Apotekervej', 'Apotekervej 14, 4180 Sorø', 55.4451368, 11.5632552, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/soro-apotekervej/', '/2021/11/28140216/2_2.png', ''),
('3cad57e0342c4c3a8a6ec7f126dbf50b', 'Fredericia - Strevelinsvej', 'Strevelinsvej 5, 7000 Fredericia', 55.5355191, 9.7187001, '7-22', 3, 3, 0, 0, 2, 0, 2.60, 2.55, 2, '/fredericia-strevelinsvej/', '/2021/11/28140218/3.png', ''),
('3cf6ee2d13154db9a039e0c3eb42fd2a', 'Næstved - Erantisvej', 'Erantisvej 52, 4700 Næstved', 55.2391726, 11.7779768, '7-22', 3, 3, 1, 0, 0, 0, 2.60, 2.55, 1, '/naestved-erantisvej/', '/2021/11/28140218/3.png', ''),
('3d1242e6b1a042c6bf2e1c52a8703a09', 'Herlev - Nørrelundvej', 'Nørrelundvej 2, 2730 Herlev', 55.7253650, 12.4166970, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/herlev-norrelundvej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('3da52838da0a44eb85e08212a7580ce1', 'Viborg - Vognmagervej', 'Vognmagervej 21E, 8800 Viborg', 56.4693658, 9.4094306, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/viborg-vognmagervej/', '/2021/11/28140216/2_2.png', ''),
('3ded418c9b064478b2efb55fa435a8ef', 'Esbjerg - Sædding Ringvej', 'Sædding Ringvej 6, 6710 Esbjerg', 55.5037278, 8.4074192, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/esbjerg-saedding-ringvej/', '/2021/11/28140223/Ikke-navngivet-1-1.png', ''),
('3e641ab142a94f139f0712820bc6874c', 'Holstebro - Nybo Bakke', 'Nybo Bakke 2, 7500 Holstebro', 56.3418890, 8.6353950, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/holstebro-nybovej/', '/2021/11/28140219/2-vask.png', ''),
('3f49940ef3194f0f84ba38dacaead6b0', 'Viborg - Vognmagervej', 'Vognmagervej 21E, 8800 Viborg', 56.4693658, 9.4094306, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/viborg-vognmagervej/', '/2021/11/28140216/2_2.png', ''),
('3f87903cfe2045a69e068548ee3385dd', 'Frederiksværk - Hanehovedvej', 'Hanehovedvej 49, 3300 Frederiksværk', 55.9775589, 12.0074471, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/frederiksvaerk-hanehovedvej/', '0', ''),
('3fc757d4476e4170bb252cb27cd03443', 'Holbæk - Springstrup', 'Springstrup 5, 4300 Holbæk', 55.7030262, 11.6660911, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 1, '/holbaek-springstrup/', '/2021/11/28140218/3.png', ''),
('3ff0dda4f1f04df18f54f0c18ab5a830', 'Ebeltoft - Færgevejen', 'Færgevejen 3, 8400 Ebeltoft', 56.1908092, 10.6721231, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.58, 2, '/ebeltoft-faergevejen/', '/2021/11/28140220/1-vaskehal.jpg-1.png', 'Hal 1 er ude af drift. Tekniker er tilkaldt.'),
('401f270c43d94e94b5aca6c3f9b84fc1', 'Nyborg - Storebæltsvej', 'Storebæltsvej 7F, 5800 Nyborg', 55.3084979, 10.8096242, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 3, '/nyborg-storebaeltsvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('407cdceabb0e42da90e6a52f4e577515', 'Herning - Guldborgvej', 'Guldborgvej 2-4, 7400 Herning', 56.1535542, 8.9847445, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 2, '/herning-guldborgvej/', '/2021/11/28140215/2_2-1.png', ''),
('408aa1324d5c41f991722739623ea9e9', 'Vejle - Solkilde Allé', 'Solkilde Alle 11, 7100 Vejle', 55.7234586, 9.5847778, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/vejle-solkilde-alle/', '/2021/11/28140219/2-vask.png', ''),
('40c48b11344c4cb28ba467389213e9cd', 'Nyborg - Storebæltsvej', 'Storebæltsvej 7F, 5800 Nyborg', 55.3084979, 10.8096242, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 3, '/nyborg-storebaeltsvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('40d3a631c3e043179bc3a8aafc7e20ec', 'Thisted - Østerbakken', 'Østerbakken 111, 7700 Thisted', 56.9688520, 8.7351340, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/thisted-osterbakken/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('4120c9ab26d74413899ced18db5a9fcb', 'Ishøj - Vejleåvej', 'Vejleåvej 19, 2635 Ishøj', 55.6233845, 12.3211668, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/ishoj-vejleavej/', '/2021/11/28140211/2-1.png', ''),
('420022d6131647e1888d172f7e5c6f01', 'Silkeborg - Nordre Ringvej', 'Nordre Ringvej 90, 8600 Silkeborg', 56.1814130, 9.5369542, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/silkeborg-nordre-ringvej/', '/2021/11/28140224/Ikke-navngivet-1.png', ''),
('42276a3385744b2fa21541e9ba296927', 'Aalborg - Otto Mønstedsvej', 'Otto Mønsteds Vej 5, 9200 Aalborg', 57.0152480, 9.8962560, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/aalborg-otto-monstedsvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('425c5d116c9049619aa142132472ff1c', 'Randers - Udbyhøjvej', 'Udbyhøjvej 7, 8930 Randers', 56.4660468, 10.0542498, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/randers-udbyhojvej/', '/2021/11/28140219/2-vask.png', ''),
('4290acce096f4ea4a5b5e5cf16b1e29e', 'Brøndby Strand - Gl. Køge Landevej', 'Gammel Køge Landevej 690, 2660 Brøndby Strand', 55.6182310, 12.4239500, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 1, '/brondby-strand-gl-koge-landevej/', '/2021/11/28140219/2-vask.png', ''),
('43765092712340f1b9f30e4a5c5b9a2f', 'Thisted - Østerbakken', 'Østerbakken 111, 7700 Thisted', 56.9688520, 8.7351340, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/thisted-osterbakken/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('439ba0954e984e91862e93ee1a74c039', 'Haderslev - Sverigesvej', 'Sverigesvej 2M, 6100 Haderslev', 55.2592112, 9.4741292, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/haderslev-sverigesvej/', '/2021/11/28140212/2-vask-1.png', ''),
('43ea507bfae84f6d84f5bcabb329eb05', 'Slagelse - Idagårdsvej', 'Idagårdsvej 2, 4200 Slagelse', 55.3917353, 11.3530022, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/slagelse-idagardsvej/', '/2021/11/28140219/2-vask.png', ''),
('442292fbdea74201a5c345ab1fcab3f5', 'Vordingborg - Valdemarsgade', 'Valdemarsgade 57, 4760 Vordingborg', 55.0108552, 11.9104886, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/vordingborg-valdemarsgade/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('44af28c2adbe499c8d63f991a36abda5', 'Kolding - Vejlevej 132', 'Vejlevej 132, 6000 Kolding', 55.5040386, 9.4582265, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/kolding-vejlevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('44c09968974d4f60a2f80f453e05f01b', 'Randers - Udbyhøjvej', 'Udbyhøjvej 7, 8930 Randers', 56.4660468, 10.0542498, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/randers-udbyhojvej/', '/2021/11/28140219/2-vask.png', ''),
('44f758bae12e4e2e9469ece5b9030128', 'Aabenraa - Egevej', 'Egevej 4, 6200 Aabenraa', 55.0656429, 9.3644501, '7-22', 1, 1, 1, 0, 0, 0, 2.60, 2.55, 2, '/aabenraa-egevej/', '/2021/11/28140221/1-vaskehal.jpg.png', ''),
('4504d5b69a2546448f38c41ff8be9ff4', 'Odense V - Bystævnevej', 'Bystævnevej 5, 5200 Odense', 55.3950257, 10.3465247, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 3, '/odense-v-bystaevnevej/', '/2021/11/28140218/3.png', ''),
('459a2e80875241d3842eb1f10e686904', 'Fredericia - Strevelinsvej', 'Strevelinsvej 5, 7000 Fredericia', 55.5355191, 9.7187001, '7-22', 3, 3, 0, 0, 2, 0, 2.60, 2.55, 2, '/fredericia-strevelinsvej/', '/2021/11/28140218/3.png', ''),
('4622ebc05a1642cd9c39783faca8cf03', 'Vejle - Solkilde Allé', 'Solkilde Alle 11, 7100 Vejle', 55.7234586, 9.5847778, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/vejle-solkilde-alle/', '/2021/11/28140219/2-vask.png', ''),
('46812bec53f04da1b8f8656db1194ad0', 'Brande - Vestergårdsvej', 'Vestergårdsvej 3, 7330 Brande', 55.9606470, 9.1034260, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/brande-vestergardsvej/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('4738f5cd602d4c2daa4af77fceda6ff5', 'Svendborg - Odensevej', 'Odensevej 94, 5700 Svendborg', 55.0729498, 10.5823982, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/svendborg-odensevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('474b144ce6444fc8b1f414e8eaa40807', 'Roskilde - Byleddet', 'Byleddet 2, 4000 Roskilde', 55.6437095, 12.1091142, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.58, 1, '/roskilde-byleddet/', '/2021/11/28140217/2-scaled.jpg', ''),
('47516a613f1e4e0b85a45664e5771227', 'Viborg - Vognmagervej', 'Vognmagervej 21E, 8800 Viborg', 56.4693658, 9.4094306, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/viborg-vognmagervej/', '/2021/11/28140216/2_2.png', 'Hal 1 er ude af drift. Tekniker er tilkaldt.'),
('47bbb72b21d9413ba53704fe9aeb1a81', 'Frederikshavn - Apholmenvej', 'Apholmenvej 9, 9900 Frederikshavn', 57.4621933, 10.5194482, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/frederikshavn-apholmenvej/', '/2021/11/28140214/Ikke-navngivet-1-5.png', ''),
('47f1ccb7f3fc4da4a2d5dd75ed8e08a2', 'Tilst - Blomstervej', 'Blomstervej 2T, 8381 Tilst', 56.1817870, 10.1250000, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/tilst-blomstervej/', '/2021/11/28140219/2-vask.png', ''),
('483ec8e890404f68bc2d91076aeda4e2', 'Kalundborg - Holbækvej', 'Holbækvej 74, 4400 Kalundborg', 55.6787670, 11.1358300, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 1, '/kalundborg-holbaekvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('484f21b4bd9e456ebdf4d84d82c80af3', 'Nykøbing Falster - Guldborgsundcentret', 'Guldborgsundcentret 32, 4800 Nykøbing Falster', 54.7588014, 11.8514371, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.38, 1, '/nykobing-falster-guldborgsundcentret/', '/2021/11/28140217/2-scaled.jpg', ''),
('4884266518ff4e9f998e7a686992e1b4', 'Søborg - Dynamovej', 'Dynamovej 4, 2860 Søborg', 55.7337313, 12.4599606, '7-22', 4, 4, 3, 0, 6, 0, 2.60, 2.55, 1, '/soborg-dynamovej/', '/2021/11/28140216/5.png', ''),
('48d0ef35c4e7404985f855b4e3b944d1', 'Ringsted - Nørregade', 'Nørregade 70, 4100 Ringsted', 55.4513921, 11.7900816, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/ringsted-norregade/', '/2021/11/28140216/2_2.png', ''),
('48db369ce6d24abdbf2954187290bb82', 'Lystrup - Lægårdsvej', 'Lægårdsvej 4, 8520 Lystrup', 56.2256690, 10.2385250, '7-22', 2, 2, 0, 0, 0, 2, 2.60, 2.55, 2, '/lystrup-laegardsvej/', '/2021/11/28140219/2-vask.png', ''),
('48e09e76585e402e84c0c14563d24c2a', 'Hjørring - Sprogøvej', 'Sprogøvej 2, 9800 Hjørring', 57.4555938, 10.0394654, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/hjorring-sprogovej/', '/2021/11/28140224/Ikke-navngivet-1.png', ''),
('496e7e8f13c44e118143d4a240f73414', 'Roskilde - Ringstedvej', 'Ringstedvej 73, 4000 Roskilde', 55.6284269, 12.0665595, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/roskilde-ringstedvej/', '/2021/11/28140216/2_2.png', ''),
('49c30429153c4679b9f328d6833d5f79', 'Fredericia - Strevelinsvej', 'Strevelinsvej 5, 7000 Fredericia', 55.5355191, 9.7187001, '7-22', 3, 3, 0, 0, 2, 0, 2.60, 2.55, 2, '/fredericia-strevelinsvej/', '/2021/11/28140218/3.png', ''),
('49caed5e6ae9427ba6771ef260ddde30', 'Svendborg - Odensevej', 'Odensevej 94, 5700 Svendborg', 55.0729498, 10.5823982, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/svendborg-odensevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('4ba4ca220759481f9a29d477638f1c07', 'Roskilde - Byleddet', 'Byleddet 2, 4000 Roskilde', 55.6437095, 12.1091142, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.58, 1, '/roskilde-byleddet/', '/2021/11/28140217/2-scaled.jpg', ''),
('4bf726f390af4c11935192c8ab2248a5', 'Herning - Dæmningen', 'Dæmningen 21, 7400 Herning', 56.1321410, 8.9593500, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/herning-daemningen/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('4c2bebe648384a88a132595c86bdb66f', 'Nakskov - Løjtoftevej', 'Løjtoftevej 6, 4900 Nakskov ', 54.8324750, 11.1496620, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 1, '/nakskov-lojtoftevej/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('4c54e4a752e84686b5a52efc03e08a1d', 'Ribe - Trojels Knæ', 'Trojels Knæ 6, 6760 Ribe', 55.3514850, 8.7803110, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/ribe-trojels-knae/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('4d6cf6d3d2444f20901d94e449139e1f', 'Holbæk - Springstrup', 'Springstrup 5, 4300 Holbæk', 55.7030262, 11.6660911, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 1, '/holbaek-springstrup/', '/2021/11/28140218/3.png', ''),
('4da9909b73a54c939c13e8cfc2e6e67f', 'Middelfart - Skovsvinget', 'Skovsvinget 27c, 5500 Middelfart', 55.5120128, 9.7661805, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/middelfart-skovsvinget/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('4e235c8f1b2e4590b9c6ff82341b0624', 'Vordingborg - Valdemarsgade', 'Valdemarsgade 57, 4760 Vordingborg', 55.0108552, 11.9104886, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/vordingborg-valdemarsgade/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('4efc4dc4eb38407896b36fe9c23d1fd2', 'Ringsted - Frejasvej', 'Frejasvej 43, 4100 Ringsted', 55.4306693, 11.8014193, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 1, '/ringsted-frejasvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('4f0abefb352d40768a8bf845db80ecb0', 'Ikast - Europavej', 'Europavej 3, 7430 Ikast', 56.1236985, 9.1754224, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/ikast-europavej/', '/2021/11/28140221/1-vaskehal.jpg.png', ''),
('4f28766f53244bedb66ff12d2b08b221', 'Grenå - Hesselvang', 'Hesselvang 1, 8500 Grenå', 56.3838951, 10.8644506, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/grena-hesselvang/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('4f79555b5c7e4ff59d59070396dbc23f', 'Hillerød - Industrivænget ', 'Industrivænget 3, 3400 Hillerød', 55.9314810, 12.2829960, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/hilleroed-industrivaenget/', '0', ''),
('4f910475304f4675a9ba32c4b256a34c', 'Køge - Københavnsvej', 'Københavnsvej 86, 4600 Køge', 55.4718050, 12.1819530, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 1, '/koge-kobenhavnsvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('50ab613ec1714e49927d05f325ae9dff', 'Brøndby Strand - Gl. Køge Landevej', 'Gammel Køge Landevej 690, 2660 Brøndby Strand', 55.6182310, 12.4239500, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 1, '/brondby-strand-gl-koge-landevej/', '/2021/11/28140219/2-vask.png', ''),
('50ca0f0e79654c3095757e4383473da1', 'Aalborg, Gug - Gammel Vissevej', 'Gammel Vissevej 1C, 9210 Aalborg - Gug', 57.0063139, 9.9259463, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/aalborg-gug-gammel-vissevej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('50e6a61b41ea4042b5710e0ec1415042', 'Taastrup - Roskildevej', 'Roskildevej 376, 2630 Taastrup', 55.6580371, 12.2947118, '7-22', 3, 3, 0, 0, 4, 0, 2.60, 2.55, 1, '/taastrup-roskildevej/', '/2021/11/28140216/5.png', ''),
('510a0cec46734c5daf41c389d9e9cb78', 'Viborg - Falkevej', 'Falkevej 25, 8800 Viborg', 56.4441610, 9.3884560, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 2, '/viborg-falkevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('52a06a42a10641c18945a6ca7c8d48e8', 'Ikast - Europavej', 'Europavej 3, 7430 Ikast', 56.1236985, 9.1754224, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/ikast-europavej/', '/2021/11/28140221/1-vaskehal.jpg.png', ''),
('5459ff949ae7482388886ad066830db5', 'Horsens - Vejlevej', 'Vejlevej 102, 8700 Horsens', 55.8330850, 9.8047440, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/horsens-vejlevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('55bfce5437d34a0ca9ec6377d7f8b25a', 'Viborg - Vognmagervej', 'Vognmagervej 21E, 8800 Viborg', 56.4693658, 9.4094306, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/viborg-vognmagervej/', '/2021/11/28140216/2_2.png', ''),
('55d118a6a7e24d0b902b50a5478f06ba', 'Roskilde - Byleddet', 'Byleddet 2, 4000 Roskilde', 55.6437095, 12.1091142, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.58, 1, '/roskilde-byleddet/', '/2021/11/28140217/2-scaled.jpg', ''),
('55f64f1bc5ae4ab8900e1991dad1df52', 'Odense - Nyborgvej', 'Nyborgvej 343, 5220 Odense', 55.3915296, 10.4358192, '7-22', 3, 3, 0, 0, 0, 0, 2.60, 2.55, 3, '/odense-nyborgvej/', '/2021/11/28140218/3.png', ''),
('56258317c81e4b17b01ac50b5174e4ef', 'Nykøbing Falster - Guldborgsundcentret', 'Guldborgsundcentret 32, 4800 Nykøbing Falster', 54.7588014, 11.8514371, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.38, 1, '/nykobing-falster-guldborgsundcentret/', '/2021/11/28140217/2-scaled.jpg', ''),
('56942525510f4a1cb10417650e69727d', 'Risskov - Ravnsøvej', 'Ravnsøvej 48B, 8240 Risskov', 56.2020620, 10.2444900, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/risskov-ravnsovej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('569e70ae88fa471ba528372ade36a85b', 'Struer - Bredgade', 'Bredgade 58, 7600 Struer ', 56.4804349, 8.5855352, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/struer-bredgade/', '/2022/02/02084352/DSC7628.jpg', ''),
('57137822287345099ed704dea63d2f63', 'Esbjerg - Sædding Ringvej', 'Sædding Ringvej 6, 6710 Esbjerg', 55.5037278, 8.4074192, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/esbjerg-saedding-ringvej/', '/2021/11/28140223/Ikke-navngivet-1-1.png', ''),
('583fa96265554be2a73c96e005409959', 'Ringsted - Frejasvej', 'Frejasvej 43, 4100 Ringsted', 55.4306693, 11.8014193, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 1, '/ringsted-frejasvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('58a63a62927b43b08add7b387b45b7d5', 'Struer - Bredgade', 'Bredgade 58, 7600 Struer ', 56.4804349, 8.5855352, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/struer-bredgade/', '/2022/02/02084352/DSC7628.jpg', ''),
('58d43f946dae4193bfb922d2b9636d52', 'Ringsted - Frejasvej', 'Frejasvej 43, 4100 Ringsted', 55.4306693, 11.8014193, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 1, '/ringsted-frejasvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('58f4b2fb75014366ada536895493856a', 'Herning - Guldborgvej', 'Guldborgvej 2-4, 7400 Herning', 56.1535542, 8.9847445, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 2, '/herning-guldborgvej/', '/2021/11/28140215/2_2-1.png', ''),
('59672772bfcf4619955f3d035f5b477b', 'Farum - Gammelgårdsvej', 'Gammelgårdsvej 84, 3520 Farum', 55.8169430, 12.3703500, '7-22', 3, 3, 3, 0, 2, 0, 2.60, 2.55, 1, '/farum-gammelgardsvej/', '/2021/11/28140218/3.png', ''),
('596c470ad2d441c6ac18a889ddce353b', 'Fredericia - Vejlevej', 'Vejlevej 20, 7000 Fredericia', 55.5696911, 9.7276223, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/fredericia-vejlevej/', '0', ''),
('59e449a797bd4c6f996cff6ff5886aec', 'Køge - Københavnsvej', 'Københavnsvej 86, 4600 Køge', 55.4718050, 12.1819530, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 1, '/koge-kobenhavnsvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('59e9ce9aa3cc4536bca6492580f23c5d', 'Ringsted - Nørregade', 'Nørregade 70, 4100 Ringsted', 55.4513921, 11.7900816, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/ringsted-norregade/', '/2021/11/28140216/2_2.png', ''),
('5c7e4d10f4834e46a924b4695186b80e', 'Ishøj - Vejleåvej', 'Vejleåvej 19, 2635 Ishøj', 55.6233845, 12.3211668, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/ishoj-vejleavej/', '/2021/11/28140211/2-1.png', ''),
('5cdc0d32a2a04afc95973bed06b13b97', 'Svendborg - Odensevej', 'Odensevej 94, 5700 Svendborg', 55.0729498, 10.5823982, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/svendborg-odensevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('5ce92691cd93487c8ff98c3c404f2fa8', 'Ribe - Trojels Knæ', 'Trojels Knæ 6, 6760 Ribe', 55.3514850, 8.7803110, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/ribe-trojels-knae/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('5d1aef8a41d94cbf8ac8a6681252a68a', 'Haderslev - Sverigesvej', 'Sverigesvej 2M, 6100 Haderslev', 55.2592112, 9.4741292, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/haderslev-sverigesvej/', '/2021/11/28140212/2-vask-1.png', ''),
('5d1d69aa06f44829b3383e1178ddf33a', 'Lystrup - Lægårdsvej', 'Lægårdsvej 4, 8520 Lystrup', 56.2256690, 10.2385250, '7-22', 2, 2, 0, 0, 0, 2, 2.60, 2.55, 2, '/lystrup-laegardsvej/', '/2021/11/28140219/2-vask.png', ''),
('5d77f7e4b6ca4e2f8f4329654d51dd95', 'Farum - Gammelgårdsvej', 'Gammelgårdsvej 84, 3520 Farum', 55.8169430, 12.3703500, '7-22', 3, 3, 3, 0, 2, 0, 2.60, 2.55, 1, '/farum-gammelgardsvej/', '/2021/11/28140218/3.png', ''),
('5fad7ea9e1c84dbda0dbfe04b61b1a62', 'Lystrup - Lægårdsvej', 'Lægårdsvej 4, 8520 Lystrup', 56.2256690, 10.2385250, '7-22', 2, 2, 0, 0, 0, 2, 2.60, 2.55, 2, '/lystrup-laegardsvej/', '/2021/11/28140219/2-vask.png', ''),
('5ff9d68b71ac451c905145025efb9b6f', 'Aabenraa - Egevej', 'Egevej 4, 6200 Aabenraa', 55.0656429, 9.3644501, '7-22', 1, 1, 1, 0, 0, 0, 2.60, 2.55, 2, '/aabenraa-egevej/', '/2021/11/28140221/1-vaskehal.jpg.png', ''),
('605c179f87bb41ccadb8d6bbcf3b9924', 'Aalborg, Gug - Gammel Vissevej', 'Gammel Vissevej 1C, 9210 Aalborg - Gug', 57.0063139, 9.9259463, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/aalborg-gug-gammel-vissevej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('60867dee8c244f2d864c0351add20aab', 'Ringsted - Nørregade', 'Nørregade 70, 4100 Ringsted', 55.4513921, 11.7900816, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/ringsted-norregade/', '/2021/11/28140216/2_2.png', ''),
('616c1f76d1fc4aeebd6c17e060f3a9c9', 'Taastrup - Roskildevej', 'Roskildevej 376, 2630 Taastrup', 55.6580371, 12.2947118, '7-22', 3, 3, 0, 0, 4, 0, 2.60, 2.55, 1, '/taastrup-roskildevej/', '/2021/11/28140216/5.png', ''),
('61a17d9dec9544eba1b944fe69b580d2', 'Aalborg, Gug - Gammel Vissevej', 'Gammel Vissevej 1C, 9210 Aalborg - Gug', 57.0063139, 9.9259463, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/aalborg-gug-gammel-vissevej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('626df2cb1164407aa8e1f0fb6ba91fe8', 'Taastrup - Roskildevej', 'Roskildevej 376, 2630 Taastrup', 55.6580371, 12.2947118, '7-22', 3, 3, 0, 0, 4, 0, 2.60, 2.55, 1, '/taastrup-roskildevej/', '/2021/11/28140216/5.png', ''),
('6272a95a90d24b2bb3844980da2b28ed', 'Lystrup - Lægårdsvej', 'Lægårdsvej 4, 8520 Lystrup', 56.2256690, 10.2385250, '7-22', 2, 2, 0, 0, 0, 2, 2.60, 2.55, 2, '/lystrup-laegardsvej/', '/2021/11/28140219/2-vask.png', '');
INSERT INTO `locations` (`location_pk`, `location_name`, `location_address`, `location_lat`, `location_lon`, `location_open_hours`, `location_wash_halls`, `location_empty_wash_halls`, `location_self_wash`, `location_mat_cleaner`, `location_vacuum`, `location_pre_wash`, `location_max_meters`, `location_max_mirrors_width_meters`, `region_fk`, `location_end_url`, `location_image_end_url`, `location_status_message`) VALUES
('628c9dcb508c434a8560ceaec94a87d5', 'Herlev - Nørrelundvej', 'Nørrelundvej 2, 2730 Herlev', 55.7253650, 12.4166970, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/herlev-norrelundvej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('630c51e7fb9948d391c5d962c1dd1e82', 'Næstved - Gl. Holstedvej', 'Gammel Holstedvej 1, 4700 Næstved', 55.2496811, 11.7820310, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/naestved-gl-holstedvej/', '/2021/11/28140219/2-vask.png', ''),
('63b18b8f84524a8883c85cfdf073aaca', 'Nyborg - Storebæltsvej', 'Storebæltsvej 7F, 5800 Nyborg', 55.3084979, 10.8096242, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 3, '/nyborg-storebaeltsvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('65e3c3c31f094fecb6ad0ee4ec477a79', 'Sønderborg - Centerpassagen', 'Centerpassagen 4, 6400 Sønderborg', 54.9194303, 9.8080340, '7-22', 3, 3, 0, 0, 0, 0, 2.60, 2.58, 2, '/sonderborg-centerpassagen/', '/2021/11/28140218/3.png', 'Vi udfører service i hal 2, 1 og 3, så du får en bedre vaskeoplevelse.'),
('65ec76927be640218ad4158f7c1b5f42', 'Viby - Gunnar Clausens vej', 'Gunnar Clausens Vej 2A, 8260 Viby', 56.1113730, 10.1250330, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 2, '/viby-gunnar-clausens-vej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('667192b1cfcf4512830475b1bbeb72a5', 'Ishøj - Vejleåvej', 'Vejleåvej 19, 2635 Ishøj', 55.6233845, 12.3211668, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/ishoj-vejleavej/', '/2021/11/28140211/2-1.png', ''),
('66dcf71c464a4a7da65d67cfd8184591', 'Horsens - Vejlevej', 'Vejlevej 102, 8700 Horsens', 55.8330850, 9.8047440, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/horsens-vejlevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('66e82168c76e41cbb0aa34d028ac7e27', 'Højbjerg - Bjødstrupvej', 'Bjødstrupvej 20E, 8270 Højbjerg', 56.1075250, 10.1669670, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/hojbjerg-bjodstrupvej/', '/2021/11/28140214/2.png', 'Hal 1 er ude af drift. Tekniker er tilkaldt.'),
('67421bc4d3a5484f9a417071bdc0a6a3', 'Roskilde - Byleddet', 'Byleddet 2, 4000 Roskilde', 55.6437095, 12.1091142, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.58, 1, '/roskilde-byleddet/', '/2021/11/28140217/2-scaled.jpg', ''),
('677c25dbea7441faafd6b11ce74be97e', 'Brøndby Strand - Gl. Køge Landevej', 'Gammel Køge Landevej 690, 2660 Brøndby Strand', 55.6182310, 12.4239500, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 1, '/brondby-strand-gl-koge-landevej/', '/2021/11/28140219/2-vask.png', ''),
('685b575204ca460fb2d2a18b0b3685cb', 'Brande - Vestergårdsvej', 'Vestergårdsvej 3, 7330 Brande', 55.9606470, 9.1034260, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/brande-vestergardsvej/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('68657e64e4604784963daa6d34ceaa70', 'Randers - Messingvej', 'Messingvej 10, 8940 Randers', 56.4303617, 10.0538152, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/randers-messingvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('68701d4cb7ee40e6a162d444e77e290f', 'Nørresundby - Loftbrovej', 'Loftbrovej 2, 9400 Nørresundby', 57.0891424, 9.9692410, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 2, '/norresundby-loftbrovej/', '/2021/11/28140213/2-vaskehaller.jpg-1.png', ''),
('688f3fa1ac36415e83c5f65a855651f3', 'Helsingør - Klostermosevej', 'Klostermosevej 103, 3000 Helsingør', 56.0240180, 12.5718630, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/helsingor-klostermosevej/', '/2021/11/28140219/2-vask.png', ''),
('68ba0fa48733414b89db0483d3082090', 'Holstebro - Nybo Bakke', 'Nybo Bakke 2, 7500 Holstebro', 56.3418890, 8.6353950, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/holstebro-nybovej/', '/2021/11/28140219/2-vask.png', ''),
('68e7621ebb6f4e43b573143f7e28d2fd', 'Ribe - Trojels Knæ', 'Trojels Knæ 6, 6760 Ribe', 55.3514850, 8.7803110, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/ribe-trojels-knae/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('69b923ac05bd450c9d4d43e106009e81', 'Roskilde - Byleddet', 'Byleddet 2, 4000 Roskilde', 55.6437095, 12.1091142, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.58, 1, '/roskilde-byleddet/', '/2021/11/28140217/2-scaled.jpg', ''),
('69cd0e5d03eb46dca0dd91940befc883', 'Risskov - Ravnsøvej', 'Ravnsøvej 48B, 8240 Risskov', 56.2020620, 10.2444900, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/risskov-ravnsovej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('6ac7d1de89a9463bb17dc80812e56d17', 'Nykøbing Falster - Guldborgsundcentret', 'Guldborgsundcentret 32, 4800 Nykøbing Falster', 54.7588014, 11.8514371, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.38, 1, '/nykobing-falster-guldborgsundcentret/', '/2021/11/28140217/2-scaled.jpg', ''),
('6af5bb0bb0be4c888362e19caaeff825', 'Ebeltoft - Færgevejen', 'Færgevejen 3, 8400 Ebeltoft', 56.1908092, 10.6721231, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.58, 2, '/ebeltoft-faergevejen/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('6b2f450723b84b9f853e0123d92bb05a', 'Næstved - Erantisvej', 'Erantisvej 52, 4700 Næstved', 55.2391726, 11.7779768, '7-22', 3, 3, 1, 0, 0, 0, 2.60, 2.55, 1, '/naestved-erantisvej/', '/2021/11/28140218/3.png', ''),
('6b888b50b8b5434182c346b170dd5db6', 'Højbjerg - Bjødstrupvej', 'Bjødstrupvej 20E, 8270 Højbjerg', 56.1075250, 10.1669670, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/hojbjerg-bjodstrupvej/', '/2021/11/28140214/2.png', ''),
('6b8cde3b9079476685a5c81d3f3c9cd8', 'Skive - Øster Fælled vej', 'Øster Fælled vej 4, 7800 Skive', 56.5615666, 9.0395673, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/skive-oster-faelled-vej/', '/2021/11/28140216/2_2.png', ''),
('6bab8355e335466280d28584181e9f9c', 'Grenå - Hesselvang', 'Hesselvang 1, 8500 Grenå', 56.3838951, 10.8644506, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/grena-hesselvang/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('6bdcbb6a351245efb6c2a6dd2dce368b', 'Middelfart - Skovsvinget', 'Skovsvinget 27c, 5500 Middelfart', 55.5120128, 9.7661805, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/middelfart-skovsvinget/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('6c00d9b863064af993fc781a02315eb9', 'Ishøj - Vejleåvej', 'Vejleåvej 19, 2635 Ishøj', 55.6233845, 12.3211668, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/ishoj-vejleavej/', '/2021/11/28140211/2-1.png', ''),
('6c1d0809498a4d9e8356e632d214dd04', 'Taastrup - Roskildevej', 'Roskildevej 376, 2630 Taastrup', 55.6580371, 12.2947118, '7-22', 3, 3, 0, 0, 4, 0, 2.60, 2.55, 1, '/taastrup-roskildevej/', '/2021/11/28140216/5.png', ''),
('6cc7a81cc1dc4843843794af8c0ca091', 'Viby - Gunnar Clausens vej', 'Gunnar Clausens Vej 2A, 8260 Viby', 56.1113730, 10.1250330, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 2, '/viby-gunnar-clausens-vej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('6cd9cfdf8dad4b7e8e77a734c19ed60d', 'Vejle - Solkilde Allé', 'Solkilde Alle 11, 7100 Vejle', 55.7234586, 9.5847778, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/vejle-solkilde-alle/', '/2021/11/28140219/2-vask.png', ''),
('6d291d5b87a648d5960bd9740080dc0d', 'Søborg - Dynamovej', 'Dynamovej 4, 2860 Søborg', 55.7337313, 12.4599606, '7-22', 4, 4, 3, 0, 6, 0, 2.60, 2.55, 1, '/soborg-dynamovej/', '/2021/11/28140216/5.png', ''),
('6da3a7e205b040e48a960aa7e0d0235a', 'Randers - Messingvej', 'Messingvej 10, 8940 Randers', 56.4303617, 10.0538152, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/randers-messingvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('6dd4606c01e84f32a64a78338f95118b', 'Hjørring - Sprogøvej', 'Sprogøvej 2, 9800 Hjørring', 57.4555938, 10.0394654, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/hjorring-sprogovej/', '/2021/11/28140224/Ikke-navngivet-1.png', ''),
('6dfda2fa14db401ab4407aa38e487624', 'Vejle - Soldalen', 'Soldalen 4, 7100 Vejle', 55.6812381, 9.5674556, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/vejle-soldalen/', '/2021/11/28140217/2-scaled.jpg', ''),
('6e6267df7641448a8daeb22363d08694', 'Slagelse - Idagårdsvej', 'Idagårdsvej 2, 4200 Slagelse', 55.3917353, 11.3530022, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/slagelse-idagardsvej/', '/2021/11/28140219/2-vask.png', ''),
('6ec87f71e4234ebdbbb67fa3a290454b', 'Randers - Messingvej', 'Messingvej 10, 8940 Randers', 56.4303617, 10.0538152, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/randers-messingvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('7013cf829a5a4cc2883703f8b7563f2a', 'Randers - Messingvej', 'Messingvej 10, 8940 Randers', 56.4303617, 10.0538152, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/randers-messingvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('707e0a9f3594427d926c1fd6f10a117d', 'Herlev - Nørrelundvej', 'Nørrelundvej 2, 2730 Herlev', 55.7253650, 12.4166970, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/herlev-norrelundvej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('710db490103e44e0b075efb453a32e53', 'Middelfart - Skovsvinget', 'Skovsvinget 27c, 5500 Middelfart', 55.5120128, 9.7661805, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/middelfart-skovsvinget/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('71294803a71246509ea7995add75e387', 'Ringsted - Frejasvej', 'Frejasvej 43, 4100 Ringsted', 55.4306693, 11.8014193, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 1, '/ringsted-frejasvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('71daa1c23cf44be28f136f700b50ec9b', 'Slagelse - Idagårdsvej', 'Idagårdsvej 2, 4200 Slagelse', 55.3917353, 11.3530022, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/slagelse-idagardsvej/', '/2021/11/28140219/2-vask.png', ''),
('72268e30af9140dba40eeb96922c8bc3', 'Slagelse - Smedegade', 'Smedegade 77, 4200 Slagelse', 55.4076851, 11.3678455, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/slagelse-smedegade/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('7240cbd1643f4b9fa64be9d32401466a', 'Ebeltoft - Færgevejen', 'Færgevejen 3, 8400 Ebeltoft', 56.1908092, 10.6721231, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.58, 2, '/ebeltoft-faergevejen/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('7322a4303368476aaf8572de2b48bb49', 'Frederikssund - Askelundsvej', 'Askelundsvej 8, 3600 Frederikssund', 55.8451508, 12.0742911, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 1, '/frederikssund-askelundsvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('735413f6e039468ebc0a4468082d59cf', 'Slagelse - Idagårdsvej', 'Idagårdsvej 2, 4200 Slagelse', 55.3917353, 11.3530022, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/slagelse-idagardsvej/', '/2021/11/28140219/2-vask.png', 'Undervogsskyld i Hal 1, er ude af drift og kan ikke benyttes. ; Vi rengør Hal 2, så du får en bedre vaskeoplevelse.'),
('737684b1b38341b0ab4687a30cdfaeb8', 'Lystrup - Lægårdsvej', 'Lægårdsvej 4, 8520 Lystrup', 56.2256690, 10.2385250, '7-22', 2, 2, 0, 0, 0, 2, 2.60, 2.55, 2, '/lystrup-laegardsvej/', '/2021/11/28140219/2-vask.png', ''),
('746933a072464f3d9a90526291753a65', 'Nakskov - Løjtoftevej', 'Løjtoftevej 6, 4900 Nakskov ', 54.8324750, 11.1496620, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 1, '/nakskov-lojtoftevej/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('74c366a64963482e8b6cb56ce44471dc', 'Vejle - Soldalen', 'Soldalen 4, 7100 Vejle', 55.6812381, 9.5674556, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/vejle-soldalen/', '/2021/11/28140217/2-scaled.jpg', ''),
('74c8bc5f17e94567b9ccf1403aef55ac', 'Risskov - Ravnsøvej', 'Ravnsøvej 48B, 8240 Risskov', 56.2020620, 10.2444900, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/risskov-ravnsovej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('762b58cb0e054044802b869fe9ad3f24', 'Tilst - Blomstervej', 'Blomstervej 2T, 8381 Tilst', 56.1817870, 10.1250000, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/tilst-blomstervej/', '/2021/11/28140219/2-vask.png', ''),
('76940b6378c742d3926cd95fb5aa456d', 'Herning - Guldborgvej', 'Guldborgvej 2-4, 7400 Herning', 56.1535542, 8.9847445, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 2, '/herning-guldborgvej/', '/2021/11/28140215/2_2-1.png', ''),
('776c69cd5d08488aa4b563b2e4ef19ed', 'Roskilde - Ringstedvej', 'Ringstedvej 73, 4000 Roskilde', 55.6284269, 12.0665595, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/roskilde-ringstedvej/', '/2021/11/28140216/2_2.png', ''),
('779530bf0fce4bb69a46922ff8721821', 'Fredericia - Vejlevej', 'Vejlevej 20, 7000 Fredericia', 55.5696911, 9.7276223, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/fredericia-vejlevej/', '0', ''),
('784215a39d5d4a60a1573f4475de353d', 'Køge - Københavnsvej', 'Københavnsvej 86, 4600 Køge', 55.4718050, 12.1819530, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 1, '/koge-kobenhavnsvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('788c6f1a24774c94a724ff0106b2d3f8', 'Køge - Københavnsvej', 'Københavnsvej 86, 4600 Køge', 55.4718050, 12.1819530, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 1, '/koge-kobenhavnsvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('78cc606fa91c42c0b13fe5a72dfad526', 'Frederikssund - Askelundsvej', 'Askelundsvej 8, 3600 Frederikssund', 55.8451508, 12.0742911, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 1, '/frederikssund-askelundsvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('78d6eaf0c34d40b0b0e8c624acd29a49', 'Højbjerg - Bjødstrupvej', 'Bjødstrupvej 20E, 8270 Højbjerg', 56.1075250, 10.1669670, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/hojbjerg-bjodstrupvej/', '/2021/11/28140214/2.png', ''),
('7914a940539b4665808659f358fdc54e', 'Svendborg - Nyborgvej', 'Nyborgvej 4, 5700 Svendborg', 55.0628931, 10.6185919, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/svendborg-nyborgvej/', '/2021/11/28140216/2_2.png', 'Hal 2 er lukket. Vi renoverer, så du får en bedre vaskeoplevelse'),
('7950d2d3b4c740cbb2fdae9902d72524', 'Svendborg - Nyborgvej', 'Nyborgvej 4, 5700 Svendborg', 55.0628931, 10.6185919, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/svendborg-nyborgvej/', '/2021/11/28140216/2_2.png', ''),
('796551e3378047218466e2521313eea6', 'Haderslev - Sverigesvej', 'Sverigesvej 2M, 6100 Haderslev', 55.2592112, 9.4741292, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/haderslev-sverigesvej/', '/2021/11/28140212/2-vask-1.png', ''),
('79879e05854d41e5892fe572a581fc73', 'Holbæk - Springstrup', 'Springstrup 5, 4300 Holbæk', 55.7030262, 11.6660911, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 1, '/holbaek-springstrup/', '/2021/11/28140218/3.png', ''),
('7988783a9cb94f0e9ee8d471bc0d21d8', 'Vejle - Soldalen', 'Soldalen 4, 7100 Vejle', 55.6812381, 9.5674556, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/vejle-soldalen/', '/2021/11/28140217/2-scaled.jpg', ''),
('79902aa664334142af39bba820897b85', 'Odense - Nyborgvej', 'Nyborgvej 343, 5220 Odense', 55.3915296, 10.4358192, '7-22', 3, 3, 0, 0, 0, 0, 2.60, 2.55, 3, '/odense-nyborgvej/', '/2021/11/28140218/3.png', ''),
('79cb58a738ca4494972e333fc262a3be', 'Hjørring - Sprogøvej', 'Sprogøvej 2, 9800 Hjørring', 57.4555938, 10.0394654, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/hjorring-sprogovej/', '/2021/11/28140224/Ikke-navngivet-1.png', ''),
('79cb70f4f1b64a20a7c7ec6cff780fea', 'Svendborg - Nyborgvej', 'Nyborgvej 4, 5700 Svendborg', 55.0628931, 10.6185919, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/svendborg-nyborgvej/', '/2021/11/28140216/2_2.png', ''),
('7a5f9bc46d8e415480477e15b83a200a', 'Nyborg - Storebæltsvej', 'Storebæltsvej 7F, 5800 Nyborg', 55.3084979, 10.8096242, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 3, '/nyborg-storebaeltsvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('7a726a94c32649ae8b565406fb242f26', 'Hjørring - Sprogøvej', 'Sprogøvej 2, 9800 Hjørring', 57.4555938, 10.0394654, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/hjorring-sprogovej/', '/2021/11/28140224/Ikke-navngivet-1.png', ''),
('7a9f2e8686264421bb3f5f06de3a0465', 'Frederiksværk - Hanehovedvej', 'Hanehovedvej 49, 3300 Frederiksværk', 55.9775589, 12.0074471, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/frederiksvaerk-hanehovedvej/', '0', ''),
('7ac0884b094f47c8a967f2afe17ede1f', 'Kalundborg - Holbækvej', 'Holbækvej 74, 4400 Kalundborg', 55.6787670, 11.1358300, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 1, '/kalundborg-holbaekvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('7ada5f91c6ff435da953a636a1289670', 'Brøndby Strand - Gl. Køge Landevej', 'Gammel Køge Landevej 690, 2660 Brøndby Strand', 55.6182310, 12.4239500, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 1, '/brondby-strand-gl-koge-landevej/', '/2021/11/28140219/2-vask.png', ''),
('7b37a58b6a6b466793e9781abe4cc350', 'Tønder - Centerbuen', 'Centerbuen 5, 6270 Tønder', 54.9515046, 8.8878000, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/tonder-centerbuen/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('7b444f6d0d99415485c3c99de28cc023', 'Roskilde - Byleddet', 'Byleddet 2, 4000 Roskilde', 55.6437095, 12.1091142, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.58, 1, '/roskilde-byleddet/', '/2021/11/28140217/2-scaled.jpg', ''),
('7b59e2e952da4c0fa440c0a49cba3ae9', 'Ebeltoft - Færgevejen', 'Færgevejen 3, 8400 Ebeltoft', 56.1908092, 10.6721231, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.58, 2, '/ebeltoft-faergevejen/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('7d0dc31c7b354c19a5bebeaff351426a', 'Aabenraa - Egevej', 'Egevej 4, 6200 Aabenraa', 55.0656429, 9.3644501, '7-22', 1, 1, 1, 0, 0, 0, 2.60, 2.55, 2, '/aabenraa-egevej/', '/2021/11/28140221/1-vaskehal.jpg.png', ''),
('7d19c8feb73949198555a75cb9f8ad4d', 'Taastrup - Roskildevej', 'Roskildevej 376, 2630 Taastrup', 55.6580371, 12.2947118, '7-22', 3, 3, 0, 0, 4, 0, 2.60, 2.55, 1, '/taastrup-roskildevej/', '/2021/11/28140216/5.png', ''),
('7df33fd319824ff89ac17f633520b5bf', 'Aabenraa - Egevej', 'Egevej 4, 6200 Aabenraa', 55.0656429, 9.3644501, '7-22', 1, 1, 1, 0, 0, 0, 2.60, 2.55, 2, '/aabenraa-egevej/', '/2021/11/28140221/1-vaskehal.jpg.png', ''),
('7ee7daf5f5da4b78af6da9708cc71bd0', 'Odense SØ - Ørbækvej', 'Ørbækvej 99, 5220 Odense SØ', 55.3798740, 10.4330660, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 3, '/odense-so-orbaekvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('7f238005f1e943568b7620de8264e7dd', 'Sorø - Apotekervej', 'Apotekervej 14, 4180 Sorø', 55.4451368, 11.5632552, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/soro-apotekervej/', '/2021/11/28140216/2_2.png', ''),
('7f4faa76b2184c5e99389ed1036f53d7', 'Ebeltoft - Færgevejen', 'Færgevejen 3, 8400 Ebeltoft', 56.1908092, 10.6721231, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.58, 2, '/ebeltoft-faergevejen/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('80d4a445d75c432bb5e2c5616ff710d3', 'Aabenraa - Egevej', 'Egevej 4, 6200 Aabenraa', 55.0656429, 9.3644501, '7-22', 1, 1, 1, 0, 0, 0, 2.60, 2.55, 2, '/aabenraa-egevej/', '/2021/11/28140221/1-vaskehal.jpg.png', ''),
('81e9d5dea60941d787889d15edb8710d', 'Slagelse - Idagårdsvej', 'Idagårdsvej 2, 4200 Slagelse', 55.3917353, 11.3530022, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/slagelse-idagardsvej/', '/2021/11/28140219/2-vask.png', ''),
('8222d5ac4fc544f0a1b859a79b9c6cb6', 'Odense SØ - Ørbækvej', 'Ørbækvej 99, 5220 Odense SØ', 55.3798740, 10.4330660, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 3, '/odense-so-orbaekvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('82fcb6e0bf024f2f969ee25de7b48479', 'Viby - Gunnar Clausens vej', 'Gunnar Clausens Vej 2A, 8260 Viby', 56.1113730, 10.1250330, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 2, '/viby-gunnar-clausens-vej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('839cb122edc74b2790780d54e1376b8a', 'Viborg - Falkevej', 'Falkevej 25, 8800 Viborg', 56.4441610, 9.3884560, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 2, '/viborg-falkevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('83e6385f361845d699a902c27e8e58b9', 'Hillerød - Industrivænget ', 'Industrivænget 3, 3400 Hillerød', 55.9314810, 12.2829960, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/hilleroed-industrivaenget/', '0', ''),
('8408287ce84240038d5209c831435c7c', 'Ishøj - Vejleåvej', 'Vejleåvej 19, 2635 Ishøj', 55.6233845, 12.3211668, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/ishoj-vejleavej/', '/2021/11/28140211/2-1.png', ''),
('8445ffcc322c40fab51bd523644a4046', 'Ringsted - Frejasvej', 'Frejasvej 43, 4100 Ringsted', 55.4306693, 11.8014193, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 1, '/ringsted-frejasvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('85e0fcdf37444031966a7f085b54c465', 'Kolding - Vejlevej 132', 'Vejlevej 132, 6000 Kolding', 55.5040386, 9.4582265, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/kolding-vejlevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('85f458e2bf0148ab94340613fa8a25c7', 'Grenå - Hesselvang', 'Hesselvang 1, 8500 Grenå', 56.3838951, 10.8644506, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/grena-hesselvang/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('86acada1310d42d6bed61ae435fd0bdb', 'Herlev - Nørrelundvej', 'Nørrelundvej 2, 2730 Herlev', 55.7253650, 12.4166970, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/herlev-norrelundvej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('876b61f6cb544cd28c1effb0f94420ac', 'Højbjerg - Bjødstrupvej', 'Bjødstrupvej 20E, 8270 Højbjerg', 56.1075250, 10.1669670, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/hojbjerg-bjodstrupvej/', '/2021/11/28140214/2.png', ''),
('87cb42a2586e4bd7bb6cbbfb4c6e513a', 'Thisted - Østerbakken', 'Østerbakken 111, 7700 Thisted', 56.9688520, 8.7351340, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/thisted-osterbakken/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('8879b4aff5594a1892c3d5a8c9da3775', 'Middelfart - Skovsvinget', 'Skovsvinget 27c, 5500 Middelfart', 55.5120128, 9.7661805, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/middelfart-skovsvinget/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('88a9afa1cdd44ac3b840d3d423a9fda1', 'Sønderborg - Centerpassagen', 'Centerpassagen 4, 6400 Sønderborg', 54.9194303, 9.8080340, '7-22', 3, 3, 0, 0, 0, 0, 2.60, 2.58, 2, '/sonderborg-centerpassagen/', '/2021/11/28140218/3.png', ''),
('88b2fb19d8b74d3c85bff93ce8ae6831', 'Odense V - Bystævnevej', 'Bystævnevej 5, 5200 Odense', 55.3950257, 10.3465247, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 3, '/odense-v-bystaevnevej/', '/2021/11/28140218/3.png', ''),
('89313b1731554655b9be94cc23290f8b', 'Skive - Øster Fælled vej', 'Øster Fælled vej 4, 7800 Skive', 56.5615666, 9.0395673, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/skive-oster-faelled-vej/', '/2021/11/28140216/2_2.png', ''),
('8a339ad974c14f31a09ac80483aed279', 'Randers - Messingvej', 'Messingvej 10, 8940 Randers', 56.4303617, 10.0538152, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/randers-messingvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('8a8a31a6cd554266ad695e2789baa774', 'Silkeborg - Nordre Ringvej', 'Nordre Ringvej 90, 8600 Silkeborg', 56.1814130, 9.5369542, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/silkeborg-nordre-ringvej/', '/2021/11/28140224/Ikke-navngivet-1.png', 'Hal 2 er ude af drift. Tekniker er tilkaldt.'),
('8ac1ab8415c5462fbadd9b64fdac581d', 'Skive - Øster Fælled vej', 'Øster Fælled vej 4, 7800 Skive', 56.5615666, 9.0395673, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/skive-oster-faelled-vej/', '/2021/11/28140216/2_2.png', ''),
('8b4bc126a9e54689991fe1c7a493fbfc', 'Køge - Københavnsvej', 'Københavnsvej 86, 4600 Køge', 55.4718050, 12.1819530, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 1, '/koge-kobenhavnsvej/', '/2021/11/28140217/2-scaled.jpg', 'Vi udfører service i hal 2, så du får en bedre vaskeoplevelse.'),
('8b5abced6f074f0191e59ff0a18e1b4a', 'Hjørring - Sprogøvej', 'Sprogøvej 2, 9800 Hjørring', 57.4555938, 10.0394654, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/hjorring-sprogovej/', '/2021/11/28140224/Ikke-navngivet-1.png', ''),
('8c63564bd2ec4fe5b05d755277a1ed57', 'Viborg - Vognmagervej', 'Vognmagervej 21E, 8800 Viborg', 56.4693658, 9.4094306, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/viborg-vognmagervej/', '/2021/11/28140216/2_2.png', ''),
('8d631ac0d1e44df1ae67918613f10b53', 'Søborg - Dynamovej', 'Dynamovej 4, 2860 Søborg', 55.7337313, 12.4599606, '7-22', 4, 4, 3, 0, 6, 0, 2.60, 2.55, 1, '/soborg-dynamovej/', '/2021/11/28140216/5.png', ''),
('8e2dd05a37d542f08d0ef69ff126b856', 'Slagelse - Smedegade', 'Smedegade 77, 4200 Slagelse', 55.4076851, 11.3678455, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/slagelse-smedegade/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('8e7a61764ea449e1af573fb6d2b48429', 'Haderslev - Sverigesvej', 'Sverigesvej 2M, 6100 Haderslev', 55.2592112, 9.4741292, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/haderslev-sverigesvej/', '/2021/11/28140212/2-vask-1.png', ''),
('8e7f717da41a486086bd354c80be4568', 'Esbjerg - Sædding Ringvej', 'Sædding Ringvej 6, 6710 Esbjerg', 55.5037278, 8.4074192, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/esbjerg-saedding-ringvej/', '/2021/11/28140223/Ikke-navngivet-1-1.png', ''),
('8ef298d79188410498806241dad84cb1', 'Brøndby Strand - Gl. Køge Landevej', 'Gammel Køge Landevej 690, 2660 Brøndby Strand', 55.6182310, 12.4239500, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 1, '/brondby-strand-gl-koge-landevej/', '/2021/11/28140219/2-vask.png', 'Vi udfører service i hal 1, så du får en bedre vaskeoplevelse.'),
('8f1c7ddf01c544a8a9ae078dacc0ff26', 'Fredericia - Vejlevej', 'Vejlevej 20, 7000 Fredericia', 55.5696911, 9.7276223, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/fredericia-vejlevej/', '0', ''),
('8f8617c069db4eff8b8d05b9e2771112', 'Herning - Dæmningen', 'Dæmningen 21, 7400 Herning', 56.1321410, 8.9593500, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/herning-daemningen/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('8fad5a19f86a484681ce19020f98945c', 'Holstebro - Nybo Bakke', 'Nybo Bakke 2, 7500 Holstebro', 56.3418890, 8.6353950, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/holstebro-nybovej/', '/2021/11/28140219/2-vask.png', ''),
('9077c1a3d5fe44e896fe1ddd151df804', 'Brande - Vestergårdsvej', 'Vestergårdsvej 3, 7330 Brande', 55.9606470, 9.1034260, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/brande-vestergardsvej/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('9101a2fd65d3449eaa58e12b663cf7d4', 'Risskov - Ravnsøvej', 'Ravnsøvej 48B, 8240 Risskov', 56.2020620, 10.2444900, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/risskov-ravnsovej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('91fb0be0e55b4fbeb49748c84003372d', 'Ikast - Europavej', 'Europavej 3, 7430 Ikast', 56.1236985, 9.1754224, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/ikast-europavej/', '/2021/11/28140221/1-vaskehal.jpg.png', ''),
('920454929914491989cb90a4fd809bad', 'Slagelse - Idagårdsvej', 'Idagårdsvej 2, 4200 Slagelse', 55.3917353, 11.3530022, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/slagelse-idagardsvej/', '/2021/11/28140219/2-vask.png', ''),
('92e2bedb9078469da7be0c5afc3f745c', 'Svendborg - Nyborgvej', 'Nyborgvej 4, 5700 Svendborg', 55.0628931, 10.6185919, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/svendborg-nyborgvej/', '/2021/11/28140216/2_2.png', ''),
('9317cc94ba4a41e785ea027820cc2530', 'Søborg - Dynamovej', 'Dynamovej 4, 2860 Søborg', 55.7337313, 12.4599606, '7-22', 4, 4, 3, 0, 6, 0, 2.60, 2.55, 1, '/soborg-dynamovej/', '/2021/11/28140216/5.png', ''),
('939c661d798f43d99761b2a6088c7415', 'Kalundborg - Holbækvej', 'Holbækvej 74, 4400 Kalundborg', 55.6787670, 11.1358300, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 1, '/kalundborg-holbaekvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('94099378f21443a8ac05aa843e03cd39', 'Middelfart - Skovsvinget', 'Skovsvinget 27c, 5500 Middelfart', 55.5120128, 9.7661805, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/middelfart-skovsvinget/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('95263cbfd8ee4d2bbbb7eaec1a7aae2d', 'Fredericia - Strevelinsvej', 'Strevelinsvej 5, 7000 Fredericia', 55.5355191, 9.7187001, '7-22', 3, 3, 0, 0, 2, 0, 2.60, 2.55, 2, '/fredericia-strevelinsvej/', '/2021/11/28140218/3.png', ''),
('956a727ad95f40668c8d72cd3f9f3b1d', 'Slagelse - Idagårdsvej', 'Idagårdsvej 2, 4200 Slagelse', 55.3917353, 11.3530022, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/slagelse-idagardsvej/', '/2021/11/28140219/2-vask.png', ''),
('958c368bf3784265b6740e0bc2f8b9bd', 'Ringsted - Frejasvej', 'Frejasvej 43, 4100 Ringsted', 55.4306693, 11.8014193, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 1, '/ringsted-frejasvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('95c5632069ae4ca78046b883ce037a95', 'Herlev - Nørrelundvej', 'Nørrelundvej 2, 2730 Herlev', 55.7253650, 12.4166970, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/herlev-norrelundvej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('95c6d70d2e914e10ab9dfa89b139c866', 'Svendborg - Odensevej', 'Odensevej 94, 5700 Svendborg', 55.0729498, 10.5823982, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/svendborg-odensevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('9663287d2d4a4559944b9a839037b969', 'Nørresundby - Loftbrovej', 'Loftbrovej 2, 9400 Nørresundby', 57.0891424, 9.9692410, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 2, '/norresundby-loftbrovej/', '/2021/11/28140213/2-vaskehaller.jpg-1.png', ''),
('96e8f13de3014b879075edfca710728f', 'Sønderborg - Centerpassagen', 'Centerpassagen 4, 6400 Sønderborg', 54.9194303, 9.8080340, '7-22', 3, 3, 0, 0, 0, 0, 2.60, 2.58, 2, '/sonderborg-centerpassagen/', '/2021/11/28140218/3.png', ''),
('96ebc05d197149b4b9acf50035759a60', 'Hillerød - Industrivænget ', 'Industrivænget 3, 3400 Hillerød', 55.9314810, 12.2829960, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/hilleroed-industrivaenget/', '0', ''),
('97a19bf57bdf4843927aedee7ad37863', 'Tilst - Blomstervej', 'Blomstervej 2T, 8381 Tilst', 56.1817870, 10.1250000, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/tilst-blomstervej/', '/2021/11/28140219/2-vask.png', ''),
('987e262fcdbd4aeab1ffaa5b93b76d64', 'Sønderborg - Centerpassagen', 'Centerpassagen 4, 6400 Sønderborg', 54.9194303, 9.8080340, '7-22', 3, 3, 0, 0, 0, 0, 2.60, 2.58, 2, '/sonderborg-centerpassagen/', '/2021/11/28140218/3.png', ''),
('98d246c64cde4f3982166f3d42029180', 'Ballerup - Industriparken', 'Industriparken 6, 2750 Ballerup', 55.7287140, 12.3732950, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 1, '/ballerup-industriparken/', '/2021/03/28140256/WashWorld_m_bil2.jpg', ''),
('9956d3be3a644c93b43fe65053586d91', 'Herning - Guldborgvej', 'Guldborgvej 2-4, 7400 Herning', 56.1535542, 8.9847445, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 2, '/herning-guldborgvej/', '/2021/11/28140215/2_2-1.png', ''),
('9a0e2bf535d246d0b72c942c515a9dcf', 'Horsens - Vejlevej', 'Vejlevej 102, 8700 Horsens', 55.8330850, 9.8047440, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/horsens-vejlevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('9aec1c190406450db43796187aab28cc', 'Ikast - Europavej', 'Europavej 3, 7430 Ikast', 56.1236985, 9.1754224, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/ikast-europavej/', '/2021/11/28140221/1-vaskehal.jpg.png', ''),
('9b8707ae3bb0486ebfa1cca1781e31af', 'Sønderborg - Centerpassagen', 'Centerpassagen 4, 6400 Sønderborg', 54.9194303, 9.8080340, '7-22', 3, 3, 0, 0, 0, 0, 2.60, 2.58, 2, '/sonderborg-centerpassagen/', '/2021/11/28140218/3.png', ''),
('9b874d000e834259872de4653acb6f31', 'Vejle - Soldalen', 'Soldalen 4, 7100 Vejle', 55.6812381, 9.5674556, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/vejle-soldalen/', '/2021/11/28140217/2-scaled.jpg', ''),
('9b9f33b4364c4331b24f2aed815b82d6', 'Odense - Nyborgvej', 'Nyborgvej 343, 5220 Odense', 55.3915296, 10.4358192, '7-22', 3, 3, 0, 0, 0, 0, 2.60, 2.55, 3, '/odense-nyborgvej/', '/2021/11/28140218/3.png', ''),
('9ba678a9ebef4768959d0466eb334d05', 'Frederikssund - Askelundsvej', 'Askelundsvej 8, 3600 Frederikssund', 55.8451508, 12.0742911, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 1, '/frederikssund-askelundsvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('9bdc965b310e495aaea2fd1e596d1ae9', 'Silkeborg - Nordre Ringvej', 'Nordre Ringvej 90, 8600 Silkeborg', 56.1814130, 9.5369542, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/silkeborg-nordre-ringvej/', '/2021/11/28140224/Ikke-navngivet-1.png', ''),
('9c33e5e7492048a098a19c3eff4e008b', 'Aabenraa - Egevej', 'Egevej 4, 6200 Aabenraa', 55.0656429, 9.3644501, '7-22', 1, 1, 1, 0, 0, 0, 2.60, 2.55, 2, '/aabenraa-egevej/', '/2021/11/28140221/1-vaskehal.jpg.png', ''),
('9d5d77ae51ec4cf89be837f4a22e637d', 'Hjørring - Sprogøvej', 'Sprogøvej 2, 9800 Hjørring', 57.4555938, 10.0394654, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/hjorring-sprogovej/', '/2021/11/28140224/Ikke-navngivet-1.png', ''),
('9da8d20f7848491f8b6f19d0190d16e9', 'Nakskov - Løjtoftevej', 'Løjtoftevej 6, 4900 Nakskov ', 54.8324750, 11.1496620, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 1, '/nakskov-lojtoftevej/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('9dfcd5013e2f4615aa7d71900841852a', 'Frederikshavn - Apholmenvej', 'Apholmenvej 9, 9900 Frederikshavn', 57.4621933, 10.5194482, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/frederikshavn-apholmenvej/', '/2021/11/28140214/Ikke-navngivet-1-5.png', ''),
('9e27e33e3783423d861c122b157f311e', 'Farum - Gammelgårdsvej', 'Gammelgårdsvej 84, 3520 Farum', 55.8169430, 12.3703500, '7-22', 3, 3, 3, 0, 2, 0, 2.60, 2.55, 1, '/farum-gammelgardsvej/', '/2021/11/28140218/3.png', ''),
('9e5b71e9b2574d03857931d54c9b6a0d', 'Vordingborg - Valdemarsgade', 'Valdemarsgade 57, 4760 Vordingborg', 55.0108552, 11.9104886, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/vordingborg-valdemarsgade/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('9f0621c0a7ee41f48dd70ba46fe9c4a6', 'Brande - Vestergårdsvej', 'Vestergårdsvej 3, 7330 Brande', 55.9606470, 9.1034260, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/brande-vestergardsvej/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('9f140043636d4794b7fc541adb34a5bf', 'Slagelse - Smedegade', 'Smedegade 77, 4200 Slagelse', 55.4076851, 11.3678455, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/slagelse-smedegade/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('9fc6afcb39af413cbb22916786dbd1bb', 'Viborg - Falkevej', 'Falkevej 25, 8800 Viborg', 56.4441610, 9.3884560, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 2, '/viborg-falkevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('a067b819dbb5466ebc2e4644831316ce', 'Slagelse - Idagårdsvej', 'Idagårdsvej 2, 4200 Slagelse', 55.3917353, 11.3530022, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/slagelse-idagardsvej/', '/2021/11/28140219/2-vask.png', ''),
('a0b189789baa47a09c0d407824b2f5e6', 'Højbjerg - Bjødstrupvej', 'Bjødstrupvej 20E, 8270 Højbjerg', 56.1075250, 10.1669670, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/hojbjerg-bjodstrupvej/', '/2021/11/28140214/2.png', ''),
('a1b8440707ce4d1baf9cc8f833f603b8', 'Vejle - Solkilde Allé', 'Solkilde Alle 11, 7100 Vejle', 55.7234586, 9.5847778, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/vejle-solkilde-alle/', '/2021/11/28140219/2-vask.png', ''),
('a1dcf9d7cb1a42d6b194fe1f9cb984f6', 'Thisted - Østerbakken', 'Østerbakken 111, 7700 Thisted', 56.9688520, 8.7351340, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/thisted-osterbakken/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('a374bec4eb574a58b54dcd43e2877e4b', 'Sønderborg - Centerpassagen', 'Centerpassagen 4, 6400 Sønderborg', 54.9194303, 9.8080340, '7-22', 3, 3, 0, 0, 0, 0, 2.60, 2.58, 2, '/sonderborg-centerpassagen/', '/2021/11/28140218/3.png', ''),
('a39414d9d0e840e6b3001c61b036c7ed', 'Odense - Nyborgvej', 'Nyborgvej 343, 5220 Odense', 55.3915296, 10.4358192, '7-22', 3, 3, 0, 0, 0, 0, 2.60, 2.55, 3, '/odense-nyborgvej/', '/2021/11/28140218/3.png', ''),
('a4165d04ed6842d487e6ff0ff1056f23', 'Haderslev - Sverigesvej', 'Sverigesvej 2M, 6100 Haderslev', 55.2592112, 9.4741292, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/haderslev-sverigesvej/', '/2021/11/28140212/2-vask-1.png', ''),
('a4b6d8a907d94d80946b92515e918209', 'Risskov - Ravnsøvej', 'Ravnsøvej 48B, 8240 Risskov', 56.2020620, 10.2444900, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/risskov-ravnsovej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('a4c3ac9052f64265abfe4af1b8a31389', 'Højbjerg - Bjødstrupvej', 'Bjødstrupvej 20E, 8270 Højbjerg', 56.1075250, 10.1669670, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/hojbjerg-bjodstrupvej/', '/2021/11/28140214/2.png', ''),
('a4ca42aec53f400ab00eac58173d1469', 'Sønderborg - Centerpassagen', 'Centerpassagen 4, 6400 Sønderborg', 54.9194303, 9.8080340, '7-22', 3, 3, 0, 0, 0, 0, 2.60, 2.58, 2, '/sonderborg-centerpassagen/', '/2021/11/28140218/3.png', ''),
('a5cdc19b04c3477897dbf25dc11234a5', 'Slagelse - Smedegade', 'Smedegade 77, 4200 Slagelse', 55.4076851, 11.3678455, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/slagelse-smedegade/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('a75b4aa5fa484048ab139d94b69d507b', 'Ikast - Europavej', 'Europavej 3, 7430 Ikast', 56.1236985, 9.1754224, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/ikast-europavej/', '/2021/11/28140221/1-vaskehal.jpg.png', ''),
('a7833e6289d649b6ba76104dae8bbafc', 'Nørresundby - Loftbrovej', 'Loftbrovej 2, 9400 Nørresundby', 57.0891424, 9.9692410, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 2, '/norresundby-loftbrovej/', '/2021/11/28140213/2-vaskehaller.jpg-1.png', ''),
('a787a514eb534e2fa44518fe06c3ec49', 'Roskilde - Ringstedvej', 'Ringstedvej 73, 4000 Roskilde', 55.6284269, 12.0665595, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/roskilde-ringstedvej/', '/2021/11/28140216/2_2.png', ''),
('a83748d36de4480fa9600c014538b1e5', 'Herning - Dæmningen', 'Dæmningen 21, 7400 Herning', 56.1321410, 8.9593500, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/herning-daemningen/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('a8d3bca698764d66b6f71c05495809a1', 'Horsens - Vejlevej', 'Vejlevej 102, 8700 Horsens', 55.8330850, 9.8047440, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/horsens-vejlevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('a903b545a4114de196b2e54db107fefb', 'Roskilde - Ringstedvej', 'Ringstedvej 73, 4000 Roskilde', 55.6284269, 12.0665595, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/roskilde-ringstedvej/', '/2021/11/28140216/2_2.png', ''),
('a91d64bad2f34888958348efa6ffe9e0', 'Højbjerg - Bjødstrupvej', 'Bjødstrupvej 20E, 8270 Højbjerg', 56.1075250, 10.1669670, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/hojbjerg-bjodstrupvej/', '/2021/11/28140214/2.png', ''),
('aa9591e3e996406faaa9523747c000f1', 'Hjørring - Sprogøvej', 'Sprogøvej 2, 9800 Hjørring', 57.4555938, 10.0394654, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/hjorring-sprogovej/', '/2021/11/28140224/Ikke-navngivet-1.png', ''),
('aa97e0cdd1954fa09fd359362ccc8df3', 'Slagelse - Smedegade', 'Smedegade 77, 4200 Slagelse', 55.4076851, 11.3678455, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/slagelse-smedegade/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('ab40c4f02463498f885f6338df553474', 'Herning - Dæmningen', 'Dæmningen 21, 7400 Herning', 56.1321410, 8.9593500, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/herning-daemningen/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('ab9c4a648cba4943ba3a38bc15508408', 'Vordingborg - Valdemarsgade', 'Valdemarsgade 57, 4760 Vordingborg', 55.0108552, 11.9104886, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/vordingborg-valdemarsgade/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('abf15b4ea97d447c9dde2ded16680df4', 'Randers - Udbyhøjvej', 'Udbyhøjvej 7, 8930 Randers', 56.4660468, 10.0542498, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/randers-udbyhojvej/', '/2021/11/28140219/2-vask.png', ''),
('ac08f22db0da4664813b4af8c96404e5', 'Aalborg, Gug - Gammel Vissevej', 'Gammel Vissevej 1C, 9210 Aalborg - Gug', 57.0063139, 9.9259463, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/aalborg-gug-gammel-vissevej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('ac3bbc7eb842465b8529e6e742f526dc', 'Frederiksværk - Hanehovedvej', 'Hanehovedvej 49, 3300 Frederiksværk', 55.9775589, 12.0074471, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/frederiksvaerk-hanehovedvej/', '0', ''),
('ac4edecca54c4929a2331498512e0f31', 'Thisted - Østerbakken', 'Østerbakken 111, 7700 Thisted', 56.9688520, 8.7351340, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/thisted-osterbakken/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('ac918e0f3c1d4e95986c6f1ccdd3f694', 'Viborg - Vognmagervej', 'Vognmagervej 21E, 8800 Viborg', 56.4693658, 9.4094306, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/viborg-vognmagervej/', '/2021/11/28140216/2_2.png', ''),
('ad49b08efa1845b38ace0c55ef305cca', 'Fredericia - Vejlevej', 'Vejlevej 20, 7000 Fredericia', 55.5696911, 9.7276223, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/fredericia-vejlevej/', '0', ''),
('ade3fb3439414ed296e4f7ae91daeb59', 'Hjørring - Sprogøvej', 'Sprogøvej 2, 9800 Hjørring', 57.4555938, 10.0394654, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/hjorring-sprogovej/', '/2021/11/28140224/Ikke-navngivet-1.png', ''),
('ae3e0c24cb514525b7e34359c988f50f', 'Kalundborg - Holbækvej', 'Holbækvej 74, 4400 Kalundborg', 55.6787670, 11.1358300, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 1, '/kalundborg-holbaekvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('ae3f57d832814e3593038c85d25dc78e', 'Nakskov - Løjtoftevej', 'Løjtoftevej 6, 4900 Nakskov ', 54.8324750, 11.1496620, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 1, '/nakskov-lojtoftevej/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('ae81f46435084c0fb1fe721a2c725743', 'Odense SØ - Ørbækvej', 'Ørbækvej 99, 5220 Odense SØ', 55.3798740, 10.4330660, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 3, '/odense-so-orbaekvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('aed4916a92f549698bd7de4b8040627b', 'Randers - Udbyhøjvej', 'Udbyhøjvej 7, 8930 Randers', 56.4660468, 10.0542498, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/randers-udbyhojvej/', '/2021/11/28140219/2-vask.png', ''),
('af6074f884834116bdf173a34541a158', 'Horsens - Vejlevej', 'Vejlevej 102, 8700 Horsens', 55.8330850, 9.8047440, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/horsens-vejlevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('b011914a04f9472fa8e76bdc0ca51dd0', 'Ringsted - Nørregade', 'Nørregade 70, 4100 Ringsted', 55.4513921, 11.7900816, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/ringsted-norregade/', '/2021/11/28140216/2_2.png', ''),
('b0b26512e597488b9cd194c58c074568', 'Thisted - Østerbakken', 'Østerbakken 111, 7700 Thisted', 56.9688520, 8.7351340, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/thisted-osterbakken/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('b0fdfda581594a72bd347a8add355c46', 'Ringsted - Nørregade', 'Nørregade 70, 4100 Ringsted', 55.4513921, 11.7900816, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/ringsted-norregade/', '/2021/11/28140216/2_2.png', ''),
('b136b4e40ae1426898abdb6848502fa8', 'Aalborg - Otto Mønstedsvej', 'Otto Mønsteds Vej 5, 9200 Aalborg', 57.0152480, 9.8962560, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/aalborg-otto-monstedsvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('b1b922b8a550460c81d299aa910c5d7a', 'Lystrup - Lægårdsvej', 'Lægårdsvej 4, 8520 Lystrup', 56.2256690, 10.2385250, '7-22', 2, 2, 0, 0, 0, 2, 2.60, 2.55, 2, '/lystrup-laegardsvej/', '/2021/11/28140219/2-vask.png', ''),
('b2156edc4f7946718aae9febc62c37cc', 'Vejle - Solkilde Allé', 'Solkilde Alle 11, 7100 Vejle', 55.7234586, 9.5847778, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/vejle-solkilde-alle/', '/2021/11/28140219/2-vask.png', ''),
('b23785e548454f9397782ca08875a845', 'Viby - Gunnar Clausens vej', 'Gunnar Clausens Vej 2A, 8260 Viby', 56.1113730, 10.1250330, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 2, '/viby-gunnar-clausens-vej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('b32c5e130e6f4520a2223f27110813b0', 'Taastrup - Roskildevej', 'Roskildevej 376, 2630 Taastrup', 55.6580371, 12.2947118, '7-22', 3, 3, 0, 0, 4, 0, 2.60, 2.55, 1, '/taastrup-roskildevej/', '/2021/11/28140216/5.png', ''),
('b33fe9078cdf4fbd85b93e088272b3ed', 'Odense SØ - Ørbækvej', 'Ørbækvej 99, 5220 Odense SØ', 55.3798740, 10.4330660, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 3, '/odense-so-orbaekvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('b376644544474e559e9280d051324af5', 'Grenå - Hesselvang', 'Hesselvang 1, 8500 Grenå', 56.3838951, 10.8644506, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/grena-hesselvang/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('b3ce467ac59743c3bff67716c52a5e1c', 'Kolding - Vejlevej 251', 'Vejlevej 251, 6000 Kolding', 55.5136635, 9.4546968, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 2, '/kolding-vejlevej-251/', '/2021/11/28140218/3.png', ''),
('b3feffe3ba9c4b019122288de17a011a', 'Odense - Nyborgvej', 'Nyborgvej 343, 5220 Odense', 55.3915296, 10.4358192, '7-22', 3, 3, 0, 0, 0, 0, 2.60, 2.55, 3, '/odense-nyborgvej/', '/2021/11/28140218/3.png', ''),
('b40199972edf440da1d5a741a415318d', 'Nakskov - Løjtoftevej', 'Løjtoftevej 6, 4900 Nakskov ', 54.8324750, 11.1496620, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 1, '/nakskov-lojtoftevej/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('b453144f8316483095694ebc85150e5e', 'Nyborg - Storebæltsvej', 'Storebæltsvej 7F, 5800 Nyborg', 55.3084979, 10.8096242, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 3, '/nyborg-storebaeltsvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('b483bf904e9447129a1c6fdac4cb9dd3', 'Frederikshavn - Apholmenvej', 'Apholmenvej 9, 9900 Frederikshavn', 57.4621933, 10.5194482, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/frederikshavn-apholmenvej/', '/2021/11/28140214/Ikke-navngivet-1-5.png', ''),
('b4c9a85f890c4571a30bfc9ddbdc9675', 'Thisted - Østerbakken', 'Østerbakken 111, 7700 Thisted', 56.9688520, 8.7351340, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/thisted-osterbakken/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('b4de45c0f7eb42388ee17af60f73e1c0', 'Aalborg - Otto Mønstedsvej', 'Otto Mønsteds Vej 5, 9200 Aalborg', 57.0152480, 9.8962560, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/aalborg-otto-monstedsvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('b4f4a5330af44631bdbb8c5be719b6be', 'Grenå - Hesselvang', 'Hesselvang 1, 8500 Grenå', 56.3838951, 10.8644506, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/grena-hesselvang/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('b5a0125b8f344c3798768b910428cae6', 'Hillerød - Industrivænget ', 'Industrivænget 3, 3400 Hillerød', 55.9314810, 12.2829960, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/hilleroed-industrivaenget/', '0', ''),
('b5a14bcc5cea47dab9914e746051a0e1', 'Vordingborg - Valdemarsgade', 'Valdemarsgade 57, 4760 Vordingborg', 55.0108552, 11.9104886, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/vordingborg-valdemarsgade/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('b629c41f1bb741b3a83a048c7796e99d', 'Fredericia - Vejlevej', 'Vejlevej 20, 7000 Fredericia', 55.5696911, 9.7276223, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/fredericia-vejlevej/', '0', ''),
('b66ff7ac8844464d90a6353b3631d139', 'Randers - Messingvej', 'Messingvej 10, 8940 Randers', 56.4303617, 10.0538152, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/randers-messingvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('b6a62647c5574d94a36799753d1229c8', 'Frederiksværk - Hanehovedvej', 'Hanehovedvej 49, 3300 Frederiksværk', 55.9775589, 12.0074471, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/frederiksvaerk-hanehovedvej/', '0', ''),
('b6bc38f331e047e797f1353f31c96b88', 'Kolding - Vejlevej 251', 'Vejlevej 251, 6000 Kolding', 55.5136635, 9.4546968, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 2, '/kolding-vejlevej-251/', '/2021/11/28140218/3.png', ''),
('b6f3c89e4b594218b7001f511072ff05', 'Tønder - Centerbuen', 'Centerbuen 5, 6270 Tønder', 54.9515046, 8.8878000, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/tonder-centerbuen/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('b7214ffc3c8d4320bd00477ced6135be', 'Middelfart - Skovsvinget', 'Skovsvinget 27c, 5500 Middelfart', 55.5120128, 9.7661805, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/middelfart-skovsvinget/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('b782d8f634ca46efa4d06324c09e4366', 'Tønder - Centerbuen', 'Centerbuen 5, 6270 Tønder', 54.9515046, 8.8878000, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/tonder-centerbuen/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('b7d9afd3c25842eca836c4015a9f337c', 'Struer - Bredgade', 'Bredgade 58, 7600 Struer ', 56.4804349, 8.5855352, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/struer-bredgade/', '/2022/02/02084352/DSC7628.jpg', ''),
('b8a8d7cb52764b56a9e690527f2557de', 'Køge - Københavnsvej', 'Københavnsvej 86, 4600 Køge', 55.4718050, 12.1819530, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 1, '/koge-kobenhavnsvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('b8bc9fdf58ca4752a47f39b2af5aa4d5', 'Grenå - Hesselvang', 'Hesselvang 1, 8500 Grenå', 56.3838951, 10.8644506, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/grena-hesselvang/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('b8bfb40284c244e5803ebde71fbcde31', 'Fredericia - Vejlevej', 'Vejlevej 20, 7000 Fredericia', 55.5696911, 9.7276223, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/fredericia-vejlevej/', '0', ''),
('b8edf445043643b6b7917fb6e1253f97', 'Næstved - Gl. Holstedvej', 'Gammel Holstedvej 1, 4700 Næstved', 55.2496811, 11.7820310, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/naestved-gl-holstedvej/', '/2021/11/28140219/2-vask.png', ''),
('ba0784abbd6a40a7a42914691646137f', 'Ballerup - Industriparken', 'Industriparken 6, 2750 Ballerup', 55.7287140, 12.3732950, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 1, '/ballerup-industriparken/', '/2021/03/28140256/WashWorld_m_bil2.jpg', ''),
('ba27d8acfdb2406abbae625287a3b266', 'Thisted - Østerbakken', 'Østerbakken 111, 7700 Thisted', 56.9688520, 8.7351340, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/thisted-osterbakken/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('ba58c165a442462da9467a3e7905046c', 'Helsingør - Klostermosevej', 'Klostermosevej 103, 3000 Helsingør', 56.0240180, 12.5718630, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/helsingor-klostermosevej/', '/2021/11/28140219/2-vask.png', ''),
('ba9a681cce4345e981f78296487c379c', 'Svendborg - Nyborgvej', 'Nyborgvej 4, 5700 Svendborg', 55.0628931, 10.6185919, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/svendborg-nyborgvej/', '/2021/11/28140216/2_2.png', ''),
('baaf9e7da44f4f3cb875035779f7342c', 'Sorø - Apotekervej', 'Apotekervej 14, 4180 Sorø', 55.4451368, 11.5632552, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/soro-apotekervej/', '/2021/11/28140216/2_2.png', 'Nødstop aktiveret i hal 2. Ring til 81886100 for hjælp.; Hal 1 er ude af drift. Tekniker er tilkaldt.'),
('baf1cbbdede24c2c8670879b42cc54b9', 'Holbæk - Springstrup', 'Springstrup 5, 4300 Holbæk', 55.7030262, 11.6660911, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 1, '/holbaek-springstrup/', '/2021/11/28140218/3.png', ''),
('bb368865127b4011b66eb8a97bb9de72', 'Frederiksværk - Hanehovedvej', 'Hanehovedvej 49, 3300 Frederiksværk', 55.9775589, 12.0074471, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/frederiksvaerk-hanehovedvej/', '0', ''),
('bc5122daee084fa994f65059ab230a05', 'Brøndby Strand - Gl. Køge Landevej', 'Gammel Køge Landevej 690, 2660 Brøndby Strand', 55.6182310, 12.4239500, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 1, '/brondby-strand-gl-koge-landevej/', '/2021/11/28140219/2-vask.png', '');
INSERT INTO `locations` (`location_pk`, `location_name`, `location_address`, `location_lat`, `location_lon`, `location_open_hours`, `location_wash_halls`, `location_empty_wash_halls`, `location_self_wash`, `location_mat_cleaner`, `location_vacuum`, `location_pre_wash`, `location_max_meters`, `location_max_mirrors_width_meters`, `region_fk`, `location_end_url`, `location_image_end_url`, `location_status_message`) VALUES
('bcbe30657fb740059378667153aad3a9', 'Vejle - Soldalen', 'Soldalen 4, 7100 Vejle', 55.6812381, 9.5674556, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/vejle-soldalen/', '/2021/11/28140217/2-scaled.jpg', ''),
('bd35993b9b1845829444787aa9be8b65', 'Randers - Udbyhøjvej', 'Udbyhøjvej 7, 8930 Randers', 56.4660468, 10.0542498, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/randers-udbyhojvej/', '/2021/11/28140219/2-vask.png', ''),
('bd3b74943c2b438686f2c93ebb8ca232', 'Helsingør - Klostermosevej', 'Klostermosevej 103, 3000 Helsingør', 56.0240180, 12.5718630, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/helsingor-klostermosevej/', '/2021/11/28140219/2-vask.png', ''),
('bd57710ab1e74cf7924d994f15a429ce', 'Herlev - Nørrelundvej', 'Nørrelundvej 2, 2730 Herlev', 55.7253650, 12.4166970, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/herlev-norrelundvej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('bdedde2fec18490791fb19209b84d4ec', 'Roskilde - Ringstedvej', 'Ringstedvej 73, 4000 Roskilde', 55.6284269, 12.0665595, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/roskilde-ringstedvej/', '/2021/11/28140216/2_2.png', ''),
('be3febc8021c4d159294408dae924db8', 'Lystrup - Lægårdsvej', 'Lægårdsvej 4, 8520 Lystrup', 56.2256690, 10.2385250, '7-22', 2, 2, 0, 0, 0, 2, 2.60, 2.55, 2, '/lystrup-laegardsvej/', '/2021/11/28140219/2-vask.png', ''),
('beccddb3852b43bd97518e3155b1f9e5', 'Aalborg - Otto Mønstedsvej', 'Otto Mønsteds Vej 5, 9200 Aalborg', 57.0152480, 9.8962560, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/aalborg-otto-monstedsvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('bf284303565b43799d76fb3ee7c71957', 'Kolding - Vejlevej 132', 'Vejlevej 132, 6000 Kolding', 55.5040386, 9.4582265, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/kolding-vejlevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('bf5f4e31627241079de8194931e1aa3e', 'Kolding - Vejlevej 251', 'Vejlevej 251, 6000 Kolding', 55.5136635, 9.4546968, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 2, '/kolding-vejlevej-251/', '/2021/11/28140218/3.png', ''),
('bfb54332f7e84171b5cb8e6ff50ad152', 'Silkeborg - Nordre Ringvej', 'Nordre Ringvej 90, 8600 Silkeborg', 56.1814130, 9.5369542, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/silkeborg-nordre-ringvej/', '/2021/11/28140224/Ikke-navngivet-1.png', ''),
('bfefed643c714d3f8b35e4aa32cb381b', 'Odense V - Bystævnevej', 'Bystævnevej 5, 5200 Odense', 55.3950257, 10.3465247, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 3, '/odense-v-bystaevnevej/', '/2021/11/28140218/3.png', ''),
('c17aec921c464607a08ec28ac1c18891', 'Tønder - Centerbuen', 'Centerbuen 5, 6270 Tønder', 54.9515046, 8.8878000, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/tonder-centerbuen/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('c2e81a0c273a46acb092dc3ab6bf9b13', 'Ringsted - Nørregade', 'Nørregade 70, 4100 Ringsted', 55.4513921, 11.7900816, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/ringsted-norregade/', '/2021/11/28140216/2_2.png', ''),
('c40b860ef79f4c9088ff92d67eb032c9', 'Haderslev - Sverigesvej', 'Sverigesvej 2M, 6100 Haderslev', 55.2592112, 9.4741292, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/haderslev-sverigesvej/', '/2021/11/28140212/2-vask-1.png', ''),
('c45c863f7432446c847dbb81c3a31cb0', 'Viborg - Falkevej', 'Falkevej 25, 8800 Viborg', 56.4441610, 9.3884560, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 2, '/viborg-falkevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('c481d70221624deab94d7c2daac863ba', 'Nykøbing Falster - Guldborgsundcentret', 'Guldborgsundcentret 32, 4800 Nykøbing Falster', 54.7588014, 11.8514371, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.38, 1, '/nykobing-falster-guldborgsundcentret/', '/2021/11/28140217/2-scaled.jpg', ''),
('c51d41482ddb4b1a8eb1d141f451bad7', 'Grenå - Hesselvang', 'Hesselvang 1, 8500 Grenå', 56.3838951, 10.8644506, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/grena-hesselvang/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('c586179807eb45cba40b34772a77c512', 'Nørresundby - Loftbrovej', 'Loftbrovej 2, 9400 Nørresundby', 57.0891424, 9.9692410, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 2, '/norresundby-loftbrovej/', '/2021/11/28140213/2-vaskehaller.jpg-1.png', ''),
('c6995e259f564350a58e3776f8156c11', 'Brande - Vestergårdsvej', 'Vestergårdsvej 3, 7330 Brande', 55.9606470, 9.1034260, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/brande-vestergardsvej/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('c77953bc67bd42089e6f37b53db93744', 'Herning - Dæmningen', 'Dæmningen 21, 7400 Herning', 56.1321410, 8.9593500, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/herning-daemningen/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('c86c3d1a98244d4bb302101b63262cc4', 'Skive - Øster Fælled vej', 'Øster Fælled vej 4, 7800 Skive', 56.5615666, 9.0395673, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/skive-oster-faelled-vej/', '/2021/11/28140216/2_2.png', ''),
('c88d61c432f544298aaebff5cd59b314', 'Frederikssund - Askelundsvej', 'Askelundsvej 8, 3600 Frederikssund', 55.8451508, 12.0742911, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 1, '/frederikssund-askelundsvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('c8bd8d85fbfd4edeb4d53c4796d2fdca', 'Skive - Øster Fælled vej', 'Øster Fælled vej 4, 7800 Skive', 56.5615666, 9.0395673, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/skive-oster-faelled-vej/', '/2021/11/28140216/2_2.png', ''),
('ca3d0248b79640daa72233b0100c1588', 'Næstved - Gl. Holstedvej', 'Gammel Holstedvej 1, 4700 Næstved', 55.2496811, 11.7820310, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/naestved-gl-holstedvej/', '/2021/11/28140219/2-vask.png', ''),
('caae40de57f94b73bf9f6f403c935456', 'Grenå - Hesselvang', 'Hesselvang 1, 8500 Grenå', 56.3838951, 10.8644506, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/grena-hesselvang/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('caeecc75e12444ea94ffc3b6d1f8403f', 'Ringsted - Frejasvej', 'Frejasvej 43, 4100 Ringsted', 55.4306693, 11.8014193, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 1, '/ringsted-frejasvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('cb1ec7a219a740e88130aece52e92f05', 'Holstebro - Nybo Bakke', 'Nybo Bakke 2, 7500 Holstebro', 56.3418890, 8.6353950, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/holstebro-nybovej/', '/2021/11/28140219/2-vask.png', ''),
('cc32fefbcba94e90a0e15baeeef7d48c', 'Sønderborg - Centerpassagen', 'Centerpassagen 4, 6400 Sønderborg', 54.9194303, 9.8080340, '7-22', 3, 3, 0, 0, 0, 0, 2.60, 2.58, 2, '/sonderborg-centerpassagen/', '/2021/11/28140218/3.png', ''),
('cc35ea7f5e404376987f8761ac5903af', 'Odense SØ - Ørbækvej', 'Ørbækvej 99, 5220 Odense SØ', 55.3798740, 10.4330660, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 3, '/odense-so-orbaekvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('cda66472fb9b47ed9381e586c9b82bb9', 'Næstved - Gl. Holstedvej', 'Gammel Holstedvej 1, 4700 Næstved', 55.2496811, 11.7820310, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/naestved-gl-holstedvej/', '/2021/11/28140219/2-vask.png', ''),
('ce1f185978b9451f9603c7fa2327ef9b', 'Vejle - Soldalen', 'Soldalen 4, 7100 Vejle', 55.6812381, 9.5674556, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/vejle-soldalen/', '/2021/11/28140217/2-scaled.jpg', ''),
('ce55f9ede6d443ee91adcbf08033377b', 'Esbjerg - Sædding Ringvej', 'Sædding Ringvej 6, 6710 Esbjerg', 55.5037278, 8.4074192, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/esbjerg-saedding-ringvej/', '/2021/11/28140223/Ikke-navngivet-1-1.png', ''),
('cf4e2ba0c26345f7874b6352cdb93279', 'Tilst - Blomstervej', 'Blomstervej 2T, 8381 Tilst', 56.1817870, 10.1250000, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/tilst-blomstervej/', '/2021/11/28140219/2-vask.png', ''),
('cf8b6a539c8a4338ba3fe9bb79da8291', 'Ikast - Europavej', 'Europavej 3, 7430 Ikast', 56.1236985, 9.1754224, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/ikast-europavej/', '/2021/11/28140221/1-vaskehal.jpg.png', ''),
('cfbf0c7bfa674ac0b22e49207b34c33f', 'Herning - Guldborgvej', 'Guldborgvej 2-4, 7400 Herning', 56.1535542, 8.9847445, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 2, '/herning-guldborgvej/', '/2021/11/28140215/2_2-1.png', ''),
('d0584c6334f040708b77b3bd936fd905', 'Middelfart - Skovsvinget', 'Skovsvinget 27c, 5500 Middelfart', 55.5120128, 9.7661805, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/middelfart-skovsvinget/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('d1606f31bc77412bb60d4569fb50ee77', 'Ribe - Trojels Knæ', 'Trojels Knæ 6, 6760 Ribe', 55.3514850, 8.7803110, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/ribe-trojels-knae/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('d1aebaa4846344a9b47ee5a0685b8b71', 'Svendborg - Odensevej', 'Odensevej 94, 5700 Svendborg', 55.0729498, 10.5823982, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/svendborg-odensevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('d27c5829c5594fa3a42ccbba873ef2b5', 'Sorø - Apotekervej', 'Apotekervej 14, 4180 Sorø', 55.4451368, 11.5632552, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/soro-apotekervej/', '/2021/11/28140216/2_2.png', ''),
('d288b0537e974553b741a2f189574224', 'Søborg - Dynamovej', 'Dynamovej 4, 2860 Søborg', 55.7337313, 12.4599606, '7-22', 4, 4, 3, 0, 6, 0, 2.60, 2.55, 1, '/soborg-dynamovej/', '/2021/11/28140216/5.png', ''),
('d28aae4b59024515a24e1dce514f5e59', 'Hillerød - Industrivænget ', 'Industrivænget 3, 3400 Hillerød', 55.9314810, 12.2829960, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/hilleroed-industrivaenget/', '0', ''),
('d2fe056ff02b4ab7add60f4d431b4927', 'Ballerup - Industriparken', 'Industriparken 6, 2750 Ballerup', 55.7287140, 12.3732950, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 1, '/ballerup-industriparken/', '/2021/03/28140256/WashWorld_m_bil2.jpg', ''),
('d39d3d2f639f4a2d97b7cd4d083d4632', 'Randers - Udbyhøjvej', 'Udbyhøjvej 7, 8930 Randers', 56.4660468, 10.0542498, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/randers-udbyhojvej/', '/2021/11/28140219/2-vask.png', ''),
('d3ec9f9c8d684585b57506b34a2d3640', 'Nykøbing Falster - Guldborgsundcentret', 'Guldborgsundcentret 32, 4800 Nykøbing Falster', 54.7588014, 11.8514371, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.38, 1, '/nykobing-falster-guldborgsundcentret/', '/2021/11/28140217/2-scaled.jpg', ''),
('d42c075fc17c428abe712ab4bd48c380', 'Vejle - Solkilde Allé', 'Solkilde Alle 11, 7100 Vejle', 55.7234586, 9.5847778, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/vejle-solkilde-alle/', '/2021/11/28140219/2-vask.png', ''),
('d52e187c115f4adcbcd8d70950291520', 'Næstved - Erantisvej', 'Erantisvej 52, 4700 Næstved', 55.2391726, 11.7779768, '7-22', 3, 3, 1, 0, 0, 0, 2.60, 2.55, 1, '/naestved-erantisvej/', '/2021/11/28140218/3.png', ''),
('d591335a29c04a0a978bdd4f01e1f0bf', 'Kolding - Vejlevej 251', 'Vejlevej 251, 6000 Kolding', 55.5136635, 9.4546968, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 2, '/kolding-vejlevej-251/', '/2021/11/28140218/3.png', ''),
('d5c5288a91544ed4a4027b757c00297c', 'Frederiksværk - Hanehovedvej', 'Hanehovedvej 49, 3300 Frederiksværk', 55.9775589, 12.0074471, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/frederiksvaerk-hanehovedvej/', '0', ''),
('d5ea4a528dc04fa08913addabf4cef60', 'Haderslev - Sverigesvej', 'Sverigesvej 2M, 6100 Haderslev', 55.2592112, 9.4741292, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/haderslev-sverigesvej/', '/2021/11/28140212/2-vask-1.png', ''),
('d603639786d540ae8727be2814a09458', 'Tilst - Blomstervej', 'Blomstervej 2T, 8381 Tilst', 56.1817870, 10.1250000, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/tilst-blomstervej/', '/2021/11/28140219/2-vask.png', ''),
('d6f8dfdc24724a109d9a1d741dd185d7', 'Næstved - Gl. Holstedvej', 'Gammel Holstedvej 1, 4700 Næstved', 55.2496811, 11.7820310, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/naestved-gl-holstedvej/', '/2021/11/28140219/2-vask.png', ''),
('d7a175205aa04847936dd5c30832ae1e', 'Esbjerg - Sædding Ringvej', 'Sædding Ringvej 6, 6710 Esbjerg', 55.5037278, 8.4074192, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/esbjerg-saedding-ringvej/', '/2021/11/28140223/Ikke-navngivet-1-1.png', ''),
('d7b6e56cf69647c787783c9af74490a4', 'Ringsted - Nørregade', 'Nørregade 70, 4100 Ringsted', 55.4513921, 11.7900816, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/ringsted-norregade/', '/2021/11/28140216/2_2.png', ''),
('d7baf9ce5b494ca3a41aa3bf9fd2d8b0', 'Randers - Messingvej', 'Messingvej 10, 8940 Randers', 56.4303617, 10.0538152, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/randers-messingvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('d7d34c9e45dd4a7aa3b931e0cac7db8e', 'Næstved - Erantisvej', 'Erantisvej 52, 4700 Næstved', 55.2391726, 11.7779768, '7-22', 3, 3, 1, 0, 0, 0, 2.60, 2.55, 1, '/naestved-erantisvej/', '/2021/11/28140218/3.png', ''),
('d8de71e0630a4433a5af7b416ee57a8c', 'Herning - Dæmningen', 'Dæmningen 21, 7400 Herning', 56.1321410, 8.9593500, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/herning-daemningen/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('d904f0075f004071bdc907964e829aea', 'Ikast - Europavej', 'Europavej 3, 7430 Ikast', 56.1236985, 9.1754224, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/ikast-europavej/', '/2021/11/28140221/1-vaskehal.jpg.png', ''),
('d9490a050e164bf888aee7ad6716162b', 'Odense - Nyborgvej', 'Nyborgvej 343, 5220 Odense', 55.3915296, 10.4358192, '7-22', 3, 3, 0, 0, 0, 0, 2.60, 2.55, 3, '/odense-nyborgvej/', '/2021/11/28140218/3.png', ''),
('d9d5b6dc82294728840d4a0087ea8216', 'Nykøbing Falster - Guldborgsundcentret', 'Guldborgsundcentret 32, 4800 Nykøbing Falster', 54.7588014, 11.8514371, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.38, 1, '/nykobing-falster-guldborgsundcentret/', '/2021/11/28140217/2-scaled.jpg', ''),
('d9dff47c604047349c7ec6baed8044d7', 'Køge - Københavnsvej', 'Københavnsvej 86, 4600 Køge', 55.4718050, 12.1819530, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 1, '/koge-kobenhavnsvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('da95707f1f5146baba8e3867ec0d9bf5', 'Lystrup - Lægårdsvej', 'Lægårdsvej 4, 8520 Lystrup', 56.2256690, 10.2385250, '7-22', 2, 2, 0, 0, 0, 2, 2.60, 2.55, 2, '/lystrup-laegardsvej/', '/2021/11/28140219/2-vask.png', ''),
('daac3ec1dfe442f9acb40c2291a39819', 'Aalborg, Gug - Gammel Vissevej', 'Gammel Vissevej 1C, 9210 Aalborg - Gug', 57.0063139, 9.9259463, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/aalborg-gug-gammel-vissevej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('dacaf72a69564c36af27a18b576c3fa1', 'Helsingør - Klostermosevej', 'Klostermosevej 103, 3000 Helsingør', 56.0240180, 12.5718630, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/helsingor-klostermosevej/', '/2021/11/28140219/2-vask.png', ''),
('db122d64a0df4707a9542b7d90dd081b', 'Helsingør - Klostermosevej', 'Klostermosevej 103, 3000 Helsingør', 56.0240180, 12.5718630, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/helsingor-klostermosevej/', '/2021/11/28140219/2-vask.png', ''),
('db82e14d271e4ce684cea3df2dddabbd', 'Horsens - Vejlevej', 'Vejlevej 102, 8700 Horsens', 55.8330850, 9.8047440, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/horsens-vejlevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('dcbe97849c164dea9478b9b46f0c4132', 'Frederiksværk - Hanehovedvej', 'Hanehovedvej 49, 3300 Frederiksværk', 55.9775589, 12.0074471, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/frederiksvaerk-hanehovedvej/', '0', ''),
('dd482e270cae4c28bebcd04e81aad2f8', 'Farum - Gammelgårdsvej', 'Gammelgårdsvej 84, 3520 Farum', 55.8169430, 12.3703500, '7-22', 3, 3, 3, 0, 2, 0, 2.60, 2.55, 1, '/farum-gammelgardsvej/', '/2021/11/28140218/3.png', ''),
('deb54181a5eb4072afa0bc84e8d1e3d2', 'Frederikssund - Askelundsvej', 'Askelundsvej 8, 3600 Frederikssund', 55.8451508, 12.0742911, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 1, '/frederikssund-askelundsvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('df140aeedafc454d8a3edef9fee77aab', 'Aalborg - Otto Mønstedsvej', 'Otto Mønsteds Vej 5, 9200 Aalborg', 57.0152480, 9.8962560, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/aalborg-otto-monstedsvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('df928223e4a34feb968f858be4298e27', 'Nakskov - Løjtoftevej', 'Løjtoftevej 6, 4900 Nakskov ', 54.8324750, 11.1496620, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 1, '/nakskov-lojtoftevej/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('e04f557a9dcf450e9482b11c79b56e32', 'Roskilde - Ringstedvej', 'Ringstedvej 73, 4000 Roskilde', 55.6284269, 12.0665595, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/roskilde-ringstedvej/', '/2021/11/28140216/2_2.png', ''),
('e0835cedcabf4846808ebf6951910db1', 'Viborg - Vognmagervej', 'Vognmagervej 21E, 8800 Viborg', 56.4693658, 9.4094306, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/viborg-vognmagervej/', '/2021/11/28140216/2_2.png', ''),
('e178fbfaa2fb46efa2e755741f49b3b1', 'Kalundborg - Holbækvej', 'Holbækvej 74, 4400 Kalundborg', 55.6787670, 11.1358300, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 1, '/kalundborg-holbaekvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('e1a0364ef0544e59aca8bacb06733d2a', 'Næstved - Erantisvej', 'Erantisvej 52, 4700 Næstved', 55.2391726, 11.7779768, '7-22', 3, 3, 1, 0, 0, 0, 2.60, 2.55, 1, '/naestved-erantisvej/', '/2021/11/28140218/3.png', 'Hal 1 tager kun imod medlemmer.'),
('e1fdca2b60e2424b83034612baae5864', 'Frederikshavn - Apholmenvej', 'Apholmenvej 9, 9900 Frederikshavn', 57.4621933, 10.5194482, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/frederikshavn-apholmenvej/', '/2021/11/28140214/Ikke-navngivet-1-5.png', ''),
('e1fe9da188af4852b87dbf72acc97439', 'Struer - Bredgade', 'Bredgade 58, 7600 Struer ', 56.4804349, 8.5855352, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/struer-bredgade/', '/2022/02/02084352/DSC7628.jpg', ''),
('e40281387ca84aecb4a5a7deb1972b09', 'Tilst - Blomstervej', 'Blomstervej 2T, 8381 Tilst', 56.1817870, 10.1250000, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/tilst-blomstervej/', '/2021/11/28140219/2-vask.png', ''),
('e48b1950eda84f19918a2e62bfcf9382', 'Ishøj - Vejleåvej', 'Vejleåvej 19, 2635 Ishøj', 55.6233845, 12.3211668, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/ishoj-vejleavej/', '/2021/11/28140211/2-1.png', ''),
('e783dda86d744d98a6355411a53cf84c', 'Vordingborg - Valdemarsgade', 'Valdemarsgade 57, 4760 Vordingborg', 55.0108552, 11.9104886, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/vordingborg-valdemarsgade/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('e78f2822be364f64944d6511c9b83dfa', 'Skive - Øster Fælled vej', 'Øster Fælled vej 4, 7800 Skive', 56.5615666, 9.0395673, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/skive-oster-faelled-vej/', '/2021/11/28140216/2_2.png', ''),
('e81453f6169a4f09858985ec49a5fc91', 'Nørresundby - Loftbrovej', 'Loftbrovej 2, 9400 Nørresundby', 57.0891424, 9.9692410, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 2, '/norresundby-loftbrovej/', '/2021/11/28140213/2-vaskehaller.jpg-1.png', ''),
('e97fd0fef60649afb695202984eaee34', 'Brande - Vestergårdsvej', 'Vestergårdsvej 3, 7330 Brande', 55.9606470, 9.1034260, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/brande-vestergardsvej/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('ea2cd408928f4615af46102a02b3da47', 'Brøndby Strand - Gl. Køge Landevej', 'Gammel Køge Landevej 690, 2660 Brøndby Strand', 55.6182310, 12.4239500, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 1, '/brondby-strand-gl-koge-landevej/', '/2021/11/28140219/2-vask.png', ''),
('eae602e223bc4497808c7407ac44a630', 'Ishøj - Vejleåvej', 'Vejleåvej 19, 2635 Ishøj', 55.6233845, 12.3211668, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/ishoj-vejleavej/', '/2021/11/28140211/2-1.png', ''),
('ec2f7476bfec46aab29f530ab3287575', 'Vejle - Soldalen', 'Soldalen 4, 7100 Vejle', 55.6812381, 9.5674556, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/vejle-soldalen/', '/2021/11/28140217/2-scaled.jpg', ''),
('ec65b51e6b09421fb87eba04e46af571', 'Horsens - Vejlevej', 'Vejlevej 102, 8700 Horsens', 55.8330850, 9.8047440, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/horsens-vejlevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('ece8737bc4194e15b6cb7759fbb7a82d', 'Svendborg - Nyborgvej', 'Nyborgvej 4, 5700 Svendborg', 55.0628931, 10.6185919, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/svendborg-nyborgvej/', '/2021/11/28140216/2_2.png', ''),
('edbf921d61af4c5b8439a9fa4abc70b0', 'Brande - Vestergårdsvej', 'Vestergårdsvej 3, 7330 Brande', 55.9606470, 9.1034260, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/brande-vestergardsvej/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('ef3dae79a3cc44efb7c303f0e98aa0da', 'Randers - Udbyhøjvej', 'Udbyhøjvej 7, 8930 Randers', 56.4660468, 10.0542498, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/randers-udbyhojvej/', '/2021/11/28140219/2-vask.png', ''),
('efbda6701e0445c18e8e5baf5d2a26ad', 'Odense V - Bystævnevej', 'Bystævnevej 5, 5200 Odense', 55.3950257, 10.3465247, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 3, '/odense-v-bystaevnevej/', '/2021/11/28140218/3.png', ''),
('f0340af8098148bcb9a61804e6242810', 'Herning - Guldborgvej', 'Guldborgvej 2-4, 7400 Herning', 56.1535542, 8.9847445, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 2, '/herning-guldborgvej/', '/2021/11/28140215/2_2-1.png', ''),
('f05c2a6b67c446bf8748c3cc77c32429', 'Odense V - Bystævnevej', 'Bystævnevej 5, 5200 Odense', 55.3950257, 10.3465247, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 3, '/odense-v-bystaevnevej/', '/2021/11/28140218/3.png', ''),
('f0d7c4ae8271441cb74c5be45cbf6fa8', 'Kalundborg - Holbækvej', 'Holbækvej 74, 4400 Kalundborg', 55.6787670, 11.1358300, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 1, '/kalundborg-holbaekvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('f1702b0dbd6c4c9a8e9d2510bfaadca1', 'Kolding - Vejlevej 132', 'Vejlevej 132, 6000 Kolding', 55.5040386, 9.4582265, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/kolding-vejlevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('f18330c6c0f744dea5ec1c4516d9d507', 'Farum - Gammelgårdsvej', 'Gammelgårdsvej 84, 3520 Farum', 55.8169430, 12.3703500, '7-22', 3, 3, 3, 0, 2, 0, 2.60, 2.55, 1, '/farum-gammelgardsvej/', '/2021/11/28140218/3.png', 'Hal 2 er ude af drift. Tekniker er tilkaldt.'),
('f2028a13224f47e595efeb5526fb97c7', 'Svendborg - Odensevej', 'Odensevej 94, 5700 Svendborg', 55.0729498, 10.5823982, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/svendborg-odensevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('f2900e65b4fb4894912234881eb619a3', 'Holstebro - Nybo Bakke', 'Nybo Bakke 2, 7500 Holstebro', 56.3418890, 8.6353950, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/holstebro-nybovej/', '/2021/11/28140219/2-vask.png', ''),
('f29757998589452a9917f211bb5746f0', 'Svendborg - Nyborgvej', 'Nyborgvej 4, 5700 Svendborg', 55.0628931, 10.6185919, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/svendborg-nyborgvej/', '/2021/11/28140216/2_2.png', ''),
('f2f54c08e6b948e59c5e27cc78691ad9', 'Skive - Øster Fælled vej', 'Øster Fælled vej 4, 7800 Skive', 56.5615666, 9.0395673, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/skive-oster-faelled-vej/', '/2021/11/28140216/2_2.png', ''),
('f31d6d59e8964b949c15c64936217764', 'Næstved - Erantisvej', 'Erantisvej 52, 4700 Næstved', 55.2391726, 11.7779768, '7-22', 3, 3, 1, 0, 0, 0, 2.60, 2.55, 1, '/naestved-erantisvej/', '/2021/11/28140218/3.png', ''),
('f326788108b64577bf66f80aa6a139af', 'Nyborg - Storebæltsvej', 'Storebæltsvej 7F, 5800 Nyborg', 55.3084979, 10.8096242, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 3, '/nyborg-storebaeltsvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('f482eef557a34c1abbac75754751038f', 'Kolding - Vejlevej 251', 'Vejlevej 251, 6000 Kolding', 55.5136635, 9.4546968, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 2, '/kolding-vejlevej-251/', '/2021/11/28140218/3.png', ''),
('f57fd933e13c4834987984b72f3629bb', 'Haderslev - Sverigesvej', 'Sverigesvej 2M, 6100 Haderslev', 55.2592112, 9.4741292, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/haderslev-sverigesvej/', '/2021/11/28140212/2-vask-1.png', ''),
('f5c5e6e41c62484497f3923e532af43a', 'Holstebro - Nybo Bakke', 'Nybo Bakke 2, 7500 Holstebro', 56.3418890, 8.6353950, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/holstebro-nybovej/', '/2021/11/28140219/2-vask.png', ''),
('f5ebdf5b067e4248b85bea5a2169769e', 'Viby - Gunnar Clausens vej', 'Gunnar Clausens Vej 2A, 8260 Viby', 56.1113730, 10.1250330, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 2, '/viby-gunnar-clausens-vej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('f6c96c4bab3a4f6ab2c54ee550fc2511', 'Odense - Nyborgvej', 'Nyborgvej 343, 5220 Odense', 55.3915296, 10.4358192, '7-22', 3, 3, 0, 0, 0, 0, 2.60, 2.55, 3, '/odense-nyborgvej/', '/2021/11/28140218/3.png', ''),
('f71827c64fdb4bffb95a514dcc19cbb1', 'Holbæk - Springstrup', 'Springstrup 5, 4300 Holbæk', 55.7030262, 11.6660911, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 1, '/holbaek-springstrup/', '/2021/11/28140218/3.png', ''),
('f7b3f94dd3db4f02ada47234725f59ff', 'Frederikshavn - Apholmenvej', 'Apholmenvej 9, 9900 Frederikshavn', 57.4621933, 10.5194482, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/frederikshavn-apholmenvej/', '/2021/11/28140214/Ikke-navngivet-1-5.png', ''),
('f7b4f94f6eae474a8e6024d7474d0dc5', 'Sorø - Apotekervej', 'Apotekervej 14, 4180 Sorø', 55.4451368, 11.5632552, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/soro-apotekervej/', '/2021/11/28140216/2_2.png', ''),
('f80ddd142bbe4add9c7dee0d9a617fe0', 'Kolding - Vejlevej 132', 'Vejlevej 132, 6000 Kolding', 55.5040386, 9.4582265, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/kolding-vejlevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('f832368f4aae43009b3f0533abf6a65b', 'Nyborg - Storebæltsvej', 'Storebæltsvej 7F, 5800 Nyborg', 55.3084979, 10.8096242, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 3, '/nyborg-storebaeltsvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('f8713242699441559d072e9fecdddf64', 'Odense SØ - Ørbækvej', 'Ørbækvej 99, 5220 Odense SØ', 55.3798740, 10.4330660, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 3, '/odense-so-orbaekvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('f9060e499c244429b0199dec32484330', 'Svendborg - Odensevej', 'Odensevej 94, 5700 Svendborg', 55.0729498, 10.5823982, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/svendborg-odensevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('f92f916b8b8e44a4ab10b30df410a254', 'Holbæk - Springstrup', 'Springstrup 5, 4300 Holbæk', 55.7030262, 11.6660911, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 1, '/holbaek-springstrup/', '/2021/11/28140218/3.png', ''),
('f95893e771cf4323b5353e836905faf1', 'Aalborg - Otto Mønstedsvej', 'Otto Mønsteds Vej 5, 9200 Aalborg', 57.0152480, 9.8962560, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/aalborg-otto-monstedsvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('f9b5dc207f6646e3a873cedb49e54780', 'Kolding - Vejlevej 132', 'Vejlevej 132, 6000 Kolding', 55.5040386, 9.4582265, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/kolding-vejlevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('f9f347bc525a474ba630a0110f2feace', 'Esbjerg - Sædding Ringvej', 'Sædding Ringvej 6, 6710 Esbjerg', 55.5037278, 8.4074192, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/esbjerg-saedding-ringvej/', '/2021/11/28140223/Ikke-navngivet-1-1.png', ''),
('fa12b8c233c1460b981a6136878a40ca', 'Kolding - Vejlevej 251', 'Vejlevej 251, 6000 Kolding', 55.5136635, 9.4546968, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 2, '/kolding-vejlevej-251/', '/2021/11/28140218/3.png', ''),
('fa7cddc401114fbd8a89c804fc6dc282', 'Aalborg, Gug - Gammel Vissevej', 'Gammel Vissevej 1C, 9210 Aalborg - Gug', 57.0063139, 9.9259463, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/aalborg-gug-gammel-vissevej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('fa947197b4894c589d36c05df7a53e7a', 'Vordingborg - Valdemarsgade', 'Valdemarsgade 57, 4760 Vordingborg', 55.0108552, 11.9104886, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/vordingborg-valdemarsgade/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('faa52ebedb25438c8962a2746c9e55cb', 'Ringsted - Nørregade', 'Nørregade 70, 4100 Ringsted', 55.4513921, 11.7900816, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/ringsted-norregade/', '/2021/11/28140216/2_2.png', ''),
('faf1285c852748b7878d4be30034cbe7', 'Nørresundby - Loftbrovej', 'Loftbrovej 2, 9400 Nørresundby', 57.0891424, 9.9692410, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 2, '/norresundby-loftbrovej/', '/2021/11/28140213/2-vaskehaller.jpg-1.png', ''),
('fb6373f1a27c4763a1005a05bbfb15c3', 'Søborg - Dynamovej', 'Dynamovej 4, 2860 Søborg', 55.7337313, 12.4599606, '7-22', 4, 4, 3, 0, 6, 0, 2.60, 2.55, 1, '/soborg-dynamovej/', '/2021/11/28140216/5.png', ''),
('fd5c2ec0cabc430f9de85f3d66ca5ff4', 'Aabenraa - Egevej', 'Egevej 4, 6200 Aabenraa', 55.0656429, 9.3644501, '7-22', 1, 1, 1, 0, 0, 0, 2.60, 2.55, 2, '/aabenraa-egevej/', '/2021/11/28140221/1-vaskehal.jpg.png', ''),
('fd7435b422434a8ab9f206e99610340e', 'Slagelse - Smedegade', 'Smedegade 77, 4200 Slagelse', 55.4076851, 11.3678455, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/slagelse-smedegade/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('fd9577c8c50d407d8e6df0adb04a1fb5', 'Herning - Dæmningen', 'Dæmningen 21, 7400 Herning', 56.1321410, 8.9593500, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/herning-daemningen/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('fdb0bc7255a34713817c6177567dc80d', 'Frederikssund - Askelundsvej', 'Askelundsvej 8, 3600 Frederikssund', 55.8451508, 12.0742911, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 1, '/frederikssund-askelundsvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('fe1ebf7ef8f24386b35c255888105d90', 'Vordingborg - Valdemarsgade', 'Valdemarsgade 57, 4760 Vordingborg', 55.0108552, 11.9104886, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/vordingborg-valdemarsgade/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('fe6e608fac1c4f6cad43f679b4436c2b', 'Ballerup - Industriparken', 'Industriparken 6, 2750 Ballerup', 55.7287140, 12.3732950, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 1, '/ballerup-industriparken/', '/2021/03/28140256/WashWorld_m_bil2.jpg', ''),
('ff29d462ff2a41efafb51edf9a2d807e', 'Odense V - Bystævnevej', 'Bystævnevej 5, 5200 Odense', 55.3950257, 10.3465247, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 3, '/odense-v-bystaevnevej/', '/2021/11/28140218/3.png', ''),
('ff54dd78158a45e18904b24d1d3ab370', 'Ebeltoft - Færgevejen', 'Færgevejen 3, 8400 Ebeltoft', 56.1908092, 10.6721231, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.58, 2, '/ebeltoft-faergevejen/', '/2021/11/28140220/1-vaskehal.jpg-1.png', '');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `models`
--

CREATE TABLE `models` (
  `model_pk` char(32) NOT NULL,
  `brand_fk` char(32) NOT NULL,
  `model_name` varchar(20) NOT NULL,
  `car_electric` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Data dump for tabellen `models`
--

INSERT INTO `models` (`model_pk`, `brand_fk`, `model_name`, `car_electric`) VALUES
('08b9c0d1e2f3488899aabbccddeeff01', 'aab3238922bc4f0c9d8e7f6a5b4c3211', 'Golf', 0),
('08b9c0d1e2f3488899aabbccddeeff02', 'aab3238922bc4f0c9d8e7f6a5b4c3211', 'Passat', 0),
('08b9c0d1e2f3488899aabbccddeeff03', 'aab3238922bc4f0c9d8e7f6a5b4c3211', 'Tiguan', 0),
('08b9c0d1e2f3488899aabbccddeeff04', 'aab3238922bc4f0c9d8e7f6a5b4c3211', 'ID.3', 1),
('08b9c0d1e2f3488899aabbccddeeff05', 'aab3238922bc4f0c9d8e7f6a5b4c3211', 'ID.4', 1),
('19c0d1e2f3a4488899aabbccddeeff01', 'c74d97b01eae4c0ab9d8e7f6a5b4c322', 'i30', 0),
('19c0d1e2f3a4488899aabbccddeeff02', 'c74d97b01eae4c0ab9d8e7f6a5b4c322', 'Tucson', 0),
('19c0d1e2f3a4488899aabbccddeeff03', 'c74d97b01eae4c0ab9d8e7f6a5b4c322', 'Santa Fe', 0),
('19c0d1e2f3a4488899aabbccddeeff04', 'c74d97b01eae4c0ab9d8e7f6a5b4c322', 'Ioniq 5', 1),
('19c0d1e2f3a4488899aabbccddeeff05', 'c74d97b01eae4c0ab9d8e7f6a5b4c322', 'Kona Electric', 1),
('2ad1e2f3a4b5488899aabbccddeeff01', '70efdf2ec9b04e0db8a7c6d5e4f32123', 'Ceed', 0),
('2ad1e2f3a4b5488899aabbccddeeff02', '70efdf2ec9b04e0db8a7c6d5e4f32123', 'Sportage', 0),
('2ad1e2f3a4b5488899aabbccddeeff03', '70efdf2ec9b04e0db8a7c6d5e4f32123', 'Sorento', 0),
('2ad1e2f3a4b5488899aabbccddeeff04', '70efdf2ec9b04e0db8a7c6d5e4f32123', 'EV6', 1),
('2ad1e2f3a4b5488899aabbccddeeff05', '70efdf2ec9b04e0db8a7c6d5e4f32123', 'EV9', 1),
('3be2f3a4b5c6488899aabbccddeeff01', '9bf31c7ff0624f3db8e9a7b6c5d4e321', 'Micra', 0),
('3be2f3a4b5c6488899aabbccddeeff02', '9bf31c7ff0624f3db8e9a7b6c5d4e321', 'Qashqai', 0),
('3be2f3a4b5c6488899aabbccddeeff03', '9bf31c7ff0624f3db8e9a7b6c5d4e321', 'X-Trail', 0),
('3be2f3a4b5c6488899aabbccddeeff04', '9bf31c7ff0624f3db8e9a7b6c5d4e321', 'Leaf', 1),
('3be2f3a4b5c6488899aabbccddeeff05', '9bf31c7ff0624f3db8e9a7b6c5d4e321', 'Ariya', 1),
('4cf3a4b5c6d7488899aabbccddeeff01', '3c59dc048e884f7aa5b4c3d2e1f12345', '911', 0),
('4cf3a4b5c6d7488899aabbccddeeff02', '3c59dc048e884f7aa5b4c3d2e1f12345', 'Cayenne', 0),
('4cf3a4b5c6d7488899aabbccddeeff03', '3c59dc048e884f7aa5b4c3d2e1f12345', 'Macan', 0),
('4cf3a4b5c6d7488899aabbccddeeff04', '3c59dc048e884f7aa5b4c3d2e1f12345', 'Taycan', 1),
('5da4b5c6d7e8488899aabbccddeeff01', '33e75ff09dd64e8ab7c6d5e4f3219876', 'XC40', 0),
('5da4b5c6d7e8488899aabbccddeeff02', '33e75ff09dd64e8ab7c6d5e4f3219876', 'XC60', 0),
('5da4b5c6d7e8488899aabbccddeeff03', '33e75ff09dd64e8ab7c6d5e4f3219876', 'XC90', 0),
('5da4b5c6d7e8488899aabbccddeeff04', '33e75ff09dd64e8ab7c6d5e4f3219876', 'EX30', 1),
('5da4b5c6d7e8488899aabbccddeeff05', '33e75ff09dd64e8ab7c6d5e4f3219876', 'EX90', 1),
('6eb5c6d7e8f9488899aabbccddeeff01', 'b6d767d2f8ed4f0ba4c3d2e1f1234567', '488 GTB', 0),
('6eb5c6d7e8f9488899aabbccddeeff02', 'b6d767d2f8ed4f0ba4c3d2e1f1234567', 'Roma', 0),
('6eb5c6d7e8f9488899aabbccddeeff03', 'b6d767d2f8ed4f0ba4c3d2e1f1234567', 'SF90', 0),
('6eb5c6d7e8f9488899aabbccddeeff04', 'b6d767d2f8ed4f0ba4c3d2e1f1234567', 'Purosangue', 0),
('7fc6d7e8f9a0488899aabbccddeeff01', '37693cfc7480492fa3d2e1f123456789', 'Huracan', 0),
('7fc6d7e8f9a0488899aabbccddeeff02', '37693cfc7480492fa3d2e1f123456789', 'Aventador', 0),
('7fc6d7e8f9a0488899aabbccddeeff03', '37693cfc7480492fa3d2e1f123456789', 'Urus', 0),
('80d7e8f9a0b1488899aabbccddeeff01', '6f4922f455684f8ab7c6d5e4f3212345', 'Mazda3', 0),
('80d7e8f9a0b1488899aabbccddeeff02', '6f4922f455684f8ab7c6d5e4f3212345', 'CX-5', 0),
('80d7e8f9a0b1488899aabbccddeeff03', '6f4922f455684f8ab7c6d5e4f3212345', 'MX-30', 1),
('91e8f9a0b1c2488899aabbccddeeff01', '1f0e3dad9990487aa6b5c4d3e2f11234', 'Impreza', 0),
('91e8f9a0b1c2488899aabbccddeeff02', '1f0e3dad9990487aa6b5c4d3e2f11234', 'Outback', 0),
('91e8f9a0b1c2488899aabbccddeeff03', '1f0e3dad9990487aa6b5c4d3e2f11234', 'Solterra', 1),
('a2b3c4d5e6f7488899aabbccddeeff01', 'c9f0f895fb984b2d9f4b8b3e8d6e5a11', 'Civic', 0),
('a2b3c4d5e6f7488899aabbccddeeff02', 'c9f0f895fb984b2d9f4b8b3e8d6e5a11', 'Accord', 0),
('a2b3c4d5e6f7488899aabbccddeeff03', 'c9f0f895fb984b2d9f4b8b3e8d6e5a11', 'CR-V', 0),
('a2b3c4d5e6f7488899aabbccddeeff04', 'c9f0f895fb984b2d9f4b8b3e8d6e5a11', 'e:NS1', 1),
('b3c4d5e6f7a8488899aabbccddeeff01', '45c48cce2e2d4fb7a7d0f8a7b9e6c123', 'Focus', 0),
('b3c4d5e6f7a8488899aabbccddeeff02', '45c48cce2e2d4fb7a7d0f8a7b9e6c123', 'Mustang', 0),
('b3c4d5e6f7a8488899aabbccddeeff03', '45c48cce2e2d4fb7a7d0f8a7b9e6c123', 'Explorer', 0),
('b3c4d5e6f7a8488899aabbccddeeff04', '45c48cce2e2d4fb7a7d0f8a7b9e6c123', 'Mach-E', 1),
('b3c4d5e6f7a8488899aabbccddeeff05', '45c48cce2e2d4fb7a7d0f8a7b9e6c123', 'F-150 Lightning', 1),
('c4d5e6f7a8b9488899aabbccddeeff01', '6512bd43d9ca4e7bb8a1c5d2e3f4a567', '320i', 0),
('c4d5e6f7a8b9488899aabbccddeeff02', '6512bd43d9ca4e7bb8a1c5d2e3f4a567', 'X5', 0),
('c4d5e6f7a8b9488899aabbccddeeff03', '6512bd43d9ca4e7bb8a1c5d2e3f4a567', 'i4', 1),
('c4d5e6f7a8b9488899aabbccddeeff04', '6512bd43d9ca4e7bb8a1c5d2e3f4a567', 'iX', 1),
('c4d5e6f7a8b9488899aabbccddeeff05', '6512bd43d9ca4e7bb8a1c5d2e3f4a567', 'M3', 0),
('d5e6f7a8b9c0488899aabbccddeeff01', 'c20ad4d76fe94f2f9c8a7e6d5b4c3210', 'C-Class', 0),
('d5e6f7a8b9c0488899aabbccddeeff02', 'c20ad4d76fe94f2f9c8a7e6d5b4c3210', 'E-Class', 0),
('d5e6f7a8b9c0488899aabbccddeeff03', 'c20ad4d76fe94f2f9c8a7e6d5b4c3210', 'GLE', 0),
('d5e6f7a8b9c0488899aabbccddeeff04', 'c20ad4d76fe94f2f9c8a7e6d5b4c3210', 'EQS', 1),
('d5e6f7a8b9c0488899aabbccddeeff05', 'c20ad4d76fe94f2f9c8a7e6d5b4c3210', 'EQA', 1),
('e6f7a8b9c0d1488899aabbccddeeff01', 'c51ce410c1244d5ab7e8f9a0b1c2d345', 'A3', 0),
('e6f7a8b9c0d1488899aabbccddeeff02', 'c51ce410c1244d5ab7e8f9a0b1c2d345', 'A4', 0),
('e6f7a8b9c0d1488899aabbccddeeff03', 'c51ce410c1244d5ab7e8f9a0b1c2d345', 'Q5', 0),
('e6f7a8b9c0d1488899aabbccddeeff04', 'c51ce410c1244d5ab7e8f9a0b1c2d345', 'e-tron', 1),
('e6f7a8b9c0d1488899aabbccddeeff05', 'c51ce410c1244d5ab7e8f9a0b1c2d345', 'Q8 e-tron', 1),
('f1a2b3c4d5e6478899aabbccddeeff01', '8f14e45fceea467aa3f3f4fdbf6f9d91', 'Corolla', 0),
('f1a2b3c4d5e6478899aabbccddeeff02', '8f14e45fceea467aa3f3f4fdbf6f9d91', 'Camry', 0),
('f1a2b3c4d5e6478899aabbccddeeff03', '8f14e45fceea467aa3f3f4fdbf6f9d91', 'RAV4', 0),
('f1a2b3c4d5e6478899aabbccddeeff04', '8f14e45fceea467aa3f3f4fdbf6f9d91', 'bZ4X', 1),
('f1a2b3c4d5e6478899aabbccddeeff05', '8f14e45fceea467aa3f3f4fdbf6f9d91', 'Prius', 0),
('f7a8b9c0d1e2488899aabbccddeeff01', 'b53b3a3d6ab94f86976543210ffeedca', 'Model S', 1),
('f7a8b9c0d1e2488899aabbccddeeff02', 'b53b3a3d6ab94f86976543210ffeedca', 'Model 3', 1),
('f7a8b9c0d1e2488899aabbccddeeff03', 'b53b3a3d6ab94f86976543210ffeedca', 'Model X', 1),
('f7a8b9c0d1e2488899aabbccddeeff04', 'b53b3a3d6ab94f86976543210ffeedca', 'Model Y', 1),
('f7a8b9c0d1e2488899aabbccddeeff05', 'b53b3a3d6ab94f86976543210ffeedca', 'Cybertruck', 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `orders`
--

CREATE TABLE `orders` (
  `order_pk` char(32) NOT NULL,
  `user_fk` char(32) NOT NULL,
  `wash_fk` int(11) NOT NULL,
  `order_time_at` bigint(20) UNSIGNED NOT NULL,
  `location_fk` char(32) NOT NULL,
  `car_fk` varchar(10) NOT NULL,
  `status_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Data dump for tabellen `orders`
--

INSERT INTO `orders` (`order_pk`, `user_fk`, `wash_fk`, `order_time_at`, `location_fk`, `car_fk`, `status_fk`) VALUES
('b90d603002d14eb0bfbf41d9c2228c12', '3bcede93719e4343b83b80dcc3084671', 1, 1779193073, '368b014378854b58844d888f98b261f3', 'DDDDDDDD', 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `regions`
--

CREATE TABLE `regions` (
  `region_pk` int(11) NOT NULL,
  `region_name` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Data dump for tabellen `regions`
--

INSERT INTO `regions` (`region_pk`, `region_name`) VALUES
(1, 'Sjælland'),
(2, 'Jylland'),
(3, 'Fyn');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `status`
--

CREATE TABLE `status` (
  `status_pk` int(11) NOT NULL,
  `status_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Data dump for tabellen `status`
--

INSERT INTO `status` (`status_pk`, `status_name`) VALUES
(1, 'Reserved'),
(2, 'Processing'),
(3, 'Finalized');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `subscriptions`
--

CREATE TABLE `subscriptions` (
  `subscription_pk` char(32) NOT NULL,
  `wash_fk` int(11) NOT NULL,
  `location_fk` char(32) DEFAULT NULL,
  `all_locations` tinyint(1) DEFAULT NULL,
  `car_fk` varchar(10) NOT NULL
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

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`user_pk`, `user_first_name`, `user_last_name`, `user_email`, `user_hashed_password`, `user_created_at`, `user_verified_at`, `user_changed_at`, `user_deleted_at`, `user_reset_at`, `user_reset_password_key`, `user_verification_key`) VALUES
('3bcede93719e4343b83b80dcc3084671', 'John22', 'Johnson22', 'john22@john.com', 'scrypt:32768:8:1$OVyZXpEyukeyhG0q$884c9a7e535a321268b11437270a88bd7e90f5da10d0f9429676e16891ddd42ea7b2be09d7ca0fb19a2df54727c3b11dd8446ffc30e1e4459704c45e229d986b', 1778695388, 1778695440, 0, 0, 0, '317cd5f0c289409d8589923068d3e841', '0'),
('41b9383ed3b240cea9c327b01918564d', 'Bob', 'Marley', 'bob@marley.com', '12345', 1778057276, NULL, NULL, NULL, NULL, NULL, NULL),
('c633870018c741b1a09e299a732c0c85', 'John1', 'Johnson1', 'john1@john.com', 'scrypt:32768:8:1$GqXDLzWCfqNUHGqj$696446430630f185ba518bac298dc87623ed34dee82d4e405664d0fb8c4246a3bf7e0cc297802f5e0c4a16cef7b7d0a80b2973d95c92c4ad207e86cbd98e36ab', 1778089426, 0, 0, 0, 0, '4bf90a46e09c406f810418ae29aae888', '627d0ad37acb4d3dab0d3fa483f7142f'),
('d3af55b485564244924390234cd16a71', 'John2', 'Johnson2', 'john2@john.com', 'scrypt:32768:8:1$7Ga7EpiUsD16UWKy$3265d86a5f56907c3d1a32b43b07b00dce9caaf92eaf9ae976e871fe4e63e82204fcd1356f2f3b0c7f2f407a7809d2770e1a0e9d494f1b9870278217fdbe1d20', 1778159905, 0, 0, 0, 0, '05d4c7f958e84a6dbef29510ce10c894', '2439f2abac9b4d0a8e256ee0684b8be2'),
('e5967722bf2f47c48597b5085c49b8c5', 'John', 'Johnson', 'john@john.com', 'scrypt:32768:8:1$jFdezWG5Dy1qhdje$9489f0889ed727995c546a0e9706da1a5c906c30e0b4ff20b59f68ce694ca2c96cf8cfed257e3834fda6e27d60d73aa47a437b596fe703ba09a0423fe8afbe4f', 1778089271, 0, 0, 0, 0, 'f9464edd40a44e90895be9abb0bf119e', '5db11f4264c24ade9ca21ed0c51a7a55');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `washes`
--

CREATE TABLE `washes` (
  `wash_pk` int(11) NOT NULL,
  `wash_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Data dump for tabellen `washes`
--

INSERT INTO `washes` (`wash_pk`, `wash_name`) VALUES
(1, 'Guld'),
(2, 'Premium'),
(3, 'Brilliant');

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
  ADD KEY `addon_fk` (`addon_fk`);

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
  ADD KEY `idx_cars_model` (`model_fk`);

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
  ADD KEY `idx_orders_status` (`status_fk`) USING BTREE;

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
  ADD UNIQUE KEY `car_fk` (`car_fk`),
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
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `addons`
--
ALTER TABLE `addons`
  MODIFY `addon_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tilføj AUTO_INCREMENT i tabel `regions`
--
ALTER TABLE `regions`
  MODIFY `region_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tilføj AUTO_INCREMENT i tabel `status`
--
ALTER TABLE `status`
  MODIFY `status_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tilføj AUTO_INCREMENT i tabel `washes`
--
ALTER TABLE `washes`
  MODIFY `wash_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `addons_orders`
--
ALTER TABLE `addons_orders`
  ADD CONSTRAINT `addon_fk` FOREIGN KEY (`addon_fk`) REFERENCES `addons` (`addon_pk`);

--
-- Begrænsninger for tabel `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `fk_cars_model` FOREIGN KEY (`model_fk`) REFERENCES `models` (`model_pk`),
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
  ADD CONSTRAINT `fk_order_wash` FOREIGN KEY (`wash_fk`) REFERENCES `washes` (`wash_pk`),
  ADD CONSTRAINT `fk_orders_car` FOREIGN KEY (`car_fk`) REFERENCES `cars` (`car_pk`),
  ADD CONSTRAINT `fk_orders_location` FOREIGN KEY (`location_fk`) REFERENCES `locations` (`location_pk`),
  ADD CONSTRAINT `fk_orders_status` FOREIGN KEY (`status_fk`) REFERENCES `status` (`status_pk`),
  ADD CONSTRAINT `fk_orders_user` FOREIGN KEY (`user_fk`) REFERENCES `users` (`user_pk`);

--
-- Begrænsninger for tabel `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `fk_subscriptions_car` FOREIGN KEY (`car_fk`) REFERENCES `cars` (`car_pk`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_subscriptions_location` FOREIGN KEY (`location_fk`) REFERENCES `locations` (`location_pk`),
  ADD CONSTRAINT `fk_subscriptions_wash` FOREIGN KEY (`wash_fk`) REFERENCES `washes` (`wash_pk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;