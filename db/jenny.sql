-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2023 at 01:04 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jenny`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_reg`
--

CREATE TABLE `admin_reg` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_reg`
--

INSERT INTO `admin_reg` (`id`, `name`, `email`, `password`, `phone`) VALUES
(1, 'daniyal', 'daniyal@gmail.com', '$2y$10$tXC7Lbj.VC6Iz7ewjIp4veiPEYFTChiI5h2GRRDx3bSo2iXT2LIMS', 323),
(2, 'jenny', 'jenny@gmail.com', '$2y$10$wHpQ.Ka7bOr03JP8kb5cDOdcWOhB1RZYXxRz6hL4LzYkU2CiN.NE6', 3256);

-- --------------------------------------------------------

--
-- Table structure for table `user-register`
--

CREATE TABLE `user-register` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user-register`
--

INSERT INTO `user-register` (`id`, `username`, `email`, `password`) VALUES
(1, 'sawera', 'saw@gmail.com', '$2y$10$avRlHcfalRSLcmjH0EK/POZpYkrsW4B9ovCNb.fkTutagalvufG4O'),
(2, 'sidra', 'si@gmail.com', '$2y$10$bmbZgHV0wHsogMkajP4qIeJxtizALA5gCNbGDstYoSmt.coS9Eqry'),
(3, 'tayyaba', 'tayyaba@gmail.com', '$2y$10$aWlLADQaJITXinsjAOUZ2.dIbja7sS6pPZ5GJqge3RRcZ1WqPt38i'),
(4, 'ali', 'ali@gmail.com', '$2y$10$LZas7QsesVEp0WtaDZEXi.mjoWBKCSbzzughWHHNsCeNdpKwfqz8i'),
(5, 'aisha', 'ai@gmail.com', '$2y$10$Q.octXVKfV1c0feAt22Wt.NiIuu.ZlgqobTADpp8aMTRFvLaq.sw.'),
(6, 'asd', 'as@gmail.com', '$2y$10$Q8AZyZvMpM3rrM1FFP9IaOCjuGhqK/IfA9tBkBmL8fz8WVFrgXn0e'),
(7, 'asma', 'asma@gmail.com', '$2y$10$bI/tG5R3vdrj1rxnZQpZCe1F2gWMmzKNhckF1cfD02j4bbLwun5Di'),
(8, 'umer', 'umer@gmail.com', '$2y$10$wkZNHliV6gSLQm9oURticOXNElWLYH7AuWcNY7Ckys5HgCS9/qE4.'),
(9, 'saweraansari', 'sawera@gmail.com', '$2y$10$Uq0OnwkHZFBHzSoKFnOLh.E7E7KUzXHi2SjA.sfW7WC9amWO27RBG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_reg`
--
ALTER TABLE `admin_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user-register`
--
ALTER TABLE `user-register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_reg`
--
ALTER TABLE `admin_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user-register`
--
ALTER TABLE `user-register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
