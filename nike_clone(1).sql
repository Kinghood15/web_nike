-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2022 at 10:23 PM
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
(1, 'Putnem', 4730431, 13, 'sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem', 677, 'https://picsum.photos/id/734/300/300', 'https://picsum.photos/id/967/103/191', 'https://picsum.photos/id/683/139/213', 'https://picsum.photos/id/803/166/149', 'https://picsum.photos/id/41/100/100', 1, 'admin', 422, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Future-proofed'),
(2, 'Rockwell', 42091436, 39, 'justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 7, 'https://picsum.photos/id/219/300/300', 'https://picsum.photos/id/450/231/135', 'https://picsum.photos/id/456/172/231', 'https://picsum.photos/id/664/186/185', 'https://picsum.photos/id/259/100/100', 1, 'admin', 625, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Team-oriented'),
(3, 'Welbie', 90167916, 33, 'pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin', 114, 'https://picsum.photos/id/165/300/300', 'https://picsum.photos/id/126/227/270', 'https://picsum.photos/id/288/192/137', 'https://picsum.photos/id/210/111/179', 'https://picsum.photos/id/29/100/100', 0, 'admin', 611, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'clear-thinking'),
(4, 'Teresita', 79202340, 9, 'ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla', 352, 'https://picsum.photos/id/972/300/300', 'https://picsum.photos/id/798/191/190', 'https://picsum.photos/id/177/102/164', 'https://picsum.photos/id/782/199/185', 'https://picsum.photos/id/666/100/100', 0, 'admin', 745, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'next generation'),
(5, 'Eugenius', 14387026, 18, 'sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum', 7, 'https://picsum.photos/id/635/300/300', 'https://picsum.photos/id/507/127/298', 'https://picsum.photos/id/653/181/295', 'https://picsum.photos/id/259/201/169', 'https://picsum.photos/id/408/100/100', 0, 'admin', 833, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Enterprise-wide'),
(6, 'Elaine', 26231011, 28, 'sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus', 245, 'https://picsum.photos/id/563/300/300', 'https://picsum.photos/id/876/124/109', 'https://picsum.photos/id/132/173/133', 'https://picsum.photos/id/974/155/155', 'https://picsum.photos/id/577/100/100', 1, 'admin', 832, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'encryption'),
(7, 'Ola', 3272322, 29, 'quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce', 365, 'https://picsum.photos/id/973/300/300', 'https://picsum.photos/id/264/238/108', 'https://picsum.photos/id/222/172/183', 'https://picsum.photos/id/685/238/199', 'https://picsum.photos/id/191/100/100', 1, 'admin', 527, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Devolved'),
(8, 'Banky', 36369416, 14, 'iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus', 546, 'https://picsum.photos/id/415/300/300', 'https://picsum.photos/id/798/116/192', 'https://picsum.photos/id/234/168/160', 'https://picsum.photos/id/788/134/128', 'https://picsum.photos/id/363/100/100', 0, 'admin', 127, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'firmware'),
(9, 'Tito', 85683292, 14, 'quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in', 556, 'https://picsum.photos/id/798/300/300', 'https://picsum.photos/id/892/134/219', 'https://picsum.photos/id/478/114/269', 'https://picsum.photos/id/948/241/189', 'https://picsum.photos/id/222/100/100', 0, 'admin', 545, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'web-enabled'),
(10, 'Pascal', 44796648, 38, 'duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer', 884, 'https://picsum.photos/id/994/300/300', 'https://picsum.photos/id/28/240/164', 'https://picsum.photos/id/509/130/120', 'https://picsum.photos/id/631/187/129', 'https://picsum.photos/id/427/100/100', 1, 'admin', 976, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'collaboration'),
(11, 'Carolus', 45554318, 24, 'in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis', 852, 'https://picsum.photos/id/679/300/300', 'https://picsum.photos/id/347/187/201', 'https://picsum.photos/id/604/150/193', 'https://picsum.photos/id/692/163/143', 'https://picsum.photos/id/308/100/100', 1, 'admin', 73, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'support'),
(12, 'Osbert', 20995692, 29, 'rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus', 109, 'https://picsum.photos/id/298/300/300', 'https://picsum.photos/id/104/170/256', 'https://picsum.photos/id/540/107/189', 'https://picsum.photos/id/319/150/100', 'https://picsum.photos/id/133/100/100', 1, 'admin', 685, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'task-force'),
(13, 'Sandor', 70323184, 36, 'eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis', 765, 'https://picsum.photos/id/465/300/300', 'https://picsum.photos/id/198/134/236', 'https://picsum.photos/id/601/162/229', 'https://picsum.photos/id/923/206/199', 'https://picsum.photos/id/953/100/100', 1, 'admin', 248, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'needs-based'),
(14, 'Gertrude', 70910165, 38, 'in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in', 603, 'https://picsum.photos/id/99/300/300', 'https://picsum.photos/id/632/283/274', 'https://picsum.photos/id/91/180/227', 'https://picsum.photos/id/405/264/168', 'https://picsum.photos/id/518/100/100', 1, 'admin', 201, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'hierarchy'),
(15, 'Lanae', 36785735, 40, 'nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin', 154, 'https://picsum.photos/id/576/300/300', 'https://picsum.photos/id/285/239/170', 'https://picsum.photos/id/691/129/215', 'https://picsum.photos/id/300/243/186', 'https://picsum.photos/id/424/100/100', 1, 'admin', 35, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'frame'),
(16, 'Krispin', 70799209, 27, 'morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum', 776, 'https://picsum.photos/id/311/300/300', 'https://picsum.photos/id/565/253/195', 'https://picsum.photos/id/434/151/119', 'https://picsum.photos/id/974/204/114', 'https://picsum.photos/id/847/100/100', 0, 'admin', 744, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'alliance'),
(17, 'Vilhelmina', 24849550, 27, 'in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est', 164, 'https://picsum.photos/id/724/300/300', 'https://picsum.photos/id/143/259/271', 'https://picsum.photos/id/89/185/300', 'https://picsum.photos/id/379/162/156', 'https://picsum.photos/id/454/100/100', 1, 'admin', 695, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'content-based'),
(18, 'Marris', 12670175, 10, 'ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem', 125, 'https://picsum.photos/id/430/300/300', 'https://picsum.photos/id/718/129/148', 'https://picsum.photos/id/952/111/147', 'https://picsum.photos/id/540/104/124', 'https://picsum.photos/id/357/100/100', 0, 'admin', 429, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'local'),
(19, 'Isobel', 42842760, 38, 'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec', 78, 'https://picsum.photos/id/680/300/300', 'https://picsum.photos/id/507/297/104', 'https://picsum.photos/id/80/100/206', 'https://picsum.photos/id/431/108/155', 'https://picsum.photos/id/217/100/100', 0, 'admin', 988, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Devolved'),
(20, 'Barbara-anne', 55694918, 8, 'justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis', 852, 'https://picsum.photos/id/836/300/300', 'https://picsum.photos/id/57/132/212', 'https://picsum.photos/id/275/130/217', 'https://picsum.photos/id/144/231/101', 'https://picsum.photos/id/707/100/100', 1, 'admin', 97, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'open architecture'),
(21, 'Mallissa', 73910194, 11, 'nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem', 195, 'https://picsum.photos/id/283/300/300', 'https://picsum.photos/id/863/106/163', 'https://picsum.photos/id/841/111/118', 'https://picsum.photos/id/31/178/152', 'https://picsum.photos/id/10/100/100', 0, 'admin', 954, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Enhanced'),
(22, 'Frasco', 69079740, 31, 'lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus', 987, 'https://picsum.photos/id/916/300/300', 'https://picsum.photos/id/99/183/262', 'https://picsum.photos/id/456/118/297', 'https://picsum.photos/id/781/260/156', 'https://picsum.photos/id/164/100/100', 0, 'admin', 86, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Versatile'),
(23, 'Ibby', 2093491, 19, 'at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl', 439, 'https://picsum.photos/id/102/300/300', 'https://picsum.photos/id/267/287/178', 'https://picsum.photos/id/208/191/269', 'https://picsum.photos/id/738/142/129', 'https://picsum.photos/id/932/100/100', 1, 'admin', 944, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'product'),
(24, 'Karney', 8201700, 22, 'hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum', 764, 'https://picsum.photos/id/430/300/300', 'https://picsum.photos/id/676/171/278', 'https://picsum.photos/id/210/158/236', 'https://picsum.photos/id/729/150/151', 'https://picsum.photos/id/662/100/100', 1, 'admin', 486, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'protocol'),
(25, 'Hailee', 78419539, 16, 'id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis', 59, 'https://picsum.photos/id/943/300/300', 'https://picsum.photos/id/629/208/190', 'https://picsum.photos/id/862/118/242', 'https://picsum.photos/id/827/247/139', 'https://picsum.photos/id/592/100/100', 0, 'admin', 907, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'interactive'),
(26, 'Elonore', 631734, 36, 'in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', 452, 'https://picsum.photos/id/73/300/300', 'https://picsum.photos/id/50/154/293', 'https://picsum.photos/id/232/119/292', 'https://picsum.photos/id/463/263/131', 'https://picsum.photos/id/399/100/100', 0, 'admin', 758, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Secured'),
(27, 'Hatti', 57621292, 27, 'eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo', 71, 'https://picsum.photos/id/45/300/300', 'https://picsum.photos/id/444/201/141', 'https://picsum.photos/id/465/184/162', 'https://picsum.photos/id/536/249/115', 'https://picsum.photos/id/207/100/100', 1, 'admin', 111, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Reduced'),
(28, 'Willa', 90972506, 33, 'ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis', 433, 'https://picsum.photos/id/258/300/300', 'https://picsum.photos/id/255/131/284', 'https://picsum.photos/id/729/169/300', 'https://picsum.photos/id/80/194/140', 'https://picsum.photos/id/56/100/100', 1, 'admin', 408, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'parallelism'),
(29, 'Wilone', 93893649, 4, 'primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse', 909, 'https://picsum.photos/id/136/300/300', 'https://picsum.photos/id/643/297/281', 'https://picsum.photos/id/438/150/151', 'https://picsum.photos/id/256/246/167', 'https://picsum.photos/id/381/100/100', 0, 'admin', 226, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'local area network'),
(30, 'Ray', 80822272, 23, 'ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec', 997, 'https://picsum.photos/id/134/300/300', 'https://picsum.photos/id/756/177/133', 'https://picsum.photos/id/81/135/151', 'https://picsum.photos/id/507/228/188', 'https://picsum.photos/id/355/100/100', 0, 'admin', 604, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Ergonomic'),
(31, 'Greggory', 84273788, 28, 'cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in', 579, 'https://picsum.photos/id/588/300/300', 'https://picsum.photos/id/510/113/105', 'https://picsum.photos/id/343/154/123', 'https://picsum.photos/id/735/201/102', 'https://picsum.photos/id/18/100/100', 1, 'admin', 168, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Advanced'),
(32, 'Lilly', 42472181, 21, 'convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at', 618, 'https://picsum.photos/id/906/300/300', 'https://picsum.photos/id/725/102/141', 'https://picsum.photos/id/414/145/243', 'https://picsum.photos/id/334/140/155', 'https://picsum.photos/id/315/100/100', 1, 'admin', 27, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'application'),
(33, 'Jacynth', 39929171, 34, 'quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat', 340, 'https://picsum.photos/id/518/300/300', 'https://picsum.photos/id/76/224/172', 'https://picsum.photos/id/799/182/188', 'https://picsum.photos/id/14/294/113', 'https://picsum.photos/id/813/100/100', 1, 'admin', 530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'archive'),
(34, 'Hailey', 65979670, 34, 'consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede', 12, 'https://picsum.photos/id/402/300/300', 'https://picsum.photos/id/443/262/107', 'https://picsum.photos/id/649/129/122', 'https://picsum.photos/id/888/218/198', 'https://picsum.photos/id/331/100/100', 0, 'admin', 645, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'service-desk'),
(35, 'Chadwick', 50768962, 40, 'eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue', 197, 'https://picsum.photos/id/574/300/300', 'https://picsum.photos/id/700/250/159', 'https://picsum.photos/id/587/152/220', 'https://picsum.photos/id/226/119/153', 'https://picsum.photos/id/281/100/100', 1, 'admin', 901, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Diverse'),
(36, 'Denis', 35714723, 25, 'libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in', 877, 'https://picsum.photos/id/459/300/300', 'https://picsum.photos/id/573/164/147', 'https://picsum.photos/id/750/165/231', 'https://picsum.photos/id/355/170/132', 'https://picsum.photos/id/897/100/100', 1, 'admin', 899, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'adapter'),
(37, 'Caddric', 72930445, 12, 'dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi', 380, 'https://picsum.photos/id/37/300/300', 'https://picsum.photos/id/909/161/217', 'https://picsum.photos/id/777/111/140', 'https://picsum.photos/id/703/217/163', 'https://picsum.photos/id/574/100/100', 1, 'admin', 687, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'didactic'),
(38, 'Hilario', 72616066, 3, 'proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat', 335, 'https://picsum.photos/id/301/300/300', 'https://picsum.photos/id/61/201/196', 'https://picsum.photos/id/389/138/190', 'https://picsum.photos/id/434/148/138', 'https://picsum.photos/id/635/100/100', 1, 'admin', 120, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'system-worthy'),
(39, 'Emmalynne', 41352697, 13, 'fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst', 23, 'https://picsum.photos/id/981/300/300', 'https://picsum.photos/id/505/268/137', 'https://picsum.photos/id/403/114/163', 'https://picsum.photos/id/119/137/151', 'https://picsum.photos/id/455/100/100', 0, 'admin', 865, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'zero defect'),
(40, 'Gretal', 22149693, 24, 'suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam', 453, 'https://picsum.photos/id/655/300/300', 'https://picsum.photos/id/241/170/196', 'https://picsum.photos/id/619/119/215', 'https://picsum.photos/id/677/266/150', 'https://picsum.photos/id/647/100/100', 0, 'admin', 539, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Enhanced'),
(41, 'Letisha', 37815699, 31, 'convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in', 613, 'https://picsum.photos/id/967/300/300', 'https://picsum.photos/id/373/139/236', 'https://picsum.photos/id/811/157/169', 'https://picsum.photos/id/657/153/188', 'https://picsum.photos/id/732/100/100', 1, 'admin', 159, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'methodology'),
(42, 'Joete', 57254798, 6, 'et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus', 53, 'https://picsum.photos/id/331/300/300', 'https://picsum.photos/id/35/188/132', 'https://picsum.photos/id/869/155/225', 'https://picsum.photos/id/628/163/154', 'https://picsum.photos/id/60/100/100', 1, 'admin', 100, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'groupware'),
(43, 'Rois', 17895762, 9, 'convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna', 766, 'https://picsum.photos/id/514/300/300', 'https://picsum.photos/id/231/137/254', 'https://picsum.photos/id/185/164/186', 'https://picsum.photos/id/876/111/114', 'https://picsum.photos/id/408/100/100', 1, 'admin', 157, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'asymmetric'),
(44, 'Westbrook', 78352173, 2, 'luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum', 725, 'https://picsum.photos/id/552/300/300', 'https://picsum.photos/id/273/134/165', 'https://picsum.photos/id/425/169/161', 'https://picsum.photos/id/920/110/191', 'https://picsum.photos/id/900/100/100', 1, 'admin', 998, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'leverage'),
(45, 'Rhianna', 6171687, 28, 'felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris', 153, 'https://picsum.photos/id/469/300/300', 'https://picsum.photos/id/637/192/180', 'https://picsum.photos/id/45/198/297', 'https://picsum.photos/id/581/139/111', 'https://picsum.photos/id/7/100/100', 1, 'admin', 879, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Adaptive'),
(46, 'Edi', 63362078, 34, 'nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor', 603, 'https://picsum.photos/id/692/300/300', 'https://picsum.photos/id/574/207/273', 'https://picsum.photos/id/277/139/247', 'https://picsum.photos/id/642/211/153', 'https://picsum.photos/id/815/100/100', 1, 'admin', 466, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Multi-tiered'),
(47, 'Roma', 70195980, 0, 'felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum', 871, 'https://picsum.photos/id/37/300/300', 'https://picsum.photos/id/693/115/127', 'https://picsum.photos/id/289/101/212', 'https://picsum.photos/id/756/288/124', 'https://picsum.photos/id/233/100/100', 1, 'admin', 430, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'budgetary management'),
(48, 'Smith', 84001031, 38, 'feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum', 670, 'https://picsum.photos/id/103/300/300', 'https://picsum.photos/id/927/170/177', 'https://picsum.photos/id/637/141/245', 'https://picsum.photos/id/352/286/196', 'https://picsum.photos/id/601/100/100', 0, 'admin', 614, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Sharable'),
(49, 'Brander', 28875407, 9, 'morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque', 371, 'https://picsum.photos/id/505/300/300', 'https://picsum.photos/id/49/145/190', 'https://picsum.photos/id/421/145/218', 'https://picsum.photos/id/158/220/138', 'https://picsum.photos/id/558/100/100', 1, 'admin', 291, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'human-resource'),
(50, 'Deny', 58813818, 40, 'proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam', 806, 'https://picsum.photos/id/969/300/300', 'https://picsum.photos/id/195/247/131', 'https://picsum.photos/id/611/112/166', 'https://picsum.photos/id/848/145/145', 'https://picsum.photos/id/621/100/100', 0, 'admin', 494, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'local area network');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

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
