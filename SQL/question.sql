-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 24, 2019 at 08:03 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_question`
--

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NoiDung` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MucDo` int(11) NOT NULL,
  `DapAn1` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DapAn2` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DapAn3` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DapAn4` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DA_Dung` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `NoiDung`, `MucDo`, `DapAn1`, `DapAn2`, `DapAn3`, `DapAn4`, `DA_Dung`) VALUES
(1, 'You can join the club when you ___ a bit older.', 1, 'will have got', 'will get', 'get', 'are getting', 3),
(2, 'The mausoleum is ___ by Thien Thu mountain, two towering columns and a vast expanse of water.', 1, 'feed', 'feeding', 'fed', 'feeds', 3),
(3, 'Put plants ___ a window so that they will get enough light.', 1, 'near of', 'near to', 'next to', 'nearly', 3),
(4, 'Employers often require that candidates have not only a degree ___', 2, 'but two years experience', 'also two years experience', 'but also two-year experience', 'but more two years experience', 3),
(5, 'Richard Nixon had been a lawyer and ___ before he entered politics.', 2, 'served in the Navy as an officer', 'an officer in the Navy', 'the Navy had him as an officer', 'did service in the Navy as an officer', 2),
(6, 'If one of the participants in a conversation wonders ___ no real communication has taken place.', 2, 'what said the other person', 'what the other person said', 'what did the other person say', 'what was the other person saying', 2),
(7, 'The salary of a bus driver is much higher ___.', 1, 'in comparison with the salary of a teacher', 'than a teacher', 'than that of a teacher', 'to compare as a teacher', 3),
(8, 'Professional people expect ___ when it is necessary to cancel an appointment.', 2, 'you to call them', 'that you would call them', 'your calling them', 'that you are calling them', 1),
(9, 'Sedimentary rocks are formed below the surface of the earth ___ very high temperatures and pressures.', 1, 'where there are', 'there are', 'where are there', 'there are where', 1),
(10, 'Farmers look forward to ___ every summer.', 2, 'participating in the country fairs', 'participate in the country fairs', 'be participating in the country fairs', 'have participated in the country fairs', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
