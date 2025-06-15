-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2024 at 07:40 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kingshcut`
--

-- --------------------------------------------------------

--
-- Table structure for table `msservice`
--

CREATE TABLE `msservice` (
  `ServiceID` char(5) NOT NULL,
  `ServiceTypeID` char(5) DEFAULT NULL,
  `ServiceName` varchar(30) NOT NULL,
  `ServicePrice` int(11) NOT NULL,
  `ServiceDuration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `msservice`
--

INSERT INTO `msservice` (`ServiceID`, `ServiceTypeID`, `ServiceName`, `ServicePrice`, `ServiceDuration`) VALUES
('SV001', 'ST001', 'Mullet Haircut', 200121, 12),
('SV002', 'ST002', 'Down Perm', 175000, 90),
('SV003', 'ST002', 'Korean Perm', 400000, 90),
('SV004', 'ST001', 'Kids Haircut', 50000, 45),
('SV005', 'ST003', 'Basic Hair Color', 275000, 90),
('SV006', 'ST003', 'Fashion Hair Color', 300000, 90),
('SV007', 'ST004', 'Hair Loss Treatment', 125000, 60),
('SV008', 'ST004', 'Hair Repair Treatment', 150000, 60),
('SV009', 'ST001', 'Haircut Botak', 12345, 12),
('SV010', 'ST005', 'Hair Tattoo', 140000, 60);

-- --------------------------------------------------------

--
-- Table structure for table `msservicetype`
--

CREATE TABLE `msservicetype` (
  `ServiceTypeID` char(5) NOT NULL,
  `ServiceTypeName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `msservicetype`
--

INSERT INTO `msservicetype` (`ServiceTypeID`, `ServiceTypeName`) VALUES
('ST001', 'Haircut'),
('ST002', 'Hair Perming'),
('ST003', 'Hair Coloring'),
('ST004', 'Hair Treatment'),
('ST005', 'Hair Tattoo');

-- --------------------------------------------------------

--
-- Table structure for table `msuser`
--

CREATE TABLE `msuser` (
  `UserID` char(5) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `UserPassword` varchar(20) NOT NULL,
  `UserEmail` varchar(40) NOT NULL,
  `UserRole` varchar(10) NOT NULL,
  `UserGender` varchar(10) NOT NULL,
  `UserPhoneNumber` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `msuser`
--

INSERT INTO `msuser` (`UserID`, `Username`, `UserPassword`, `UserEmail`, `UserRole`, `UserGender`, `UserPhoneNumber`) VALUES
('US001', 'khadmin', 'khadmin123', 'khadmin@gmail.com', 'Admin', 'Male', '085512312312'),
('US002', 'lucas', 'lucas123', 'lucas@gmail.com', 'User', 'Male', '081232321123'),
('US003', 'sophia', 'sophia123', 'sophia@gmail.com', 'User', 'Female', '0855122312'),
('US004', 'ethanadmin', 'ethanadmin123', 'ethanadmin@gmail.com', 'Admin', 'Male', '08551233127'),
('US005', 'avaadmin', 'avaadmin123', 'avaadmin@gmail.com', 'Admin', 'Female', '085553543321'),
('US006', 'olivia', 'olivia123', 'olivia@gmail.com', 'User', 'Female', '08157879123'),
('US007', 'liam', 'liam123', 'liam@gmail.com', 'User', 'Male', '08123344553'),
('US008', 'macky', 'asdf1234', 'macky@gmail.com', 'User', 'Female', '6281289567686'),
('US009', 'efewhi', 'asdf1234', 'm@gmail.com', 'User', 'Male', '629876543'),
('US010', 'laras', 'laras123', 'laras@gmail.com', 'User', 'Female', '08123456789'),
('US011', 'larasadmin', 'asdf1234', 'larasadmin@gmail.com', 'Admin', 'Female', '098765432'),
('US012', 'akundummy', 'asdf1234', 'akundummy@gmail.com', 'User', 'Female', '07182934857'),
('US013', 'adMiNdummy', 'asdf1234', 'dummy@gmail.com', 'Admin', 'Male', '0617823741');

-- --------------------------------------------------------

--
-- Table structure for table `reservationdetail`
--

CREATE TABLE `reservationdetail` (
  `ReservationID` char(5) NOT NULL,
  `ServiceID` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservationdetail`
--

INSERT INTO `reservationdetail` (`ReservationID`, `ServiceID`) VALUES
('RS001', 'SV001'),
('RS001', 'SV007'),
('RS002', 'SV001'),
('RS002', 'SV002'),
('RS003', 'SV001'),
('RS003', 'SV005'),
('RS004', 'SV006'),
('RS005', 'SV001'),
('RS005', 'SV007'),
('RS005', 'SV008'),
('RS005', 'SV009'),
('RS006', 'SV001'),
('RS006', 'SV002'),
('RS007', 'SV001'),
('RS007', 'SV006'),
('RS008', 'SV001'),
('RS008', 'SV010'),
('RS009', 'SV001'),
('RS009', 'SV003'),
('RS010', 'SV004'),
('RS012', 'SV010'),
('RS015', 'SV010'),
('RS016', 'SV010'),
('RS017', 'SV010'),
('RS018', 'SV010'),
('RS021', 'SV010'),
('RS022', 'SV010'),
('RS023', 'SV002'),
('RS024', 'SV005'),
('RS025', 'SV006');

-- --------------------------------------------------------

--
-- Table structure for table `reservationheader`
--

CREATE TABLE `reservationheader` (
  `ReservationID` char(5) NOT NULL,
  `UserID` char(5) NOT NULL,
  `ReservationDate` date NOT NULL,
  `StartReservationTime` time NOT NULL,
  `EndReservationTime` time NOT NULL,
  `ReservationStatus` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservationheader`
--

INSERT INTO `reservationheader` (`ReservationID`, `UserID`, `ReservationDate`, `StartReservationTime`, `EndReservationTime`, `ReservationStatus`) VALUES
('RS001', 'US001', '2024-01-19', '14:30:00', '16:15:00', 'Finished'),
('RS002', 'US002', '2024-01-19', '16:30:00', '18:45:00', 'Finished'),
('RS003', 'US003', '2024-01-20', '10:30:00', '12:45:00', 'Finished'),
('RS004', 'US004', '2024-01-20', '13:30:00', '15:00:00', 'Finished'),
('RS005', 'US005', '2024-01-21', '11:30:00', '15:45:00', 'Finished'),
('RS006', 'US006', '2024-01-22', '10:30:00', '12:45:00', 'Cancelled'),
('RS007', 'US007', '2024-01-23', '13:30:00', '15:45:00', 'Cancelled'),
('RS008', 'US002', '2024-01-24', '16:00:00', '17:45:00', 'Cancelled'),
('RS009', 'US003', '2024-01-24', '18:00:00', '20:15:00', 'Finished'),
('RS010', 'US004', '2024-01-25', '18:00:00', '18:45:00', 'Finished'),
('RS011', 'US010', '2024-12-18', '10:00:00', '10:00:00', 'Cancelled'),
('RS012', 'US010', '2024-12-22', '19:19:00', '20:19:00', 'Cancelled'),
('RS013', 'US010', '2024-12-25', '20:12:00', '20:12:00', 'Finished'),
('RS014', 'US010', '2024-12-17', '12:00:00', '12:00:00', 'Cancelled'),
('RS015', 'US010', '2024-12-17', '20:10:00', '21:10:00', 'Cancelled'),
('RS016', 'US010', '2024-12-17', '09:10:00', '10:10:00', 'Finished'),
('RS017', 'US010', '2024-12-17', '20:00:00', '21:00:00', 'Cancelled'),
('RS018', 'US006', '2024-12-17', '13:00:00', '14:00:00', 'Cancelled'),
('RS019', 'US006', '2024-12-19', '12:00:00', '12:00:00', 'Finished'),
('RS020', 'US008', '2024-12-25', '12:12:00', '12:12:00', 'Cancelled'),
('RS021', 'US008', '2024-12-25', '21:00:00', '22:00:00', 'Cancelled'),
('RS022', 'US008', '2024-12-25', '21:00:00', '22:00:00', 'Finished'),
('RS023', 'US008', '2024-12-25', '21:00:00', '22:30:00', 'Finished'),
('RS024', 'US010', '2024-12-25', '21:00:00', '22:30:00', 'Cancelled'),
('RS025', 'US012', '2024-12-26', '20:00:00', '21:30:00', 'Cancelled');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `msservice`
--
ALTER TABLE `msservice`
  ADD PRIMARY KEY (`ServiceID`),
  ADD KEY `ServiceTypeID` (`ServiceTypeID`);

--
-- Indexes for table `msservicetype`
--
ALTER TABLE `msservicetype`
  ADD PRIMARY KEY (`ServiceTypeID`);

--
-- Indexes for table `msuser`
--
ALTER TABLE `msuser`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `reservationdetail`
--
ALTER TABLE `reservationdetail`
  ADD PRIMARY KEY (`ReservationID`,`ServiceID`),
  ADD KEY `ServiceID` (`ServiceID`);

--
-- Indexes for table `reservationheader`
--
ALTER TABLE `reservationheader`
  ADD PRIMARY KEY (`ReservationID`),
  ADD KEY `UserID` (`UserID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `msservice`
--
ALTER TABLE `msservice`
  ADD CONSTRAINT `msservice_ibfk_1` FOREIGN KEY (`ServiceTypeID`) REFERENCES `msservicetype` (`ServiceTypeID`);

--
-- Constraints for table `reservationdetail`
--
ALTER TABLE `reservationdetail`
  ADD CONSTRAINT `reservationdetail_ibfk_1` FOREIGN KEY (`ReservationID`) REFERENCES `reservationheader` (`ReservationID`),
  ADD CONSTRAINT `reservationdetail_ibfk_2` FOREIGN KEY (`ServiceID`) REFERENCES `msservice` (`ServiceID`);

--
-- Constraints for table `reservationheader`
--
ALTER TABLE `reservationheader`
  ADD CONSTRAINT `reservationheader_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `msuser` (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
