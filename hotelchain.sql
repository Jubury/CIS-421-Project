-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2023 at 06:35 AM
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
  `Reservation_Number` int(11) DEFAULT NULL,
  `Membership_Type` varchar(16) NOT NULL,
  `Email` varchar(64) NOT NULL,
  `Phone_Number` varchar(10) NOT NULL,
  `Client_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`SSN`, `Name`, `First_Name`, `Last_Name`, `Reservation_Number`, `Membership_Type`, `Email`, `Phone_Number`, `Client_ID`) VALUES
('243541124', 'Hussein Al-Jubury', 'Hussein', 'Al-Jubury', 2, 'Basic', 'h_aljubury@gmail.com', '3131459213', 1),
('215351010', 'Rosemary Goodwin', 'Rosemary', 'Goodwin', 2, 'Basic', 'r_goodwin@gmail.com', '3139059694', 2),
('112233445', 'Christine Warren', 'Christine', 'Warren', 3, 'Premium', 'c_warren@gmail.com', '3135550101', 3),
('223344556', 'Eda Nichols', 'Eda', 'Nichols', 4, 'Premium', 'e_nichols@gmail.com', '3135550202', 4),
('334455667', 'Priscilla Wells', 'Priscilla', 'Wells', 5, 'Premium', 'p_wells@gmail.com', '3135550303', 5),
('445566778', 'Harlan Pena', 'Harlan', 'Pena', 6, 'Premium', 'h_pena@gmail.com', '3135550404', 6),
('556677889', 'Gerry Vasquez', 'Gerry', 'Vasquez', 7, 'Premium', 'g_vasquez@gmail.com', '3135550505', 7),
('667788990', 'Buck King', 'Buck', 'King', 8, 'Basic', 'b_king@gmail.com', '3135550606', 8),
('778899001', 'Willow Mallin', 'Willow', 'Mallin', 9, 'Basic', 'w_mallin@gmail.com', '3135550707', 9),
('889900112', 'Elizabeth Brewer', 'Elizabeth', 'Brewer', 10, 'Basic', 'e_brewer@gmail.com', '3135550808', 10),
('990011223', 'Will Santiago', 'Will', 'Santiago', 11, 'Basic', 'w_santiago@gmail.com', '3135550909', 11),
('100112334', 'Theo Hansen', 'Theo', 'Hansen', 12, 'Basic', 't_hansen@gmail.com', '3135551010', 12),
('111223345', 'Timothy Pierce', 'Timothy', 'Pierce', 13, 'Basic', 't_pierce@gmail.com', '3135551111', 13),
('122334456', 'Tom Peters', 'Tom', 'Peters', 14, 'Basic', 't_peters@gmail.com', '3135551212', 14),
('123456789', 'Halbert Guzman', 'Halbert', 'Guzman', 15, 'Basic', 'h_guzman@gmail.com', '3135551313', 15),
('234567890', 'Virgil Ballard', 'Virgil', 'Ballard', 16, 'Basic', 'v_ballard@gmail.com', '3135551414', 16),
('345678901', 'Amanda Johnson', 'Amanda', 'Johnson', 17, 'Basic', 'a_johnson@gmail.com', '3135551515', 17),
('456789012', 'Samantha Brown', 'Samantha', 'Brown', 18, 'Basic', 's_brown@gmail.com', '3135551616', 18),
('567890123', 'Franklin Ramirez', 'Franklin', 'Ramirez', 19, 'Basic', 'f_ramirez@gmail.com', '3135551717', 19),
('678901234', 'Diana Patel', 'Diana', 'Patel', 20, 'Basic', 'd_patel@gmail.com', '3135551818', 20),
('789012345', 'Kevin Murphy', 'Kevin', 'Murphy', 21, 'Basic', 'k_murphy@gmail.com', '3135551919', 21),
('890123456', 'Linda Gonzalez', 'Linda', 'Gonzalez', 22, 'Basic', 'l_gonzalez@gmail.com', '3135552020', 22),
('901234567', 'Nathan Butler', 'Nathan', 'Butler', 23, 'Basic', 'n_butler@gmail.com', '3135552121', 23),
('912345678', 'Olivia Carter', 'Olivia', 'Carter', NULL, 'Basic', 'o_carter@gmail.com', '3135552222', 24),
('923456789', 'Patrick Foster', 'Patrick', 'Foster', NULL, 'Basic', 'p_foster@gmail.com', '3135552323', 25);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Department_Number` int(11) NOT NULL,
  `Department_Type` varchar(32) NOT NULL,
  `Hotel_ID` int(11) NOT NULL,
  `Manager_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Department_Number`, `Department_Type`, `Hotel_ID`, `Manager_ID`) VALUES
(0, 'Guest Services', 0, 655),
(0, 'Guest Services', 1, 656),
(0, 'Guest Services', 2, 657),
(1, 'Security', 0, 658),
(1, 'Security', 1, 659),
(1, 'Security', 2, 660),
(2, 'Housekeeping', 0, 661),
(2, 'Housekeeping', 1, 662),
(2, 'Housekeeping', 2, 663),
(3, 'Maintenance', 0, 664),
(3, 'Maintenance', 1, 665),
(3, 'Maintenance', 2, 666),
(4, 'Kitchen', 0, 667),
(4, 'Kitchen', 1, 668),
(4, 'Kitchen', 2, 669);

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
  `Department_Number` int(11) NOT NULL,
  `Salary` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_ID`, `SSN`, `Name`, `First_Name`, `Last_Name`, `Email`, `Phone_Number`, `Hotel_ID`, `Role`, `Department_Number`, `Salary`) VALUES
(603, '123456789', 'Tedd Howard', 'Tedd', 'Howard', 't_howard@gmail.com', '3131808407', 0, 'Receptionist', 0, 20),
(604, '234567890', 'Sally Kimmons', 'Sally', 'Kimmons', 's_kimmons@gmail.com', '3131540910', 0, 'Receptionist', 0, 20),
(605, '345678901', 'Tina Salazar', 'Tina', 'Salazar', 't_salazar@gmail.com', '3121770918', 1, 'Receptionist', 0, 20),
(606, '456789012', 'Rachel Douglas', 'Rachel', 'Douglas', 'r_douglas@gmail.com', '3126233879', 1, 'Receptionist', 0, 20),
(607, '567890123', 'Alf Rowse', 'Alf', 'Rowse', 'a_rowse@gmail.com', '4197633810', 2, 'Receptionist', 0, 20),
(608, '678901234', 'Britney Tillery', 'Britney', 'Tillery', 'b_tillery@gmail.com', '4191448723', 2, 'Receptionist', 0, 20),
(609, '789012345', 'Herman Dawson', 'Herman', 'Dawson', 'h_dawson@gmail.com', '3131561857', 0, 'Security Guard', 1, 25),
(610, '890123456', 'Sacha Kelley', 'Sacha', 'Kelley', 's_kelley@gmail.com', '3131815438', 0, 'Security Guard', 1, 25),
(611, '901234567', 'Hattie Barlow', 'Hattie', 'Barlow', 'h_barlow@gmail.com', '3121463618', 1, 'Security Guard', 1, 25),
(612, '012345678', 'Lawrence Clayton', 'Lawrence', 'Clayton', 'l_clayton@gmail.com', '3121219493', 1, 'Security Guard', 1, 25),
(613, '123456556', 'Aldrich Salvage', 'Aldrich', 'Salvage', 'a_salvage@gmail.com', '3127024598', 2, 'Security Guard', 1, 25),
(614, '234567891', 'Harley Bacchus', 'Harley', 'Bacchus', 'h_bacchus@gmail.com', '3121850467', 2, 'Security Guard', 1, 25),
(615, '345656789', 'Maxwell Powers', 'Maxwell', 'Powers', 'm_powers@gmail.com', '3131544359', 0, 'Security Guard', 1, 25),
(616, '456787890', 'Gina Rivera', 'Gina', 'Rivera', 'g_rivera@gmail.com', '3131817596', 0, 'Security Guard', 1, 25),
(617, '567878901', 'Frankie Wells', 'Frankie', 'Wells', 'f_wells@gmail.com', '3121866943', 1, 'Security Guard', 1, 25),
(618, '678989012', 'Elena Cruz', 'Elena', 'Cruz', 'e_cruz@gmail.com', '3121437922', 1, 'Security Guard', 1, 25),
(619, '789090123', 'Oscar Jennings', 'Oscar', 'Jennings', 'o_jennings@gmail.com', '4191855917', 2, 'Security Guard', 1, 25),
(620, '890101234', 'Violet Adams', 'Violet', 'Adams', 'v_adams@gmail.com', '4191566727', 2, 'Security Guard', 1, 25),
(621, '234567144', 'Olivia Smith', 'Olivia', 'Smith', 'o_smith@gmail.com', '3131808407', 0, 'Room Attendant', 2, 25),
(622, '345678234', 'Ethan Johnson', 'Ethan', 'Johnson', 'e_johnson@gmail.com', '3131540910', 0, 'Room Attendant', 2, 25),
(623, '456789345', 'Sophia Williams', 'Sophia', 'Williams', 's_williams@gmail.com', '3121770918', 0, 'Room Attendant', 2, 25),
(624, '567890456', 'Noah Jones', 'Noah', 'Jones', 'n_jones@gmail.com', '3126233879', 0, 'Room Attendant', 2, 25),
(625, '678901567', 'Emma Brown', 'Emma', 'Brown', 'e_brown@gmail.com', '4197633810', 0, 'Room Attendant', 2, 25),
(626, '789012678', 'Liam Davis', 'Liam', 'Davis', 'l_davis@gmail.com', '4191448723', 1, 'Room Attendant', 2, 25),
(627, '890123789', 'Ava Miller', 'Ava', 'Miller', 'a_miller@gmail.com', '3131561857', 1, 'Room Attendant', 2, 25),
(628, '901234890', 'Mason Wilson', 'Mason', 'Wilson', 'm_wilson@gmail.com', '3131815438', 1, 'Room Attendant', 2, 25),
(629, '012345901', 'Isabella Moore', 'Isabella', 'Moore', 'i_moore@gmail.com', '3121463618', 1, 'Room Attendant', 2, 25),
(630, '123456012', 'Alexander Martin', 'Alexander', 'Martin', 'a_martin@gmail.com', '3121437922', 1, 'Room Attendant', 2, 25),
(631, '234567123', 'James Taylor', 'James', 'Taylor', 'j_taylor@gmail.com', '3121219493', 2, 'Room Attendant', 2, 25),
(632, '345678244', 'Charlotte Anderson', 'Charlotte', 'Anderson', 'c_anderson@gmail.com', '3127024598', 2, 'Room Attendant', 2, 25),
(633, '456789346', 'Benjamin Thomas', 'Benjamin', 'Thomas', 'b_thomas@gmail.com', '3121850467', 2, 'Room Attendant', 2, 25),
(634, '567890465', 'Amelia Jackson', 'Amelia', 'Jackson', 'a_jackson@gmail.com', '3131544359', 2, 'Room Attendant', 2, 25),
(635, '678901568', 'William White', 'William', 'White', 'w_white@gmail.com', '3131817596', 2, 'Room Attendant', 2, 25),
(636, '789012668', 'Grace Harris', 'Grace', 'Harris', 'g_harris@gmail.com', '3121866943', 2, 'Room Attendant', 2, 25),
(637, '141321341', 'Tommy Johnson', 'Tommy', 'Johnson', 't_johnson@gmail.com', '3134567890', 0, 'Technician', 3, 30),
(638, '221352442', 'Nancy Thompson', 'Nancy', 'Thompson', 'n_thompson@gmail.com', '3135678901', 0, 'Technician', 3, 30),
(639, '323712642', 'Daniel Williams', 'Daniel', 'Williams', 'd_williams@gmail.com', '3136789012', 0, 'Technician', 3, 30),
(640, '447194721', 'Jessica Davis', 'Jessica', 'Davis', 'j_davis@gmail.com', '3127890123', 1, 'Technician', 3, 30),
(641, '472966425', 'Oliver Martinez', 'Oliver', 'Martinez', 'o_martinez@gmail.com', '3128901234', 1, 'Technician', 3, 30),
(642, '957366612', 'Sophie Clark', 'Sophie', 'Clark', 's_clark@gmail.com', '3129012345', 1, 'Technician', 3, 30),
(643, '483682634', 'Charlie Lee', 'Charlie', 'Lee', 'c_lee@gmail.com', '4190123456', 2, 'Technician', 3, 30),
(644, '856365877', 'Emma Scott', 'Emma', 'Scott', 'e_scott@gmail.com', '4191234567', 2, 'Technician', 3, 30),
(645, '573293028', 'Maxwell Fisher', 'Maxwell', 'Fisher', 'm_fisher@gmail.com', '4192345678', 2, 'Technician', 3, 30),
(646, '232415668', 'Jerome Walsh', 'Jerome', 'Walsh', 'j_walsh@gmail.com', '3137848700', 0, 'Cook', 4, 30),
(647, '332421459', 'Vita Wolfe', 'Vita', 'Wolfe', 'v_wolfe@gmail.com', '3138600536', 0, 'Cook', 4, 30),
(648, '534266631', 'Wilona Howell', 'Wilona', 'Howell', 'w_howell@gmail.com', '3133287232', 0, 'Chef', 4, 50),
(649, '432542416', 'Harper Allen', 'Harper', 'Allen', 'h_allen@gmail.com', '3123378037', 1, 'Cook', 4, 30),
(650, '542444648', 'Anthony Wallaker', 'Anthony', 'Wallaker', 'a_wallaker@gmail.com', '3129905253', 1, 'Cook', 4, 30),
(651, '753234447', 'Benjamin Booth', 'Benjamin', 'Booth', 'b_booth@gmail.com', '3124217955', 1, 'Chef', 4, 50),
(652, '343421378', 'Felicia Fisher', 'Felicia', 'Fisher', 'f_fisher@gmail.com', '4198869696', 2, 'Cook', 4, 30),
(653, '856643527', 'Warwick Curry', 'Warwick', 'Curry', 'w_curry@gmail.com', '4199684647', 2, 'Cook', 4, 30),
(654, '543674359', 'Milton Spraggins', 'Milton', 'Spraggins', 'm_spraggins@gmail.com', '4196468337', 2, 'Chef', 4, 50),
(655, '518604534', 'Sophia Reynolds', 'Sophia', 'Reynolds', 's_reynolds@gmail.com', '3134569864', 0, 'Guest Services Manager', 0, 60),
(656, '267752756', 'Xavier Thompson', 'Xavier', 'Thompson', 'x_thompson@gmail.com@gmail.com', '3126542210', 1, 'Guest Services Manager', 0, 60),
(657, '430375297', 'Isabella Patel', 'Isabella', 'Patel', 'i_patela@gmail.com', '4192229133', 2, 'Guest Services Manager', 0, 60),
(658, '385169481', 'Leo Rodriguez', 'Leo', 'Rodriguez', 'l_rodrigues@gmail.com', '3135557986', 0, 'Security Manager', 1, 60),
(659, '543441179', 'Ava Nguyen', 'Ava', 'Nguyen', 'a_nguyen@gmail.com', '3128887299', 1, 'Security Manager', 1, 60),
(660, '282846725', 'Elijah Gomez', 'Elijah', 'Gomez', 'e_gomez@gmail.com', '4192223811', 2, 'Security Manager', 1, 60),
(661, '157524189', 'Harper Johnson', 'Harper', 'Johnson', 'h_johnson@gmail.com', '3137778788', 0, 'Housekeeping Manager', 2, 60),
(662, '004026040', 'Mason Khan', 'Mason', 'Khan', 'm_khan@gmail.com', '3128888877', 1, 'Housekeeping Manager', 2, 60),
(663, '574051466', 'Amelia Wright', 'Amelia', 'Wright', 'a_wright@gmail.com', '4193336944', 2, 'Housekeeping Manager', 2, 60),
(664, '472708074', 'Logan Chen', 'Logan', 'Chen', 'l_chen@gmail.com', '3134441133', 0, 'Maintenance Manager', 3, 60),
(665, '137106114', 'Mia Sullivan', 'Mia', 'Sullivan', 'm_sullivan@gmail.com', '3129991300', 1, 'Maintenance Manager', 3, 60),
(666, '418525946', 'Oliver Kim', 'Oliver', 'Kim', 'o_kim@gmail.com', '4190008199', 2, 'Maintenance Manager', 3, 60),
(667, '520311022', 'Charlotte Gupta', 'Charlotte', 'Gupta', 'c_gupta@gmail.com', '3133331822', 0, 'Executive Chef', 4, 60),
(668, '522045646', 'Lucas Hernandez', 'Lucas', 'Hernandez', 'l_hernandez@gmail.com', '3126664355', 1, 'Executive Chef', 4, 60),
(669, '539588683', 'Evelyn Kumar', 'Evelyn', 'Kumar', 'e_kumar@gmail.com', '4195553855', 2, 'Executive Chef', 4, 60);

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

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`Hotel_ID`, `Name`, `Email`, `Phone_Number`, `Address`, `State`, `City`, `Street_Name`, `Street_Number`, `Zipcode`) VALUES
(0, 'Hotel Detroit', 'hoteldetroit@gmail.com', '313-1234-5678', 'Michigan, Detroit, Woodward Ave, 1234, 48228', 'Michigan', 'Detroit', 'Woodward Ave', '1234', '48228'),
(1, 'Hotel Chicago', 'hotelchicago@gmail.com', '312-1234-5678', 'Illinois, Chicago, Michigan Ave, 1234, 60602', 'Illinois', 'Chicago', 'Michigan Ave', '1234', '60602'),
(2, 'Hotel Toledo', 'hoteltoledo@gmail.com', '419-1234-5678', 'Ohio, Toledo, 116th Street, 1234, 43537', 'Ohio', 'Toledo', '116th Street', '1234', '43537');

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

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`Reservation_Number`, `Start_Date`, `End_Date`, `Room_Number`, `Hotel_ID`, `Client_ID`) VALUES
(2, '2023-11-26', '2023-12-02', 10, 0, 1),
(3, '2023-11-25', '2023-12-01', 11, 0, 2),
(4, '2023-12-02', '2023-12-08', 32, 0, 3),
(5, '2023-12-05', '2023-12-10', 30, 0, 4),
(6, '2023-12-08', '2023-12-15', 33, 0, 5),
(7, '2023-12-10', '2023-12-18', 35, 0, 6),
(8, '2023-12-12', '2023-12-20', 16, 0, 7),
(9, '2023-12-15', '2023-12-22', 17, 0, 8),
(10, '2023-12-18', '2023-12-25', 18, 0, 9),
(11, '2023-12-20', '2023-12-28', 19, 0, 10),
(12, '2023-12-22', '2023-12-30', 20, 0, 11),
(13, '2023-12-25', '2024-01-02', 21, 0, 12),
(14, '2023-12-28', '2024-01-05', 22, 0, 13),
(15, '2023-12-30', '2024-01-08', 23, 0, 14),
(16, '2024-01-05', '2024-01-12', 25, 0, 16),
(17, '2024-01-08', '2024-01-15', 26, 0, 17),
(18, '2023-12-02', '2023-12-08', 24, 0, 18),
(19, '2023-12-05', '2023-12-10', 25, 0, 19),
(20, '2023-12-08', '2023-12-15', 26, 0, 20),
(21, '2023-12-10', '2023-12-18', 27, 0, 21),
(22, '2023-12-12', '2023-12-20', 28, 0, 22),
(23, '2023-12-15', '2023-12-22', 29, 0, 23),
(24, '2023-12-18', '2023-12-25', 31, 0, 24),
(25, '2023-12-20', '2023-12-28', 34, 0, 25);

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

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_Number`, `Hotel_ID`, `Room_Type`, `Fee_Per_Night`, `Max_Occupancy`, `Availability`) VALUES
(10, 0, 'Standard', 100, 2, 0),
(10, 1, 'Standard', 100, 2, 1),
(10, 2, 'Standard', 100, 2, 1),
(11, 0, 'Standard', 100, 2, 0),
(11, 1, 'Standard', 100, 2, 1),
(11, 2, 'Standard', 100, 2, 1),
(12, 0, 'Standard', 100, 2, 1),
(12, 1, 'Standard', 100, 2, 1),
(12, 2, 'Standard', 100, 2, 1),
(13, 0, 'Standard', 100, 2, 1),
(13, 1, 'Standard', 100, 2, 1),
(13, 2, 'Standard', 100, 2, 1),
(14, 0, 'Standard', 100, 2, 1),
(14, 1, 'Standard', 100, 2, 1),
(14, 2, 'Standard', 100, 2, 1),
(15, 0, 'Standard', 100, 2, 1),
(15, 1, 'Standard', 100, 2, 1),
(15, 2, 'Standard', 100, 2, 1),
(16, 0, 'Standard', 100, 2, 0),
(16, 1, 'Standard', 100, 2, 1),
(16, 2, 'Standard', 100, 2, 1),
(17, 0, 'Standard', 100, 2, 0),
(17, 1, 'Standard', 100, 2, 1),
(17, 2, 'Standard', 100, 2, 1),
(18, 1, 'Standard', 100, 2, 1),
(18, 2, 'Standard', 100, 2, 1),
(19, 0, 'Standard', 100, 2, 0),
(19, 1, 'Standard', 100, 2, 1),
(19, 2, 'Standard', 100, 2, 1),
(20, 0, 'Standard', 100, 2, 0),
(20, 1, 'Standard', 100, 2, 1),
(20, 2, 'Standard', 100, 2, 1),
(21, 0, 'Standard', 100, 2, 0),
(21, 1, 'Standard', 100, 2, 1),
(21, 2, 'Standard', 100, 2, 1),
(22, 0, 'Standard', 100, 2, 0),
(22, 1, 'Standard', 100, 2, 1),
(22, 2, 'Standard', 100, 2, 1),
(23, 0, 'Standard', 100, 2, 0),
(23, 1, 'Standard', 100, 2, 1),
(23, 2, 'Standard', 100, 2, 1),
(24, 0, 'Standard', 100, 2, 0),
(24, 1, 'Standard', 100, 2, 1),
(24, 2, 'Standard', 100, 2, 1),
(25, 0, 'Standard', 100, 2, 0),
(25, 1, 'Standard', 100, 2, 1),
(25, 2, 'Standard', 100, 2, 1),
(26, 0, 'Standard', 100, 2, 0),
(26, 1, 'Standard', 100, 2, 1),
(26, 2, 'Standard', 100, 2, 1),
(27, 0, 'Standard', 100, 2, 0),
(27, 1, 'Standard', 100, 2, 1),
(27, 2, 'Standard', 100, 2, 1),
(28, 0, 'Standard', 100, 2, 0),
(28, 1, 'Standard', 100, 2, 1),
(28, 2, 'Standard', 100, 2, 1),
(29, 0, 'Standard', 100, 2, 0),
(29, 1, 'Standard', 100, 2, 1),
(29, 2, 'Standard', 100, 2, 1),
(30, 0, 'Deluxe', 250, 4, 0),
(30, 1, 'Deluxe', 250, 4, 1),
(30, 2, 'Deluxe', 250, 4, 1),
(31, 0, 'Deluxe', 250, 4, 0),
(31, 1, 'Deluxe', 250, 4, 1),
(31, 2, 'Deluxe', 250, 4, 1),
(32, 0, 'Deluxe', 250, 4, 0),
(32, 1, 'Deluxe', 250, 4, 1),
(32, 2, 'Deluxe', 250, 4, 1),
(33, 0, 'Deluxe', 250, 4, 0),
(33, 1, 'Deluxe', 250, 4, 1),
(33, 2, 'Deluxe', 250, 4, 1),
(34, 0, 'Deluxe', 250, 4, 0),
(34, 1, 'Deluxe', 250, 4, 1),
(34, 2, 'Deluxe', 250, 4, 1),
(35, 0, 'Deluxe', 250, 4, 0),
(35, 1, 'Deluxe', 250, 4, 1),
(35, 2, 'Deluxe', 250, 4, 1);

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

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`Vendor_ID`, `Name`, `Email`, `Phone_Number`) VALUES
(1, 'Elegance Linens', 'EleganceLinens@gmail.com', '3123213521'),
(2, 'Spotless Solutions Co', 'spotlesscustomerservice@gmail.com', '3133465578'),
(3, 'Aesthetic Aura Furnishings ', 'aaurafurnishings@gmail.com', '4193214223'),
(4, 'Gastronova Provisions', 'gastronova@gmail.com', '3135670789');

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
-- Dumping data for table `vendor_hotel_association`
--

INSERT INTO `vendor_hotel_association` (`Vendor_ID`, `Hotel_ID`, `Material`) VALUES
(1, 0, 'linens, towels, and uniforms'),
(1, 1, 'linens, towels, and uniforms'),
(1, 2, 'linens, towels, and uniforms'),
(2, 0, 'cleaning products, equipment, and maintenance tools'),
(2, 1, 'cleaning products, equipment, and maintenance tools'),
(2, 2, 'cleaning products, equipment, and maintenance tools'),
(3, 0, 'furniture'),
(3, 1, 'furniture'),
(3, 2, 'furniture'),
(4, 0, 'food and beverages'),
(4, 1, 'food and beverages'),
(4, 2, 'food and beverages');

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
  ADD PRIMARY KEY (`Department_Number`,`Hotel_ID`),
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
  ADD PRIMARY KEY (`Room_Number`,`Hotel_ID`),
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
  MODIFY `Client_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `Department_Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=852;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Employee_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=670;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `Reservation_Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `Vendor_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
