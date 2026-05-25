-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Vært: mariadb
-- Genereringstid: 25. 05 2026 kl. 16:43:08
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
('05dd134a8187424980328a758a2a1f0d', 'Lystrup - Lægårdsvej', 'Lægårdsvej 4, 8520 Lystrup', 56.2256690, 10.2385250, '7-22', 2, 2, 0, 0, 0, 2, 2.60, 2.55, 2, '/lystrup-laegardsvej/', '/2021/11/28140219/2-vask.png', ''),
('091d79edc0f040c392dc68efa8793c16', 'Nykøbing Falster - Guldborgsundcentret', 'Guldborgsundcentret 32, 4800 Nykøbing Falster', 54.7588014, 11.8514371, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.38, 1, '/nykobing-falster-guldborgsundcentret/', '/2021/11/28140217/2-scaled.jpg', ''),
('0a931c40f5ab4f3eb19023a42bc8b239', 'Grenå - Hesselvang', 'Hesselvang 1, 8500 Grenå', 56.3838951, 10.8644506, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/grena-hesselvang/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('0ce5352d070c4f79a3e24314d6e3e49e', 'Aalborg, Gug - Gammel Vissevej', 'Gammel Vissevej 1C, 9210 Aalborg - Gug', 57.0063139, 9.9259463, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/aalborg-gug-gammel-vissevej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('11473f326a5b4f23b1134c5c33ef45e0', 'Slagelse - Smedegade', 'Smedegade 77, 4200 Slagelse', 55.4076851, 11.3678455, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/slagelse-smedegade/', '/2021/11/28140221/2-vaskehaller.jpg.png', 'Hal 2 er ude af drift. Tekniker er tilkaldt.'),
('1629d3f789924e8f864aed93b4aa2b0f', 'Vejle - Solkilde Allé', 'Solkilde Alle 11, 7100 Vejle', 55.7234586, 9.5847778, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/vejle-solkilde-alle/', '/2021/11/28140219/2-vask.png', ''),
('17f9d2d66ac24af8928b04b172e1739b', 'Sønderborg - Centerpassagen', 'Centerpassagen 4, 6400 Sønderborg', 54.9194303, 9.8080340, '7-22', 3, 3, 0, 0, 0, 0, 2.60, 2.58, 2, '/sonderborg-centerpassagen/', '/2021/11/28140218/3.png', ''),
('1d69553a164145238be2540bb9aa8878', 'Ebeltoft - Færgevejen', 'Færgevejen 3, 8400 Ebeltoft', 56.1908092, 10.6721231, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.58, 2, '/ebeltoft-faergevejen/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('1d72e1827fd34df88765401d8c53e7ac', 'Ringsted - Frejasvej', 'Frejasvej 43, 4100 Ringsted', 55.4306693, 11.8014193, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 1, '/ringsted-frejasvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('1e96de5fe2d146328badb05cbecfb8ef', 'Roskilde - Ringstedvej', 'Ringstedvej 73, 4000 Roskilde', 55.6284269, 12.0665595, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/roskilde-ringstedvej/', '/2021/11/28140216/2_2.png', ''),
('27a593478a8d407382ceba954553f462', 'Odense - Nyborgvej', 'Nyborgvej 343, 5220 Odense', 55.3915296, 10.4358192, '7-22', 3, 3, 0, 0, 0, 0, 2.60, 2.55, 3, '/odense-nyborgvej/', '/2021/11/28140218/3.png', ''),
('3757d10447ba45dba59d51d089ccddaa', 'Næstved - Erantisvej', 'Erantisvej 52, 4700 Næstved', 55.2391726, 11.7779768, '7-22', 3, 3, 1, 0, 0, 0, 2.60, 2.55, 1, '/naestved-erantisvej/', '/2021/11/28140218/3.png', ''),
('38151f839e7144e9960d8e6ad1caee0c', 'Fredericia - Vejlevej', 'Vejlevej 20, 7000 Fredericia', 55.5696911, 9.7276223, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/fredericia-vejlevej/', '0', ''),
('384580490ced4037a145b8ccc193c6ee', 'Søborg - Dynamovej', 'Dynamovej 4, 2860 Søborg', 55.7337313, 12.4599606, '7-22', 4, 4, 3, 0, 6, 0, 2.60, 2.55, 1, '/soborg-dynamovej/', '/2021/11/28140216/5.png', 'Hal 2 er ude af drift. Tekniker er tilkaldt.'),
('39b8ccb043c841b29bb218ff98efe049', 'Randers - Messingvej', 'Messingvej 10, 8940 Randers', 56.4303617, 10.0538152, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/randers-messingvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('3ab32bd30f2a4f32b22010db21e435e1', 'Holbæk - Springstrup', 'Springstrup 5, 4300 Holbæk', 55.7030262, 11.6660911, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 1, '/holbaek-springstrup/', '/2021/11/28140218/3.png', ''),
('3bc1fdba08884e5bae9759e19ce1054c', 'Viby - Gunnar Clausens vej', 'Gunnar Clausens Vej 2A, 8260 Viby', 56.1113730, 10.1250330, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 2, '/viby-gunnar-clausens-vej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', ''),
('3c55b2536b2b418ebfc6e23521d7e2ee', 'Tønder - Centerbuen', 'Centerbuen 5, 6270 Tønder', 54.9515046, 8.8878000, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/tonder-centerbuen/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('3d8674047bd5476a9878d226fade8ae5', 'Kolding - Vejlevej 132', 'Vejlevej 132, 6000 Kolding', 55.5040386, 9.4582265, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/kolding-vejlevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', 'Hal 1 og 2 er ude af drift. Tekniker er tilkaldt.'),
('432b3845732149029d0c58c96bf583a3', 'Slagelse - Idagårdsvej', 'Idagårdsvej 2, 4200 Slagelse', 55.3917353, 11.3530022, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/slagelse-idagardsvej/', '/2021/11/28140219/2-vask.png', 'Undervogsskyld i Hal 1, er ude af drift og kan ikke benyttes. '),
('4530d518250845bf92fab5e64a4f1730', 'Risskov - Ravnsøvej', 'Ravnsøvej 48B, 8240 Risskov', 56.2020620, 10.2444900, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/risskov-ravnsovej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('4ab917a63ccc4d4993a8d20198170d08', 'Taastrup - Roskildevej', 'Roskildevej 376, 2630 Taastrup', 55.6580371, 12.2947118, '7-22', 3, 3, 0, 0, 4, 0, 2.60, 2.55, 1, '/taastrup-roskildevej/', '/2021/11/28140216/5.png', ''),
('4cd870fac9254bed9d122773f40deb8b', 'Roskilde - Byleddet', 'Byleddet 2, 4000 Roskilde', 55.6437095, 12.1091142, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.58, 1, '/roskilde-byleddet/', '/2021/11/28140217/2-scaled.jpg', ''),
('4d38dde2a0064215920031ba383bc198', 'Viborg - Falkevej', 'Falkevej 25, 8800 Viborg', 56.4441610, 9.3884560, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 2, '/viborg-falkevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('4d4497e204764bf4ab8de6782a819d6f', 'Ribe - Trojels Knæ', 'Trojels Knæ 6, 6760 Ribe', 55.3514850, 8.7803110, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/ribe-trojels-knae/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('549057003bf540d4b11a509fd38d9c68', 'Ishøj - Vejleåvej', 'Vejleåvej 19, 2635 Ishøj', 55.6233845, 12.3211668, '7-22', 2, 0, 2, 0, 0, 0, 2.60, 2.55, 1, '/ishoj-vejleavej/', '/2021/11/28140211/2-1.png', ''),
('589e5222794747e6b3208a67f1d262f6', 'Silkeborg - Nordre Ringvej', 'Nordre Ringvej 90, 8600 Silkeborg', 56.1814130, 9.5369542, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/silkeborg-nordre-ringvej/', '/2021/11/28140224/Ikke-navngivet-1.png', 'Hal 2 er ude af drift. Tekniker er tilkaldt.'),
('60f0f2932fa74397a7c53af61751c7de', 'Frederikshavn - Apholmenvej', 'Apholmenvej 9, 9900 Frederikshavn', 57.4621933, 10.5194482, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/frederikshavn-apholmenvej/', '/2021/11/28140214/Ikke-navngivet-1-5.png', ''),
('614e75993ee94e0ba8a3516d75766ded', 'Vordingborg - Valdemarsgade', 'Valdemarsgade 57, 4760 Vordingborg', 55.0108552, 11.9104886, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/vordingborg-valdemarsgade/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('6e9866e3f21f4e94853c1de1db9cba64', 'Sorø - Apotekervej', 'Apotekervej 14, 4180 Sorø', 55.4451368, 11.5632552, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/soro-apotekervej/', '/2021/11/28140216/2_2.png', ''),
('7057dbc017f6417ba9b288a69c2edbbb', 'Aalborg - Otto Mønstedsvej', 'Otto Mønsteds Vej 5, 9200 Aalborg', 57.0152480, 9.8962560, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/aalborg-otto-monstedsvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('747ad95680b045189de83e12df63d31f', 'Tilst - Blomstervej', 'Blomstervej 2T, 8381 Tilst', 56.1817870, 10.1250000, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/tilst-blomstervej/', '/2021/11/28140219/2-vask.png', ''),
('755eca7cffc44431a9de10e86ba6131d', 'Farum - Gammelgårdsvej', 'Gammelgårdsvej 84, 3520 Farum', 55.8169430, 12.3703500, '7-22', 3, 3, 3, 0, 2, 0, 2.60, 2.55, 1, '/farum-gammelgardsvej/', '/2021/11/28140218/3.png', ''),
('75c0914b93084f3da9d701b7139466db', 'Brøndby Strand - Gl. Køge Landevej', 'Gammel Køge Landevej 690, 2660 Brøndby Strand', 55.6182310, 12.4239500, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 1, '/brondby-strand-gl-koge-landevej/', '/2021/11/28140219/2-vask.png', ''),
('76ddbfc278a54ba882f6d847f5bf8605', 'Hjørring - Sprogøvej', 'Sprogøvej 2, 9800 Hjørring', 57.4555938, 10.0394654, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/hjorring-sprogovej/', '/2021/11/28140224/Ikke-navngivet-1.png', ''),
('7f3882c4cbf84607b450f0b778352141', 'Vejle - Soldalen', 'Soldalen 4, 7100 Vejle', 55.6812381, 9.5674556, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/vejle-soldalen/', '/2021/11/28140217/2-scaled.jpg', ''),
('801c1363213e47c0852a1249759a48c4', 'Haderslev - Sverigesvej', 'Sverigesvej 2M, 6100 Haderslev', 55.2592112, 9.4741292, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/haderslev-sverigesvej/', '/2021/11/28140212/2-vask-1.png', ''),
('847109b0b60c4b5bbee1a4b34cd1dbde', 'Ballerup - Industriparken', 'Industriparken 6, 2750 Ballerup', 55.7287140, 12.3732950, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 1, '/ballerup-industriparken/', '/2021/03/28140256/WashWorld_m_bil2.jpg', ''),
('854087efe9c74bea95eae5421916174c', 'Svendborg - Nyborgvej', 'Nyborgvej 4, 5700 Svendborg', 55.0628931, 10.6185919, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/svendborg-nyborgvej/', '/2021/11/28140216/2_2.png', 'Hal 2 er lukket. Vi renoverer, så du får en bedre vaskeoplevelse'),
('89ffd1f8865242a0b13c3eed4a6f7d9b', 'Hillerød - Industrivænget ', 'Industrivænget 3, 3400 Hillerød', 55.9314810, 12.2829960, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/hilleroed-industrivaenget/', '0', ''),
('8a8bf4b921e24522b4afc973278f61dd', 'Odense V - Bystævnevej', 'Bystævnevej 5, 5200 Odense', 55.3950257, 10.3465247, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 3, '/odense-v-bystaevnevej/', '/2021/11/28140218/3.png', ''),
('8bd3712dfcd644e5afe5d079069117e5', 'Skive - Øster Fælled vej', 'Øster Fælled vej 4, 7800 Skive', 56.5615666, 9.0395673, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 2, '/skive-oster-faelled-vej/', '/2021/11/28140216/2_2.png', ''),
('931cf67644a64afa8318b1ecfcee481e', 'Nakskov - Løjtoftevej', 'Løjtoftevej 6, 4900 Nakskov ', 54.8324750, 11.1496620, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 1, '/nakskov-lojtoftevej/', '/2021/11/28140220/1-vaskehal.jpg-1.png', 'Bås 1 og 2 er ude af drift. Tekniker er tilkaldt.'),
('99ee294652fc49b7a4d0e7965f7c0f86', 'Herlev - Nørrelundvej', 'Nørrelundvej 2, 2730 Herlev', 55.7253650, 12.4166970, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/herlev-norrelundvej/', '/2021/11/28140220/Ikke-navngivet-1-4.png', 'Driftsforstyrrelser'),
('9b9beccd9890497dbf48745f0df62f3c', 'Herning - Guldborgvej', 'Guldborgvej 2-4, 7400 Herning', 56.1535542, 8.9847445, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 2, '/herning-guldborgvej/', '/2021/11/28140215/2_2-1.png', ''),
('9bebe2c601824f5d9f290e5d1505c8a2', 'Odense SØ - Ørbækvej', 'Ørbækvej 99, 5220 Odense SØ', 55.3798740, 10.4330660, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 3, '/odense-so-orbaekvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('9dc4b70682a04790b16f37b7fc175410', 'Kolding - Vejlevej 251', 'Vejlevej 251, 6000 Kolding', 55.5136635, 9.4546968, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, 2, '/kolding-vejlevej-251/', '/2021/11/28140218/3.png', 'Bås 2 er ude af drift. Tekniker er tilkaldt.; Hal 3 tager kun imod medlemmer.'),
('a5a7f97d1ca14a9da6ef7b4a0b36a256', 'Helsingør - Klostermosevej', 'Klostermosevej 103, 3000 Helsingør', 56.0240180, 12.5718630, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 1, '/helsingor-klostermosevej/', '/2021/11/28140219/2-vask.png', ''),
('a601f0d1af2d45d8bfbcc3780aa24ab5', 'Thisted - Østerbakken', 'Østerbakken 111, 7700 Thisted', 56.9688520, 8.7351340, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/thisted-osterbakken/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('acf6ee5072b84c7d98a8f98e6073f05d', 'Næstved - Gl. Holstedvej', 'Gammel Holstedvej 1, 4700 Næstved', 55.2496811, 11.7820310, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/naestved-gl-holstedvej/', '/2021/11/28140219/2-vask.png', 'Hal 1 er ude af drift. Tekniker er tilkaldt.'),
('b1838e03c7c94e0a979482664ee2da58', 'Nyborg - Storebæltsvej', 'Storebæltsvej 7F, 5800 Nyborg', 55.3084979, 10.8096242, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, 3, '/nyborg-storebaeltsvej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('baf016105c8b4c19b03f9dd2973e8ca8', 'Fredericia - Strevelinsvej', 'Strevelinsvej 5, 7000 Fredericia', 55.5355191, 9.7187001, '7-22', 3, 3, 0, 0, 2, 0, 2.60, 2.55, 2, '/fredericia-strevelinsvej/', '/2021/11/28140218/3.png', 'Hal 2 er ude af drift. Tekniker er tilkaldt.'),
('be75c6b58b534b879eb4ef01bd47b9a9', 'Struer - Bredgade', 'Bredgade 58, 7600 Struer ', 56.4804349, 8.5855352, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/struer-bredgade/', '/2022/02/02084352/DSC7628.jpg', ''),
('bf85d5a335a6402383858fc870291897', 'Randers - Udbyhøjvej', 'Udbyhøjvej 7, 8930 Randers', 56.4660468, 10.0542498, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/randers-udbyhojvej/', '/2021/11/28140219/2-vask.png', ''),
('c08f17b7d8e2483b931c70079f996ce0', 'Viborg - Vognmagervej', 'Vognmagervej 21E, 8800 Viborg', 56.4693658, 9.4094306, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/viborg-vognmagervej/', '/2021/11/28140216/2_2.png', 'Hal 1 er ude af drift. Tekniker er tilkaldt.; Anlægget er lukket i perioden 21 Maj - 25 Maj Grundet motorløbet Classic Race'),
('c4abd134bb5a4fa5b07afcde78b6e779', 'Ringsted - Nørregade', 'Nørregade 70, 4100 Ringsted', 55.4513921, 11.7900816, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/ringsted-norregade/', '/2021/11/28140216/2_2.png', ''),
('c5b3bd1c3cb44c0f8d00f3c042b50f86', 'Køge - Københavnsvej', 'Københavnsvej 86, 4600 Køge', 55.4718050, 12.1819530, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, 1, '/koge-kobenhavnsvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('c6ac5abfdf99435d84e780734b17fdf1', 'Kalundborg - Holbækvej', 'Holbækvej 74, 4400 Kalundborg', 55.6787670, 11.1358300, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, 1, '/kalundborg-holbaekvej/', '/2021/11/28140217/2-scaled.jpg', 'Hal 2 er ude af drift. Tekniker er tilkaldt.'),
('c6e63b10efd2463ebde7bbe01a3369c3', 'Højbjerg - Bjødstrupvej', 'Bjødstrupvej 20E, 8270 Højbjerg', 56.1075250, 10.1669670, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/hojbjerg-bjodstrupvej/', '/2021/11/28140214/2.png', ''),
('c902d50711d1400d86f5afb5cda5fae7', 'Brande - Vestergårdsvej', 'Vestergårdsvej 3, 7330 Brande', 55.9606470, 9.1034260, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, 2, '/brande-vestergardsvej/', '/2021/11/28140220/1-vaskehal.jpg-1.png', ''),
('cded91c24e814834a75ee16ed67dea89', 'Horsens - Vejlevej', 'Vejlevej 102, 8700 Horsens', 55.8330850, 9.8047440, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, 2, '/horsens-vejlevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('d392842f61b44ba48b6f43c56bbc6816', 'Nørresundby - Loftbrovej', 'Loftbrovej 2, 9400 Nørresundby', 57.0891424, 9.9692410, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, 2, '/norresundby-loftbrovej/', '/2021/11/28140213/2-vaskehaller.jpg-1.png', ''),
('d5ffcd382b9f47b3a823da189b5e3f60', 'Aabenraa - Egevej', 'Egevej 4, 6200 Aabenraa', 55.0656429, 9.3644501, '7-22', 1, 1, 1, 0, 0, 0, 2.60, 2.55, 2, '/aabenraa-egevej/', '/2021/11/28140221/1-vaskehal.jpg.png', ''),
('d9f2b812b17f4eaf94b07952012f10fb', 'Frederikssund - Askelundsvej', 'Askelundsvej 8, 3600 Frederikssund', 55.8451508, 12.0742911, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 1, '/frederikssund-askelundsvej/', '/2021/11/28140217/2-scaled.jpg', ''),
('da3410fccb4b4303b22287d22411766c', 'Esbjerg - Sædding Ringvej', 'Sædding Ringvej 6, 6710 Esbjerg', 55.5037278, 8.4074192, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/esbjerg-saedding-ringvej/', '/2021/11/28140223/Ikke-navngivet-1-1.png', ''),
('db0b4fdf7a234ad08dde4adf7da8c162', 'Herning - Dæmningen', 'Dæmningen 21, 7400 Herning', 56.1321410, 8.9593500, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/herning-daemningen/', '/2021/11/28140221/2-vaskehaller.jpg.png', 'Hal 1 er ude af drift. Tekniker er tilkaldt.'),
('df48e812db584d70be0b1cc26339a72b', 'Holstebro - Nybo Bakke', 'Nybo Bakke 2, 7500 Holstebro', 56.3418890, 8.6353950, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 2, '/holstebro-nybovej/', '/2021/11/28140219/2-vask.png', ''),
('e761217baa844c99ac48ad63a882a9e3', 'Ikast - Europavej', 'Europavej 3, 7430 Ikast', 56.1236985, 9.1754224, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, 2, '/ikast-europavej/', '/2021/11/28140221/1-vaskehal.jpg.png', ''),
('e7e9325bcc8644b7b8bd2a2a958a0432', 'Middelfart - Skovsvinget', 'Skovsvinget 27c, 5500 Middelfart', 55.5120128, 9.7661805, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/middelfart-skovsvinget/', '/2021/11/28140221/2-vaskehaller.jpg.png', ''),
('ebae79bbf2644d56976d7f69c5d64d64', 'Frederiksværk - Hanehovedvej', 'Hanehovedvej 49, 3300 Frederiksværk', 55.9775589, 12.0074471, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, 1, '/frederiksvaerk-hanehovedvej/', '0', ''),
('fbfa76c1b1b9418d8f356529173e4ef7', 'Svendborg - Odensevej', 'Odensevej 94, 5700 Svendborg', 55.0729498, 10.5823982, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, 3, '/svendborg-odensevej/', '/2021/11/28140221/2-vaskehaller.jpg.png', '');

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
('a7c88c4b5b284350aebe54293508fea6', 'Bob', 'Bobby', 'masi0001@stud.ek.dk', 'scrypt:32768:8:1$iVcli7IfFHs19Tuw$dbc9c1c393813d812a3bd7471d092bb4bf6b602a69eceee3d3489bb5e7ab93ebbacf500706000f3b36c4a61cb0e383207f50403c0510984c1b571840e8d1479e', 1779480334, 0, 0, 0, 0, '891a28bd7f4c4b2899be04513c78b6bb', 'd7490910febb459bbe1a8cc7d07c75e9'),
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
