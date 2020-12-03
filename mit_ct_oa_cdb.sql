-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2020 at 06:16 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mit_ct_oa_cdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `course_artimat`
--

CREATE TABLE `course_artimat` (
  `cartimat_id` int(11) NOT NULL,
  `course_code` varchar(15) NOT NULL,
  `conum` int(11) NOT NULL,
  `costmt` varchar(255) NOT NULL,
  `po1` int(11) NOT NULL,
  `po2` int(11) NOT NULL,
  `po3` int(11) NOT NULL,
  `po4` int(11) NOT NULL,
  `po5` int(11) NOT NULL,
  `po6` int(11) NOT NULL,
  `po7` int(11) NOT NULL,
  `po8` int(11) NOT NULL,
  `po9` int(11) NOT NULL,
  `po10` int(11) NOT NULL,
  `po11` int(11) NOT NULL,
  `po12` int(11) NOT NULL,
  `ps1` int(11) NOT NULL,
  `ps2` int(11) NOT NULL,
  `ps3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `course_assesseval`
--

CREATE TABLE `course_assesseval` (
  `cassesseval_id` int(11) NOT NULL,
  `course_code` varchar(15) NOT NULL,
  `group_ref` int(11) NOT NULL,
  `session_ref` int(11) NOT NULL,
  `assess_num` int(11) NOT NULL,
  `question_num` varchar(10) NOT NULL,
  `reg_no` int(11) NOT NULL,
  `mark` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `course_assessment`
--

CREATE TABLE `course_assessment` (
  `cassess_id` int(11) NOT NULL,
  `course_code` varchar(15) NOT NULL,
  `group_ref` int(11) NOT NULL,
  `session_ref` int(11) NOT NULL,
  `assess_num` int(11) NOT NULL,
  `question_num` varchar(10) NOT NULL,
  `question_stmt` blob DEFAULT NULL,
  `question_img` varchar(100) DEFAULT NULL,
  `blooms_level` int(11) NOT NULL,
  `co_num` int(11) NOT NULL,
  `marks` int(11) NOT NULL,
  `entry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `course_assigneval`
--

CREATE TABLE `course_assigneval` (
  `cassigneval_id` int(11) NOT NULL,
  `course_code` varchar(15) NOT NULL,
  `group_ref` int(11) NOT NULL,
  `session_ref` int(11) NOT NULL,
  `assign_num` int(11) NOT NULL,
  `question_num` int(11) NOT NULL,
  `reg_no` int(11) NOT NULL,
  `mark` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `course_assignment`
--

CREATE TABLE `course_assignment` (
  `cassign_id` int(11) NOT NULL,
  `course_code` varchar(15) NOT NULL,
  `group_ref` int(11) NOT NULL,
  `session_ref` int(11) NOT NULL,
  `entry_date` date NOT NULL,
  `assign_num` int(11) NOT NULL,
  `question_num` varchar(10) NOT NULL,
  `question_stmt` blob DEFAULT NULL,
  `question_img` varchar(100) DEFAULT NULL,
  `co_num` int(11) NOT NULL,
  `marks` int(11) NOT NULL,
  `deadline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `course_attendance`
--

CREATE TABLE `course_attendance` (
  `cattend_id` int(11) NOT NULL,
  `course_code` varchar(15) NOT NULL,
  `group_ref` int(11) NOT NULL,
  `session_ref` int(11) NOT NULL,
  `reg_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `period` int(11) NOT NULL,
  `presence` char(1) NOT NULL DEFAULT 'P'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `course_cacomp`
--

CREATE TABLE `course_cacomp` (
  `ccacomp_id` int(11) NOT NULL,
  `course_code` varchar(15) NOT NULL,
  `group_ref` int(11) NOT NULL,
  `session_ref` int(11) NOT NULL,
  `component` varchar(15) NOT NULL,
  `total_marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `course_extcalc`
--

CREATE TABLE `course_extcalc` (
  `cextcalc_id` int(11) NOT NULL,
  `course_code` varchar(15) NOT NULL,
  `group_ref` int(11) NOT NULL,
  `session_ref` int(11) NOT NULL,
  `reg_num` int(11) NOT NULL,
  `question_num` varchar(10) NOT NULL,
  `marks` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `course_extcomp`
--

CREATE TABLE `course_extcomp` (
  `cextcomp_id` int(11) NOT NULL,
  `course_code` varchar(15) NOT NULL,
  `group_ref` int(11) NOT NULL,
  `session_ref` int(11) NOT NULL,
  `question_num` varchar(10) NOT NULL,
  `question_co` int(11) NOT NULL,
  `question_mark` int(11) NOT NULL,
  `question_section` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `course_internalcalc`
--

CREATE TABLE `course_internalcalc` (
  `cintcalc_id` int(11) NOT NULL,
  `course_code` varchar(15) NOT NULL,
  `group_ref` int(11) NOT NULL,
  `session_ref` int(11) NOT NULL,
  `reg_no` int(11) NOT NULL,
  `ca` float NOT NULL,
  `midterm` float NOT NULL,
  `total_marks` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `course_lessonplan`
--

CREATE TABLE `course_lessonplan` (
  `clp_id` int(11) NOT NULL,
  `course_code` varchar(15) NOT NULL,
  `group_ref` int(11) NOT NULL,
  `session_ref` int(11) NOT NULL,
  `actual_date` date NOT NULL,
  `period` int(11) NOT NULL,
  `course_ctopic_id` int(11) NOT NULL,
  `references` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `course_list`
--

CREATE TABLE `course_list` (
  `course_code` varchar(15) NOT NULL,
  `stream` int(11) NOT NULL,
  `regulation` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `credit` int(11) NOT NULL,
  `objectives` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `course_reference_table`
--

CREATE TABLE `course_reference_table` (
  `reference_id` int(11) NOT NULL,
  `ref_code` int(11) NOT NULL,
  `category` varchar(30) DEFAULT NULL,
  `ref_name` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course_reference_table`
--

INSERT INTO `course_reference_table` (`reference_id`, `ref_code`, `category`, `ref_name`, `description`) VALUES
(1, 1, 'Group', 'MM', 'null'),
(2, 2, 'Group', 'MN', 'null'),
(3, 3, 'Group', 'G1', 'null'),
(4, 4, 'Group', 'G2', 'null'),
(5, 5, 'Group', 'Common', 'null'),
(6, 6, 'Session', 'N20', 'August 2020-November 2020'),
(7, 7, 'Session', 'A20', 'December 2020 - April 2021'),
(8, 8, 'Session', 'N21', 'July 2021-November 2021'),
(9, 9, 'Session', 'A21', 'December 2021 - April 2022'),
(10, 10, 'Group', 'MO', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `course_registered_students`
--

CREATE TABLE `course_registered_students` (
  `cregst_id` int(11) NOT NULL,
  `course_code` varchar(15) NOT NULL,
  `reg_no` int(11) NOT NULL,
  `group_ref` int(11) NOT NULL,
  `session_ref` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `course_topic`
--

CREATE TABLE `course_topic` (
  `ctopic_id` int(11) NOT NULL,
  `course_code` varchar(15) NOT NULL,
  `module_num` int(11) NOT NULL,
  `topic_num` varchar(10) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `conum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff_list`
--

CREATE TABLE `staff_list` (
  `staff_id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `reg_no` int(11) NOT NULL,
  `name` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subj_allot`
--

CREATE TABLE `subj_allot` (
  `sallot_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `course_code` varchar(15) NOT NULL,
  `group_ref` int(11) NOT NULL,
  `session_ref` int(11) NOT NULL,
  `class_room` varchar(15) DEFAULT NULL,
  `student_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course_artimat`
--
ALTER TABLE `course_artimat`
  ADD PRIMARY KEY (`cartimat_id`),
  ADD KEY `code_fk_idx` (`course_code`);

--
-- Indexes for table `course_assesseval`
--
ALTER TABLE `course_assesseval`
  ADD PRIMARY KEY (`cassesseval_id`),
  ADD KEY `code_fk_idx` (`course_code`),
  ADD KEY `group_fk_idx` (`group_ref`),
  ADD KEY `session_fk_idx` (`session_ref`),
  ADD KEY `regnum_fk_idx` (`reg_no`);

--
-- Indexes for table `course_assessment`
--
ALTER TABLE `course_assessment`
  ADD PRIMARY KEY (`cassess_id`),
  ADD UNIQUE KEY `cassess_id_UNIQUE` (`cassess_id`),
  ADD KEY `code_fk_idx` (`course_code`),
  ADD KEY `group_fk_idx` (`group_ref`),
  ADD KEY `session_fk_idx` (`session_ref`);

--
-- Indexes for table `course_assigneval`
--
ALTER TABLE `course_assigneval`
  ADD PRIMARY KEY (`cassigneval_id`),
  ADD UNIQUE KEY `cassigneval_id_UNIQUE` (`cassigneval_id`),
  ADD KEY `code_fk_idx` (`course_code`),
  ADD KEY `group_fk_idx` (`group_ref`),
  ADD KEY `session_fk_idx` (`session_ref`),
  ADD KEY `regnum_fk_idx` (`reg_no`);

--
-- Indexes for table `course_assignment`
--
ALTER TABLE `course_assignment`
  ADD PRIMARY KEY (`cassign_id`),
  ADD UNIQUE KEY `cassign_id_UNIQUE` (`cassign_id`),
  ADD KEY `code_fk_idx` (`course_code`),
  ADD KEY `group_fk_idx` (`group_ref`),
  ADD KEY `session_fk_idx` (`session_ref`);

--
-- Indexes for table `course_attendance`
--
ALTER TABLE `course_attendance`
  ADD PRIMARY KEY (`cattend_id`),
  ADD KEY `code_fk_idx` (`course_code`),
  ADD KEY `group_fk_idx` (`group_ref`),
  ADD KEY `session_fk_idx` (`session_ref`),
  ADD KEY `regno_fk_idx` (`reg_no`);

--
-- Indexes for table `course_cacomp`
--
ALTER TABLE `course_cacomp`
  ADD PRIMARY KEY (`ccacomp_id`),
  ADD UNIQUE KEY `cintcomp_id_UNIQUE` (`ccacomp_id`),
  ADD KEY `code_fk10_idx` (`course_code`),
  ADD KEY `group_fk10_idx` (`group_ref`),
  ADD KEY `session_fk10_idx` (`session_ref`);

--
-- Indexes for table `course_extcalc`
--
ALTER TABLE `course_extcalc`
  ADD PRIMARY KEY (`cextcalc_id`),
  ADD UNIQUE KEY `cextcalc_id_UNIQUE` (`cextcalc_id`),
  ADD KEY `code_fk13_idx` (`course_code`),
  ADD KEY `group_fk13_idx` (`group_ref`),
  ADD KEY `session_fk13_idx` (`session_ref`),
  ADD KEY `regno_fk13_idx` (`reg_num`);

--
-- Indexes for table `course_extcomp`
--
ALTER TABLE `course_extcomp`
  ADD PRIMARY KEY (`cextcomp_id`),
  ADD UNIQUE KEY `cextcomp_id_UNIQUE` (`cextcomp_id`),
  ADD KEY `code_fk12_idx` (`course_code`),
  ADD KEY `group_fk12_idx` (`group_ref`),
  ADD KEY `session_fk12_idx` (`session_ref`);

--
-- Indexes for table `course_internalcalc`
--
ALTER TABLE `course_internalcalc`
  ADD PRIMARY KEY (`cintcalc_id`),
  ADD UNIQUE KEY `cintcalc_id_UNIQUE` (`cintcalc_id`),
  ADD KEY `code_fk11_idx` (`course_code`),
  ADD KEY `group_fk11_idx` (`group_ref`),
  ADD KEY `session_fk11_idx` (`session_ref`),
  ADD KEY `regnum_fk11_idx` (`reg_no`);

--
-- Indexes for table `course_lessonplan`
--
ALTER TABLE `course_lessonplan`
  ADD PRIMARY KEY (`clp_id`),
  ADD UNIQUE KEY `clp_id_UNIQUE` (`clp_id`),
  ADD KEY `code_fk_idx` (`course_code`),
  ADD KEY `group_fk_idx` (`group_ref`),
  ADD KEY `session_fk_idx` (`session_ref`),
  ADD KEY `topic_fk_idx` (`course_ctopic_id`);

--
-- Indexes for table `course_list`
--
ALTER TABLE `course_list`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `course_reference_table`
--
ALTER TABLE `course_reference_table`
  ADD PRIMARY KEY (`reference_id`),
  ADD UNIQUE KEY `reference_id_UNIQUE` (`reference_id`),
  ADD UNIQUE KEY `ref_code_UNIQUE` (`ref_code`);

--
-- Indexes for table `course_registered_students`
--
ALTER TABLE `course_registered_students`
  ADD PRIMARY KEY (`cregst_id`),
  ADD UNIQUE KEY `cregst_id_UNIQUE` (`cregst_id`),
  ADD KEY `code_fk_idx` (`course_code`),
  ADD KEY `regno_fk_idx` (`reg_no`),
  ADD KEY `group_fk_idx` (`group_ref`),
  ADD KEY `session_fk_idx` (`session_ref`);

--
-- Indexes for table `course_topic`
--
ALTER TABLE `course_topic`
  ADD PRIMARY KEY (`ctopic_id`),
  ADD UNIQUE KEY `ctopic_id_UNIQUE` (`ctopic_id`),
  ADD KEY `code_fk_idx` (`course_code`);

--
-- Indexes for table `staff_list`
--
ALTER TABLE `staff_list`
  ADD PRIMARY KEY (`staff_id`),
  ADD UNIQUE KEY `staff_id_UNIQUE` (`staff_id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`reg_no`),
  ADD UNIQUE KEY `reg_no_UNIQUE` (`reg_no`);

--
-- Indexes for table `subj_allot`
--
ALTER TABLE `subj_allot`
  ADD PRIMARY KEY (`sallot_id`),
  ADD UNIQUE KEY `sallot_id_UNIQUE` (`sallot_id`),
  ADD KEY `staff_id_fk_idx` (`staff_id`),
  ADD KEY `course_id_fk_idx` (`course_code`),
  ADD KEY `group_fk_idx` (`group_ref`),
  ADD KEY `session_fk_idx` (`session_ref`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_artimat`
--
ALTER TABLE `course_artimat`
  MODIFY `cartimat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_assesseval`
--
ALTER TABLE `course_assesseval`
  MODIFY `cassesseval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_assessment`
--
ALTER TABLE `course_assessment`
  MODIFY `cassess_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_assigneval`
--
ALTER TABLE `course_assigneval`
  MODIFY `cassigneval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_assignment`
--
ALTER TABLE `course_assignment`
  MODIFY `cassign_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_cacomp`
--
ALTER TABLE `course_cacomp`
  MODIFY `ccacomp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_extcalc`
--
ALTER TABLE `course_extcalc`
  MODIFY `cextcalc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_extcomp`
--
ALTER TABLE `course_extcomp`
  MODIFY `cextcomp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_internalcalc`
--
ALTER TABLE `course_internalcalc`
  MODIFY `cintcalc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_lessonplan`
--
ALTER TABLE `course_lessonplan`
  MODIFY `clp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_reference_table`
--
ALTER TABLE `course_reference_table`
  MODIFY `reference_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `course_registered_students`
--
ALTER TABLE `course_registered_students`
  MODIFY `cregst_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_topic`
--
ALTER TABLE `course_topic`
  MODIFY `ctopic_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subj_allot`
--
ALTER TABLE `subj_allot`
  MODIFY `sallot_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_artimat`
--
ALTER TABLE `course_artimat`
  ADD CONSTRAINT `code_fk2` FOREIGN KEY (`course_code`) REFERENCES `course_list` (`course_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_assesseval`
--
ALTER TABLE `course_assesseval`
  ADD CONSTRAINT `code_fk6` FOREIGN KEY (`course_code`) REFERENCES `course_list` (`course_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `group_fk6` FOREIGN KEY (`group_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `regnum_fk6` FOREIGN KEY (`reg_no`) REFERENCES `student_list` (`reg_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_fk6` FOREIGN KEY (`session_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_assessment`
--
ALTER TABLE `course_assessment`
  ADD CONSTRAINT `code_fk5` FOREIGN KEY (`course_code`) REFERENCES `course_list` (`course_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `group_fk5` FOREIGN KEY (`group_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_fk5` FOREIGN KEY (`session_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_assigneval`
--
ALTER TABLE `course_assigneval`
  ADD CONSTRAINT `code_fk8` FOREIGN KEY (`course_code`) REFERENCES `course_list` (`course_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `group_fk8` FOREIGN KEY (`group_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `regnum_fk8` FOREIGN KEY (`reg_no`) REFERENCES `student_list` (`reg_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_fk8` FOREIGN KEY (`session_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_assignment`
--
ALTER TABLE `course_assignment`
  ADD CONSTRAINT `code_fk7` FOREIGN KEY (`course_code`) REFERENCES `course_list` (`course_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `group_fk7` FOREIGN KEY (`group_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_fk7` FOREIGN KEY (`session_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_attendance`
--
ALTER TABLE `course_attendance`
  ADD CONSTRAINT `code_fk4` FOREIGN KEY (`course_code`) REFERENCES `course_list` (`course_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `group_fk4` FOREIGN KEY (`group_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `regno_fk4` FOREIGN KEY (`reg_no`) REFERENCES `student_list` (`reg_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_fk4` FOREIGN KEY (`session_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_cacomp`
--
ALTER TABLE `course_cacomp`
  ADD CONSTRAINT `code_fk10` FOREIGN KEY (`course_code`) REFERENCES `course_list` (`course_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `group_fk10` FOREIGN KEY (`group_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_fk10` FOREIGN KEY (`session_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_extcalc`
--
ALTER TABLE `course_extcalc`
  ADD CONSTRAINT `code_fk13` FOREIGN KEY (`course_code`) REFERENCES `course_list` (`course_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `group_fk13` FOREIGN KEY (`group_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `regno_fk13` FOREIGN KEY (`reg_num`) REFERENCES `student_list` (`reg_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_fk13` FOREIGN KEY (`session_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_extcomp`
--
ALTER TABLE `course_extcomp`
  ADD CONSTRAINT `code_fk12` FOREIGN KEY (`course_code`) REFERENCES `course_list` (`course_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `group_fk12` FOREIGN KEY (`group_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_fk12` FOREIGN KEY (`session_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_internalcalc`
--
ALTER TABLE `course_internalcalc`
  ADD CONSTRAINT `code_fk11` FOREIGN KEY (`course_code`) REFERENCES `course_list` (`course_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `group_fk11` FOREIGN KEY (`group_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `regnum_fk11` FOREIGN KEY (`reg_no`) REFERENCES `student_list` (`reg_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_fk11` FOREIGN KEY (`session_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_lessonplan`
--
ALTER TABLE `course_lessonplan`
  ADD CONSTRAINT `code_fk21` FOREIGN KEY (`course_code`) REFERENCES `course_list` (`course_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `group_fk3` FOREIGN KEY (`group_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_fk3` FOREIGN KEY (`session_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `topic_fk3` FOREIGN KEY (`course_ctopic_id`) REFERENCES `course_topic` (`ctopic_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_registered_students`
--
ALTER TABLE `course_registered_students`
  ADD CONSTRAINT `code_fk` FOREIGN KEY (`course_code`) REFERENCES `course_list` (`course_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `group_fk1` FOREIGN KEY (`group_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `regno_fk1` FOREIGN KEY (`reg_no`) REFERENCES `student_list` (`reg_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_fk1` FOREIGN KEY (`session_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_topic`
--
ALTER TABLE `course_topic`
  ADD CONSTRAINT `code_fk1` FOREIGN KEY (`course_code`) REFERENCES `course_list` (`course_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subj_allot`
--
ALTER TABLE `subj_allot`
  ADD CONSTRAINT `course_code_fk` FOREIGN KEY (`course_code`) REFERENCES `course_list` (`course_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `group_fk` FOREIGN KEY (`group_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_fk` FOREIGN KEY (`session_ref`) REFERENCES `course_reference_table` (`ref_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `staff_id_fk` FOREIGN KEY (`staff_id`) REFERENCES `staff_list` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
