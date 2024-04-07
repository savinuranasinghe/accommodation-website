-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 07, 2024 at 06:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `NSBM`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
('BcjKNX58e4x7bIqIvxG7', 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `property_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `property_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `price` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `offer` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL,
  `furnished` varchar(50) NOT NULL,
  `bhk` varchar(10) NOT NULL,
  `deposite` varchar(10) NOT NULL,
  `bedroom` varchar(10) NOT NULL,
  `bathroom` varchar(10) NOT NULL,
  `balcony` varchar(10) NOT NULL,
  `carpet` varchar(10) NOT NULL,
  `age` varchar(2) NOT NULL,
  `total_floors` varchar(2) NOT NULL,
  `room_floor` varchar(2) NOT NULL,
  `loan` varchar(50) NOT NULL,
  `lift` varchar(3) NOT NULL DEFAULT 'no',
  `security_guard` varchar(3) NOT NULL DEFAULT 'no',
  `play_ground` varchar(3) NOT NULL DEFAULT 'no',
  `garden` varchar(3) NOT NULL DEFAULT 'no',
  `water_supply` varchar(3) NOT NULL DEFAULT 'no',
  `power_backup` varchar(3) NOT NULL DEFAULT 'no',
  `parking_area` varchar(3) NOT NULL DEFAULT 'no',
  `gym` varchar(3) NOT NULL DEFAULT 'no',
  `shopping_mall` varchar(3) NOT NULL DEFAULT 'no',
  `hospital` varchar(3) NOT NULL DEFAULT 'no',
  `school` varchar(3) NOT NULL DEFAULT 'no',
  `market_area` varchar(3) NOT NULL DEFAULT 'no',
  `image_01` varchar(50) NOT NULL,
  `image_02` varchar(50) NOT NULL,
  `image_03` varchar(50) NOT NULL,
  `image_04` varchar(50) NOT NULL,
  `image_05` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `user_id`, `property_name`, `address`, `price`, `type`, `offer`, `status`, `furnished`, `bhk`, `deposite`, `bedroom`, `bathroom`, `balcony`, `carpet`, `age`, `total_floors`, `room_floor`, `loan`, `lift`, `security_guard`, `play_ground`, `garden`, `water_supply`, `power_backup`, `parking_area`, `gym`, `shopping_mall`, `hospital`, `school`, `market_area`, `image_01`, `image_02`, `image_03`, `image_04`, `image_05`, `description`, `date`) VALUES
('9IVcMIT5BvbfURLy3H5C', 'aZr1Wn6aszpySBr5ucXh', 'himeth', '32/A pitipana,homagama', '8000', 'house', 'rent', 'ready to move', 'furnished', '1', '10000', '2', '2', '1', '50', '0', '1', '0', 'available', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'gmz9kpeJEfllNNbKaQcX.jpg', '', '', '', '', 'only for girls', '2024-04-07'),
('ECDbG3qgv4hKZJgESK5B', 'aZr1Wn6aszpySBr5ucXh', 'savinu', '42 school junction,Pitipana', '10000', 'house', 'rent', 'ready to move', 'furnished', '1', '20000', '4', '2', '2', '100', '0', '2', '4', 'available', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'OmqqdIuOitT6K3jASXze.jpg', 'rxlJxF36BsVNhjgmfLEp.jpg', '', '', '', 'only for boys', '2024-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` varchar(20) NOT NULL,
  `property_id` varchar(20) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `property_id`, `sender`, `receiver`, `date`) VALUES
('pMHt9XFRsNiGOefsT2Zq', '9IVcMIT5BvbfURLy3H5C', 'aZr1Wn6aszpySBr5ucXh', 'aZr1Wn6aszpySBr5ucXh', '2024-04-07'),
('WFjxmv16SE6jrukhn5Zi', 'ECDbG3qgv4hKZJgESK5B', 'aZr1Wn6aszpySBr5ucXh', 'aZr1Wn6aszpySBr5ucXh', '2024-04-07'),
('ogSx0yfRt40Ty0xf969S', '9IVcMIT5BvbfURLy3H5C', 'GSMlVkybElt9fPV20SId', 'aZr1Wn6aszpySBr5ucXh', '2024-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `saved`
--

CREATE TABLE `saved` (
  `id` varchar(20) NOT NULL,
  `property_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saved`
--

INSERT INTO `saved` (`id`, `property_id`, `user_id`) VALUES
('iKYqy8uP2G6UmwOXh7kl', 'ECDbG3qgv4hKZJgESK5B', 'aZr1Wn6aszpySBr5ucXh');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `number`, `email`, `password`) VALUES
('KU3TkAoVI89hIWmIgzYm', 'savinu', '0712412084', 'savinu@gmail.com', 'a45282ef3e78fbc123d1a6c8398573581339a691'),
('aZr1Wn6aszpySBr5ucXh', 'Randiv ', '0707616554', 'sez.2021.info@gmail.com', '0f4a9d3a3a9ffdd71df7a9d5fb4efd6f5d718a4f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
