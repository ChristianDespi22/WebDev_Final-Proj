-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 01, 2024 at 05:55 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `username`, `password`) VALUES
(18, 'professor', 'professor2', '$2y$10$WUChy07WGZDpI7emLjlE1OddbT5VjwxHdZNOzMy5oAz/xXvhamhKW'),
(5, 'professor', 'p1', '$2y$10$QCeAA0mchsv.p'),
(17, 'professor', 'professor1', '$2y$10$.l.dfzm.X0jRcOqonAW5bedyCrnhvMm2ap6YrvRneMOLgt7owdw.a'),
(13, 'admin', 'chatgpt', '$2y$10$qBDm8adSM0WpZkKua9L83eUuncK9VD1zhkhDgfwhgxNze3VktkZEW'),
(14, 'admin', 'gemini', '$2y$10$s6AfUFlY1QCmsDCg/9jubOpPUzm0eettD4dkD2DyLSk9QOBj3zzY2'),
(15, 'admin', 'cj', '$2y$10$ao8ht94lUjf8i7Hn/9djxuLmJHecc6cmtz5j08bUimbRouDiJVkE6'),
(16, 'admin', 'dar', '$2y$10$sma.tu.YBkQvf53i6XunyuIjXFRC7jzOTUn5mCDxMyJqZYGRZUnfm'),
(19, 'student', 'student1', '$2y$10$SHoNzFGSpXiZnd5SUg9Tw.i4WhffV.9395tlMBD7syb/DE8GsQ2bi'),
(20, 'student', 'student2', '$2y$10$ysi5GZBiQ3LPpljhX3XnDOo179ArWFgc4tHZWo0LAVam9Gwsk6d2C');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
