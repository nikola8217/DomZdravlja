-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2021 at 05:51 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cyber`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` int(11) NOT NULL,
  `ime` varchar(255) NOT NULL,
  `prezime` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `korime` varchar(255) NOT NULL,
  `sifra` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `ime`, `prezime`, `email`, `korime`, `sifra`, `status`) VALUES
(1, 'Nikola', 'Zivkovic', 'nidza@gmail.com', 'nikola123', '$2y$10$cjjfr1.34RnICpuULsX4V.m8EQkFFqzw2BbU0WswbGwUG6p3ZatmS', 'korisnik'),
(4, 'pera', 'peric', 'pera@gmail.com', 'pera', '$2y$10$Z15RWTDeXQeBNWimliOV/OafAcgfS1iGjK8AaSFAKqgDBy0XLsQau', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `korpa`
--

CREATE TABLE `korpa` (
  `id` int(11) NOT NULL,
  `korime` varchar(255) NOT NULL,
  `proizvod` varchar(255) NOT NULL,
  `slika` varchar(255) NOT NULL,
  `cena` float NOT NULL,
  `kolicina` int(11) NOT NULL,
  `ukupnaCena` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `narudzbenice`
--

CREATE TABLE `narudzbenice` (
  `id` int(11) NOT NULL,
  `korime` varchar(255) NOT NULL,
  `broj` int(11) NOT NULL,
  `ulica` varchar(255) NOT NULL,
  `grad` varchar(255) NOT NULL,
  `ukupnoProizvoda` int(11) NOT NULL,
  `ukupnaCena` float NOT NULL,
  `placanje` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `narudzbenice`
--

INSERT INTO `narudzbenice` (`id`, `korime`, `broj`, `ulica`, `grad`, `ukupnoProizvoda`, `ukupnaCena`, `placanje`) VALUES
(2, 'nikola123', 22, 'gandijeva', 'beograd', 3, 370996, 'Online placanje'),
(3, 'nikola123', 13, 'gandijeva', 'beograd', 5, 976989, 'Prilikom dostave'),
(4, 'pera', 87, 'jhvkj', 'ghvkh', 3, 343997, 'Online placanje'),
(6, 'nikola123', 5, 'urosa martinovica', 'beograd', 1, 83999, 'Prilikom dostave'),
(8, 'pera', 13, 'urosa martinovica', 'beograd', 1, 83999, 'Online placanje'),
(9, 'pera', 69, 'marsala tita', 'veliko crnice', 1, 83999, 'Online placanje'),
(10, 'pera', 4, 'gandijeva', 'beograd', 5, 417968, 'Prilikom dostave'),
(12, 'pera', 4, 'urosa martinovica', 'beograd', 1, 169999, 'Prilikom dostave'),
(13, 'pera', 45, 'kosovska', 'pozarevac', 2, 191989, 'Online placanje'),
(14, 'pera', 13, 'gandijeva', 'beograd', 1, 158990, 'Online placanje'),
(15, 'pera', 0, 'kbj', 'jhbjb', 1, 32999, 'Online placanje'),
(16, 'pera', 20, 'dzona kenedija', 'beograd', 1, 13490, 'Online placanje');

-- --------------------------------------------------------

--
-- Table structure for table `proizvodi`
--

CREATE TABLE `proizvodi` (
  `id` int(11) NOT NULL,
  `tip` varchar(250) NOT NULL,
  `marka` varchar(250) NOT NULL,
  `cena` float NOT NULL,
  `opis` varchar(250) NOT NULL,
  `slika1` varchar(250) NOT NULL,
  `slika2` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proizvodi`
--

INSERT INTO `proizvodi` (`id`, `tip`, `marka`, `cena`, `opis`, `slika1`, `slika2`) VALUES
(8, 'desktop', 'PRIME I594F8G240S1660S', 83999, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 	consequat.', 'img/komp2.png', 'img/komp2A.png'),
(9, 'desktop', 'PRO R3616G480S20708G', 169999, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 	consequat.', 'img/komp3.png', 'img/komp3.png'),
(10, 'desktop', 'AURORA R3200G8G240S', 32999, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 	consequat.', 'img/komp4.png', 'img/komp4.png'),
(11, 'desktop', 'PRIME I39100F8G240SRX5604G', 47999, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 	consequat.', 'img/komp5.png', 'img/komp5.png'),
(12, 'desktop', 'Prime Lider R368G240S5808G', 79999, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 	consequat.', 'img/komp6.png', 'img/komp6.png'),
(13, 'desktop', 'GIGATRON PRIME MASTERBOX 1660S', 89999, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 	consequat.', 'img/komp7.png', 'img/komp7.png'),
(14, 'laptop', 'HP 15-db1104nm', 78990, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 	consequat.', 'img/lp2.jpg', 'img/lp2.jpg'),
(15, 'laptop', 'HP 1Z9N6EA', 189990, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 	consequat.', 'img/lp3.jpg', 'img/lp3.jpg'),
(16, 'laptop', 'HP Laptop 6XD28EA', 158990, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 	consequat.', 'img/lp4.jpg', 'img/lp4.jpg'),
(17, 'laptop', 'HP laptop 7EA94EA', 165990, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 	consequat.', 'img/lp5.jpg', 'img/lp5.jpg'),
(18, 'laptop', 'HP laptop 9TV49EA', 110990, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 	consequat.', 'img/lp6.jpg', 'img/lp6.jpg'),
(19, 'laptop', 'HP Laptop Elite Dragonfly', 279990, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 	consequat.', 'img/lp7.jpg', 'img/lp7.jpg'),
(20, 'oprema', 'DELL LED SE2219H', 13490, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 	consequat.', 'img/op2.png', 'img/op2.png'),
(21, 'oprema', 'Asus VP228DE TN', 9990, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 	consequat.', 'img/op3.jpg', 'img/op3.jpg'),
(24, 'oprema', 'Zvučnici 2.1 Altos AL-S220', 2990, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 	consequat.', 'img/op4.jpg', 'img/op4.jpg'),
(25, 'oprema', 'Zvučnici GENIUS SP-Q180', 1190, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 	consequat.', 'img/op5.jpg', 'img/op5.jpg'),
(26, 'oprema', 'Tastatura US Yenkee Katana', 2869, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 	consequat.', 'img/op6.jpg', 'img/op6.jpg'),
(27, 'oprema', 'Bežični miš HP 250', 1990, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 	consequat.', 'img/op7.jpg', 'img/op7.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korpa`
--
ALTER TABLE `korpa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `narudzbenice`
--
ALTER TABLE `narudzbenice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proizvodi`
--
ALTER TABLE `proizvodi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `korpa`
--
ALTER TABLE `korpa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `narudzbenice`
--
ALTER TABLE `narudzbenice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `proizvodi`
--
ALTER TABLE `proizvodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
