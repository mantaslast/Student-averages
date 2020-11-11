
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marks`
--
CREATE DATABASE IF NOT EXISTS `marks` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `marks`;

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
CREATE TABLE IF NOT EXISTS `mark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mark` int(2) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_mark_student_id_idx` (`student_id`),
  KEY `fk_mark_subject_id_idx` (`subject_id`)
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`id`, `mark`, `student_id`, `subject_id`) VALUES
(1, 7, 4, 5),
(2, 7, 8, 5),
(3, 3, 4, 1),
(4, 10, 8, 1),
(5, 7, 2, 1),
(6, 6, 5, 5),
(7, 3, 2, 2),
(8, 3, 8, 3),
(9, 2, 9, 1),
(10, 10, 6, 5),
(11, 8, 10, 2),
(12, 4, 2, 5),
(13, 3, 9, 5),
(14, 10, 9, 4),
(15, 7, 3, 3),
(16, 8, 9, 1),
(17, 10, 5, 2),
(18, 6, 3, 5),
(19, 2, 6, 2),
(20, 10, 10, 4),
(21, 8, 7, 5),
(22, 3, 7, 3),
(23, 9, 8, 1),
(24, 9, 1, 5),
(25, 7, 4, 5),
(26, 2, 8, 3),
(27, 5, 3, 2),
(28, 2, 1, 1),
(29, 4, 2, 1),
(30, 7, 1, 3),
(31, 5, 3, 1),
(32, 2, 9, 1),
(33, 10, 5, 3),
(34, 2, 7, 2),
(35, 3, 3, 4),
(36, 3, 4, 1),
(37, 8, 2, 3),
(38, 4, 9, 3),
(39, 3, 10, 2),
(40, 6, 9, 4),
(41, 6, 8, 2),
(42, 5, 10, 4),
(43, 8, 4, 3),
(44, 3, 8, 2),
(45, 9, 5, 3),
(46, 7, 6, 5),
(47, 2, 4, 3),
(48, 10, 9, 4),
(49, 8, 6, 3),
(50, 10, 5, 1),
(51, 4, 2, 5),
(52, 3, 3, 3),
(53, 8, 2, 3),
(54, 3, 4, 2),
(55, 3, 1, 5),
(56, 10, 1, 4),
(57, 10, 10, 4),
(58, 2, 9, 1),
(59, 10, 7, 1),
(60, 2, 7, 2),
(61, 4, 5, 2),
(62, 6, 7, 4),
(63, 9, 7, 4),
(64, 10, 5, 1),
(65, 8, 2, 4),
(66, 6, 7, 5),
(67, 8, 10, 3),
(68, 7, 4, 5),
(69, 8, 8, 3),
(70, 3, 7, 3),
(71, 4, 10, 1),
(72, 8, 3, 2),
(73, 5, 4, 3),
(74, 2, 10, 3),
(75, 7, 9, 2),
(76, 7, 5, 3),
(77, 2, 8, 3),
(78, 8, 7, 2),
(79, 3, 3, 3),
(80, 4, 5, 3),
(81, 5, 5, 5),
(82, 3, 4, 5),
(83, 10, 7, 2),
(84, 8, 7, 5),
(85, 9, 4, 2),
(86, 2, 8, 4),
(87, 8, 10, 2),
(88, 3, 8, 1),
(89, 2, 4, 2),
(90, 10, 7, 2),
(91, 4, 9, 2),
(92, 2, 4, 2),
(93, 2, 1, 1),
(94, 6, 2, 1),
(95, 5, 4, 4),
(96, 8, 5, 5),
(97, 2, 7, 1),
(98, 9, 7, 4),
(99, 9, 1, 4),
(100, 6, 4, 1),
(101, 4, 2, 1),
(102, 9, 9, 5),
(103, 9, 4, 3),
(104, 4, 8, 1),
(105, 5, 6, 4),
(106, 7, 1, 2),
(107, 5, 3, 1),
(108, 5, 10, 3),
(109, 4, 1, 3),
(110, 8, 1, 5),
(111, 6, 9, 3),
(112, 4, 6, 1),
(113, 3, 5, 4),
(114, 8, 3, 1),
(115, 8, 1, 2),
(116, 5, 1, 5),
(117, 7, 2, 1),
(118, 8, 4, 3),
(119, 6, 10, 3),
(120, 3, 6, 1),
(121, 4, 7, 4),
(122, 3, 10, 2),
(123, 10, 6, 5),
(124, 3, 10, 1),
(125, 6, 4, 1),
(126, 8, 1, 2),
(127, 5, 1, 5),
(128, 8, 9, 1),
(129, 3, 3, 1),
(130, 3, 8, 1),
(131, 5, 7, 5),
(132, 8, 10, 4),
(133, 3, 1, 3),
(134, 9, 7, 3),
(135, 8, 2, 4),
(136, 6, 7, 4),
(137, 10, 4, 5),
(138, 6, 10, 1),
(139, 9, 8, 2),
(140, 10, 10, 1),
(141, 9, 8, 1),
(142, 4, 10, 5),
(143, 9, 5, 5),
(144, 2, 5, 5),
(145, 8, 5, 2),
(146, 10, 7, 5),
(147, 10, 5, 3),
(148, 9, 6, 3),
(149, 8, 2, 5),
(150, 5, 7, 1),
(151, 2, 6, 2),
(152, 8, 7, 2),
(153, 8, 6, 4),
(154, 3, 6, 1),
(155, 6, 6, 2),
(156, 5, 6, 3),
(157, 5, 9, 1),
(158, 6, 4, 1),
(159, 10, 3, 3),
(160, 6, 10, 3),
(161, 8, 9, 5),
(162, 6, 7, 4),
(163, 8, 7, 4),
(164, 8, 6, 3),
(165, 8, 4, 2),
(166, 8, 5, 1),
(167, 3, 5, 5),
(168, 2, 7, 1),
(169, 9, 7, 4),
(170, 7, 1, 2),
(171, 7, 1, 3),
(172, 4, 8, 1),
(173, 3, 7, 5),
(174, 10, 5, 3),
(175, 7, 9, 2),
(176, 4, 3, 3),
(177, 8, 3, 1),
(178, 4, 4, 5),
(179, 3, 6, 5),
(180, 5, 9, 2),
(181, 6, 1, 4),
(182, 9, 6, 1),
(183, 2, 9, 5),
(184, 4, 8, 4),
(185, 8, 2, 4),
(186, 9, 5, 3),
(187, 9, 9, 5),
(188, 8, 10, 3),
(189, 2, 8, 3),
(190, 4, 7, 4),
(191, 2, 7, 4),
(192, 3, 3, 5),
(193, 2, 3, 1),
(194, 9, 7, 1),
(195, 10, 10, 5),
(196, 4, 9, 4),
(197, 6, 6, 1),
(198, 2, 8, 5),
(199, 9, 7, 4),
(200, 10, 4, 1),
(201, 10, 9, 1),
(202, 4, 1, 3),
(203, 6, 8, 2),
(204, 2, 6, 3),
(205, 8, 2, 3),
(206, 9, 9, 5),
(207, 9, 6, 2),
(208, 7, 4, 1),
(209, 10, 9, 1),
(210, 3, 6, 1),
(211, 10, 4, 5),
(212, 7, 3, 3),
(213, 6, 10, 3),
(214, 5, 8, 4),
(215, 10, 8, 5),
(216, 2, 9, 5),
(217, 4, 3, 4),
(218, 7, 8, 2),
(219, 8, 2, 2),
(220, 3, 10, 2),
(221, 5, 2, 5),
(222, 6, 1, 5),
(223, 10, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `university_id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sudent_university_id_idx` (`university_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `university_id`, `first_name`, `last_name`) VALUES
(1, 1, 'Jonas', 'Jonaitis'),
(2, 1, 'Vardenis', 'Pavardenis'),
(3, 2, 'Petras', 'Petraitis'),
(4, 2, 'Juozas', 'Jonaitis'),
(5, 3, 'Vardenis2', 'Pavardenis'),
(6, 3, 'Petras', 'Petrauskas'),
(7, 4, 'Vardenis', 'Pavardenis2'),
(8, 4, 'Jonas', 'Pavardenis'),
(9, 5, 'Vardenis2', 'Pavardenis2'),
(10, 5, 'Petras', 'Pavardenis');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `code` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `code`) VALUES
(1, 'Diskrečioji matematika', 'discrete_mathematics'),
(2, 'Objektinis programavimas', 'object_oriented_programming'),
(3, 'Filosofija', 'philosophy'),
(4, 'Anglų k.', 'english'),
(5, 'Projektų valdymas', 'project_management');

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

DROP TABLE IF EXISTS `university`;
CREATE TABLE IF NOT EXISTS `university` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`id`, `name`) VALUES
(1, 'Vilniaus universitetas'),
(2, 'Kauno technikos univesitetas'),
(3, 'Vilniaus Gedimino technikos universitetas'),
(4, 'Vytauto Didžiojo universitetas');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
