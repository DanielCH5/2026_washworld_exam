-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Vært: mariadb
-- Genereringstid: 07. 05 2026 kl. 11:22:19
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

--
-- Data dump for tabellen `brands`
--

INSERT INTO `brands` (`brand_pk`, `brand_name`) VALUES
('7bbcd63ef50c4e73afddabdc2f085cb9', 'Volkswagen');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `cars`
--

CREATE TABLE `cars` (
  `car_pk` varchar(10) NOT NULL,
  `user_fk` char(32) NOT NULL,
  `model_fk` char(32) NOT NULL,
  `car_nickname` varchar(50) NOT NULL,
  `car_electric` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Data dump for tabellen `cars`
--

INSERT INTO `cars` (`car_pk`, `user_fk`, `model_fk`, `car_nickname`, `car_electric`) VALUES
('AAAAAAAAAA', '41b9383ed3b240cea9c327b01918564d', '55cbfe908f9246e4969941ddcd993542', 'Bobby Mobile', 0),
('BBBBBBBB', '41b9383ed3b240cea9c327b01918564d', '55cbfe908f9246e4969941ddcd993542', 'Ganja Car', 0),
('DDDDDDDD', '41b9383ed3b240cea9c327b01918564d', '55cbfe908f9246e4969941ddcd993542', 'MarleyMarley', 0);

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
  `region_fk` char(1) NOT NULL,
  `location_end_url` varchar(50) DEFAULT NULL,
  `location_image_end_url` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Data dump for tabellen `locations`
--

INSERT INTO `locations` (`location_pk`, `location_name`, `location_address`, `location_lat`, `location_lon`, `location_open_hours`, `location_wash_halls`, `location_empty_wash_halls`, `location_self_wash`, `location_mat_cleaner`, `location_vacuum`, `location_pre_wash`, `location_max_meters`, `location_max_mirrors_width_meters`, `region_fk`, `location_end_url`, `location_image_end_url`) VALUES
('040c2cf940d5463f979ab1b391626b6a', 'Tønder - Centerbuen', 'Centerbuen 5, 6270 Tønder', 54.9515046, 8.8878000, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, '2', '/tonder-centerbuen/', '/2021/11/28140220/1-vaskehal.jpg-1.png'),
('052fb920997248898e5b26533fd68195', 'Horsens - Vejlevej', 'Vejlevej 102, 8700 Horsens', 55.8330850, 9.8047440, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, '2', '/horsens-vejlevej/', '/2021/11/28140221/2-vaskehaller.jpg.png'),
('121a562a7e6449c6afdf94f47c53dcc5', 'Næstved - Erantisvej', 'Erantisvej 52, 4700 Næstved', 55.2391726, 11.7779768, '7-22', 3, 3, 1, 0, 0, 0, 2.60, 2.55, '1', '/naestved-erantisvej/', '/2021/11/28140218/3.png'),
('19d02b69981b49b48b9a7413b32ee2f0', 'Aalborg - Otto Mønstedsvej', 'Otto Mønsteds Vej 5, 9200 Aalborg', 57.0152480, 9.8962560, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '2', '/aalborg-otto-monstedsvej/', '/2021/11/28140221/2-vaskehaller.jpg.png'),
('1c093e9a7d574f769d02071e8ae9b323', 'Ringsted - Frejasvej', 'Frejasvej 43, 4100 Ringsted', 55.4306693, 11.8014193, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, '1', '/ringsted-frejasvej/', '/2021/11/28140217/2-scaled.jpg'),
('22dbb03f92514687bb7f8fb3de2430bc', 'Herning - Guldborgvej', 'Guldborgvej 2-4, 7400 Herning', 56.1535542, 8.9847445, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, '2', '/herning-guldborgvej/', '/2021/11/28140215/2_2-1.png'),
('22ffaaced1a74ef0b63f0866af34c4b4', 'Risskov - Ravnsøvej', 'Ravnsøvej 48B, 8240 Risskov', 56.2020620, 10.2444900, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '2', '/risskov-ravnsovej/', '/2021/11/28140221/2-vaskehaller.jpg.png'),
('25b63bd94e9d4569a167cfb639b0b971', 'Fredericia - Vejlevej', 'Vejlevej 20, 7000 Fredericia', 55.5696911, 9.7276223, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '2', '/fredericia-vejlevej/', '0'),
('270cf642aea84173b668bc2a6bfb4336', 'Fredericia - Strevelinsvej', 'Strevelinsvej 5, 7000 Fredericia', 55.5355191, 9.7187001, '7-22', 3, 3, 0, 0, 2, 0, 2.60, 2.55, '2', '/fredericia-strevelinsvej/', '/2021/11/28140218/3.png'),
('28f62585904445638507569a560c0501', 'Tilst - Blomstervej', 'Blomstervej 2T, 8381 Tilst', 56.1817870, 10.1250000, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '2', '/tilst-blomstervej/', '/2021/11/28140219/2-vask.png'),
('2a6da5661d6c4dabb56d0866ac0f90d3', 'Roskilde - Ringstedvej', 'Ringstedvej 73, 4000 Roskilde', 55.6284269, 12.0665595, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '1', '/roskilde-ringstedvej/', '/2021/11/28140216/2_2.png'),
('2ae3a886b3ca4ff8b0046e3265c927b1', 'Ikast - Europavej', 'Europavej 3, 7430 Ikast', 56.1236985, 9.1754224, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, '2', '/ikast-europavej/', '/2021/11/28140221/1-vaskehal.jpg.png'),
('2cda32a53ff34ebea4cd4fd189302bb7', 'Roskilde - Byleddet', 'Byleddet 2, 4000 Roskilde', 55.6437095, 12.1091142, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.58, '1', '/roskilde-byleddet/', '/2021/11/28140217/2-scaled.jpg'),
('31cc194707c249838396c2926e89ba29', 'Brøndby Strand - Gl. Køge Landevej', 'Gammel Køge Landevej 690, 2660 Brøndby Strand', 55.6182310, 12.4239500, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, '1', '/brondby-strand-gl-koge-landevej/', '/2021/11/28140219/2-vask.png'),
('331754c8d53d4a69ba5914cf63d889f9', 'Farum - Gammelgårdsvej', 'Gammelgårdsvej 84, 3520 Farum', 55.8169430, 12.3703500, '7-22', 3, 3, 3, 0, 2, 0, 2.60, 2.55, '1', '/farum-gammelgardsvej/', '/2021/11/28140218/3.png'),
('33b76f80083040eaa01ecdc30064c971', 'Herlev - Nørrelundvej', 'Nørrelundvej 2, 2730 Herlev', 55.7253650, 12.4166970, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, '1', '/herlev-norrelundvej/', '/2021/11/28140220/Ikke-navngivet-1-4.png'),
('3598b235cf5643deaddb908b974d9dd3', 'Aalborg, Gug - Gammel Vissevej', 'Gammel Vissevej 1C, 9210 Aalborg - Gug', 57.0063139, 9.9259463, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '2', '/aalborg-gug-gammel-vissevej/', '/2021/11/28140220/Ikke-navngivet-1-4.png'),
('368b014378854b58844d888f98b261f3', 'Taastrup - Roskildevej', 'Roskildevej 376, 2630 Taastrup', 55.6580371, 12.2947118, '7-22', 3, 3, 0, 0, 4, 0, 2.60, 2.55, '1', '/taastrup-roskildevej/', '/2021/11/28140216/5.png'),
('3c6b4905547d4328b3381cd2ef8b8806', 'Sorø - Apotekervej', 'Apotekervej 14, 4180 Sorø', 55.4451368, 11.5632552, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '1', '/soro-apotekervej/', '/2021/11/28140216/2_2.png'),
('3ded418c9b064478b2efb55fa435a8ef', 'Esbjerg - Sædding Ringvej', 'Sædding Ringvej 6, 6710 Esbjerg', 55.5037278, 8.4074192, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '2', '/esbjerg-saedding-ringvej/', '/2021/11/28140223/Ikke-navngivet-1-1.png'),
('3fc757d4476e4170bb252cb27cd03443', 'Holbæk - Springstrup', 'Springstrup 5, 4300 Holbæk', 55.7030262, 11.6660911, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, '1', '/holbaek-springstrup/', '/2021/11/28140218/3.png'),
('4120c9ab26d74413899ced18db5a9fcb', 'Ishøj - Vejleåvej', 'Vejleåvej 19, 2635 Ishøj', 55.6233845, 12.3211668, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, '1', '/ishoj-vejleavej/', '/2021/11/28140211/2-1.png'),
('420022d6131647e1888d172f7e5c6f01', 'Silkeborg - Nordre Ringvej', 'Nordre Ringvej 90, 8600 Silkeborg', 56.1814130, 9.5369542, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, '2', '/silkeborg-nordre-ringvej/', '/2021/11/28140224/Ikke-navngivet-1.png'),
('439ba0954e984e91862e93ee1a74c039', 'Haderslev - Sverigesvej', 'Sverigesvej 2M, 6100 Haderslev', 55.2592112, 9.4741292, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, '2', '/haderslev-sverigesvej/', '/2021/11/28140212/2-vask-1.png'),
('442292fbdea74201a5c345ab1fcab3f5', 'Vordingborg - Valdemarsgade', 'Valdemarsgade 57, 4760 Vordingborg', 55.0108552, 11.9104886, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '1', '/vordingborg-valdemarsgade/', '/2021/11/28140221/2-vaskehaller.jpg.png'),
('4f79555b5c7e4ff59d59070396dbc23f', 'Hillerød - Industrivænget ', 'Industrivænget 3, 3400 Hillerød', 55.9314810, 12.2829960, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, '1', '/hilleroed-industrivaenget/', '0'),
('55bfce5437d34a0ca9ec6377d7f8b25a', 'Viborg - Vognmagervej', 'Vognmagervej 21E, 8800 Viborg', 56.4693658, 9.4094306, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '2', '/viborg-vognmagervej/', '/2021/11/28140216/2_2.png'),
('569e70ae88fa471ba528372ade36a85b', 'Struer - Bredgade', 'Bredgade 58, 7600 Struer ', 56.4804349, 8.5855352, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, '2', '/struer-bredgade/', '/2022/02/02084352/DSC7628.jpg'),
('68e7621ebb6f4e43b573143f7e28d2fd', 'Ribe - Trojels Knæ', 'Trojels Knæ 6, 6760 Ribe', 55.3514850, 8.7803110, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, '2', '/ribe-trojels-knae/', '/2021/11/28140220/1-vaskehal.jpg-1.png'),
('6bab8355e335466280d28584181e9f9c', 'Grenå - Hesselvang', 'Hesselvang 1, 8500 Grenå', 56.3838951, 10.8644506, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, '2', '/grena-hesselvang/', '/2021/11/28140220/1-vaskehal.jpg-1.png'),
('6dfda2fa14db401ab4407aa38e487624', 'Vejle - Soldalen', 'Soldalen 4, 7100 Vejle', 55.6812381, 9.5674556, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '2', '/vejle-soldalen/', '/2021/11/28140217/2-scaled.jpg'),
('746933a072464f3d9a90526291753a65', 'Nakskov - Løjtoftevej', 'Løjtoftevej 6, 4900 Nakskov ', 54.8324750, 11.1496620, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, '1', '/nakskov-lojtoftevej/', '/2021/11/28140220/1-vaskehal.jpg-1.png'),
('784215a39d5d4a60a1573f4475de353d', 'Køge - Københavnsvej', 'Københavnsvej 86, 4600 Køge', 55.4718050, 12.1819530, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, '1', '/koge-kobenhavnsvej/', '/2021/11/28140217/2-scaled.jpg'),
('78cc606fa91c42c0b13fe5a72dfad526', 'Frederikssund - Askelundsvej', 'Askelundsvej 8, 3600 Frederikssund', 55.8451508, 12.0742911, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, '1', '/frederikssund-askelundsvej/', '/2021/11/28140217/2-scaled.jpg'),
('7a726a94c32649ae8b565406fb242f26', 'Hjørring - Sprogøvej', 'Sprogøvej 2, 9800 Hjørring', 57.4555938, 10.0394654, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '2', '/hjorring-sprogovej/', '/2021/11/28140224/Ikke-navngivet-1.png'),
('7ac0884b094f47c8a967f2afe17ede1f', 'Kalundborg - Holbækvej', 'Holbækvej 74, 4400 Kalundborg', 55.6787670, 11.1358300, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, '1', '/kalundborg-holbaekvej/', '/2021/11/28140217/2-scaled.jpg'),
('7df33fd319824ff89ac17f633520b5bf', 'Aabenraa - Egevej', 'Egevej 4, 6200 Aabenraa', 55.0656429, 9.3644501, '7-22', 1, 1, 1, 0, 0, 0, 2.60, 2.55, '2', '/aabenraa-egevej/', '/2021/11/28140221/1-vaskehal.jpg.png'),
('7f4faa76b2184c5e99389ed1036f53d7', 'Ebeltoft - Færgevejen', 'Færgevejen 3, 8400 Ebeltoft', 56.1908092, 10.6721231, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.58, '2', '/ebeltoft-faergevejen/', '/2021/11/28140220/1-vaskehal.jpg-1.png'),
('8222d5ac4fc544f0a1b859a79b9c6cb6', 'Odense SØ - Ørbækvej', 'Ørbækvej 99, 5220 Odense SØ', 55.3798740, 10.4330660, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '3', '/odense-so-orbaekvej/', '/2021/11/28140217/2-scaled.jpg'),
('839cb122edc74b2790780d54e1376b8a', 'Viborg - Falkevej', 'Falkevej 25, 8800 Viborg', 56.4441610, 9.3884560, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, '2', '/viborg-falkevej/', '/2021/11/28140221/2-vaskehaller.jpg.png'),
('8a339ad974c14f31a09ac80483aed279', 'Randers - Messingvej', 'Messingvej 10, 8940 Randers', 56.4303617, 10.0538152, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, '2', '/randers-messingvej/', '/2021/11/28140221/2-vaskehaller.jpg.png'),
('8fad5a19f86a484681ce19020f98945c', 'Holstebro - Nybo Bakke', 'Nybo Bakke 2, 7500 Holstebro', 56.3418890, 8.6353950, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '2', '/holstebro-nybovej/', '/2021/11/28140219/2-vask.png'),
('9317cc94ba4a41e785ea027820cc2530', 'Søborg - Dynamovej', 'Dynamovej 4, 2860 Søborg', 55.7337313, 12.4599606, '7-22', 4, 4, 3, 0, 6, 0, 2.60, 2.55, '1', '/soborg-dynamovej/', '/2021/11/28140216/5.png'),
('956a727ad95f40668c8d72cd3f9f3b1d', 'Slagelse - Idagårdsvej', 'Idagårdsvej 2, 4200 Slagelse', 55.3917353, 11.3530022, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '1', '/slagelse-idagardsvej/', '/2021/11/28140219/2-vask.png'),
('987e262fcdbd4aeab1ffaa5b93b76d64', 'Sønderborg - Centerpassagen', 'Centerpassagen 4, 6400 Sønderborg', 54.9194303, 9.8080340, '7-22', 3, 3, 0, 0, 0, 0, 2.60, 2.58, '2', '/sonderborg-centerpassagen/', '/2021/11/28140218/3.png'),
('98d246c64cde4f3982166f3d42029180', 'Ballerup - Industriparken', 'Industriparken 6, 2750 Ballerup', 55.7287140, 12.3732950, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, '1', '/ballerup-industriparken/', '/2021/03/28140256/WashWorld_m_bil2.jpg'),
('a4c3ac9052f64265abfe4af1b8a31389', 'Højbjerg - Bjødstrupvej', 'Bjødstrupvej 20E, 8270 Højbjerg', 56.1075250, 10.1669670, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '2', '/hojbjerg-bjodstrupvej/', '/2021/11/28140214/2.png'),
('a5cdc19b04c3477897dbf25dc11234a5', 'Slagelse - Smedegade', 'Smedegade 77, 4200 Slagelse', 55.4076851, 11.3678455, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '1', '/slagelse-smedegade/', '/2021/11/28140221/2-vaskehaller.jpg.png'),
('a83748d36de4480fa9600c014538b1e5', 'Herning - Dæmningen', 'Dæmningen 21, 7400 Herning', 56.1321410, 8.9593500, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '2', '/herning-daemningen/', '/2021/11/28140221/2-vaskehaller.jpg.png'),
('ac4edecca54c4929a2331498512e0f31', 'Thisted - Østerbakken', 'Østerbakken 111, 7700 Thisted', 56.9688520, 8.7351340, '7-22', 1, 1, 2, 0, 0, 0, 2.60, 2.55, '2', '/thisted-osterbakken/', '/2021/11/28140220/1-vaskehal.jpg-1.png'),
('b1b922b8a550460c81d299aa910c5d7a', 'Lystrup - Lægårdsvej', 'Lægårdsvej 4, 8520 Lystrup', 56.2256690, 10.2385250, '7-22', 2, 2, 0, 0, 0, 2, 2.60, 2.55, '2', '/lystrup-laegardsvej/', '/2021/11/28140219/2-vask.png'),
('b3feffe3ba9c4b019122288de17a011a', 'Odense - Nyborgvej', 'Nyborgvej 343, 5220 Odense', 55.3915296, 10.4358192, '7-22', 3, 3, 0, 0, 0, 0, 2.60, 2.55, '3', '/odense-nyborgvej/', '/2021/11/28140218/3.png'),
('b453144f8316483095694ebc85150e5e', 'Nyborg - Storebæltsvej', 'Storebæltsvej 7F, 5800 Nyborg', 55.3084979, 10.8096242, '7-22', 2, 2, 0, 0, 0, 1, 2.60, 2.55, '3', '/nyborg-storebaeltsvej/', '/2021/11/28140221/2-vaskehaller.jpg.png'),
('b483bf904e9447129a1c6fdac4cb9dd3', 'Frederikshavn - Apholmenvej', 'Apholmenvej 9, 9900 Frederikshavn', 57.4621933, 10.5194482, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, '2', '/frederikshavn-apholmenvej/', '/2021/11/28140214/Ikke-navngivet-1-5.png'),
('b6bc38f331e047e797f1353f31c96b88', 'Kolding - Vejlevej 251', 'Vejlevej 251, 6000 Kolding', 55.5136635, 9.4546968, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, '2', '/kolding-vejlevej-251/', '/2021/11/28140218/3.png'),
('b7214ffc3c8d4320bd00477ced6135be', 'Middelfart - Skovsvinget', 'Skovsvinget 27c, 5500 Middelfart', 55.5120128, 9.7661805, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, '3', '/middelfart-skovsvinget/', '/2021/11/28140221/2-vaskehaller.jpg.png'),
('c2e81a0c273a46acb092dc3ab6bf9b13', 'Ringsted - Nørregade', 'Nørregade 70, 4100 Ringsted', 55.4513921, 11.7900816, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '1', '/ringsted-norregade/', '/2021/11/28140216/2_2.png'),
('c586179807eb45cba40b34772a77c512', 'Nørresundby - Loftbrovej', 'Loftbrovej 2, 9400 Nørresundby', 57.0891424, 9.9692410, '7-22', 2, 2, 2, 0, 2, 0, 2.60, 2.55, '2', '/norresundby-loftbrovej/', '/2021/11/28140213/2-vaskehaller.jpg-1.png'),
('cda66472fb9b47ed9381e586c9b82bb9', 'Næstved - Gl. Holstedvej', 'Gammel Holstedvej 1, 4700 Næstved', 55.2496811, 11.7820310, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '1', '/naestved-gl-holstedvej/', '/2021/11/28140219/2-vask.png'),
('d1aebaa4846344a9b47ee5a0685b8b71', 'Svendborg - Odensevej', 'Odensevej 94, 5700 Svendborg', 55.0729498, 10.5823982, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, '3', '/svendborg-odensevej/', '/2021/11/28140221/2-vaskehaller.jpg.png'),
('d39d3d2f639f4a2d97b7cd4d083d4632', 'Randers - Udbyhøjvej', 'Udbyhøjvej 7, 8930 Randers', 56.4660468, 10.0542498, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '2', '/randers-udbyhojvej/', '/2021/11/28140219/2-vask.png'),
('d42c075fc17c428abe712ab4bd48c380', 'Vejle - Solkilde Allé', 'Solkilde Alle 11, 7100 Vejle', 55.7234586, 9.5847778, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '2', '/vejle-solkilde-alle/', '/2021/11/28140219/2-vask.png'),
('d5c5288a91544ed4a4027b757c00297c', 'Frederiksværk - Hanehovedvej', 'Hanehovedvej 49, 3300 Frederiksværk', 55.9775589, 12.0074471, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '1', '/frederiksvaerk-hanehovedvej/', '0'),
('d9d5b6dc82294728840d4a0087ea8216', 'Nykøbing Falster - Guldborgsundcentret', 'Guldborgsundcentret 32, 4800 Nykøbing Falster', 54.7588014, 11.8514371, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.38, '1', '/nykobing-falster-guldborgsundcentret/', '/2021/11/28140217/2-scaled.jpg'),
('db122d64a0df4707a9542b7d90dd081b', 'Helsingør - Klostermosevej', 'Klostermosevej 103, 3000 Helsingør', 56.0240180, 12.5718630, '7-22', 2, 2, 2, 0, 0, 0, 2.60, 2.55, '1', '/helsingor-klostermosevej/', '/2021/11/28140219/2-vask.png'),
('e78f2822be364f64944d6511c9b83dfa', 'Skive - Øster Fælled vej', 'Øster Fælled vej 4, 7800 Skive', 56.5615666, 9.0395673, '7-22', 2, 2, 0, 0, 2, 0, 2.60, 2.55, '2', '/skive-oster-faelled-vej/', '/2021/11/28140216/2_2.png'),
('edbf921d61af4c5b8439a9fa4abc70b0', 'Brande - Vestergårdsvej', 'Vestergårdsvej 3, 7330 Brande', 55.9606470, 9.1034260, '7-22', 1, 1, 0, 0, 0, 0, 2.60, 2.55, '2', '/brande-vestergardsvej/', '/2021/11/28140220/1-vaskehal.jpg-1.png'),
('f1702b0dbd6c4c9a8e9d2510bfaadca1', 'Kolding - Vejlevej 132', 'Vejlevej 132, 6000 Kolding', 55.5040386, 9.4582265, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.55, '2', '/kolding-vejlevej/', '/2021/11/28140221/2-vaskehaller.jpg.png'),
('f29757998589452a9917f211bb5746f0', 'Svendborg - Nyborgvej', 'Nyborgvej 4, 5700 Svendborg', 55.0628931, 10.6185919, '7-22', 2, 2, 0, 0, 0, 0, 2.60, 2.58, '3', '/svendborg-nyborgvej/', '/2021/11/28140216/2_2.png'),
('f5ebdf5b067e4248b85bea5a2169769e', 'Viby - Gunnar Clausens vej', 'Gunnar Clausens Vej 2A, 8260 Viby', 56.1113730, 10.1250330, '7-22', 2, 2, 1, 0, 0, 0, 2.60, 2.55, '2', '/viby-gunnar-clausens-vej/', '/2021/11/28140220/Ikke-navngivet-1-4.png'),
('ff29d462ff2a41efafb51edf9a2d807e', 'Odense V - Bystævnevej', 'Bystævnevej 5, 5200 Odense', 55.3950257, 10.3465247, '7-22', 3, 3, 2, 0, 2, 0, 2.60, 2.55, '3', '/odense-v-bystaevnevej/', '/2021/11/28140218/3.png');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `models`
--

CREATE TABLE `models` (
  `model_pk` char(32) NOT NULL,
  `brand_fk` char(32) NOT NULL,
  `model_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Data dump for tabellen `models`
--

INSERT INTO `models` (`model_pk`, `brand_fk`, `model_name`) VALUES
('55cbfe908f9246e4969941ddcd993542', '7bbcd63ef50c4e73afddabdc2f085cb9', 'Golf');

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

--
-- Data dump for tabellen `regions`
--

INSERT INTO `regions` (`region_pk`, `region_name`) VALUES
('1', 'Sjælland'),
('2', 'Jylland'),
('3', 'Fyn');

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
('41b9383ed3b240cea9c327b01918564d', 'Bob', 'Marley', 'bob@marley.com', '12345', 1778057276, NULL, NULL, NULL, NULL, NULL, NULL),
('c633870018c741b1a09e299a732c0c85', 'John1', 'Johnson1', 'john1@john.com', 'scrypt:32768:8:1$GqXDLzWCfqNUHGqj$696446430630f185ba518bac298dc87623ed34dee82d4e405664d0fb8c4246a3bf7e0cc297802f5e0c4a16cef7b7d0a80b2973d95c92c4ad207e86cbd98e36ab', 1778089426, 0, 0, 0, 0, '4bf90a46e09c406f810418ae29aae888', '627d0ad37acb4d3dab0d3fa483f7142f'),
('d4b89fc72b6e4babb8b0235a0257c43d', 'John2', 'Johnson2', 'john22@stud.ek.dk', 'scrypt:32768:8:1$iXOCJTbsjc5FxugV$9b3b7f75cdaf0523641ce35f83a984b9a6ffd358c3ff08e2a244313df7f11aac3db40508371252e5d94e180247c3c442693869b13f6a4185823ce2c341337cf7', 1778144718, 0, 0, 0, 0, '6bad24ff9d0f44f0b98fc8b361bca52b', 'a5f085c74cbe4d3987820076db329c6d'),
('d94290b9ee2846c7a2b40db263eb76bd', 'John2', 'Johnson2', 'masi0001@stud.ek.dk', 'scrypt:32768:8:1$HzXppg0pK4GThqHX$53c12376ea2a3d8300ae5606d6833d09ead7bff99508b2d024f9b63239e4c47f524ab46fbbb28f7924a3a51649cc8f589192c82f3afde7d01601aa3444701e4b', 1778092970, 0, 0, 0, 0, '16dc6ab08d36418e890d4e18726d44f9', 'f24358d5dbae4f44a83ab0c4df4a8c18'),
('e088541b09e34e54b58f3377ab86507b', 'John2', 'Johnson2', 'john2@stud.ek.dk', 'scrypt:32768:8:1$0PkmHnRBQKBrQfNG$cf2eb48fdea4ecfe1fff64a967098ee477f3df55cc2f64f6f258d6389682c0aadc3819ac6b37bb74d299c3f21004f6ed5019a5e08d544af04e577e48eee69e7c', 1778144705, 0, 0, 0, 0, 'e4aa1bc40c9a445ba1330556efeede39', '6524ebe3c0b64ec98efcda6b312cb029'),
('e5967722bf2f47c48597b5085c49b8c5', 'John', 'Johnson', 'john@john.com', 'scrypt:32768:8:1$jFdezWG5Dy1qhdje$9489f0889ed727995c546a0e9706da1a5c906c30e0b4ff20b59f68ce694ca2c96cf8cfed257e3834fda6e27d60d73aa47a437b596fe703ba09a0423fe8afbe4f', 1778089271, 0, 0, 0, 0, 'f9464edd40a44e90895be9abb0bf119e', '5db11f4264c24ade9ca21ed0c51a7a55');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `washes`
--

CREATE TABLE `washes` (
  `wash_pk` char(1) NOT NULL,
  `wash_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Data dump for tabellen `washes`
--

INSERT INTO `washes` (`wash_pk`, `wash_name`) VALUES
('1', 'Guld'),
('2', 'Premium'),
('3', 'Brilliant');

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
  ADD KEY `idx_subscriptions_location` (`location_fk`),
  ADD KEY `fk_subscriptions_car` (`car_fk`);

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
  ADD CONSTRAINT `fk_subscriptions_car` FOREIGN KEY (`car_fk`) REFERENCES `cars` (`car_pk`),
  ADD CONSTRAINT `fk_subscriptions_location` FOREIGN KEY (`location_fk`) REFERENCES `locations` (`location_pk`),
  ADD CONSTRAINT `fk_subscriptions_wash` FOREIGN KEY (`wash_fk`) REFERENCES `washes` (`wash_pk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
