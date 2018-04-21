-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 21, 2018 at 01:39 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id202225_pset7`
--

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `transaction` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `shares` int(10) UNSIGNED NOT NULL,
  `price` decimal(10,4) UNSIGNED NOT NULL,
  `date` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `transaction`, `status`, `symbol`, `shares`, `price`, `date`) VALUES
(2, '', 'DEPOSIT', '', 0, 10000.0000, ''),
(6, '', 'DEPOSIT', '', 0, 10.0000, ''),
(8, '', 'DEPOSIT', '', 0, 10000.0000, ''),
(8, '', 'DEPOSIT', '', 0, 100.0000, ''),
(23, '', 'DEPOSIT', '', 0, 1000.0000, '');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shares` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `symbol`, `shares`) VALUES
(6, 'STOCK', 100);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cash` decimal(65,4) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `hash`, `cash`) VALUES
(1, 'James', '$1$jLICRImv$RoEWOdAmBDmRbFaLRr1h5.', 10000.0000),
(2, 'James', '$1$BzZjUeoz$3G0cYxhDjNgdqPze7sx5j0', 30000.0000),
(3, 'joseph', '$1$PQCDZubR$0Vujq0UrRBHCWDboGfCBN/', 10000.0000),
(4, 'murimi', '$1$L5EM61JW$xjhtShXth9w4xmRk8LvnP1', 10000.0000),
(5, 'purity', '$1$dtGPD68A$s3yM7Tgg9KT0XBebQ1IL/1', 10000.0000),
(6, 'admin', '$1$5bF9tuZY$5.h4InB/EJWe7ou5WB/Bu/', 10010.0000),
(7, 'kevinmine', '$1$o8/6J1JC$pCt8..DLdCHLjDVxfWSlJ/', 10000.0000),
(8, 'kim', '$1$XxVuabdj$yJEhRqJfyHOtPTeInJVeh.', 20100.0000),
(9, 'kimathi', '$1$DxLDiGBE$UdhJ0Img5kNz0NU467xHp0', 10000.0000),
(10, 'm', '$1$Lbq61gOz$JGi4k5O5nAeHMyG7E9fCh/', 10000.0000),
(11, 'Mimi', '$1$XgP9gtgb$fQaiQrHnVF3OFGasflH2k.', 10000.0000),
(12, 'Mimi', '$1$GfzYXYFd$msx04tAh4Ei1L1BuyYKrU.', 10000.0000),
(13, 'Mimi', '$1$f4faNe8W$nHz95AI9F6czaDWAYoTlR/', 10000.0000),
(14, 'Mimi', '$1$lEprahRh$28SZ8OqOiIGtzIU5iH3vy1', 10000.0000),
(15, 'Mimi', '$1$Fu/Cjhbl$r9tV60F96vdlyOxrD65fH.', 10000.0000),
(16, 'walker', '$1$eqekk70M$s9PRacuHsYwG4rI4OhTmL.', 10000.0000),
(17, 'walker', '$1$/yPq96Pq$qR5QcRetlq5S/kBt4f7iV.', 10000.0000),
(18, 'walker', '$1$q53YsRgY$fj4T1vWlX1oiafotTmmm01', 10000.0000),
(19, 'james', '$1$3nqfghWc$7l4UlzRWP6GcFxAzCry8F.', 10000.0000),
(20, 'james', '$1$RlnkxqzO$ryXMgUSDHgXsHlWUp513N1', 10000.0000),
(21, 'f', '$1$7LRLMPta$EQchLstpoGuDLFX.G4tzA/', 10000.0000),
(22, 'q', '$1$1t1F7pva$cUPGpNkUE/oWqAnnPyHbT.', 10000.0000),
(23, 'Alex', '$1$LNusLnHI$f0yaGu.yUseMK9d0lxW.c0', 11000.0000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`,`symbol`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
