-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 18, 2014 at 01:21 PM
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
-- Table structure for table `complaint`
--

CREATE TABLE IF NOT EXISTS `complaint` (
  `registration_no` mediumint(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `address` varchar(60) NOT NULL,
  `block` varchar(12) NOT NULL,
  `house_no` int(11) NOT NULL,
  `mobile_no` int(20) NOT NULL,
  `email` varchar(80) NOT NULL,
  `department` varchar(12) NOT NULL,
  `action_timing` varchar(14) NOT NULL,
  `complain` text NOT NULL,
  `complain_no` bigint(100) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(30) NOT NULL,
  `emp_name` varchar(30) NOT NULL,
  `create_date` date NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`complain_no`),
  UNIQUE KEY `registration_no` (`registration_no`),
  UNIQUE KEY `registration_no_2` (`registration_no`),
  UNIQUE KEY `registration_no_3` (`registration_no`),
  UNIQUE KEY `registration_no_4` (`registration_no`),
  UNIQUE KEY `registration_no_5` (`registration_no`),
  UNIQUE KEY `registration_no_6` (`registration_no`),
  UNIQUE KEY `registration_no_9` (`registration_no`),
  KEY `registration_no_7` (`registration_no`),
  KEY `registration_no_8` (`registration_no`),
  KEY `registration_no_10` (`registration_no`),
  KEY `registration_no_11` (`registration_no`),
  KEY `registration_no_12` (`registration_no`),
  KEY `registration_no_13` (`registration_no`),
  KEY `registration_no_14` (`registration_no`),
  KEY `registration_no_15` (`registration_no`),
  KEY `registration_no_16` (`registration_no`),
  KEY `registration_no_17` (`registration_no`),
  KEY `registration_no_18` (`registration_no`),
  KEY `registration_no_19` (`registration_no`),
  KEY `registration_no_20` (`registration_no`),
  KEY `registration_no_21` (`registration_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1000119 ;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`registration_no`, `name`, `date`, `address`, `block`, `house_no`, `mobile_no`, `email`, `department`, `action_timing`, `complain`, `complain_no`, `emp_id`, `emp_name`, `create_date`, `status`) VALUES
(109, 'NEHA SINGH', '2014-04-23', 'jharia', 'A', 2, 2147483647, 'beauty@gmail.com', 'WATER', 'EVENING', 'water supply not come timely', 1000101, 'WA101', 'SANJAY', '0000-00-00', 'close'),
(108, 'Nisha SINGH', '2014-04-23', 'jharia', 'A', 2, 2147483647, 'beauty@gmail.com', 'WATER', 'EVENING', 'water supply not come timely', 1000102, 'WA101', 'SANJAY', '0000-00-00', ''),
(105, 'PRIYA KUMARI', '2014-04-18', 'jharia', 'A', 2, 2147483647, 'beauty@gmail.com', 'WATER', 'EVENING', 'cleaning not done timely', 1000103, 'WA104', 'NITESH', '2014-06-02', ''),
(116, 'PRIYANKA KUMARI', '2014-05-08', 'BHAGATDIH BEHIND OF VIKASH BHAWAN', 'A', 43, 2147483647, 'beauty@gmail.com', 'WATER', 'MORNING', 'WATER PIPE IS LINKING ', 1000104, 'WA104', 'NITESH', '2014-06-05', ''),
(104, 'beauty', '2014-05-23', 'jharia', 'A', 1, 2147483647, 'beauty@gmail.com', 'WATER', 'MORNING', 'water supply not come timely', 1000105, 'WA101', 'SANJAY', '0000-00-00', ''),
(111, 'PRIYANKA KUMARI', '2014-05-23', 'BHAGATDIH BEHIND OF VIKASH BHAWAN', 'A', 2, 2147483647, 'beauty@gmail.com', 'WATER', 'MORNING', 'water supply not come timely', 1000106, 'WA105', 'RAHUL', '2014-06-12', 'close'),
(102, 'kukum', '2014-06-05', 'jharia', 'A', 5, 2147483647, 'be@gmail.com', 'WATER', 'MORNING', 'nkjiji', 1000107, 'WA105', 'RAHUL', '2014-06-12', ''),
(103, 'sunil', '2014-06-26', 'doranda', 'B', 67, 2147483647, 'sunil@gmail.com', 'WATER', 'EVENING', 'not come properly', 1000108, 'WA101', 'SANJAY', '0000-00-00', ''),
(107, 'pooja', '2014-06-06', 'hinoo', 'A', 34, 2147483647, 'pooja@gmail.com', 'WATER', 'on', '  not come timely', 1000111, 'WA106', 'RAJU', '2014-06-06', ''),
(110, 'pooja', '2014-06-06', 'hinoo', 'A', 34, 2147483647, 'pooja@gmail.com', 'WATER', 'on', '  not come', 1000116, 'WA102', 'BRAJESH YADAV', '0000-00-00', ''),
(106, 'fff', '2014-06-19', 'vhghjgj', 'A', 23, 2147483647, 'beauty@gmail.com', 'WATER', '', '  vbngvmhjh', 1000118, 'WA105', 'RAHUL', '2014-06-12', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `EMPLOYEE_NAME` varchar(50) NOT NULL,
  `JOB_REFERENCES` varchar(30) NOT NULL,
  `DEPARTMENT` varchar(30) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `DATE_OF_BIRTH` date NOT NULL,
  `E_MAIL` varchar(30) NOT NULL,
  `password` varchar(90) NOT NULL,
  `PHONE_NO` bigint(80) NOT NULL,
  `no_of_work` int(11) NOT NULL,
  `complain_no` text NOT NULL,
  `complain_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPLOYEE_NAME`, `JOB_REFERENCES`, `DEPARTMENT`, `ADDRESS`, `DATE_OF_BIRTH`, `E_MAIL`, `password`, `PHONE_NO`, `no_of_work`, `complain_no`, `complain_date`) VALUES
('SANJAY', 'WA101', 'WATER', 'JHARIA', '2014-05-23', 'sanjay@gmail.com', 'sanjay', 2147483647, 7, '1000116;', '0000-00-00'),
('DEEPAK', 'CIV301', 'CIVIL', 'MASJID GALI,SHYAMALI,RANCHI,JHARKHAND', '0000-00-00', 'deepak@gmail.com', 'deepak', 2147483647, 0, '', '2014-05-15'),
('BRAJESH YADAV', 'WA102', 'WATER', 'JHARIA', '0000-00-00', 'brajesh@gmail.com', 'brajesh', 9905221367, 5, '1000116;', '0000-00-00'),
('PRAKASH', 'WA103', 'WATER', 'JHAMESHPUR', '2014-05-02', 'prakash@gmail.com', '', 9876987654, 2, '1000102;1000101;', '0000-00-00'),
('NITESH', 'WA104', 'WATER', 'DORANDA', '1990-05-08', 'nitesh@gmail.com', 'nitesh', 7654765489, 4, '1000104;1000103;1000102;', '2014-06-05'),
('GAUTAM', 'ELEC109', 'ELECTRICITY', 'TUPUDANA', '1990-05-01', 'gautam@gmail.com', 'gautam', 8765876543, 0, '', '2014-05-15'),
('NIRAJ', 'CIV105', 'CIVIL', 'BOKARO', '1990-05-08', 'niraj@gmail.com', 'niraj', 7654765432, 0, '', '2014-05-15'),
('RAHUL', 'WA105', 'WATER', 'LALPUR', '1989-05-08', 'rahul@gmail.com', 'rahul', 7654890321, 3, '1000118;', '2014-06-12'),
('RAJU', 'WA106', 'WATER', 'HINOO', '2014-05-01', 'raju@gmail.com', 'raju', 8765876543, 3, '1000111;', '2014-06-06');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `evaluator`
--

INSERT INTO `evaluator` (`ev_id`, `ev_name`, `contact`, `email`, `paper`, `pass`, `id`) VALUES
(1, 'eng', '76', 'ggg', 'English', 'hhh', 43),
(3, 'ram', '1', 'q', 'Hindi', 'r', 19),
(4, 'baatul', '1', 'Baatul@rediffmail.com', 'Hindi', 'mun', 20),
(17, 'box', '12', 'rt', 'Math', 'hhh', 19),
(20, 'bbb', '1', 're', 'English', 'bbb', 51),
(23, 'aaa', '222', 'eee', 'English', 'aaa', 52),
(24, 'ddd', '222', 'ddd', 'Math', 'ddd', 20),
(25, 'subir', '12345', 'www', 'Science', 'subir', 14),
(26, 'ravi', '123', 'bat', 'SST', 'ravi', 31),
(27, 'suraj', '1234', 'batul', 'Science', 'suraj', 15),
(37, 'raj', '2', 'e', 'Hindi', 'r', 25),
(43, 'batul', '1', 'email', 'English', 'b', 57),
(44, 'rahul', '123', 'e', 'Hindi', 'r', 28),
(45, 'rahul', '12', 'ew', 'English', 'r', 58),
(46, 'rahul', '123', 'ew', 'Math', 'r', 25),
(48, 'rahul', '123', 'ewe', 'Science', 'r', 19),
(50, 'rahul', '1234', 'ewe', 'SST', 'r', 35),
(52, 'boy', '12', 'qq', 'Hindi', 'b', 29),
(53, 'boy', '1234', 'qqq', 'Math', 'b', 26),
(54, 'boy', '12345', 'qqqq', 'Science', 'b', 20),
(55, 'boy', '123456', 'qqqqq', 'SST', 'b', 36),
(56, 'ravi', '1234', 'erw', 'English', '12345', 60),
(57, 'roushan', '12345', 'rew', 'English', '123', 61),
(58, 'ravi', '123', 'edf', 'Math', 'aaa', 27),
(60, 'aaa', '2224', 'ree', 'Math', '111', 29),
(61, 'rani', '111111', 'zzaa', 'Hindi', '111', 30),
(62, 'manohar', '123432', 'weqbv', 'Hindi', 'munda', 31),
(64, 'aaa', '1276', 'weews', 'Hindi', 'aq', 32),
(65, 'bbb', '11', 'tesdxd', 'Science', 'zz', 21),
(66, 'www', '45', 'rr', 'English', 'qqq', 62),
(67, 'w', '3213', 'red1', 'English', 'www', 63),
(68, 'w', '3213', 'red11', 'Hindi', 'q', 34),
(69, 'w', '3213', 'red111', 'Math', 'ee', 30),
(70, 'w', '3213', 'red11111', 'Science', 'eee', 22),
(71, 'w', '3213', 'red111111', 'SST', 'eeeee', 37),
(72, 'ravi', '5543', 'rrr', 'Science', 'aaa', 23),
(74, 'kanchan', '98764', 'kk@gh.vb', 'Math', '123', 31),
(75, 'kanchan', '', '', 'English', '', 64),
(76, 'kanchan', '111', 'tttt', 'Math', '555', 32),
(77, 'raj', '4543', 'ytvrd', 'Math', '111', 33);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `evaluator_eng`
--

INSERT INTO `evaluator_eng` (`ev_id`, `ev_name`, `contact`, `email`, `paper`, `pass`, `no_of_work`) VALUES
(1, 'pratap', '9661012727', 'Baatul@rediffmail.com', 'Math', 'baatul', 0),
(4, 'kanchan', '9308656390', 'kanchan@gmail,com', 'English', '123', 0),
(5, 'pandey', '343', 'rerrr', 'English', 'sanjay', 0),
(6, 's.pandey', '34334', 'rerrr', 'English', 'eee', 0),
(16, 'kanchan kumari', '35', 'fffff', 'English', 'bbb', 0),
(17, 'rohit kumar', '3443', 'fffff', 'English', 'bbb', 0),
(21, 'ggg', '554', 'grt', 'English', 'vvv', 0),
(24, 'ravi', '12345', 'avi@gmail.com', 'English', 'bbb', 0),
(25, 'ravi kumar', '1234567', 'ravi@gmail.com', 'English', 'zzz', 0),
(28, 'rohan', '222', 'gfr', 'English', 'vvv', 0),
(29, 'rony', '999', 'kkk', 'English', 'mmm', 0),
(30, 'micky', '777', 'nn', 'English', 'zzz', 0),
(31, 'ranjeet', '111', 'mmm', 'English', 'vvv', 0),
(32, 'HER', '45', 'FF', 'English', 'NNN', 0),
(56, 'raju', '2', 'e', 'English', 'r', 0),
(57, 'batul', '1', 'email', 'English', 'b', 0),
(58, 'rahul', '12', 'ew', 'English', 'r', 0),
(59, 'boy', '1', 'q', 'English', 'b', 0),
(60, 'ravi', '1234', 'erw', 'English', '12345', 0),
(61, 'roushan', '12345', 'rew', 'English', '123', 0),
(62, 'www', '45', 'rr', 'English', 'qqq', 0),
(63, 'w', '3213', 'red1', 'English', 'www', 0),
(64, 'kanchan', '', '', 'English', '', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `evaluator_hin`
--

INSERT INTO `evaluator_hin` (`ev_id`, `ev_name`, `contact`, `email`, `paper`, `pass`) VALUES
(3, 'pratap', '9661012727', 'Baatul@rediffmail.com', 'Math', 'baatul'),
(4, 'ddd', '123', 'dffvdw', 'Hindi', 'ggg'),
(5, 'ggg', '765', 'ggff', 'Hindi', 'vvv'),
(7, 'jhk', '7655', 'ggff', 'Hindi', 'qqq'),
(8, 'rohit kumar', '3443', 'fffff', 'Hindi', 'vvv'),
(9, 'shankarsingh', '8888', 'abanaj', 'Hindi', 'asd'),
(10, 'ravi kumar', '1234567', 'ravi@gmail.com', 'Hindi', 'hhh'),
(11, 'rohan kumar', '222', 'gfr', 'Hindi', 'mmm'),
(12, 'sanjay', '123', 'gt', 'Hindi', 'pandey'),
(13, 'ranjeet', '222', 'kkk', 'Hindi', 'mmm'),
(14, 'HER', '46', 'FF', 'Hindi', 'KKK'),
(15, 'you ', '234', 'trt', 'Hindi', 'uuu'),
(16, 'joney', '456', 'rtt', 'Hindi', 'hhh'),
(17, 'mohanty', '44', 'jha', 'Hindi', 'ggg'),
(18, 'sabu', '11', 'ee', 'Hindi', 'ee'),
(19, 'ram', '1', 'q', 'Hindi', 'r'),
(20, 'baatul', '1', 'Baatul@rediffmail.com', 'Hindi', 'mun'),
(21, 'hhh', '234', '65', 'Hindi', 'yyy'),
(22, 'ccc', '1', 're', 'Hindi', 'ccc'),
(23, 'sanjay', '123456', 'gmail.com', 'Hindi', 'sanjay'),
(24, 'rahul', '123', 'frt', 'Hindi', '123'),
(25, 'raj', '2', 'e', 'Hindi', 'r'),
(27, 'batul', '1', 'email', 'Hindi', 'b'),
(28, 'rahul', '123', 'e', 'Hindi', 'r'),
(29, 'boy', '12', 'qq', 'Hindi', 'b'),
(30, 'rani', '111111', 'zzaa', 'Hindi', '111'),
(31, 'manohar', '123432', 'weqbv', 'Hindi', 'munda'),
(32, 'aaa', '1276', 'weews', 'Hindi', 'aq'),
(33, 'rr', '4', 'rt5', 'Hindi', 'uu'),
(34, 'w', '3213', 'red11', 'Hindi', 'q');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `evaluator_math`
--

INSERT INTO `evaluator_math` (`ev_id`, `ev_name`, `contact`, `email`, `paper`, `pass`) VALUES
(3, 'pratap', '9661012727', 'Baatul@rediffmail.com', 'Math', 'baatul'),
(4, 'sahadev', '8603347874', 'sahadevmahato@gmail,com', 'Math', '000'),
(5, 'kanchan kumari', '876567899', 'kanchank@gmail.com', 'Math', '12'),
(6, 'shankar', '8888', 'abanaj', 'Math', 'ram123'),
(7, 'batul', '9661012727', 'gft', 'Math', 'sen'),
(8, 'ranjeet', '333', 'kkk', 'Math', 'mmm'),
(9, 'hero1', '1', 'ER', 'Math', '222'),
(10, 'HER', '47', 'FF', 'Math', 'KKKK'),
(11, 'Hari OM hari', '53', 'DDD', 'Math', 'hhh'),
(12, 'gt', '1', 'road', 'Math', 'ttt'),
(13, 'you', '34g6', 'trt', 'Math', 'yyy'),
(14, 'ray', '23', 'ert', 'Math', '234'),
(15, 'mohanty', '444', 'jha', 'Math', 'qqq'),
(16, 'sabu', '111', 'eee', 'Math', 'eee'),
(17, 'baatul', '1', 'Baatul@rediffmail.com', 'Math', 'munmun'),
(18, 'ggg', '56', 'tt', 'Math', 'iii'),
(19, 'box', '12', 'rt', 'Math', 'hhh'),
(20, 'ddd', '222', 'ddd', 'Math', 'ddd'),
(21, 'sumit', '12345', 'batul@gmail.com', 'Math', 'sumit'),
(22, 'swati', '20', 'rt', 'Math', '123'),
(23, 'raju', '2', 'e', 'Math', 'r'),
(24, 'batul', '1', 'email', 'Math', 'b'),
(25, 'rahul', '123', 'ew', 'Math', 'r'),
(26, 'boy', '1234', 'qqq', 'Math', 'b'),
(27, 'ravi', '123', 'edf', 'Math', 'aaa'),
(28, 'ddd', '123', 'ewe', 'Math', 'qqq'),
(29, 'aaa', '2224', 'ree', 'Math', '111'),
(30, 'w', '3213', 'red111', 'Math', 'ee'),
(31, 'kanchan', '98764', 'kk@gh.vb', 'Math', '123'),
(32, 'kanchan', '111', 'tttt', 'Math', '555'),
(33, 'raj', '4543', 'ytvrd', 'Math', '111');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `evaluator_sci`
--

INSERT INTO `evaluator_sci` (`ev_id`, `ev_name`, `contact`, `email`, `paper`, `pass`) VALUES
(2, 'ranjeet', '444', 'kkkk', 'Science', 'mmmm'),
(3, 'hero1', '1', 'ER', 'Science', 'MMM'),
(4, 'HER', '48', 'FF', 'Science', 'BBB'),
(5, 'HER', '50', 'FF', 'Science', 'JJJ'),
(6, 'myy', '34g6', 'trt', 'Science', 'ree'),
(8, 'vvv', '345', 'ttr', 'Science', 'rty'),
(9, 'www', '3451', 'ttr', 'Science', 'com'),
(10, 'mohanty', '4444', 'jha', 'Science', 'ccc'),
(11, 'sabu', '1111', 'eeee', 'Science', 'eeeee'),
(12, 'baatul', '1', 'Baatul@rediffmail.com', 'Science', 'mun'),
(13, 'kkk', '56', 'tt', 'Science', 'lll'),
(14, 'subir', '12345', 'www', 'Science', 'subir'),
(15, 'suraj', '1234', 'batul', 'Science', 'suraj'),
(16, 'raju', '2', 'e', 'Science', 'r'),
(17, 'batul', '1', 'email', 'Science', 'b'),
(18, 'rahul', '123', 'ew', 'Science', 'r'),
(19, 'rahul', '123', 'ewe', 'Science', 'r'),
(20, 'boy', '12345', 'qqqq', 'Science', 'b'),
(21, 'bbb', '11', 'tesdxd', 'Science', 'zz'),
(22, 'w', '3213', 'red11111', 'Science', 'eee'),
(23, 'ravi', '5543', 'rrr', 'Science', 'aaa');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `evaluator_s_sci`
--

INSERT INTO `evaluator_s_sci` (`ev_id`, `ev_name`, `contact`, `email`, `paper`, `pass`) VALUES
(3, 'pratap', '9661012727', 'Baatul@rediffmail.com', 'Math', 'baatul'),
(4, 'ranjeet', '555', 'kkkkk', 'Social_Science', 'mmmmm'),
(5, 'ranjeet', '555555555', 'mmmmmm', 'Social_Science', 'nnn'),
(6, 'honey', '23', 'singh', 'Social_Science', 'ggg'),
(7, 'hero1', '1', 'ER', 'Social_Science', 'WWW'),
(8, 'HER', '49', 'FF', 'Social_Science', 'BBB'),
(9, 'HER', '50', 'FF', 'Social_Science', 'JJJ'),
(10, 'HER', '51', 'FFF', 'Social_Science', 'BBB'),
(11, 'HERI OM', '52', 'DDD', 'Social_Science', 'KKK'),
(12, 'Hari OM hari', '53', 'DDD', 'Social_Science', 'fff'),
(13, 're', '12', 'tr', 'Social_Science', 'ttt'),
(14, 'reo', '124', 'try', 'Social_Science', 'g'),
(15, 'heriya', '999555', 'jh', 'Social_Science', 'ttt'),
(16, 'ttt', '45', 'hy', 'Social_Science', 'hhh'),
(17, 'myy', '34g6', 'trt', 'Social_Science', 'gtr'),
(18, 'ray', '23', 'ert', 'Social_science', '123'),
(19, 'sdd', '123', 'ds', 'Socialscience', 'dss'),
(22, 'wwww', '123', 'ttr', 'Social_Science', 'bbb'),
(23, 'honda', '1234', 'gtmail', 'Social_Science', 'qqq'),
(24, 'mohanty', '44444', 'jha', 'Social_Science', 'sss'),
(25, 'sabu', '11111', 'eeeee', 'Social_Science', 'eeeee'),
(27, 's2', '22', 'ee', 'Social_Science', 'rrr'),
(28, 'ss', '23', 're', 'SST', 'ee'),
(29, 'baatul', '1', 'Baatul@rediffmail.com', 'SST', 'mun'),
(30, 'mmm', '44', 're', 'SST', 'aaa'),
(31, 'ravi', '123', 'bat', 'SST', 'ravi'),
(32, 'raju', '2', 'e', 'SST', 'r'),
(33, 'batul', '1', 'email', 'SST', 'b'),
(34, 'rahul', '123', 'ewe', 'SST', 'r'),
(35, 'rahul', '1234', 'ewe', 'SST', 'r'),
(36, 'boy', '123456', 'qqqqq', 'SST', 'b'),
(37, 'w', '3213', 'red111111', 'SST', 'eeeee');

-- --------------------------------------------------------

--
-- Table structure for table `eve_info`
--

CREATE TABLE IF NOT EXISTS `eve_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paper` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=158 ;

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
(157, 'Math');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

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
(77, 104);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

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
(45, 30, 'w', 'Math');

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
(0, 31, 'kanchan', 'Math', '56', 33, 26);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

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
(23, 'ttt', '123', 'tyt', 'Math', '1', 5);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=105 ;

--
-- Dumping data for table `school_regis`
--

INSERT INTO `school_regis` (`reg_code`, `sch_name`, `reg_no`, `con_no`, `e_mail`, `str_1`, `str_2`, `city`, `dist`, `state`, `pin`, `pas`) VALUES
(23, 'ram', 90, 76, 'gt@', 'ki', 'h', 'cv', 'nb', 'hn', 78, 'ram'),
(24, 'joy', 76, 98, 'wa@', 'tr', 'y', 'li', 'yf', 'hy', 67, 'joy'),
(25, 'hero', 123, 56, 'gr', 'QR E-67/2', 'EAST COLONY', 'CKP', 'west singhbhum', 'jharkhand', 9865, 'www'),
(26, 'wwwwww', 0, 3456, 'kfj', 'ku', 'hgt', 'fgd', 'fdg', 'sdh', 6766, 'oooo'),
(27, 'yuuuu', 0, 908, 'sewr', 'kuikuc', 'vc', 'fdrd', 'dfef', 'hgfh', 111111, 'mmmmmmmmmmm'),
(28, 'ku', 0, 456, 'ihy', 'wqse', 'hgt', 'l', '', 'jh', 987, 'kkk'),
(29, 'ku', 0, 456, 'ihykk', 'wqse', 'hgt', 'l', 'g', 'jh', 987, 'jjjj'),
(30, 'hhhhh1111111', 0, 45665, 'ihykkggggggggggg', 'wqqqqqse', 'aaaahgt', 'sbbbbl', 'gnjhgg', 'JHK', 987, 'pppp'),
(31, 'SST', 0, 334343, 'ABCD@GMAIL.COM', 'deoghar', 'deo', 'deoghar', 'jh', 'jharkha', 12345, 'shankar'),
(33, 'SST', 0, 334343, 'ABC@GMAIL.COM', 'deoghar', 'deo', 'deoghar', 'jh', 'jharkha', 12345, 'asd'),
(34, 'sanjay', 123, 568, 'sanjay@gmail.com', 'dd', 'hh', 'er', 'tr', 'hj', 45, 'sanjay'),
(35, 'sanjay22', 123, 568, 'sanjay@gmai1l.com', 'dd', 'hh', 'er', 'tr', 'hj', 45, 'qqq'),
(36, 'sanjay22', 123, 568, 'sanjaooy@gmai1l.com', 'dd', 'hh', 'er', 'tr', 'hj', 45, 'oooo'),
(37, 'gg', 65, 87, 'hyg', 'ghf', 'jhg', 'hj', 'jh', 'hj', 456, 'yyy'),
(38, 'www', 0, 77, 'li', 'hjg', 'jh', 'jh', 'hj', 'k', 98, 'uuu'),
(43, 'shanka singh', 8, 77, 'liui', 'hjg', 'jh', 'jh', 'hj', 'k', 98, 'iii'),
(44, 'abc', 45, 456, 'tata', 'saf', 'fkjh', 'kjfh', 'fvkjf', 'jasj', 46, 'yyy'),
(45, 'bbb', 45, 54, 'yt', 'k', 't', 'c', 'h', 'y', 78, 'mmm'),
(46, 'ccc', 34, 777, 'uy', 'kl', 'u', 'k', 'oi', 'yu', 888855, 'vvv'),
(47, 'hero', 56, 76, 'dwmymail.com', 'grr', 'e', 'h', 'h', 'mh', 4, '123'),
(48, 'myhero', 56, 76, 'mymail.com', 'grr', 'e', 'h', 'h', 'mh', 4, '12345'),
(49, 'heman', 76, 9, 'hgt', 'dff', 'gf', 'gf', 'h', 'jh', 122, 'hitman'),
(52, 'south high school', 12, 34, 'ht', 'd', 'g', 'h', 'j', 'k', 87, 'south'),
(53, 'high', 4, 6, 'yty', 'rf', 'h', 'f', 'gf', 'gfg', 777, 'high'),
(54, 'high school', 4, 6, 'ytyuu', 'rf', 'h', 'f', 'gf', 'gfg', 77, 'hs'),
(55, 'my school', 45, 63, 'ytyuuii', 'rf', 'h', 'f', 'gf', 'gfg', 7777, 'my'),
(56, 'home', 21, 44, 'gfgg', 'fdtr', 'ff', 'fref', 'g', 'fd', 33, 'home'),
(57, 'dav', 123, 987698654, 'dav@gmail.com', 'jharia', 'bhagatdih', 'dhanbad', 'bhanbad', 'jharkhand', 828111, 'abc'),
(58, 'dav biva', 123456, 33333, 'bivaa@gmai.com', 'qwer', 'ewwew', 'ranchi', 'ranchi', 'jhk', 834001, 'biva'),
(59, 'GT', 123, 45, 'ytf', 'we', 'fd', 'fdf', 'fds', 'df', 23, 'gt'),
(60, 'snatosh', 12345, 99999, 'santosh@gmail.com', 'qw', 'ewe', 'ranchi', 'ranchi', 'jharkhand', 8754433, 'toppo'),
(61, 'dav biva', 12345, 55555, 'biva@gmai.com', 'qwer', 'ewwew', 'ranchi', 'ranchi', 'jhk', 834001, 'biva'),
(62, 'rose', 12345, 222, 're@gmai.com', 'qwer', 'ewwew', 'ranchi', 'ranchi', 'jhk', 834001, '123'),
(63, 'red', 1, 123, 'ew', 'rt', 'tre', 'ggg', 'ddd', 'sss', 666, 'red'),
(64, 'sanjay', 1230, 23444, 'rrr', 're', 're', 'gr', 'ddd', 'gff', 223, 'pandey'),
(65, 'qqq', 123, 876, 'fdf', 'df', 'vdf', 'cds', 'cc', 'fdsfd', 232, 'aaa'),
(66, 'sabu', 122, 123431, 'ewsaq', 'qwa', 're', 'erwer', 'rerere', 'df', 12, '11'),
(67, 'sabu1', 122, 1234, 'e', 'qwa', 're', 'erwer', 'rerere', 'df', 12, '22'),
(68, 'aaa', 222, 5432, 'nyg', 'oiu', 'gj', 'fd', 'fe', 'fdg', 21, 'aa'),
(69, 'hhhh', 2345, 654, 'ttttdsfs', 'vfdfd', 'dsds', 'dsfd', 'cvx', 'df', 3211, '111'),
(70, 'xxxx', 1165, 3232, 'tee4', '224', 'ewe`gh', 'bvbb', 'bbb', 'fgdgf', 7863, 'zzz'),
(71, 'RAM', 11, 1233, 'WE@GMAIL.COM', 'Q', 'W', 'E', 'R', 'T', 43555, ''),
(77, 'batul', 54113333, 326643777, 'rrggtt', 'tt33', 'tt44', 'tt55', '66tt66', 'tt77', 1188, ''),
(78, '55sonu', 5555, 553009, '55qw2', '55ss', '55dd', '55dd', '55gg', '55hh', 5511, '55rrraaa'),
(79, 'sonu1', 5112, 30091, 'q5w21', 'ss1', 'dd1', 'dd1', 'gg1', 'hh1', 11, '5551'),
(80, '111pratap', 11113341, 13309, 'r1eenn', '1dfh', '1fhd', '1jhhfh', '1jhdh', '1hjhf', 2211144, '88'),
(81, '22pratap', 322341, 223309, 'yt2reenn', '22dfh', '22fhd', '22jhhfh', '22jhdh', '22hjhf', 22111, '22255'),
(101, 'S.E. mixed high school', 10023, 2147483647, 'high_se@gmail.com', 'road no 5', 'east colony', 'chakradaherpur', 'west singhbhum', 'jharkhand', 833102, 'udontknow!!'),
(102, 'Mahatma Gandhi mixed high school', 12203, 2147483647, 'mg_high@gmail.com', 'road no 6', 'east colony', 'jamshedpur', 'east singhbhum', 'jharkhand', 832104, 'password'),
(103, 'pratap', 3321, 32143, 'regid', 'qwq', 'fffdf', 'gfffd', 'dfffdffffff', 'fffdfdf', 833011, 'sen'),
(104, 'abc', 444, 11661, 'eee', 'ffdsfds', 'jj', 'j', 'dfdj', 'fffdfdf', 123445, 'www');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `scn_eng`
--

INSERT INTO `scn_eng` (`sc_id`, `scn_name`, `contact`, `email`, `paper`, `pass`) VALUES
(1, 'samrat', '9998887776', 'sswq', 'English', 'aaa'),
(2, 'samrat111', '9998884445', 'tre', 'English', 'sss'),
(3, 'pratap', '1234567890', 'xz', 'English', 'sen'),
(4, 'sabu', '123', 'tue', 'English', 'aaa');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `scn_hin`
--

INSERT INTO `scn_hin` (`sc_id`, `scn_name`, `contact`, `email`, `paper`, `pass`) VALUES
(1, 'sabu', '5', 'gr', 'Hindi', 'qq'),
(2, 'ram', '56', 'iiuhuh', 'Hindi', '11'),
(3, 'rrr', '555', 'uyt', 'Hindi', 'rrr');

-- --------------------------------------------------------

--
-- Table structure for table `scn_info`
--

CREATE TABLE IF NOT EXISTS `scn_info` (
  `scn_id` int(5) NOT NULL AUTO_INCREMENT,
  `paper` varchar(11) NOT NULL,
  PRIMARY KEY (`scn_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

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
(16, 'Math');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

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
(14, 'ttt', 5, 'Math');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `scn_math`
--

INSERT INTO `scn_math` (`sc_id`, `scn_name`, `contact`, `email`, `paper`, `pass`) VALUES
(1, 'sabu', '4', 'trt', 'Math', 'bb'),
(2, 'sabu', '43', 're', 'Math', 'hh'),
(3, 'andy', '09', 'vc', 'Math', 'zz'),
(4, 'AAA', '4555', 'OOuyt', 'Math', 'aaa'),
(5, 'ttt', '123', 'tyt', 'Math', '1');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `scn_sci`
--

INSERT INTO `scn_sci` (`sc_id`, `scn_name`, `contact`, `email`, `paper`, `pass`) VALUES
(1, 'ravi', '1', 'wq2', 'Science', 'xx'),
(2, 'santosh', '120', 'ewq', 'Science', 'aaa'),
(3, 'kanchan', '999', 'weqsrf@yrers', 'Science', '123');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `scn_s_sci`
--

INSERT INTO `scn_s_sci` (`sc_id`, `scn_name`, `contact`, `email`, `paper`, `pass`) VALUES
(1, 'www', '1221', 'eeww', 'SST', 'aaa');

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
  PRIMARY KEY (`stu_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`sch_code`, `stu_code`, `stu_name`, `roll_no`, `dob`, `eng`, `hin`, `math`, `sci`, `s_sci`) VALUES
(44, 16, 'bbb', 34, '', 0, 0, 0, 0, 0),
(44, 17, 'hhh', 45, '', 80, 90, 100, 87, 85),
(24, 18, 'joy', 5, '1998-06-06', 4, 56, 66, 43, 65),
(46, 19, 'my', 3, '1997-02-03', 12, 23, 32, 43, 56),
(56, 20, 'rony', 33, '1998-02-04', 43, 32, 23, 43, 54),
(46, 28, 'ROHAN', 18, '1996-03-06', 65, 23, 42, 12, 23),
(46, 29, 'MAHANTY', 19, '1993-05-03', 23, 44, 54, 67, 32),
(46, 30, 'santosh', 20, '1993-03-04', 40, 43, 33, 56, 21),
(25, 31, 'may', 12, '1998-02-03', 12, 7, 6, 43, 34),
(25, 32, 'lobo', 13, '1997-01-02', 23, 23, 21, 24, 24),
(25, 33, 'shyam', 14, '1996-02-22', 23, 32, 43, 23, 23),
(46, 34, 'pratap kumar', 25, '2-3-1996', 23, 65, 44, 33, 43),
(58, 35, 'subi', 1, '1998-02-03', 30, 22, 33, 23, 25),
(46, 36, 'ram ', 100, '1994-02-03', 50, 20, 50, 40, 50),
(65, 37, 'asd', 1, '2014-06-12', 10, 4, 6, 8, 5),
(69, 38, 'eee', 1, '2014-06-27', 5, 7, 5, 6, 8),
(46, 39, 'abc', 123488, '2014-06-11', 7, 6, 3, 4, 6),
(103, 40, 'sam', 11211, '2014-07-01', 1, 2, 3, 4, 5),
(104, 41, 'fff', 2321, '2014-07-16', 5, 5, 4, 6, 9);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

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
(14, 'Math', 'ccc', 46, 'ttt');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=111 ;

--
-- Dumping data for table `upload_data`
--

INSERT INTO `upload_data` (`USER_ID`, `FILE_NAME`, `FILE_SIZE`, `FILE_TYPE`, `SUB`, `SCH_NAME`, `SCH_ID`, `STU_NAME`, `ROLL`, `LOC`, `SCN_NAME`, `ev_id`) VALUES
(57, '0', '0', '', 'English', 'hero', 47, 'pratap', 46, 'English/47/46/0', 'sabu', 0),
(59, '0Jellyfish.jpg', '775702', 'image/jpeg', 'English', 'hero', 47, 'pratap', 46, 'English/47/46/0Jellyfish.jpg', 'sabu', 0),
(61, '1Koala.jpg', '780831', 'image/jpeg', 'English', 'hero', 47, 'pratap', 46, 'English/47/46/1Koala.jpg', 'sabu', 0),
(63, '2Lighthouse.jpg', '561276', 'image/jpeg', 'English', 'hero', 47, 'pratap', 46, 'English/47/46/2Lighthouse.jpg', 'sabu', 0),
(65, '0Desert.jpg', '845941', 'image/jpeg', 'English', 'hero', 47, 'ee', 33, 'English/47/33/0Desert.jpg', 'sabu', 0),
(66, '0Hydrangeas.jpg', '595284', 'image/jpeg', 'Math', 'ccc', 46, 'ravi', 11, 'Math/46/11/0Hydrangeas.jpg', 'AAA', 0),
(68, '1Jellyfish.jpg', '775702', 'image/jpeg', 'Math', 'ccc', 46, 'ravi', 11, 'Math/46/11/1Jellyfish.jpg', 'AAA', 0),
(70, '2Penguins.jpg', '777835', 'image/jpeg', 'Math', 'ccc', 46, 'ravi', 11, 'Math/46/11/2Penguins.jpg', 'AAA', 0),
(72, '3Tulips.jpg', '620888', 'image/jpeg', 'Math', 'ccc', 46, 'ravi', 11, 'Math/46/11/3Tulips.jpg', 'AAA', 0),
(82, '0Penguins.jpg', '777835', 'image/jpeg', 'Math', 'ccc', 46, 'AAA', 77, 'Math/46/77/0Penguins.jpg', 'AAA', 0),
(83, '0Scan.jpg', '670855', 'image/jpeg', 'Math', 'ccc', 46, 'raj', 1122, 'Math/46/1122/0Scan.jpg', 'AAA', 0),
(85, '1Scan.jpg2.jpg', '563562', 'image/jpeg', 'Math', 'ccc', 46, 'raj', 1122, 'Math/46/1122/1Scan.jpg2.jpg', 'AAA', 0),
(87, '2Scan.jpg3.jpg', '579019', 'image/jpeg', 'Math', 'ccc', 46, 'raj', 1122, 'Math/46/1122/2Scan.jpg3.jpg', 'AAA', 0),
(89, '3Scan.jpg4.jpg', '568994', 'image/jpeg', 'Math', 'ccc', 46, 'raj', 1122, 'Math/46/1122/3Scan.jpg4.jpg', 'AAA', 0),
(91, '4Scan.jpg5.jpg', '599980', 'image/jpeg', 'Math', 'ccc', 46, 'raj', 1122, 'Math/46/1122/4Scan.jpg5.jpg', 'AAA', 0),
(93, '5Scan.jpg6.jpg', '557757', 'image/jpeg', 'Math', 'ccc', 46, 'raj', 1122, 'Math/46/1122/5Scan.jpg6.jpg', 'AAA', 0),
(95, '6Scan.jpg7.jpg', '609672', 'image/jpeg', 'Math', 'ccc', 46, 'raj', 1122, 'Math/46/1122/6Scan.jpg7.jpg', 'AAA', 0),
(97, '7Scan.jpg8.jpg', '570180', 'image/jpeg', 'Math', 'ccc', 46, 'raj', 1122, 'Math/46/1122/7Scan.jpg8.jpg', 'AAA', 0),
(106, '3Scan.jpg9.jpg', '653421', 'image/jpeg', 'Math', 'ccc', 46, 'ee', 44, 'Math/46/44/3Scan.jpg9.jpg', 'ttt', 0),
(108, '4Scan.jpg10.jpg', '509826', 'image/jpeg', 'Math', 'ccc', 46, 'ee', 44, 'Math/46/44/4Scan.jpg10.jpg', 'ttt', 0),
(110, '5Scan.jpg11.jpg', '561446', 'image/jpeg', 'Math', 'ccc', 46, 'ee', 44, 'Math/46/44/5Scan.jpg11.jpg', 'ttt', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
