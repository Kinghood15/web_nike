-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2022 at 04:50 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nike_clone`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `token` longtext NOT NULL,
  `phone` varchar(11) NOT NULL,
  `url_avatar` longtext NOT NULL,
  `create_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `update_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `display_name` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(11) NOT NULL,
  `name_category_product` text NOT NULL,
  `description` text NOT NULL,
  `type` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `name_category_product`, `description`, `type`, `create_at`, `update_at`) VALUES
(1, 'men', 'Men', 0, '2022-11-08 06:36:08', '2022-11-08 06:36:08'),
(2, 'Women', 'women', 0, '2022-11-12 07:44:50', '2022-11-12 07:44:50'),
(3, 'Children', 'children', 0, '2022-11-12 07:44:50', '2022-11-12 07:44:50'),
(4, 'LGBT', 'lgbt', 0, '2022-11-12 07:45:39', '2022-11-12 07:45:39'),
(5, 'Customise', 'Customise', 0, '2022-11-12 07:45:39', '2022-11-12 07:45:39');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name_event` text NOT NULL,
  `url_event` text NOT NULL,
  `description_event` text NOT NULL,
  `type` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name_product` text NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `view_buy` int(11) NOT NULL,
  `url` text NOT NULL,
  `urlImageProduct_4` text DEFAULT NULL,
  `urlImageProduct_3` text DEFAULT NULL,
  `urlImageProduct_2` text DEFAULT NULL,
  `urlImageProduct_1` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `keyword` text NOT NULL,
  `number_product_sale` int(11) NOT NULL,
  `id_category_product` int(11) NOT NULL,
  `create_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `name_slug` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name_product`, `price`, `discount`, `description`, `view_buy`, `url`, `urlImageProduct_4`, `urlImageProduct_3`, `urlImageProduct_2`, `urlImageProduct_1`, `status`, `keyword`, `number_product_sale`, `id_category_product`, `create_at`, `update_at`, `name_slug`) VALUES
(1, 'Nike Air Force 1', 130, 10, 'Anything', 1, 'images/air-force-1-white.png', NULL, NULL, NULL, '', 1, 'Admin', 50, 1, '2022-11-08 06:34:09', '2022-11-08 06:34:09', 'nike_air_force_1_white'),
(2, 'Fluoxetine', 88, 53, '0', 6, 'http://dummyimage.com/141x238.png/cc0000/ffffff', 'http://dummyimage.com/108x118.png/dddddd/000000', 'http://dummyimage.com/231x202.png/cc0000/ffffff', 'http://dummyimage.com/187x234.png/cc0000/ffffff', 'http://dummyimage.com/128x236.png/cc0000/ffffff', 0, 'admin', 130, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'multi-tasking'),
(3, 'Dawnmist Deodorant', 243, 54, '1', 63, 'http://dummyimage.com/146x103.png/cc0000/ffffff', 'http://dummyimage.com/218x237.png/cc0000/ffffff', 'http://dummyimage.com/202x168.png/ff4444/ffffff', 'http://dummyimage.com/172x245.png/ff4444/ffffff', 'http://dummyimage.com/102x221.png/ff4444/ffffff', 0, 'admin', 91, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'transitional'),
(4, 'Skintegrity Antibacterial Hand', 324, 31, '0', 70, 'http://dummyimage.com/179x160.png/cc0000/ffffff', 'http://dummyimage.com/222x184.png/5fa2dd/ffffff', 'http://dummyimage.com/189x137.png/cc0000/ffffff', 'http://dummyimage.com/228x152.png/ff4444/ffffff', 'http://dummyimage.com/209x173.png/ff4444/ffffff', 0, 'admin', 144, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Fully-configurable'),
(5, 'HAUTE PROTECTION High Protection Tinted Compact BROAD SPECTRUM SPF 50 HONEY', 164, 58, '0', 43, 'http://dummyimage.com/200x160.png/5fa2dd/ffffff', 'http://dummyimage.com/140x127.png/dddddd/000000', 'http://dummyimage.com/164x129.png/ff4444/ffffff', 'http://dummyimage.com/183x137.png/ff4444/ffffff', 'http://dummyimage.com/165x235.png/5fa2dd/ffffff', 0, 'admin', 470, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'analyzing'),
(6, 'Dry Cough', 38, 98, '0', 50, 'http://dummyimage.com/141x156.png/5fa2dd/ffffff', 'http://dummyimage.com/194x147.png/5fa2dd/ffffff', 'http://dummyimage.com/199x148.png/dddddd/000000', 'http://dummyimage.com/179x245.png/ff4444/ffffff', 'http://dummyimage.com/136x164.png/cc0000/ffffff', 0, 'admin', 202, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'archive'),
(7, 'TYLENOL Cold And Flu', 28, 19, '1', 100, 'http://dummyimage.com/245x169.png/dddddd/000000', 'http://dummyimage.com/186x230.png/cc0000/ffffff', 'http://dummyimage.com/212x159.png/dddddd/000000', 'http://dummyimage.com/139x207.png/cc0000/ffffff', 'http://dummyimage.com/160x130.png/dddddd/000000', 0, 'admin', 94, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Progressive'),
(8, 'OXY', 41, 95, '0', 24, 'http://dummyimage.com/207x136.png/ff4444/ffffff', 'http://dummyimage.com/169x121.png/cc0000/ffffff', 'http://dummyimage.com/184x113.png/5fa2dd/ffffff', 'http://dummyimage.com/121x190.png/dddddd/000000', 'http://dummyimage.com/181x168.png/5fa2dd/ffffff', 0, 'admin', 418, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'zero defect'),
(9, 'Citrus Cydonia 3', 198, 88, '1', 64, 'http://dummyimage.com/231x208.png/dddddd/000000', 'http://dummyimage.com/180x168.png/dddddd/000000', 'http://dummyimage.com/130x151.png/ff4444/ffffff', 'http://dummyimage.com/102x152.png/5fa2dd/ffffff', 'http://dummyimage.com/233x223.png/dddddd/000000', 0, 'admin', 132, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'background'),
(10, 'Triaminic', 148, 7, '0', 33, 'http://dummyimage.com/123x232.png/dddddd/000000', 'http://dummyimage.com/173x233.png/dddddd/000000', 'http://dummyimage.com/116x148.png/cc0000/ffffff', 'http://dummyimage.com/248x207.png/cc0000/ffffff', 'http://dummyimage.com/104x152.png/dddddd/000000', 1, 'admin', 209, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'infrastructure'),
(11, 'Pramipexole Dihydrochloride', 343, 7, '0', 57, 'http://dummyimage.com/209x100.png/cc0000/ffffff', 'http://dummyimage.com/169x118.png/dddddd/000000', 'http://dummyimage.com/178x172.png/dddddd/000000', 'http://dummyimage.com/240x140.png/ff4444/ffffff', 'http://dummyimage.com/226x242.png/ff4444/ffffff', 0, 'admin', 160, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'mobile'),
(12, 'SUKANG Alcohol Prep Pads Medium', 64, 56, '1', 21, 'http://dummyimage.com/180x245.png/dddddd/000000', 'http://dummyimage.com/175x208.png/5fa2dd/ffffff', 'http://dummyimage.com/215x173.png/ff4444/ffffff', 'http://dummyimage.com/144x128.png/cc0000/ffffff', 'http://dummyimage.com/149x205.png/dddddd/000000', 1, 'admin', 244, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Focused'),
(13, 'FertiPlex', 171, 61, '0', 36, 'http://dummyimage.com/132x117.png/ff4444/ffffff', 'http://dummyimage.com/237x130.png/5fa2dd/ffffff', 'http://dummyimage.com/195x186.png/5fa2dd/ffffff', 'http://dummyimage.com/165x154.png/cc0000/ffffff', 'http://dummyimage.com/226x197.png/ff4444/ffffff', 1, 'admin', 421, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'optimal'),
(14, 'Pain Relief', 288, 84, '0', 78, 'http://dummyimage.com/229x165.png/5fa2dd/ffffff', 'http://dummyimage.com/121x201.png/5fa2dd/ffffff', 'http://dummyimage.com/146x170.png/cc0000/ffffff', 'http://dummyimage.com/214x191.png/cc0000/ffffff', 'http://dummyimage.com/190x234.png/ff4444/ffffff', 1, 'admin', 230, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'holistic'),
(15, 'Acyclovir', 485, 30, '0', 38, 'http://dummyimage.com/198x166.png/ff4444/ffffff', 'http://dummyimage.com/139x199.png/dddddd/000000', 'http://dummyimage.com/185x122.png/ff4444/ffffff', 'http://dummyimage.com/206x215.png/5fa2dd/ffffff', 'http://dummyimage.com/192x247.png/dddddd/000000', 1, 'admin', 120, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'matrices'),
(16, 'Colgate', 81, 41, '0', 43, 'http://dummyimage.com/138x186.png/dddddd/000000', 'http://dummyimage.com/199x178.png/cc0000/ffffff', 'http://dummyimage.com/196x226.png/dddddd/000000', 'http://dummyimage.com/166x112.png/ff4444/ffffff', 'http://dummyimage.com/150x228.png/ff4444/ffffff', 0, 'admin', 52, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Organized'),
(17, 'Dilantin', 250, 95, '0', 11, 'http://dummyimage.com/202x103.png/ff4444/ffffff', 'http://dummyimage.com/213x133.png/cc0000/ffffff', 'http://dummyimage.com/186x220.png/cc0000/ffffff', 'http://dummyimage.com/221x202.png/cc0000/ffffff', 'http://dummyimage.com/119x105.png/cc0000/ffffff', 0, 'admin', 456, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '3rd generation'),
(18, 'Naproxen', 408, 41, '0', 79, 'http://dummyimage.com/123x201.png/cc0000/ffffff', 'http://dummyimage.com/207x141.png/5fa2dd/ffffff', 'http://dummyimage.com/237x151.png/cc0000/ffffff', 'http://dummyimage.com/234x125.png/cc0000/ffffff', 'http://dummyimage.com/234x117.png/ff4444/ffffff', 1, 'admin', 465, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'object-oriented'),
(19, 'Hoarse Cough', 159, 79, '1', 4, 'http://dummyimage.com/132x107.png/cc0000/ffffff', 'http://dummyimage.com/188x248.png/5fa2dd/ffffff', 'http://dummyimage.com/176x128.png/5fa2dd/ffffff', 'http://dummyimage.com/228x213.png/dddddd/000000', 'http://dummyimage.com/112x216.png/cc0000/ffffff', 0, 'admin', 360, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Implemented'),
(20, 'Covergirl Outlast Stay Fabulous 3in1 Foundation', 233, 27, '0', 100, 'http://dummyimage.com/170x245.png/cc0000/ffffff', 'http://dummyimage.com/168x191.png/cc0000/ffffff', 'http://dummyimage.com/173x127.png/dddddd/000000', 'http://dummyimage.com/174x126.png/dddddd/000000', 'http://dummyimage.com/124x132.png/ff4444/ffffff', 0, 'admin', 324, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'modular'),
(21, 'Fluoxetine Hydrochloride', 257, 58, '1', 93, 'http://dummyimage.com/140x236.png/dddddd/000000', 'http://dummyimage.com/202x133.png/5fa2dd/ffffff', 'http://dummyimage.com/115x170.png/ff4444/ffffff', 'http://dummyimage.com/198x114.png/ff4444/ffffff', 'http://dummyimage.com/217x199.png/5fa2dd/ffffff', 0, 'admin', 200, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'systemic'),
(22, 'oxygen', 26, 21, '0', 8, 'http://dummyimage.com/192x196.png/dddddd/000000', 'http://dummyimage.com/145x150.png/dddddd/000000', 'http://dummyimage.com/217x172.png/cc0000/ffffff', 'http://dummyimage.com/246x201.png/5fa2dd/ffffff', 'http://dummyimage.com/177x235.png/5fa2dd/ffffff', 0, 'admin', 441, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Balanced'),
(23, 'Pecan Nut', 314, 89, '1', 12, 'http://dummyimage.com/103x115.png/ff4444/ffffff', 'http://dummyimage.com/222x128.png/ff4444/ffffff', 'http://dummyimage.com/229x234.png/cc0000/ffffff', 'http://dummyimage.com/198x185.png/dddddd/000000', 'http://dummyimage.com/188x165.png/cc0000/ffffff', 1, 'admin', 427, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'forecast'),
(24, 'Clonidine Hydrochloride', 50, 55, '0', 89, 'http://dummyimage.com/201x249.png/5fa2dd/ffffff', 'http://dummyimage.com/129x126.png/cc0000/ffffff', 'http://dummyimage.com/140x126.png/ff4444/ffffff', 'http://dummyimage.com/159x103.png/dddddd/000000', 'http://dummyimage.com/186x146.png/cc0000/ffffff', 1, 'admin', 11, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Pre-emptive'),
(25, 'FOAMING HAND SANITIZER', 475, 85, '0', 98, 'http://dummyimage.com/183x221.png/ff4444/ffffff', 'http://dummyimage.com/105x126.png/ff4444/ffffff', 'http://dummyimage.com/204x210.png/cc0000/ffffff', 'http://dummyimage.com/240x188.png/cc0000/ffffff', 'http://dummyimage.com/168x200.png/dddddd/000000', 0, 'admin', 80, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'mission-critical'),
(26, 'berkley and jensen acid reducer', 281, 47, '0', 90, 'http://dummyimage.com/128x195.png/ff4444/ffffff', 'http://dummyimage.com/193x221.png/dddddd/000000', 'http://dummyimage.com/120x141.png/5fa2dd/ffffff', 'http://dummyimage.com/142x242.png/5fa2dd/ffffff', 'http://dummyimage.com/193x114.png/dddddd/000000', 0, 'admin', 76, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'orchestration'),
(27, 'Eye Wash', 8, 69, '0', 47, 'http://dummyimage.com/249x183.png/dddddd/000000', 'http://dummyimage.com/153x123.png/5fa2dd/ffffff', 'http://dummyimage.com/231x138.png/cc0000/ffffff', 'http://dummyimage.com/145x147.png/cc0000/ffffff', 'http://dummyimage.com/136x128.png/cc0000/ffffff', 0, 'admin', 355, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'contextually-based'),
(28, 'Bupropion hydrochloride', 444, 19, '1', 51, 'http://dummyimage.com/101x129.png/ff4444/ffffff', 'http://dummyimage.com/134x164.png/ff4444/ffffff', 'http://dummyimage.com/194x109.png/dddddd/000000', 'http://dummyimage.com/246x161.png/ff4444/ffffff', 'http://dummyimage.com/214x239.png/dddddd/000000', 1, 'admin', 441, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'leading edge'),
(29, 'pharMAX rebuild', 202, 41, '0', 29, 'http://dummyimage.com/141x162.png/5fa2dd/ffffff', 'http://dummyimage.com/164x220.png/ff4444/ffffff', 'http://dummyimage.com/155x125.png/cc0000/ffffff', 'http://dummyimage.com/162x176.png/cc0000/ffffff', 'http://dummyimage.com/249x162.png/cc0000/ffffff', 1, 'admin', 296, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Extended'),
(30, 'KINKAN', 469, 34, '0', 88, 'http://dummyimage.com/246x110.png/cc0000/ffffff', 'http://dummyimage.com/106x194.png/ff4444/ffffff', 'http://dummyimage.com/102x150.png/ff4444/ffffff', 'http://dummyimage.com/169x125.png/ff4444/ffffff', 'http://dummyimage.com/180x222.png/ff4444/ffffff', 1, 'admin', 61, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Team-oriented');

-- --------------------------------------------------------

--
-- Table structure for table `sub_menu`
--

CREATE TABLE `sub_menu` (
  `id` int(11) NOT NULL,
  `name_sub_menu` text NOT NULL,
  `id_category_product` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category_product` (`id_category_product`);

--
-- Indexes for table `sub_menu`
--
ALTER TABLE `sub_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_menu` (`id_category_product`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sub_menu`
--
ALTER TABLE `sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_category_product`) REFERENCES `category_product` (`id`);

--
-- Constraints for table `sub_menu`
--
ALTER TABLE `sub_menu`
  ADD CONSTRAINT `sub_menu_ibfk_1` FOREIGN KEY (`id_category_product`) REFERENCES `menu` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
