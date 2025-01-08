-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2025 at 01:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pupt_elexpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('56ace951d270');

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `id` int(11) NOT NULL,
  `committee` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `votes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`id`, `committee`, `name`, `picture`, `votes`) VALUES
(7, 'PRESIDENT', 'Yoan Lagan', 'LAGAN.jpg', NULL),
(8, 'VP FINANCE', 'fvfvf', 'LAGAN.jpg', NULL),
(9, 'AVP FOR RECORDS', 'huhu', 'doggo.jpg', NULL),
(10, 'PRESIDENT', 'werrt', 'doggo.jpg', NULL),
(11, 'VP EXTERNAL AFFAIRS', 'labuu', 'Similar_Letters_02A.jpg', 0),
(12, 'VP AUDIT', 'test', 'LAGAN.jpg', 0),
(13, 'VP FINANCE', 'chuchu', '2024-11223-TG-0.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `student_number` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `year_level` varchar(50) NOT NULL,
  `precinct_number` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `unique_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `student_number`, `name`, `year_level`, `precinct_number`, `email`, `unique_code`) VALUES
(54, '2024-12346-TG-0', 'test 1', 'BSIT 2-1', '1', 'test1@iskolarngbayan.pup.edu.ph', '83aa3dc548c0eff21aeca053545b1cf5bacf5f489276a266db63eb84fca5563f'),
(55, '2024-12346-TG-1', 'test 2', 'BSIT 2-1', '2', 'test2@iskolarngbayan.pup.edu.ph', 'f45f3ac038a688d68ee4bb532f5dbacadcab8ad455fa3a983c2ac0daed519bde'),
(56, '2024-12346-TG-2', 'test 3', 'BSIT 2-1', '1', 'test3@iskolarngbayan.pup.edu.ph', '9ff92423c047fd5e087b2fd6183fe45feeb5ece78abad5be64d7f9f7aa46e9c8'),
(57, '2024-12346-TG-3', 'test 4', 'BSIT 2-1', '2', 'test4@iskolarngbayan.pup.edu.ph', '94d14711eb0613c165d4e92dbca4d0d7f3112e0bba3934f33728d5f25ceadc17'),
(58, '2024-12346-TG-4', 'test 5', 'BSIT 2-1', '1', 'test5@iskolarngbayan.pup.edu.ph', '6f34ed52b8cc165f9fa64ae24531d171a5cd6d751526e636a9e9ed4f25735148'),
(59, '2024-12345-TG-0', 'John Doe', 'BSIT 2-1', '1', 'johndoe@iskolarngbayan.pup.edu.ph', '27cf5f2e9c4cd9cd5e3dd672f5affa1cd6c37c2f3e1dff5a6a4a22c8db78fbd1'),
(60, '2024-67890-TG-0', 'Jane Smith', 'BSIT 2-1', '2', 'janesmith@iskolarngbayan.pup.edu.ph', '9222b1eb0dbff58939452bccc3a7b22eb090ed65e2be2a06f5bad3390a8c3122'),
(61, '2024-54321-TG-0', 'Alex Brown', 'BSIT 2-1', '1', 'alexbrown@iskolarngbayan.pup.edu.ph', '890d95f530c99d8a2dfb4fb0cbd9816dae3a41a7047a447d2ced8bbe049e9422'),
(62, '2024-98765-TG-0', 'Emily Davis', 'BSIT 2-1', '2', 'emilydavis@iskolarngbayan.pup.edu.ph', 'bf7350c45d3f2df54335ee09e0930b997ad15a9cbb5a28169e69cb23c8e03d4d'),
(63, '2024-11223-TG-0', 'Chris White', 'BSIT 2-1', '1', 'chriswhite@iskolarngbayan.pup.edu.ph', '5d2f0bc91fe526da8d4e675995f8da88f8084f275f17ef08818c9ac37c88b7ea');

-- --------------------------------------------------------

--
-- Table structure for table `vote_log`
--

CREATE TABLE `vote_log` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `voting_time`
--

CREATE TABLE `voting_time` (
  `id` int(11) NOT NULL,
  `voting_end_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voting_time`
--

INSERT INTO `voting_time` (`id`, `voting_end_time`) VALUES
(17, '2025-01-05 01:52:00'),
(18, '2025-01-05 02:08:00'),
(19, '2025-01-05 02:11:00'),
(21, '2025-01-06 03:08:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `student_number` (`student_number`),
  ADD UNIQUE KEY `unique_code` (`unique_code`);

--
-- Indexes for table `vote_log`
--
ALTER TABLE `vote_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidate_id` (`candidate_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `voting_time`
--
ALTER TABLE `voting_time`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `vote_log`
--
ALTER TABLE `vote_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voting_time`
--
ALTER TABLE `voting_time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vote_log`
--
ALTER TABLE `vote_log`
  ADD CONSTRAINT `vote_log_ibfk_1` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`),
  ADD CONSTRAINT `vote_log_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
