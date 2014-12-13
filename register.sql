-- phpMyAdmin SQL Dump
-- version 4.2.0
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2014 at 05:31 AM
-- Server version: 5.6.15-log
-- PHP Version: 5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
`ID` int(11) NOT NULL,
  `First Name` varchar(30) NOT NULL,
  `Last Name` varchar(30) NOT NULL,
  `Password` varchar(70) NOT NULL,
  `Username` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=armscii8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`ID`, `First Name`, `Last Name`, `Password`, `Username`) VALUES
(1, 'Hevon', 'Gordon', 'hevongordon1', 'hevongordon@gmail.com'),
(2, 'Yanique', 'Dickson', 'yanyan1', 'yandix@gmail.com'),
(3, 'lloyd', 'banks', 'moneybanks', 'moneybanks@gmail.com'),
(12, 'Mellisa', 'Manson', 'mellisa101', 'melliboo89@yahoo.com'),
(11, 'jermaine', 'johnson', 'johnson', 'johnson111@gmail.com'),
(20, 'Yanique', 'Dickson', 'Yanique1', 'yanyan'),
(21, 'Rick-Van', 'Harris', 'Ricky123', 'Rick-Van'),
(16, 'jordan', 'estevez', 'password', 'shotta101'),
(17, 'Nathaniel', 'Gibson', 'natgib', 'Nathaniel_Gibson'),
(18, 'Sancia', 'Richards', 'hevon123', 'Sancii'),
(19, 'Xian', 'Reid', 'Xian1011', 'xian101'),
(22, 'RickVan', 'Harris', 'Ricky123', 'RickVan'),
(23, 'RickVan', 'Harris', 'Ricky123', 'RickVan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
