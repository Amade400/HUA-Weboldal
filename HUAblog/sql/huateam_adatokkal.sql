-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Már 31. 01:51
-- Kiszolgáló verziója: 10.1.37-MariaDB
-- PHP verzió: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `huateam`
--
CREATE DATABASE IF NOT EXISTS `huateam` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `huateam`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cikk`
--

CREATE TABLE `cikk` (
  `azon` int(11) NOT NULL,
  `cim` varchar(32) COLLATE utf8_hungarian_ci NOT NULL,
  `leiras` varchar(128) COLLATE utf8_hungarian_ci NOT NULL,
  `szoveg` text COLLATE utf8_hungarian_ci NOT NULL,
  `datum` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `cikk`
--

INSERT INTO `cikk` (`azon`, `cim`, `leiras`, `szoveg`, `datum`) VALUES
(18, 'Teszt Cikk 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '<div><div>orem ipsum dolor sit amet, consectetur adipiscing elit. Cras dapibus sem semper massa dapibus, ut varius purus cursus. Mauris tincidunt elit id hendrerit sollicitudin. Nulla at volutpat nisl, sed molestie nisl. Morbi varius, mauris tempor ullamcorper commodo, ipsum orci fermentum elit, vestibulum lacinia nunc sem vitae neque. In finibus ex neque, sit amet tincidunt eros rhoncus ut. Phasellus aliquam hendrerit ante, ut porta diam scelerisque sit amet. Duis vitae consectetur magna.</div><div>Quisque neque odio, pulvinar ac mi nec, iaculis condimentum felis. Integer varius vehicula dolor eu pulvinar. Sed luctus magna lorem. Pellentesque consequat leo urna, placerat pretium lectus efficitur vel. Sed commodo faucibus tortor, vitae vehicula purus ullamcorper at. Maecenas sit amet nulla eget leo iaculis tempus. Duis tristique interdum accumsan. Donec vel nunc fermentum, facilisis quam in, suscipit velit. Phasellus consequat, urna scelerisque congue blandit, ante eros aliquam enim, feugiat euismod elit mi ut sapien. Nunc aliquet, neque id aliquet ornare, orci dui molestie leo, ut semper erat ipsum mollis justo. Donec elementum urna lacus, in interdum mi posuere vitae. Mauris pulvinar condimentum efficitur. Quisque rhoncus, sem sed venenatis mollis, est felis egestas augue, in sollicitudin felis nunc sed nisi. Nullam consequat volutpat ipsum vel varius. Morbi imperdiet urna quis rutrum dignissim. Etiam pretium luctus tortor, in finibus tortor ornare eget.</div><div>Proin commodo tortor a tellus porttitor consectetur. Aenean id ante eget risus feugiat tincidunt. Curabitur pretium, leo eget varius ornare, arcu turpis facilisis leo, ut fringilla sapien magna et neque. Aliquam hendrerit, eros eget scelerisque tempor, purus mauris pellentesque orci, vitae tincidunt quam turpis in ligula. Praesent imperdiet elementum mi. Vivamus lacinia lorem ac quam bibendum, id sodales justo mattis. In gravida, urna faucibus iaculis placerat, augue turpis aliquam lacus, nec iaculis neque quam in sem. Mauris condimentum lacinia massa, eu semper lacus.</div><div>Donec dapibus leo quis tristique aliquet. Suspendisse dignissim risus elit, a tristique ipsum mollis et. Nulla egestas ex eu luctus aliquet. Cras rutrum lorem eget ex ullamcorper molestie. Cras volutpat sem vitae erat ornare, vel venenatis est pharetra. Morbi aliquet tempus ante, at pulvinar neque venenatis eget. Nam a facilisis arcu. Nam elementum fermentum turpis quis ultrices. Vivamus porta eros id magna porttitor venenatis. Ut id vulputate eros. Curabitur nec fermentum tellus. Suspendisse purus ante, consectetur in est vel, dictum gravida nunc. In a sem eu ipsum facilisis iaculis eget scelerisque leo. Maecenas laoreet nisl eget fermentum sodales. Fusce erat odio, porttitor at pretium in, volutpat vel libero.</div></div>', '2020-03-30'),
(19, 'Teszt Cikk 2', 'Proin commodo tortor a tellus porttitor consectetur', '<div><div>Proin commodo tortor a tellus porttitor consectetur. Aenean id ante eget risus feugiat tincidunt. Curabitur pretium, leo eget varius ornare, arcu turpis facilisis leo, ut fringilla sapien magna et neque. Aliquam hendrerit, eros eget scelerisque tempor, purus mauris pellentesque orci, vitae tincidunt quam turpis in ligula. Praesent imperdiet elementum mi. Vivamus lacinia lorem ac quam bibendum, id sodales justo mattis. In gravida, urna faucibus iaculis placerat, augue turpis aliquam lacus, nec iaculis neque quam in sem. Mauris condimentum lacinia massa, eu semper lacus.</div><div>Donec dapibus leo quis tristique aliquet. Suspendisse dignissim risus elit, a tristique ipsum mollis et. Nulla egestas ex eu luctus aliquet. Cras rutrum lorem eget ex ullamcorper molestie. Cras volutpat sem vitae erat ornare, vel venenatis est pharetra. Morbi aliquet tempus ante, at pulvinar neque venenatis eget. Nam a facilisis arcu. Nam elementum fermentum turpis quis ultrices. Vivamus porta eros id magna porttitor venenatis. Ut id vulputate eros. Curabitur nec fermentum tellus. Suspendisse purus ante, consectetur in est vel, dictum gravida nunc. In a sem eu ipsum facilisis iaculis eget scelerisque leo. Maecenas laoreet nisl eget fermentum sodales. Fusce erat odio, porttitor at pretium in, volutpat vel libero.</div></div>', '2020-03-30'),
(21, 'Teszt Cikk 3', 'Ut aliquet ex metus', '<div>Ut aliquet ex metus, vel ultrices ipsum lacinia in. Curabitur sodales molestie felis. Suspendisse lorem turpis, rutrum id dapibus et, sollicitudin non felis. Ut turpis lacus, ullamcorper eget risus id, euismod aliquet erat. Curabitur facilisis eu dui nec tristique. Donec hendrerit sem at diam vehicula, ac pretium augue laoreet. Sed viverra euismod elit, sit amet varius velit fringilla <br></div>', '2020-03-30'),
(24, 'Teszt Cikk 4', 'Nunc in lorem nibh. Proin vel hendrerit justo. Morbi lacinia accumsan lorem, eu viverra diam accumsan vel.', '<div>Nunc in lorem nibh. Proin vel hendrerit justo. Morbi lacinia accumsan lorem, eu viverra diam accumsan vel.<br></div><div><div>Fusce interdum ipsum vitae turpis dignissim congue. Aenean sit amet semper tellus. Aliquam at eros mauris. Donec eget ex vulputate, venenatis lorem a, posuere lorem. Phasellus sit amet placerat lectus. Curabitur eget metus vel risus feugiat cursus. Etiam posuere facilisis ipsum, at posuere risus dignissim congue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In a aliquet quam. Ut venenatis libero nec magna mollis euismod. Integer cursus, sem ut malesuada pulvinar, massa odio bibendum lacus, ac fringilla dolor enim in enim.</div><div>Maecenas dignissim laoreet est sit amet pellentesque. Proin eget nibh odio. Etiam porta, mauris eu eleifend porttitor, justo leo ullamcorper metus, eu blandit nunc sapien a ligula. Aenean dictum ullamcorper maximus. Aenean eu fermentum enim, in ultricies erat. Donec nec placerat enim. Integer cursus nisi eget porttitor feugiat. Sed sit amet lacus bibendum, pulvinar nibh nec, posuere mi. Aliquam aliquam semper arcu, id pretium sapien molestie et. Maecenas ac porttitor risus, sollicitudin bibendum ligula. Mauris congue accumsan sagittis. Donec a lacus a justo congue condimentum in vitae sem. Curabitur non aliquam sapien. Proin sed ullamcorper erat. Mauris sit amet felis at urna mattis laoreet. Proin non pharetra nibh.</div><div>Morbi rutrum lacus vel purus mollis, sed ullamcorper elit varius. Vestibulum molestie congue volutpat. Donec ullamcorper lacus lacus, ut convallis erat tristique ac. Pellentesque ante ante, venenatis eu gravida eu, pretium sed nunc. Praesent varius porta ligula, vitae fermentum arcu euismod eget. Nullam sollicitudin felis ornare, consequat turpis a, varius felis. Etiam ipsum ipsum, maximus at porta eget, volutpat semper nisl. Sed cursus faucibus augue a ultrices. Curabitur ac eros in dui fringilla viverra eu sed augue. Duis semper sollicitudin placerat. Suspendisse at efficitur nunc. Integer consequat metus ut augue bibendum, a volutpat nibh ornare. Donec eu massa aliquam, faucibus libero non, ultricies tortor. Donec egestas posuere varius.</div><div>Vivamus ac lacinia nisi. Praesent ultrices gravida odio at vulputate. Donec mauris quam, consequat id tempor ut, pretium eget est. Phasellus venenatis ante eu enim luctus, id pulvinar erat efficitur. Praesent ornare placerat nunc a tincidunt. Nam efficitur euismod dolor, eu rutrum purus scelerisque sed. Proin lacus tortor, accumsan eu fermentum vel, blandit et ex. Quisque sagittis ligula at lacinia ultricies. Aliquam tempor in ante dictum aliquet. Aenean at dictum elit. Pellentesque lobortis lectus ut elit vehicula, varius sagittis arcu fermentum. Proin quis iaculis dui. Curabitur est dui, ornare sit amet laoreet quis, facilisis at nisl. Proin vitae suscipit urna.</div></div>', '2020-03-30'),
(25, 'Teszt Cikk 5', 'Integer id pulvinar quam, in tempus orci.', '<div><div>Integer id pulvinar quam, in tempus orci. Vivamus pharetra tempus tincidunt. Praesent tempus tincidunt neque, quis gravida tellus ultricies vitae. Etiam bibendum tortor et tortor efficitur tristique. Donec feugiat quam eget augue accumsan, sed consectetur ligula viverra. Etiam sagittis mauris nec enim venenatis, ac commodo libero condimentum. Sed blandit, tellus a cursus varius, orci lectus ultrices libero, non efficitur libero tortor quis elit. Suspendisse dignissim placerat fermentum.</div><div>Duis ante mi, tempus sed mi ac, dapibus vehicula sem. Aenean rhoncus magna eu magna vehicula tristique. Curabitur sit amet velit nunc. Proin consequat tincidunt cursus. Nullam eu viverra ipsum. Phasellus placerat congue diam sit amet fermentum. Mauris vitae augue elementum, dapibus turpis non, bibendum felis. In hac habitasse platea dictumst. Vivamus vitae metus ac lacus fermentum sodales sed at justo. Sed erat libero, cursus eu enim vitae, maximus consectetur neque. Nullam pretium accumsan ipsum at convallis. Nam blandit in velit at semper. Nam et sapien augue. Nulla sit amet orci leo. Morbi neque leo, hendrerit a euismod quis, rhoncus quis eros. Proin vitae nisl eu lectus tincidunt congue a et ex.</div><div>Nulla facilisi. Aliquam ornare vestibulum velit. Nam turpis eros, porta at tortor ac, blandit aliquam erat. Curabitur ac consequat felis. Aliquam lectus nibh, efficitur at elit quis, sollicitudin efficitur risus. Vivamus faucibus vel libero at consectetur. Quisque at accumsan augue. Morbi risus ante, sagittis id euismod quis, dapibus nec sem. Mauris lacus lacus, faucibus sed lacinia eget, tempor id lectus. Vivamus sit amet tincidunt mi, in tincidunt metus. Duis facilisis, diam nec tempus semper, nibh turpis rutrum sapien, at fermentum metus nunc id sapien.</div><div>Curabitur purus ex, blandit sit amet metus in, dapibus sagittis metus. Maecenas interdum leo urna. Ut nunc elit, fringilla eu massa sollicitudin, lacinia imperdiet nunc. Suspendisse lacinia lacinia iaculis. Nulla imperdiet augue non facilisis volutpat. Nulla porttitor orci et quam bibendum interdum quis ac tortor. Pellentesque vulputate metus in enim consequat, a dapibus erat egestas. Nulla at pharetra neque. Phasellus sed nulla dolor. Mauris at nunc eget nibh sagittis ornare eu eget felis. Vestibulum tristique lorem vestibulum, imperdiet est non, ornare massa. Mauris et consequat elit. Duis vel neque malesuada ipsum iaculis posuere. Ut et pretium lorem, pulvinar sagittis dui. Aenean auctor et metus vitae semper.</div></div>', '2020-03-30');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felhasznalo`
--

CREATE TABLE `felhasznalo` (
  `azon` int(11) NOT NULL,
  `felh` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `passwd` varchar(64) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `felhasznalo`
--

INSERT INTO `felhasznalo` (`azon`, `felh`, `passwd`, `email`) VALUES
(20, 'admin', '033f23c9312b5f9838f246c0a7f2f2a5694bbf3657a56cc13d55d7350ed19b64', 'admin@admin.com'),
(25, 'Amade400', '9e8639ecdfd501046b46d1970f3518c9f17ee88e70019967e080b9e3804e6e62', 'sokhegyi.amade@gmail.com'),
(26, 'Teszt Péter', 'c7ba5613b4895f88f4b6a15e6ce5f670fcfd6173a9cd3dc313ff108ee653df07', 'tesztpeti@teszt.com'),
(27, 'Teszt Ferenc', 'aee567d357c5ae6327d811cdc205e7d0d1a951a19fbf8f6eebb50bc05ebb1422', 'tesztferi@teszt.com'),
(28, 'Teszt János', '2edd70f057f45c1d0e8a6bec628a5bb2c9b8f302c20bcaa6b1e2846d5f9a66d4', 'tesztjani@teszt.com');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jarmu`
--

CREATE TABLE `jarmu` (
  `azon` int(11) NOT NULL,
  `br` varchar(4) COLLATE utf8_hungarian_ci NOT NULL,
  `nev` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `tipus` char(1) COLLATE utf8_hungarian_ci NOT NULL,
  `nemzet` char(3) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `jarmu`
--

INSERT INTO `jarmu` (`azon`, `br`, `nev`, `tipus`, `nemzet`) VALUES
(1, '3.7', 'Sdkfz 234/4 Pakwagen', 'G', 'GER'),
(2, '3.7', 'Wirbelwind', 'G', 'GER'),
(3, '3.7', 'T-34 (1942)', 'G', 'RUS'),
(4, '3.7', 'Bf-110 G2', 'A', 'GER'),
(5, '4.0', 'Bf-109 F-4/F-4 Trop', 'A', 'GER'),
(6, '4.0', 'Bf-109 F-2', 'A', 'GER'),
(7, '4.0', 'BTD', 'A', 'USA'),
(8, '4.0', 'SB2C-4', 'A', 'USA'),
(9, '4.0', 'SB2C-5', 'A', 'FRA'),
(10, '4.0', 'Yak-9T', 'A', 'RUS'),
(11, '4.0', 'F6F', 'A', 'USA'),
(12, '4.0', 'P63-A10', 'A', 'USA'),
(13, '4.0', 'P63-A10 (USSR)', 'A', 'RUS'),
(14, '4.0', 'P63-C5', 'A', 'USA'),
(15, '4.0', 'P63-C5 (FRA)', 'A', 'FRA'),
(16, '4.0', 'P63-C5 (USSR)', 'A', 'RUS'),
(17, '4.0', 'Tu-2', 'A', 'RUS'),
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
(28, '4.0', 'KV-1 L-11', 'G', 'RUS'),
(29, '4.0', 'KV-1E', 'G', 'RUS'),
(30, '4.0', 'T-34E', 'G', 'RUS'),
(31, '4.0', 'T-34E STZ', 'G', 'RUS'),
(32, '4.0', 'BTR-152A', 'G', 'RUS'),
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
(45, '4.3', 'Pe-8', 'A', 'RUS'),
(46, '4.3', 'Kv-1 Zis-5', 'G', 'RUS'),
(47, '4.3', 'Kv-1S', 'G', 'RUS'),
(48, '4.3', 'T-34-57', 'G', 'RUS'),
(49, '4.3', 'T-34-57 mod. 1943', 'G', 'RUS'),
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
(64, '4.7', 'SU-85', 'G', 'RUS'),
(65, '4.7', 'ZSU-37', 'G', 'RUS'),
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
(89, '5.3', 'IS-1', 'G', 'RUS'),
(90, '5.3', 'SU-85M', 'G', 'RUS'),
(91, '5.3', 'Type 65 (USSR)', 'G', 'RUS'),
(92, '5.3', 'T-34-85(D5T)', 'G', 'RUS'),
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
(110, '5.7', 'KV-220', 'G', 'RUS'),
(111, '5.7', 'T-34-85', 'G', 'RUS'),
(112, '5.7', 'IS-2', 'G', 'RUS'),
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
(151, '6.7', 'T-44', 'G', 'RUS'),
(152, '6.7', 'Centurion Mk. 3', 'G', 'GBR'),
(153, '6.7', 'FV4202', 'G', 'GBR'),
(154, '6.7', 'Caernarvon', 'G', 'GBR'),
(155, '6.7', 'Strv 81 (RB 52)', 'G', 'GBR'),
(156, '6.7', 'AUBL/74', 'G', 'ITA'),
(157, '6.7', 'AMX M4', 'G', 'FRA'),
(158, '6.7', 'Char 25t', 'G', 'FRA'),
(159, '7.0', 'Me 262A-1a/U1', 'A', 'GER'),
(160, '7.0', 'T-44-100', 'G', 'RUS'),
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
(178, '7.3', 'IS-6', 'G', 'RUS'),
(179, '7.3', 'BMP-1', 'G', 'RUS'),
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
(193, '7.7', 'T-54 (1947)', 'G', 'RUS'),
(194, '7.7', 'T-54 (1949)', 'G', 'RUS'),
(195, '7.7', 'T-54 (1951)', 'G', 'RUS'),
(196, '7.7', 'Conqueror', 'G', 'GBR'),
(197, '7.7', 'Vickers MBT', 'G', 'GBR'),
(198, '7.7', 'Object 120', 'G', 'RUS'),
(199, '7.7', 'Leopard I', 'G', 'GER'),
(200, '7.7', 'Lorraine 40t', 'G', 'FRA'),
(201, '7.7', 'STB-1', 'G', 'JAP'),
(202, '8.0', 'T95E1', 'G', 'USA'),
(203, '8.0', 'T54E1', 'G', 'USA'),
(204, '8.0', 'M103', 'G', 'USA'),
(205, '8.0', 'M3 Bradley', 'G', 'USA'),
(206, '8.0', 'M247', 'G', 'USA'),
(207, '8.0', 'Flakpz. Gepard', 'G', 'GER'),
(208, '8.0', 'Object 906', 'G', 'RUS'),
(209, '8.0', 'ZSU-23-4', 'G', 'RUS'),
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
(221, '8.3', 'BMP-2', 'G', 'RUS'),
(222, '8.7', 'T-55AM', 'G', 'RUS'),
(223, '8.7', 'MiG-15bis', 'A', 'RUS'),
(224, '8.7', 'MiG-15bis (GER)', 'A', 'GER'),
(225, '8.7', 'Leopard A1A1', 'G', 'GER'),
(226, '8.7', 'J2 (MiG-15bis)', 'A', 'CHN'),
(227, '9.0', 'MiG-17', 'A', 'RUS'),
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
(256, '10.3', 'T-80B', 'G', 'RUS'),
(257, '10.3', 'T-80U', 'G', 'RUS'),
(258, '10.3', 'ZPRK 2S6 Tungushka', 'G', 'RUS'),
(259, '10.3', 'Type 90', 'G', 'JAP'),
(260, '10.3', 'C1 Ariete', 'G', 'ITA'),
(261, '10.3', 'C1 Ariete PSO', 'G', 'ITA'),
(262, '10.3', 'Leclerc', 'G', 'FRA');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jelentkezo`
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
-- A tábla adatainak kiíratása `jelentkezo`
--

INSERT INTO `jelentkezo` (`azon`, `jatekosnev`, `csatak_szama`, `jatekmod`, `hadszin`, `volte_klanban`) VALUES
(2, 'Béla', 9120, 'RB', 'G', 1),
(3, 'Feri', 2710, 'RB', 'G', 0),
(4, 'Amade400', 10265, 'RB', 'G', 1),
(5, 'Teszt Péter', 4300, 'RB', 'G', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jelentkezobirtokol`
--

CREATE TABLE `jelentkezobirtokol` (
  `azon` int(11) NOT NULL,
  `jatekos_azon` int(11) DEFAULT NULL,
  `jarmu_azon` int(11) DEFAULT NULL,
  `legenyseg_szint` int(11) NOT NULL,
  `fullose` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `jelentkezobirtokol`
--

INSERT INTO `jelentkezobirtokol` (`azon`, `jatekos_azon`, `jarmu_azon`, `legenyseg_szint`, `fullose`) VALUES
(12, 2, 11, 1, 0),
(13, 2, 118, 1, 0),
(14, 2, 80, 1, 0),
(15, 2, 133, 1, 0),
(16, 2, 20, 1, 0),
(17, 2, 60, 1, 0),
(18, 2, 77, 1, 0),
(19, 2, 21, 1, 0),
(20, 2, 102, 1, 0),
(21, 2, 76, 1, 0),
(22, 2, 113, 1, 0),
(23, 2, 119, 1, 0),
(24, 2, 104, 1, 0),
(25, 2, 124, 1, 0),
(26, 3, 10, 1, 0),
(27, 3, 88, 1, 0),
(28, 3, 105, 1, 0),
(29, 3, 107, 1, 0),
(30, 3, 86, 1, 0),
(31, 3, 23, 1, 0),
(32, 3, 26, 1, 0),
(33, 3, 62, 1, 0),
(34, 4, 5, 75, 1),
(35, 4, 53, 75, 1),
(36, 4, 6, 75, 1),
(37, 4, 136, 75, 1),
(38, 4, 138, 75, 1),
(39, 4, 115, 75, 1),
(40, 4, 4, 75, 1),
(41, 4, 159, 75, 0),
(42, 4, 167, 75, 1),
(43, 4, 224, 75, 0),
(44, 4, 236, 75, 0),
(45, 4, 10, 56, 1),
(46, 4, 45, 56, 1),
(47, 4, 8, 38, 1),
(48, 4, 2, 107, 1),
(49, 4, 1, 107, 1),
(50, 4, 24, 97, 1),
(51, 4, 26, 86, 1),
(52, 4, 27, 86, 1),
(53, 4, 25, 107, 1),
(54, 4, 62, 107, 1),
(55, 4, 23, 97, 1),
(56, 4, 106, 107, 1),
(57, 4, 86, 107, 1),
(58, 4, 105, 86, 1),
(59, 4, 107, 97, 1),
(60, 4, 109, 64, 0),
(61, 4, 144, 107, 1),
(62, 4, 146, 107, 1),
(63, 4, 147, 97, 1),
(64, 4, 149, 86, 1),
(65, 4, 164, 97, 0),
(66, 4, 207, 65, 0),
(67, 4, 225, 107, 1),
(68, 4, 241, 78, 0),
(69, 4, 245, 86, 0),
(70, 4, 254, 97, 0),
(71, 4, 255, 107, 0),
(72, 4, 63, 107, 1),
(73, 4, 88, 97, 1),
(74, 4, 126, 97, 1),
(75, 5, 133, 48, 0),
(76, 5, 118, 65, 1),
(77, 5, 166, 65, 0),
(78, 5, 8, 65, 1),
(79, 5, 20, 57, 1),
(80, 5, 19, 95, 1),
(81, 5, 104, 95, 1),
(82, 5, 60, 95, 1),
(83, 5, 113, 39, 1),
(84, 5, 119, 57, 0),
(85, 5, 141, 95, 0);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `cikk`
--
ALTER TABLE `cikk`
  ADD PRIMARY KEY (`azon`);

--
-- A tábla indexei `felhasznalo`
--
ALTER TABLE `felhasznalo`
  ADD PRIMARY KEY (`azon`);

--
-- A tábla indexei `jarmu`
--
ALTER TABLE `jarmu`
  ADD PRIMARY KEY (`azon`);

--
-- A tábla indexei `jelentkezo`
--
ALTER TABLE `jelentkezo`
  ADD PRIMARY KEY (`azon`);

--
-- A tábla indexei `jelentkezobirtokol`
--
ALTER TABLE `jelentkezobirtokol`
  ADD PRIMARY KEY (`azon`),
  ADD KEY `jelentkezo_azon` (`jatekos_azon`),
  ADD KEY `jarmu_azon` (`jarmu_azon`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `cikk`
--
ALTER TABLE `cikk`
  MODIFY `azon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT a táblához `felhasznalo`
--
ALTER TABLE `felhasznalo`
  MODIFY `azon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT a táblához `jarmu`
--
ALTER TABLE `jarmu`
  MODIFY `azon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT a táblához `jelentkezo`
--
ALTER TABLE `jelentkezo`
  MODIFY `azon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `jelentkezobirtokol`
--
ALTER TABLE `jelentkezobirtokol`
  MODIFY `azon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `jelentkezobirtokol`
--
ALTER TABLE `jelentkezobirtokol`
  ADD CONSTRAINT `jelentkezobirtokol_ibfk_1` FOREIGN KEY (`jarmu_azon`) REFERENCES `jarmu` (`azon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jelentkezobirtokol_ibfk_2` FOREIGN KEY (`jatekos_azon`) REFERENCES `jelentkezo` (`azon`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
