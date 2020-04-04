-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 21, 2019 at 05:29 PM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registeration`
--
CREATE DATABASE IF NOT EXISTS `registeration` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `registeration`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `registeration_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `password`, `registeration_date`) VALUES
(1, 'test', 'test', 'test', '2019-10-18 14:26:25'),
(2, 'test@test', 'bla', '1a1dc91c907325c69271ddf0c944bc72', '2019-10-18 14:29:06'),
(4, 'hisham.maged10@gmail.com', 'hisham', '098f6bcd4621d373cade4e832627b4f6', '2019-10-18 18:50:29'),
(5, 'hisham.maged20@gmail.com', 'hisham2', 'ad0234829205b9033196ba818f7a872b', '2019-10-18 20:08:47'),
(6, 'hisham.maged30@gmail.com', 'hisham3', '8ad8757baa8564dc136c1e07507f4a98', '2019-10-18 20:11:11'),
(7, 'hisham.maged40@gmail.com', 'hisham4', '86985e105f79b95d6bc918fb45ec7727', '2019-10-18 20:14:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
