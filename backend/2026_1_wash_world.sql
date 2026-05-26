-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Vært: mariadb
-- Genereringstid: 26. 05 2026 kl. 19:58:05
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
('550e8400e29b41d4a716446655440000', 1),
('550e8400e29b41d4a716446655440000', 2),
('550e8400e29b41d4a716446655440000', 3),
('550e8400e29b41d4a716446655440000', 4),
('550e8400e29b41d4a716446655440000', 5),
('550e8400e29b41d4a716446655440000', 6),
('550e8400e29b41d4a716446655440000', 7),
('16fd27068baf433b82eb8c7fada847da', 1),
('16fd27068baf433b82eb8c7fada847da', 2),
('16fd27068baf433b82eb8c7fada847da', 3),
('16fd27068baf433b82eb8c7fada847da', 4),
('16fd27068baf433b82eb8c7fada847da', 5),
('16fd27068baf433b82eb8c7fada847da', 6),
('16fd27068baf433b82eb8c7fada847da', 7),
('16fd27068baf433b82eb8c7fada847da', 8),
('223e4567e89b42d3a456426614174001', 1),
('223e4567e89b42d3a456426614174001', 2),
('223e4567e89b42d3a456426614174001', 3),
('223e4567e89b42d3a456426614174001', 4),
('223e4567e89b42d3a456426614174001', 5),
('223e4567e89b42d3a456426614174001', 6),
('223e4567e89b42d3a456426614174001', 7),
('6ba7b8109dad41d180b400c04fd430c8', 1),
('6ba7b8109dad41d180b400c04fd430c8', 2),
('6ba7b8109dad41d180b400c04fd430c8', 3),
('6ba7b8109dad41d180b400c04fd430c8', 4),
('6ba7b8109dad41d180b400c04fd430c8', 5),
('6ba7b8109dad41d180b400c04fd430c8', 6),
('6ba7b8109dad41d180b400c04fd430c8', 7),
('6ba7b8109dad41d180b400c04fd430c8', 8),
('6ba7b8109dad41d180b400c04fd430c8', 9),
('6ba7b8109dad41d180b400c04fd430c8', 10),
('123e4567e89b42d3a456426614174000', 1),
('123e4567e89b42d3a456426614174000', 2),
('123e4567e89b42d3a456426614174000', 3),
('123e4567e89b42d3a456426614174000', 4),
('123e4567e89b42d3a456426614174000', 5),
('123e4567e89b42d3a456426614174000', 6),
('123e4567e89b42d3a456426614174000', 7),
('123e4567e89b42d3a456426614174000', 8),
('123e4567e89b42d3a456426614174000', 9),
('323e4567e89b42d3a456426614174002', 1),
('323e4567e89b42d3a456426614174002', 2),
('323e4567e89b42d3a456426614174002', 3),
('323e4567e89b42d3a456426614174002', 4),
('323e4567e89b42d3a456426614174002', 5),
('323e4567e89b42d3a456426614174002', 6),
('323e4567e89b42d3a456426614174002', 7),
('323e4567e89b42d3a456426614174002', 8),
('323e4567e89b42d3a456426614174002', 9),
('7d4448409dc041d1b2455ffdce74fad2', 1),
('7d4448409dc041d1b2455ffdce74fad2', 2),
('7d4448409dc041d1b2455ffdce74fad2', 3),
('7d4448409dc041d1b2455ffdce74fad2', 4),
('7d4448409dc041d1b2455ffdce74fad2', 5),
('7d4448409dc041d1b2455ffdce74fad2', 6),
('7d4448409dc041d1b2455ffdce74fad2', 7),
('7d4448409dc041d1b2455ffdce74fad2', 8),
('7d4448409dc041d1b2455ffdce74fad2', 9),
('7d4448409dc041d1b2455ffdce74fad2', 10),
('7d4448409dc041d1b2455ffdce74fad2', 11),
('7d4448409dc041d1b2455ffdce74fad2', 12),
('423e4567e89b42d3a456426614174003', 1),
('423e4567e89b42d3a456426614174003', 2),
('423e4567e89b42d3a456426614174003', 3),
('423e4567e89b42d3a456426614174003', 4),
('423e4567e89b42d3a456426614174003', 5),
('423e4567e89b42d3a456426614174003', 6),
('423e4567e89b42d3a456426614174003', 7),
('423e4567e89b42d3a456426614174003', 8),
('423e4567e89b42d3a456426614174003', 9),
('423e4567e89b42d3a456426614174003', 10),
('423e4567e89b42d3a456426614174003', 11),
('423e4567e89b42d3a456426614174003', 12),
('a23e4567e89b42d3a456426614174009', 1),
('a23e4567e89b42d3a456426614174009', 2),
('a23e4567e89b42d3a456426614174009', 3),
('a23e4567e89b42d3a456426614174009', 4),
('a23e4567e89b42d3a456426614174009', 5),
('a23e4567e89b42d3a456426614174009', 6),
('a23e4567e89b42d3a456426614174009', 7),
('a23e4567e89b42d3a456426614174009', 8),
('a23e4567e89b42d3a456426614174009', 9),
('a23e4567e89b42d3a456426614174009', 10),
('a23e4567e89b42d3a456426614174009', 11),
('a23e4567e89b42d3a456426614174009', 12);

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
('AA66778', '87f48a32116d4399b4f1a52057e8f93c', '4cf3a4b5c6d7488899aabbccddeeff03', 'Snow Drift'),
('AB12345', '07992820d41a4737a821882c76c2acfa', '91e8f9a0b1c2488899aabbccddeeff01', 'Speedster'),
('BB77889', 'aa67ff3c07e540218d0513c5653de639', '4cf3a4b5c6d7488899aabbccddeeff04', 'Red Comet'),
('CD67890', '87f48a32116d4399b4f1a52057e8f93c', '91e8f9a0b1c2488899aabbccddeeff02', 'Family Ride'),
('DD99001', '07992820d41a4737a821882c76c2acfa', 'c4d5e6f7a8b9488899aabbccddeeff01', 'Falcon'),
('EE10112', '87f48a32116d4399b4f1a52057e8f93c', 'c4d5e6f7a8b9488899aabbccddeeff02', 'Ghost Rider'),
('EF11223', 'aa67ff3c07e540218d0513c5653de639', '91e8f9a0b1c2488899aabbccddeeff03', 'Blue Thunder'),
('FF21223', 'aa67ff3c07e540218d0513c5653de639', 'c4d5e6f7a8b9488899aabbccddeeff03', 'Storm Chaser'),
('GG32334', 'd2f94cc369634b1cb66e227fd02dc2d1', 'c4d5e6f7a8b9488899aabbccddeeff04', 'Wildcat'),
('GH44556', 'd2f94cc369634b1cb66e227fd02dc2d1', '5da4b5c6d7e8488899aabbccddeeff01', 'Night Hawk'),
('HH43445', '07992820d41a4737a821882c76c2acfa', 'c4d5e6f7a8b9488899aabbccddeeff05', 'Midnight Runner'),
('IJ77889', '07992820d41a4737a821882c76c2acfa', '5da4b5c6d7e8488899aabbccddeeff02', 'Road King'),
('KL99001', '87f48a32116d4399b4f1a52057e8f93c', '5da4b5c6d7e8488899aabbccddeeff03', 'Silver Fox'),
('MN22334', 'aa67ff3c07e540218d0513c5653de639', '5da4b5c6d7e8488899aabbccddeeff04', 'Crimson Bolt'),
('OP55667', 'd2f94cc369634b1cb66e227fd02dc2d1', '5da4b5c6d7e8488899aabbccddeeff05', 'Shadow'),
('QR88990', '07992820d41a4737a821882c76c2acfa', '7fc6d7e8f9a0488899aabbccddeeff01', 'Ice Rider'),
('ST10293', '87f48a32116d4399b4f1a52057e8f93c', '7fc6d7e8f9a0488899aabbccddeeff02', 'Dust Devil'),
('UV39485', 'aa67ff3c07e540218d0513c5653de639', '7fc6d7e8f9a0488899aabbccddeeff03', 'Thunder Wagon'),
('WX48576', 'd2f94cc369634b1cb66e227fd02dc2d1', '4cf3a4b5c6d7488899aabbccddeeff01', 'Black Pearl'),
('YZ57684', '07992820d41a4737a821882c76c2acfa', '4cf3a4b5c6d7488899aabbccddeeff02', 'Lightning');

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

--
-- Data dump for tabellen `orders`
--

INSERT INTO `orders` (`order_pk`, `user_fk`, `wash_fk`, `order_time_at`, `location_fk`, `car_fk`, `status_fk`) VALUES
('111e4567e89b42d3a456426614174015', 'd2f94cc369634b1cb66e227fd02dc2d1', 1, 1715100000, '75c0914b93084f3da9d701b7139466db', 'WX48576', 3),
('123e4567e89b42d3a456426614174000', '07992820d41a4737a821882c76c2acfa', 2, 1716734400, '384580490ced4037a145b8ccc193c6ee', 'IJ77889', 1),
('16fd27068baf433b82eb8c7fada847da', 'd2f94cc369634b1cb66e227fd02dc2d1', 1, 1716730800, '847109b0b60c4b5bbee1a4b34cd1dbde', 'GH44556', 2),
('222e4567e89b42d3a456426614174016', '07992820d41a4737a821882c76c2acfa', 2, 1715000000, '549057003bf540d4b11a509fd38d9c68', 'YZ57684', 3),
('223e4567e89b42d3a456426614174001', '07992820d41a4737a821882c76c2acfa', 1, 1716500000, '549057003bf540d4b11a509fd38d9c68', 'AB12345', 3),
('323e4567e89b42d3a456426614174002', '07992820d41a4737a821882c76c2acfa', 2, 1716400000, '99ee294652fc49b7a4d0e7965f7c0f86', 'AB12345', 3),
('333e4567e89b42d3a456426614174017', '87f48a32116d4399b4f1a52057e8f93c', 3, 1714900000, '99ee294652fc49b7a4d0e7965f7c0f86', 'AA66778', 3),
('423e4567e89b42d3a456426614174003', '87f48a32116d4399b4f1a52057e8f93c', 3, 1716300000, '847109b0b60c4b5bbee1a4b34cd1dbde', 'CD67890', 3),
('444e4567e89b42d3a456426614174018', 'aa67ff3c07e540218d0513c5653de639', 1, 1714800000, '847109b0b60c4b5bbee1a4b34cd1dbde', 'BB77889', 3),
('523e4567e89b42d3a456426614174004', 'aa67ff3c07e540218d0513c5653de639', 1, 1716200000, '384580490ced4037a145b8ccc193c6ee', 'EF11223', 3),
('550e8400e29b41d4a716446655440000', '07992820d41a4737a821882c76c2acfa', 1, 1716720000, '75c0914b93084f3da9d701b7139466db', 'AB12345', 1),
('555e4567e89b42d3a456426614174019', '07992820d41a4737a821882c76c2acfa', 2, 1714700000, '384580490ced4037a145b8ccc193c6ee', 'DD99001', 3),
('623e4567e89b42d3a456426614174005', 'aa67ff3c07e540218d0513c5653de639', 2, 1716100000, '75c0914b93084f3da9d701b7139466db', 'EF11223', 3),
('666e4567e89b42d3a456426614174020', '87f48a32116d4399b4f1a52057e8f93c', 3, 1714600000, '75c0914b93084f3da9d701b7139466db', 'EE10112', 3),
('6ba7b8109dad41d180b400c04fd430c8', '87f48a32116d4399b4f1a52057e8f93c', 2, 1716723600, '549057003bf540d4b11a509fd38d9c68', 'CD67890', 2),
('723e4567e89b42d3a456426614174006', 'd2f94cc369634b1cb66e227fd02dc2d1', 2, 1716000000, '549057003bf540d4b11a509fd38d9c68', 'GH44556', 3),
('777e4567e89b42d3a456426614174021', 'aa67ff3c07e540218d0513c5653de639', 1, 1714500000, '549057003bf540d4b11a509fd38d9c68', 'FF21223', 3),
('7d4448409dc041d1b2455ffdce74fad2', 'aa67ff3c07e540218d0513c5653de639', 3, 1716727200, '99ee294652fc49b7a4d0e7965f7c0f86', 'EF11223', 1),
('823e4567e89b42d3a456426614174007', '07992820d41a4737a821882c76c2acfa', 1, 1715900000, '99ee294652fc49b7a4d0e7965f7c0f86', 'IJ77889', 3),
('888e4567e89b42d3a456426614174022', 'd2f94cc369634b1cb66e227fd02dc2d1', 2, 1714400000, '99ee294652fc49b7a4d0e7965f7c0f86', 'GG32334', 3),
('923e4567e89b42d3a456426614174008', '87f48a32116d4399b4f1a52057e8f93c', 2, 1715800000, '847109b0b60c4b5bbee1a4b34cd1dbde', 'KL99001', 3),
('999e4567e89b42d3a456426614174023', '07992820d41a4737a821882c76c2acfa', 3, 1714300000, '847109b0b60c4b5bbee1a4b34cd1dbde', 'HH43445', 3),
('a23e4567e89b42d3a456426614174009', '87f48a32116d4399b4f1a52057e8f93c', 3, 1715700000, '384580490ced4037a145b8ccc193c6ee', 'KL99001', 3),
('b23e4567e89b42d3a456426614174010', 'aa67ff3c07e540218d0513c5653de639', 1, 1715600000, '75c0914b93084f3da9d701b7139466db', 'MN22334', 3),
('c23e4567e89b42d3a456426614174011', 'd2f94cc369634b1cb66e227fd02dc2d1', 2, 1715500000, '549057003bf540d4b11a509fd38d9c68', 'OP55667', 3),
('d23e4567e89b42d3a456426614174012', '07992820d41a4737a821882c76c2acfa', 3, 1715400000, '99ee294652fc49b7a4d0e7965f7c0f86', 'QR88990', 3),
('e23e4567e89b42d3a456426614174013', '87f48a32116d4399b4f1a52057e8f93c', 1, 1715300000, '847109b0b60c4b5bbee1a4b34cd1dbde', 'ST10293', 3),
('f23e4567e89b42d3a456426614174014', 'aa67ff3c07e540218d0513c5653de639', 2, 1715200000, '384580490ced4037a145b8ccc193c6ee', 'UV39485', 3);

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

--
-- Data dump for tabellen `subscriptions`
--

INSERT INTO `subscriptions` (`subscription_pk`, `wash_fk`, `location_fk`, `all_locations`, `car_fk`) VALUES
('19432dbbda61461786e95ac0fcf02481', 1, '75c0914b93084f3da9d701b7139466db', 0, 'WX48576'),
('2a3bbaa9e62c4ad1abc61b5c0d3986d5', 2, '384580490ced4037a145b8ccc193c6ee', 0, 'IJ77889'),
('2e14288ba132442188c1e6995ac055dc', 1, '549057003bf540d4b11a509fd38d9c68', 0, 'AB12345'),
('2fa26ead78454920a6a5053874c3a0c8', 1, '847109b0b60c4b5bbee1a4b34cd1dbde', 0, 'GH44556'),
('494a2c6d04e0404caa66dcb4f65ea2ed', 3, NULL, 1, 'CD67890'),
('562e2d3c11884661ae0995d7f03944d9', 3, NULL, 1, 'AA66778'),
('a71b07cf8b00431f91ea9b3b4bb2c5ae', 2, '549057003bf540d4b11a509fd38d9c68', 0, 'YZ57684');

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
('07992820d41a4737a821882c76c2acfa', 'John', 'Belvedere', 'john@mail.com', 'scrypt:32768:8:1$G6BlHNE577Yrj5YD$be3f2fc88a532069fb1871d0069118402c6e8a777374ba77a363740f746babffd6648e0fff7305cfa1fb2a0ac003e32d6bb3b58e7855a73b0adac111dc98c93e', 1779823061, 0, 0, 0, 0, 'f7cfe886c63e4a529436981178fb37eb', '02de7621b1a94e9ea52f54abfb5f49f2'),
('87f48a32116d4399b4f1a52057e8f93c', 'Jack', 'Daniel', 'jack@mail.com', 'scrypt:32768:8:1$u4Aq2m1ORIeuCMeU$8ca481d7f288901e3391e9bdc01491ec5e59b3cce4565bdd3f0496a8ee0e339af8c55804e6555a22b812f5962d6a60955c89ddd4917279516d1bcbc25cc4a99b', 1779822922, 0, 0, 0, 0, '8a9bab9b74e74e10bedc1356c3f41a27', '6340863cf1b84de0a2aaea20411baadb'),
('aa67ff3c07e540218d0513c5653de639', 'Aa', 'Bb', 'aa@bb.com', 'scrypt:32768:8:1$PZWVAOlKR9jYWC97$2f2aebf67a4c6f44f0a9fabcd5cc4450cd372b44440f7c9b330fde3d4b202fbf5ea9e06b7510e820f590edc519d825ba17595dd6a7e1defca43071fa44768677', 1779822963, 0, 0, 0, 0, '5b4f0288884d41018efcab6362206694', '833618dd13e54077a69d0218e298ad3b'),
('d2f94cc369634b1cb66e227fd02dc2d1', 'Henry', 'Morgan', 'henry@mail.com', 'scrypt:32768:8:1$Wc0tRrHYmn4xkoS5$51ac513e01537727d200b44eb276668e3918627a8afacc0f4b05e25e8bf1efd6d3b22de8aae4417ad0473d6f7c792fb7ea1101dd60c67586cbf6e07a91e8ca2b', 1779822947, 0, 0, 0, 0, '84d6414e6b3c49db95c27430d4f3f829', '6820ba2f40954fe98b25fba01f3ba498');

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

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `washes_addons`
--

CREATE TABLE `washes_addons` (
  `wash_fk` int(11) NOT NULL,
  `addon_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Data dump for tabellen `washes_addons`
--

INSERT INTO `washes_addons` (`wash_fk`, `addon_fk`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12);

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
  ADD KEY `addon_fk` (`addon_fk`),
  ADD KEY `order_fk` (`order_fk`);

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
-- Indeks for tabel `washes_addons`
--
ALTER TABLE `washes_addons`
  ADD KEY `wash_fk` (`wash_fk`),
  ADD KEY `addon_fk_rule` (`addon_fk`);

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
  ADD CONSTRAINT `addon_fk` FOREIGN KEY (`addon_fk`) REFERENCES `addons` (`addon_pk`),
  ADD CONSTRAINT `order_fk` FOREIGN KEY (`order_fk`) REFERENCES `orders` (`order_pk`);

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

--
-- Begrænsninger for tabel `washes_addons`
--
ALTER TABLE `washes_addons`
  ADD CONSTRAINT `addon_fk_rule` FOREIGN KEY (`addon_fk`) REFERENCES `addons` (`addon_pk`),
  ADD CONSTRAINT `wash_fk` FOREIGN KEY (`wash_fk`) REFERENCES `washes` (`wash_pk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
