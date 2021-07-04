-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 04:05 PM
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
-- Database: `maskapai_rs`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_penerbangan`
--

CREATE TABLE `tabel_penerbangan` (
  `id_penerbangan` int(3) NOT NULL,
  `dari` varchar(20) NOT NULL,
  `ke` varchar(20) NOT NULL,
  `jam_berangkat` time NOT NULL,
  `jam_tiba` time NOT NULL,
  `harga` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_penerbangan`
--

INSERT INTO `tabel_penerbangan` (`id_penerbangan`, `dari`, `ke`, `jam_berangkat`, `jam_tiba`, `harga`) VALUES
(1, 'Makassar', 'Korea', '09:09:09', '12:12:12', 1000000),
(2, 'Jepang', 'Amerika', '12:12:12', '23:23:23', 3000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_penerbangan`
--
ALTER TABLE `tabel_penerbangan`
  ADD PRIMARY KEY (`id_penerbangan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_penerbangan`
--
ALTER TABLE `tabel_penerbangan`
  MODIFY `id_penerbangan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
