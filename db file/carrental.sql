-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2023 at 06:34 PM
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
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-03-31 07:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `carimage` text NOT NULL,
  `car` text NOT NULL,
  `price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `email`, `carimage`, `car`, `price`) VALUES
(1, 'gerrard@gmail.com', 'Chevloret.jfif', 'Chevloret', '6600000'),
(2, 'gerrard@gmail.com', 'Chevloret.jfif', 'Chevloret', '6600000'),
(3, 'gerrard@gmail.com', 'Chevloret.jfif', 'Chevloret', '6600000'),
(4, 'gerrard@gmail.com', 'Chevloret.jfif', 'Chevloret', '6600000'),
(5, 'gerrard@gmail.com', 'Chevloret.jfif', 'Chevloret', '6600000'),
(6, 'gerrard@gmail.com', 'Chevloret.jfif', 'Chevloret', '6600000'),
(7, 'gerrard@gmail.com', 'Chevloret.jfif', 'Chevloret', '6600000'),
(8, 'gerrard@gmail.com', 'Chevloret.jfif', 'Chevloret', '6600000'),
(9, 'gerrard@gmail.com', 'Chevloret.jfif', 'Chevloret', '6600000'),
(10, 'gerrard@gmail.com', 'Chevloret.jfif', 'Chevloret', '6600000'),
(11, 'gerrard@gmail.com', 'Chevloret.jfif', 'Chevloret', '6600000');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'arnold@gmail.com', 1, '2/12/2022', '3/1/2023', 'BMW', 2, '2023-06-10 11:47:41'),
(2, 'dom@gmail.com', 2, '2/12/2022', '3/1/2023', 'Chevloret', 1, '2023-06-10 11:54:23'),
(3, 'dom@gmail.com', 3, '12/12/2020', '13/12/2020', 'Audi A3', 1, '2023-06-14 11:36:54'),
(4, 'fidelis@gmail.com', 3, '12/12/2020', '13/12/2020', 'Audi A3', 1, '2023-06-14 11:38:59'),
(5, 'dom@gmail.com', 3, '2/12/2022', '3/1/2023', 'jnk', 1, '2023-06-14 13:46:47'),
(6, 'dom@gmail.com', 3, '2/12/2022', '3/1/2023', 'jnk', 2, '2023-06-14 13:48:47'),
(7, 'dom@gmail.com', 3, '2/12/2022', '3/1/2023', 'jnk', 1, '2023-06-14 13:50:02'),
(8, 'dom@gmail.com', 3, '2/12/2022', '3/1/2023', 'jnk', 1, '2023-06-14 13:50:02'),
(9, 'dom@gmail.com', 3, '2/12/2022', '3/1/2023', 'jnk', 1, '2023-06-14 13:52:24'),
(10, 'dom@gmail.com', 3, '2/12/2022', '3/1/2023', 'jnk', 1, '2023-06-14 13:52:57'),
(11, 'hernandez@gmail.com', 5, NULL, NULL, NULL, 0, '2023-06-17 09:23:47'),
(12, 'dom@gmail.com', 2, NULL, NULL, NULL, 0, '2023-07-04 07:57:12'),
(13, 'tom@gmail.com', 3, NULL, NULL, NULL, 0, '2023-07-15 10:08:51'),
(14, 'dom@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-22 17:31:23'),
(15, 'herald@gmail.com', 1, NULL, NULL, NULL, 0, '2023-07-22 17:46:47'),
(16, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:14:45'),
(17, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:20:34'),
(18, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:20:43'),
(19, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:20:52'),
(20, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:21:20'),
(21, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:21:46'),
(22, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:22:16'),
(23, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:28:24'),
(24, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:29:48'),
(25, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:30:10'),
(26, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:30:35'),
(27, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:31:52'),
(28, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:32:21'),
(29, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:34:02'),
(30, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:34:23'),
(31, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:34:33'),
(32, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:36:58'),
(33, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:37:02'),
(34, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:37:07'),
(35, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:37:09'),
(36, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:37:19'),
(37, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:37:33'),
(38, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:37:42'),
(39, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:38:04'),
(40, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:38:20'),
(41, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:38:52'),
(42, 'dom@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 13:39:11'),
(43, 'gerrard@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 14:07:58'),
(44, 'gerrard@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 14:12:25'),
(45, 'gerrard@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 14:12:30'),
(46, 'gerrard@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 14:14:05'),
(47, 'gerrard@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 14:14:10'),
(48, 'gerrard@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 14:14:42'),
(49, 'gerrard@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 14:15:02'),
(50, 'gerrard@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 14:15:24'),
(51, 'gerrard@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 14:15:37'),
(52, 'gerrard@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 14:15:59'),
(53, 'gerrard@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 14:18:49'),
(54, 'gerrard@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 14:20:42'),
(55, 'gerrard@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 14:21:56'),
(56, 'gerrard@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 14:22:57'),
(57, 'gerrard@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 14:23:21'),
(58, 'gerrard@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 14:25:25'),
(59, NULL, 4, NULL, NULL, NULL, 0, '2023-07-26 14:36:03'),
(60, 'gerrard@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 14:36:11'),
(61, 'gerrard@gmail.com', 4, NULL, NULL, NULL, 0, '2023-07-26 14:41:39'),
(62, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 14:49:05'),
(63, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 14:49:26'),
(64, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 14:49:52'),
(65, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 14:50:15'),
(66, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 14:51:38'),
(67, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 14:51:48'),
(68, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 14:51:59'),
(69, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 14:52:27'),
(70, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 14:52:46'),
(71, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 14:55:10'),
(72, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 14:55:15'),
(73, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 14:55:44'),
(74, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 14:56:32'),
(75, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 14:57:26'),
(76, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 14:59:32'),
(77, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 16:14:00'),
(78, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 16:16:11'),
(79, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 16:17:38'),
(80, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 16:18:41'),
(81, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 16:18:58'),
(82, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 16:19:23'),
(83, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 16:19:36'),
(84, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 16:19:47'),
(85, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 16:22:54'),
(86, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 16:25:45'),
(87, 'gerrard@gmail.com', 5, NULL, NULL, NULL, 0, '2023-07-26 16:25:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Mercedes-benz', '2023-06-10 11:00:50', NULL),
(2, 'BMW', '2023-06-10 11:01:16', NULL),
(3, 'Honda', '2023-06-10 11:01:48', NULL),
(4, 'Hyundai', '2023-06-10 11:01:57', NULL),
(5, 'Chevloret', '2023-06-10 11:02:05', NULL),
(6, 'Toyota', '2023-06-10 11:02:11', NULL),
(7, 'Audi', '2023-06-14 11:25:48', '2023-06-14 11:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Silicon', 'sinclair@gmail.com', '0784939491');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Hernandez', 'hernandez@gmail.com', '0784939491', 'Good customer experience', '2023-06-17 09:25:50', NULL),
(2, 'tom', 'tom@gmail.com', '475849284', 'Wow! I love the good customer experience', '2023-07-15 10:10:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', ''),
(2, 'Privacy Policy', 'privacy', '										\r\n										'),
(3, 'About Us ', 'aboutus', 'We are a car dealership company that aims to create better customer experiences to all our esteemed customers.'),
(4, 'FAQs', 'faqs', 'Hello World');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(1, 'dom@gmail.com', '2023-06-10 11:57:46'),
(2, 'herald@gmail.com', '2023-07-22 17:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'arnold@gmail.com', 'Better customer experience', '2023-06-10 11:50:15', 0),
(2, 'arnold@gmail.com', 'Good services', '2023-06-10 11:52:05', NULL),
(3, 'tom@gmail.com', 'The customer experience is good.', '2023-07-15 10:18:38', NULL),
(4, 'dom@gmail.com', 'I love your services', '2023-07-26 11:56:03', NULL),
(5, 'gerrard@gmail.com', 'Love your services.', '2023-07-26 12:46:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Arnold', 'arnold@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '0741455776', NULL, NULL, NULL, NULL, '2023-06-10 10:56:30', NULL),
(2, 'Dominic', 'dom@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '0743245687', NULL, NULL, NULL, NULL, '2023-06-10 11:53:31', NULL),
(3, 'Fidelis', 'fidelis@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '0738384362', NULL, NULL, NULL, NULL, '2023-06-14 11:24:45', NULL),
(4, 'Hernandez', 'hernandez@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '0788442315', NULL, NULL, NULL, NULL, '2023-06-17 09:22:05', NULL),
(5, 'tom', 'tom@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '0857485643', NULL, NULL, NULL, NULL, '2023-07-15 10:07:53', NULL),
(6, 'Herald', 'herald@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '0754632765', '3/8/2002', 'P.O BOX 76768', 'Nairobi', 'Nairobi', '2023-07-22 17:35:04', '2023-07-22 17:39:38'),
(7, 'Gerrard', 'gerrard@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '0745453232', NULL, NULL, NULL, NULL, '2023-07-26 12:45:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` float DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'BMW IX', 2, 'BMW IX', 6500000, 'Petrol', 2020, 5, 'BMW 2.jfif', 'BMW 3.jpg', 'BMW.jpg', 'BMW.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-10 11:09:46', '2023-06-17 10:26:41'),
(2, 'Chevloret', 5, 'Chevloret', 6600000, 'Petrol', 2021, 5, 'Chevloret.jfif', 'Chevloret 1.jpeg', 'Chevloret 2.webp', 'Chevloret 3.jfif', 'Chevloret 4.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-10 11:28:22', '2023-06-17 10:27:23'),
(3, 'Audi A3', 7, 'Suitable for off road purposes', 6600000, 'Petrol', 2021, 5, 'Audi A3.webp', 'Audi A3b.webp', 'Audi A3c.jpeg', 'Audi A3d.webp', 'Audi A3e.webp', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-14 11:32:00', '2023-06-17 10:26:51'),
(4, 'Hyundai', 4, 'Staria', 780000, 'Petrol', 2021, 7, 'Hyundai.jpeg', 'Hyundai b.jpeg', 'Hyundai c.jpeg', 'Hyundai d.jpeg', 'Hyundai e.webp', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-17 09:09:13', NULL),
(5, 'Mercedes Benz', 1, 'GLC', 7800000, 'Petrol', 2022, 5, 'Mercedes benz glc.jpeg', 'Mercedes benz glc b.jpeg', 'new-GLC-interior.jpg', 'Mercedes benz glc c.jpeg', 'Mercedes benz glc d.jpeg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-17 09:16:21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
