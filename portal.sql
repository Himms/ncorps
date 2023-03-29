-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2023 at 09:24 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `title`, `status`) VALUES
(1, 'Access Bank', '1'),
(2, 'Zenith Bank', '1'),
(3, 'UBA Bank', '1'),
(4, 'GT Bank', '1'),
(5, 'Polaris Bank', '1');

-- --------------------------------------------------------

--
-- Table structure for table `eportal_menu`
--

CREATE TABLE `eportal_menu` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `menu_title` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `menu_function` varchar(200) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eportal_menu`
--

INSERT INTO `eportal_menu` (`id`, `type`, `menu_title`, `link`, `menu_function`, `status`) VALUES
(1, '', 'PROFILE', '', 'biodata()', '1');

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hostels`
--

INSERT INTO `hostels` (`id`, `title`, `status`) VALUES
(1, 'Hostel A', '1'),
(2, 'Hostel B', '1'),
(3, 'Hostel C', '1'),
(4, 'Hostel D', '1'),
(5, 'Hostel E', '1');

-- --------------------------------------------------------

--
-- Table structure for table `lga`
--

CREATE TABLE `lga` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `Lga` varchar(200) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lga`
--

INSERT INTO `lga` (`id`, `state_id`, `Lga`, `status`) VALUES
(1, 29, 'ABIA NORTH', '1'),
(2, 29, 'ABA SOUTH', '1'),
(3, 29, 'AROCHUKWU', '1'),
(4, 29, 'BENDE', '1'),
(5, 29, 'IKWUANO', '1'),
(6, 29, 'ISIALA NGWA NORTH', '1'),
(7, 29, 'ISIALA NGWA SOUTH', '1'),
(8, 29, 'ISUIKWUATO', '1'),
(9, 29, 'OBINGWA', '1'),
(10, 29, 'OHAFIA', '1'),
(11, 29, 'OSISIOMA', '1'),
(12, 29, 'UGWUNAGBO', '1'),
(13, 29, 'UKWA EAST', '1'),
(14, 29, 'UKWA WEST', '1'),
(15, 29, 'UMUAHIA', '1'),
(16, 29, 'NORTH', '1'),
(17, 29, 'UMUAHIA', '1'),
(18, 29, 'SOUTH', '1'),
(19, 29, 'UMU-NNEOCHI', '1'),
(20, 27, 'DEMSA', '1'),
(21, 27, 'FURORE', '1'),
(22, 27, 'GANYE', '1'),
(23, 27, 'GEREI', '1'),
(24, 27, 'GOMBI', '1'),
(25, 27, 'GUYUK', '1'),
(26, 27, 'HONG', '1'),
(27, 27, 'JADA', '1'),
(28, 27, 'LAMURDE', '1'),
(29, 27, 'MADAGALI', '1'),
(30, 27, 'MAIHA', '1'),
(31, 27, 'MAY O-BELW A', '1'),
(32, 27, 'MICHIKA', '1'),
(33, 27, 'MUBI NORTH', '1'),
(34, 27, 'MUBI SOUTH', '1'),
(35, 27, 'NUMAN', '1'),
(36, 27, 'SHELLENG', '1'),
(37, 27, 'SONG', '1'),
(38, 27, 'TUNGO', '1'),
(39, 27, 'YOLA NORTH', '1'),
(40, 27, 'YOLA SOUTH', '1'),
(41, 16, 'ABAK', '1'),
(42, 16, 'EASTERN OBOLO', '1'),
(43, 16, 'EKET', '1'),
(44, 16, 'ESIT EKET (UQUO)', '1'),
(45, 16, 'ESSIEN UDIM', '1'),
(46, 16, 'ETIM EKPO', '1'),
(47, 16, 'ETINAN', '1'),
(48, 16, 'IBENO', '1'),
(49, 16, 'IBESIKPO/ASUTAN', '1'),
(50, 16, 'IBIONO IBOM', '1'),
(51, 16, 'IKA', '1'),
(52, 16, 'IKONO', '1'),
(53, 16, 'IKOT ABASI', '1'),
(54, 16, 'IKOT EKPENE', '1'),
(55, 16, 'INI', '1'),
(56, 16, 'ITU', '1'),
(57, 16, 'MBO', '1'),
(58, 16, 'MKPAT ENIN', '1'),
(59, 16, 'NSIT ATAI', '1'),
(60, 16, 'NSIT IBOM', '1'),
(61, 16, 'NSIT UBIUM', '1'),
(62, 16, 'OBOT AKARA', '1'),
(63, 16, 'KOBO', '1'),
(64, 16, 'ONNAA', '1'),
(65, 16, 'ORON', '1'),
(66, 16, 'ORUKANAM', '1'),
(67, 16, 'UDUNG UKO', '1'),
(68, 16, 'UKANAFUN', '1'),
(69, 16, 'URBAN', '1'),
(70, 16, 'URUE OFFONG ORUKO', '1'),
(71, 16, 'UYO', '1'),
(72, 11, 'AGUATA', '1'),
(73, 11, 'AYAUMMEL', '1'),
(74, 11, 'ANAMBRA EAST', '1'),
(75, 11, 'ANAMBRA WEST(MBAMILI)', '1'),
(76, 11, 'ANAOCHA', '1'),
(77, 11, 'AWKA-NORTH', '1'),
(78, 11, 'AWKA SOUTH', '1'),
(79, 11, 'DUNUKOFIA', '1'),
(80, 11, 'EKWUSIGO', '1'),
(81, 11, 'IDEMILI NORTH', '1'),
(82, 11, 'IDEMILI SOUTH', '1'),
(83, 11, 'IHIALA', '1'),
(84, 11, 'NJIKOKA', '1'),
(85, 11, 'NNEWI NORTH', '1'),
(86, 11, 'NNEWI SOUTH', '1'),
(87, 11, 'OGBARU', '1'),
(88, 11, 'ONITSAHA', '1'),
(89, 11, 'ONITSHA SOUTH', '1'),
(90, 11, 'ORUMBA NORTH', '1'),
(91, 11, 'ORUMBA SOUTH', '1'),
(92, 11, 'OYI', '1'),
(93, 8, 'ALKALERE', '1'),
(94, 8, 'BAUCHI', '1'),
(95, 8, 'BOGORO', '1'),
(96, 8, 'DAMBAM', '1'),
(97, 8, 'DARAZO', '1'),
(98, 8, 'DASS', '1'),
(99, 8, 'GAMAWA', '1'),
(100, 8, 'GANJUWA', '1'),
(101, 8, 'GIADE', '1'),
(102, 8, 'ITAS/GADAU', '1'),
(103, 8, 'JAMA’ARE', '1'),
(104, 8, 'KATAGUM', '1'),
(105, 8, 'KIRFI', '1'),
(106, 8, 'MISAU', '1'),
(107, 8, 'NINGI', '1'),
(108, 8, 'SHIRA', '1'),
(109, 8, 'TAFAWA', '1'),
(110, 8, 'BALEWA', '1'),
(111, 8, 'TORO', '1'),
(112, 8, 'WARJI', '1'),
(113, 8, 'ZAKI', '1'),
(114, 37, 'BRASS', '1'),
(115, 37, 'EKEREMOR', '1'),
(116, 37, 'KOLOKUMA/OPOKUMA', '1'),
(117, 37, 'NEMBE', '1'),
(118, 37, 'OGBIA', '1'),
(119, 37, 'SAGBAMA', '1'),
(120, 37, 'SOUTHERN IJAW', '1'),
(121, 37, 'YENAGOA', '1'),
(122, 10, 'ADO', '1'),
(123, 10, 'AGATU', '1'),
(124, 10, 'APA', '1'),
(125, 10, 'BURUKU', '1'),
(126, 10, 'GBOKO', '1'),
(127, 10, 'GUMA', '1'),
(128, 10, 'GWER EAST', '1'),
(129, 10, 'GWER WEST', '1'),
(130, 10, 'KATSINA-ALA', '1'),
(131, 10, 'KONSHISHA', '1'),
(132, 10, 'KWANDE', '1'),
(133, 10, 'LOGO', '1'),
(134, 10, 'MAKURDI', '1'),
(135, 10, 'OBI', '1'),
(136, 10, 'OGBADIBO', '1'),
(137, 10, 'OJU', '1'),
(138, 10, 'OHIMINI', '1'),
(139, 10, 'OKPOKWU', '1'),
(140, 10, 'OTUKPO', '1'),
(141, 10, 'TARKA', '1'),
(142, 10, 'UKUM', '1'),
(143, 10, 'USHONGO', '1'),
(144, 10, 'VENDEIKYA', '1'),
(145, 12, 'ABADAM', '1'),
(146, 12, 'ASKIRA/UBA', '1'),
(147, 12, 'BAMA', '1'),
(148, 12, 'BAYO', '1'),
(149, 12, 'BIU', '1'),
(150, 12, 'CHIBOK', '1'),
(151, 12, 'DAMBOA', '1'),
(152, 12, 'DIKWA', '1'),
(153, 12, 'GUBIO', '1'),
(154, 12, 'GUZAMALA', '1'),
(155, 12, 'GWOZA', '1'),
(156, 12, 'HAWUL', '1'),
(157, 12, 'JERE', '1'),
(158, 12, 'KAGA', '1'),
(159, 12, 'KALA', '1'),
(160, 12, 'BALGE', '1'),
(161, 12, 'KONDUGA', '1'),
(162, 12, 'KUKAWA', '1'),
(163, 12, 'KWAYA KUSAR', '1'),
(164, 12, 'MAFA', '1'),
(165, 12, 'MAGUMERI', '1'),
(166, 12, 'MAIDUGURI', '1'),
(167, 12, 'MARTE', '1'),
(168, 12, 'MOBBAR', '1'),
(169, 12, 'MONGUNO', '1'),
(170, 12, 'NGALA', '1'),
(171, 12, 'NGANZAI', '1'),
(172, 12, 'SHANI', '1'),
(173, 28, 'ABI', '1'),
(174, 28, 'AKAMKPA', '1'),
(175, 28, 'AKPABUYO', '1'),
(176, 28, 'BAKASSI', '1'),
(177, 28, 'BEKWARRA', '1'),
(178, 28, 'BIASE', '1'),
(179, 28, 'BOKI', '1'),
(180, 28, 'CALABAR', '1'),
(181, 28, 'MUNICIPALITY', '1'),
(182, 28, 'CALABAR', '1'),
(183, 28, 'SOUTH', '1'),
(184, 28, 'ETUNG', '1'),
(185, 28, 'IKOM', '1'),
(186, 28, 'OBANLIKU', '1'),
(187, 28, 'OBUBRA', '1'),
(188, 28, 'OBUDU', '1'),
(189, 28, 'ODUKPANI', '1'),
(190, 28, 'OGOJA', '1'),
(191, 28, 'YAKURR', '1'),
(192, 28, 'YALA', '1'),
(193, 13, 'ANIOCHA NORTH', '1'),
(194, 13, 'ANIOCHA SOUTH', '1'),
(195, 13, 'BOMADI', '1'),
(196, 13, 'BURUTU', '1'),
(197, 13, 'ETHIOPE-EAST', '1'),
(198, 13, 'ETHIOPE-WEST', '1'),
(199, 13, 'IKA NORTH-EAST', '1'),
(200, 13, 'IKA-SOUTH', '1'),
(201, 13, 'ISOKO-NORTH', '1'),
(202, 13, 'ISOKO-SOUTH', '1'),
(203, 13, 'NDOKWA-EAST', '1'),
(204, 13, 'NDOKWA-WEST', '1'),
(205, 13, 'OKPE', '1'),
(206, 13, 'OSHIMILI-NORTH', '1'),
(207, 13, 'OSHIMILI-SOUTH', '1'),
(208, 13, 'PATANI', '1'),
(209, 13, 'SAPELE', '1'),
(210, 13, 'UDU', '1'),
(211, 13, 'UGHELLI NORTH', '1'),
(212, 13, 'UGHELLI- SOUTH', '1'),
(213, 13, 'UKWUANI', '1'),
(214, 13, 'UVWIE', '1'),
(215, 13, 'WARRI- NORTH', '1'),
(216, 13, 'WARRI-SOUTH', '1'),
(217, 13, 'WARRI- SOUTH WEST', '1'),
(218, 35, 'ABAKALIKI', '1'),
(219, 35, 'AFIKPO NORTH', '1'),
(220, 35, 'AFIKPO SOUTH', '1'),
(221, 35, 'EBONYI', '1'),
(222, 35, 'EZZA NORTH', '1'),
(223, 35, 'EZZA SOUTH', '1'),
(224, 35, 'IKWO', '1'),
(225, 35, 'ISHIELU', '1'),
(226, 35, 'IVO', '1'),
(227, 35, 'IZZI', '1'),
(228, 35, 'OHAOZARA', '1'),
(229, 35, 'OHAUKWU', '1'),
(230, 35, 'ONICHA', '1'),
(231, 25, 'AKOKO EDO', '1'),
(232, 25, 'EGOR', '1'),
(233, 25, 'ESAN CENTRAL', '1'),
(234, 25, 'ESAN NORTH EAST', '1'),
(235, 25, 'ESSAN SOUTH EAST', '1'),
(236, 25, 'ESAN WEST', '1'),
(237, 25, 'ESAN WEST', '1'),
(238, 25, 'ETSAKO', '1'),
(239, 25, 'CENTRAL', '1'),
(240, 25, 'ETSAKO EAST', '1'),
(241, 25, 'ETSAKO WEST', '1'),
(242, 25, 'IGUEBEN', '1'),
(243, 25, 'IKPOBA/OKHA', '1'),
(244, 25, 'OREDO', '1'),
(245, 25, 'ORHIONMW ON', '1'),
(246, 25, 'OVIA NORTH EAST', '1'),
(247, 25, 'OVIA SOUTH WEST', '1'),
(248, 25, 'OWAN EAST', '1'),
(249, 25, 'OWAN WEST', '1'),
(250, 25, 'UHUNMW ODE', '1'),
(251, 30, 'ADO EKITI', '1'),
(252, 30, 'EFON', '1'),
(253, 30, 'EKITI EAST', '1'),
(254, 30, 'EKITI WEST', '1'),
(255, 30, 'EKITI SOUTH WEST', '1'),
(256, 30, 'EMURE', '1'),
(257, 30, 'GBOYIN', '1'),
(258, 30, 'IDO/OSI', '1'),
(259, 30, 'IJERO', '1'),
(260, 30, 'IKERE', '1'),
(261, 30, 'IKOLE', '1'),
(262, 30, 'ILEJEMEJE', '1'),
(263, 30, 'IREPODU/IFELO', '1'),
(264, 30, 'DUN', '1'),
(265, 30, 'ISE/ORUN', '1'),
(266, 30, 'MOBA', '1'),
(267, 30, 'OYE', '1'),
(268, 23, 'ANINRI', '1'),
(269, 23, 'AWGU', '1'),
(270, 23, 'ENUGU-EAST', '1'),
(271, 23, 'ENUGU-NORTH', '1'),
(272, 23, 'ENUGU-SOUTH', '1'),
(273, 23, 'IGBO ETITI', '1'),
(274, 23, 'IGBO-EZE', '1'),
(275, 23, 'NORTH', '1'),
(276, 23, 'IGBO-EZE', '1'),
(277, 23, 'SOUTH', '1'),
(278, 23, 'ISI-UZO', '1'),
(279, 23, 'NKANU WEST', '1'),
(280, 23, 'NSUKKA', '1'),
(281, 23, 'OJI-RIVER', '1'),
(282, 23, 'UDENU', '1'),
(283, 23, 'UDI', '1'),
(284, 23, 'UZO-UWANI', '1'),
(285, 32, 'AKKO', '1'),
(286, 32, 'BALANGA', '1'),
(287, 32, 'BILLIRI', '1'),
(288, 32, 'DUKKU', '1'),
(289, 32, 'FUNAKAYE', '1'),
(290, 32, 'GOMBE', '1'),
(291, 32, 'KALTUNGO', '1'),
(292, 32, 'KWAMI', '1'),
(293, 32, 'NAFADA', '1'),
(294, 32, 'SHONGOM', '1'),
(295, 32, 'YAMALTU/DEBA', '1'),
(296, 14, 'ABOH MBAISE', '1'),
(297, 14, 'AHAIAZU', '1'),
(298, 14, 'MBAISE', '1'),
(299, 14, 'EHIME MBANO', '1'),
(300, 14, 'EZINIHITTE', '1'),
(301, 14, 'IDEATO NORTH', '1'),
(302, 14, 'IDEATO SOUTH', '1'),
(303, 14, 'IHITTE/UBOMA', '1'),
(304, 14, '(ISINWEKE)', '1'),
(305, 14, 'IKEDURU (IHO)', '1'),
(306, 14, 'ISIALA MBANO (UMUELEMAI)', '1'),
(307, 14, 'ISU (UMUNDUGBA)', '1'),
(308, 14, 'MBAITOLU (NWAORIEUBI)', '1'),
(309, 14, 'NJABA (NNENASA)', '1'),
(310, 14, 'NWANGELE (ONUNWANGELE ) AMAIGBO', '1'),
(311, 14, 'NKWERRE', '1'),
(312, 14, 'OBOWO (OTOKO)', '1'),
(313, 14, 'OGUTA (OGUTA)', '1'),
(314, 14, 'OHAJI/EGBEMA (MMAHU EGBEMA)', '1'),
(315, 14, 'OKIGWE (OKIGWE)', '1'),
(316, 14, 'ONUIMO', '1'),
(317, 14, 'ORSU (AWO IDEMILI)', '1'),
(318, 14, 'ORU-EAST', '1'),
(319, 14, 'ORU-WEST', '1'),
(320, 14, '(MGBIDI)', '1'),
(321, 14, 'OWERRI-URBAN (OWERRI)', '1'),
(322, 14, 'OWERRI NORTH (ORIE URATTA)', '1'),
(323, 14, 'OWERRI WEST (UMUGUMA)', '1'),
(324, 9, 'AUYO', '1'),
(325, 9, 'BABURA', '1'),
(326, 9, 'BIRNIN-KUDU', '1'),
(327, 9, 'BIRNIWA', '1'),
(328, 9, 'BUJI', '1'),
(329, 9, 'DUTSE', '1'),
(330, 9, 'GARKI', '1'),
(331, 9, 'GAGARAWA', '1'),
(332, 9, 'GUMEL', '1'),
(333, 9, 'GURI', '1'),
(334, 9, 'GWARAM', '1'),
(335, 9, 'GWIWA', '1'),
(336, 9, 'HADEJIA', '1'),
(337, 9, 'JAHUN', '1'),
(338, 9, 'KAFIN-HAUSA', '1'),
(339, 9, 'KAUGAMA', '1'),
(340, 9, 'KAZAURE', '1'),
(341, 9, 'K/KASAMMA', '1'),
(342, 9, 'KIYAWA', '1'),
(343, 9, 'MAIGATARI', '1'),
(344, 9, 'M/MADORI', '1'),
(345, 9, 'MIGA', '1'),
(346, 9, 'RINGIM', '1'),
(347, 9, 'RONI', '1'),
(348, 9, 'S/TANKARKAR', '1'),
(349, 9, 'TAURA', '1'),
(350, 9, 'YANKWASHI', '1'),
(351, 4, 'BIRNIN GWARI', '1'),
(352, 4, 'CHIKUN', '1'),
(353, 4, 'GIWA', '1'),
(354, 4, 'IGABI', '1'),
(355, 4, 'IKARA', '1'),
(356, 4, 'JABA', '1'),
(357, 4, 'JEMA’A’', '1'),
(358, 4, 'KACHIA', '1'),
(359, 4, 'KADUN NORTH', '1'),
(360, 4, 'KADUN SOUTH', '1'),
(361, 4, 'KAGARKO', '1'),
(362, 4, 'KAJURU', '1'),
(363, 4, 'KAURA', '1'),
(364, 4, 'KAURU', '1'),
(365, 4, 'KUBAU', '1'),
(366, 4, 'KUDAN', '1'),
(367, 4, 'LERE', '1'),
(368, 4, 'MAKARFI', '1'),
(369, 4, 'SABON GARI', '1'),
(370, 4, 'SANGA', '1'),
(371, 4, 'SOBA', '1'),
(372, 4, 'ZAGON KATAF', '1'),
(373, 4, 'ZARIA', '1'),
(374, 2, 'AJINGI', '1'),
(375, 2, 'ALBASU', '1'),
(376, 2, 'BAGWAI', '1'),
(377, 2, 'BEBEJI', '1'),
(378, 2, 'BICHI', '1'),
(379, 2, 'BUNKURE', '1'),
(380, 2, 'DALA', '1'),
(381, 2, 'DANBATTA', '1'),
(382, 2, 'DAWAKIN KUDU', '1'),
(383, 2, 'DAWAKIN TOFA', '1'),
(384, 2, 'DOGUWA', '1'),
(385, 2, 'FAGGE', '1'),
(386, 2, 'GABASAWA', '1'),
(387, 2, 'GARKO', '1'),
(388, 2, 'GARUN MALAM', '1'),
(389, 2, 'GAYA', '1'),
(390, 2, 'GEZAWA', '1'),
(391, 2, 'GWALE', '1'),
(392, 2, 'GWARZO', '1'),
(393, 2, 'KABO', '1'),
(394, 2, 'KANO', '1'),
(395, 2, 'MUNICIPAL', '1'),
(396, 2, 'KARAYE', '1'),
(397, 2, 'KIBIYA', '1'),
(398, 2, 'KIRU', '1'),
(399, 2, 'KUMBOTSO', '1'),
(400, 2, 'KUNCHI', '1'),
(401, 2, 'KURA', '1'),
(402, 2, 'MAKODA', '1'),
(403, 2, 'MINJIBIR', '1'),
(404, 2, 'MADOBI', '1'),
(405, 2, 'NASARAWA', '1'),
(406, 2, 'RANO', '1'),
(407, 2, 'RIMIN GADO', '1'),
(408, 2, 'ROGO', '1'),
(409, 2, 'SHANONO', '1'),
(410, 2, 'SUMAILA', '1'),
(411, 2, 'TAKAI', '1'),
(412, 2, 'TARAUNI', '1'),
(413, 2, 'TOFA', '1'),
(414, 2, 'TUDUN WADA', '1'),
(415, 2, 'TSANYAWA', '1'),
(416, 2, 'UNGOGO', '1'),
(417, 2, 'TUDUN WADA', '1'),
(418, 2, 'TSANYAWA', '1'),
(419, 5, 'KATSINA ', '1'),
(420, 5, 'BINDAWA', '1'),
(421, 5, 'CHARANCHI', '1'),
(422, 5, 'DANDUME', '1'),
(423, 5, 'DANJA', '1'),
(424, 5, 'DAN MUSA', '1'),
(425, 5, 'DAURA', '1'),
(426, 5, 'DUTSI', '1'),
(427, 5, 'DUTSIN-MA', '1'),
(428, 5, 'FASKARI', '1'),
(429, 5, 'FUNTUA', '1'),
(430, 5, 'INGAWA', '1'),
(431, 5, 'JIBIA', '1'),
(432, 5, 'KAFUR', '1'),
(433, 5, 'KAITA', '1'),
(434, 5, 'KANKA', '1'),
(435, 5, 'KATSINA', '1'),
(436, 5, 'KURFI', '1'),
(437, 5, 'KUSADA', '1'),
(438, 5, 'MAI’ADUA', '1'),
(439, 5, 'MALUMFASHI', '1'),
(440, 5, 'MANI', '1'),
(441, 5, 'MASHI', '1'),
(442, 5, 'MATAZU', '1'),
(443, 5, 'MUSAWA', '1'),
(444, 5, 'RIMI', '1'),
(445, 5, 'SABUWA', '1'),
(446, 5, 'SAFANA', '1'),
(447, 5, 'SAND AMU', '1'),
(448, 5, 'ZANGO', '1'),
(449, 24, 'ALIERO', '1'),
(450, 24, 'AREWA', '1'),
(451, 24, 'ARGUNGU', '1'),
(452, 24, 'AUGIE', '1'),
(453, 24, 'BAGUDO', '1'),
(454, 24, 'BIRNIN KEBBI', '1'),
(455, 24, 'BUNZA', '1'),
(456, 24, 'DANDI', '1'),
(457, 24, 'FAKAI', '1'),
(458, 24, 'GWANDU', '1'),
(459, 24, 'JEGA', '1'),
(460, 24, 'KALGO', '1'),
(461, 24, 'KOKO/BESSE', '1'),
(462, 24, 'MAIYAMA', '1'),
(463, 24, 'NGASKI', '1'),
(464, 24, 'SAKABA', '1'),
(465, 24, 'SHANGA', '1'),
(466, 24, 'SURU', '1'),
(467, 24, 'WASAGU/DANKO', '1'),
(468, 24, 'ZURU', '1'),
(469, 21, 'ADA VI', '1'),
(470, 21, 'AJAOKUTA', '1'),
(471, 21, 'ANKPA', '1'),
(472, 21, 'BASSA', '1'),
(473, 21, 'DEKINA', '1'),
(474, 21, 'IBAJI', '1'),
(475, 21, 'ID AH', '1'),
(476, 21, 'IGALA-MELA', '1'),
(477, 21, 'IJUMU', '1'),
(478, 21, 'KABBA/BUNU', '1'),
(479, 21, 'KOGI (KK)', '1'),
(480, 21, 'LOKOJA', '1'),
(481, 21, 'MOPA-MORO', '1'),
(482, 21, 'OFU', '1'),
(483, 21, 'OGORI', '1'),
(484, 21, 'MAGONGO', '1'),
(485, 21, 'OKEHI', '1'),
(486, 21, 'OKEN', '1'),
(487, 21, 'OLAMABORO', '1'),
(488, 21, 'OMALA', '1'),
(489, 21, 'YAGBA EAST', '1'),
(490, 21, 'YAGBA WEST', '1'),
(491, 31, 'ASA', '1'),
(492, 31, 'BARUTEN', '1'),
(493, 31, 'EDU', '1'),
(494, 31, 'EKITI', '1'),
(495, 31, 'IFELODUN', '1'),
(496, 31, 'ILORIN SOUTH', '1'),
(497, 31, 'ILORIN WEST', '1'),
(498, 31, 'IREPODUN', '1'),
(499, 31, 'ISIN', '1'),
(500, 31, 'KALAMA', '1'),
(501, 31, 'MORO', '1'),
(502, 31, 'OFFA', '1'),
(503, 31, 'OKE-ERO', '1'),
(504, 31, 'OYUN', '1'),
(505, 31, 'PATIGI', '1'),
(506, 3, 'AGEGE', '1'),
(507, 3, 'AJEROMI/IFELO', '1'),
(508, 3, 'DUN', '1'),
(509, 3, 'ALIMOSHO', '1'),
(510, 3, 'AMUWO-ODOFIN', '1'),
(511, 3, 'APAPA', '1'),
(512, 3, 'BADAGRY', '1'),
(513, 3, 'EPE', '1'),
(514, 3, 'ETI-OSA', '1'),
(515, 3, 'IBEJU/LEKKI', '1'),
(516, 3, 'IFAKO-IJAYE', '1'),
(517, 3, 'IKEJA', '1'),
(518, 3, 'IKORODU', '1'),
(519, 3, 'KOSOFE', '1'),
(520, 3, 'LAGOS ISLAND', '1'),
(521, 3, 'LAGOS MAINLAND', '1'),
(522, 3, 'MUSHIN ', '1'),
(523, 3, 'OJO', '1'),
(524, 3, 'OSHODI-ISOLO', '1'),
(525, 3, 'SHOMOLU', '1'),
(526, 36, 'AKWANGA', '1'),
(527, 36, 'AWE', '1'),
(528, 36, 'DOMA', '1'),
(529, 36, 'KARU', '1'),
(530, 36, 'KEANA', '1'),
(531, 36, 'KEFFI', '1'),
(532, 36, 'KOKONA', '1'),
(533, 36, 'LAFIA', '1'),
(534, 36, 'NASARAWA', '1'),
(535, 36, 'NASARAWA/EGGON', '1'),
(536, 36, 'OBI', '1'),
(537, 36, 'TOTO', '1'),
(538, 36, 'WAMBA', '1'),
(539, 15, 'AGAIE', '1'),
(540, 15, 'AGWARA', '1'),
(541, 15, 'BIDA', '1'),
(542, 15, 'BORGU', '1'),
(543, 15, 'BOSSO', '1'),
(544, 15, 'CHANCHAGA', '1'),
(545, 15, 'EDATI', '1'),
(546, 15, 'GBAKO', '1'),
(547, 15, 'GURARA', '1'),
(548, 15, 'KATCHA', '1'),
(549, 15, 'KONTAGORA', '1'),
(550, 15, 'LAPAI', '1'),
(551, 15, 'LAVUN', '1'),
(552, 15, 'MAGAMA', '1'),
(553, 15, 'MARIGA', '1'),
(554, 15, 'MASHEGU', '1'),
(555, 15, 'MOKWA', '1'),
(556, 15, 'MUNYA', '1'),
(557, 15, 'PAIKORO', '1'),
(558, 15, 'RAFI', '1'),
(559, 15, 'RIJAU', '1'),
(560, 15, 'SHIRORO', '1'),
(561, 15, 'SULEJA', '1'),
(562, 15, 'TAFA', '1'),
(563, 15, 'WUSHISHI', '1'),
(564, 17, 'ABEOKUTA NORTH', '1'),
(565, 17, 'ABEOKUTA  NORTH', '1'),
(566, 17, 'ADO-ODO OTA', '1'),
(567, 17, 'EGBADO NORTH', '1'),
(568, 17, 'EWEKORO', '1'),
(569, 17, 'IFO', '1'),
(570, 17, 'IJEBU EAST', '1'),
(571, 17, 'IJEBU NORTH', '1'),
(572, 17, 'IJEBU NORTH EAST', '1'),
(573, 17, 'IJEBU ODE', '1'),
(574, 17, 'IKENNE', '1'),
(575, 17, 'IMEKO AFON', '1'),
(576, 17, 'IPOKIA', '1'),
(577, 17, 'OBEFEMI/OWODE', '1'),
(578, 17, 'ODEDA', '1'),
(579, 17, 'ODOGBOLU', '1'),
(580, 17, 'REMO NORTH', '1'),
(581, 17, 'SAGAMU', '1'),
(582, 19, 'AKOKO NORTH EAST', '1'),
(583, 19, 'AKOKO NORTH WEST', '1'),
(584, 19, 'AKOKO SOUTH EAST', '1'),
(585, 19, 'AKOKO SOUTH', '1'),
(586, 19, 'AKURE SOUTH', '1'),
(587, 19, 'ESE-ODO', '1'),
(588, 19, 'IDANRE', '1'),
(589, 19, 'IFEDORE', '1'),
(590, 19, 'ILAJE', '1'),
(591, 19, 'ILEOLUJI/OKE-IGBO', '1'),
(592, 19, 'IRELE', '1'),
(593, 19, 'ODIGBO', '1'),
(594, 19, 'ONDO EAST', '1'),
(595, 19, 'ONDO WEST', '1'),
(596, 19, 'OSE', '1'),
(597, 19, 'OWO', '1'),
(598, 20, 'ATAKUMOSA EADT', '1'),
(599, 20, 'ATAKUNMOSA WEST', '1'),
(600, 20, 'AYEDADE', '1'),
(601, 20, 'AYEDIRE', '1'),
(602, 20, 'BOLUWA-DURO', '1'),
(603, 20, 'BORIPE', '1'),
(604, 20, 'EDE NORTH', '1'),
(605, 20, 'EDE SOUTH', '1'),
(606, 20, 'EGBEDORE', '1'),
(607, 20, 'EJIGBO', '1'),
(608, 20, 'IFE CENTRAL', '1'),
(609, 20, 'IFEDAYO', '1'),
(610, 20, 'IFE EAST', '1'),
(611, 20, 'IFELODUN', '1'),
(612, 20, 'IFE NORTH', '1'),
(613, 20, 'IFE SOUTH', '1'),
(614, 20, 'ILA', '1'),
(615, 20, 'ILESA EAST', '1'),
(616, 20, 'ILESA WEST', '1'),
(617, 20, 'IREPODUN', '1'),
(618, 20, 'IREWOLE', '1'),
(619, 20, 'ISOKAN', '1'),
(620, 20, 'IWO', '1'),
(621, 20, 'OBOKUN', '1'),
(622, 20, 'ODO-OTIN', '1'),
(623, 20, 'OLA-OLUWA', '1'),
(624, 20, 'OLORUNDA', '1'),
(625, 20, 'ORIADE', '1'),
(626, 20, 'OROLU', '1'),
(627, 20, 'OSOGBO', '1'),
(628, 6, 'AFIJIO', '1'),
(629, 6, 'AKINYELE', '1'),
(630, 6, 'ATIBA', '1'),
(631, 6, 'ATISBO', '1'),
(632, 6, 'EGBEDA', '1'),
(633, 6, 'IBADAN NORTH', '1'),
(634, 6, 'IBADAN NORTH EAST', '1'),
(635, 6, 'IBADAN NORTH WEST', '1'),
(636, 6, 'IBADAN SOUTH EAST', '1'),
(637, 6, 'IBADAN SOUTH WEST', '1'),
(638, 6, 'IBARAPA', '1'),
(639, 6, 'CENTRAL', '1'),
(640, 6, 'IBARAPA EAST', '1'),
(641, 6, 'IBARAPA NORTH', '1'),
(642, 6, 'IDO', '1'),
(643, 6, 'IREPO', '1'),
(644, 6, 'ISEYIN', '1'),
(645, 6, 'ITESIWAJU', '1'),
(646, 6, 'IWAJOWA', '1'),
(647, 6, 'KAJOLA', '1'),
(648, 6, 'LAGELU', '1'),
(649, 6, 'OGBOMOSO', '1'),
(650, 6, 'NORTH', '1'),
(651, 6, 'OGBOMOSO', '1'),
(652, 6, 'OGO-OLUWA', '1'),
(653, 6, 'OLORUNSOGO', '1'),
(654, 6, 'OLUYOLE', '1'),
(655, 6, 'ONA-ARA', '1'),
(656, 6, 'OORELOPE', '1'),
(657, 6, 'ORIIRE', '1'),
(658, 6, 'OYO EAST', '1'),
(659, 6, 'OYO WEST', '1'),
(660, 6, 'SAKI EAST', '1'),
(661, 6, 'SAKI WEST', '1'),
(662, 6, 'SURULERE', '1'),
(663, 26, 'BARKIN LADI', '1'),
(664, 26, 'BASSA', '1'),
(665, 26, 'BOKKOS', '1'),
(666, 26, 'JOS EAST', '1'),
(667, 26, 'JOS NORTH', '1'),
(668, 26, 'JOS SOUTH', '1'),
(669, 26, 'KANAM', '1'),
(670, 26, 'KANKE', '1'),
(671, 26, 'LANG-TANG SOUTH', '1'),
(672, 26, 'MANGU', '1'),
(673, 26, 'MIKANG', '1'),
(674, 26, 'PANKSHIN', '1'),
(675, 26, 'QU AN PAN', '1'),
(676, 26, 'RIYOM', '1'),
(677, 26, 'SHENDAM', '1'),
(678, 26, 'WASE', '1'),
(679, 7, 'ABUA-ODUAL', '1'),
(680, 7, 'AHODA EAST', '1'),
(681, 7, 'AHOADA WEST', '1'),
(682, 7, 'AKUKUTORU WEST', '1'),
(683, 7, 'ANDONI', '1'),
(684, 7, 'ASARI-TORU', '1'),
(685, 7, 'BONNY', '1'),
(686, 7, 'DEGEMA', '1'),
(687, 7, 'ELEME', '1'),
(688, 7, 'EMOHUA', '1'),
(689, 7, 'ETCHE', '1'),
(690, 7, 'GOKANA', '1'),
(691, 7, 'IKWERRE', '1'),
(692, 7, 'KHANA', '1'),
(693, 7, 'OBIO/AKPOR', '1'),
(694, 7, 'OGBA/EGBEMA/NDONI', '1'),
(695, 7, 'OGU/BOLO', '1'),
(696, 7, 'OKRIKA', '1'),
(697, 7, 'OMUMA', '1'),
(698, 7, 'OPOBO/NKORO', '1'),
(699, 7, 'OYIGBO', '1'),
(700, 7, 'PORT HARCOURT', '1'),
(701, 7, 'TAI', '1'),
(702, 18, 'BENJI', '1'),
(703, 18, 'BODINGA', '1'),
(704, 18, 'DANGE/SHUNI', '1'),
(705, 18, 'GADA', '1'),
(706, 18, 'GORONYO', '1'),
(707, 18, 'GUDU', '1'),
(708, 18, 'GWADABAWA', '1'),
(709, 18, 'ILLELA', '1'),
(710, 18, 'ISA', '1'),
(711, 18, 'KWARE', '1'),
(712, 18, 'KEBBE', '1'),
(713, 18, 'RABAH', '1'),
(714, 18, 'S/BIRNI', '1'),
(715, 18, 'SHAGARI', '1'),
(716, 18, 'SILAME', '1'),
(717, 18, 'SOKOTO NORTH', '1'),
(718, 18, 'SOKOTO SOUTH', '1'),
(719, 18, 'TAMBUWAL', '1'),
(720, 18, 'TANGAZA', '1'),
(721, 18, 'TURETA', '1'),
(722, 18, 'WAMAKKO', '1'),
(723, 18, 'WURNO', '1'),
(724, 18, 'YABO', '1'),
(725, 34, 'ARDO KOLA', '1'),
(726, 34, 'BALI', '1'),
(727, 34, 'DONGA', '1'),
(728, 34, 'GASHAKA', '1'),
(729, 34, 'GASSOL', '1'),
(730, 34, 'IBI', '1'),
(731, 34, 'JALINGO', '1'),
(732, 34, 'LAMIDO', '1'),
(733, 34, 'KURMI', '1'),
(734, 34, 'LAU', '1'),
(735, 34, 'SARDAUNA', '1'),
(736, 34, 'TAKUM', '1'),
(737, 34, 'USSA', '1'),
(738, 34, 'WUKARI', '1'),
(739, 34, 'YORRO', '1'),
(740, 34, 'ZING', '1'),
(741, 33, 'BADE', '1'),
(742, 33, 'BURSUARI', '1'),
(743, 33, 'DAMATURU', '1'),
(744, 33, 'FIKA', '1'),
(745, 33, 'FUNE', '1'),
(746, 33, 'GEIDAM', '1'),
(747, 33, 'GUJBA', '1'),
(748, 33, 'GULANI', '1'),
(749, 33, 'JAKUSKO', '1'),
(750, 33, 'KARASUWA', '1'),
(751, 33, 'MACHINA', '1'),
(752, 33, 'NANGERE', '1'),
(753, 33, 'NGURU', '1'),
(754, 33, 'TARMUA', '1'),
(755, 33, 'YUNUSARI', '1'),
(756, 33, 'YUNUFARI', '1'),
(757, 22, 'ANKA', '1'),
(758, 22, 'BAKURA', '1'),
(759, 22, 'BIRNIN MAGAJI', '1'),
(760, 22, 'BUKKUYUM', '1'),
(761, 22, 'BUNGUDU', '1'),
(762, 22, 'GUMMI', '1'),
(763, 22, 'GUASAU', '1'),
(764, 22, 'KAURA NAMODA', '1'),
(765, 22, 'MARADUN', '1'),
(766, 22, 'MARU', '1'),
(767, 22, 'SHINKAFI', '1'),
(768, 22, 'TALATA MAFARA', '1'),
(769, 22, 'TSAFE', '1'),
(770, 38, 'ABAJI', '1'),
(771, 38, 'BWARI', '1'),
(772, 38, 'GWAGWALADA', '1'),
(773, 38, 'KUJE', '1'),
(774, 38, 'KWALI', '1'),
(775, 38, 'MUNICIPAL', '1');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(11) NOT NULL,
  `system_code` varchar(200) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `project_sm_logo` varchar(200) NOT NULL,
  `projects_title` varchar(200) NOT NULL,
  `project_code` varchar(200) NOT NULL,
  `website` varchar(200) NOT NULL,
  `contact_person` varchar(200) NOT NULL,
  `slider` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `system_code`, `status`, `project_sm_logo`, `projects_title`, `project_code`, `website`, `contact_person`, `slider`) VALUES
(1, '812ed4562d3211363a7b813aa9cd2cf042b63bb2tt256e8190e474aatt256e8190e474aa', '1', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `saed`
--

CREATE TABLE `saed` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saed`
--

INSERT INTO `saed` (`id`, `title`, `status`) VALUES
(1, 'Fashion Design', '1'),
(2, 'ICT', '1'),
(3, 'Auto-Mobile Repair', '1'),
(4, 'Cosmetics', '1'),
(5, 'Photography', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `current_session` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `title`, `current_session`, `status`) VALUES
(1, '2020/2021', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `title`, `status`) VALUES
(2, 'KANO STATE', '1'),
(3, 'LAGOS STATE', '1'),
(4, 'KADUNA STATE', '1'),
(5, 'KATSINA STATE', '1'),
(6, 'OYO STATE', '1'),
(7, 'RIVERS STATE', '1'),
(8, 'BAUCHI STATE', '1'),
(9, 'JIGAWA STATE', '1'),
(10, 'BENUE STATE', '1'),
(11, 'ANAMBRA STATE', '1'),
(12, 'BORNO STATE', '1'),
(13, 'DELTA STATE', '1'),
(14, 'IMO STATE', '1'),
(15, 'NIGER STATE', '1'),
(16, 'AKWA IBOM STATE', '1'),
(17, 'OGUN STATE', '1'),
(18, 'SOKOTO STATE', '1'),
(19, 'ONDO STATE', '1'),
(20, 'OSUN STATE', '1'),
(21, 'KOGI STATE', '1'),
(22, 'ZAMFARA STATE', '1'),
(23, 'ENUGU STATE', '1'),
(24, 'KEBBI STATE', '1'),
(25, 'EDO STATE', '1'),
(26, 'PLATEAU STATE', '1'),
(27, 'ADAMAWA STATE', '1'),
(28, 'CROSS RIVER STATE', '1'),
(29, 'ABIA STATE', '1'),
(30, 'EKITI STATE', '1'),
(31, 'KWARA STATE', '1'),
(32, 'GOMBE STATE', '1'),
(33, 'YOBE STATE', '1'),
(34, 'TARABA STATE', '1'),
(35, 'EBONYI STATE', '1'),
(36, 'NASARAWA STATE', '1'),
(37, 'BAYELSA STATE', '1'),
(38, 'ABUJA FEDERAL CAPITAL TERRITORY', '1');

-- --------------------------------------------------------

--
-- Table structure for table `student_2020_2021`
--

CREATE TABLE `student_2020_2021` (
  `id` int(11) NOT NULL,
  `number` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `other_names` varchar(200) NOT NULL,
  `programme_id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_no` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `lga_id` int(11) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `level` varchar(50) NOT NULL,
  `faculty` int(11) NOT NULL,
  `hostel_eligibility` varchar(200) NOT NULL,
  `marital_status` varchar(200) NOT NULL,
  `medi` varchar(200) NOT NULL,
  `H_status` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `permenat_address` varchar(200) DEFAULT NULL,
  `sponsorship_name` varchar(200) NOT NULL,
  `sponsorship_address` varchar(200) NOT NULL,
  `sponsor_number` varchar(200) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 1,
  `image` varchar(200) NOT NULL,
  `hostel` int(11) NOT NULL,
  `bedspace` int(11) DEFAULT NULL,
  `platoon` int(11) DEFAULT NULL,
  `sead` int(11) DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `user_status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_2020_2021`
--

INSERT INTO `student_2020_2021` (`id`, `number`, `first_name`, `surname`, `other_names`, `programme_id`, `email`, `phone_no`, `gender`, `state_id`, `lga_id`, `password`, `level`, `faculty`, `hostel_eligibility`, `marital_status`, `medi`, `H_status`, `dob`, `address`, `permenat_address`, `sponsorship_name`, `sponsorship_address`, `sponsor_number`, `project_id`, `image`, `hostel`, `bedspace`, `platoon`, `sead`, `bank`, `user_status`) VALUES
(1, 'u23/com05/2020', 'usman jibril', '', '', 0, 'uthjib4u@gmail.com', '11111111111', 'Male', NULL, NULL, 'adbc91a43e988a3b5b745b8529a90b61', '500 Level', 1, '', '', '', '', '', '', NULL, '', '', '', 1, '', 5, 3, 5, 1, NULL, '1'),
(2, 'U09/FAN/CSC/006', 'Mohammed Lawal Abubakar', '', '', 0, 'softdiddy@gmail.com', '07060703923', 'Male', NULL, NULL, '1bf6db9091b7d918bd831a67ae00a85b', '500 Level', 1, '', '', '', '', '', '', NULL, '', '', '', 1, '', 2, 8, 4, 5, 4, '1'),
(3, 'u23/com05/1285', 'usman jibril', '', '', 0, 'usman@gmail.com', '22222222222', 'Male', NULL, NULL, '13723a026a1a9b499f0e9f9fb8f4f6ad', '500 Level', 1, '', '', '', '', '', '', NULL, '', '', '', 1, '', 3, 1, 4, 5, 1, '1'),
(4, 'u23/com05/1280', 'ibrahim moh', '', '', 0, 'ismail@gmail.com', '33333333333', 'Male', NULL, NULL, 'd86641a4189b19defacd72ed661d6a88', '500 Level', 1, '', '', '', '', '', '', NULL, '', '', '', 1, '', 1, 3, 6, 3, 2, '1'),
(5, 'u12/05/2020', 'usman jibril', '', '', 0, 'jibril@gmail.com', '44444444444', 'Male', NULL, NULL, 'da9d3427a781fc66847d855ed67c7ae7', '500 Level', 1, '', '', '', '', '', '', NULL, '', '', '', 1, '', 3, 19, 2, 2, 3, '1'),
(6, 'u10/com01/10', 'ismail musa', '', '', 0, 'a@gmail.com', '999999999', 'Male', NULL, NULL, 'c8c605999f3d8352d7bb792cf3fdb25b', '500 Level', 1, '', '', '', '', '', '', NULL, '', '', '', 1, '', 4, 5, 6, 1, 2, '1'),
(7, 'NG/NGS/2010/001', 'Abubakar JIbrin', '', '', 0, 'aj@gmail.com', '7777777777', 'Male', NULL, NULL, '664fae06a748e656511d55b59fc6f85e', '500 Level', 1, '', '', '', '', '', '', NULL, '', '', '', 1, '', 4, 18, 7, 5, 5, '1'),
(8, 'NYSC/FUT/2022/020599', 'Nabil shettima', '', '', 0, 'fut@gmail.com', '07060703997', 'Male', NULL, NULL, '1e9b1f723ce2023e23d5dd5c0f702c70', '500 Level', 1, '', '', '', '', '', '', NULL, '', '', '', 1, '', 5, 7, 4, 3, 5, '1');

-- --------------------------------------------------------

--
-- Table structure for table `student_2020_20211`
--

CREATE TABLE `student_2020_20211` (
  `id` int(11) NOT NULL,
  `number` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `other_names` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_no` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `state_id` int(11) NOT NULL,
  `lga_id` int(11) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` varchar(50) NOT NULL,
  `faculty` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 1,
  `image` varchar(200) NOT NULL,
  `user_status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_2020_20211`
--

INSERT INTO `student_2020_20211` (`id`, `number`, `first_name`, `surname`, `other_names`, `email`, `phone_no`, `gender`, `state_id`, `lga_id`, `password`, `level`, `faculty`, `project_id`, `image`, `user_status`) VALUES
(1, 'U09/FAN/CSC/006', 'Mohammed Lawal Abubakar', '', '', 'softdiddy@gmail.com', '09000000000', 'Male', 0, 0, '8b32fecd6bbde73646055c16ae93f674', '500 Level', 1, 1, '', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eportal_menu`
--
ALTER TABLE `eportal_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lga`
--
ALTER TABLE `lga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `saed`
--
ALTER TABLE `saed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_2020_2021`
--
ALTER TABLE `student_2020_2021`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_2020_20211`
--
ALTER TABLE `student_2020_20211`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eportal_menu`
--
ALTER TABLE `eportal_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hostels`
--
ALTER TABLE `hostels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lga`
--
ALTER TABLE `lga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=776;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `saed`
--
ALTER TABLE `saed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `student_2020_2021`
--
ALTER TABLE `student_2020_2021`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student_2020_20211`
--
ALTER TABLE `student_2020_20211`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
