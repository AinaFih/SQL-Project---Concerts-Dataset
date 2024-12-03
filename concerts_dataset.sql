-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 03, 2024 at 11:17 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `concerts`
--

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
CREATE TABLE IF NOT EXISTS `artist` (
  `idArtist` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idGenre` int UNSIGNED DEFAULT NULL,
  `performanceFee` decimal(9,2) NOT NULL,
  PRIMARY KEY (`idArtist`),
  UNIQUE KEY `artistID` (`idArtist`),
  KEY `genre2` (`idGenre`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`idArtist`, `name`, `idGenre`, `performanceFee`) VALUES
(5, 'Queen', 1, 850000.00),
(6, 'Coldplay', 1, 1000000.00),
(7, 'Nirvana', 1, 750000.00),
(8, 'Paramore', 1, 600000.00),
(9, 'ABBA', 2, 1200000.00),
(10, 'Adele', 2, 820000.00),
(11, 'Imagine', 2, 400000.00),
(12, 'Steps', 2, 80000.00),
(13, 'Daft', 4, 350000.00),
(14, 'Justice', 4, 130000.00),
(15, 'Disclosure', 4, 160000.00),
(16, 'Zedd', 4, 200000.00),
(17, 'Odesza', 4, 100000.00),
(18, 'Metallica', 6, 1250000.00),
(19, 'Slipknot', 6, 300000.00),
(20, 'Megadeth', 6, 200000.00),
(21, 'Disturbed', 6, 260000.00),
(22, 'Korn', 6, 150000.00),
(23, 'Zac', 5, 530000.00),
(24, 'Lonestar', 5, 75000.00),
(25, 'Sugarland', 5, 170000.00),
(26, 'Alabama', 5, 240000.00),
(27, 'Florida', 5, 450000.00),
(28, 'Snarky', 3, 60000.00),
(29, 'Esperanza', 3, 120000.00),
(30, 'Coltrane', 3, 220000.00),
(31, 'Brubeck', 3, 180000.00),
(32, 'Django', 3, 270000.00);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `idCustomer` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `familyName` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idCustomer`),
  UNIQUE KEY `customerID` (`idCustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`idCustomer`, `name`, `familyName`, `email`, `phone`) VALUES
(1, 'Emily', 'Johnson', 'emily.johnson@mail.com', '+912211132569'),
(2, 'Michael', 'Brown', 'michael.brown@mail.com', '+914566077297'),
(3, 'Sarah', 'Davis', 'sarah.davis@mail.com', '+911305381333'),
(4, 'James', 'Wilson', 'james.wilson@mail.com', '+618712768650'),
(5, 'Emma', 'Taylor', 'emma.taylor@mail.com', '+335119939673'),
(6, 'William', 'Anderson', 'william.anderson@mail.com', '+619533657171'),
(7, 'Olivia', 'Thomas', 'olivia.thomas@mail.com', '+611108277425'),
(8, 'Benjamin', 'Moore', 'benjamin.moore@mail.com', '+817083528767'),
(9, 'Mia', 'Jackson', 'mia.jackson@mail.com', '+336765559150'),
(10, 'Alexander', 'White', 'alexander.white@mail.com', '+79932142602'),
(11, 'Charlotte', 'Harris', 'charlotte.harris@mail.com', '+75988840366'),
(12, 'Henry', 'Martin', 'henry.martin@mail.com', '+493200565570'),
(13, 'Ava', 'Thompson', 'ava.thompson@mail.com', '+551701932750'),
(14, 'Noah', 'Garcia', 'noah.garcia@mail.com', '+557173647659'),
(15, 'Sophia', 'Martinez', 'sophia.martinez@mail.com', '+867173399907'),
(16, 'Lucas', 'Robinson', 'lucas.robinson@mail.com', '+611801089295'),
(17, 'Amelia', 'Clark', 'amelia.clark@mail.com', '+495473718822'),
(18, 'Mason', 'Rodriguez', 'mason.rodriguez@mail.com', '+73859549377'),
(19, 'Isabella', 'Lewis', 'isabella.lewis@mail.com', '+557852989710'),
(20, 'Ethan', 'Lee', 'ethan.lee@mail.com', '+819363838027'),
(21, 'Sophia', 'Walker', 'sophia.walker@mail.com', '+616322717535'),
(22, 'Harper', 'Hall', 'harper.hall@mail.com', '+338458511691'),
(23, 'Daniel', 'Allen', 'daniel.allen@mail.com', '+815126148782'),
(24, 'Abigail', 'Young', 'abigail.young@mail.com', '+867740668396'),
(25, 'Matthew', 'King', 'matthew.king@mail.com', '+493562539428'),
(26, 'Ella', 'Wright', 'ella.wright@mail.com', '+335687033068'),
(27, 'Jacob', 'Lopez', 'jacob.lopez@mail.com', '+611612897682'),
(28, 'Victoria', 'Hill', 'victoria.hill@mail.com', '+815233151775'),
(29, 'David', 'Scott', 'david.scott@mail.com', '+78246682981'),
(30, 'Grace', 'Green', 'grace.green@mail.com', '+555091029750');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `idGenre` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `genreName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idGenre`),
  UNIQUE KEY `genreID` (`idGenre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`idGenre`, `genreName`, `description`) VALUES
(1, 'Rock', 'High-energy music characterized by electric guitars, strong rhythms, and expressive lyrics.'),
(2, 'Pop', 'Catchy, mainstream music with a focus on melody and broad audience appeal.'),
(3, 'Jazz', 'Improvisational music with rich harmonies, swing rhythms, and blues influences.'),
(4, 'Electronic', 'Synthesized beats and soundscapes, often created with digital instruments.'),
(5, 'Country', 'Acoustic and lyrical music reflecting rural life and heartfelt storytelling.'),
(6, 'Metal', 'Aggressive, distorted guitar riffs and powerful vocals with intense themes.');

-- --------------------------------------------------------

--
-- Table structure for table `performance`
--

DROP TABLE IF EXISTS `performance`;
CREATE TABLE IF NOT EXISTS `performance` (
  `idPerformance` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idArtist` int UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`idPerformance`),
  UNIQUE KEY `performanceID` (`idPerformance`),
  UNIQUE KEY `artistID` (`idArtist`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `performance`
--

INSERT INTO `performance` (`idPerformance`, `name`, `idArtist`, `date`) VALUES
(1, 'ABX', 9, '2025-06-18 20:30:00'),
(2, 'Adelaire', 10, '2025-06-19 20:30:00'),
(3, 'BamaBeats', 26, '2025-06-20 20:30:00'),
(4, 'ChillSync', 6, '2025-06-21 20:30:00'),
(5, 'Distorto', 21, '2025-06-25 21:30:00'),
(6, 'Dafunk', 13, '2025-06-26 22:30:00'),
(7, 'Metallix', 18, '2025-06-27 22:00:00'),
(8, 'Q-Majesty', 5, '2025-06-28 18:30:00'),
(9, 'Imaginix', 11, '2025-07-04 21:00:00'),
(10, 'Nirvex', 7, '2025-07-05 21:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE IF NOT EXISTS `ticket` (
  `idTicket` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `idPerformance` int UNSIGNED DEFAULT NULL,
  `type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticketPrice` decimal(6,2) NOT NULL,
  `idCustomer` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`idTicket`),
  UNIQUE KEY `ticketID` (`idTicket`,`idCustomer`),
  KEY `customer` (`idCustomer`),
  KEY `performance` (`idPerformance`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`idTicket`, `idPerformance`, `type`, `ticketPrice`, `idCustomer`) VALUES
(58, 1, 'A', 2000.00, 1),
(59, 2, 'C', 900.00, 2),
(60, 3, 'D', 200.00, 3),
(61, 4, 'B', 1000.00, 4),
(62, 5, 'A', 900.00, 5),
(63, 6, 'D', 450.00, 6),
(64, 7, 'C', 2000.00, 7),
(65, 8, 'B', 3000.00, 8),
(66, 9, 'A', 950.00, 9),
(67, 10, 'D', 900.00, 10),
(68, 1, 'C', 1200.00, 11),
(69, 1, 'B', 1500.00, 12),
(70, 1, 'A', 2000.00, 13),
(71, 2, 'D', 600.00, 14),
(73, 6, 'C', 700.00, 16),
(74, 7, 'A', 3000.00, 17),
(75, 8, 'D', 1500.00, 18),
(76, 8, 'B', 3000.00, 19),
(77, 10, 'C', 1400.00, 20),
(78, 1, 'A', 2000.00, 15),
(79, 2, 'C', 900.00, 22),
(80, 5, 'A', 900.00, 25),
(81, 6, 'B', 850.00, 26),
(82, 7, 'C', 2000.00, 27),
(83, 8, 'A', 3500.00, 28),
(84, 9, 'D', 300.00, 29),
(85, 10, 'B', 1800.00, 30),
(86, 9, 'B', 750.00, 21),
(87, 2, 'A', 1500.00, 23),
(88, 1, 'A', 0.00, 24);

-- --------------------------------------------------------

--
-- Table structure for table `ticketpricing`
--

DROP TABLE IF EXISTS `ticketpricing`;
CREATE TABLE IF NOT EXISTS `ticketpricing` (
  `idTicketPricing` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `idPerformance` int UNSIGNED NOT NULL,
  `Type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(7,2) NOT NULL,
  PRIMARY KEY (`idTicketPricing`),
  UNIQUE KEY `ticketPricingID` (`idTicketPricing`),
  KEY `performance2` (`idPerformance`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticketpricing`
--

INSERT INTO `ticketpricing` (`idTicketPricing`, `idPerformance`, `Type`, `price`) VALUES
(81, 1, 'A', 2000.00),
(82, 1, 'B', 1500.00),
(83, 1, 'C', 1200.00),
(84, 1, 'D', 800.00),
(85, 2, 'A', 1500.00),
(86, 2, 'B', 1200.00),
(87, 2, 'C', 900.00),
(88, 2, 'D', 600.00),
(89, 7, 'A', 3000.00),
(90, 7, 'B', 2500.00),
(91, 7, 'C', 2000.00),
(92, 7, 'D', 1200.00),
(93, 8, 'A', 3500.00),
(94, 8, 'B', 3000.00),
(95, 8, 'C', 2000.00),
(96, 8, 'D', 1500.00),
(97, 10, 'A', 2200.00),
(98, 10, 'B', 1800.00),
(99, 10, 'C', 1400.00),
(100, 10, 'D', 900.00),
(101, 3, 'A', 600.00),
(102, 3, 'B', 500.00),
(103, 3, 'C', 350.00),
(104, 3, 'D', 200.00),
(105, 4, 'A', 1200.00),
(106, 4, 'B', 1000.00),
(107, 4, 'C', 750.00),
(108, 4, 'D', 400.00),
(109, 5, 'A', 900.00),
(110, 5, 'B', 750.00),
(111, 5, 'C', 550.00),
(112, 5, 'D', 300.00),
(113, 6, 'A', 1000.00),
(114, 6, 'B', 850.00),
(115, 6, 'C', 700.00),
(116, 6, 'D', 450.00),
(117, 9, 'A', 950.00),
(118, 9, 'B', 750.00),
(119, 9, 'C', 500.00),
(120, 9, 'D', 300.00);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artist`
--
ALTER TABLE `artist`
  ADD CONSTRAINT `genre2` FOREIGN KEY (`idGenre`) REFERENCES `genre` (`idGenre`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `performance`
--
ALTER TABLE `performance`
  ADD CONSTRAINT `artist` FOREIGN KEY (`idArtist`) REFERENCES `artist` (`idArtist`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `customer` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `performance` FOREIGN KEY (`idPerformance`) REFERENCES `performance` (`idPerformance`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `ticketpricing`
--
ALTER TABLE `ticketpricing`
  ADD CONSTRAINT `performance2` FOREIGN KEY (`idPerformance`) REFERENCES `performance` (`idPerformance`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
