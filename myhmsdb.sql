-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2024 at 12:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123'),
('admin@untiymed.com', 'UnityAdmin@1108'),
('admin@unitymed', 'unitymed');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `hospital_name` varchar(50) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `hospital_name`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(4, 1, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Surmai Hospital', 'Ganesh', 550, '2020-02-14', '10:00:00', 1, 0),
(4, 2, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', '', 'Dinesh', 700, '2020-02-28', '10:00:00', 0, 1),
(4, 3, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', '', 'Amit', 1000, '2020-02-19', '03:00:00', 0, 1),
(11, 4, 'Shraddha', 'Kapoor', 'Female', 'shraddha@gmail.com', '9768946252', '', 'ashok', 500, '2020-02-29', '20:00:00', 1, 1),
(4, 5, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', '', 'Dinesh', 700, '2020-02-28', '12:00:00', 1, 1),
(4, 6, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', '', 'Ganesh', 550, '2020-02-26', '15:00:00', 0, 1),
(2, 8, 'Alia', 'Bhatt', 'Female', 'alia@gmail.com', '8976897689', '', 'Ganesh', 550, '2020-03-21', '10:00:00', 1, 1),
(5, 9, 'Gautam', 'Shankararam', 'Male', 'gautam@gmail.com', '9070897653', '', 'Ganesh', 550, '2020-03-19', '20:00:00', 1, 0),
(4, 10, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', '', 'Ganesh', 550, '0000-00-00', '14:00:00', 1, 0),
(4, 11, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', '', 'Dinesh', 700, '2020-03-27', '15:00:00', 1, 1),
(9, 12, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', '', 'Kumar', 800, '2020-03-26', '12:00:00', 1, 1),
(9, 13, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', '', 'Tiwary', 450, '2020-03-26', '14:00:00', 1, 1),
(1, 14, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', '', 'ashok', 500, '2024-08-11', '08:00:00', 1, 1),
(1, 15, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', '', 'sangeeta', 1000, '2024-03-30', '08:00:00', 0, 1),
(1, 16, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', '', 'sangeeta', 1000, '2024-03-29', '08:00:00', 1, 1),
(1, 17, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', '', 'Sangeeta', 0, '2024-03-31', '10:00:00', 1, 1),
(1, 18, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', '', 'ashok', 0, '2024-04-06', '08:00:00', 1, 1),
(1, 19, 'Ram', 'Kumar', 'Male', '', '', '', 'Divesh', 1000, '2024-12-31', '10:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Anu', 'anu@gmail.com', '7896677554', 'Hey Admin'),
(' Viki', 'viki@gmail.com', '9899778865', 'Good Job, Pal'),
('Ananya', 'ananya@gmail.com', '9997888879', 'How can I reach you?'),
('Aakash', 'aakash@gmail.com', '8788979967', 'Love your site'),
('Mani', 'mani@gmail.com', '8977768978', 'Want some coffee?'),
('Karthick', 'karthi@gmail.com', '9898989898', 'Good service'),
('Abbis', 'abbis@gmail.com', '8979776868', 'Love your service'),
('Asiq', 'asiq@gmail.com', '9087897564', 'Love your service. Thank you!'),
('Jane', 'jane@gmail.com', '7869869757', 'I love your service!');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(225) NOT NULL,
  `hospital_name` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `spec` varchar(100) NOT NULL,
  `docFees` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `hospital_name`, `password`, `email`, `spec`, `docFees`) VALUES
('ashok', 'Apex Hospital', 'ashok123', 'ashok@apex.com', 'General', 500),
('amit', 'Thakur Multispecialty Hospital ', 'amit123', 'amit@thakur.com', 'Dental', 100),
('aman', 'Jeevan Jyoti Hospital', 'aman123', 'aman@jeevanjyoti.com', 'General', 2000),
('Doctor', 'Surmai Hospital', 'doctor123', 'doctor@surmai.com', 'General', 5000),
('Sangeeta', 'Surmai Hospital', 'sangeeta@surmai', 'sangeeta@surmai.hospital', 'Cardio', 200),
('Yash', 'Surmai Hospital', 'Yash@123', 'yash@surmail.hospital', 'Cardiologist', 1000),
('Divesh', 'Surmai Hospital', 'Divesh@123', 'divesh@surmail.hospital', 'Neurologist', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hospital_id` int(11) NOT NULL,
  `hospital_name` varchar(100) NOT NULL,
  `hospital_add` varchar(500) NOT NULL,
  `hospital_contact` varchar(15) NOT NULL,
  `hospital_email` varchar(100) NOT NULL,
  `hospital_password` varchar(100) NOT NULL,
  `hospital_cpassword` varchar(100) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hospital_id`, `hospital_name`, `hospital_add`, `hospital_contact`, `hospital_email`, `hospital_password`, `hospital_cpassword`, `datetime`) VALUES
(3, 'Surmai Hospital', 'Kandivali(East)', '9920168954', 'surmai@gmail.com', '859f2221265edd7ce971fcc55c6e823f', 'surmai123', '2024-03-24 08:13:29'),
(5, 'Dhanu Hospital', 'Thane(East)', '9920168954', 'dhanu@gmail.com', 'dhanu@123', 'dhanu@123', '2024-03-24 08:21:18'),
(15, 'MaxCare Hospital', 'Badlapur Ed, Mumbai.', '8898888270', 'maxcare@gmail.com', 'max@gmail.com', 'max@gmail.com', '2024-03-24 09:25:14'),
(16, 'Apex Hospital', 'Mulund(East)', '8888555522', 'apex12@gmail.com', 'Apex@1111', 'apex1111', '2024-03-24 09:27:40'),
(21, 'Jeevan Jyoti Hospital', 'Kandivali(East), Mumbai.', '9892552038', 'jeevanjyoti@hospital.com', '846697c661ecbd35e7512c19d62cbd11', 'Jeevan@123', '2024-03-24 11:11:41'),
(22, 'Thakur Multispecialty Hospital ', 'Thakur Village, Kandivali(E), Mumbai-101.', '9022257124', 'thakur@hospital.com', 'addd2ebbdd67fe6536084542f427b431', 'Thakur@123', '2024-03-28 11:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'ram123', 'ram123'),
(2, 'Alia', 'Bhatt', 'Female', 'alia@gmail.com', '8976897689', 'alia123', 'alia123'),
(3, 'Shahrukh', 'khan', 'Male', 'shahrukh@gmail.com', '8976898463', 'shahrukh123', 'shahrukh123'),
(4, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'kishan123', 'kishan123'),
(5, 'Gautam', 'Shankararam', 'Male', 'gautam@gmail.com', '9070897653', 'gautam123', 'gautam123'),
(6, 'Sushant', 'Singh', 'Male', 'sushant@gmail.com', '9059986865', 'sushant123', 'sushant123'),
(7, 'Nancy', 'Deborah', 'Female', 'nancy@gmail.com', '9128972454', 'nancy123', 'nancy123'),
(8, 'Kenny', 'Sebastian', 'Male', 'kenny@gmail.com', '9809879868', 'kenny123', 'kenny123'),
(9, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'william123', 'william123'),
(10, 'Peter', 'Norvig', 'Male', 'peter@gmail.com', '9609362815', 'peter123', 'peter123'),
(11, 'Shraddha', 'Kapoor', 'Female', 'shraddha@gmail.com', '9768946252', 'shraddha123', 'shraddha123'),
(13, 'Sumit', 'Kumawat', 'Male', 'kumawatsumit984@gmail.com', '7023704270', 'Satya@8898', 'Satya@8898');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Dinesh', 4, 11, 'Kishan', 'Lal', '2020-03-27', '15:00:00', 'Cough', 'Nothing', 'Just take a teaspoon of Benadryl every night'),
('Ganesh', 2, 8, 'Alia', 'Bhatt', '2020-03-21', '10:00:00', 'Severe Fever', 'Nothing', 'Take bed rest'),
('Kumar', 9, 12, 'William', 'Blake', '2020-03-26', '12:00:00', 'Sever fever', 'nothing', 'Paracetamol -> 1 every morning and night'),
('Tiwary', 9, 13, 'William', 'Blake', '2020-03-26', '14:00:00', 'Cough', 'Skin dryness', 'Intake fruits with more water content'),
('Divesh', 1, 19, 'Ram', 'Kumar', '2024-12-31', '10:00:00', 'Brain Tumer', 'Nothing', 'Drink at least 2-3 liters of alcohol daily to cure this Brain Tumer.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hospital_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
