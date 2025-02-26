-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2025 at 08:15 AM
-- Server version: 11.5.2-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add entertainmentpages', 7, 'add_entertainmentpages'),
(26, 'Can change entertainmentpages', 7, 'change_entertainmentpages'),
(27, 'Can delete entertainmentpages', 7, 'delete_entertainmentpages'),
(28, 'Can view entertainmentpages', 7, 'view_entertainmentpages'),
(29, 'Can add fashionpages', 8, 'add_fashionpages'),
(30, 'Can change fashionpages', 8, 'change_fashionpages'),
(31, 'Can delete fashionpages', 8, 'delete_fashionpages'),
(32, 'Can view fashionpages', 8, 'view_fashionpages'),
(33, 'Can add health productspages', 9, 'add_healthproductspages'),
(34, 'Can change health productspages', 9, 'change_healthproductspages'),
(35, 'Can delete health productspages', 9, 'delete_healthproductspages'),
(36, 'Can view health productspages', 9, 'view_healthproductspages'),
(37, 'Can add home decorpages', 10, 'add_homedecorpages'),
(38, 'Can change home decorpages', 10, 'change_homedecorpages'),
(39, 'Can delete home decorpages', 10, 'delete_homedecorpages'),
(40, 'Can view home decorpages', 10, 'view_homedecorpages'),
(41, 'Can add industrialproductspages', 11, 'add_industrialproductspages'),
(42, 'Can change industrialproductspages', 11, 'change_industrialproductspages'),
(43, 'Can delete industrialproductspages', 11, 'delete_industrialproductspages'),
(44, 'Can view industrialproductspages', 11, 'view_industrialproductspages'),
(45, 'Can add kids toyspages', 12, 'add_kidstoyspages'),
(46, 'Can change kids toyspages', 12, 'change_kidstoyspages'),
(47, 'Can delete kids toyspages', 12, 'delete_kidstoyspages'),
(48, 'Can view kids toyspages', 12, 'view_kidstoyspages'),
(49, 'Can add luggage bagspages', 13, 'add_luggagebagspages'),
(50, 'Can change luggage bagspages', 13, 'change_luggagebagspages'),
(51, 'Can delete luggage bagspages', 13, 'delete_luggagebagspages'),
(52, 'Can view luggage bagspages', 13, 'view_luggagebagspages'),
(53, 'Can add sellerpages', 14, 'add_sellerpages'),
(54, 'Can change sellerpages', 14, 'change_sellerpages'),
(55, 'Can delete sellerpages', 14, 'delete_sellerpages'),
(56, 'Can view sellerpages', 14, 'view_sellerpages'),
(57, 'Can add shoespages', 15, 'add_shoespages'),
(58, 'Can change shoespages', 15, 'change_shoespages'),
(59, 'Can delete shoespages', 15, 'delete_shoespages'),
(60, 'Can view shoespages', 15, 'view_shoespages'),
(61, 'Can add sportspages', 16, 'add_sportspages'),
(62, 'Can change sportspages', 16, 'change_sportspages'),
(63, 'Can delete sportspages', 16, 'delete_sportspages'),
(64, 'Can view sportspages', 16, 'view_sportspages'),
(65, 'Can add watch jewelrypages', 17, 'add_watchjewelrypages'),
(66, 'Can change watch jewelrypages', 17, 'change_watchjewelrypages'),
(67, 'Can delete watch jewelrypages', 17, 'delete_watchjewelrypages'),
(68, 'Can view watch jewelrypages', 17, 'view_watchjewelrypages'),
(69, 'Can add buyerform', 18, 'add_buyerform'),
(70, 'Can change buyerform', 18, 'change_buyerform'),
(71, 'Can delete buyerform', 18, 'delete_buyerform'),
(72, 'Can view buyerform', 18, 'view_buyerform'),
(73, 'Can add paymentform', 19, 'add_paymentform'),
(74, 'Can change paymentform', 19, 'change_paymentform'),
(75, 'Can delete paymentform', 19, 'delete_paymentform'),
(76, 'Can view paymentform', 19, 'view_paymentform'),
(77, 'Can add paymentpage', 19, 'add_paymentpage'),
(78, 'Can change paymentpage', 19, 'change_paymentpage'),
(79, 'Can delete paymentpage', 19, 'delete_paymentpage'),
(80, 'Can view paymentpage', 19, 'view_paymentpage'),
(81, 'Can add payment', 20, 'add_payment'),
(82, 'Can change payment', 20, 'change_payment'),
(83, 'Can delete payment', 20, 'delete_payment'),
(84, 'Can view payment', 20, 'view_payment'),
(85, 'Can add paypage', 21, 'add_paypage'),
(86, 'Can change paypage', 21, 'change_paypage'),
(87, 'Can delete paypage', 21, 'delete_paypage'),
(88, 'Can view paypage', 21, 'view_paypage'),
(89, 'Can add order', 22, 'add_order'),
(90, 'Can change order', 22, 'change_order'),
(91, 'Can delete order', 22, 'delete_order'),
(92, 'Can view order', 22, 'view_order'),
(93, 'Can add cart', 23, 'add_cart'),
(94, 'Can change cart', 23, 'change_cart'),
(95, 'Can delete cart', 23, 'delete_cart'),
(96, 'Can view cart', 23, 'view_cart'),
(97, 'Can add cart item', 24, 'add_cartitem'),
(98, 'Can change cart item', 24, 'change_cartitem'),
(99, 'Can delete cart item', 24, 'delete_cartitem'),
(100, 'Can view cart item', 24, 'view_cartitem'),
(101, 'Can add buyerforms', 25, 'add_buyerforms'),
(102, 'Can change buyerforms', 25, 'change_buyerforms'),
(103, 'Can delete buyerforms', 25, 'delete_buyerforms'),
(104, 'Can view buyerforms', 25, 'view_buyerforms'),
(105, 'Can add fashion item', 26, 'add_fashionitem'),
(106, 'Can change fashion item', 26, 'change_fashionitem'),
(107, 'Can delete fashion item', 26, 'delete_fashionitem'),
(108, 'Can view fashion item', 26, 'view_fashionitem'),
(109, 'Can add cartsitem', 27, 'add_cartsitem'),
(110, 'Can change cartsitem', 27, 'change_cartsitem'),
(111, 'Can delete cartsitem', 27, 'delete_cartsitem'),
(112, 'Can view cartsitem', 27, 'view_cartsitem'),
(113, 'Can add entertainment items', 28, 'add_entertainmentitems'),
(114, 'Can change entertainment items', 28, 'change_entertainmentitems'),
(115, 'Can delete entertainment items', 28, 'delete_entertainmentitems'),
(116, 'Can view entertainment items', 28, 'view_entertainmentitems'),
(117, 'Can add health items', 29, 'add_healthitems'),
(118, 'Can change health items', 29, 'change_healthitems'),
(119, 'Can delete health items', 29, 'delete_healthitems'),
(120, 'Can view health items', 29, 'view_healthitems'),
(121, 'Can add home items', 30, 'add_homeitems'),
(122, 'Can change home items', 30, 'change_homeitems'),
(123, 'Can delete home items', 30, 'delete_homeitems'),
(124, 'Can view home items', 30, 'view_homeitems'),
(125, 'Can add industry items', 31, 'add_industryitems'),
(126, 'Can change industry items', 31, 'change_industryitems'),
(127, 'Can delete industry items', 31, 'delete_industryitems'),
(128, 'Can view industry items', 31, 'view_industryitems'),
(129, 'Can add kids items', 32, 'add_kidsitems'),
(130, 'Can change kids items', 32, 'change_kidsitems'),
(131, 'Can delete kids items', 32, 'delete_kidsitems'),
(132, 'Can view kids items', 32, 'view_kidsitems'),
(133, 'Can add luggage items', 33, 'add_luggageitems'),
(134, 'Can change luggage items', 33, 'change_luggageitems'),
(135, 'Can delete luggage items', 33, 'delete_luggageitems'),
(136, 'Can view luggage items', 33, 'view_luggageitems'),
(137, 'Can add shoes items', 34, 'add_shoesitems'),
(138, 'Can change shoes items', 34, 'change_shoesitems'),
(139, 'Can delete shoes items', 34, 'delete_shoesitems'),
(140, 'Can view shoes items', 34, 'view_shoesitems'),
(141, 'Can add sports items', 35, 'add_sportsitems'),
(142, 'Can change sports items', 35, 'change_sportsitems'),
(143, 'Can delete sports items', 35, 'delete_sportsitems'),
(144, 'Can view sports items', 35, 'view_sportsitems'),
(145, 'Can add watch items', 36, 'add_watchitems'),
(146, 'Can change watch items', 36, 'change_watchitems'),
(147, 'Can delete watch items', 36, 'delete_watchitems'),
(148, 'Can view watch items', 36, 'view_watchitems'),
(149, 'Can add entertainment item', 37, 'add_entertainmentitem'),
(150, 'Can change entertainment item', 37, 'change_entertainmentitem'),
(151, 'Can delete entertainment item', 37, 'delete_entertainmentitem'),
(152, 'Can view entertainment item', 37, 'view_entertainmentitem'),
(153, 'Can add health item', 38, 'add_healthitem'),
(154, 'Can change health item', 38, 'change_healthitem'),
(155, 'Can delete health item', 38, 'delete_healthitem'),
(156, 'Can view health item', 38, 'view_healthitem'),
(157, 'Can add home item', 39, 'add_homeitem'),
(158, 'Can change home item', 39, 'change_homeitem'),
(159, 'Can delete home item', 39, 'delete_homeitem'),
(160, 'Can view home item', 39, 'view_homeitem'),
(161, 'Can add kids item', 40, 'add_kidsitem'),
(162, 'Can change kids item', 40, 'change_kidsitem'),
(163, 'Can delete kids item', 40, 'delete_kidsitem'),
(164, 'Can view kids item', 40, 'view_kidsitem'),
(165, 'Can add luggage item', 41, 'add_luggageitem'),
(166, 'Can change luggage item', 41, 'change_luggageitem'),
(167, 'Can delete luggage item', 41, 'delete_luggageitem'),
(168, 'Can view luggage item', 41, 'view_luggageitem'),
(169, 'Can add shoes item', 42, 'add_shoesitem'),
(170, 'Can change shoes item', 42, 'change_shoesitem'),
(171, 'Can delete shoes item', 42, 'delete_shoesitem'),
(172, 'Can view shoes item', 42, 'view_shoesitem'),
(173, 'Can add sports item', 43, 'add_sportsitem'),
(174, 'Can change sports item', 43, 'change_sportsitem'),
(175, 'Can delete sports item', 43, 'delete_sportsitem'),
(176, 'Can view sports item', 43, 'view_sportsitem'),
(177, 'Can add watch item', 44, 'add_watchitem'),
(178, 'Can change watch item', 44, 'change_watchitem'),
(179, 'Can delete watch item', 44, 'delete_watchitem'),
(180, 'Can view watch item', 44, 'view_watchitem'),
(181, 'Can add industry item', 45, 'add_industryitem'),
(182, 'Can change industry item', 45, 'change_industryitem'),
(183, 'Can delete industry item', 45, 'delete_industryitem'),
(184, 'Can view industry item', 45, 'view_industryitem'),
(185, 'Can add cart items', 46, 'add_cartitems'),
(186, 'Can change cart items', 46, 'change_cartitems'),
(187, 'Can delete cart items', 46, 'delete_cartitems'),
(188, 'Can view cart items', 46, 'view_cartitems'),
(189, 'Can add fashionbuyer', 47, 'add_fashionbuyer'),
(190, 'Can change fashionbuyer', 47, 'change_fashionbuyer'),
(191, 'Can delete fashionbuyer', 47, 'delete_fashionbuyer'),
(192, 'Can view fashionbuyer', 47, 'view_fashionbuyer'),
(193, 'Can add adminregister', 48, 'add_adminregister'),
(194, 'Can change adminregister', 48, 'change_adminregister'),
(195, 'Can delete adminregister', 48, 'delete_adminregister'),
(196, 'Can view adminregister', 48, 'view_adminregister'),
(197, 'Can add add_cart', 49, 'add_add_cart'),
(198, 'Can change add_cart', 49, 'change_add_cart'),
(199, 'Can delete add_cart', 49, 'delete_add_cart'),
(200, 'Can view add_cart', 49, 'view_add_cart'),
(201, 'Can add add_to_cart', 50, 'add_add_to_cart'),
(202, 'Can change add_to_cart', 50, 'change_add_to_cart'),
(203, 'Can delete add_to_cart', 50, 'delete_add_to_cart'),
(204, 'Can view add_to_cart', 50, 'view_add_to_cart'),
(205, 'Can add productdetail', 51, 'add_productdetail'),
(206, 'Can change productdetail', 51, 'change_productdetail'),
(207, 'Can delete productdetail', 51, 'delete_productdetail'),
(208, 'Can view productdetail', 51, 'view_productdetail'),
(209, 'Can add cartdetail', 51, 'add_cartdetail'),
(210, 'Can change cartdetail', 51, 'change_cartdetail'),
(211, 'Can delete cartdetail', 51, 'delete_cartdetail'),
(212, 'Can view cartdetail', 51, 'view_cartdetail'),
(213, 'Can add carts details', 52, 'add_cartsdetails'),
(214, 'Can change carts details', 52, 'change_cartsdetails'),
(215, 'Can delete carts details', 52, 'delete_cartsdetails'),
(216, 'Can view carts details', 52, 'view_cartsdetails'),
(217, 'Can add cart admin', 52, 'add_cartadmin'),
(218, 'Can change cart admin', 52, 'change_cartadmin'),
(219, 'Can delete cart admin', 52, 'delete_cartadmin'),
(220, 'Can view cart admin', 52, 'view_cartadmin');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(4, 'pbkdf2_sha256$870000$pisCpH6u2gJkkty8kFEvYt$2ytGysCq+wBavRydTCLwHN5778L8BtMwcjInZMSoQ+0=', '2024-10-11 18:39:02.361155', 0, 'kitu', '', '', 'musa@gmail.com', 0, 1, '2024-10-09 14:16:04.209585'),
(5, 'pbkdf2_sha256$870000$70gOyWhWI6KKVxsJc71fhb$znJl/mjypNgsghTkCjARpmeR+le4466uvHazCPaOHls=', '2024-10-10 08:36:54.280949', 0, 'ray', '', '', 'ray@gmail.com', 0, 1, '2024-10-10 08:36:41.851877'),
(6, 'pbkdf2_sha256$870000$fLoAKxmhO7XWIn7be51mTb$llSu1upfUMVNbBuFCs/cHAUZ2Iy7YsF/lwJRjp98Wrg=', '2024-10-11 18:57:54.108127', 0, 'Me', '', '', 'musa@gmail.com', 0, 1, '2024-10-11 18:36:20.167621'),
(7, 'pbkdf2_sha256$870000$NVyuEm3i6KB58a5TGKpgnG$Af/efHAfa54ICr0s3sSwz4AkQesOMgqbRFECdBETMhg=', NULL, 0, 'Roby', '', '', 'norbeth559@gmail.comg', 0, 1, '2024-10-12 09:14:36.543838'),
(8, 'pbkdf2_sha256$870000$dORgB89b4XqGWO7w4sM5Q4$YRpO5gcgrPAUCpyR0e/Z+50vgZXJBenqtK62xum4daw=', '2024-10-12 16:20:09.274768', 0, 'norbhin', '', '', 'norbeth559@gmail.com', 0, 1, '2024-10-12 09:47:38.748061'),
(9, 'pbkdf2_sha256$870000$Of2e8OCpWvS8p8jylwyIxB$nUaxFvupWvPK2Yn4NabCQ+2mygv+mIE6b4gJzgn/ozM=', '2024-10-14 17:41:59.814322', 0, 'norbeth@gmail.com', '', '', 'musa@gmail.com', 0, 1, '2024-10-12 16:34:33.990638'),
(10, 'pbkdf2_sha256$870000$aVhElKIaWEvMmYl7YuBvia$QFAI/TOHsX48BiBWmJDwaOm/u8Aw3dC942ihnTAf98E=', '2024-10-14 06:34:34.977518', 0, 'norbeth@gmail.comg', '', '', 'musa@gmail.com', 0, 1, '2024-10-14 05:37:27.417363'),
(11, 'pbkdf2_sha256$870000$fYYZKkNCguj1Xc9TWVMcoJ$X0aDh61qTkkuwDHgWPy6I3flcx1KWJkteanyVPAEDc8=', '2024-10-14 17:41:49.212096', 0, 'new@gmail', '', '', 'musa@gmail.com', 0, 1, '2024-10-14 17:24:40.003452'),
(12, 'pbkdf2_sha256$870000$184pQTc4MgtuzzkK0HAZz5$7xf9EwL6flhmvpRYh42coNbTm90wzI3E6USz0s76WF0=', '2024-11-06 08:20:56.562260', 0, 'new1@gmail', '', '', '', 0, 1, '2024-11-06 07:27:27.976692'),
(13, 'pbkdf2_sha256$870000$EggxCPxeU3GJwYbZGpUlDQ$lHaJCmOwfobLV+MpRmI+5Z0jigbn789dIl9AutSzBRs=', '2024-11-14 19:12:40.963824', 0, 'Norbe', '', '', '', 0, 1, '2024-11-06 08:19:19.896041'),
(14, 'pbkdf2_sha256$600000$35hdwlvUeS7EbVBXT6r3EX$CWmcMeofo9X8BXROt/AXds2eZjgIN6k65i2p2PripDg=', '2024-12-08 08:28:48.787815', 0, 'norbeth559@gmail.com', '', '', '', 0, 1, '2024-11-06 08:24:27.498110');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(49, 'Shoper', 'add_cart'),
(50, 'Shoper', 'add_to_cart'),
(48, 'Shoper', 'adminregister'),
(18, 'Shoper', 'buyerform'),
(25, 'Shoper', 'buyerforms'),
(23, 'Shoper', 'cart'),
(52, 'Shoper', 'cartadmin'),
(51, 'Shoper', 'cartdetail'),
(24, 'Shoper', 'cartitem'),
(46, 'Shoper', 'cartitems'),
(27, 'Shoper', 'cartsitem'),
(37, 'Shoper', 'entertainmentitem'),
(28, 'Shoper', 'entertainmentitems'),
(7, 'Shoper', 'entertainmentpages'),
(47, 'Shoper', 'fashionbuyer'),
(26, 'Shoper', 'fashionitem'),
(8, 'Shoper', 'fashionpages'),
(38, 'Shoper', 'healthitem'),
(29, 'Shoper', 'healthitems'),
(9, 'Shoper', 'healthproductspages'),
(10, 'Shoper', 'homedecorpages'),
(39, 'Shoper', 'homeitem'),
(30, 'Shoper', 'homeitems'),
(11, 'Shoper', 'industrialproductspages'),
(45, 'Shoper', 'industryitem'),
(31, 'Shoper', 'industryitems'),
(40, 'Shoper', 'kidsitem'),
(32, 'Shoper', 'kidsitems'),
(12, 'Shoper', 'kidstoyspages'),
(13, 'Shoper', 'luggagebagspages'),
(41, 'Shoper', 'luggageitem'),
(33, 'Shoper', 'luggageitems'),
(22, 'Shoper', 'order'),
(20, 'Shoper', 'payment'),
(19, 'Shoper', 'paymentpage'),
(21, 'Shoper', 'paypage'),
(14, 'Shoper', 'sellerpages'),
(42, 'Shoper', 'shoesitem'),
(34, 'Shoper', 'shoesitems'),
(15, 'Shoper', 'shoespages'),
(43, 'Shoper', 'sportsitem'),
(35, 'Shoper', 'sportsitems'),
(16, 'Shoper', 'sportspages'),
(44, 'Shoper', 'watchitem'),
(36, 'Shoper', 'watchitems'),
(17, 'Shoper', 'watchjewelrypages');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Shoper', '0001_initial', '2024-10-05 18:17:51.222003'),
(2, 'contenttypes', '0001_initial', '2024-10-05 18:17:51.255976'),
(3, 'auth', '0001_initial', '2024-10-05 18:17:51.784081'),
(4, 'admin', '0001_initial', '2024-10-05 18:17:51.883877'),
(5, 'admin', '0002_logentry_remove_auto_add', '2024-10-05 18:17:51.899718'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2024-10-05 18:17:51.916022'),
(7, 'contenttypes', '0002_remove_content_type_name', '2024-10-05 18:17:52.013374'),
(8, 'auth', '0002_alter_permission_name_max_length', '2024-10-05 18:17:52.057880'),
(9, 'auth', '0003_alter_user_email_max_length', '2024-10-05 18:17:52.111101'),
(10, 'auth', '0004_alter_user_username_opts', '2024-10-05 18:17:52.126064'),
(11, 'auth', '0005_alter_user_last_login_null', '2024-10-05 18:17:52.167190'),
(12, 'auth', '0006_require_contenttypes_0002', '2024-10-05 18:17:52.173119'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2024-10-05 18:17:52.189418'),
(14, 'auth', '0008_alter_user_username_max_length', '2024-10-05 18:17:52.225111'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2024-10-05 18:17:52.258185'),
(16, 'auth', '0010_alter_group_name_max_length', '2024-10-05 18:17:52.291247'),
(17, 'auth', '0011_update_proxy_permissions', '2024-10-05 18:17:52.333893'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2024-10-05 18:17:52.374620'),
(19, 'sessions', '0001_initial', '2024-10-05 18:17:52.453030'),
(20, 'Shoper', '0002_buyerform', '2024-10-07 06:12:19.232443'),
(21, 'Shoper', '0003_paymentform', '2024-10-07 09:11:14.392317'),
(22, 'Shoper', '0004_remove_paymentform_airtel_remove_paymentform_halo_and_more', '2024-10-07 09:32:42.507801'),
(23, 'Shoper', '0005_remove_paymentform_network_paymentform_voda', '2024-10-07 09:41:18.260065'),
(24, 'Shoper', '0006_rename_voda_paymentform_network', '2024-10-07 09:43:15.369663'),
(25, 'Shoper', '0007_paymentform_name', '2024-10-07 09:48:07.615667'),
(26, 'Shoper', '0008_rename_paymentform_paymentpage', '2024-10-07 10:03:26.619508'),
(27, 'Shoper', '0003_payment', '2024-10-07 10:13:56.739844'),
(28, 'Shoper', '0004_paypage_delete_payment', '2024-10-07 10:29:34.198061'),
(29, 'Shoper', '0005_order', '2024-10-08 06:46:45.795252'),
(30, 'Shoper', '0006_buyerform_user_entertainmentpages_user_and_more', '2024-10-08 16:31:52.495683'),
(31, 'Shoper', '0007_alter_buyerform_user_alter_kidstoyspages_user_and_more', '2024-10-08 16:40:41.091855'),
(32, 'Shoper', '0008_alter_entertainmentpages_user_and_more', '2024-10-08 16:41:55.755118'),
(33, 'Shoper', '0009_cart_cartitem', '2024-10-10 07:37:48.012193'),
(34, 'Shoper', '0002_cartsitem_delete_cartitem', '2024-10-10 14:50:05.930443'),
(35, 'Shoper', '0002_cartitem_delete_fashionitem', '2024-10-10 15:32:22.372560'),
(36, 'Shoper', '0003_remove_cartitem_buyers_delete_fashionitem', '2024-10-11 07:11:15.372894'),
(37, 'Shoper', '0002_remove_entertainmentitems_entertainment_and_more', '2024-10-11 14:28:52.311905'),
(38, 'Shoper', '0003_remove_cartitems_buyer_and_more', '2024-10-11 15:26:11.548039'),
(39, 'Shoper', '0004_alter_entertainmentitem_entertainment', '2024-10-11 15:49:25.221218'),
(40, 'Shoper', '0005_cartitems_buyer', '2024-10-11 16:40:53.016739'),
(41, 'Shoper', '0006_alter_cartitems_buyer', '2024-10-11 16:41:13.040279'),
(42, 'Shoper', '0007_remove_cartitems_buyer', '2024-10-11 16:56:52.699329'),
(43, 'Shoper', '0008_fashionbuyer', '2024-10-11 18:27:52.511053'),
(44, 'Shoper', '0009_cartitems_user', '2024-10-11 18:47:01.155586'),
(45, 'Shoper', '0010_alter_cartitems_user', '2024-10-11 18:47:21.500420'),
(46, 'Shoper', '0005_adminregister', '2024-10-12 10:20:01.811605'),
(47, 'Shoper', '0006_delete_adminregister', '2024-10-12 17:07:57.170759'),
(48, 'Shoper', '0007_buyerform_fashioncart', '2024-10-14 06:30:31.292413'),
(49, 'Shoper', '0008_alter_buyerform_fashioncart', '2024-10-14 06:47:29.508722'),
(50, 'Shoper', '0009_alter_buyerform_fashioncart', '2024-10-14 06:52:21.453717'),
(51, 'Shoper', '0010_alter_buyerform_fashioncart', '2024-10-14 07:22:13.507947'),
(52, 'Shoper', '0011_remove_buyerform_fashioncart', '2024-10-14 07:44:00.668463'),
(53, 'Shoper', '0002_add_to_cart_add_cart', '2024-11-10 09:00:45.156945'),
(54, 'Shoper', '0003_productdetail_remove_add_to_cart_content_type_and_more', '2024-11-12 05:31:46.763279'),
(55, 'Shoper', '0004_rename_productdetail_cartdetail', '2024-11-12 05:36:59.923781'),
(56, 'Shoper', '0005_rename_image_url_cartdetail_image', '2024-11-12 08:35:54.183165'),
(57, 'Shoper', '0006_cartdetail_user_cartsdetails', '2024-11-14 18:54:20.919172'),
(58, 'Shoper', '0007_alter_cartdetail_user_alter_cartsdetails_user', '2024-11-14 19:00:21.572344'),
(59, 'Shoper', '0008_rename_cartsdetails_cartadmin', '2024-11-14 19:10:02.119299'),
(60, 'Shoper', '0009_remove_cartadmin_user', '2024-11-14 19:13:18.579158'),
(61, 'Shoper', '0010_remove_cartdetail_user', '2024-11-14 19:13:56.132992'),
(62, 'Shoper', '0011_alter_cartadmin_email_alter_cartadmin_phone', '2024-11-14 20:10:02.329362'),
(63, 'Shoper', '0012_alter_cartadmin_contact_name', '2024-11-14 20:10:43.822434'),
(64, 'Shoper', '0013_alter_buyerform_contact_name', '2024-11-15 07:00:23.552029'),
(65, 'Shoper', '0014_remove_paypage_user', '2024-12-01 05:55:37.308416'),
(66, 'Shoper', '0015_remove_buyerform_user', '2024-12-04 08:56:15.815064'),
(67, 'Shoper', '0016_remove_cart_user_remove_entertainmentpages_user_and_more', '2025-02-04 06:35:06.970713');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1rs9xd3emyx16zsm0p1wnh80x7f3ss1b', '.eJxVjEEOwiAQRe_C2pAOAwIu3fcMBJhBqoYmpV0Z765NutDtf-_9lwhxW2vYOi9hInERoMXpd0wxP7jthO6x3WaZ57YuU5K7Ig_a5TgTP6-H-3dQY6_f2ji2qIeU3IBas8-RiuUCiZX10dgzIAJ47zIZywrROGTvTFHFF4Is3h_7zDfG:1tGMfB:oIiTSEPyPcZARjRGlqWys4nlezEzw6sTXzwuS0AjtRM', '2024-12-11 18:21:21.334674'),
('4g30rk1vzp4p9is7tafr8x05w6c9qpjj', '.eJxVjMsOwiAQRf-FtSFAGR4u3fsNZIBBqgaS0q6M_65NutDtPefcFwu4rTVsg5YwZ3ZmUrPT7xgxPajtJN-x3TpPva3LHPmu8IMOfu2ZnpfD_TuoOOq3FkbpJMBFUCQsFQcIJkurM8VEJkkP4KhoD0aiMsUpgCjt5N1URC7E3h_2Wze7:1t8bX9:gMGpg3HgaDBKX_Au3p9fMc-Wj8LJMJdhYw8me9ZTRM4', '2024-11-20 08:36:59.666162'),
('mb3jl8rx4qsh6f4hfw57863jptqjtlzz', '.eJxVjDEOwjAMRe-SGUW4hCRmZO8ZIjt2SQGlUtNOiLtDpQ6w_vfef5lE61LS2nROo5iLQXP43ZjyQ-sG5E71Ntk81WUe2W6K3Wmz_ST6vO7u30GhVr51dIMSBwCP7GMXIkAnZ4_gGUQlouNwVJYgGSQwc0amE4qDjNHzYN4f5q44eg:1t0P4x:CfdpGaIp6qqb7jGwGK5ANF8HplB2jT5vCdoiJi9EOvo', '2024-10-28 17:41:59.832207'),
('om2kcng496uql0ktw2tfy0wwpfbtrnro', '.eJxVjDsOwjAQBe_iGlm2N_ZmKek5g7X-4QBypDipEHeHSCmgfTPzXsLztla_9bz4KYmzMOL0uwWOj9x2kO7cbrOMc1uXKchdkQft8jqn_Lwc7t9B5V6_NRoao9YjQizKETsaEkBwBZMD1hhUSGQJNWnNbMAggOVSrDOKhpjF-wO9Kzbs:1syDBC:EM2BNQmH69m5XehbCo2iMVl-NGFQ-gYCR2EnJd8fJqA', '2024-10-22 16:35:22.138113'),
('u9qoxmv78tk2x7avg9vgkv6qpj6r4vm3', '.eJxVjDEOwyAQBP9CHSFs8GFSpvcb0MEdwUkEkrGrKH-PLblIim12ZvctPG5r9lvjxc8krmIQl98uYHxyOQA9sNyrjLWsyxzkociTNjlV4tftdP8OMra8r6Menba9oT5BQINJgbEYadQUDe1BRYo7YBdQazuAAlQ2AXbGuJRYfL70Gzhe:1syofG:mNLpLQ7_cQFzGm0n8FBB6512JVRzTRx2B2o6Nq531oY', '2024-10-24 08:36:54.283941'),
('vs2enzipc42mcxhhm3jnbw8529wbq3xc', '.eJxVjEEOwiAQRe_C2pAOAwIu3fcMBJhBqoYmpV0Z765NutDtf-_9lwhxW2vYOi9hInERoMXpd0wxP7jthO6x3WaZ57YuU5K7Ig_a5TgTP6-H-3dQY6_f2ji2qIeU3IBas8-RiuUCiZX10dgzIAJ47zIZywrROGTvTFHFF4Is3h_7zDfG:1tKCem:W_pANS57yrVVAiSnokOHf3l0Hp4FB3VewkcCu-LKNFA', '2024-12-22 08:28:48.787815'),
('wnlo9d6flcfw81vicnmkyx8wmge1ekhm', '.eJxVjDEOwjAMRe-SGUW4hCRmZO8ZIjt2SQGlUtNOiLtDpQ6w_vfef5lE61LS2nROo5iLQXP43ZjyQ-sG5E71Ntk81WUe2W6K3Wmz_ST6vO7u30GhVr51dIMSBwCP7GMXIkAnZ4_gGUQlouNwVJYgGSQwc0amE4qDjNHzYN4f5q44eg:1szf4h:PTm1_h-6UU58gUJasNohubcgUYT-E-ePzNc4tnNiXWQ', '2024-10-26 16:34:39.983035');

-- --------------------------------------------------------

--
-- Table structure for table `shoper_buyerform`
--

CREATE TABLE `shoper_buyerform` (
  `id` bigint(20) NOT NULL,
  `Region` varchar(20) NOT NULL,
  `District` varchar(20) NOT NULL,
  `Ward` varchar(20) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Contact_name` varchar(30) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `House_no` varchar(10) NOT NULL,
  `First_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_buyerform`
--

INSERT INTO `shoper_buyerform` (`id`, `Region`, `District`, `Ward`, `Phone`, `Contact_name`, `Email`, `House_no`, `First_name`, `last_name`) VALUES
(66, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(67, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(68, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(69, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(70, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(71, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(72, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(73, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(74, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(75, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(76, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(77, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(78, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(79, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(80, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(81, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(82, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(83, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(84, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(85, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(86, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(87, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(88, 'xcbncn', 'Mafinga', 'jhdrd', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(89, 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(90, 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(91, 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(92, 'morogoro', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(93, 'moro', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(94, 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(95, 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(96, 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(97, 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(98, 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(99, 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(100, 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(101, 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(102, 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(103, 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(104, 'dfgd', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(105, 'zF', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbeth559@gmail.com', '32', 'norbhin', 'norbhin'),
(106, 'asgthy', 'efthyti', 'ipogolo', '0613757172', 'norbeth norbhin mwalongo', 'norbeth559@gmail.com', '32', 'norbeth', 'mwalongo'),
(107, 'asgthy', 'efthyti', 'ipogolo', '0613757172', 'norbeth norbhin mwalongo', 'norbeth559@gmail.com', '32', 'norbeth', 'mwalongo');

-- --------------------------------------------------------

--
-- Table structure for table `shoper_cart`
--

CREATE TABLE `shoper_cart` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_cart`
--

INSERT INTO `shoper_cart` (`id`, `created_at`) VALUES
(1, '2024-10-10 07:41:29.953812'),
(2, '2024-10-11 18:36:34.327769'),
(3, '2024-10-12 17:57:33.034743'),
(4, '2024-10-14 06:07:30.392238'),
(5, '2024-11-08 10:00:34.324077'),
(6, '2024-11-08 11:35:37.565308');

-- --------------------------------------------------------

--
-- Table structure for table `shoper_cartadmin`
--

CREATE TABLE `shoper_cartadmin` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Brand` varchar(30) NOT NULL,
  `Status` varchar(30) NOT NULL,
  `Price` varchar(30) NOT NULL,
  `quantity` varchar(30) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Region` varchar(20) NOT NULL,
  `District` varchar(20) NOT NULL,
  `Ward` varchar(20) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Contact_name` varchar(100) NOT NULL,
  `First_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `House_no` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_cartadmin`
--

INSERT INTO `shoper_cartadmin` (`id`, `Name`, `Brand`, `Status`, `Price`, `quantity`, `Image`, `Region`, `District`, `Ward`, `Phone`, `Contact_name`, `First_name`, `last_name`, `House_no`, `Email`) VALUES
(3, 'enter', 'No brand', 'new', '$92', '1', '/media/Uploads/download.jpeg', 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbhin', 'norbhin', '32', 'norbeth559@gmail.com'),
(5, 'bag', 'No brand', 'new', '$92', '1', '/media/Uploads/download_3.jpeg', 'morogoro', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbhin', 'norbhin', '32', 'norbeth559@gmail.com'),
(8, 'enter', 'No brand', 'new', '$92', '1', '/media/Uploads/download.jpeg', 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbhin', 'norbhin', '32', 'norbeth559@gmail.com'),
(9, 'kids', 'No brand', 'new', '$92', '1', '/media/Uploads/IMG-20240909-WA0012_GFfQBgK.jpg', 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbhin', 'norbhin', '32', 'norbeth559@gmail.com'),
(10, 'enter', 'No brand', 'new', '$92', '1', '/media/Uploads/images_4.jpeg', 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbhin', 'norbhin', '32', 'norbeth559@gmail.com'),
(11, 'enter', 'No brand', 'new', '$92', '1', '/media/Uploads/download.jpeg', 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbhin', 'norbhin', '32', 'norbeth559@gmail.com'),
(12, 'kids', 'No brand', 'new', '$92', '1', '/media/Uploads/IMG-20240909-WA0012_GFfQBgK.jpg', 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbhin', 'norbhin', '32', 'norbeth559@gmail.com'),
(14, 'enter', 'No brand', 'new', '$92', '1', '/media/Uploads/images_1_LlMAA2u.jpeg', 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbhin', 'norbhin', '32', 'norbeth559@gmail.com'),
(15, 'home', 'No brand', 'new', '$92', '2', '/media/Uploads/images.jpeg', 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbhin', 'norbhin', '32', 'norbeth559@gmail.com'),
(16, 'bag', 'No brand', 'new', '$92', '1', '/media/Uploads/download_4.jpeg', 'Iringa', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbhin', 'norbhin', '32', 'norbeth559@gmail.com'),
(17, 'clothes', 'shirt', 'new', '$6', '3', '/media/Uploads/23041697_53226502_1000.jpg', 'zF', 'Mafinga', 'ipogolo', '0747904950', 'norbeth norbhin mwal', 'norbhin', 'norbhin', '32', 'norbeth559@gmail.com'),
(18, 'home', 'No brand', 'new', '$92', '1', '/media/Uploads/s-l500_2_NhGiDfv.jpg', 'asgthy', 'efthyti', 'ipogolo', '0613757172', 'norbeth norbhin mwalongo', 'norbeth', 'mwalongo', '32', 'norbeth559@gmail.com'),
(19, 'beauty', 'No brand', 'new', '$92', '1', '/media/Uploads/s-l500_3.jpg', 'asgthy', 'efthyti', 'ipogolo', '0613757172', 'norbeth norbhin mwalongo', 'norbeth', 'mwalongo', '32', 'norbeth559@gmail.com'),
(20, 'beauty', 'No brand', 'new', '$92', '1', '/media/Uploads/s-l500_3.jpg', 'asgthy', 'efthyti', 'ipogolo', '0613757172', 'norbeth norbhin mwalongo', 'norbeth', 'mwalongo', '32', 'norbeth559@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `shoper_cartdetail`
--

CREATE TABLE `shoper_cartdetail` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Brand` varchar(30) NOT NULL,
  `Status` varchar(30) NOT NULL,
  `Price` varchar(30) NOT NULL,
  `quantity` varchar(30) NOT NULL,
  `Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_cartdetail`
--

INSERT INTO `shoper_cartdetail` (`id`, `Name`, `Brand`, `Status`, `Price`, `quantity`, `Image`) VALUES
(4, 'Name:short shir', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/fashion1.jpg'),
(5, 'Name:short shir', 'Name:No brand', 'Status:new', 'Price:$92', '4', '/media/Uploads/sweta.jpg'),
(6, 'Name:short shir', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/gwn.jpg'),
(7, 'Name:short shir', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/gwn.jpg'),
(8, 'Name:short shir', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/gwn.jpg'),
(9, 'Name:short shir', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/sweta.jpg'),
(10, 'Name:kids', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/IMG-20240909-WA0012_GFfQBgK.jpg'),
(11, 'Name:short shir', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/fashion1.jpg'),
(12, 'Name:short shir', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/gwn.jpg'),
(13, 'Name:short shir', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/gwn.jpg'),
(14, 'Name:kids', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/IMG-20240909-WA0012_GFfQBgK.jpg'),
(15, 'Name:short shir', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/fashion1.jpg'),
(16, 'Name:short shir', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/fashion1.jpg'),
(17, 'Name:enter', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/images_1_LlMAA2u.jpeg'),
(18, 'Name:laptop', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/pc3.jpg'),
(19, 'Name:beauty', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/s-l500_2.jpg'),
(20, 'Name:home', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/s-l500_7sZ3m1G.jpg'),
(21, 'Name:sports', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/intuition-t500-2.jpg'),
(22, 'Name:Shoe', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/download_2.jpeg'),
(23, 'Name:bag', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/download_3.jpeg'),
(24, 'Name:watch', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/images_4_mO0Apzy.jpeg'),
(25, 'Name:kids', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/images_1_zNOWeYi.jpeg'),
(26, 'Name:laptop', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/pc3.jpg'),
(27, 'Name:laptop', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/phone.jpg'),
(28, 'Name:enter', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/images_1_LlMAA2u.jpeg'),
(29, 'Name:short shir', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/gwn.jpg'),
(30, 'Name:kids', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/images_13.jpeg'),
(31, 'Name:laptop', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/pc3.jpg'),
(32, 'Name:kids', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/images_2_TdzjusA.jpeg'),
(33, 'Name:short shir', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/gwn.jpg'),
(34, 'Name:short shir', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/sweta.jpg'),
(35, 'Name:kids', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/IMG-20240909-WA0012_GFfQBgK.jpg'),
(36, 'Name:short shir', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/sweta.jpg'),
(37, 'Name:short shir', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/gwn.jpg'),
(38, 'Name:short shir', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/gwn.jpg'),
(39, 'Name:short shir', 'Name:No brand', 'Status:new', 'Price:$92', '3', '/media/Uploads/gwn.jpg'),
(40, 'Name:kids', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/IMG-20240909-WA0012_GFfQBgK.jpg'),
(41, 'enter', 'No brand', 'new', '$92', '1', '/media/Uploads/download.jpeg'),
(42, 'Name:short shir', 'Name:No brand', 'Status:new', 'Price:$92', '1', '/media/Uploads/sweta.jpg'),
(43, 'bag', 'No brand', 'new', '$92', '1', '/media/Uploads/download_3.jpeg'),
(44, 'home', 'No brand', 'new', '$92', '1', '/media/Uploads/s-l500_1_mUrLkMm.jpg'),
(45, 'short shir', 'No brand', 'new', '$92', '1', '/media/Uploads/fashion1.jpg'),
(46, 'laptop', 'No brand', 'new', '$92', '1', '/media/Uploads/pc4.jpg'),
(47, 'sports', 'No brand', 'new', '$92', '1', '/media/Uploads/61vtTt9YLoS._AC_UF8941000_QL80_.jpg'),
(48, 'laptop', 'No brand', 'new', '$92', '1', '/media/Uploads/pc6.jpg'),
(49, 'laptop', 'No brand', 'new', '$92', '1', '/media/Uploads/pc6.jpg'),
(50, 'home', 'No brand', 'new', '$92', '1', '/media/Uploads/s-l500_1_mUrLkMm.jpg'),
(51, 'Shoe', 'No brand', 'new', '$92', '1', '/media/Uploads/download_2.jpeg'),
(52, 'kids', 'No brand', 'new', '$92', '1', '/media/Uploads/images_1_zNOWeYi.jpeg'),
(53, 'kids', 'No brand', 'new', '$92', '1', '/media/Uploads/IMG-20240909-WA0012_GFfQBgK.jpg'),
(54, 'kids', 'No brand', 'new', '$92', '1', '/media/Uploads/IMG-20240909-WA0012_GFfQBgK.jpg'),
(55, 'laptop', 'No brand', 'new', '$92', '1', '/media/Uploads/pc3.jpg'),
(56, 'enter', 'No brand', 'new', '$92', '1', '/media/Uploads/download.jpeg'),
(57, 'kids', 'No brand', 'new', '$92', '4', '/media/Uploads/IMG-20240909-WA0012_GFfQBgK.jpg'),
(58, 'kids', 'No brand', 'new', '$92', '1', '/media/Uploads/IMG-20240909-WA0012_GFfQBgK.jpg'),
(59, 'clothes', 'shirt', 'new', '$6', '1', '/media/Uploads/635ea9e3e5590c71b1130024-women-party-casual-dots-print-short.jpg'),
(60, 'enter', 'No brand', 'new', '$92', '1', '/media/Uploads/images_4.jpeg'),
(61, 'kids', 'No brand', 'new', '$92', '1', '/media/Uploads/IMG-20240909-WA0012_GFfQBgK.jpg'),
(62, 'enter', 'No brand', 'new', '$92', '1', '/media/Uploads/download.jpeg'),
(63, 'kids', 'No brand', 'new', '$92', '1', '/media/Uploads/IMG-20240909-WA0012_GFfQBgK.jpg'),
(64, 'clothes', 'shirt', 'new', '$6', '1', '/media/Uploads/Screenshot_20241123-233024.jpg'),
(65, 'beauty', 'No brand', 'new', '$92', '1', '/media/Uploads/s-l500_1.jpg'),
(66, 'laptop', 'No brand', 'new', '$92', '1', '/media/Uploads/pc3.jpg'),
(67, 'enter', 'No brand', 'new', '$92', '1', '/media/Uploads/images_1_LlMAA2u.jpeg'),
(68, 'home', 'No brand', 'new', '$92', '2', '/media/Uploads/images.jpeg'),
(69, 'bag', 'No brand', 'new', '$92', '1', '/media/Uploads/download_4.jpeg'),
(70, 'clothes', 'shirt', 'new', '$6', '3', '/media/Uploads/23041697_53226502_1000.jpg'),
(71, 'kids', 'No brand', 'new', '$92', '1', '/media/Uploads/IMG-20240909-WA0012_GFfQBgK.jpg'),
(72, 'clothes', 'shirt', 'new', '$6', '3', '/media/Uploads/23041697_53226502_1000.jpg'),
(73, 'home', 'No brand', 'new', '$92', '1', '/media/Uploads/s-l500_2_NhGiDfv.jpg'),
(74, 'beauty', 'No brand', 'new', '$92', '1', '/media/Uploads/s-l500_3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shoper_cartitems`
--

CREATE TABLE `shoper_cartitems` (
  `id` bigint(20) NOT NULL,
  `Fashion_id` bigint(20) NOT NULL,
  `cart_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_cartitems`
--

INSERT INTO `shoper_cartitems` (`id`, `Fashion_id`, `cart_id`) VALUES
(14, 16, 4),
(19, 16, 6);

-- --------------------------------------------------------

--
-- Table structure for table `shoper_entertainmentitem`
--

CREATE TABLE `shoper_entertainmentitem` (
  `id` bigint(20) NOT NULL,
  `Entertainment_id` bigint(20) NOT NULL,
  `cart_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_entertainmentitem`
--

INSERT INTO `shoper_entertainmentitem` (`id`, `Entertainment_id`, `cart_id`) VALUES
(3, 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `shoper_entertainmentpages`
--

CREATE TABLE `shoper_entertainmentpages` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Contact_name` varchar(20) NOT NULL,
  `Region` varchar(20) NOT NULL,
  `District` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Product_name` varchar(10) NOT NULL,
  `Price` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Brand` varchar(20) NOT NULL,
  `Delivery` varchar(20) NOT NULL,
  `Description` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_entertainmentpages`
--

INSERT INTO `shoper_entertainmentpages` (`id`, `Name`, `Phone`, `Contact_name`, `Region`, `District`, `Email`, `Image`, `Product_name`, `Price`, `Status`, `Brand`, `Delivery`, `Description`) VALUES
(6, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/61D7Z66Te8L._AC_SL1500_.jpg', 'enter', '$92', 'new', 'No brand', 'No', 'available'),
(7, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/download.jpeg', 'enter', '$92', 'new', 'No brand', 'No', 'available'),
(8, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_1_LlMAA2u.jpeg', 'enter', '$92', 'new', 'No brand', 'No', 'available'),
(9, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_2.jpeg', 'enter', '$92', 'new', 'No brand', 'No', 'available'),
(10, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_3.jpeg', 'enter', '$92', 'new', 'No brand', 'No', 'available'),
(11, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_4.jpeg', 'enter', '$92', 'new', 'No brand', 'No', 'available'),
(12, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_Rghd8YL.jpeg', 'enter', '$92', 'new', 'No brand', 'No', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `shoper_fashionpages`
--

CREATE TABLE `shoper_fashionpages` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Contact_name` varchar(20) NOT NULL,
  `Region` varchar(20) NOT NULL,
  `District` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Product_name` varchar(10) NOT NULL,
  `Price` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Brand` varchar(20) NOT NULL,
  `Delivery` varchar(20) NOT NULL,
  `Description` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_fashionpages`
--

INSERT INTO `shoper_fashionpages` (`id`, `Name`, `Phone`, `Contact_name`, `Region`, `District`, `Email`, `Image`, `Product_name`, `Price`, `Status`, `Brand`, `Delivery`, `Description`) VALUES
(16, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/fashion1.jpg', 'short shir', '$92', 'new', 'No brand', 'No', 'available'),
(30, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/IMG-20240909-WA0012_GFfQBgK.jpg', 'kids', '$92', 'new', 'No brand', 'No', 'available'),
(33, 'norbeth norbhin mwal', '0613757172', 'qsdtechnology', 'Iringa', 'Mafinga', 'norbeth559@gmail.com', 'Uploads/716jq24EbcL._AC_SL1500_.jpg', 'clothes', '$6', 'new', 'shirt', 'No', 'available'),
(35, 'norbeth norbhin mwal', '0613757172', 'qsdtechnology', 'Iringa', 'Mafinga', 'norbeth559@gmail.com', 'Uploads/635ea9e3e5590c71b1130024-women-party-casual-dots-print-short.jpg', 'clothes', '$6', 'new', 'shirt', 'No', 'available'),
(36, 'norbeth norbhin mwal', '0613757172', 'qsdtechnology', 'Iringa', 'Mafinga', 'norbeth559@gmail.com', 'Uploads/23041697_53226502_1000.jpg', 'clothes', '$6', 'new', 'shirt', 'No', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `shoper_healthitems`
--

CREATE TABLE `shoper_healthitems` (
  `id` bigint(20) NOT NULL,
  `Health_id` bigint(20) NOT NULL,
  `cart_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_healthitems`
--

INSERT INTO `shoper_healthitems` (`id`, `Health_id`, `cart_id`) VALUES
(2, 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `shoper_healthproductspages`
--

CREATE TABLE `shoper_healthproductspages` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Contact_name` varchar(20) NOT NULL,
  `Region` varchar(20) NOT NULL,
  `District` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Product_name` varchar(10) NOT NULL,
  `Price` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Brand` varchar(20) NOT NULL,
  `Delivery` varchar(20) NOT NULL,
  `Description` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_healthproductspages`
--

INSERT INTO `shoper_healthproductspages` (`id`, `Name`, `Phone`, `Contact_name`, `Region`, `District`, `Email`, `Image`, `Product_name`, `Price`, `Status`, `Brand`, `Delivery`, `Description`) VALUES
(5, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/s-l500_1.jpg', 'beauty', '$92', 'new', 'No brand', 'No', 'available'),
(6, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/s-l500_2.jpg', 'beauty', '$92', 'new', 'No brand', 'No', 'available'),
(7, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/s-l500_3.jpg', 'beauty', '$92', 'new', 'No brand', 'No', 'available'),
(8, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/s-l500_4.jpg', 'beauty', '$92', 'new', 'No brand', 'No', 'available'),
(9, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/s-l500_5.jpg', 'beauty', '$92', 'new', 'No brand', 'No', 'available'),
(10, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/s-l500.jpg', 'beauty', '$92', 'new', 'No brand', 'No', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `shoper_homedecorpages`
--

CREATE TABLE `shoper_homedecorpages` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Contact_name` varchar(20) NOT NULL,
  `Region` varchar(20) NOT NULL,
  `District` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Product_name` varchar(10) NOT NULL,
  `Price` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Brand` varchar(20) NOT NULL,
  `Delivery` varchar(20) NOT NULL,
  `Description` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_homedecorpages`
--

INSERT INTO `shoper_homedecorpages` (`id`, `Name`, `Phone`, `Contact_name`, `Region`, `District`, `Email`, `Image`, `Product_name`, `Price`, `Status`, `Brand`, `Delivery`, `Description`) VALUES
(9, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_1.jpeg', 'home', '$92', 'new', 'No brand', 'No', 'available'),
(10, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images.jpeg', 'home', '$92', 'new', 'No brand', 'No', 'available'),
(11, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/s-l500_1_mUrLkMm.jpg', 'home', '$92', 'new', 'No brand', 'No', 'available'),
(12, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/s-l500_2_NhGiDfv.jpg', 'home', '$92', 'new', 'No brand', 'No', 'available'),
(13, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/s-l500_3_xBSqMTI.jpg', 'home', '$92', 'new', 'No brand', 'No', 'available'),
(14, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/s-l500_7sZ3m1G.jpg', 'home', '$92', 'new', 'No brand', 'No', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `shoper_homeitems`
--

CREATE TABLE `shoper_homeitems` (
  `id` bigint(20) NOT NULL,
  `Home_id` bigint(20) NOT NULL,
  `cart_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_homeitems`
--

INSERT INTO `shoper_homeitems` (`id`, `Home_id`, `cart_id`) VALUES
(2, 10, 3),
(3, 13, 3);

-- --------------------------------------------------------

--
-- Table structure for table `shoper_industrialproductspages`
--

CREATE TABLE `shoper_industrialproductspages` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Contact_name` varchar(20) NOT NULL,
  `Region` varchar(20) NOT NULL,
  `District` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Product_name` varchar(10) NOT NULL,
  `Price` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Brand` varchar(20) NOT NULL,
  `Delivery` varchar(20) NOT NULL,
  `Description` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_industrialproductspages`
--

INSERT INTO `shoper_industrialproductspages` (`id`, `Name`, `Phone`, `Contact_name`, `Region`, `District`, `Email`, `Image`, `Product_name`, `Price`, `Status`, `Brand`, `Delivery`, `Description`) VALUES
(10, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/pc2.jpg', 'laptop', '$92', 'new', 'No brand', 'No', 'available'),
(11, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/pc3.jpg', 'laptop', '$92', 'new', 'No brand', 'No', 'available'),
(12, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/pc4.jpg', 'laptop', '$92', 'new', 'No brand', 'No', 'available'),
(13, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/pc5.jpg', 'laptop', '$92', 'new', 'No brand', 'No', 'available'),
(14, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/pc6.jpg', 'laptop', '$92', 'new', 'No brand', 'No', 'available'),
(15, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/pc7.jpg', 'laptop', '$92', 'new', 'No brand', 'No', 'available'),
(16, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/phon.jpg', 'laptop', '$92', 'new', 'No brand', 'No', 'available'),
(17, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/phone.jpg', 'laptop', '$92', 'new', 'No brand', 'No', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `shoper_industryitem`
--

CREATE TABLE `shoper_industryitem` (
  `id` bigint(20) NOT NULL,
  `Industry_id` bigint(20) NOT NULL,
  `cart_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_industryitem`
--

INSERT INTO `shoper_industryitem` (`id`, `Industry_id`, `cart_id`) VALUES
(2, 17, 3),
(5, 11, 6);

-- --------------------------------------------------------

--
-- Table structure for table `shoper_kidsitems`
--

CREATE TABLE `shoper_kidsitems` (
  `id` bigint(20) NOT NULL,
  `Kids_id` bigint(20) NOT NULL,
  `cart_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_kidsitems`
--

INSERT INTO `shoper_kidsitems` (`id`, `Kids_id`, `cart_id`) VALUES
(3, 7, 3),
(4, 12, 3);

-- --------------------------------------------------------

--
-- Table structure for table `shoper_kidstoyspages`
--

CREATE TABLE `shoper_kidstoyspages` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Contact_name` varchar(20) NOT NULL,
  `Region` varchar(20) NOT NULL,
  `District` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Product_name` varchar(10) NOT NULL,
  `Price` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Brand` varchar(20) NOT NULL,
  `Delivery` varchar(20) NOT NULL,
  `Description` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_kidstoyspages`
--

INSERT INTO `shoper_kidstoyspages` (`id`, `Name`, `Phone`, `Contact_name`, `Region`, `District`, `Email`, `Image`, `Product_name`, `Price`, `Status`, `Brand`, `Delivery`, `Description`) VALUES
(6, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/download_icCaShA.jpeg', 'kids', '$92', 'new', 'No brand', 'No', 'available'),
(7, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_1_zNOWeYi.jpeg', 'kids', '$92', 'new', 'No brand', 'No', 'available'),
(8, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_2_TdzjusA.jpeg', 'kids', '$92', 'new', 'No brand', 'No', 'available'),
(9, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_2_MWyU4f5.jpeg', 'kids', '$92', 'new', 'No brand', 'No', 'available'),
(10, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_3_ofVduho.jpeg', 'kids', '$92', 'new', 'No brand', 'No', 'available'),
(11, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_10_ucunau1.jpeg', 'kids', '$92', 'new', 'No brand', 'No', 'available'),
(12, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_11_wUKaUdp.jpeg', 'kids', '$92', 'new', 'No brand', 'No', 'available'),
(13, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_13.jpeg', 'kids', '$92', 'new', 'No brand', 'No', 'available'),
(14, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_14.jpeg', 'kids', '$92', 'new', 'No brand', 'No', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `shoper_luggagebagspages`
--

CREATE TABLE `shoper_luggagebagspages` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Contact_name` varchar(20) NOT NULL,
  `Region` varchar(20) NOT NULL,
  `District` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Product_name` varchar(10) NOT NULL,
  `Price` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Brand` varchar(20) NOT NULL,
  `Delivery` varchar(20) NOT NULL,
  `Description` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_luggagebagspages`
--

INSERT INTO `shoper_luggagebagspages` (`id`, `Name`, `Phone`, `Contact_name`, `Region`, `District`, `Email`, `Image`, `Product_name`, `Price`, `Status`, `Brand`, `Delivery`, `Description`) VALUES
(5, 'norbhin norbhin norb', '0747904950', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_1_qTCYbkX.jpeg', 'bag', '$92', 'new', 'No brand', 'No', 'available'),
(6, 'norbhin norbhin norb', '0747904950', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/download_3.jpeg', 'bag', '$92', 'new', 'No brand', 'No', 'available'),
(7, 'norbhin norbhin norb', '0747904950', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/download_4.jpeg', 'bag', '$92', 'new', 'No brand', 'No', 'available'),
(8, 'norbhin norbhin norb', '0747904950', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/download_5.jpeg', 'bag', '$92', 'new', 'No brand', 'No', 'available'),
(9, 'norbhin norbhin norb', '0747904950', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/download_VYTJTs2.jpeg', 'bag', '$92', 'new', 'No brand', 'No', 'available'),
(10, 'norbhin norbhin norb', '0747904950', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_2_BgYaS7F.jpeg', 'bag', '$92', 'new', 'No brand', 'No', 'available'),
(11, 'norbhin norbhin norb', '0747904950', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_2_YJx48Cx.jpeg', 'bag', '$92', 'new', 'No brand', 'No', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `shoper_luggageitems`
--

CREATE TABLE `shoper_luggageitems` (
  `id` bigint(20) NOT NULL,
  `Luggage_id` bigint(20) NOT NULL,
  `cart_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_luggageitems`
--

INSERT INTO `shoper_luggageitems` (`id`, `Luggage_id`, `cart_id`) VALUES
(2, 5, 3),
(3, 6, 4),
(4, 5, 5),
(5, 11, 6),
(6, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `shoper_order`
--

CREATE TABLE `shoper_order` (
  `id` bigint(20) NOT NULL,
  `Order_at` datetime(6) NOT NULL,
  `buyer_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoper_paymentpages`
--

CREATE TABLE `shoper_paymentpages` (
  `id` bigint(20) NOT NULL,
  `name` varchar(10) NOT NULL,
  `network` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoper_paypage`
--

CREATE TABLE `shoper_paypage` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_paypage`
--

INSERT INTO `shoper_paypage` (`id`, `Name`, `Image`) VALUES
(2, 'Vodacom', 'network/images.png'),
(3, 'Tigo', 'network/f8589ce2a32142a2d0af343ef314ffc1.jpg'),
(4, 'Aitel', 'network/airtel.jpeg'),
(5, 'Halotel', 'network/images_1.png'),
(6, 'User', 'network/user_1.png'),
(7, 'Seller', 'network/seller_1.png'),
(8, 'Buyer', 'network/buyer_1.png'),
(9, 'fashion', 'network/download_1.jpeg'),
(10, 'industry', 'network/download_2.jpeg'),
(11, 'health', 'network/images_4.jpeg'),
(12, 'home', 'network/download_3.jpeg'),
(13, 'sports', 'network/download_4.jpeg'),
(14, 'shoes', 'network/download_6.jpeg'),
(15, 'entertainment', 'network/download_5.jpeg'),
(16, 'luggage', 'network/download_7.jpeg'),
(17, 'watch', 'network/download_8.jpeg'),
(18, 'kids', 'network/images_5.jpeg'),
(20, 'shop', 'network/cart.png'),
(21, 'profile', 'network/user_2.png'),
(22, 'logo', 'network/Bidhaalink-jpg_hi6SLLb.jpg'),
(23, 'logo1', 'network/Bidhaalink-jpg-removebg-preview.png'),
(24, 'logo3', 'network/Bidhaalink-Icon-removebg-preview.png'),
(25, 'inst', 'network/social.png'),
(26, 'twitter', 'network/twitter.png'),
(27, 'wats', 'network/whatsapp.png');

-- --------------------------------------------------------

--
-- Table structure for table `shoper_sellerpages`
--

CREATE TABLE `shoper_sellerpages` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Contact_name` varchar(20) NOT NULL,
  `Region` varchar(20) NOT NULL,
  `District` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Product_name` varchar(10) NOT NULL,
  `Price` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Brand` varchar(20) NOT NULL,
  `Delivery` varchar(20) NOT NULL,
  `Description` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_sellerpages`
--

INSERT INTO `shoper_sellerpages` (`id`, `Name`, `Phone`, `Contact_name`, `Region`, `District`, `Email`, `Image`, `Product_name`, `Price`, `Status`, `Brand`, `Delivery`, `Description`) VALUES
(3, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/download_2_EhbY7Q6.jpeg', 'kids', '$92', 'new', 'No brand', 'No', 'available'),
(4, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/download_8.jpeg', 'kids', '$92', 'new', 'No brand', 'No', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `shoper_shoesitems`
--

CREATE TABLE `shoper_shoesitems` (
  `id` bigint(20) NOT NULL,
  `Shoes_id` bigint(20) NOT NULL,
  `cart_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoper_shoespages`
--

CREATE TABLE `shoper_shoespages` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Contact_name` varchar(20) NOT NULL,
  `Region` varchar(20) NOT NULL,
  `District` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Product_name` varchar(10) NOT NULL,
  `Price` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Brand` varchar(20) NOT NULL,
  `Delivery` varchar(20) NOT NULL,
  `Description` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_shoespages`
--

INSERT INTO `shoper_shoespages` (`id`, `Name`, `Phone`, `Contact_name`, `Region`, `District`, `Email`, `Image`, `Product_name`, `Price`, `Status`, `Brand`, `Delivery`, `Description`) VALUES
(6, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/download_2.jpeg', 'Shoe', '$92', 'new', 'No brand', 'No', 'available'),
(7, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_5.jpeg', 'Shoe', '$92', 'new', 'No brand', 'No', 'available'),
(8, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_6.jpeg', 'Shoe', '$92', 'new', 'No brand', 'No', 'available'),
(9, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_7.jpeg', 'Shoe', '$92', 'new', 'No brand', 'No', 'available'),
(10, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_8.jpeg', 'Shoe', '$92', 'new', 'No brand', 'No', 'available'),
(11, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_10.jpeg', 'Shoe', '$92', 'new', 'No brand', 'No', 'available'),
(13, 'norbhin norbhin norb', '0747904950', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_12.jpeg', 'Shoe', '$92', 'new', 'No brand', 'No', 'available'),
(14, 'norbhin norbhin norb', '0747904950', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/download_1_MJcwiWJ.jpeg', 'Shoe', '$92', 'new', 'No brand', 'No', 'available'),
(15, 'norbhin norbhin norb', '0747904950', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_12_vD0woE0.jpeg', 'Shoe', '$92', 'new', 'No brand', 'No', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `shoper_sportsitems`
--

CREATE TABLE `shoper_sportsitems` (
  `id` bigint(20) NOT NULL,
  `Sports_id` bigint(20) NOT NULL,
  `cart_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_sportsitems`
--

INSERT INTO `shoper_sportsitems` (`id`, `Sports_id`, `cart_id`) VALUES
(2, 5, 3),
(3, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `shoper_sportspages`
--

CREATE TABLE `shoper_sportspages` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Contact_name` varchar(20) NOT NULL,
  `Region` varchar(20) NOT NULL,
  `District` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Product_name` varchar(10) NOT NULL,
  `Price` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Brand` varchar(20) NOT NULL,
  `Delivery` varchar(20) NOT NULL,
  `Description` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_sportspages`
--

INSERT INTO `shoper_sportspages` (`id`, `Name`, `Phone`, `Contact_name`, `Region`, `District`, `Email`, `Image`, `Product_name`, `Price`, `Status`, `Brand`, `Delivery`, `Description`) VALUES
(5, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/51fcZnFbtGL._AC_US218_.jpg', 'sports', '$92', 'new', 'No brand', 'No', 'available'),
(6, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/intuition-t500-2.jpg', 'sports', '$92', 'new', 'No brand', 'No', 'available'),
(7, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/61vtTt9YLoS._AC_UF8941000_QL80_.jpg', 'sports', '$92', 'new', 'No brand', 'No', 'available'),
(8, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/65864f3cb6feba254e30bf42-mens-thermal-underwear-set-men-39-s.jpg', 'sports', '$92', 'new', 'No brand', 'No', 'available'),
(9, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/PS185.jpg', 'sports', '$92', 'new', 'No brand', 'No', 'available'),
(10, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/PS237.jpg', 'sports', '$92', 'new', 'No brand', 'No', 'available'),
(11, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/spin-bike.jpg', 'sports', '$92', 'new', 'No brand', 'No', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `shoper_watchitems`
--

CREATE TABLE `shoper_watchitems` (
  `id` bigint(20) NOT NULL,
  `Watch_id` bigint(20) NOT NULL,
  `cart_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoper_watchjewelrypages`
--

CREATE TABLE `shoper_watchjewelrypages` (
  `id` bigint(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Contact_name` varchar(20) NOT NULL,
  `Region` varchar(20) NOT NULL,
  `District` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Product_name` varchar(10) NOT NULL,
  `Price` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Brand` varchar(20) NOT NULL,
  `Delivery` varchar(20) NOT NULL,
  `Description` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoper_watchjewelrypages`
--

INSERT INTO `shoper_watchjewelrypages` (`id`, `Name`, `Phone`, `Contact_name`, `Region`, `District`, `Email`, `Image`, `Product_name`, `Price`, `Status`, `Brand`, `Delivery`, `Description`) VALUES
(7, 'norbhin norbhin norb', '0747904950', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/download_1_XhbrA78.jpeg', 'watch', '$92', 'new', 'No brand', 'No', 'available'),
(8, 'norbhin norbhin norb', '0747904950', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_4_mO0Apzy.jpeg', 'watch', '$92', 'new', 'No brand', 'No', 'available'),
(9, 'norbhin norbhin norb', '0747904950', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_5_UKY6SfO.jpeg', 'watch', '$92', 'new', 'No brand', 'No', 'available'),
(10, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_6_Qy6gUdp.jpeg', 'watch', '$92', 'new', 'No brand', 'No', 'available'),
(11, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_7_X3sJhZM.jpeg', 'jewel', '$92', 'new', 'No brand', 'No', 'available'),
(12, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_8_NEA7Zyf.jpeg', 'jewel', '$92', 'new', 'No brand', 'No', 'available'),
(13, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_9.jpeg', 'jewel', '$92', 'new', 'No brand', 'No', 'available'),
(14, 'norbeth norbhin mwal', '0613757172', 'norbhin norbhin norb', 'Iringa', 'Mafinga', 'musa@gmail.com', 'Uploads/images_ggo6762.jpeg', 'brand', '$92', 'new', 'No brand', 'No', 'available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `shoper_buyerform`
--
ALTER TABLE `shoper_buyerform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoper_cart`
--
ALTER TABLE `shoper_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoper_cartadmin`
--
ALTER TABLE `shoper_cartadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoper_cartdetail`
--
ALTER TABLE `shoper_cartdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoper_cartitems`
--
ALTER TABLE `shoper_cartitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Shoper_cartitems_Fashion_id_babca3b1_fk_Shoper_fashionpages_id` (`Fashion_id`),
  ADD KEY `Shoper_cartitems_cart_id_3d9d336b_fk_Shoper_cart_id` (`cart_id`);

--
-- Indexes for table `shoper_entertainmentitem`
--
ALTER TABLE `shoper_entertainmentitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Shoper_entertainmentitem_cart_id_07da5c59_fk_Shoper_cart_id` (`cart_id`),
  ADD KEY `Shoper_entertainment_Entertainment_id_7e57fbbd_fk_Shoper_en` (`Entertainment_id`);

--
-- Indexes for table `shoper_entertainmentpages`
--
ALTER TABLE `shoper_entertainmentpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoper_fashionpages`
--
ALTER TABLE `shoper_fashionpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoper_healthitems`
--
ALTER TABLE `shoper_healthitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Shoper_healthitems_Health_id_307a1a6f_fk_Shoper_he` (`Health_id`),
  ADD KEY `Shoper_healthitems_cart_id_ec2e6ba4_fk_Shoper_cart_id` (`cart_id`);

--
-- Indexes for table `shoper_healthproductspages`
--
ALTER TABLE `shoper_healthproductspages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoper_homedecorpages`
--
ALTER TABLE `shoper_homedecorpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoper_homeitems`
--
ALTER TABLE `shoper_homeitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Shoper_homeitems_Home_id_0d614739_fk_Shoper_homedecorpages_id` (`Home_id`),
  ADD KEY `Shoper_homeitems_cart_id_8d8a58de_fk_Shoper_cart_id` (`cart_id`);

--
-- Indexes for table `shoper_industrialproductspages`
--
ALTER TABLE `shoper_industrialproductspages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoper_industryitem`
--
ALTER TABLE `shoper_industryitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Shoper_industryitem_Industry_id_e676c17a_fk_Shoper_in` (`Industry_id`),
  ADD KEY `Shoper_industryitem_cart_id_2bcc5fef_fk_Shoper_cart_id` (`cart_id`);

--
-- Indexes for table `shoper_kidsitems`
--
ALTER TABLE `shoper_kidsitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Shoper_kidsitems_Kids_id_d57e378d_fk_Shoper_kidstoyspages_id` (`Kids_id`),
  ADD KEY `Shoper_kidsitems_cart_id_2aaf3667_fk_Shoper_cart_id` (`cart_id`);

--
-- Indexes for table `shoper_kidstoyspages`
--
ALTER TABLE `shoper_kidstoyspages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoper_luggagebagspages`
--
ALTER TABLE `shoper_luggagebagspages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoper_luggageitems`
--
ALTER TABLE `shoper_luggageitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Shoper_luggageitems_Luggage_id_029778b2_fk_Shoper_lu` (`Luggage_id`),
  ADD KEY `Shoper_luggageitems_cart_id_52fa576f_fk_Shoper_cart_id` (`cart_id`);

--
-- Indexes for table `shoper_order`
--
ALTER TABLE `shoper_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Shoper_order_buyer_id_60384fab_fk_Shoper_buyerform_id` (`buyer_id`),
  ADD KEY `Shoper_order_product_id_9f8e0dd8_fk_Shoper_fashionpages_id` (`product_id`),
  ADD KEY `Shoper_order_user_id_22200892_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `shoper_paymentpages`
--
ALTER TABLE `shoper_paymentpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoper_paypage`
--
ALTER TABLE `shoper_paypage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoper_sellerpages`
--
ALTER TABLE `shoper_sellerpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoper_shoesitems`
--
ALTER TABLE `shoper_shoesitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Shoper_shoesitems_Shoes_id_90a12400_fk_Shoper_shoespages_id` (`Shoes_id`),
  ADD KEY `Shoper_shoesitems_cart_id_ed48e4a9_fk_Shoper_cart_id` (`cart_id`);

--
-- Indexes for table `shoper_shoespages`
--
ALTER TABLE `shoper_shoespages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoper_sportsitems`
--
ALTER TABLE `shoper_sportsitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Shoper_sportsitems_Sports_id_73d478d0_fk_Shoper_sportspages_id` (`Sports_id`),
  ADD KEY `Shoper_sportsitems_cart_id_6b8d5b27_fk_Shoper_cart_id` (`cart_id`);

--
-- Indexes for table `shoper_sportspages`
--
ALTER TABLE `shoper_sportspages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoper_watchitems`
--
ALTER TABLE `shoper_watchitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Shoper_watchitems_Watch_id_945261ac_fk_Shoper_wa` (`Watch_id`),
  ADD KEY `Shoper_watchitems_cart_id_d8cba2f8_fk_Shoper_cart_id` (`cart_id`);

--
-- Indexes for table `shoper_watchjewelrypages`
--
ALTER TABLE `shoper_watchjewelrypages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `shoper_buyerform`
--
ALTER TABLE `shoper_buyerform`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `shoper_cart`
--
ALTER TABLE `shoper_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shoper_cartadmin`
--
ALTER TABLE `shoper_cartadmin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `shoper_cartdetail`
--
ALTER TABLE `shoper_cartdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `shoper_cartitems`
--
ALTER TABLE `shoper_cartitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `shoper_entertainmentitem`
--
ALTER TABLE `shoper_entertainmentitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shoper_entertainmentpages`
--
ALTER TABLE `shoper_entertainmentpages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shoper_fashionpages`
--
ALTER TABLE `shoper_fashionpages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `shoper_healthitems`
--
ALTER TABLE `shoper_healthitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shoper_healthproductspages`
--
ALTER TABLE `shoper_healthproductspages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shoper_homedecorpages`
--
ALTER TABLE `shoper_homedecorpages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `shoper_homeitems`
--
ALTER TABLE `shoper_homeitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shoper_industrialproductspages`
--
ALTER TABLE `shoper_industrialproductspages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `shoper_industryitem`
--
ALTER TABLE `shoper_industryitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shoper_kidsitems`
--
ALTER TABLE `shoper_kidsitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shoper_kidstoyspages`
--
ALTER TABLE `shoper_kidstoyspages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `shoper_luggagebagspages`
--
ALTER TABLE `shoper_luggagebagspages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `shoper_luggageitems`
--
ALTER TABLE `shoper_luggageitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shoper_order`
--
ALTER TABLE `shoper_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shoper_paymentpages`
--
ALTER TABLE `shoper_paymentpages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shoper_paypage`
--
ALTER TABLE `shoper_paypage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `shoper_sellerpages`
--
ALTER TABLE `shoper_sellerpages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shoper_shoesitems`
--
ALTER TABLE `shoper_shoesitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shoper_shoespages`
--
ALTER TABLE `shoper_shoespages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `shoper_sportsitems`
--
ALTER TABLE `shoper_sportsitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shoper_sportspages`
--
ALTER TABLE `shoper_sportspages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shoper_watchitems`
--
ALTER TABLE `shoper_watchitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shoper_watchjewelrypages`
--
ALTER TABLE `shoper_watchjewelrypages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shoper_cartitems`
--
ALTER TABLE `shoper_cartitems`
  ADD CONSTRAINT `Shoper_cartitems_Fashion_id_babca3b1_fk_Shoper_fashionpages_id` FOREIGN KEY (`Fashion_id`) REFERENCES `shoper_fashionpages` (`id`),
  ADD CONSTRAINT `Shoper_cartitems_cart_id_3d9d336b_fk_Shoper_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `shoper_cart` (`id`);

--
-- Constraints for table `shoper_entertainmentitem`
--
ALTER TABLE `shoper_entertainmentitem`
  ADD CONSTRAINT `Shoper_entertainment_Entertainment_id_7e57fbbd_fk_Shoper_en` FOREIGN KEY (`Entertainment_id`) REFERENCES `shoper_entertainmentpages` (`id`),
  ADD CONSTRAINT `Shoper_entertainmentitem_cart_id_07da5c59_fk_Shoper_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `shoper_cart` (`id`);

--
-- Constraints for table `shoper_healthitems`
--
ALTER TABLE `shoper_healthitems`
  ADD CONSTRAINT `Shoper_healthitems_Health_id_307a1a6f_fk_Shoper_he` FOREIGN KEY (`Health_id`) REFERENCES `shoper_healthproductspages` (`id`),
  ADD CONSTRAINT `Shoper_healthitems_cart_id_ec2e6ba4_fk_Shoper_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `shoper_cart` (`id`);

--
-- Constraints for table `shoper_homeitems`
--
ALTER TABLE `shoper_homeitems`
  ADD CONSTRAINT `Shoper_homeitems_Home_id_0d614739_fk_Shoper_homedecorpages_id` FOREIGN KEY (`Home_id`) REFERENCES `shoper_homedecorpages` (`id`),
  ADD CONSTRAINT `Shoper_homeitems_cart_id_8d8a58de_fk_Shoper_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `shoper_cart` (`id`);

--
-- Constraints for table `shoper_industryitem`
--
ALTER TABLE `shoper_industryitem`
  ADD CONSTRAINT `Shoper_industryitem_Industry_id_e676c17a_fk_Shoper_in` FOREIGN KEY (`Industry_id`) REFERENCES `shoper_industrialproductspages` (`id`),
  ADD CONSTRAINT `Shoper_industryitem_cart_id_2bcc5fef_fk_Shoper_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `shoper_cart` (`id`);

--
-- Constraints for table `shoper_kidsitems`
--
ALTER TABLE `shoper_kidsitems`
  ADD CONSTRAINT `Shoper_kidsitems_Kids_id_d57e378d_fk_Shoper_kidstoyspages_id` FOREIGN KEY (`Kids_id`) REFERENCES `shoper_kidstoyspages` (`id`),
  ADD CONSTRAINT `Shoper_kidsitems_cart_id_2aaf3667_fk_Shoper_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `shoper_cart` (`id`);

--
-- Constraints for table `shoper_luggageitems`
--
ALTER TABLE `shoper_luggageitems`
  ADD CONSTRAINT `Shoper_luggageitems_Luggage_id_029778b2_fk_Shoper_lu` FOREIGN KEY (`Luggage_id`) REFERENCES `shoper_luggagebagspages` (`id`),
  ADD CONSTRAINT `Shoper_luggageitems_cart_id_52fa576f_fk_Shoper_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `shoper_cart` (`id`);

--
-- Constraints for table `shoper_order`
--
ALTER TABLE `shoper_order`
  ADD CONSTRAINT `Shoper_order_buyer_id_60384fab_fk_Shoper_buyerform_id` FOREIGN KEY (`buyer_id`) REFERENCES `shoper_buyerform` (`id`),
  ADD CONSTRAINT `Shoper_order_product_id_9f8e0dd8_fk_Shoper_fashionpages_id` FOREIGN KEY (`product_id`) REFERENCES `shoper_fashionpages` (`id`),
  ADD CONSTRAINT `Shoper_order_user_id_22200892_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shoper_shoesitems`
--
ALTER TABLE `shoper_shoesitems`
  ADD CONSTRAINT `Shoper_shoesitems_Shoes_id_90a12400_fk_Shoper_shoespages_id` FOREIGN KEY (`Shoes_id`) REFERENCES `shoper_shoespages` (`id`),
  ADD CONSTRAINT `Shoper_shoesitems_cart_id_ed48e4a9_fk_Shoper_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `shoper_cart` (`id`);

--
-- Constraints for table `shoper_sportsitems`
--
ALTER TABLE `shoper_sportsitems`
  ADD CONSTRAINT `Shoper_sportsitems_Sports_id_73d478d0_fk_Shoper_sportspages_id` FOREIGN KEY (`Sports_id`) REFERENCES `shoper_sportspages` (`id`),
  ADD CONSTRAINT `Shoper_sportsitems_cart_id_6b8d5b27_fk_Shoper_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `shoper_cart` (`id`);

--
-- Constraints for table `shoper_watchitems`
--
ALTER TABLE `shoper_watchitems`
  ADD CONSTRAINT `Shoper_watchitems_Watch_id_945261ac_fk_Shoper_wa` FOREIGN KEY (`Watch_id`) REFERENCES `shoper_watchjewelrypages` (`id`),
  ADD CONSTRAINT `Shoper_watchitems_cart_id_d8cba2f8_fk_Shoper_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `shoper_cart` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
