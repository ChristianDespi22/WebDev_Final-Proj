-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 08, 2024 at 01:20 PM
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
-- Table structure for table `consultations`
--

DROP TABLE IF EXISTS `consultations`;
CREATE TABLE IF NOT EXISTS `consultations` (
  `consultation_id` int NOT NULL AUTO_INCREMENT,
  `professor_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `course_code` varchar(10) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `notes` text,
  `feedback` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `consultation_date` date NOT NULL,
  `status` enum('open','closed','completed') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT 'open',
  PRIMARY KEY (`consultation_id`),
  KEY `professor_id` (`professor_id`),
  KEY `student_id` (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `consultations`
--

INSERT INTO `consultations` (`consultation_id`, `professor_id`, `student_id`, `course_code`, `start_time`, `end_time`, `location`, `notes`, `feedback`, `created_at`, `consultation_date`, `status`) VALUES
(7, 30, 32, 'CS101', '08:30:00', '09:00:00', 'Online Zoom meeting', '', '', '2024-12-07 12:07:09', '2024-12-09', 'closed'),
(22, 31, NULL, 'PHY202', '12:00:00', '13:00:00', '', '', '', '2024-12-08 01:24:34', '2024-12-11', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `semester_start_date` date NOT NULL,
  `semester_end_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `course`, `code`, `semester_start_date`, `semester_end_date`) VALUES
(1, 'Mathematics', 'MATH101', '2024-10-01', '2024-12-15'),
(2, 'Physics', 'PHY202', '2024-10-01', '2024-12-15'),
(3, 'Chemistry', 'CHEM105', '2024-10-01', '2024-12-15'),
(4, 'Computer Science edited', 'CS101', '2024-10-01', '2024-12-15'),
(5, 'Biology', 'BIO110', '2024-10-01', '2024-12-15'),
(6, 'English Literature', 'ENG201', '2024-10-01', '2024-12-15'),
(7, 'History', 'HIST301', '2024-10-01', '2024-12-15'),
(8, 'Economics', 'ECON205', '2024-10-01', '2024-12-15'),
(11, 'Physical Education', 'PE101', '2024-10-01', '2024-12-15');

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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `username`, `password`) VALUES
(22, 'professor', 'Mary', '$2y$10$NGuVd7ckLZzvCr/xGO.nOOHgPS3a2zrcA2BlbUgDlaKFpnREt1fLe'),
(21, 'professor', 'Joseph', '$2y$10$YCINJtoCDNuDbtNDQ.hB6.VEEcM83.JDntic8h68mEGO9ty0rOB5.'),
(15, 'student', 'cj ', '$2y$10$xJbdOnlbPOt8Zv7XmbWYp.F6axRN6AEjj7.mJYD2.ve4ucEbJjS1q'),
(16, 'admin', 'dar', '$2y$10$sma.tu.YBkQvf53i6XunyuIjXFRC7jzOTUn5mCDxMyJqZYGRZUnfm'),
(27, 'student', 'new', '$2y$10$kBKZ//QxcdZ4sPOHf5b2C.vN4IOSpjg.EPCTM2w65CDz1SmCOj4uG'),
(24, 'student', 'rj', '$2y$10$00g11aXWd/j.OOo5S/jvNe5yzqIA/gauGM3G58hCaz7QxFOQ886FG'),
(25, 'student', 'jm', '$2y$10$pys/KXwYQXfA1O3kkbsWdOlrPeCL8/Fp2qoVJUlY.n65IEWbJO2em'),
(28, 'student', 'past', '$2y$10$Je40yAbDhDHLZJOTGeZHWevGfZCuL2VK39DY5lTlFdw1pPCSQko12'),
(29, 'student', 'lyn', '$2y$10$F4woch54oJ.t3Uvb.pXmce8ja6DlQFyuiclbtHBpTQCt9hCMVAKDG'),
(30, 'professor', 'Harold', '$2y$10$IoF3daOOzjsNqc6yk/FOkuIAJeV1ioR9oQmXvbL6fBNolOluIxaFq'),
(31, 'professor', 'Christian', '$2y$10$SJaqq7l2P8KsMaW7PUs6WOvuKgz/4sV97rUMfKcrJu7n1C4EuB1tm'),
(32, 'student', 'Jhomel', '$2y$10$1dsXDwYF.Be1Y4V57wbbiOXnQt2thM.UR5qvQumZTJdRrIj6X64X.');

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
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_subjects`
--

INSERT INTO `user_subjects` (`id`, `user_id`, `subject_id`, `role`) VALUES
(1, 23, 1, 'student'),
(2, 24, 1, 'student'),
(3, 25, 2, 'student'),
(4, 21, 1, 'professor'),
(5, 22, 2, 'professor'),
(6, 24, 2, 'student'),
(7, 30, 4, 'professor'),
(8, 30, 11, 'professor'),
(9, 16, 1, 'student'),
(10, 16, 2, 'student'),
(11, 16, 3, 'student'),
(12, 16, 4, 'student'),
(13, 16, 5, 'student'),
(14, 16, 6, 'student'),
(15, 16, 7, 'student'),
(16, 16, 8, 'student'),
(17, 16, 11, 'student'),
(53, 32, 11, 'student'),
(52, 32, 8, 'student'),
(51, 32, 7, 'student'),
(50, 32, 6, 'student'),
(49, 32, 5, 'student'),
(48, 32, 4, 'student'),
(47, 32, 3, 'student'),
(46, 32, 2, 'student'),
(45, 32, 1, 'student'),
(44, 31, 11, 'student'),
(43, 31, 8, 'student'),
(42, 31, 7, 'student'),
(41, 31, 6, 'student'),
(40, 31, 5, 'student'),
(39, 31, 4, 'student'),
(38, 31, 3, 'student'),
(37, 31, 2, 'student'),
(36, 31, 1, 'student');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
