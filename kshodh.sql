-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 09:50 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kshodh`
--

-- --------------------------------------------------------

--
-- Table structure for table `conatctus`
--

CREATE TABLE `conatctus` (
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `subject` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conatctus`
--

INSERT INTO `conatctus` (`firstname`, `lastname`, `email`, `subject`) VALUES
('shruti', 'nogja', 'shruti.nogja@somaiya.edu', 'hello my name is shruti nogja '),
('Omkar', 'Salvi', 'omkar.salvi@somaiya.edu', 'hello hey bye'),
('dhruv', 'goyal', 'dhruv.goyal@somaiya.edu', 'hello hey bye');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`username`, `email`, `number`, `password`) VALUES
('SHRUTI.NOGJA', 'shruti.nogja@somaiya.edu', 2147483647, 'jsdfhjfsh'),
('SHRUTI.NOGJA', 'shruti.nogja@somaiya.edu', 2147483647, 'jsdfhjfsh'),
('SHREYANOGJA', 'shreya.nogja@somaiya.edu', 2147483647, 'sndjfhsdjf'),
('OMKAR', 'omkar.salvi@somaiya.edu', 2147483647, 'omkar1313');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
