-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 21, 2014 at 02:17 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `school_information`
--
CREATE DATABASE IF NOT EXISTS `school_information` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `school_information`;

-- --------------------------------------------------------

--
-- Table structure for table `eng_mks`
--

CREATE TABLE IF NOT EXISTS `eng_mks` (
  `e_id` int(11) NOT NULL,
  `e_nm` varchar(20) NOT NULL,
  `sub` varchar(20) NOT NULL,
  `sch_name` varchar(20) NOT NULL,
  `roll` int(11) NOT NULL,
  `mks` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `eng_mks`
--

INSERT INTO `eng_mks` (`e_id`, `e_nm`, `sub`, `sch_name`, `roll`, `mks`, `id`) VALUES
(22, 'sanjay', 'a', 'rrr', 11, 33, 1),
(31, 'kanchan', 'a', '54', 343, 34, 2),
(31, 'kanchan', 'a', '4466', 88, 999, 3),
(31, 'kanchan', 'a', '2111', 33, 44, 4),
(31, 'kanchan', 'a', '33', 55, 33, 5);

-- --------------------------------------------------------

--
-- Table structure for table `evaluator`
--

CREATE TABLE IF NOT EXISTS `evaluator` (
  `ev_id` int(11) NOT NULL AUTO_INCREMENT,
  `ev_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`ev_id`),
  UNIQUE KEY `contact` (`contact`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=80 ;

--
-- Dumping data for table `evaluator`
--

INSERT INTO `evaluator` (`ev_id`, `ev_name`, `contact`, `email`, `paper`, `pass`, `id`) VALUES
(66, 'www', '45', 'rr', 'English', 'qqq', 62),
(77, 'raj', '4543', 'ytvrd', 'Math', '111', 33),
(78, 'naz', '3221', 'gmail', 'English', 'aaa', 65),
(79, 'sandeep', '22', 'gnail', 'English', '111', 66);

-- --------------------------------------------------------

--
-- Table structure for table `evaluator_eng`
--

CREATE TABLE IF NOT EXISTS `evaluator_eng` (
  `ev_id` int(5) NOT NULL AUTO_INCREMENT,
  `ev_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `no_of_work` int(11) NOT NULL,
  PRIMARY KEY (`ev_id`),
  UNIQUE KEY `contact` (`contact`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `evaluator_eng`
--

INSERT INTO `evaluator_eng` (`ev_id`, `ev_name`, `contact`, `email`, `paper`, `pass`, `no_of_work`) VALUES
(65, 'naz', '3221', 'gmail', 'English', 'aaa', 0),
(66, 'sandeep', '22', 'gnail', 'English', '111', 0);

-- --------------------------------------------------------

--
-- Table structure for table `evaluator_hin`
--

CREATE TABLE IF NOT EXISTS `evaluator_hin` (
  `ev_id` int(5) NOT NULL AUTO_INCREMENT,
  `ev_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`ev_id`),
  UNIQUE KEY `contact` (`contact`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `evaluator_hin`
--

INSERT INTO `evaluator_hin` (`ev_id`, `ev_name`, `contact`, `email`, `paper`, `pass`) VALUES
(35, 'sandeep', '22', 'gnail', 'Hindi', '111');

-- --------------------------------------------------------

--
-- Table structure for table `evaluator_math`
--

CREATE TABLE IF NOT EXISTS `evaluator_math` (
  `ev_id` int(5) NOT NULL AUTO_INCREMENT,
  `ev_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`ev_id`),
  UNIQUE KEY `contact` (`contact`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `evaluator_math`
--

INSERT INTO `evaluator_math` (`ev_id`, `ev_name`, `contact`, `email`, `paper`, `pass`) VALUES
(33, 'raj', '4543', 'ytvrd', 'Math', '111'),
(34, 'sandeep', '22', 'gnail', 'Math', '222');

-- --------------------------------------------------------

--
-- Table structure for table `evaluator_sci`
--

CREATE TABLE IF NOT EXISTS `evaluator_sci` (
  `ev_id` int(5) NOT NULL AUTO_INCREMENT,
  `ev_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`ev_id`),
  UNIQUE KEY `contact` (`contact`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `evaluator_sci`
--

INSERT INTO `evaluator_sci` (`ev_id`, `ev_name`, `contact`, `email`, `paper`, `pass`) VALUES
(24, 'sandeep', '22', 'gnail', 'Science', '333');

-- --------------------------------------------------------

--
-- Table structure for table `evaluator_s_sci`
--

CREATE TABLE IF NOT EXISTS `evaluator_s_sci` (
  `ev_id` int(5) NOT NULL AUTO_INCREMENT,
  `ev_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`ev_id`),
  UNIQUE KEY `contact` (`contact`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `evaluator_s_sci`
--

INSERT INTO `evaluator_s_sci` (`ev_id`, `ev_name`, `contact`, `email`, `paper`, `pass`) VALUES
(38, 'sandeep', '22', 'gnail', 'SST', '444');

-- --------------------------------------------------------

--
-- Table structure for table `eve_info`
--

CREATE TABLE IF NOT EXISTS `eve_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paper` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=165 ;

--
-- Dumping data for table `eve_info`
--

INSERT INTO `eve_info` (`id`, `paper`) VALUES
(1, 't4'),
(2, 'English'),
(3, 'English'),
(4, 'English'),
(5, 'English'),
(6, 'Hindi'),
(7, 'English'),
(8, 'English'),
(9, 'English'),
(10, 'Hindi'),
(11, 'Hindi'),
(12, 'Math'),
(13, 'English'),
(14, 'English'),
(15, 'English'),
(16, 'English'),
(17, 'English'),
(18, 'Hindi'),
(19, 'Math'),
(20, 'Science'),
(21, 'Social_Scie'),
(22, 'Social_Scie'),
(23, 'Social_Scie'),
(24, 'Social_Scie'),
(25, 'Science'),
(26, 'Math'),
(27, 'English'),
(28, 'Hindi'),
(29, 'Math'),
(31, 'Social_Scie'),
(32, 'Science'),
(33, 'Social_Scie'),
(34, 'Social_Scie'),
(35, 'Social_Scie'),
(36, 'Social_Scie'),
(37, 'Math'),
(38, 'Math'),
(39, 'Social_Scie'),
(40, 'Social_Scie'),
(41, 'English'),
(42, 'English'),
(43, 'Social_Scie'),
(44, 'Social_Scie'),
(45, 'English'),
(46, 'English'),
(47, 'English'),
(48, 'Social_Scie'),
(49, 'Science'),
(50, 'Math'),
(51, 'Hindi'),
(52, 'Hindi'),
(53, 'English'),
(54, 'English'),
(55, 'Social_scie'),
(56, 'Math'),
(57, 'Socialscien'),
(58, 'Social_Scie'),
(59, 'Social_Scie'),
(60, 'Science'),
(61, 'Science'),
(62, 'Science'),
(63, 'Social_Scie'),
(64, 'Social_Scie'),
(65, 'English'),
(66, 'English'),
(67, 'Hindi'),
(68, 'Math'),
(69, 'Science'),
(70, 'Social_Scie'),
(71, 'English'),
(72, 'Hindi'),
(73, 'Math'),
(74, 'Science'),
(75, 'Social_Scie'),
(76, 'Sciencee'),
(77, 'Social_Scie'),
(78, 'SST'),
(79, 'English'),
(80, 'English'),
(81, 'Hindi'),
(82, 'Math'),
(83, 'Hindi'),
(84, 'English'),
(85, 'Science'),
(86, 'SST'),
(87, 'Math'),
(88, 'Science'),
(89, 'Science'),
(90, 'English'),
(91, 'English'),
(92, 'English'),
(93, 'English'),
(94, 'Hindi'),
(95, 'Math'),
(96, 'Science'),
(97, 'SST'),
(98, 'English'),
(99, 'Math'),
(100, 'English'),
(101, 'Hindi'),
(102, 'English'),
(103, 'Math'),
(104, 'Science'),
(105, 'SST'),
(106, 'Science'),
(107, 'Math'),
(108, 'Hindi'),
(109, 'Math'),
(110, 'English'),
(111, 'Hindi'),
(112, 'English'),
(113, 'English'),
(114, 'Hindi'),
(115, 'English'),
(116, 'Hindi'),
(117, 'Math'),
(118, 'Science'),
(119, 'SST'),
(120, 'English'),
(121, 'Hindi'),
(122, 'Math'),
(123, 'Science'),
(124, 'SST'),
(125, 'Hindi'),
(126, 'English'),
(127, 'Math'),
(128, 'Science'),
(129, 'Science'),
(130, 'SST'),
(131, 'SST'),
(132, 'English'),
(133, 'Hindi'),
(134, 'Math'),
(135, 'Science'),
(136, 'SST'),
(137, 'English'),
(138, 'English'),
(139, 'Math'),
(140, 'Math'),
(141, 'Math'),
(142, 'Hindi'),
(143, 'Hindi'),
(144, 'Hindi'),
(145, 'Science'),
(146, 'Hindi'),
(147, 'English'),
(148, 'English'),
(149, 'Hindi'),
(150, 'Math'),
(151, 'Science'),
(152, 'SST'),
(153, 'Science'),
(154, 'Math'),
(155, 'English'),
(156, 'Math'),
(157, 'Math'),
(158, 'English'),
(159, 'English'),
(160, 'Hindi'),
(161, 'Math'),
(162, 'Science'),
(163, 'SST'),
(164, 'SST');

-- --------------------------------------------------------

--
-- Table structure for table `eve_sch_input`
--

CREATE TABLE IF NOT EXISTS `eve_sch_input` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg` int(11) NOT NULL,
  `roll_no` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hin_nks`
--

CREATE TABLE IF NOT EXISTS `hin_nks` (
  `id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `e_nm` varchar(20) NOT NULL,
  `sub` varchar(20) NOT NULL,
  `sch_name` varchar(20) NOT NULL,
  `roll` int(11) NOT NULL,
  `mks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hin_nks`
--

INSERT INTO `hin_nks` (`id`, `e_id`, `e_nm`, `sub`, `sch_name`, `roll`, `mks`) VALUES
(0, 31, 'kanchan', 'Hindi', '23', 46, 447),
(0, 31, 'kanchan', 'Hindi', '23', 46, 447),
(0, 31, 'kanchan', 'Hindi', '2333', 4336, 447);

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `reg`) VALUES
(13, 46),
(32, 25),
(33, 46),
(34, 46),
(35, 46),
(36, 46),
(37, 57),
(39, 58),
(43, 46),
(53, 44),
(54, 46),
(55, 44),
(56, 46),
(57, 46),
(58, 59),
(59, 60),
(60, 46),
(61, 65),
(62, 69),
(63, 46),
(64, 46),
(65, 46),
(66, 46),
(67, 46),
(68, 103),
(69, 103),
(70, 103),
(71, 103),
(72, 103),
(73, 103),
(74, 103),
(75, 103),
(76, 103),
(77, 104),
(78, 106),
(79, 106),
(80, 106),
(81, 106),
(82, 106),
(83, 106),
(84, 106),
(85, 106);

-- --------------------------------------------------------

--
-- Table structure for table `log_info`
--

CREATE TABLE IF NOT EXISTS `log_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `paper` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `log_info`
--

INSERT INTO `log_info` (`id`, `reg`, `name`, `paper`) VALUES
(6, 57, '', ''),
(7, 58, '', ''),
(8, 36, 'boy', ''),
(9, 19, 'rahul', ''),
(10, 61, 'roushan', ''),
(11, 27, 'ravi', ''),
(12, 60, 'ravi', ''),
(13, 29, 'aaa', ''),
(14, 30, 'rani', ''),
(15, 31, 'manohar', ''),
(16, 21, 'bbb', ''),
(17, 28, 'rahul', ''),
(18, 28, 'rahul', 'p'),
(19, 28, 'rahul', 'p'),
(20, 28, 'rahul', 'p'),
(21, 23, 'ravi', 'p'),
(22, 23, 'ravi', 'p'),
(23, 23, 'ravi', 'Science'),
(24, 23, 'ravi', 'Science'),
(25, 23, 'ravi', 'Science'),
(26, 23, 'ravi', 'Science'),
(27, 23, 'ravi', 'Science'),
(28, 31, 'kanchan', 'Math'),
(29, 31, 'kanchan', 'Math'),
(30, 31, 'kanchan', 'Math'),
(31, 31, 'kanchan', 'Math'),
(32, 62, 'www', 'English'),
(33, 31, 'kanchan', 'Math'),
(34, 31, 'kanchan', 'Math'),
(35, 33, 'raj', 'Math'),
(36, 33, 'raj', 'Math'),
(37, 33, 'raj', 'Math'),
(38, 33, 'raj', 'Math'),
(39, 33, 'raj', 'Math'),
(40, 33, 'raj', 'Math'),
(41, 33, 'raj', 'Math'),
(42, 33, 'raj', 'Math'),
(43, 30, 'w', 'Math'),
(44, 30, 'w', 'Math'),
(45, 30, 'w', 'Math'),
(46, 65, 'naz', 'English'),
(47, 33, 'raj', 'Math'),
(48, 33, 'raj', 'Math'),
(49, 33, 'raj', 'Math'),
(50, 33, 'raj', 'Math'),
(51, 65, 'naz', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `math_mks`
--

CREATE TABLE IF NOT EXISTS `math_mks` (
  `id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `e_nm` varchar(20) NOT NULL,
  `sub` varchar(20) NOT NULL,
  `sch_name` varchar(20) NOT NULL,
  `roll` int(11) NOT NULL,
  `mks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `math_mks`
--

INSERT INTO `math_mks` (`id`, `e_id`, `e_nm`, `sub`, `sch_name`, `roll`, `mks`) VALUES
(0, 31, 'kanchan', 'Math', '99', 55, 454),
(0, 31, 'kanchan', 'Math', '56', 33, 26),
(0, 33, 'raj', 'Math', '104', 22, 26),
(0, 33, 'raj', 'Math', '104', 22, 26),
(0, 33, 'raj', 'Math', '104', 22, 76),
(0, 33, 'raj', 'Math', '104', 22, 76),
(0, 33, 'raj', 'Math', '104', 22, 93),
(0, 33, 'raj', 'Math', '104', 22, 93),
(0, 33, 'raj', 'Math', '104', 22, 93),
(0, 33, 'raj', 'Math', '104', 22, 106),
(0, 33, 'raj', 'Math', '104', 45, 136),
(0, 33, 'raj', 'Math', '104', 451, 149);

-- --------------------------------------------------------

--
-- Table structure for table `paper_info`
--

CREATE TABLE IF NOT EXISTS `paper_info` (
  `sch_code` int(30) NOT NULL,
  `stu_name` varchar(30) NOT NULL,
  `roll_no` int(20) NOT NULL,
  `roll_code` int(20) NOT NULL,
  `eng` varchar(100) NOT NULL,
  `hin` varchar(100) NOT NULL,
  `math` varchar(100) NOT NULL,
  `sci` varchar(100) NOT NULL,
  `s_sci` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paper_info`
--

INSERT INTO `paper_info` (`sch_code`, `stu_name`, `roll_no`, `roll_code`, `eng`, `hin`, `math`, `sci`, `s_sci`) VALUES
(44, 'hhh', 45, 5, 'WP_20140127_003.jpg', 'WP_20140127_014.jpg', 'WP_20140127_007.jpg', 'WP_20140127_006.jpg', 'WP_20140127_005.jpg'),
(44, 'lll', 6, 54, 'WP_20140127_006.jpg', '', '', '', ''),
(44, 'dd', 1, 23, 'WP_20140127_008.jpg', '', '', '', ''),
(44, 'dd', 1, 23, 'WP_20140127_008.jpg', 'WP_20140127_007.jpg', 'WP_20140127_008.jpg', 'WP_20140127_014.jpg', 'WP_20140127_006.jpg'),
(44, 'hh', 8, 9, 'WP_20140127_007.jpg', 'WP_20140127_003.jpg', 'WP_20140127_006.jpg', 'WP_20140127_014.jpg', 'WP_20140127_004.jpg'),
(44, 'hhh', 8, 99, 'WP_20140127_007.jpg', '', '', 'WP_20140127_014.jpg', 'WP_20140127_004.jpg'),
(44, 'nazish', 44, 11, 'DSCN0935.JPG', 'DSCN0938.JPG', 'DSCN0955.JPG', '', ''),
(44, 'aaa', 12, 23, 'img1.JPG', 'img2.JPG', '', '', ''),
(57, 'neha', 1, 12, '2.jpg', '', '', '', ''),
(60, 'santosh', 1, 11, '12.png', 'background.png', 'bg_top.gif', '', ''),
(65, 'asd', 1, 12, '2.jpg', '', '', '', ''),
(69, 'eee', 1, 12, '2.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `scanner`
--

CREATE TABLE IF NOT EXISTS `scanner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scn_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `scn_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contact` (`contact`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `scanner`
--

INSERT INTO `scanner` (`id`, `scn_name`, `contact`, `email`, `paper`, `pass`, `scn_id`) VALUES
(1, 'samrat', '9998887776', 'sswq', 'English', 'aaa', 1),
(2, 'sabu', '123', 'tue', 'English', 'aaa', 4),
(3, 'sabu', '5', 'gr', 'Hindi', 'qq', 1),
(4, 'andy', '09', 'vc', 'Math', 'zz', 3),
(5, 'ravi', '1', 'wq2', 'Science', 'xx', 1),
(7, 'santosh', '120', 'ewq', 'Science', 'aaa', 2),
(8, 'kanchan', '999', 'weqsrf@yrers', 'Science', '123', 3),
(9, 'ram', '56', 'iiuhuh', 'Hindi', '11', 2),
(10, 'rrr', '555', 'uyt', 'Hindi', 'rrr', 3),
(21, 'AAA', '4555', 'OOuyt', 'Math', 'aaa', 4),
(22, 'www', '1221', 'eeww', 'SST', 'aaa', 1),
(23, 'ttt', '123', 'tyt', 'Math', '1', 5),
(24, '', '', '', 'English', '', 5),
(25, 'suraj', '102', 'eer', 'English', '111', 6),
(28, 'ram', '7234', 'eee', 'Hindi', 'eee', 4),
(29, 'ram', '11121', 'gmail', 'English', '1234', 9),
(48, 'raj', '44', 'trf', 'SST', '111', 4),
(69, 'pratap', '9661012727', 'baatul@gmail.com', 'Math', 'aaa', 8),
(70, 'sabu', '2232445532', 'sabu@gmail.com', 'Math', 'aaa', 9),
(71, 'pratap', '111', 'www', 'English', '111', 10);

-- --------------------------------------------------------

--
-- Table structure for table `school_regis`
--

CREATE TABLE IF NOT EXISTS `school_regis` (
  `reg_code` int(11) NOT NULL AUTO_INCREMENT,
  `sch_name` varchar(40) NOT NULL,
  `reg_no` int(10) NOT NULL,
  `con_no` int(12) NOT NULL,
  `e_mail` varchar(30) NOT NULL,
  `str_1` varchar(35) NOT NULL,
  `str_2` varchar(35) NOT NULL,
  `city` varchar(20) NOT NULL,
  `dist` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pin` int(6) NOT NULL,
  `pas` varchar(25) NOT NULL,
  PRIMARY KEY (`reg_code`),
  UNIQUE KEY `e_mail` (`e_mail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=107 ;

--
-- Dumping data for table `school_regis`
--

INSERT INTO `school_regis` (`reg_code`, `sch_name`, `reg_no`, `con_no`, `e_mail`, `str_1`, `str_2`, `city`, `dist`, `state`, `pin`, `pas`) VALUES
(104, 'abc', 444, 11661, 'eee', 'ffdsfds', 'jj', 'j', 'dfdj', 'fffdfdf', 123445, 'www'),
(105, 'swraswati', 11, 123456, 'Gmail', 'east', 'clony', 'ckp', 'west singhbhum', 'jharkhand', 833102, 'aaa'),
(106, 'kv', 1122, 12345, 'kv@gmail.com', 'road no 5', 're colony', 'ckp', 'west singhbhum', 'jharkhand', 833, '12');

-- --------------------------------------------------------

--
-- Table structure for table `sci_mks`
--

CREATE TABLE IF NOT EXISTS `sci_mks` (
  `id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `e_nm` varchar(20) NOT NULL,
  `sub` varchar(20) NOT NULL,
  `sch_name` varchar(20) NOT NULL,
  `roll` int(11) NOT NULL,
  `mks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sci_mks`
--

INSERT INTO `sci_mks` (`id`, `e_id`, `e_nm`, `sub`, `sch_name`, `roll`, `mks`) VALUES
(0, 31, 'kanchan', 'Science', '343', 111, 87);

-- --------------------------------------------------------

--
-- Table structure for table `scn_eng`
--

CREATE TABLE IF NOT EXISTS `scn_eng` (
  `sc_id` int(5) NOT NULL AUTO_INCREMENT,
  `scn_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `scn_eng`
--

INSERT INTO `scn_eng` (`sc_id`, `scn_name`, `contact`, `email`, `paper`, `pass`) VALUES
(8, 'suraj', '102', 'eer', 'English', 'sss'),
(9, 'ram', '11121', 'gmail', 'English', '1234'),
(10, 'pratap', '111', 'www', 'English', '111');

-- --------------------------------------------------------

--
-- Table structure for table `scn_hin`
--

CREATE TABLE IF NOT EXISTS `scn_hin` (
  `sc_id` int(5) NOT NULL AUTO_INCREMENT,
  `scn_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `scn_hin`
--

INSERT INTO `scn_hin` (`sc_id`, `scn_name`, `contact`, `email`, `paper`, `pass`) VALUES
(4, 'ram', '7234', 'eee', 'Hindi', 'eee'),
(5, 'ram', '11121', 'gmail', 'Hindi', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `scn_info`
--

CREATE TABLE IF NOT EXISTS `scn_info` (
  `scn_id` int(5) NOT NULL AUTO_INCREMENT,
  `paper` varchar(11) NOT NULL,
  PRIMARY KEY (`scn_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `scn_info`
--

INSERT INTO `scn_info` (`scn_id`, `paper`) VALUES
(1, 'English'),
(2, 'English'),
(3, 'English'),
(4, 'English'),
(5, 'Hindi'),
(6, 'Math'),
(7, 'Math'),
(8, 'Math'),
(9, 'Science'),
(10, 'Science'),
(11, 'Science'),
(12, 'Hindi'),
(13, 'Hindi'),
(14, 'Math'),
(15, 'SST'),
(16, 'Math'),
(17, 'English'),
(18, 'English'),
(19, 'English'),
(20, 'English'),
(21, 'Hindi'),
(22, 'English'),
(23, 'Hindi'),
(24, 'Math'),
(25, 'Science'),
(26, 'SST'),
(27, 'SST'),
(28, 'Math'),
(29, 'SST'),
(30, 'Math'),
(31, 'Math'),
(32, 'English');

-- --------------------------------------------------------

--
-- Table structure for table `scn_info_id`
--

CREATE TABLE IF NOT EXISTS `scn_info_id` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `scn_id` int(5) NOT NULL,
  `paper` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `scn_info_id`
--

INSERT INTO `scn_info_id` (`id`, `name`, `scn_id`, `paper`) VALUES
(1, 'andy', 3, 'Math'),
(2, 'andy', 3, 'Math'),
(3, 'santosh', 2, 'Science'),
(4, 'santosh', 2, 'Science'),
(5, 'sabu', 4, 'English'),
(6, 'kanchan', 3, 'Science'),
(7, 'ram', 2, 'Hindi'),
(8, 'sabu', 4, 'English'),
(9, 'sabu', 4, 'English'),
(10, 'AAA', 4, 'Math'),
(11, 'AAA', 4, 'Math'),
(12, 'www', 1, 'SST'),
(13, 'ttt', 5, 'Math'),
(14, 'ttt', 5, 'Math'),
(15, 'ram', 9, 'English'),
(16, 'pratap', 8, 'Math'),
(17, 'pratap', 8, 'Math'),
(18, 'pratap', 8, 'Math'),
(19, 'pratap', 8, 'Math'),
(20, 'pratap', 8, 'Math'),
(21, 'pratap', 8, 'Math'),
(22, 'sabu', 9, 'Math'),
(23, 'pratap', 10, 'English');

-- --------------------------------------------------------

--
-- Table structure for table `scn_math`
--

CREATE TABLE IF NOT EXISTS `scn_math` (
  `sc_id` int(5) NOT NULL AUTO_INCREMENT,
  `scn_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `scn_math`
--

INSERT INTO `scn_math` (`sc_id`, `scn_name`, `contact`, `email`, `paper`, `pass`) VALUES
(6, 'ram', '11121', 'gmail', 'Math', '444'),
(7, 'ram', '11121', 'gmail', 'Math', 'tttt'),
(8, 'pratap', '9661012727', 'baatul@gmail.com', 'Math', 'aaa'),
(9, 'sabu', '2232445532', 'sabu@gmail.com', 'Math', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `scn_sci`
--

CREATE TABLE IF NOT EXISTS `scn_sci` (
  `sc_id` int(5) NOT NULL AUTO_INCREMENT,
  `scn_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `scn_sci`
--

INSERT INTO `scn_sci` (`sc_id`, `scn_name`, `contact`, `email`, `paper`, `pass`) VALUES
(4, 'ram', '11121', 'gmail', 'Science', 'aaaa');

-- --------------------------------------------------------

--
-- Table structure for table `scn_s_sci`
--

CREATE TABLE IF NOT EXISTS `scn_s_sci` (
  `sc_id` int(5) NOT NULL AUTO_INCREMENT,
  `scn_name` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `paper` varchar(15) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`sc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `scn_s_sci`
--

INSERT INTO `scn_s_sci` (`sc_id`, `scn_name`, `contact`, `email`, `paper`, `pass`) VALUES
(1, 'www', '1221', 'eeww', 'SST', 'aaa'),
(2, 'ram', '11121', 'gmail', 'SST', 'zzz'),
(3, 'ram', '11121', 'gmail', 'SST', 'ttt'),
(4, 'raj', '44', 'trf', 'SST', '111');

-- --------------------------------------------------------

--
-- Table structure for table `sst_mks`
--

CREATE TABLE IF NOT EXISTS `sst_mks` (
  `id` int(11) NOT NULL,
  `e_id` int(11) NOT NULL,
  `e_nm` varchar(20) NOT NULL,
  `sub` varchar(20) NOT NULL,
  `sch_name` varchar(20) NOT NULL,
  `roll` int(11) NOT NULL,
  `mks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sst_mks`
--

INSERT INTO `sst_mks` (`id`, `e_id`, `e_nm`, `sub`, `sch_name`, `roll`, `mks`) VALUES
(0, 31, 'kanchan', 'SST', '4', 6, 10),
(0, 31, 'kanchan', 'SST', '1', 2, 26);

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE IF NOT EXISTS `student_info` (
  `sch_code` int(10) NOT NULL,
  `stu_code` int(11) NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(30) NOT NULL,
  `roll_no` int(20) NOT NULL,
  `dob` varchar(30) NOT NULL,
  `eng` int(3) NOT NULL,
  `hin` int(3) NOT NULL,
  `math` int(3) NOT NULL,
  `sci` int(3) NOT NULL,
  `s_sci` int(3) NOT NULL,
  PRIMARY KEY (`stu_code`),
  UNIQUE KEY `roll_no` (`roll_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`sch_code`, `stu_code`, `stu_name`, `roll_no`, `dob`, `eng`, `hin`, `math`, `sci`, `s_sci`) VALUES
(106, 44, 'raj', 100, '2004-07-07', 4, 5, 6, 7, 8);

-- --------------------------------------------------------

--
-- Table structure for table `stu_info`
--

CREATE TABLE IF NOT EXISTS `stu_info` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `sub` varchar(11) NOT NULL,
  `sch_name` varchar(30) NOT NULL,
  `sch_id` int(5) NOT NULL,
  `scn_name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `stu_info`
--

INSERT INTO `stu_info` (`id`, `sub`, `sch_name`, `sch_id`, `scn_name`) VALUES
(1, 'Math', 'ccc', 46, 'andy'),
(2, 'English', 'ccc', 46, 'sabu'),
(3, 'Science', 'ccc', 46, 'kanchan'),
(4, 'Science', 'hero', 47, 'kanchan'),
(5, 'Hindi', 'ccc', 46, 'ram'),
(6, 'English', 'ccc', 46, 'sabu'),
(7, 'English', 'hero', 47, 'sabu'),
(8, 'Math', 'ccc', 46, 'AAA'),
(9, 'Math', 'ccc', 46, 'AAA'),
(10, 'Math', 'ccc', 46, 'AAA'),
(11, 'Math', 'ccc', 46, 'AAA'),
(12, 'SST', 'ccc', 46, 'www'),
(13, 'Math', 'ccc', 46, 'ttt'),
(14, 'Math', 'ccc', 46, 'ttt'),
(15, 'Math', 'swraswati', 105, 'pratap'),
(16, 'Math', 'kv', 106, 'pratap'),
(17, 'Math', 'kv', 106, 'pratap'),
(18, 'Math', 'kv', 106, 'pratap'),
(19, 'Math', 'kv', 106, 'pratap'),
(20, 'Math', 'kv', 106, 'pratap'),
(21, 'Math', 'kv', 106, 'pratap'),
(22, 'Math', 'kv', 106, 'pratap'),
(23, 'Math', 'kv', 106, 'pratap'),
(24, 'Math', 'abc', 104, 'sabu'),
(25, 'English', 'abc', 104, 'pratap');

-- --------------------------------------------------------

--
-- Table structure for table `tenp`
--

CREATE TABLE IF NOT EXISTS `tenp` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sub` varchar(20) NOT NULL,
  `sc` int(10) NOT NULL,
  `roll` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `upload_data`
--

CREATE TABLE IF NOT EXISTS `upload_data` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FILE_NAME` varchar(200) NOT NULL,
  `FILE_SIZE` varchar(200) NOT NULL,
  `FILE_TYPE` varchar(200) NOT NULL,
  `SUB` varchar(11) NOT NULL,
  `SCH_NAME` varchar(30) NOT NULL,
  `SCH_ID` int(11) NOT NULL,
  `STU_NAME` varchar(30) NOT NULL,
  `ROLL` int(11) NOT NULL,
  `LOC` varchar(100) NOT NULL,
  `SCN_NAME` varchar(40) NOT NULL,
  `ev_id` int(5) NOT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `FILE_NAME` (`FILE_NAME`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=367 ;

--
-- Dumping data for table `upload_data`
--

INSERT INTO `upload_data` (`USER_ID`, `FILE_NAME`, `FILE_SIZE`, `FILE_TYPE`, `SUB`, `SCH_NAME`, `SCH_ID`, `STU_NAME`, `ROLL`, `LOC`, `SCN_NAME`, `ev_id`) VALUES
(319, '0Scan.jpg', '670855', 'image/jpeg', 'Math', 'abc', 104, 'rati', 1, 'Math/104/1/0Scan.jpg', 'sabu', 0),
(321, '1Scan.jpg9.jpg', '653421', 'image/jpeg', 'Math', 'abc', 104, 'rati', 1, 'Math/104/1/1Scan.jpg9.jpg', 'sabu', 0),
(323, '0Scan.jpg4.jpg', '568994', 'image/jpeg', 'Math', 'abc', 104, 'uma', 22, 'Math/104/22/0Scan.jpg4.jpg', 'sabu', 0),
(325, '1Scan.jpg12.jpg', '573162', 'image/jpeg', 'Math', 'abc', 104, 'uma', 22, 'Math/104/22/1Scan.jpg12.jpg', 'sabu', 0),
(327, '0Scan.jpg5.jpg', '599980', 'image/jpeg', 'Math', 'abc', 104, 'shiva', 3, 'Math/104/3/0Scan.jpg5.jpg', 'sabu', 0),
(329, '1Scan.jpg6.jpg', '557757', 'image/jpeg', 'Math', 'abc', 104, 'shiva', 3, 'Math/104/3/1Scan.jpg6.jpg', 'sabu', 0),
(331, '2Scan.jpg13.jpg', '569470', 'image/jpeg', 'Math', 'abc', 104, 'shiva', 3, 'Math/104/3/2Scan.jpg13.jpg', 'sabu', 0),
(333, '3Scan.jpg14.jpg', '587635', 'image/jpeg', 'Math', 'abc', 104, 'shiva', 3, 'Math/104/3/3Scan.jpg14.jpg', 'sabu', 0),
(335, '0Scan.jpg6.jpg', '557757', 'image/jpeg', 'Math', 'abc', 104, 'sashi', 4, 'Math/104/4/0Scan.jpg6.jpg', 'sabu', 0),
(337, '1Scan.jpg7.jpg', '609672', 'image/jpeg', 'Math', 'abc', 104, 'sashi', 4, 'Math/104/4/1Scan.jpg7.jpg', 'sabu', 0),
(339, '2Scan.jpg14.jpg', '587635', 'image/jpeg', 'Math', 'abc', 104, 'sashi', 4, 'Math/104/4/2Scan.jpg14.jpg', 'sabu', 0),
(341, '3Scan.jpg15.jpg', '592168', 'image/jpeg', 'Math', 'abc', 104, 'sashi', 4, 'Math/104/4/3Scan.jpg15.jpg', 'sabu', 0),
(343, '0Scan.jpg15.jpg', '592168', 'image/jpeg', 'Math', 'abc', 104, 'rohit', 6, 'Math/104/6/0Scan.jpg15.jpg', 'sabu', 0),
(344, '0Scan.jpg3.jpg', '579019', 'image/jpeg', 'English', 'abc', 104, 'ravi', 1188, 'English/104/1188/0Scan.jpg3.jpg', 'pratap', 0),
(346, '1Scan.jpg4.jpg', '568994', 'image/jpeg', 'English', 'abc', 104, 'ravi', 1188, 'English/104/1188/1Scan.jpg4.jpg', 'pratap', 0),
(348, '2Scan.jpg5.jpg', '599980', 'image/jpeg', 'English', 'abc', 104, 'ravi', 1188, 'English/104/1188/2Scan.jpg5.jpg', 'pratap', 0),
(350, '3Scan.jpg11.jpg', '561446', 'image/jpeg', 'English', 'abc', 104, 'ravi', 1188, 'English/104/1188/3Scan.jpg11.jpg', 'pratap', 0),
(352, '4Scan.jpg12.jpg', '573162', 'image/jpeg', 'English', 'abc', 104, 'ravi', 1188, 'English/104/1188/4Scan.jpg12.jpg', 'pratap', 0),
(354, '5Scan.jpg13.jpg', '569470', 'image/jpeg', 'English', 'abc', 104, 'ravi', 1188, 'English/104/1188/5Scan.jpg13.jpg', 'pratap', 0),
(358, '1Scan.jpg2.jpg', '563562', 'image/jpeg', 'English', 'abc', 104, 'aa', 99, 'English/104/99/1Scan.jpg2.jpg', 'pratap', 0),
(360, '2Scan.jpg3.jpg', '579019', 'image/jpeg', 'English', 'abc', 104, 'aa', 99, 'English/104/99/2Scan.jpg3.jpg', 'pratap', 0),
(362, '3Scan.jpg9.jpg', '653421', 'image/jpeg', 'English', 'abc', 104, 'aa', 99, 'English/104/99/3Scan.jpg9.jpg', 'pratap', 0),
(364, '4Scan.jpg10.jpg', '509826', 'image/jpeg', 'English', 'abc', 104, 'aa', 99, 'English/104/99/4Scan.jpg10.jpg', 'pratap', 0),
(366, '5Scan.jpg11.jpg', '561446', 'image/jpeg', 'English', 'abc', 104, 'aa', 99, 'English/104/99/5Scan.jpg11.jpg', 'pratap', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
