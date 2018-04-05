-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 18, 2016 at 04:52 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leaning`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `Courses_Name` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`Courses_Name`, `Type`) VALUES
('C', 'Non Live'),
('Java', 'Non Live'),
('Cpp', 'Non Live'),
('Assignment', 'Non Live'),
('Notes', 'Non Live'),
('CGVR', 'Live');

-- --------------------------------------------------------

--
-- Table structure for table `Java`
--

CREATE TABLE `Java` (
  `id` int(6) NOT NULL,
  `lect_name` varchar(500) NOT NULL,
  `link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Java`
--

INSERT INTO `Java` (`id`, `lect_name`, `link`) VALUES
(1, 'Java Programming Tutorial - 1 - Installing the JDK', 'https://www.youtube.com/embed/Hl-zzrqQoSE'),
(2, 'Java Programming Tutorial - 2 - Running a Java Program', 'https://www.youtube.com/embed/5u8rFbpdvds'),
(5, 'Java Programming Tutorial - 4 - Hello YouTube', 'https://www.youtube.com/embed/SHIT5VkNrCg'),
(6, 'Java Programming Tutorial - 5 - Variables', 'https://www.youtube.com/embed/gtQJXzi3Yns'),
(7, 'Java Programming Tutorial - 6 - Getting User Input', 'https://www.youtube.com/embed/5DdacOkrTgo'),
(8, 'Java Programming Tutorial - 7 - Building a Basic Calculator', 'https://www.youtube.com/embed/ANuuSFY2BbY'),
(9, 'Java Programming Tutorial - 8 - Math Operators', 'https://www.youtube.com/embed/8ZaTSedtf9M');

-- --------------------------------------------------------


--
-- Table structure for table `CPP`
--

CREATE TABLE `Cpp` (
  `id` int(6) NOT NULL,
  `lect_name` varchar(500) NOT NULL,
  `link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Java`
--

INSERT INTO `Cpp` (`id`, `lect_name`, `link`) VALUES
(1, 'Cpp Programming Tutorial - 1 - Introduction', 'https://www.youtube.com/embed/watch?v=3fwKlU9AwSY&list=PLfVsf4Bjg79Cu5MYkyJ-u4SyQmMhFeC1C'),
(2, 'Cpp Programming Tutorial - 2 - Hello Program', 'https://www.youtube.com/embed/watch?v=e840YAaK620&index=4&list=PLfVsf4Bjg79Cu5MYkyJ-u4SyQmMhFeC1C'),
(5, 'Cpp Programming Tutorial - 4 - constants and datatypes', 'https://www.youtube.com/embed/watch?v=z600MQdQ9lg&index=5&list=PLfVsf4Bjg79Cu5MYkyJ-u4SyQmMhFeC1C'),
(6, 'Cpp Programming Tutorial - 5 - Console Input Output', 'https://www.youtube.com/embed/watch?v=c7foOFAYqbk&index=7&list=PLfVsf4Bjg79Cu5MYkyJ-u4SyQmMhFeC1C'),
(7, 'Cpp Programming Tutorial - 6 - Airthmetic Operations', 'https://www.youtube.com/embed/watch?v=RKNgEgm_DP8&list=PLfVsf4Bjg79Cu5MYkyJ-u4SyQmMhFeC1C&index=10'),
(8, 'Cpp Programming Tutorial - 7 - If Else Statements', 'https://www.youtube.com/embed/watch?v=rPyn7kGHZzA&index=13&list=PLfVsf4Bjg79Cu5MYkyJ-u4SyQmMhFeC1C'),
(9, 'Cpp Programming Tutorial - 8 - Loops', 'https://www.youtube.com/embed/watch?v=IqKweotABQI&list=PLfVsf4Bjg79Cu5MYkyJ-u4SyQmMhFeC1C&index=18');

-- --------------------------------------------------------


--
-- Table structure for table `CPP`
--

CREATE TABLE `C` (
  `id` int(6) NOT NULL,
  `lect_name` varchar(500) NOT NULL,
  `link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `C`
--

INSERT INTO `C` (`id`, `lect_name`, `link`) VALUES
(1, 'C Programming Tutorial - 1 - Introduction', 'https://www.youtube.com/embed/watch?v=2NWeucMKrLI&list=PL6gx4Cwl9DGAKIXv8Yr6nhGJ9Vlcjyymq'),
(4, 'C Programming Tutorial - 4 - Print Text on the Screen', 'https://www.youtube.com/embed/watch?v=oSpmApiUsHw&index=4&list=PL6gx4Cwl9DGAKIXv8Yr6nhGJ9Vlcjyymq'),
(7, 'C Programming Tutorial - 7 - Variables', 'https://www.youtube.com/embed/watch?v=k1ur8rX-DQQ&index=7&list=PL6gx4Cwl9DGAKIXv8Yr6nhGJ9Vlcjyymq'),
(9, 'C Programming Tutorial - 9 - I Need Arrays', 'https://www.youtube.com/embed/watch?v=7F-Q2oVBYKk&index=9&list=PL6gx4Cwl9DGAKIXv8Yr6nhGJ9Vlcjyymq'),
(16, 'C Programming Tutorial - 16 - Typecasting', 'https://www.youtube.com/embed/watch?v=ohVRskLlHqM&list=PL6gx4Cwl9DGAKIXv8Yr6nhGJ9Vlcjyymq&index=16'),
(17, 'C Programming Tutorial - 17 - Making Decisions Using if Statements', 'https://www.youtube.com/embed/watch?v=PXwWoL0IG5A&list=PL6gx4Cwl9DGAKIXv8Yr6nhGJ9Vlcjyymq&index=17'),
(31, 'C Programming Tutorial - 31 - switch', 'https://www.youtube.com/embed/watch?v=qZRP5hKGHrs&list=PL6gx4Cwl9DGAKIXv8Yr6nhGJ9Vlcjyymq&index=31');

-- --------------------------------------------------------

--
-- Table structure for table `Assignment`
--

CREATE TABLE `Assignment` (
  `id` int(6) NOT NULL,
  `lect_name` varchar(500) NOT NULL,
  `link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Java`
--

INSERT INTO `Assignment` (`id`, `lect_name`, `link`) VALUES
(1, 'Assignment1', 'https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-087-practical-programming-in-c-january-iap-2010/assignments/MIT6_087IAP10_assn02.pdf'),
(2, 'Assignment2', 'https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-087-practical-programming-in-c-january-iap-2010/assignments/MIT6_087IAP10_assn04.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `Notes`
--

CREATE TABLE `Notes` (
  `id` int(6) NOT NULL,
  `lect_name` varchar(500) NOT NULL,
  `link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Java`
--

INSERT INTO `Notes` (`id`, `lect_name`, `link`) VALUES
(1, 'Java Notes', 'http://www.tutorialspoint.com/java/java_tutorial.pdf'),
(2, 'C Notes', 'https://www.tutorialspoint.com/cprogramming/cprogramming_tutorial.pdf'),
(3, 'C++ Notes', 'http://cds.iisc.ac.in/wp-content/uploads/DS286.AUG2016.Lab2_.cpp_tutorial.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(6) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `institute` varchar(500) NOT NULL,
  `upload_address` varchar(500) DEFAULT '/miniproject/img/defaultthididdetasddefaultsothatnonecanseethis.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `username`, `password`, `email`, `institute`, `upload_address`) VALUES
(40, 'sakshi', 'daasjdaja', 'sakshi18n@gmail.com', 'NITK', '/miniproject/img/sak.jpg'),
(41, 'jxzvkjsdh', 'askhsdhcf', 'skdhkdsh@sdf.com', '', NULL),
(42, 'fnxxmn', '', '', '', NULL),
(44, 'thefirstvineet', 'asdf', 'vineet.sk.07@gmail.com', '', NULL),
(45, '', 'password', '', '', NULL),
(46, '', 'xdfsddgsfgsd', '', '', NULL),
(47, 'vineetsk07', 'darwinskcaeser', 'vineet.sk.07@gmail.com', '', NULL),
(48, 'vin', 'darwinskcaeser', 'vineet.sk.07@gmail.com', '', NULL),
(49, 'vinv', 'darwinskcaeser', 'vineet.sk.07@gmail.com', '', NULL),
(50, 'vn', 'darwinskcaeser', 'vineet.sk.07@gmail.com', '', '/miniproject/img/defaultthididdetasddefaultsothatnonecanseethis.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Java`
--
ALTER TABLE `Java`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Java`
--
ALTER TABLE `Java`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `user_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
