-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2020 at 04:06 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `huateam`
--
CREATE DATABASE IF NOT EXISTS `huateam` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `huateam`;

-- --------------------------------------------------------

--
-- Table structure for table `cikk`
--

CREATE TABLE `cikk` (
  `azon` int(11) NOT NULL,
  `cim` varchar(32) COLLATE utf8_hungarian_ci NOT NULL,
  `leiras` varchar(128) COLLATE utf8_hungarian_ci NOT NULL,
  `szoveg` text COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `felhasznalo`
--

CREATE TABLE `felhasznalo` (
  `azon` int(11) NOT NULL,
  `felh` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `passwd` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `so` char(6) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `admine` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `felhasznalo`
--

INSERT INTO `felhasznalo` (`azon`, `felh`, `passwd`, `so`, `email`, `admine`) VALUES
(2, 'admin', '14dd8c698b7c334f95d1', '1Vb0Hp', 'admin@admin.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jarmu`
--

CREATE TABLE `jarmu` (
  `azon` int(11) NOT NULL,
  `br` varchar(4) COLLATE utf8_hungarian_ci NOT NULL,
  `nev` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `tipus` char(1) COLLATE utf8_hungarian_ci NOT NULL,
  `nemzet` char(3) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Dumping data for table `jarmu`
--

INSERT INTO `jarmu` (`azon`, `br`, `nev`, `tipus`, `nemzet`) VALUES
(1, '3.0', 'Sdkfz. 234/4 Pakwagen', 'G', 'GER'),
(2, '3.7', 'Wirbelwind', 'G', 'GER'),
(3, '3.7', 'T-34 (1942)', 'G', 'SOV'),
(4, '3.7', 'Bf-110 G2', 'A', 'GER'),
(5, '4.0', 'Bf-109 F-4/F-4 Trop', 'A', 'GER'),
(6, '4.0', 'Bf-109 F-2', 'A', 'GER'),
(7, '4.0', 'BTD', 'A', 'USA'),
(8, '4.0', 'SB2C-4', 'A', 'USA'),
(9, '4.0', 'SB2C-5', 'A', 'FRA'),
(10, '4.0', 'Yak-9T', 'A', 'SOV'),
(11, '4.0', 'F6F', 'A', 'USA'),
(12, '4.0', 'P63-A10', 'A', 'USA'),
(13, '4.0', 'P63-A10 (USSR)', 'A', 'SOV'),
(14, '4.0', 'P63-C5', 'A', 'USA'),
(15, '4.0', 'P63-C5 (FRA)', 'A', 'FRA'),
(16, '4.0', 'P63-C5 (USSR)', 'A', 'SOV'),
(17, '4.0', 'Tu-2', 'A', 'SOV'),
(18, '4.0', 'Ki-43-III', 'A', 'JAP'),
(19, '4.0', 'M4A5', 'G', 'USA'),
(20, '4.0', 'M4A2', 'G', 'USA'),
(21, '4.0', 'M24', 'G', 'USA'),
(22, '4.0', 'Pzkpfw. IV F2', 'G', 'GER'),
(23, '4.0', 'Pzkpfw. IV G', 'G', 'GER'),
(24, '4.0', 'T-34-747r', 'G', 'GER'),
(25, '4.0', 'KV-1B', 'G', 'GER'),
(26, '4.0', 'Pzkpfw. Churchill', 'G', 'GER'),
(27, '4.0', 'StuG III G', 'G', 'GER'),
(28, '4.0', 'KV-1 L-11', 'G', 'SOV'),
(29, '4.0', 'KV-1E', 'G', 'SOV'),
(30, '4.0', 'T-34E', 'G', 'SOV'),
(31, '4.0', 'T-34E STZ', 'G', 'SOV'),
(32, '4.0', 'BTR-152A', 'G', 'SOV'),
(33, '4.0', 'Churchill III', 'G', 'GBR'),
(34, '4.0', 'Cromwell I', 'G', 'GBR'),
(35, '4.0', 'Crusader AA Mk II', 'G', 'GBR'),
(36, '4.0', 'Chi-Nu II', 'G', 'JAP'),
(37, '4.0', 'M24', 'G', 'JAP'),
(38, '4.0', 'R3-T20 FA-HS', 'G', 'ITA'),
(39, '4.0', 'ARL-44 ACL-1', 'G', 'FRA'),
(40, '4.0', 'M24', 'G', 'CHN'),
(41, '4.0', 'M4A3', 'G', 'CHN'),
(42, '4.0', 'T-34 1943', 'G', 'CHN'),
(43, '4.3', 'A6M5', 'A', 'JAP'),
(44, '4.3', 'B7A2', 'A', 'JAP'),
(45, '4.3', 'Pe-8', 'A', 'SOV'),
(46, '4.3', 'Kv-1 Zis-5', 'G', 'SOV'),
(47, '4.3', 'Kv-1S', 'G', 'SOV'),
(48, '4.3', 'T-34-57', 'G', 'SOV'),
(49, '4.3', 'T-34-57 mod. 1943', 'G', 'SOV'),
(50, '4.3', 'Chi-To', 'G', 'JAP'),
(51, '4.3', 'Jagdpanzer 38(t)', 'G', 'GER'),
(52, '4.7', 'Do-217 E-4', 'A', 'GER'),
(53, '4.7', 'Bf 109 G-2/G-2 Trop', 'A', 'GER'),
(54, '4.7', 'Bf 109 G-6', 'A', 'GER'),
(55, '4.7', 'He 219 A-7', 'A', 'GER'),
(56, '4.7', 'Do-217 E-2', 'A', 'GER'),
(57, '4.7', 'A6M5 ko', 'A', 'JAP'),
(58, '4.7', 'A6M5 otsu', 'A', 'JAP'),
(59, '4.7', 'Brigand B 1', 'A', 'GBR'),
(60, '4.7', 'M6A1', 'G', 'USA'),
(61, '4.7', 'Jagdpanzer IV', 'G', 'GER'),
(62, '4.7', 'KV I C 756 (r)', 'G', 'GER'),
(63, '4.7', 'Ostwind', 'G', 'GER'),
(64, '4.7', 'SU-85', 'G', 'SOV'),
(65, '4.7', 'ZSU-37', 'G', 'SOV'),
(66, '4.7', 'Sherman Firefly', 'G', 'GBR'),
(67, '4.7', 'Churchill VII', 'G', 'GBR'),
(68, '4.7', 'Avenger', 'G', 'GBR'),
(69, '4.7', 'Crusader AA Mk I', 'G', 'GBR'),
(70, '4.7', 'Chi-To late', 'G', 'JAP'),
(71, '4.7', 'M4 Tipo IC', 'G', 'ITA'),
(72, '4.7', 'M4A4 (SA50)', 'G', 'FRA'),
(73, '4.7', 'M4A1 (FL10)', 'G', 'FRA'),
(74, '4.7', 'AMX-13 DCA 40', 'G', 'FRA'),
(75, '5.0', 'Wyvern S4', 'A', 'GBR'),
(76, '5.0', 'M19', 'G', 'USA'),
(77, '5.0', 'M4A1 76(W)', 'G', 'USA'),
(78, '5.3', 'Bf 109 G-10', 'A', 'GER'),
(79, '5.3', 'Me 410 B-6/R3', 'A', 'GER'),
(80, '5.3', 'A-26C45', 'A', 'USA'),
(81, '5.3', 'A7M2', 'A', 'JAP'),
(82, '5.3', 'J2M3', 'A', 'JAP'),
(83, '5.3', 'Seafire FR.47', 'A', 'GBR'),
(84, '5.3', 'Sea Fury', 'A', 'GBR'),
(85, '5.3', 'T20', 'G', 'USA'),
(86, '5.3', 'Tiger H1', 'G', 'GER'),
(87, '5.3', 'VK 45.01(P)', 'G', 'GER'),
(88, '5.3', 'Panzer IV/70(V)', 'G', 'GER'),
(89, '5.3', 'IS-1', 'G', 'SOV'),
(90, '5.3', 'SU-85M', 'G', 'SOV'),
(91, '5.3', 'Type 65 (USSR)', 'G', 'SOV'),
(92, '5.3', 'T-34-85(D5T)', 'G', 'SOV'),
(93, '5.3', 'A.C.IV', 'G', 'GBR'),
(94, '5.3', 'Comet I', 'G', 'GBR'),
(95, '5.3', 'Iron Duke IV', 'G', 'GBR'),
(96, '5.3', 'Challenger', 'G', 'GBR'),
(97, '5.3', 'Chi-Ri II', 'G', 'JAP'),
(98, '5.3', 'Type 65', 'G', 'CHN'),
(99, '5.7', 'T-34-85 S-53', 'G', 'CHN'),
(100, '5.7', 'T-34-84 Gai', 'G', 'CHN'),
(101, '5.7', 'M18 (CHN)', 'G', 'CHN'),
(102, '5.7', 'M18', 'G', 'USA'),
(103, '5.7', 'IS-2', 'G', 'CHN'),
(104, '6.0', 'T25', 'G', 'USA'),
(105, '5.7', 'Panther A', 'G', 'GER'),
(106, '5.7', 'Ersatz M10', 'G', 'GER'),
(107, '5.7', 'Tiger E', 'G', 'GER'),
(108, '5.7', 'Pz. Bfw. VI(P)', 'G', 'GER'),
(109, '5.7', 'Ostwind II', 'G', 'GER'),
(110, '5.7', 'KV-220', 'G', 'SOV'),
(111, '5.7', 'T-34-85', 'G', 'SOV'),
(112, '5.7', 'IS-2', 'G', 'SOV'),
(113, '5.7', 'M4A3 76(W)', 'G', 'USA'),
(114, '5.7', 'M4A3 76(W) (Japan)', 'G', 'JAP'),
(115, '5.7', 'Ta 152 C-3', 'A', 'GER'),
(116, '6.0', 'Do 335 B-2', 'A', 'GER'),
(117, '6.0', 'Spitfire F.Mk. XVIII E', 'A', 'GBR'),
(118, '6.0', 'F8F-1', 'A', 'USA'),
(119, '6.0', 'M4A3E2 76(W)', 'G', 'USA'),
(120, '6.0', 'F4U-7', 'A', 'FRA'),
(121, '6.0', 'Re 2005', 'A', 'ITA'),
(122, '6.0', 'N1K2-J', 'A', 'JAP'),
(123, '6.0', 'N1K2-Ja', 'A', 'JAP'),
(124, '6.0', 'M41A1', 'G', 'USA'),
(125, '6.0', 'M41A1 (Japan)', 'G', 'JAP'),
(126, '6.0', 'Panther F', 'G', 'GER'),
(127, '6.0', 'Panther G', 'G', 'GER'),
(128, '6.0', 'Centurion Mk 1', 'G', 'GBR'),
(129, '6.0', 'Ho-Ri Prototype', 'G', 'JAP'),
(130, '6.0', 'M36', 'G', 'CHN'),
(131, '6.0', 'M42', 'G', 'USA'),
(132, '6.0', 'M42 (Japan)', 'G', 'JAP'),
(133, '6.3', 'F8F-1B', 'A', 'USA'),
(134, '6.3', 'AMX-13', 'G', 'FRA'),
(135, '6.7', 'Spitfire Mk. 24', 'A', 'GBR'),
(136, '6.7', 'Ar 234 B-2', 'A', 'GER'),
(137, '6.7', 'Me 262A-2a', 'A', 'GER'),
(138, '6.7', 'Me 262A-1/U4', 'A', 'GER'),
(139, '6.7', 'Kikka', 'A', 'JAP'),
(140, '6.7', 'Spitfire Mk. 22', 'A', 'GBR'),
(141, '6.7', 'T34', 'G', 'USA'),
(142, '6.7', 'T92', 'G', 'USA'),
(143, '6.7', 'T30', 'G', 'USA'),
(144, '6.7', 'Tiger II (H)', 'G', 'GER'),
(145, '6.7', 'Tiger II (H) SLA', 'G', 'GER'),
(146, '6.7', 'Tiger II 105mm', 'G', 'GER'),
(147, '6.7', 'Panther II', 'G', 'GER'),
(148, '6.7', 'Ru 251', 'G', 'GER'),
(149, '6.7', 'Flakpanzer 341 Coelian', 'G', 'GER'),
(150, '6.7', 'Kugelblitz', 'G', 'GER'),
(151, '6.7', 'T-44', 'G', 'SOV'),
(152, '6.7', 'Centurion Mk. 3', 'G', 'GBR'),
(153, '6.7', 'FV4202', 'G', 'GBR'),
(154, '6.7', 'Caernarvon', 'G', 'GBR'),
(155, '6.7', 'Strv 81 (RB 52)', 'G', 'GBR'),
(156, '6.7', 'AUBL/74', 'G', 'ITA'),
(157, '6.7', 'AMX M4', 'G', 'FRA'),
(158, '6.7', 'Char 25t', 'G', 'FRA'),
(159, '7.0', 'Me 262A-1a/U1', 'A', 'GER'),
(160, '7.0', 'T-44-100', 'G', 'SOV'),
(161, '7.0', 'T29', 'G', 'USA'),
(162, '7.0', 'AMX-50', 'G', 'FRA'),
(163, '7.0', 'Ho-Ri Production', 'G', 'JAP'),
(164, '7.0', 'M48A2 C', 'G', 'GER'),
(165, '7.3', 'AMX-50 Foch', 'G', 'FRA'),
(166, '7.3', 'F-84B26', 'A', 'USA'),
(167, '7.3', 'Ar 234 C-3', 'A', 'GER'),
(168, '7.3', 'Vampire FB 5', 'A', 'GBR'),
(169, '7.3', 'Vampire FB 52A', 'A', 'ITA'),
(170, '7.3', 'R2Y2 V1', 'A', 'JAP'),
(171, '7.3', 'R2Y2 V2', 'A', 'JAP'),
(172, '7.3', 'R2Y2 V3', 'A', 'JAP'),
(173, '7.3', 'M48', 'G', 'USA'),
(174, '7.3', 'M47', 'G', 'USA'),
(175, '7.3', 'M46', 'G', 'USA'),
(176, '7.3', 'T32', 'G', 'USA'),
(177, '7.3', 'mKPZ M47', 'G', 'GER'),
(178, '7.3', 'IS-6', 'G', 'SOV'),
(179, '7.3', 'BMP-1', 'G', 'SOV'),
(180, '7.3', 'ZBD86 (BMP-1)', 'G', 'CHN'),
(181, '7.3', 'M48A1', 'G', 'CHN'),
(182, '7.3', 'Falcon', 'G', 'GBR'),
(183, '7.7', 'F-84G-21-RE', 'A', 'USA'),
(184, '7.7', 'F-84G-21-RE (CHN)', 'A', 'CHN'),
(185, '7.7', 'F-84G-21-RE (ITA)', 'A', 'ITA'),
(186, '7.7', 'F-84G-21-RE (FRA)', 'A', 'FRA'),
(187, '7.7', 'B1 Centauro', 'G', 'ITA'),
(188, '7.7', 'OF-40', 'G', 'ITA'),
(189, '7.7', 'M47(105/55)', 'G', 'ITA'),
(190, '7.7', 'M.D.450B Barougan', 'A', 'FRA'),
(191, '7.7', 'M60', 'G', 'USA'),
(192, '7.7', 'Magach 3', 'G', 'USA'),
(193, '7.7', 'T-54 (1947)', 'G', 'SOV'),
(194, '7.7', 'T-54 (1949)', 'G', 'SOV'),
(195, '7.7', 'T-54 (1951)', 'G', 'SOV'),
(196, '7.7', 'Conqueror', 'G', 'GBR'),
(197, '7.7', 'Vickers MBT', 'G', 'GBR'),
(198, '7.7', 'Object 120', 'G', 'SOV'),
(199, '7.7', 'Leopard I', 'G', 'GER'),
(200, '7.7', 'Lorraine 40t', 'G', 'FRA'),
(201, '7.7', 'STB-1', 'G', 'JAP'),
(202, '8.0', 'T95E1', 'G', 'USA'),
(203, '8.0', 'T54E1', 'G', 'USA'),
(204, '8.0', 'M103', 'G', 'USA'),
(205, '8.0', 'M3 Bradley', 'G', 'USA'),
(206, '8.0', 'M247', 'G', 'USA'),
(207, '8.0', 'Flakpz. Gepard', 'G', 'GER'),
(208, '8.0', 'Object 906', 'G', 'SOV'),
(209, '8.0', 'ZSU-23-4', 'G', 'SOV'),
(210, '8.0', 'Warrior', 'G', 'GBR'),
(211, '8.0', 'Chieftain Marksman', 'G', 'GBR'),
(212, '8.0', 'Type 87', 'G', 'JAP'),
(213, '8.0', 'AMX-30', 'G', 'FRA'),
(214, '8.0', 'AMX-50 Surbaissé', 'G', 'FRA'),
(215, '8.0', 'AMX-10RC', 'G', 'FRA'),
(216, '8.0', 'AMX-30DCA', 'G', 'FRA'),
(217, '8.0', 'Type 59', 'G', 'CHN'),
(218, '8.0', 'Type 69', 'G', 'CHN'),
(219, '8.0', 'Meteor F Mk. 8 G41K', 'A', 'GBR'),
(220, '8.0', 'AUBL/74 HVG', 'G', 'ITA'),
(221, '8.3', 'BMP-2', 'G', 'SOV'),
(222, '8.7', 'T-55AM', 'G', 'SOV'),
(223, '8.7', 'MiG-15bis', 'A', 'SOV'),
(224, '8.7', 'MiG-15bis (GER)', 'A', 'GER'),
(225, '8.7', 'Leopard A1A1', 'G', 'GER'),
(226, '8.7', 'J2 (MiG-15bis)', 'A', 'CHN'),
(227, '9.0', 'MiG-17', 'A', 'SOV'),
(228, '9.0', 'Shengyang F-5 (MiG-17)', 'A', 'CHN'),
(229, '9.0', 'J-4 (MiG-17)', 'A', 'CHN'),
(230, '9.0', 'FJ-4B', 'A', 'USA'),
(231, '9.0', 'FJ-4B VMF-232', 'A', 'USA'),
(232, '9.0', 'M.D.452 Mystere IIC', 'A', 'FRA'),
(233, '9.0', 'Super Mystere B2', 'A', 'FRA'),
(234, '9.0', 'G91 R/1', 'A', 'ITA'),
(235, '9.0', 'G91 Pre serie', 'A', 'ITA'),
(236, '9.0', 'G91 R/3', 'A', 'GER'),
(237, '9.0', 'Meteor F Mk. 8 Reaper', 'A', 'GBR'),
(238, '9.0', 'XM-803', 'G', 'USA'),
(239, '9.0', 'MBT-70', 'G', 'USA'),
(240, '9.0', 'Leopard A1A1(L/44)', 'G', 'GER'),
(241, '9.0', 'Kpz 70', 'G', 'GER'),
(242, '9.0', 'Type 74/G', 'G', 'JAP'),
(243, '9.0', 'AMX-30 Super', 'G', 'FRA'),
(244, '9.3', 'XM-1 (GM)', 'G', 'USA'),
(245, '9.7', 'Leopard 2K', 'G', 'GER'),
(246, '9.7', 'G91 YS', 'A', 'ITA'),
(247, '10.0', 'M1A1', 'G', 'USA'),
(248, '10.3', 'F-100D', 'A', 'USA'),
(249, '10.3', 'F-4C Phantom II', 'A', 'USA'),
(250, '10.3', 'Mitsubishi T-2', 'A', 'JAP'),
(251, '10.3', 'IPM1', 'G', 'USA'),
(252, '10.3', 'M1A2', 'G', 'USA'),
(253, '10.3', 'ADATS', 'G', 'USA'),
(254, '10.3', 'Leopard 2A4', 'G', 'GER'),
(255, '10.3', 'Leopard 2A5', 'G', 'GER'),
(256, '10.3', 'T-80B', 'G', 'SOV'),
(257, '10.3', 'T-80U', 'G', 'SOV'),
(258, '10.3', 'ZPRK 2S6 Tungushka', 'G', 'SOV'),
(259, '10.3', 'Type 90', 'G', 'JAP'),
(260, '10.3', 'C1 Ariete', 'G', 'ITA'),
(261, '10.3', 'C1 Ariete PSO', 'G', 'ITA'),
(262, '10.3', 'Leclerc', 'G', 'FRA');

-- --------------------------------------------------------

--
-- Table structure for table `jelentkezo`
--

CREATE TABLE `jelentkezo` (
  `azon` int(11) NOT NULL,
  `jatekosnev` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `csatak_szama` mediumint(9) NOT NULL,
  `jatekmod` char(2) COLLATE utf8_hungarian_ci NOT NULL,
  `hadszin` char(1) COLLATE utf8_hungarian_ci NOT NULL,
  `volte_klanban` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Table structure for table `jelentkezobirtokol`
--

CREATE TABLE `jelentkezobirtokol` (
  `azon` int(11) NOT NULL,
  `jatekos_azon` int(11) DEFAULT NULL,
  `jarmu_azon` int(11) DEFAULT NULL,
  `legenyseg_szint` int(11) NOT NULL,
  `fullose` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Table structure for table `klantagbirtokol`
--

CREATE TABLE `klantagbirtokol` (
  `azon` int(11) NOT NULL,
  `klantag_azon` int(11) DEFAULT NULL,
  `jarmu_azon` int(11) DEFAULT NULL,
  `legenyseg_szint` int(11) NOT NULL,
  `fullose` tinyint(1) NOT NULL,
  `magabiztossag` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cikk`
--
ALTER TABLE `cikk`
  ADD PRIMARY KEY (`azon`);

--
-- Indexes for table `felhasznalo`
--
ALTER TABLE `felhasznalo`
  ADD PRIMARY KEY (`azon`);

--
-- Indexes for table `jarmu`
--
ALTER TABLE `jarmu`
  ADD PRIMARY KEY (`azon`);

--
-- Indexes for table `jelentkezo`
--
ALTER TABLE `jelentkezo`
  ADD PRIMARY KEY (`azon`);

--
-- Indexes for table `jelentkezobirtokol`
--
ALTER TABLE `jelentkezobirtokol`
  ADD PRIMARY KEY (`azon`),
  ADD KEY `jelentkezo_azon` (`jatekos_azon`),
  ADD KEY `jarmu_azon` (`jarmu_azon`);

--
-- Indexes for table `klantagbirtokol`
--
ALTER TABLE `klantagbirtokol`
  ADD PRIMARY KEY (`azon`),
  ADD KEY `klantag_azon` (`klantag_azon`),
  ADD KEY `jarmu_azon` (`jarmu_azon`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cikk`
--
ALTER TABLE `cikk`
  MODIFY `azon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `felhasznalo`
--
ALTER TABLE `felhasznalo`
  MODIFY `azon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jarmu`
--
ALTER TABLE `jarmu`
  MODIFY `azon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jelentkezo`
--
ALTER TABLE `jelentkezo`
  MODIFY `azon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jelentkezobirtokol`
--
ALTER TABLE `jelentkezobirtokol`
  MODIFY `azon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `klantagbirtokol`
--
ALTER TABLE `klantagbirtokol`
  MODIFY `azon` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jelentkezobirtokol`
--
ALTER TABLE `jelentkezobirtokol`
  ADD CONSTRAINT `jelentkezobirtokol_ibfk_1` FOREIGN KEY (`jarmu_azon`) REFERENCES `jarmu` (`azon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jelentkezobirtokol_ibfk_2` FOREIGN KEY (`jatekos_azon`) REFERENCES `jelentkezo` (`azon`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `klantagbirtokol`
--
ALTER TABLE `klantagbirtokol`
  ADD CONSTRAINT `klantagbirtokol_ibfk_1` FOREIGN KEY (`klantag_azon`) REFERENCES `felhasznalo` (`azon`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `klantagbirtokol_ibfk_2` FOREIGN KEY (`jarmu_azon`) REFERENCES `jarmu` (`azon`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
