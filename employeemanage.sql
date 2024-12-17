-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2024 at 12:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeemanage`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`) VALUES
('admin@gmail.com', 'dfghj'),
('admin@gmail.com', 'hgghhj'),
('admin@gmail.com', 'adminasd'),
('admin@gmail.com', '12345'),
('admin@gmail.com', 'asdfggb'),
('admin@gmail.com', 'asdcvb'),
('admin@gmail.com', 'admin23'),
('admin@gmail.com', 'asdfg'),
('admin@gmail.com', 'asdfggh'),
('admin@gmail.com', 'asdfg');

-- --------------------------------------------------------

--
-- Table structure for table `entryform`
--

CREATE TABLE `entryform` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dep` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entryform`
--

INSERT INTO `entryform` (`id`, `name`, `dep`, `email`) VALUES
(1, 'Akshaya', 'web Development', 'akshaya@gmail.com'),
(2, 'harish', 'software Development', 'haric@gmail.com'),
(3, 'Arivalazhan', 'FrontEnddevelopement', 'arivu@gmail.com'),
(4, 'kathiravan', 'Back End Development', 'kathir@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

CREATE TABLE `leave` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dep` varchar(255) NOT NULL,
  `from_date` varchar(255) NOT NULL,
  `to_date` varchar(255) NOT NULL,
  `leavetype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave`
--

INSERT INTO `leave` (`id`, `name`, `email`, `dep`, `from_date`, `to_date`, `leavetype`) VALUES
(1, 'Haris', 'haric@gmail.com', 'software Development', '2024-05-23', '2024-05-28', 'vacation'),
(2, 'Akshaya', 'Akshaya@gmail.com', 'software Development', '2024-12-09', '2024-12-03', 'sick');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `password`) VALUES
('Akshaya', 'gfghj'),
('Akshaya', 'fsdf'),
('Akshaya', 'akshu123'),
('Akshaya', 'asdfvb'),
('Akshaya', 'hjbkk'),
('akshaya', '1234'),
('akshaya', 'agfgh'),
('akshaya', 'aksjsh'),
('anu@gmail.com', 'asdfgh'),
('Akshaya', 'asdfgh'),
('admin@gmail.com', 'asdfgh');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dep` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(250) NOT NULL,
  `leavedate` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`id`, `name`, `dep`, `position`, `email`, `phone`, `leavedate`, `status`) VALUES
(1, 'anu', 'Front-End-Development', 'Junior Developer', 'anu@gmail.com', 2147483647, '16/12/2024', 'absent');

-- --------------------------------------------------------

--
-- Table structure for table `webdevelopment`
--

CREATE TABLE `webdevelopment` (
  `id` int(11) NOT NULL,
  `depname` varchar(255) NOT NULL,
  `employees` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `tl` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `webdevelopment`
--

INSERT INTO `webdevelopment` (`id`, `depname`, `employees`, `manager`, `tl`, `branch`) VALUES
(2, 'web Development', '10', 'Anu', 'Monika', 'chennai'),
(3, 'Front-End Development', '5', 'Ragul', 'Subha', 'Bangalore'),
(4, 'Back-End Development', '8', 'Nivetha', 'Surya', 'Hydrabad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `entryform`
--
ALTER TABLE `entryform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave`
--
ALTER TABLE `leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webdevelopment`
--
ALTER TABLE `webdevelopment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entryform`
--
ALTER TABLE `entryform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `leave`
--
ALTER TABLE `leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `webdevelopment`
--
ALTER TABLE `webdevelopment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
