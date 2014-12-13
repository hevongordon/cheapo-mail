-- phpMyAdmin SQL Dump
-- version 4.2.0
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2014 at 05:27 AM
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
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
`ID` int(12) NOT NULL,
  `Body` text NOT NULL,
  `Subject` varchar(50) NOT NULL,
  `User_ID` varchar(50) NOT NULL,
  `Recipient_ID` varchar(35) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=armscii8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`ID`, `Body`, `Subject`, `User_ID`, `Recipient_ID`) VALUES
(35, '', '', 'Sancii', ''),
(34, '', '', 'Sancii', ''),
(14, 'hey charlie...', 'dance music', 'xian101', 'charliechaplin@chaplin.com'),
(30, 'wild is the way to live', 'every one is the king of the wild', 'Sancii', 'everyone@everyone.com'),
(24, 'hey the google play store was updated...', 'google play store update', 'xian101', 'rickvanharris@gmail.com'),
(18, 'heyyyyy', 'hey hev', 'sancii', 'hevongordon@gmail.com'),
(15, 'yyooo hevon this shit finally worked!!! shiitttt', 'hey hevon', 'shotta101', 'hevongordon@gmail.com'),
(26, 'someone someone someone', 'hey this is someone', 'xian101', 'someone@someone.com'),
(17, 'hey send me over a new rolls royce by tomoro', 'new rolls royce', 'xian101', 'roycerolls@roycecars.net'),
(28, 'the soul reaper technology is nearing completion', 'soul reaper technology', 'xian101', 'hevongordon@gmail.com'),
(27, 'the soul reaper technology is nearing completion', 'soul reaper technology', 'xian101', 'hevongordon@gmail.com'),
(9, 'test text', 'test data', 'admin', 'admin'),
(8, 'this is a confirmation message that the database can actually contain this long body stuff', 'Testing the message database', 'Admin_101', 'Everyone'),
(25, 'the application that is being undertaken will be undertake by blah blah blah', 'the application is in the final stage of its devel', 'xian101', 'nichanderson@anderson.live.com'),
(31, 'fcasdjsbd.jfbsadmfmasdfn ', 'this is the subject of the email', 'Sancii', 'i am'),
(29, 'hey the new drizzy album is right around the corner', 'views from the six to be out in fall', 'Sancii', 'from_the6@gmail.com'),
(16, 'yolo ma brotha yolo', 'yolo', 'nathaniel_gibson', 'hevongordon@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
