-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2018 at 07:04 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `exper`
--
-- Creation: Oct 21, 2018 at 06:58 PM
--

DROP TABLE IF EXISTS `exper`;
CREATE TABLE `exper` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `race` varchar(255) NOT NULL,
  `aid` varchar(255) NOT NULL,
  `fines` varchar(255) NOT NULL,
  `drugs` varchar(255) NOT NULL,
  `dormes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exper`
--

INSERT INTO `exper` (`id`, `name`, `sex`, `race`, `aid`, `fines`, `drugs`, `dormes`) VALUES
(3, 'Person', 'M', 'C', '4000to7000', '35to60', 'N/A', 'Holmes'),
(4, 'Person', 'M', 'B', '-10to15', '-10to15', 'N/A', 'Grey'),
(5, 'Person', 'F', 'A', '2000to5000', '10to35', 'N/A', 'West'),
(6, 'Person', 'M', 'B', '500to1800', '15to45', 'N/A', 'Grey'),
(7, 'Person', 'F', 'C', '1000to3500', '45to155', 'N/A', 'Holmes'),
(8, 'Person', 'F', 'C', '200to1500', '3to28', 'N/A', 'West'),
(9, 'Person', 'M', 'C', '2000to7000', '-11to12', 'N/A', 'West'),
(10, 'Person', 'F', 'B', '2000to7000', '2to15', 'N/A', 'Holmes'),
(11, 'Person', 'F', 'C', '-11to12', '-15to17', 'N/A', 'West'),
(12, 'Person', 'F', 'A', '-12to13', '3to16', 'N/A', 'Grey'),
(13, 'Person', 'M', 'C', '1000to3500', '-8to15', 'N/A', 'Grey');

-- --------------------------------------------------------

--
-- Table structure for table `main_db`
--
-- Creation: Oct 21, 2018 at 01:30 PM
--

DROP TABLE IF EXISTS `main_db`;
CREATE TABLE `main_db` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` varchar(4) NOT NULL,
  `race` varchar(10) NOT NULL,
  `aid` int(11) NOT NULL,
  `fine` int(11) NOT NULL,
  `drug` int(11) NOT NULL,
  `dormes` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_db`
--

INSERT INTO `main_db` (`id`, `name`, `sex`, `race`, `aid`, `fine`, `drug`, `dormes`) VALUES
(1, 'Adam', 'M', 'C', 5000, 45, 1, 'Holmes'),
(2, 'Baley', 'M', 'B', 0, 0, 0, 'Grey'),
(3, 'Chin', 'F', 'A', 3000, 20, 0, 'West'),
(4, 'Dawidd', 'M', 'B', 1000, 35, 3, 'Gery'),
(5, 'Earhart', 'F', 'C', 2000, 95, 1, 'Holmes'),
(6, 'Fein', 'F', 'C', 1000, 15, 0, 'West'),
(7, 'Groff', 'Male', 'C', 4000, 0, 3, 'West'),
(8, 'Hill', 'F', 'B', 5000, 10, 2, 'Holmes'),
(9, 'Koch', 'F', 'C', 0, 0, 1, 'West'),
(10, 'Liu', 'F', 'A', 0, 10, 2, 'Grey'),
(11, 'Majors', 'M', 'C', 2000, 0, 2, 'Grey');

-- --------------------------------------------------------

--
-- Table structure for table `replica`
--
-- Creation: Oct 21, 2018 at 06:13 PM
--

DROP TABLE IF EXISTS `replica`;
CREATE TABLE `replica` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` varchar(5) NOT NULL,
  `race` varchar(20) NOT NULL,
  `aid` varchar(11) NOT NULL,
  `fines` varchar(11) NOT NULL,
  `drugs` varchar(11) NOT NULL,
  `dormes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replica`
--

INSERT INTO `replica` (`id`, `name`, `sex`, `race`, `aid`, `fines`, `drugs`, `dormes`) VALUES
(1, 'Person', 'M', 'C', '5***', '4*', 'N/A', 'Holmes'),
(2, 'Person', 'M', 'B', '0***', '0*', 'N/A', 'Grey'),
(3, 'Person', 'F', 'A', '3***', '2*', 'N/A', 'West'),
(4, 'Person', 'M', 'B', '1***', '3*', 'N/A', 'Grey'),
(5, 'Person', 'F', 'C', '2***', '9*', 'N/A', 'Holmes'),
(6, 'Person', 'F', 'C', '1***', '1*', 'N/A', 'West'),
(7, 'Person', 'M', 'C', '4***', '0*', 'N/A', 'West'),
(8, 'Person', 'F', 'B', '5***', '1*', 'N/A', 'Holmes'),
(9, 'Person', 'F', 'C', '0***', '0*', 'N/A', 'West'),
(10, 'Person', 'F', 'A', '0***', '1*', 'N/A', 'Grey'),
(11, 'Person', 'M', 'C', '2***', '0*', 'N/A', 'Grey');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: Oct 21, 2018 at 01:26 PM
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `user_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `pass`, `user_role`) VALUES
(1, 't@gmail.com', '96e79218965eb72c92a549dd5a330112', 2),
(2, 'a@gmail.com', '96e79218965eb72c92a549dd5a330112', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exper`
--
ALTER TABLE `exper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_db`
--
ALTER TABLE `main_db`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replica`
--
ALTER TABLE `replica`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exper`
--
ALTER TABLE `exper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `main_db`
--
ALTER TABLE `main_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `replica`
--
ALTER TABLE `replica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
