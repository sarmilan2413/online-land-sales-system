-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2024 at 07:06 PM
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
-- Database: `lan_iwt`
--

-- --------------------------------------------------------

--
-- Table structure for table `addpost`
--

CREATE TABLE `addpost` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email`, `phone`, `message`, `created_at`) VALUES
(1, 'kajan', 'kajan@gmail.com', '0753495742', 'xknsxnc', '2024-10-14 17:49:44'),
(2, 'kajan', 'kajan@gmail.com', '0753495742', 'xknsxnc', '2024-10-14 18:08:10'),
(3, 'raja', 'raja@gmail.com', '0753495742', 'dtrhhdh', '2024-10-16 04:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `feedback` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `name`, `email`, `feedback`, `created_at`) VALUES
(1, 'kajan', 'kajan@gmail.com', 'hi', '2024-10-14 17:49:22'),
(2, 'lavan', 'Kajan29@gmail.com', 'uftdfcytcytf', '2024-10-15 09:43:57'),
(3, 'lavan', 'manoarthi27@gmail.com', 'ufhfytfytyfyfy', '2024-10-15 09:44:18'),
(4, 'lavan', 'manoarthi27@gmail.com', 'ufhfytfytyfyfy', '2024-10-15 09:50:02'),
(5, 'lavan', 'IT23581852@my.sliit.lk', 'uiuiutiut', '2024-10-15 11:39:53'),
(6, 'lavan', 'IT23581852@my.sliit.lk', 'erweye', '2024-10-15 11:47:04'),
(7, 'lavan', 'IT23581852@my.sliit.lk', 'erweye', '2024-10-15 11:48:25'),
(8, 'lavan', 'IT23581852@my.sliit.lk', 'erweye', '2024-10-15 11:50:02'),
(9, 'lavan', 'IT23581852@my.sliit.lk', 'erweye', '2024-10-15 11:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `location` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `phone`, `dob`, `gender`, `location`, `password`, `created_at`) VALUES
(1, 'kajan', 'kajan', 'kajan5217@gmail.com', '0753495742', '2024-10-06', 'Male', 'chunnakam', '$2y$10$njZiXQmtFIQynBwYgqF5tO.RY9N37nzxC3LCIKl6xzAtQKFTFvcty', '2024-10-14 18:10:39'),
(2, 'Arthi', 'Arthi', 'manoarthi15@gmail.com', '0775874236', '0000-00-00', 'Female', 'land', '1234', '2024-10-15 11:54:39'),
(3, '[value-2]', '[value-3]', '[value-4]', '[value-5]', '0000-00-00', '', '[value-8]', '[value-9]', '0000-00-00 00:00:00'),
(4, 'kajan', 'kajan', 'Kajan2944@hgfg.vhg', '0775874236', '2024-10-16', 'Female', 'ckacn', '$2y$10$LoUITQebbz9ew/KzuZ3nL.vj6mt4g9L8gYfRKZas8TJqxLmL0jsZC', '2024-10-15 12:03:37'),
(5, 'Arthi', 'Arthi', 'arthi@gmail.com', '0775874236', '2004-01-21', 'Female', 'land', '$2y$10$hviz277INvLnNb..Hv0HGOq3il7DHZI4q6khzR/x3omDpWFvOYpb.', '2024-10-15 14:54:33'),
(6, 'Aa', 'Bb', 'ab@gmail.com', '077685645', '2000-01-31', 'Male', 'test', '$2y$10$EtqzD3Gwz9XhkFXSe/bgZe7yX5YlynD9ufBZwPxBCV.eLH51x/BRi', '2024-10-15 15:29:20'),
(7, 'Arthi', 'Mano', 'abi@gmail.com', '0755104232', '2024-10-04', 'Female', 'nelliady', '$2y$10$lQo7BobLXt3EddFEjS9Rh.1e4QqNV.zyEol8WQMUylC/MJ.3FJ8MS', '2024-10-15 16:49:34'),
(8, 'Arthi', 'Arthi', 'maa@gmail.com', '0775874236', '2024-10-12', 'Female', 'land', '$2y$10$AdkmrdOs8a0ZDVE5Aa0io.3Vwtl/OhyOB.0ktP8piEp5Dsb9sRbHq', '2024-10-16 04:05:13'),
(9, 'Arthi', 'Arthi', 'abc12@gmail.com', '0775874236', '2024-10-12', 'Female', 'land', '$2y$10$HAsoo/ix8Ze1jn8ROrTABOSt.z9Bnu0heuHIfCNCps8yCGYhiFfdq', '2024-10-16 04:05:48'),
(10, 'Arthi', 'Arthi', 'Kajan29@gmail.com', 'abc', '2024-10-05', 'Female', 'land', '$2y$10$.t0rfatQDdEUa/Kmms315On35tT.BUv0m0BSvufcDiVNC/WUFPCm.', '2024-10-16 06:41:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addpost`
--
ALTER TABLE `addpost`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addpost`
--
ALTER TABLE `addpost`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addpost`
--
ALTER TABLE `addpost`
  ADD CONSTRAINT `addpost_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
