-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2023 at 03:36 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelchain`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `SSN` char(9) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `First_Name` varchar(32) NOT NULL,
  `Last_Name` varchar(32) NOT NULL,
  `Reservation_Number` int(11) NOT NULL,
  `Membership_Type` varchar(16) NOT NULL,
  `Email` varchar(64) NOT NULL,
  `Phone_Number` varchar(10) NOT NULL,
  `Client_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Department_Number` int(11) NOT NULL,
  `Department_Type` varchar(32) NOT NULL,
  `Hotel_ID` int(11) NOT NULL,
  `Manager_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_ID` int(11) NOT NULL,
  `SSN` char(9) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `First_Name` varchar(32) NOT NULL,
  `Last_Name` varchar(32) NOT NULL,
  `Email` varchar(64) NOT NULL,
  `Phone_Number` varchar(10) NOT NULL,
  `Hotel_ID` int(11) NOT NULL,
  `Role` varchar(32) NOT NULL,
  `Department_Number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `Hotel_ID` int(11) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Email` varchar(32) NOT NULL,
  `Phone_Number` char(16) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `State` varchar(32) NOT NULL,
  `City` varchar(32) NOT NULL,
  `Street_Name` varchar(64) NOT NULL,
  `Street_Number` varchar(16) NOT NULL,
  `Zipcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `Reservation_Number` int(11) NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date NOT NULL,
  `Room_Number` int(11) NOT NULL,
  `Hotel_ID` int(11) NOT NULL,
  `Client_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room_Number` int(11) NOT NULL,
  `Hotel_ID` int(11) NOT NULL,
  `Room_Type` char(16) NOT NULL,
  `Fee_Per_Night` smallint(6) NOT NULL,
  `Max_Occupancy` smallint(6) NOT NULL,
  `Availability` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `Vendor_ID` int(11) NOT NULL,
  `Name` varchar(64) NOT NULL,
  `Email` varchar(64) NOT NULL,
  `Phone_Number` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_hotel_association`
--

CREATE TABLE `vendor_hotel_association` (
  `Vendor_ID` int(11) NOT NULL,
  `Hotel_ID` int(11) NOT NULL,
  `Material` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Client_ID`),
  ADD KEY `Reservation_Number` (`Reservation_Number`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Department_Number`),
  ADD KEY `Hotel_ID` (`Hotel_ID`),
  ADD KEY `Manager_ID` (`Manager_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_ID`),
  ADD UNIQUE KEY `SSN` (`SSN`),
  ADD UNIQUE KEY `Employee_ID` (`Employee_ID`,`Role`),
  ADD KEY `Hotel_ID` (`Hotel_ID`),
  ADD KEY `Department_Number` (`Department_Number`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`Hotel_ID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`Reservation_Number`),
  ADD KEY `Hotel_ID` (`Hotel_ID`),
  ADD KEY `Room_Number` (`Room_Number`),
  ADD KEY `Client_ID` (`Client_ID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room_Number`),
  ADD KEY `Hotel_ID` (`Hotel_ID`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`Vendor_ID`);

--
-- Indexes for table `vendor_hotel_association`
--
ALTER TABLE `vendor_hotel_association`
  ADD PRIMARY KEY (`Vendor_ID`,`Hotel_ID`),
  ADD KEY `Hotel_ID` (`Hotel_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `Client_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `Department_Number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Employee_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `Reservation_Number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `Vendor_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`Reservation_Number`) REFERENCES `reservation` (`Reservation_Number`);

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`Hotel_ID`) REFERENCES `hotel` (`Hotel_ID`),
  ADD CONSTRAINT `department_ibfk_2` FOREIGN KEY (`Manager_ID`) REFERENCES `employee` (`Employee_ID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Hotel_ID`) REFERENCES `hotel` (`Hotel_ID`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`Department_Number`) REFERENCES `department` (`Department_Number`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`Hotel_ID`) REFERENCES `hotel` (`Hotel_ID`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`Room_Number`) REFERENCES `room` (`Room_Number`),
  ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`Client_ID`) REFERENCES `client` (`Client_ID`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`Hotel_ID`) REFERENCES `hotel` (`Hotel_ID`);

--
-- Constraints for table `vendor_hotel_association`
--
ALTER TABLE `vendor_hotel_association`
  ADD CONSTRAINT `vendor_hotel_association_ibfk_1` FOREIGN KEY (`Vendor_ID`) REFERENCES `vendor` (`Vendor_ID`),
  ADD CONSTRAINT `vendor_hotel_association_ibfk_2` FOREIGN KEY (`Hotel_ID`) REFERENCES `hotel` (`Hotel_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
