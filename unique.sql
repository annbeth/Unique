-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2019 at 05:17 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unique`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`fname`, `lname`, `uname`, `password`, `status`) VALUES
('Joan', 'Admin', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bookingID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `route` varchar(50) NOT NULL,
  `pickup_loc` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `seats` int(5) NOT NULL,
  `vehicle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookingID`, `username`, `route`, `pickup_loc`, `date`, `time`, `seats`, `vehicle`) VALUES
(13, 'ednasandra', '1', 'muttui', '2017-06-12', '06:00:00', 2, 'sdfghjk'),
(14, 'ednasandra', '1', 'LOc', '2017-07-10', '06:00:00', 3, 'sdfghjk'),
(15, 'ednasandra', '1', 'Ruiri', '2017-06-12', '06:00:00', 1, 'sdfghjk'),
(16, 'ednasandra', '1', 'Jaa', '2017-07-10', '06:00:00', 1, 'sdfghjk'),
(17, 'ednasandra', '1', 'nfgnb', '2017-06-13', '06:00:00', 2, 'sdfghjk'),
(23, 'ednasandra', '2', 'nkubu', '2017-06-12', '06:00:00', 6, 'sdfghjk'),
(26, 'ednasandra', '3', 'nkubu', '2017-06-16', '08:00:00', 5, 'KBC002'),
(27, 'ednasandra', '', 'nkubu', '2017-06-12', '08:00:00', 2, 'KBC002'),
(28, 'ednasandra', '1', 'nkubu', '2017-06-12', '08:00:00', 2, 'KBC002'),
(29, 'ednasandra', '3', 'nkubu', '2017-06-14', '08:00:00', 4, 'KBC002'),
(30, 'ednasandra', '3', 'nkubu', '2017-06-14', '08:00:00', 5, 'KBC002'),
(31, 'salim', '2', 'nairobi', '2017-10-12', '12:00:00', 1, 'kba006');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`fname`, `lname`, `username`, `phone`, `email`, `password`) VALUES
('edna', 'mwendwa', 'ednamwendwa', '0711129830', 'ednamwenda@gmail.com', 'f5fa02bc60f633f3b1781a824f5211b5'),
('mwenda', 'edna', 'ednasandra', '098765', 'ednasandra@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
('ian', 'munene', 'muneneian', '0707111134', 'ianmune@gmail.com', 'a71a448d3d8474653e831749b8e71fcc'),
('Tito', 'Salim', 'salim', '0707724479', 'salim@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
('Muteti', 'Syl', 'Sirlym', '6796967098', 'sylv@gmail.com', '202cb962ac59075b964b07152d234b70'),
('Muteti', 'Sylvester', 'Syl', '75688', 'muteti@gmail.com', '202cb962ac59075b964b07152d234b70'),
('Edna', 'User', 'user', '567879', 'user@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `empID` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`fname`, `lname`, `empID`, `phone`, `status`) VALUES
('Mutua', 'Muteti', 'UNQ001', '234567', 'assigned'),
('moses', 'john', 'UNQ002', '0734552524', 'assigned'),
('John', 'mutegi', 'UNQ003', '0705345678', 'assigned'),
('dancun', 'kimathi', 'UNQ004', '0734532134', 'assigned'),
('damaris', 'kagendo', 'UNQ005', '07893456345', 'assigned');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentID` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `transactionID` varchar(50) NOT NULL,
  `bookingID` int(50) NOT NULL,
  `price` int(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentID`, `phone`, `transactionID`, `bookingID`, `price`, `status`) VALUES
(22, '345678', 'sdfghjk', 16, 500, 'confirmed'),
(23, '34567', 'HGDHSFKJD', 17, 1000, 'confirmed'),
(24, '0703678453', '12345', 29, 1200, 'paid'),
(25, '0703567745', '3456', 30, 1500, 'paid'),
(26, '0707724479', 'fderthjkl', 31, 600, 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `routeID` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`routeID`, `description`, `price`) VALUES
(1, 'Nairobi - Meru', 500),
(2, 'Meru - Nairobi', 600),
(3, 'Meru - Maua', 300),
(4, 'nakuru - nairobi', 300);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `regNo` varchar(50) NOT NULL,
  `route` int(50) NOT NULL,
  `driver` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`regNo`, `route`, `driver`, `time`) VALUES
('KAD009', 4, 'UNQ005', '16:00'),
('kaq007', 2, 'UNQ004', '10:00'),
('kba006', 4, 'UNQ003', '12:00'),
('KBC002', 3, 'UNQ002', '08:00'),
('sdfghjk', 1, 'UNQ001', '06:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`uname`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bookingID`),
  ADD KEY `username` (`username`),
  ADD KEY `vehicle` (`vehicle`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`empID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`),
  ADD UNIQUE KEY `bookingID` (`bookingID`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`routeID`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`regNo`),
  ADD KEY `driver` (`driver`),
  ADD KEY `route` (`route`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `routeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`username`) REFERENCES `customers` (`username`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`vehicle`) REFERENCES `vehicle` (`regNo`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`bookingID`) REFERENCES `booking` (`bookingID`);

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`route`) REFERENCES `route` (`routeID`),
  ADD CONSTRAINT `vehicle_ibfk_2` FOREIGN KEY (`driver`) REFERENCES `employees` (`empID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
