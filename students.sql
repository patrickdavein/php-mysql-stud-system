-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2020 at 12:14 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students`
--

-- --------------------------------------------------------

--
-- Table structure for table `absences`
--

CREATE TABLE `absences` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absences`
--

INSERT INTO `absences` (`student_id`, `date`) VALUES
(6, '2014-08-29'),
(7, '2014-08-29'),
(8, '2014-08-27');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `name` varchar(30) NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`name`, `class_id`) VALUES
('English', 1),
('Speech', 2),
('Literature', 3),
('Algebra', 4),
('Geometry', 5),
('Trigonometry', 6),
('Calculus', 7),
('Earth Science', 8),
('Biology', 9),
('Chemistry', 10),
('Physics', 11),
('History', 12),
('Art', 13),
('Gym', 14);

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`student_id`, `test_id`, `score`) VALUES
(1, 1, 15),
(2, 1, 15),
(3, 1, 14),
(4, 1, 15),
(5, 1, 14),
(6, 1, 13),
(7, 1, 13),
(8, 1, 14),
(9, 1, 15),
(10, 1, 15),
(1, 2, 14),
(2, 2, 14),
(3, 2, 14),
(4, 2, 14),
(5, 2, 13),
(6, 2, 13),
(7, 2, 13),
(9, 2, 13),
(10, 2, 13),
(1, 3, 28),
(2, 3, 26),
(3, 3, 26),
(4, 3, 27),
(5, 3, 26),
(7, 3, 25),
(8, 3, 26),
(9, 3, 28),
(10, 3, 26),
(1, 4, 29),
(2, 4, 28),
(3, 4, 26),
(4, 4, 27),
(5, 4, 27),
(6, 4, 26),
(7, 4, 27),
(8, 4, 23),
(9, 4, 27),
(10, 4, 27),
(1, 5, 15),
(2, 5, 14),
(3, 5, 13),
(4, 5, 15),
(5, 5, 13),
(6, 5, 13),
(7, 5, 13),
(8, 5, 12),
(9, 5, 14),
(10, 5, 12),
(1, 6, 27),
(2, 6, 26),
(3, 6, 26),
(4, 6, 27),
(5, 6, 27),
(6, 6, 26),
(8, 6, 24),
(9, 6, 27),
(10, 6, 22);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `street` varchar(50) NOT NULL,
  `city` varchar(40) NOT NULL,
  `state` varchar(2) NOT NULL DEFAULT 'PA',
  `zip` mediumint(8) UNSIGNED NOT NULL,
  `phone` varchar(20) NOT NULL,
  `birth_date` date NOT NULL,
  `sex` enum('M','F') NOT NULL,
  `date_entered` timestamp NULL DEFAULT NULL,
  `lunch_cost` float DEFAULT NULL,
  `student_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`first_name`, `last_name`, `email`, `street`, `city`, `state`, `zip`, `phone`, `birth_date`, `sex`, `date_entered`, `lunch_cost`, `student_id`) VALUES
('Dale', 'Cooper', 'dcooper@aol.com', '123 Main St', 'Yakima', 'WA', 98901, '792-223-8901', '1959-02-22', 'M', '2020-10-25 10:21:46', 3.5, 1),
('Harry', 'Truman', 'htruman@aol.com', '202 South St', 'Vancouver', 'WA', 98660, '792-223-9810', '1946-01-24', 'M', '2020-10-25 10:22:08', 3.5, 2),
('Shelly', 'Johnson', 'sjohnson@aol.com', '9 Pond Rd', 'Sparks', 'NV', 89431, '792-223-6734', '1970-12-12', 'F', '2020-10-25 10:22:08', 3.5, 3),
('Bobby', 'Briggs', 'bbriggs@aol.com', '14 12th St', 'San Diego', 'CA', 92101, '792-223-6178', '1967-05-24', 'M', '2020-10-25 10:22:08', 3.5, 4),
('Donna', 'Hayward', 'dhayward@aol.com', '120 16th St', 'Davenport', 'IA', 52801, '792-223-2001', '1970-03-24', 'F', '2020-10-25 10:22:08', 3.5, 5),
('Audrey', 'Horne', 'ahorne@aol.com', '342 19th St', 'Detroit', 'MI', 48222, '792-223-2001', '1965-02-01', 'F', '2020-10-25 10:22:08', 3.5, 6),
('James', 'Hurley', 'jhurley@aol.com', '2578 Cliff St', 'Queens', 'NY', 11427, '792-223-1890', '1967-01-02', 'M', '2020-10-25 10:22:08', 3.5, 7),
('Lucy', 'Moran', 'lmoran@aol.com', '178 Dover St', 'Hollywood', 'CA', 90078, '792-223-9678', '1954-11-27', 'F', '2020-10-25 10:22:08', 3.5, 8),
('Tommy', 'Hill', 'thill@aol.com', '672 High Plains', 'Tucson', 'AZ', 85701, '792-223-1115', '1951-12-21', 'M', '2020-10-25 10:22:08', 3.5, 9),
('Andy', 'Brennan', 'abrennan@aol.com', '281 4th St', 'Jacksonville', 'NC', 28540, '792-223-8902', '1960-12-27', 'M', '2020-10-25 10:22:08', 3.5, 10),
('Brian', 'Quinn', 'Bq@quin.com', '112 almond', 'emerald', 'PA', 11133, '792-223-8902', '1960-12-27', 'M', '2020-10-26 16:46:37', 12.9, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `date` date NOT NULL,
  `type` enum('T','Q') NOT NULL,
  `maxscore` int(11) NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`date`, `type`, `maxscore`, `class_id`, `test_id`) VALUES
('2014-08-25', 'Q', 15, 1, 1),
('2014-08-27', 'Q', 15, 1, 2),
('2014-08-29', 'T', 30, 1, 3),
('2014-08-29', 'T', 30, 2, 4),
('2014-08-27', 'Q', 15, 4, 5),
('2014-08-29', 'T', 30, 4, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absences`
--
ALTER TABLE `absences`
  ADD PRIMARY KEY (`student_id`,`date`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`test_id`,`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`test_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `test_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
