-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2023 at 02:28 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking_meeting`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `B_ID` int(11) NOT NULL,
  `B_DATE` date DEFAULT NULL,
  `B_TIME` varchar(10) DEFAULT NULL,
  `B_ROOM_ID` int(11) NOT NULL,
  `B_USER_ID` int(11) NOT NULL,
  `B_CHAIR` int(11) DEFAULT NULL,
  `REMARKS` varchar(255) DEFAULT NULL,
  `CREATE_AT` datetime DEFAULT NULL,
  `CREATE_BY` int(11) DEFAULT NULL,
  `UPDATE_AT` datetime DEFAULT NULL,
  `UPDATE_BY` int(11) DEFAULT NULL,
  `IS_ACTIVE` int(11) NOT NULL DEFAULT 1 COMMENT '0 = Not Active, 1 = Active',
  `STATUS` varchar(40) DEFAULT 'WAITING',
  `APPROVE_BY` int(11) DEFAULT NULL,
  `APPROVE_AT` datetime DEFAULT NULL,
  `CANCEL_BY` int(11) DEFAULT NULL,
  `CANCEL_AT` datetime DEFAULT NULL,
  `EMP_REMARKS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`B_ID`, `B_DATE`, `B_TIME`, `B_ROOM_ID`, `B_USER_ID`, `B_CHAIR`, `REMARKS`, `CREATE_AT`, `CREATE_BY`, `UPDATE_AT`, `UPDATE_BY`, `IS_ACTIVE`, `STATUS`, `APPROVE_BY`, `APPROVE_AT`, `CANCEL_BY`, `CANCEL_AT`, `EMP_REMARKS`) VALUES
(12, '2023-06-24', 'MORNING', 1, 17, 6, '', '2023-06-24 15:56:17', 17, '2023-06-28 23:01:49', 21, 1, 'APPROVED', 21, '2023-06-28 23:01:49', NULL, NULL, ''),
(13, '2023-06-24', 'AFTERNOON', 1, 17, 2, '23r23', '2023-06-24 16:01:31', 17, NULL, NULL, 1, 'WAITING', NULL, NULL, NULL, NULL, NULL),
(14, '2023-06-24', 'MORNING', 2, 17, 7, '', '2023-06-24 16:44:03', 17, NULL, NULL, 1, 'WAITING', NULL, NULL, NULL, NULL, NULL),
(15, '2023-06-23', 'MORNING', 1, 17, 5, '', '2023-06-24 16:44:31', 17, NULL, NULL, 1, 'WAITING', NULL, NULL, NULL, NULL, NULL),
(16, '2023-07-01', 'FULLDATE', 4, 17, 3, '', '2023-06-25 02:55:23', 17, NULL, NULL, 1, 'APPROVED', 1, '2023-06-25 02:55:23', NULL, NULL, NULL),
(17, '2023-06-30', 'AFTERNOON', 1, 20, 1, '', '2023-06-30 10:41:36', 20, '2023-06-30 10:41:56', 20, 1, 'APPROVED', 20, '2023-06-30 10:41:56', NULL, NULL, ''),
(18, '2023-08-01', 'FULLDATE', 1, 24, 1, '', '2023-06-30 12:45:22', 24, '2023-06-30 12:46:58', 20, 1, 'APPROVED', 20, '2023-06-30 12:46:58', NULL, NULL, ''),
(19, '2023-08-01', 'MORNING', 2, 24, 9, '', '2023-06-30 12:50:01', 24, '2023-06-30 12:54:02', 20, 1, 'APPROVED', 20, '2023-06-30 12:54:02', NULL, NULL, ''),
(20, '2023-06-30', 'AFTERNOON', 4, 24, 5, '', '2023-06-30 12:53:32', 24, '2023-06-30 12:54:09', 20, 1, 'APPROVED', 20, '2023-06-30 12:54:09', NULL, NULL, ''),
(21, '2023-06-10', 'AFTERNOON', 3, 24, 15, '', '2023-06-30 12:58:53', 24, NULL, NULL, 1, 'WAITING', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `N_ID` int(11) NOT NULL,
  `MESSAGE` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `READ` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `TO_USER` int(11) DEFAULT NULL,
  `CREATE_AT` datetime NOT NULL,
  `CREATE_BY` int(11) NOT NULL,
  `UPDATE_AT` datetime DEFAULT NULL,
  `UPDATE_BY` int(11) DEFAULT NULL,
  `IS_ACTIVE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`N_ID`, `MESSAGE`, `READ`, `TO_USER`, `CREATE_AT`, `CREATE_BY`, `UPDATE_AT`, `UPDATE_BY`, `IS_ACTIVE`) VALUES
(1, 'คุณได้รับ ฆ?ฆ', 'Y', 21, '2023-06-29 20:24:34', -1, NULL, NULL, 1),
(18, 'คุณได้รับ ฆ?ฆ', 'Y', 21, '2023-06-29 20:24:34', -1, NULL, NULL, 1),
(19, 'คุณได้รับ ฆ?ฆ', 'Y', 21, '2023-06-29 20:24:34', -1, NULL, NULL, 1),
(20, 'คุณได้รับ ฆ?ฆ', 'Y', 21, '2023-06-29 20:24:34', -1, NULL, NULL, 1),
(21, 'คุณได้รับ ฆ?ฆ', 'Y', 21, '2023-06-29 20:24:34', -1, NULL, NULL, 1),
(22, 'การจองของคุณได้รับการอนุมัติเรียบร้อยแล้ว', 'N', 20, '2023-06-30 10:41:56', 20, NULL, NULL, 1),
(23, 'การจองของคุณได้รับการอนุมัติเรียบร้อยแล้ว', 'N', 24, '2023-06-30 12:46:59', 20, NULL, NULL, 1),
(24, 'การจองของคุณได้รับการอนุมัติเรียบร้อยแล้ว', 'N', 24, '2023-06-30 12:54:02', 20, NULL, NULL, 1),
(25, 'การจองของคุณได้รับการอนุมัติเรียบร้อยแล้ว', 'N', 24, '2023-06-30 12:54:09', 20, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `P_ID` int(11) NOT NULL,
  `P_NAME` varchar(40) NOT NULL,
  `P_CODE` varchar(20) DEFAULT NULL,
  `CREATE_AT` datetime NOT NULL,
  `CREAYE_BY` int(11) NOT NULL,
  `UPDATE_AT` datetime DEFAULT NULL,
  `UPDATE_BY` int(11) DEFAULT NULL,
  `IS_ACTIVE` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`P_ID`, `P_NAME`, `P_CODE`, `CREATE_AT`, `CREAYE_BY`, `UPDATE_AT`, `UPDATE_BY`, `IS_ACTIVE`) VALUES
(1, 'Student', 'STU', '2023-05-22 20:03:09', -1, NULL, NULL, 2),
(2, 'Employee', 'EMP', '2023-05-22 20:03:09', -1, NULL, NULL, 2),
(3, 'Manager', 'MA', '2023-05-22 20:03:09', -1, NULL, NULL, 2),
(4, 'Admin', 'ADMIN', '2023-05-22 20:03:09', -1, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `R_ID` int(11) NOT NULL,
  `R_NAME` varchar(200) NOT NULL,
  `R_CODE` varchar(20) DEFAULT NULL,
  `R_CHAIR` int(11) DEFAULT NULL,
  `R_TYPE` varchar(200) DEFAULT NULL,
  `R_STATUS` enum('Y','E','B') NOT NULL,
  `R_LOCATION` varchar(200) DEFAULT NULL,
  `R_ATTENDANT` int(11) DEFAULT NULL,
  `R_EQUIPMENT` varchar(255) DEFAULT NULL,
  `IMAGES` blob DEFAULT NULL,
  `CREATE_AT` datetime NOT NULL,
  `CREATE_BY` int(11) NOT NULL,
  `UPDATE_AT` datetime DEFAULT NULL,
  `UPDATE_BY` int(11) DEFAULT NULL,
  `IS_ACTIVE` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`R_ID`, `R_NAME`, `R_CODE`, `R_CHAIR`, `R_TYPE`, `R_STATUS`, `R_LOCATION`, `R_ATTENDANT`, `R_EQUIPMENT`, `IMAGES`, `CREATE_AT`, `CREATE_BY`, `UPDATE_AT`, `UPDATE_BY`, `IS_ACTIVE`) VALUES
(1, 'MR101', 'A1', 6, 'เล็ก', 'Y', 'NPRU', 20, 'คอมพิวเตอร์, เครื่องฉายโปรเจคเตอร,์ จอโปรเจคเตอร์, ไมโครโฟน, ลำโพง', 0x5b0d0a0922696d616765732f726f6f6d732f41312f696d675f312e6a7067222c0d0a0922696d616765732f726f6f6d732f41312f696d675f322e6a7067222c0d0a0922696d616765732f726f6f6d732f41312f696d675f332e6a7067222c0d0a0922696d616765732f726f6f6d732f41312f696d675f342e6a7067220d0a5d, '2023-05-27 03:03:49', -1, NULL, NULL, 1),
(2, 'MR201', 'A2', 10, 'กลาง', 'Y', 'NPRU', 20, 'คอมพิวเตอร์, เครื่องฉายโปรเจคเตอร,์ จอโปรเจคเตอร์, ไมโครโฟน, ลำโพง', 0x5b0d0a0922696d616765732f726f6f6d732f41312f696d675f312e6a7067222c0d0a0922696d616765732f726f6f6d732f41312f696d675f322e6a7067222c0d0a0922696d616765732f726f6f6d732f41312f696d675f332e6a7067222c0d0a0922696d616765732f726f6f6d732f41312f696d675f342e6a7067220d0a5d, '2023-05-27 03:03:49', -1, NULL, NULL, 1),
(3, 'MR301', 'A3', 16, 'ใหญ่', 'E', 'NPRU', 20, 'คอมพิวเตอร์, เครื่องฉายโปรเจคเตอร,์ จอโปรเจคเตอร์, ไมโครโฟน, ลำโพง', 0x5b0d0a0922696d616765732f726f6f6d732f41312f696d675f312e6a7067222c0d0a0922696d616765732f726f6f6d732f41312f696d675f322e6a7067222c0d0a0922696d616765732f726f6f6d732f41312f696d675f332e6a7067222c0d0a0922696d616765732f726f6f6d732f41312f696d675f342e6a7067220d0a5d, '2023-05-27 03:03:49', -1, NULL, NULL, 1),
(4, 'MR102', 'A4', 6, 'เล็ก', 'Y', 'NPRU', 20, 'คอมพิวเตอร์, เครื่องฉายโปรเจคเตอร,์ จอโปรเจคเตอร์, ไมโครโฟน, ลำโพง', 0x5b0d0a0922696d616765732f726f6f6d732f41312f696d675f312e6a7067222c0d0a0922696d616765732f726f6f6d732f41312f696d675f322e6a7067222c0d0a0922696d616765732f726f6f6d732f41312f696d675f332e6a7067222c0d0a0922696d616765732f726f6f6d732f41312f696d675f342e6a7067220d0a5d, '2023-05-27 03:03:49', -1, NULL, NULL, 1),
(5, 'MR202', 'A5', 10, 'กลาง', 'E', 'NPRU', 20, 'คอมพิวเตอร์, เครื่องฉายโปรเจคเตอร,์ จอโปรเจคเตอร์, ไมโครโฟน, ลำโพง', 0x5b0d0a0922696d616765732f726f6f6d732f41312f696d675f312e6a7067222c0d0a0922696d616765732f726f6f6d732f41312f696d675f322e6a7067222c0d0a0922696d616765732f726f6f6d732f41312f696d675f332e6a7067222c0d0a0922696d616765732f726f6f6d732f41312f696d675f342e6a7067220d0a5d, '2023-05-27 03:03:49', -1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USER_ID` int(11) NOT NULL,
  `FIRSTNAME` varchar(40) DEFAULT NULL,
  `LASTNAME` varchar(40) DEFAULT NULL,
  `ID_CARD` int(11) NOT NULL,
  `STUDENT_ID` int(11) NOT NULL,
  `EMAIL` varchar(40) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `PHONE` varchar(10) DEFAULT NULL,
  `PROFILE_PATH` varchar(255) DEFAULT NULL,
  `USER_POSITION` int(11) NOT NULL,
  `IP_ADDRESS` varchar(15) DEFAULT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `CREATE_AT` datetime NOT NULL,
  `CREATE_BY` int(11) NOT NULL COMMENT '-1 = System',
  `UPDATE_AT` datetime DEFAULT NULL,
  `UPDATE_BY` int(11) DEFAULT NULL,
  `USER_ACTIVE` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '0 = Not Active, 1 = Active',
  `BIRTHDAY` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USER_ID`, `FIRSTNAME`, `LASTNAME`, `ID_CARD`, `STUDENT_ID`, `EMAIL`, `PASSWORD`, `PHONE`, `PROFILE_PATH`, `USER_POSITION`, `IP_ADDRESS`, `LAST_LOGIN`, `CREATE_AT`, `CREATE_BY`, `UPDATE_AT`, `UPDATE_BY`, `USER_ACTIVE`, `BIRTHDAY`) VALUES
(5, 'มณฑาทิพย์', 'สว่างแจ้ง', 2147483647, 666666666, 'Montathip@gmail.com', '$2y$10$v.dtEkLbWNM8qE7HmyHNOeIn51FTOJ5H/GGLA.W33Fn2lIUYijSDi', '0611230382', NULL, 1, '127.0.0.1', '2023-05-27 16:20:42', '2023-05-22 21:01:28', -1, NULL, NULL, '1', '0000-00-00'),
(6, 'สิรินภา', 'ฟ้ากว้าง', 2147483647, 741080341, 'Siri2558@gmail.com', '$2y$10$vb.9DgR1Shz8Ror1KBqKq.dI7aUSxfYEOzZrQddkgoTOSUIDzUTwa', '0573856520', NULL, 4, '192.168.0.1', NULL, '2023-05-22 21:40:49', -1, NULL, NULL, '1', '2023-05-22'),
(7, 'พิรุณ', 'สุขสมใจ', 2147483647, 326047459, 'Piroonsuk2562@gmail.com', '$2y$10$qBCy/.UUpkzwfdhxFOrFtuNTcLGzXxOHqfNuvOIGpNcV/6R8RSKpe', '0639223933', NULL, 4, '192.168.0.1', '2023-05-22 21:42:47', '2023-05-22 21:42:43', -1, NULL, NULL, '1', '2023-05-22'),
(8, 'เจตรินทร์', 'ปินเมฆา', 2147483647, 587236556, 'Jet_zanaza@gmail.com', '$2y$10$dE9KUq/yXESAYTEnbpN6yOzfxSCbfnc95UrmLLwFGQbHMZkbL2x0q', '0389017274', NULL, 4, '192.168.0.1', NULL, '2023-05-22 21:43:42', -1, NULL, NULL, '1', '2023-05-22'),
(9, 'ผกากรอง', 'แก้วมรกต', 2147483647, 98129552, 'phakakrong_nam@gmail.com', '$2y$10$wHO5xWpNkQA8MhwWCSqKUeR2oG1AUSRtoMwqCOqb4WehAUe.oUa5O', '0228685367', NULL, 4, '192.168.0.1', NULL, '2023-05-22 21:43:45', -1, NULL, NULL, '1', '2023-05-22'),
(10, 'เกิยรติภูมิ', 'ภาคภูมิ', 2147483647, 384525605, 'phoom_pakphoom@gmail.com', '$2y$10$ofh8HuaNLv6zDBVXUT/Qj.Qbb5QCs1qxMaTFHlziDA2p0fc8meTTu', '0360727564', NULL, 4, '192.168.0.1', NULL, '2023-05-22 21:43:50', -1, NULL, NULL, '1', '2023-05-22'),
(11, 'ธารธารา', 'อยู่ร่มเย็น', 2147483647, 225370767, 'thantara099@gmail.com', '$2y$10$6oHw2ZCZ8a1DszrGT3M.Z.hIpEPfGNA/HXdiVh80KAyr9Nz7mPxLG', '0435514771', NULL, 4, '192.168.0.1', NULL, '2023-05-22 21:43:55', -1, NULL, NULL, '1', '2023-05-22'),
(12, 'เมธินี', 'ศรีสวรรค์', 2147483647, 403174681, 'may_srisawan313@gmail.com', '$2y$10$szSEtapFUjSrrRh5EkB5KOfs.4El5WiTZksq38KD105Fe/mJ4PZoa', '0971157727', NULL, 4, '192.168.0.1', NULL, '2023-05-22 21:44:03', -1, NULL, NULL, '1', '2023-05-22'),
(13, 'ศักดิ์ชัย', 'นิยมสุข', 2147483647, 946142399, 'sakchaiaidee@gmail.com', '$2y$10$l2XT6N4JF3LbO.oUZnWTXOlsWHH0XpULnW8j5eiN3FCPloas1nWu.', '0020889833', NULL, 4, '192.168.0.1', NULL, '2023-05-22 21:44:05', -1, NULL, NULL, '1', '2023-05-22'),
(14, 'อินทิรัตน์', 'ประกายแก้ว', 2147483647, 310507361, 'inthirat_ink@gmail.com', '$2y$10$Tz13bm62/eNEC7fhhtupbOuVuBNW5pPWwnMjpXYsMT7blFGo3a4E6', '0920487085', NULL, 4, '192.168.0.1', NULL, '2023-05-22 21:44:52', -1, NULL, NULL, '1', '2023-05-22'),
(15, 'ลลันลร', 'งามสมใจ', 2147483647, 248159005, 'lalanlon2541@gmail.com', '$2y$10$LgjDCA3AMLJ.nlv1KbYymO4bpLnpL1aPrKIdTYdRPcdhJGq7xhdvW', '0696552928', NULL, 4, '192.168.0.1', '2023-05-24 21:01:02', '2023-05-24 20:54:57', -1, NULL, NULL, '1', '2023-05-24'),
(16, 'วริศรา', 'รุ่งเรือง', 2147483647, 362503403, 'waris_2535@gmail.com', '$2y$10$a2Rn4JsS5.oHlLKLdVCaCugF7wpJsHC7EW15lkE0l2NQBxOIgVC7K', '0625512258', NULL, 4, '192.168.0.1', '2023-06-11 11:49:02', '2023-06-11 11:47:46', -1, NULL, NULL, '1', '2023-06-11'),
(17, 'หทัยรัตน์', 'ปิ่นแก้ว', 2147483647, 70823057, 'hathairat_pinkeaw@gmail.com', '$2y$10$VRkBM35e5uMgp0/tn2579uJb3lmc2ymQveA1KzvBp6JfD7vWJg7sq', '0689832810', NULL, 4, '192.168.0.1', '2023-06-26 18:13:10', '2023-06-11 11:54:21', -1, NULL, NULL, '1', '2023-06-11'),
(18, 'อาทิตยาพร', 'จรัสแสง', 2147483647, 255428224, 'athidtaya2537@gmail.com', '$2y$10$WjvhlWAWLBzweA9ktvHse.OisJqVEX2BsxO1T.eI4LRw45pWLWa7K', '0969422474', NULL, 4, '192.168.0.1', NULL, '2023-06-11 12:14:00', -1, NULL, NULL, '1', '2023-06-11'),
(19, 'ณัชนรินทร์', 'สุดาสวรรค์', 2147483647, 229653633, 'nat_natnarin689@gmail.com', '$2y$10$E0CFMqKCfWu/BkkqaOWT1./KoMJOHB5OlOVmj9Yt9yPFqLcXWrCf2', '0961680810', NULL, 4, '192.168.0.1', NULL, '2023-06-11 12:14:00', -1, NULL, NULL, '1', '2023-06-11'),
(20, 'จักรินทร์', 'คุ้มใหญ่โต', 2147483647, 624259006, '624259006@webmail.npru.ac.th', '$2y$10$VThh4RtSo9sgHlXNnwNP8.1IT12Rc1DyFeHyuUVBT/CXa.0fOQIZG', '0948123801', NULL, 4, '::1', '2023-06-30 12:59:10', '2023-06-25 02:47:24', -1, NULL, NULL, '1', '0000-00-00'),
(21, 'จิริสุดา', 'เพิ่มสุวรรณ', 2147483647, 197925300, 'jirisuda2543@gmail.com', '$2y$10$e1RFSEdSGMf6ub73vlrnyu1es5DTCcf0Bs2Zwz1mx0CV2zS3tpwXO', '0340902937', NULL, 4, '192.168.0.1', '2023-06-29 18:48:52', '2023-06-26 18:56:26', -1, NULL, NULL, '1', '2023-06-26'),
(22, 'มนัญพร', 'แซ่ลิ้ม', 2147483647, 972843911, 'manan088592@gmail.com', '$2y$10$PoUFRLivboaA6qbtZXZmDunelAO1ARwN2Q3Kokki73GMAG/eKLYiq', '0339166973', NULL, 4, '192.168.0.1', NULL, '2023-06-26 19:30:06', -1, NULL, NULL, '1', '2023-06-26'),
(23, 'พรสวรรค์', 'งามเจิดจ้า', 2147483647, 35165601, 'phnsawan_porn003@gmail.com', '$2y$10$yHXGoAZvf1f7D/oZEM5KQOStbobPIAdeb4w/aubO3sj./tMVE559q', '0940649329', NULL, 4, '192.168.0.1', NULL, '2023-06-26 19:30:21', -1, NULL, NULL, '1', '2023-06-26'),
(24, 'มนัญพร', 'แซ่ตั้ง', 2147483647, 624259000, '624259000@gmail.com', '$2y$10$SveurvDgyO3P5KkHIQKajedQHyGF5WEFj6ByDbyYSi9KjX4PkTHv6', '0987654321', NULL, 4, '::1', '2023-06-30 13:01:00', '2023-06-30 12:42:02', -1, NULL, NULL, '1', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`B_ID`,`B_ROOM_ID`,`B_USER_ID`) USING BTREE,
  ADD KEY `fk_b_room_id` (`B_ROOM_ID`) USING BTREE,
  ADD KEY `fk_b_user_id` (`B_USER_ID`) USING BTREE;

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`N_ID`) USING BTREE,
  ADD KEY `N_ToUser` (`TO_USER`) USING BTREE;

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`P_ID`) USING BTREE;

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`R_ID`) USING BTREE,
  ADD KEY `fk_r_attendant` (`R_ATTENDANT`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USER_ID`,`USER_POSITION`) USING BTREE,
  ADD KEY `fk_user_position` (`USER_POSITION`) USING BTREE,
  ADD KEY `USER_ID` (`USER_ID`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `B_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `N_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `P_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `R_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `fk_b_room_id` FOREIGN KEY (`B_ROOM_ID`) REFERENCES `rooms` (`R_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_b_user_id` FOREIGN KEY (`B_USER_ID`) REFERENCES `users` (`USER_ID`) ON DELETE CASCADE;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`TO_USER`) REFERENCES `users` (`USER_ID`) ON DELETE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `fk_r_attendant` FOREIGN KEY (`R_ATTENDANT`) REFERENCES `users` (`USER_ID`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_user_position` FOREIGN KEY (`USER_POSITION`) REFERENCES `position` (`P_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
