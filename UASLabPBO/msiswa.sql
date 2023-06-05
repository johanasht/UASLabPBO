-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2023 at 08:38 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_mhsiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `msiswa`
--

CREATE TABLE `msiswa` (
  `Nama` varchar(50) NOT NULL,
  `NIM` varchar(10) NOT NULL,
  `Jenis Kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `No Hp` varchar(15) NOT NULL,
  `Agama` enum('Islam','Katolik','Protestan','Hindu','Buddha','Konghucu') NOT NULL,
  `Status` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `msiswa`
--

INSERT INTO `msiswa` (`Nama`, `NIM`, `Jenis Kelamin`, `No Hp`, `Agama`, `Status`) VALUES
('A. Nurcahaya', '211401077', 'Perempuan', '098765425234', 'Protestan', 'Aktif');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
