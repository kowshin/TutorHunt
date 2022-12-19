-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2017 at 06:39 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tutorhunt.`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE IF NOT EXISTS `complaint` (
  `cmpln_no` int(10) NOT NULL AUTO_INCREMENT,
  `date` varchar(10) NOT NULL,
  `person_id` int(10) NOT NULL,
  `person_name` varchar(100) NOT NULL,
  `category` varchar(10) NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`cmpln_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`cmpln_no`, `date`, `person_id`, `person_name`, `category`, `body`) VALUES
(1, '15/04/2017', 1, 'Fabiha Iffat', 'Student', 'I just wanted to suggest that it would be great if students could also create profile and sign in.');

-- --------------------------------------------------------

--
-- Table structure for table `exam_date`
--

CREATE TABLE IF NOT EXISTS `exam_date` (
  `date` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `tutor_id` int(10) NOT NULL,
  `tutor_name` varchar(100) NOT NULL,
  `student_id` int(10) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `exam_duration` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_date`
--

INSERT INTO `exam_date` (`date`, `subject`, `tutor_id`, `tutor_name`, `student_id`, `student_name`, `exam_duration`) VALUES
('22/04.2017', 'Mathematics', 1, 'Raihana', 1, 'Iffat', '1:00hr');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `msg_no` int(10) NOT NULL AUTO_INCREMENT,
  `sender_name` varchar(100) NOT NULL,
  `receiver_name` varchar(100) NOT NULL,
  `sender_type` varchar(100) NOT NULL,
  `receiver_type` varchar(100) NOT NULL,
  `sender_id` int(10) NOT NULL,
  `receiver_id` int(10) NOT NULL,
  `msg_body` text NOT NULL,
  `date` varchar(10) NOT NULL,
  PRIMARY KEY (`msg_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_no`, `sender_name`, `receiver_name`, `sender_type`, `receiver_type`, `sender_id`, `receiver_id`, `msg_body`, `date`) VALUES
(1, 'Raihana', 'Iffat', 'Tutor', 'Student', 1, 1, 'I won''t be able to tutor you today due to a family emergency. I''ll make up for it this Friday. ', '11/04/2017');

-- --------------------------------------------------------

--
-- Table structure for table `post_notice`
--

CREATE TABLE IF NOT EXISTS `post_notice` (
  `notice_serial` int(100) NOT NULL AUTO_INCREMENT,
  `notice_details` varchar(500) NOT NULL,
  `issue_date` varchar(15) NOT NULL,
  PRIMARY KEY (`notice_serial`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `post_notice`
--

INSERT INTO `post_notice` (`notice_serial`, `notice_details`, `issue_date`) VALUES
(1, 'We are looking for female tutors interested to tutor O level students.', '28/03/2017'),
(2, 'Male tutor need in Wari, Dhaka for a student of class 10', '13/04/2017');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `student_id` int(10) NOT NULL AUTO_INCREMENT,
  `sfirst_name` varchar(100) NOT NULL,
  `slast_name` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `time` varchar(10) NOT NULL,
  `tutor_id` int(10) NOT NULL,
  `saddress` varchar(250) NOT NULL,
  `sphone` int(20) NOT NULL,
  `semail` varchar(100) NOT NULL,
  `curr_edu` varchar(10) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `sfirst_name`, `slast_name`, `subject`, `time`, `tutor_id`, `saddress`, `sphone`, `semail`, `curr_edu`) VALUES
(1, 'Fabiha', 'Iffat', 'Mathematics', '4:00 pm - ', 1, 'Nikunjo, Dhaka', 7685943, 'fabiha.iffat@gmail.com', 'SSC'),
(2, 'Saiyudh', 'Mannan', 'English', '4:00 pm - ', 1, 'blah blah', 876546, 'vhgfd@gmail.com', 'class1'),
(3, 'Asif', 'Iqbal', 'English', '7-8:30pm', 1, 'Gulshan 02, Dhaka.', 1711111313, 'aiqbal@gmail.com', 'HSC');

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE IF NOT EXISTS `tutor` (
  `tutor_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `pref_loc` varchar(500) NOT NULL,
  PRIMARY KEY (`tutor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`tutor_id`, `first_name`, `last_name`, `email`, `password`, `pref_loc`) VALUES
(1, 'Kowshin', 'Raihana', 'kowshin_raihana@ymail.com', '000000', 'Bashundhara R/A'),
(2, 'Karishma', 'Rejwana', 'KRejwana@gmail.com', '111111', 'Banani'),
(3, 'Nayem', 'Rahman', 'Nrahman@gmail.com', '222222', 'Wari, Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_detail`
--

CREATE TABLE IF NOT EXISTS `tutor_detail` (
  `tutor_id` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(12) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `major` varchar(100) NOT NULL,
  `sub` varchar(255) NOT NULL,
  `pref_stud` varchar(100) NOT NULL,
  `phone_number` int(20) NOT NULL,
  `university_name` varchar(50) NOT NULL,
  `about_me` text,
  PRIMARY KEY (`tutor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tutor_detail`
--

INSERT INTO `tutor_detail` (`tutor_id`, `gender`, `marital_status`, `major`, `sub`, `pref_stud`, `phone_number`, `university_name`, `about_me`) VALUES
(1, 'Female', 'Unmarried', 'CSE', 'Maths, Science, English', 'Class 9-12', 100001110, 'North South University', 'I am hard working and fast learner. I intend to give effort in order to learn and understand about the things that are new to me.'),
(2, 'Female', 'Married', 'EEE', 'Maths, Science, English', 'class 1-5', 1898345678, 'American International University Bangladesh', 'I am interested to spread the light of knowledge through tutoring as much students I can.'),
(3, 'Male', 'Unmarried', 'CSE', 'Chemistry, Mathematics', 'SSC,HSC', 1898345678, 'Military Institute of Science & Technology', 'I am a very enthusiastic and determind person.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
