-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2021 at 02:02 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `stockupdates`
--

CREATE TABLE `stockupdates` (
  `StockId` int(11) NOT NULL,
  `StockName` varchar(250) NOT NULL,
  `CurrentPrice` bigint(20) NOT NULL,
  `UpdateDateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stockupdates`
--

INSERT INTO `stockupdates` (`StockId`, `StockName`, `CurrentPrice`, `UpdateDateTime`) VALUES
(1, 'CVE:RECO132', 44707, '2021-04-04 17:58:40'),
(2, 'NSE:KALYANKJIL546546', 64311, '2021-04-04 17:58:40'),
(3, 'BOMPICKLE:5326484545', 54522, '2021-04-04 17:58:40'),
(4, 'NSE:NAZARA456456', 8172, '2021-04-04 17:58:40'),
(5, 'CVE:RECO132', 58289, '2021-04-04 17:58:40'),
(6, 'CVE:RECO132', 27774, '2021-04-04 17:58:40'),
(7, 'NSE:BSE1085697412', 73205, '2021-04-04 17:58:40'),
(8, 'BOMPICKLE:5326484545', 95207, '2021-04-04 17:58:40'),
(9, 'BOMPICKLE:5326484545', 16887, '2021-04-04 17:58:40'),
(10, 'BATS:1582REPO1SDAE', 18874, '2021-04-04 17:58:40'),
(11, 'BEML:634751KYC', 53848, '2021-04-04 17:58:45'),
(12, 'NSE:NAZARA456456', 39930, '2021-04-04 17:58:45'),
(13, 'BEML:634751KYC', 11695, '2021-04-04 17:58:45'),
(14, 'GARGIMARCO:500325546', 99738, '2021-04-04 17:58:45'),
(15, 'NSE:BSE1085697412', 85491, '2021-04-04 17:58:45'),
(16, 'NSE:KALYANKJIL546546', 53097, '2021-04-04 17:58:45'),
(17, 'NSE:KALYANKJIL546546', 49189, '2021-04-04 17:58:45'),
(18, 'BOMPICKLE:5326484545', 65902, '2021-04-04 17:58:45'),
(19, 'GARGIMARCO:500325546', 86495, '2021-04-04 17:58:45'),
(20, 'BATS:1582REPO1SDAE', 80665, '2021-04-04 17:58:45'),
(21, 'CVE:RECO132', 95146, '2021-04-04 17:58:54'),
(22, 'NSE:NAZARA456456', 4035, '2021-04-04 17:58:54'),
(23, 'NSE:KALYANKJIL546546', 6103, '2021-04-04 17:58:54'),
(24, 'BEML:634751KYC', 69600, '2021-04-04 17:58:54'),
(25, 'CVE:RECO132', 77258, '2021-04-04 17:58:54'),
(26, 'GARGIMARCO:500325546', 33100, '2021-04-04 17:58:54'),
(27, 'CVE:RECO132', 12801, '2021-04-04 17:58:54'),
(28, 'NSE:NAZARA456456', 25344, '2021-04-04 17:58:54'),
(29, 'NSE:KALYANKJIL546546', 92559, '2021-04-04 17:58:54'),
(30, 'NSE:NAZARA456456', 60969, '2021-04-04 17:58:54'),
(31, 'NSE:KALYANKJIL546546', 17869, '2021-04-04 17:59:03'),
(32, 'NSE:BSE1085697412', 56901, '2021-04-04 17:59:03'),
(33, 'TYO:4650456546', 86733, '2021-04-04 17:59:03'),
(34, 'FRALTP:8765TATA', 96580, '2021-04-04 17:59:03'),
(35, 'BATS:1582REPO1SDAE', 11528, '2021-04-04 17:59:03'),
(36, 'BATS:1582REPO1SDAE', 75351, '2021-04-04 17:59:03'),
(37, 'BEML:634751KYC', 93200, '2021-04-04 17:59:03'),
(38, 'NSE:BSE1085697412', 19276, '2021-04-04 17:59:03'),
(39, 'NSE:BSE1085697412', 1921, '2021-04-04 17:59:03'),
(40, 'CVE:RECO132', 99986, '2021-04-04 17:59:03'),
(41, 'BATS:1582REPO1SDAE', 37607, '2021-04-04 17:59:14'),
(42, 'BATS:1582REPO1SDAE', 72220, '2021-04-04 17:59:14'),
(43, 'BOMPICKLE:5326484545', 55258, '2021-04-04 17:59:14'),
(44, 'BEML:634751KYC', 53262, '2021-04-04 17:59:14'),
(45, 'BATS:1582REPO1SDAE', 1214, '2021-04-04 17:59:14'),
(46, 'NSE:KALYANKJIL546546', 51528, '2021-04-04 17:59:14'),
(47, 'CVE:RECO132', 87092, '2021-04-04 17:59:14'),
(48, 'GARGIMARCO:500325546', 87460, '2021-04-04 17:59:14'),
(49, 'GARGIMARCO:500325546', 96539, '2021-04-04 17:59:14'),
(50, 'GARGIMARCO:500325546', 87548, '2021-04-04 17:59:14'),
(51, 'BEML:634751KYC', 37959, '2021-04-04 18:02:47'),
(52, 'GARGIMARCO:500325546', 70021, '2021-04-04 18:02:47'),
(53, 'NSE:BSE1085697412', 33302, '2021-04-04 18:02:47'),
(54, 'BOMPICKLE:5326484545', 44519, '2021-04-04 18:02:47'),
(55, 'NSE:BSE1085697412', 84581, '2021-04-04 18:02:47'),
(56, 'BOMPICKLE:5326484545', 40981, '2021-04-04 18:02:47'),
(57, 'FRALTP:8765TATA', 11591, '2021-04-04 18:02:47'),
(58, 'NSE:NAZARA456456', 4711, '2021-04-04 18:02:47'),
(59, 'NSE:KALYANKJIL546546', 96844, '2021-04-04 18:02:47'),
(60, 'BATS:1582REPO1SDAE', 54494, '2021-04-04 18:02:47'),
(61, 'CVE:RECO132', 85189, '2021-04-05 00:53:02'),
(62, 'BEML:634751KYC', 26583, '2021-04-05 00:53:02'),
(63, 'GARGIMARCO:500325546', 22505, '2021-04-05 00:53:02'),
(64, 'BATS:1582REPO1SDAE', 94315, '2021-04-05 00:53:02'),
(65, 'FRALTP:8765TATA', 46482, '2021-04-05 00:53:02'),
(66, 'BATS:1582REPO1SDAE', 59354, '2021-04-05 00:53:02'),
(67, 'NSE:BSE1085697412', 30089, '2021-04-05 00:53:02'),
(68, 'GARGIMARCO:500325546', 21315, '2021-04-05 00:53:02'),
(69, 'GARGIMARCO:500325546', 18532, '2021-04-05 00:53:02'),
(70, 'BATS:1582REPO1SDAE', 18315, '2021-04-05 00:53:02'),
(71, 'NSE:NAZARA456456', 64575, '2021-04-05 00:53:08'),
(72, 'TYO:4650456546', 39553, '2021-04-05 00:53:08'),
(73, 'NSE:BSE1085697412', 51797, '2021-04-05 00:53:08'),
(74, 'NSE:NAZARA456456', 76589, '2021-04-05 00:53:08'),
(75, 'BOMPICKLE:5326484545', 4863, '2021-04-05 00:53:08'),
(76, 'NSE:BSE1085697412', 78630, '2021-04-05 00:53:08'),
(77, 'NSE:KALYANKJIL546546', 79935, '2021-04-05 00:53:08'),
(78, 'NSE:BSE1085697412', 22236, '2021-04-05 00:53:08'),
(79, 'BATS:1582REPO1SDAE', 78783, '2021-04-05 00:53:08'),
(80, 'NSE:BSE1085697412', 24794, '2021-04-05 00:53:08'),
(81, 'GARGIMARCO:500325546', 37802, '2021-04-08 15:24:44'),
(82, 'FRALTP:8765TATA', 72278, '2021-04-08 15:24:44'),
(83, 'CVE:RECO132', 40963, '2021-04-08 15:24:44'),
(84, 'TYO:4650456546', 91555, '2021-04-08 15:24:44'),
(85, 'NSE:BSE1085697412', 33065, '2021-04-08 15:24:44'),
(86, 'NSE:NAZARA456456', 81227, '2021-04-08 15:24:44'),
(87, 'NSE:NAZARA456456', 9836, '2021-04-08 15:24:44'),
(88, 'NSE:BSE1085697412', 51501, '2021-04-08 15:24:44'),
(89, 'FRALTP:8765TATA', 1586, '2021-04-08 15:24:44'),
(90, 'BOMPICKLE:5326484545', 69935, '2021-04-08 15:24:44'),
(91, 'CVE:RECO132', 3825, '2021-04-16 00:58:51'),
(92, 'BATS:1582REPO1SDAE', 26033, '2021-04-16 00:58:51'),
(93, 'TYO:4650456546', 62247, '2021-04-16 00:58:51'),
(94, 'BATS:1582REPO1SDAE', 17250, '2021-04-16 00:58:51'),
(95, 'TYO:4650456546', 52470, '2021-04-16 00:58:51'),
(96, 'BOMPICKLE:5326484545', 66002, '2021-04-16 00:58:51'),
(97, 'GARGIMARCO:500325546', 28442, '2021-04-16 00:58:51'),
(98, 'BEML:634751KYC', 17297, '2021-04-16 00:58:51'),
(99, 'NSE:NAZARA456456', 94008, '2021-04-16 00:58:51'),
(100, 'NSE:KALYANKJIL546546', 42280, '2021-04-16 00:58:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `UserName`, `Password`) VALUES
(1, 'krunal1139@gmail.com', 'Krptl@1212'),
(2, 'try@gmail.com', 'try');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stockupdates`
--
ALTER TABLE `stockupdates`
  ADD PRIMARY KEY (`StockId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stockupdates`
--
ALTER TABLE `stockupdates`
  MODIFY `StockId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;