-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 06, 2024 at 10:19 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adamson_consultation`
--
CREATE DATABASE IF NOT EXISTS `adamson_consultation` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `adamson_consultation`;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `course`, `code`) VALUES
(1, 'Mathematics', 'MATH101'),
(2, 'Physics', 'PHY202'),
(3, 'Chemistry', 'CHEM105'),
(4, 'Computer Science', 'CS101'),
(5, 'Biology', 'BIO110'),
(6, 'English Literature', 'ENG201'),
(7, 'History', 'HIST301'),
(8, 'Economics', 'ECON205');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` enum('student','professor','admin') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `username`, `password`) VALUES
(22, 'professor', 'Mary', '$2y$10$NGuVd7ckLZzvCr/xGO.nOOHgPS3a2zrcA2BlbUgDlaKFpnREt1fLe'),
(21, 'professor', 'Joseph', '$2y$10$YCINJtoCDNuDbtNDQ.hB6.VEEcM83.JDntic8h68mEGO9ty0rOB5.'),
(15, 'admin', 'cj', '$2y$10$xJbdOnlbPOt8Zv7XmbWYp.F6axRN6AEjj7.mJYD2.ve4ucEbJjS1q'),
(16, 'admin', 'dar', '$2y$10$sma.tu.YBkQvf53i6XunyuIjXFRC7jzOTUn5mCDxMyJqZYGRZUnfm'),
(27, 'student', 'new', '$2y$10$kBKZ//QxcdZ4sPOHf5b2C.vN4IOSpjg.EPCTM2w65CDz1SmCOj4uG'),
(24, 'student', 'rj', '$2y$10$00g11aXWd/j.OOo5S/jvNe5yzqIA/gauGM3G58hCaz7QxFOQ886FG'),
(25, 'student', 'jm', '$2y$10$pys/KXwYQXfA1O3kkbsWdOlrPeCL8/Fp2qoVJUlY.n65IEWbJO2em'),
(28, 'student', 'past', '$2y$10$Je40yAbDhDHLZJOTGeZHWevGfZCuL2VK39DY5lTlFdw1pPCSQko12'),
(29, 'student', 'lyn', '$2y$10$F4woch54oJ.t3Uvb.pXmce8ja6DlQFyuiclbtHBpTQCt9hCMVAKDG');

-- --------------------------------------------------------

--
-- Table structure for table `user_subjects`
--

DROP TABLE IF EXISTS `user_subjects`;
CREATE TABLE IF NOT EXISTS `user_subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `subject_id` int NOT NULL,
  `role` enum('student','professor') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`subject_id`,`role`),
  KEY `subject_id` (`subject_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_subjects`
--

INSERT INTO `user_subjects` (`id`, `user_id`, `subject_id`, `role`) VALUES
(1, 23, 1, 'student'),
(2, 24, 1, 'student'),
(3, 25, 2, 'student'),
(4, 21, 1, 'professor'),
(5, 22, 2, 'professor'),
(6, 24, 2, 'student');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
