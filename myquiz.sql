-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2020 at 11:25 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myquiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `quiz_master`
--

CREATE TABLE `quiz_master` (
  `qid` int(11) NOT NULL,
  `question` varchar(200) NOT NULL,
  `opt-a` varchar(100) NOT NULL,
  `opt-b` varchar(100) NOT NULL,
  `opt-c` varchar(100) NOT NULL,
  `opt-d` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_master`
--

INSERT INTO `quiz_master` (`qid`, `question`, `opt-a`, `opt-b`, `opt-c`, `opt-d`, `answer`) VALUES
(1, 'what is the colour of sky?', 'blue', 'red', 'pink', 'puruple', 'a'),
(2, 'what is the capital of tamilNadu', 'chennai', 'madurai', 'erode', 'vellore', 'a'),
(3, 'where is vit chennai?', 'mumbai', 'chennai', 'jaipur', 'agra', 'b'),
(4, '1+2=?', '5', '7', '9', '3', 'd'),
(5, 'dosa is famous in?', 'north india', 'south india', 'east india', 'west india', 'b'),
(6, 'full form of vit is?', 'vellore institute of technology', 'vellore institute of teaching', 'vellore indian of tecknology', 'vizag institute of technology', 'a'),
(7, 'wahat is the colour of white rice?', 'white', 'blue', 'pink', 'black', 'a'),
(8, 'what is the color of leaf', 'green', 'red', 'pink', 'orange', 'a'),
(9, 'what is the color of blood', 'yellow', 'green', 'red', 'black', 'c'),
(10, 'which of the following is a air based transport system?', 'car', 'bike', 'bus', 'flight', 'd');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
