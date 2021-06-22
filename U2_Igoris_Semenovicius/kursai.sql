-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 01:07 PM
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
-- Database: `u2_igoris_semenovicius`
--

-- --------------------------------------------------------

--
-- Table structure for table `komentarai`
--

CREATE TABLE `komentarai` (
  `Komentaro_ID` int(11) NOT NULL,
  `Komentaras` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentarai`
--

INSERT INTO `komentarai` (`Komentaro_ID`, `Komentaras`) VALUES
(1, 'ok'),
(2, 'good'),
(3, 'nice'),
(4, 'gerai'),
(5, 'blogai');

-- --------------------------------------------------------

--
-- Table structure for table `kursai`
--

CREATE TABLE `kursai` (
  `Autorius` varchar(100) NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp(),
  `Pavadinimas` varchar(100) NOT NULL,
  `Aprasymas` varchar(200) NOT NULL,
  `Ilgas_aprasymas` varchar(2000) NOT NULL,
  `Img` varchar(100) DEFAULT NULL,
  `Populiarumas` int(11) DEFAULT NULL,
  `Komentaro_ID` int(11) NOT NULL,
  `Kaina` int(11) DEFAULT NULL,
  `Reitingas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kursai`
--

INSERT INTO `kursai` (`Autorius`, `Data`, `Pavadinimas`, `Aprasymas`, `Ilgas_aprasymas`, `Img`, `Populiarumas`, `Komentaro_ID`, `Kaina`, `Reitingas`) VALUES
('Jurgis', '2021-06-22 09:42:55', 'B KATEGORIJA', 'Lengvasis automobilis', 'Teorijos mokymasis grupėje ir individualios praktinio vairavimo pamokos su instruktoriumi', 'B.png', 50, 1, 500, 5),
('Vaclovas', '2021-06-22 09:47:13', 'C KATEGORIJA', 'Sunkvezimis', 'Teorijos mokymasis grupėje ir individualios praktinio vairavimo pamokos su instruktoriumi', 'C.png', 60, 2, 600, 5),
('Aurimas', '2021-06-22 09:51:12', 'D KATEGORIJA', 'Autobusas', 'Teorijos mokymasis grupėje ir individualios praktinio vairavimo pamokos su instruktoriumi', 'D.png', 70, 3, 700, 5),
('Jurgis', '2021-06-22 09:53:46', 'A KATEGORIJA', 'Motociklas', 'Teorijos mokymasis grupėje ir individualios praktinio vairavimo pamokos su instruktoriumi', 'A.png', 80, 4, 800, 3),
('Kestas', '2021-06-22 09:54:55', 'Papildomos', 'Visi', 'Teorijos mokymasis grupėje ir individualios praktinio vairavimo pamokos su instruktoriumi', 'visi.png', 40, 5, 400, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kursai`
--
ALTER TABLE `kursai`
  ADD PRIMARY KEY (`Komentaro_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kursai`
--
ALTER TABLE `kursai`
  MODIFY `Komentaro_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
