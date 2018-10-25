-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2018 at 06:33 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_search`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_items`
--

CREATE TABLE `action_items` (
  `id` int(10) NOT NULL,
  `objectives_id` int(10) NOT NULL,
  `owners_id` int(10) NOT NULL,
  `status_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `due_date` date NOT NULL,
  `revised_date` date NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `comments` text CHARACTER SET latin1 NOT NULL,
  `active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `action_items`
--

INSERT INTO `action_items` (`id`, `objectives_id`, `owners_id`, `status_id`, `due_date`, `revised_date`, `name`, `description`, `comments`, `active`) VALUES
(1, 1, 1, 'Open', '2018-10-20', '2018-10-20', 'Secure Contact Minister/Sec/RHD Chief ENG ', '', '', 1),
(2, 1, 1, 'Open', '2018-10-21', '2018-10-21', 'Obtain Appointment with Secured contact', '', '', 1),
(3, 1, 1, 'Open', '2018-10-20', '2018-10-20', 'Secure ADB contacts in Manila & Dhaka', '', '', 1),
(4, 1, 1, 'Open', '2018-10-23', '2018-10-23', 'Obtain Appointment with Secured ADB contact', '', '', 1),
(5, 1, 1, 'Open', '2018-11-07', '2018-11-07', 'Visit to Bangladesh', '', '', 1),
(6, 2, 1, 'Open', '2018-11-15', '2018-11-15', 'Initiate Project Strategy ', '', '', 1),
(7, 3, 1, 'Open', '2018-11-16', '2018-11-16', 'Initiate Project Strategy ', '', '', 1),
(8, 4, 1, 'Open', '2018-11-17', '2018-11-17', 'Initiate Project Strategy ', '', '', 1),
(9, 5, 1, 'Open', '2018-11-18', '2018-11-18', 'Initiate Project Strategy ', '', '', 1),
(10, 6, 1, 'Open', '2018-11-19', '2018-11-19', 'Initiate Project Strategy ', '', '', 1),
(11, 7, 2, 'In-Progress', '2018-10-27', '2018-10-27', 'Draft a Country Strategy ', '', '', 1),
(12, 7, 2, 'In-Progress', '2018-10-12', '2018-10-12', 'TOR Draft for project monitoring dashboard ', '', '', 1),
(13, 7, 2, 'Completed', '2018-10-20', '2018-10-20', 'List the Potential ADB WB Projects ', '', '', 1),
(14, 7, 2, 'Open', '2018-11-15', '2018-11-15', 'Country visit planning', '', '', 1),
(15, 8, 1, 'Open', '2018-11-12', '2018-11-12', 'Identify potential projects from ADB and WB', '', '', 1),
(16, 8, 1, 'Open', '2018-11-24', '2018-11-24', 'Stakeholder list and the contact information ', '', '', 1),
(17, 8, 1, 'Open', '2018-11-30', '2018-11-30', 'Plan a visit', '', '', 1),
(18, 9, 1, 'Open', '2018-10-20', '2018-10-20', 'Draft a Country Strategy ', '', '', 1),
(19, 9, 1, 'Open', '2018-10-30', '2018-10-30', 'Collect the prerequisites to register roughton office in india', '', '', 1),
(20, 10, 1, 'Open', '2018-10-15', '2018-10-15', 'List the Potential ADB Projects ', '', '', 1),
(21, 11, 2, 'Open', '2018-11-30', '2018-11-30', 'List the Potential ADB WB Projects ', '', '', 1),
(22, 11, 2, 'Open', '2018-12-05', '2018-12-05', 'Workout partnerships with local consultants', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) NOT NULL,
  `name` varchar(10) CHARACTER SET latin1 NOT NULL,
  `active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `active`) VALUES
(1, 'Bangladesh', 1),
(2, 'Nepal', 1),
(3, 'Myanmar', 1),
(4, 'Pakistan', 1),
(5, 'India', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `getobjectives`
-- (See below for the actual view)
--
CREATE TABLE `getobjectives` (
`id` int(10)
,`objective` varchar(100)
,`action_item` varchar(100)
,`country` varchar(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `objectives`
--

CREATE TABLE `objectives` (
  `id` int(10) NOT NULL,
  `countries_id` int(10) NOT NULL,
  `owners_id` int(10) NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `target_timeline` varchar(100) CHARACTER SET latin1 NOT NULL,
  `comments` text CHARACTER SET latin1 NOT NULL,
  `active` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `objectives`
--

INSERT INTO `objectives` (`id`, `countries_id`, `owners_id`, `name`, `description`, `target_timeline`, `comments`, `active`) VALUES
(1, 1, 1, 'Secure Five Projects in Bangladesh', '', '', '', 1),
(2, 1, 1, 'DHAKA – Sylhet $11.5M RHD', '', '', '', 1),
(3, 1, 1, 'SASEC 3 – $10M RHD', '', '', '', 1),
(4, 1, 1, 'Chittagong – cox’s bazar $14Mn RHD', '', '', '', 1),
(5, 1, 1, 'Rural Bridges – CGED ', '', '', '', 1),
(6, 1, 1, 'Rural Connectivity Improvement Project – CGED ', '', '', '', 1),
(7, 2, 2, 'Secure a $6Mn Worth of Business', '', '', '', 1),
(8, 4, 1, 'Pakistan Opportunities', '', '', '', 1),
(9, 5, 1, 'Go-to Market strategy for India', '', '', '', 1),
(10, 5, 1, 'Secure $10Mn Projects in india', '', '', '', 1),
(11, 3, 2, 'Go to market strategy for Myanmar ', '', '', '', 1);

-- --------------------------------------------------------

--
-- Structure for view `getobjectives`
--
DROP TABLE IF EXISTS `getobjectives`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `getobjectives`  AS  select `a`.`id` AS `id`,`o`.`name` AS `objective`,`a`.`name` AS `action_item`,`c`.`name` AS `country` from ((`objectives` `o` join `action_items` `a`) join `countries` `c`) where ((`o`.`id` = `a`.`objectives_id`) and (`o`.`countries_id` = `c`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action_items`
--
ALTER TABLE `action_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `objectives`
--
ALTER TABLE `objectives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country` (`countries_id`),
  ADD KEY `owner` (`owners_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action_items`
--
ALTER TABLE `action_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `objectives`
--
ALTER TABLE `objectives`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
