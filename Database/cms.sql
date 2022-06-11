-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2022 at 05:46 AM
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
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'saba', '09-06-2022 11:21:20 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Non-Academic Issues', 'The Complaints related to Non-Academics staffs and Activities', '2022-06-08 07:11:45', NULL),
(2, 'Academic Appeals', 'The Complaints related to Academic Appeals', '2022-06-08 07:11:45', NULL),
(3, 'Health & Clean', 'The Complaints related toHealth & Clean', '2022-06-08 07:11:45', NULL),
(4, 'Ragging Issues', 'The Complaints related to Ragging Issues', '2022-06-08 07:11:45', NULL),
(5, 'Maintainence', 'The Complaints related toMaintainence', '2022-06-08 07:11:45', NULL),
(6, 'Students', 'The Complaints related to Students', '2022-06-08 07:11:45', NULL),
(7, 'Others', 'Others Complaints related to any Problems', '2022-06-08 07:11:45', '10-06-2022 10:40:17 AM');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2017-04-01 17:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2017-04-01 18:37:59'),
(3, 3, 'in process', 'test', '2017-05-02 15:57:43'),
(4, 19, 'closed', 'case solved', '2017-06-11 11:18:33'),
(5, 1, 'closed', 'This sample text for testing', '2018-09-05 17:08:26'),
(6, 23, 'in process', 'nala sapadu podorm', '2022-06-09 17:38:46'),
(7, 23, 'closed', 'finished', '2022-06-10 03:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) NOT NULL,
  `stateDescription` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(1, 'Applied Science', 'Department of physical Science \r\nFaculty of Applied Science\r\nCourses :IT & Mathematics of Computing', '2022-06-10 04:01:45', '2022-06-10 09:31:45'),
(2, 'Bio Science', 'Department of physical Science \r\nFaculty of Applied Science\r\nCourses : Environmental Science', '2022-06-10 04:02:45', '2022-06-10 10:31:45'),
(3, 'Marketing', 'Department of Business Studies Science \r\nFaculty of Applied Science\r\nCourses : Environmental Science', '2022-06-10 04:02:45', '2022-06-10 10:31:45'),
(4, 'Technology', 'Department of Technology \r\nFaculty of Technology\r\nCourses : Technology Studies', '2022-06-10 04:02:45', '2022-06-10 10:31:45'),
(5, 'Business Studies', 'Department of Business Studies \r\nFaculty of Business Studies\r\nCourses : Business,Marketting,Project Management', '2022-06-10 04:02:45', '2022-06-10 10:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 4, 'Physical Ragging', '2022-06-10 04:29:43', '2022-06-10 09:59:43'),
(2, 4, 'Call Ragging', '2022-06-10 04:29:43', '2022-06-10 09:59:43');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(23, 5, 1, 'Select Subcategory', ' Complaint', 'Jaffna', 'no food', 'there id s no fpoood in canteen', 'ios-14-2-3840x2160-artwork-night-4k-23206.jpg', '2022-06-09 17:35:34', 'closed', '2022-06-10 03:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(26, 0, 'sabananthan', 0x3a3a3100000000000000000000000000, '2022-06-06 13:42:19', '', 0),
(27, 2, 'saba.nanth@yahoo.com', 0x3a3a3100000000000000000000000000, '2022-06-08 07:04:39', '08-06-2022 12:55:07 PM', 1),
(28, 3, 'thilu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-08 17:23:49', '', 1),
(29, 2, 'saba.nanth@yahoo.com', 0x3a3a3100000000000000000000000000, '2022-06-09 12:13:16', '09-06-2022 06:53:38 PM', 1),
(30, 0, ' 2022-06-08 12:36:05', 0x3a3a3100000000000000000000000000, '2022-06-09 13:24:20', '', 0),
(31, 4, 'info@univ.jfn.ac.lk', 0x3a3a3100000000000000000000000000, '2022-06-09 13:24:36', '', 1),
(32, 5, 'kavi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-09 17:33:25', '', 1),
(33, 5, 'kavi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-10 03:58:48', '10-06-2022 09:44:09 AM', 1),
(34, 0, 'kavi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-10 04:15:08', '', 0),
(35, 5, 'kavi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-10 04:15:24', '10-06-2022 09:45:35 AM', 1),
(36, 5, 'kavi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-10 04:17:04', '10-06-2022 10:22:56 AM', 1),
(37, 5, 'kavi@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-10 14:24:48', '10-06-2022 07:54:51 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(2, 'S.Sabananthan', 'saba.nanth@yahoo.com', 'f80ebace5dd407dcb921a534a16780e2', 776847894, NULL, NULL, NULL, NULL, '4a8a15a67d1eecf9d7d27ecdd93c08bc.jpg', '2022-06-08 07:04:22', '2022-06-08 07:06:05', 1),
(5, 'kavitharan', 'kavi@gmail.com', '06964dce9addb1c5cb5d6e3d9838f733', 774847564, 'fafafafaff', 'Bio Science', '2017ict74', 40000, '6f669d70a9a2302aa537d852be87c164jpeg', '2022-06-09 17:33:10', '2022-06-10 04:28:44', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
