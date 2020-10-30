-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 28, 2020 at 10:30 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumniold-1`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_tb`
--

CREATE TABLE `address_tb` (
  `STD_ID` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `HOME_N` varchar(10) NOT NULL,
  `MOO` varchar(10) NOT NULL,
  `KT` varchar(255) NOT NULL,
  `KA` varchar(255) NOT NULL,
  `CH` varchar(255) NOT NULL,
  `HOME_P` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address_tb`
--

INSERT INTO `address_tb` (`STD_ID`, `HOME_N`, `MOO`, `KT`, `KA`, `CH`, `HOME_P`) VALUES
('614259005', '454', '1241', 'นครปฐม', 'เมือง', 'นครปฐม', '73000'),
('614259053', '13', '8', 'นครปฐม', 'เมือง', 'นครปฐม', '73000');

-- --------------------------------------------------------

--
-- Table structure for table `contact_tb`
--

CREATE TABLE `contact_tb` (
  `STD_ID` varchar(9) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `line` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_tb`
--

INSERT INTO `contact_tb` (`STD_ID`, `email`, `tel`, `facebook`, `line`) VALUES
('614259005', '614259053@webmail.npru.ac.th', '0955896970', 'สะ\'บิว', 'bew_wrp'),
('614259053', '614259053@webmail.npru.ac.th', '0955896970', 'สะ\'บิว', 'bew_wrp');

-- --------------------------------------------------------

--
-- Table structure for table `pessonal_tb`
--

CREATE TABLE `pessonal_tb` (
  `STD_ID` varchar(9) NOT NULL,
  `title` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `C_ID` varchar(13) NOT NULL,
  `BD` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pessonal_tb`
--

INSERT INTO `pessonal_tb` (`STD_ID`, `title`, `name`, `lastname`, `gender`, `C_ID`, `BD`) VALUES
('614259005', 'นางสาว', 'จุฑามาศ', 'ชานึชิต', 'หญิง', '1720300169126', '2020-10-22'),
('614259053', 'นาย', 'วรวุฒิ', 'บุญศรี', 'ชาย', '1739900691026', '2020-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `study_tb`
--

CREATE TABLE `study_tb` (
  `STD_ID` varchar(9) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `YEARCON` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `study_tb`
--

INSERT INTO `study_tb` (`STD_ID`, `Password`, `YEARCON`) VALUES
('614259005', '0123456789', '2561'),
('614259053', '0801101892', '2561');

-- --------------------------------------------------------

--
-- Table structure for table `work_tb`
--

CREATE TABLE `work_tb` (
  `STD_ID` varchar(9) NOT NULL,
  `POS` varchar(255) NOT NULL,
  `W_N` varchar(255) NOT NULL,
  `W_P` varchar(255) NOT NULL,
  `W_MOO` varchar(255) NOT NULL,
  `W_KT` varchar(255) NOT NULL,
  `W_KA` varchar(255) NOT NULL,
  `W_CH` varchar(255) NOT NULL,
  `W_C` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `work_tb`
--

INSERT INTO `work_tb` (`STD_ID`, `POS`, `W_N`, `W_P`, `W_MOO`, `W_KT`, `W_KA`, `W_CH`, `W_C`) VALUES
('614259005', 'ผู้จัดการ', 'ทรู', '323', '-', 'นครปฐม', 'เมือง', 'นครปฐม', '73000'),
('614259053', 'ผู้จัดการ', 'ผู้จัดการ', '323', '-', 'นครปฐม', 'เมือง', 'นครปฐม', '73000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_tb`
--
ALTER TABLE `address_tb`
  ADD PRIMARY KEY (`STD_ID`);

--
-- Indexes for table `contact_tb`
--
ALTER TABLE `contact_tb`
  ADD PRIMARY KEY (`STD_ID`);

--
-- Indexes for table `pessonal_tb`
--
ALTER TABLE `pessonal_tb`
  ADD PRIMARY KEY (`STD_ID`);

--
-- Indexes for table `study_tb`
--
ALTER TABLE `study_tb`
  ADD PRIMARY KEY (`STD_ID`);

--
-- Indexes for table `work_tb`
--
ALTER TABLE `work_tb`
  ADD PRIMARY KEY (`STD_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address_tb`
--
ALTER TABLE `address_tb`
  ADD CONSTRAINT `address_tb_ibfk_1` FOREIGN KEY (`STD_ID`) REFERENCES `study_tb` (`STD_ID`);

--
-- Constraints for table `contact_tb`
--
ALTER TABLE `contact_tb`
  ADD CONSTRAINT `contact_tb_ibfk_1` FOREIGN KEY (`STD_ID`) REFERENCES `study_tb` (`STD_ID`);

--
-- Constraints for table `pessonal_tb`
--
ALTER TABLE `pessonal_tb`
  ADD CONSTRAINT `pessonal_tb_ibfk_1` FOREIGN KEY (`STD_ID`) REFERENCES `study_tb` (`STD_ID`);

--
-- Constraints for table `work_tb`
--
ALTER TABLE `work_tb`
  ADD CONSTRAINT `work_tb_ibfk_1` FOREIGN KEY (`STD_ID`) REFERENCES `study_tb` (`STD_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
