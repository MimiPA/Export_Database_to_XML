-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 04:04 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maskapai_ch`
--

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flightID` int(3) NOT NULL,
  `dari` varchar(20) NOT NULL,
  `ke` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flightID`, `dari`, `ke`) VALUES
(1, 'Jakarta', 'Surabaya'),
(2, 'Manado', 'Malang');

-- --------------------------------------------------------

--
-- Table structure for table `flighttime`
--

CREATE TABLE `flighttime` (
  `timeID` int(3) NOT NULL,
  `flightID` int(3) NOT NULL,
  `date` date NOT NULL,
  `depart` time NOT NULL,
  `arrive` time NOT NULL,
  `duration` int(3) NOT NULL,
  `price` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flighttime`
--

INSERT INTO `flighttime` (`timeID`, `flightID`, `date`, `depart`, `arrive`, `duration`, `price`) VALUES
(1, 1, '2021-06-17', '22:08:00', '23:59:59', 2, 500000),
(2, 2, '2021-06-24', '01:01:01', '23:59:59', 24, 5000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flightID`);

--
-- Indexes for table `flighttime`
--
ALTER TABLE `flighttime`
  ADD PRIMARY KEY (`timeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `flightID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `flighttime`
--
ALTER TABLE `flighttime`
  MODIFY `timeID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
