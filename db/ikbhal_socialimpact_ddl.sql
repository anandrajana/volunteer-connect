-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 24, 2013 at 03:08 AM
-- Server version: 5.5.33-31.1
-- PHP Version: 5.3.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ikbhal_socialimpact`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE IF NOT EXISTS `activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ngo_id` int(11) NOT NULL,
  `name` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `recuring` tinyint(4) NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ngo`
--

CREATE TABLE IF NOT EXISTS `ngo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `sectors` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `contact_person` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `ngo`
--

INSERT INTO `ngo` (`id`, `name`, `logo`, `description`, `address`, `sectors`, `keywords`, `website`, `contact_person`, `email`, `mobile`) VALUES
(2, 'Dream-A-Dream', '', '', '', 'Children', 'Children, life skills, activities', 'http://dreamadream.org/', 'Chrishelle David', 'chrishelle@dreamadream.org\r\n', ''),
(3, 'Pratham', '', '', '', 'Education', 'Children, education', '', '', '', ''),
(4, 'Aasha Deepam', '', '', '', 'Education', 'Children, Education', '', 'M.V.Narayana Reddy', 'mvnarayanareddy@aashadeepam.com', ''),
(5, 'Dream-A-Dream', '', '', '', 'Children', 'Children, Life Skills, Activities', 'http://dreamadream.org', 'Chrishelle David', 'chrishelle@dreamadream.org', '080-40951084'),
(6, 'Academy for severe handicaps and autism', '', '', '', '', 'child welfare, disability,disadvantaged communities,education', 'http://ashaforaustin.com', 'jayashree ramesh', 'info@ashaforaustin.com', '044-3485279'),
(7, 'Act Now', '', '', '', 'Youth', '', 'http://actnow.co.in', 'Aswin', 'aswin@actnow.co.in', '080-25438029'),
(8, 'Action Aid India', '', '', '', '', 'disability, human rights,minorities,poverty,sustainable development', 'http://actionaidindia.org', 'Miriam Solomon', 'coblr@actionaidindia.org', '080-5586682'),
(9, 'Action Service Hope For AIDS', '', '', '', 'HIV AIDS', '', 'http://ashaf.org', '', 'ashaf@satyam.net.in', '080-3332921'),
(10, 'Agastya International Foundation', '', '', '', '', '', 'http://agastya.org', 'Ramji Raghavan', 'agastya@vsnl.com', '080-25548913'),
(11, 'Akhar- Service of humanity', '', '', '', 'Education', '', 'http://akharsoh.org', 'Ravinder Singh', 'query@akharsoh.org', '09886716690'),
(12, 'Alilu  Seva Samsthe', '', '', '', '', '', 'http://alilu.org', 'T.S Viswanath', 'alilusevasamsthe@yahoo.com', '080-26763373'),
(14, 'knowledgeforall', '', 'knowledge', 'bangalore', 'education', 'teaching', 'iqbalforall.com', 'ikbhal', 'iqbalforall@gmail.com', '9901014560'),
(19, 'knowledge for all', '', 'platform to learn teach practice share', 'Bommanahalli, Bangalore', 'education,jobs', 'teaching,self learn, guide', 'http://knowledgeforall.com', 'Shaik Ikbhal Basha', 'iqbalforall@gmail.com', '9901014560'),
(20, 'n', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE IF NOT EXISTS `volunteer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `interests` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `hours_week` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `volunteer`
--

INSERT INTO `volunteer` (`id`, `name`, `interests`, `hours_week`, `description`, `email`, `phone`, `address`) VALUES
(9, 'A', 'A', 1, 'A', 'A', 'A', 'A'),
(2, 'Matt Gantz', 'Health, Homelesness', 8, 'Matt is a finance student, working at Thomson Reuters in Bangalore', 'mgantz@cord.edu', '7406528295', 'Diamond District, Bangalore'),
(3, 'Ikbhal Shaik', 'Education', 4, 'Ikhbhal isa server-side engineer', 'iqbalforall@gmail.com', '9901014560', 'Indira Nagar, Bangalore'),
(4, 'Akansha Gupta', 'pet care, poverty', 3, 'Akansha is a design hacker.', 'akanshagzb@gmail.com', '8971774817', 'RT Nagar, Bangalore'),
(5, 'Raman Balyan', 'Education, Poverty', 10, 'Raman is a full stack developer.', 'balyan.raman@gmail.com', '9911784090', 'Indira Nagar, Bangalore'),
(6, 'Ashish Batra', 'Education, Children', 20, 'Ashish founded Vidvan in Bangalore and interested in social work.', 'ashish@vidwan.in', '9886435945', 'Varthur Hobli, Bangalore'),
(7, 'Anant Mittal', 'Environment, homelesness', 5, 'Anant is a passionate Android Developer.', 'mittal.anant@gmail.com', '7411389457', 'Chickbalapur, Bangalore'),
(8, 'Ashutosh Mahapatra', 'Politics', 8, 'Ashutosh is an employee at Headstart Network.', 'asutosh.099@hotmail.com', '9738914845', 'Marathalli,Bangalore');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
