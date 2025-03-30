-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2025 at 12:26 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int NOT NULL,
  `nim` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `jenis_kelamin`, `status`) VALUES
(1, '2203999', 'Amelia Zalfa Julianti', 'Perempuan', ''),
(2, '2202292', 'Muhammad Iqbal Fadhilah', 'Laki-laki', ''),
(3, '2202346', 'Muhammad Rifky Afandi', 'Laki-laki', ''),
(4, '2210239', 'Muhammad Hanif Abdillah', 'Laki-laki', ''),
(5, '2202046', 'Nurainun', 'Perempuan', ''),
(6, '2205101', 'Kelvin Julian Putra', 'Laki-laki', ''),
(7, '2200163', 'Rifanny Lysara Annastasya', 'Perempuan', ''),
(8, '2202869', 'Revana Faliha Salma', 'Perempuan', ''),
(9, '2209489', 'Rakha Dhifiargo Hariadi', 'Laki-laki', ''),
(10, '2203142', 'Roshan Syalwan Nurilham', 'Laki-laki', ''),
(11, '2200311', 'Raden Rahman Ismail', 'Laki-laki', 'Aktif'),
(12, '2200978', 'Ratu Syahirah Khairunnisa', 'Perempuan', ''),
(13, '2204509', 'Muhammad Fahreza Fauzan', 'Laki-laki', ''),
(14, '2205027', 'Muhammad Rizki Revandi', 'Laki-laki', 'Dropout'),
(15, '2203484', 'Arya Aydin Margono', 'Laki-laki', ''),
(16, '2200481', 'Marvel Ravindra Dioputra', 'Laki-laki', ''),
(17, '2209889', 'Muhammad Fadlul Hafiizh', 'Laki-laki', ''),
(18, '2206697', 'Rifa Sania', 'Perempuan', ''),
(19, '2207260', 'Imam Chalish Rafidhul Haque', 'Laki-laki', ''),
(20, '2204343', 'Meiva Labibah Putri', 'Perempuan', 'Aktif'),
(23, '2311119', 'Muhammad Radhi', 'Laki-laki', 'Aktif'),
(29, '23111191', 'Muhammad Radhi Maulana', 'Laki-laki', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nim` (`nim`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
