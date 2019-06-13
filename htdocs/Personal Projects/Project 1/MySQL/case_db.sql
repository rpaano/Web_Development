-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2018 at 04:27 PM
-- Server version: 10.1.36-MariaDB
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
-- Database: `case_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(15) NOT NULL,
  `date_time` varchar(25) NOT NULL,
  `brgycasenumber` varchar(40) NOT NULL,
  `complainant` varchar(40) NOT NULL,
  `respondent` varchar(40) NOT NULL,
  `natureofcase` varchar(40) NOT NULL,
  `disposition_remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `date_time`, `brgycasenumber`, `complainant`, `respondent`, `natureofcase`, `disposition_remarks`) VALUES
(67, '2018-October-23 02:44 pm', '000001', 'Justin Jovert Aguillon', 'Cynthia Masculino', 'Criminal', 'Conciliation'),
(68, '2018-October-22 04:01 pm', '000002', 'Allan Waga', 'Cynthia Masculino', 'Criminal', 'Mediation'),
(69, '2018-October-23 12:26 pm', '000003', 'Romel Paano', 'Nino Paano', 'Miscellaneous ', 'Mediation'),
(70, '2018-October-23 12:42 pm', '000004', 'Allan Waga', 'Cynthai Masculino', 'Miscellaneous ', 'Dismissed'),
(71, '2018-October-23 08:42 pm', '000005', 'Julius Urot', 'Cynthia Masculino', 'Miscellaneous ', 'Withdrawn'),
(72, '2018-October-23 12:56 pm', '000006', 'Allan Waga', 'Miami Nights', 'Criminal', 'Mediation'),
(73, '2018-October-23 01:00 pm', '000007', 'Romel Paano', 'Cynthia Masculino', 'Criminal', 'Mediation'),
(93, '2018-October-23 02:41 pm', '000008', 'Romel Nino Paano', 'Cynthia Masculino', 'Miscellaneous ', 'Pending'),
(94, '2018-October-23 02:41 pm', '000009', 'Romel Nino Paano', 'Cynthia Masculino', 'Miscellaneous ', 'Mediation'),
(96, '2018-October-23 02:41 pm', '000010', 'Romel Nino Paano', 'Cynthia Masculino', 'Miscellaneous ', 'Conciliation'),
(97, '2018-October-23 02:41 pm', '000011', 'Romel Nino Paano', 'Cynthia Masculino', 'Miscellaneous ', 'Conciliation'),
(98, '2018-October-23 02:42 pm', '000012', 'Romel Nino Paano', 'Cynthia Masculino', 'Miscellaneous ', 'Conciliation'),
(99, '2018-October-23 02:42 pm', '000013', 'Romel Nino Paano', 'Cynthia Masculino', 'Miscellaneous ', 'Withdrawn');

-- --------------------------------------------------------

--
-- Table structure for table `pending_cases`
--

CREATE TABLE `pending_cases` (
  `pending_id` int(15) NOT NULL,
  `status` varchar(30) NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_cases`
--

INSERT INTO `pending_cases` (`pending_id`, `status`, `admin_id`) VALUES
(56, 'Closed Case', 67),
(57, 'Closed Case', 68),
(58, 'Pending Case', 69),
(59, 'Closed Case', 70),
(60, 'Closed Case', 71),
(61, 'Pending Case', 72),
(62, 'Closed Case', 73),
(63, 'Pending Case', 74),
(64, 'Pending Case', 75),
(65, 'Pending Case', 76),
(66, 'Pending Case', 77),
(67, 'Pending Case', 78),
(68, 'Closed Case', 79),
(69, 'Closed Case', 80),
(70, 'Pending Case', 81),
(71, 'Pending Case', 82),
(72, 'Closed Case', 83),
(73, 'Closed Case', 84),
(74, 'Closed Case', 85),
(75, 'Closed Case', 86),
(76, 'Closed Case', 87),
(78, 'Closed Case', 89),
(79, 'Pending Case', 90),
(80, 'Closed Case', 91),
(81, 'Pending Case', 92),
(82, 'Pending Case', 93),
(83, 'Pending Case', 94),
(85, 'Pending Case', 96),
(86, 'Closed Case', 97),
(87, 'Closed Case', 98),
(88, 'Closed Case', 99);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `pending_cases`
--
ALTER TABLE `pending_cases`
  ADD PRIMARY KEY (`pending_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `pending_cases`
--
ALTER TABLE `pending_cases`
  MODIFY `pending_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pending_cases`
--
ALTER TABLE `pending_cases`
  ADD CONSTRAINT `pending_cases_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
