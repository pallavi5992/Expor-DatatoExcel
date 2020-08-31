-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2020 at 09:10 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `skills` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `table_employee`
--

CREATE TABLE `table_employee` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(500) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_employee`
--

INSERT INTO `table_employee` (`id`, `name`, `phone`, `email`, `status`) VALUES
(1, 'KAYLING', 987654321, 'KAYLING@gmail.com', 'Active'),
(2, 'Smith ', 999999999, 'Smith @gmail.com', 'Active'),
(3, 'Anurag', 888888888, 'anurag@gmail.com', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `table_employee_address`
--

CREATE TABLE `table_employee_address` (
  `id` int(11) NOT NULL,
  `emp_id` int(10) NOT NULL,
  `employee_postal_address` varchar(500) NOT NULL,
  `employee_permanent_address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_employee_address`
--

INSERT INTO `table_employee_address` (`id`, `emp_id`, `employee_postal_address`, `employee_permanent_address`) VALUES
(1, 1, 'KAYLING road xyz', 'xyz  permanent address'),
(2, 2, 'Smith road', 'permanent address'),
(3, 3, 'gjhg yky', 'permanent address hjmhj,mh');

-- --------------------------------------------------------

--
-- Table structure for table `table_employee_department`
--

CREATE TABLE `table_employee_department` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `department_tittle` varchar(10) NOT NULL,
  `dep_manager` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_employee_department`
--

INSERT INTO `table_employee_department` (`id`, `emp_id`, `department_tittle`, `dep_manager`) VALUES
(1, 1, 'IT', 'ABC'),
(2, 2, 'HR', 'XYZ'),
(3, 3, 'ACCOUNT', 'Smit');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_employee`
--
ALTER TABLE `table_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_employee_address`
--
ALTER TABLE `table_employee_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IX_table_employee_addressemp_id` (`emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_employee`
--
ALTER TABLE `table_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `table_employee_address`
--
ALTER TABLE `table_employee_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
