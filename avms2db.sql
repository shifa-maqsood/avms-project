-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2021 at 12:19 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `avms2db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` char(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7898799797, 'admin@gmail.com', '9bb2dc226522693c66bd7593ef0872b4', '2019-04-22 00:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblhouseholder`
--

CREATE TABLE `tblhouseholder` (
  `S_NO` int(10) NOT NULL,
  `Name` char(45) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Apartment` varchar(120) DEFAULT NULL,
  `FlatNumber` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhouseholder`
--

INSERT INTO `tblhouseholder` (`S_NO`, `Name`, `Email`, `MobileNumber`, `Apartment`, `FlatNumber`) VALUES
(1, 'SHAHEER KHAN', 'shaheerkhan@gmail.com', 944834320, 'A BLOCK', 'A1'),
(2, 'GOPAL SINGH', 'gopalsingh@gmail.com', 944750521, 'A BLOCK', 'A2'),
(3, 'RAM KAPOOR', 'ramkapoor12@gmail.com', 955310285, 'A BLOCK', 'A3'),
(4, 'REENA DSOUZA', 'reenadsouza567@gmail.com', 6223406843, 'A BLOCK', 'A4'),
(5, 'SIDHARTH CHOPRA', 'sidharthchopra@gmail.com', 9541206543, 'A BLOCK', 'A5'),
(6, 'SAM JACKSON', 'samjackson666@gmail.com', 6553214809, 'B BLOCK', 'B1'),
(7, 'JAISHANKAR PANDEY', 'jaishankarpandey@gmail.com', 9231064428, 'B BLOCK', 'B2'),
(8, 'JULIE ROY', 'julieroy5@gmail.com', 754291653, 'B BLOCK', 'B3'),
(9, 'IMRAN KHAN', 'imrankhan@gamil.com', 554312864, 'B BLOCK', 'B4'),
(10, 'MUHAMMAD EIJAZ KHAN', 'muhammadkhan786@gmail.com', 6641357865, 'B BLOCK', 'B5');

-- --------------------------------------------------------

--
-- Table structure for table `tblmaintenancestaff`
--

CREATE TABLE `tblmaintenancestaff` (
  `Maintenance_ID` int(10) NOT NULL,
  `Name` char(120) DEFAULT NULL,
  `Expertise` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmaintenancestaff`
--

INSERT INTO `tblmaintenancestaff` (`Maintenance_ID`, `Name`, `Expertise`, `MobileNumber`, `Address`) VALUES
(1, 'Mohan', 'Painter', 96576599, ' SP road Bangalore'),
(2, 'Raj Singh', 'Plumber', 9864556106, 'RT nagar Bangalore'),
(3, 'Badshah Lal', 'Electrician', 9986134853, 'MG road Bangalore'),
(4, 'Hardeep Shukla', 'Carpenter', 9553264109, 'RMS road Bangalore'),
(5, 'Babu Kumar', 'Gardener', 845712085, 'BGM road Bangalore'),
(6, 'Suraj Kumar', 'Pest Control', 8442159064, 'KL road Bangalore'),
(7, 'Zafar Khan', 'Tile installer/flooring', 7531209853, 'SQ road Bangalore'),
(8, 'Guru Prasad', 'Appliance repairer', 8551239640, 'Commercial road Bangalore'),
(9, 'Shivanta Kumari', 'Home cleaning', 9441230743, 'JP road Bangalore'),
(10, 'NON MAINTENANCE', 'NON MAINTENANCE', 0, 'NON MAINTENANCE');

-- --------------------------------------------------------

--
-- Table structure for table `tblvisitor`
--

CREATE TABLE `tblvisitor` (
  `Visitor_ID` int(10) NOT NULL,
  `VisitorName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Address` varchar(250) DEFAULT NULL,
  `Apartment` varchar(120) NOT NULL,
  `FlatNumber` varchar(10) DEFAULT NULL,
  `WhomtoMeet` varchar(120) DEFAULT NULL,
  `ReasontoMeet` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NULL DEFAULT current_timestamp(),
  `remark` varchar(255) DEFAULT NULL,
  `outtime` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `ID` int(10) DEFAULT NULL,
  `Maintenance_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvisitor`
--

INSERT INTO `tblvisitor` (`Visitor_ID`, `VisitorName`, `MobileNumber`, `Address`, `Apartment`, `FlatNumber`, `WhomtoMeet`, `ReasontoMeet`, `EnterDate`, `remark`, `outtime`, `ID`, `Maintenance_ID`) VALUES
(1, 'sana khan', 7765431987, 'BS road Bangalore', 'A BLOCK ', 'A4', 'REENA DSOUZA', 'personal', '2020-12-16 09:05:23', 'regular visitor', '2020-12-16 09:20:12', NULL, NULL),
(2, 'raj singh', 9864556106, 'RT nagar Bangalore', 'B BLOCK', 'B2', 'JAISHANKAR PANDEY', 'plumbing work', '2020-12-16 09:19:51', 'fixing pipeline', '2020-12-16 10:14:38', 1, 2),
(39, 'SURAJ', 7636542792, 'JP NAGAR BANGALORE', 'A Block', 'A3', 'RAM KAPOOR', 'Private', '2020-12-24 13:26:35', 'OUTING TIME  19:30:16', '2020-12-24 13:29:50', 1, 10),
(44, 'HARDEEP SHUKLA', 9553264109, 'RMS ROAD BANGALORE', 'B Block', 'B3', 'REENA DZOUSA', 'CARPENTING WORK', '2021-01-07 14:37:43', NULL, NULL, 1, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblhouseholder`
--
ALTER TABLE `tblhouseholder`
  ADD PRIMARY KEY (`FlatNumber`);

--
-- Indexes for table `tblmaintenancestaff`
--
ALTER TABLE `tblmaintenancestaff`
  ADD PRIMARY KEY (`Maintenance_ID`);

--
-- Indexes for table `tblvisitor`
--
ALTER TABLE `tblvisitor`
  ADD PRIMARY KEY (`Visitor_ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `Maintenance_ID` (`Maintenance_ID`),
  ADD KEY `FlatNumber` (`FlatNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmaintenancestaff`
--
ALTER TABLE `tblmaintenancestaff`
  MODIFY `Maintenance_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblvisitor`
--
ALTER TABLE `tblvisitor`
  MODIFY `Visitor_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblvisitor`
--
ALTER TABLE `tblvisitor`
  ADD CONSTRAINT `tblvisitor_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `tbladmin` (`ID`),
  ADD CONSTRAINT `tblvisitor_ibfk_2` FOREIGN KEY (`Maintenance_ID`) REFERENCES `tblmaintenancestaff` (`Maintenance_ID`),
  ADD CONSTRAINT `tblvisitor_ibfk_3` FOREIGN KEY (`FlatNumber`) REFERENCES `tblhouseholder` (`FlatNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
