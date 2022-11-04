-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 05, 2022 at 12:57 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SocialNetwork v2.0`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_ID` int(11) NOT NULL,
  `comment_text` varchar(55) DEFAULT NULL,
  `comment_level` enum('1','2') NOT NULL,
  `fk_post_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_ID`, `comment_text`, `comment_level`, `fk_post_ID`) VALUES
(1, 'so cute!', '1', 1),
(2, 'stunning!', '1', 2),
(3, 'amazing!!!', '1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `current_workplace`
--

CREATE TABLE `current_workplace` (
  `current_workplce_ID` int(11) NOT NULL,
  `beginning_date` date DEFAULT NULL,
  `fk_user_ID` int(11) DEFAULT NULL,
  `fk_work_experience_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `current_workplace`
--

INSERT INTO `current_workplace` (`current_workplce_ID`, `beginning_date`, `fk_user_ID`, `fk_work_experience_ID`) VALUES
(1, NULL, 1, NULL),
(2, '2021-01-01', 2, 2),
(3, '2018-08-01', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `education_ID` int(11) NOT NULL,
  `school_name` varchar(55) DEFAULT NULL,
  `university_name` varchar(55) DEFAULT NULL,
  `university_name_2` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`education_ID`, `school_name`, `university_name`, `university_name_2`) VALUES
(1, 'Liceo Classico Galileo Galilei', 'Tuscia University', '0'),
(2, 'Liceo Classico Galileo Galilei', 'Tuscia University', '0'),
(3, 'George washington high school', 'John Hopkins', 'Brown ');

-- --------------------------------------------------------

--
-- Table structure for table `family_members`
--

CREATE TABLE `family_members` (
  `family_members_ID` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `relationship` varchar(30) DEFAULT NULL,
  `name_2` varchar(55) DEFAULT NULL,
  `relationship_relative_2` varchar(30) DEFAULT NULL,
  `name_3` varchar(55) DEFAULT NULL,
  `relationship_relative_3` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `family_members`
--

INSERT INTO `family_members` (`family_members_ID`, `name`, `relationship`, `name_2`, `relationship_relative_2`, `name_3`, `relationship_relative_3`) VALUES
(1, 'Azzurra Tesei', 'sister', 'Manuela Orru\'', 'cousin', NULL, NULL),
(2, 'Donatella Tesei', 'sister', 'Leo Esposito', 'husband', NULL, NULL),
(3, 'Clara Gonzales', 'wife', 'Lisa Gonzales', 'sister in law', 'Pablo Mendez', 'brother in law');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_ID` int(11) NOT NULL,
  `file_name` varchar(55) DEFAULT NULL,
  `description` varchar(55) DEFAULT NULL,
  `location` varchar(55) DEFAULT NULL,
  `fie_name_2` varchar(55) DEFAULT NULL,
  `description_file_2` varchar(55) DEFAULT NULL,
  `location_file2` varchar(55) DEFAULT NULL,
  `fk_post_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_ID`, `file_name`, `description`, `location`, `fie_name_2`, `description_file_2`, `location_file2`, `fk_post_ID`) VALUES
(1, 'sunset', 'view from my balcony', 'Vienna', 'Autumn', NULL, 'Vienna Augarten', 1),
(2, 'Bolla', 'what a cutie!', 'Viterbo', 'piante grasse', 'quanto siete belle!', NULL, 2),
(3, 'desert', 'melting', 'Death Valley', NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_ID` int(11) NOT NULL,
  `publication_date` date NOT NULL,
  `publication_date_post_2` date DEFAULT NULL,
  `publication_date_post_3` date DEFAULT NULL,
  `fk_user_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_ID`, `publication_date`, `publication_date_post_2`, `publication_date_post_3`, `fk_user_ID`) VALUES
(1, '2022-11-04', '2022-11-02', NULL, 1),
(2, '2022-10-14', '2022-11-03', NULL, 2),
(3, '2022-11-03', NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `previous_workplace`
--

CREATE TABLE `previous_workplace` (
  `previous_workplace_ID` int(11) NOT NULL,
  `beginning_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `fk_work_experience_ID` int(11) DEFAULT NULL,
  `fk_user_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `previous_workplace`
--

INSERT INTO `previous_workplace` (`previous_workplace_ID`, `beginning_date`, `end_date`, `fk_work_experience_ID`, `fk_user_ID`) VALUES
(1, '2017-02-01', '2022-04-17', 1, 1),
(2, '2019-09-01', '2021-07-17', 2, 2),
(3, '2015-02-21', '2018-07-09', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `profile_ID` int(11) NOT NULL,
  `bio` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`profile_ID`, `bio`) VALUES
(1, 'molecular microbiologist loving everything space'),
(2, 'linguist'),
(3, 'nerd');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `school_ID` int(11) NOT NULL,
  `beginning_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `grade` varchar(55) DEFAULT NULL,
  `fk_education_ID` int(11) DEFAULT NULL,
  `fk_user_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`school_ID`, `beginning_date`, `end_date`, `grade`, `fk_education_ID`, `fk_user_ID`) VALUES
(1, '1998-09-12', '2003-07-04', '96/100', 1, 1),
(2, '2004-09-15', '2009-07-20', '90/100', 2, 2),
(3, '1996-08-01', '2001-06-20', '100/100', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `tag_ID` int(11) NOT NULL,
  `fk_post_ID` int(11) NOT NULL,
  `fk_user_ID` int(11) NOT NULL,
  `frame_position_coordinates` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_ID`, `fk_post_ID`, `fk_user_ID`, `frame_position_coordinates`) VALUES
(1, 1, 1, '0.9999614 -0.00163934 -0.00863229'),
(2, 2, 2, '-0.00865461 -0.01413587 -0.99986263'),
(3, 3, 3, '0.00151709 -0.99989874 0.01414951');

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `university_ID` int(11) NOT NULL,
  `beginning_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `beginning_date_university_2` date DEFAULT NULL,
  `end_date_univeristy_2` date DEFAULT NULL,
  `fk_education_ID` int(11) DEFAULT NULL,
  `fk_user_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`university_ID`, `beginning_date`, `end_date`, `beginning_date_university_2`, `end_date_univeristy_2`, `fk_education_ID`, `fk_user_ID`) VALUES
(1, '2003-09-21', '2010-04-20', NULL, NULL, 1, 1),
(2, '2009-09-27', '2015-12-20', NULL, NULL, 2, 2),
(3, '2000-08-21', '2006-03-11', '2005-08-14', '2008-06-07', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_ID` int(11) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) NOT NULL,
  `nickname` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `phone_number` varchar(55) NOT NULL,
  `gender` enum('Male','Female','Neither') NOT NULL,
  `language` varchar(30) NOT NULL,
  `birthdate` date NOT NULL,
  `relationship_status` enum('single','engaged','married','it''s complicated','separated','divorced','widowed') DEFAULT NULL,
  `hometown` varchar(55) NOT NULL,
  `current_city` varchar(55) NOT NULL,
  `fk_profile_ID` int(11) NOT NULL,
  `fk_family_members_ID` int(11) NOT NULL,
  `fk_work_experience_ID` int(11) NOT NULL,
  `fk_education_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_ID`, `first_name`, `last_name`, `nickname`, `password`, `email`, `phone_number`, `gender`, `language`, `birthdate`, `relationship_status`, `hometown`, `current_city`, `fk_profile_ID`, `fk_family_members_ID`, `fk_work_experience_ID`, `fk_education_ID`) VALUES
(1, 'Donatella', 'Tesei', 'DonaTes', 'rdetfsg', 'donatella.tesei@gmail.com', '066043465674', 'Female', 'Italian', '1984-12-29', 'single', 'Tarquinia', 'Vienna', 1, 1, 1, 1),
(2, 'Azzurra', 'Tesei', 'AzzuTes', 'fgdthsy6', 'azzurra.tesei@gmail.com', '3207644867', 'Female', 'Italian', '1990-08-30', 'married', 'Tarquinia', 'Viterbo', 2, 2, 2, 2),
(3, 'Matt', 'Reeves', 'Matty', 'tgrd55564', 'matt.reeves@gmail.com', '0654673532', 'Male', 'Canadian', '1980-05-29', 'married', 'Toronto', 'Boston', 3, 3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `work_experience`
--

CREATE TABLE `work_experience` (
  `work_experience_ID` int(11) NOT NULL,
  `current_workplace` varchar(55) DEFAULT NULL,
  `previous_workplace` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `work_experience`
--

INSERT INTO `work_experience` (`work_experience_ID`, `current_workplace`, `previous_workplace`) VALUES
(1, NULL, 'BOKU'),
(2, 'Tuscia University', 'Liceo Galileo Galilei'),
(3, 'MIT', 'CERN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `fk_post_ID` (`fk_post_ID`);

--
-- Indexes for table `current_workplace`
--
ALTER TABLE `current_workplace`
  ADD PRIMARY KEY (`current_workplce_ID`),
  ADD KEY `fk_user_ID` (`fk_user_ID`),
  ADD KEY `fk_work_experience_ID` (`fk_work_experience_ID`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`education_ID`);

--
-- Indexes for table `family_members`
--
ALTER TABLE `family_members`
  ADD PRIMARY KEY (`family_members_ID`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_ID`),
  ADD KEY `fk_post_ID` (`fk_post_ID`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_ID`),
  ADD KEY `fk_user_ID` (`fk_user_ID`);

--
-- Indexes for table `previous_workplace`
--
ALTER TABLE `previous_workplace`
  ADD PRIMARY KEY (`previous_workplace_ID`),
  ADD KEY `fk_work_experience_ID` (`fk_work_experience_ID`),
  ADD KEY `fk_user_ID` (`fk_user_ID`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`profile_ID`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`school_ID`),
  ADD KEY `fk_user_ID` (`fk_user_ID`),
  ADD KEY `fk_education_ID` (`fk_education_ID`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_ID`),
  ADD KEY `fk_post_ID` (`fk_post_ID`),
  ADD KEY `fk_user_ID` (`fk_user_ID`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`university_ID`),
  ADD KEY `fk_education_ID` (`fk_education_ID`),
  ADD KEY `fk_user_ID` (`fk_user_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_ID`),
  ADD UNIQUE KEY `password` (`password`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_number` (`phone_number`),
  ADD KEY `fk_profile_ID` (`fk_profile_ID`),
  ADD KEY `fk_family_members_ID` (`fk_family_members_ID`),
  ADD KEY `fk_work_experience_ID` (`fk_work_experience_ID`),
  ADD KEY `fk_education_ID` (`fk_education_ID`);

--
-- Indexes for table `work_experience`
--
ALTER TABLE `work_experience`
  ADD PRIMARY KEY (`work_experience_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `current_workplace`
--
ALTER TABLE `current_workplace`
  MODIFY `current_workplce_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `education_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `family_members`
--
ALTER TABLE `family_members`
  MODIFY `family_members_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `previous_workplace`
--
ALTER TABLE `previous_workplace`
  MODIFY `previous_workplace_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `profile_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `school_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `university_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `work_experience`
--
ALTER TABLE `work_experience`
  MODIFY `work_experience_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`fk_post_ID`) REFERENCES `post` (`post_ID`);

--
-- Constraints for table `current_workplace`
--
ALTER TABLE `current_workplace`
  ADD CONSTRAINT `current_workplace_ibfk_1` FOREIGN KEY (`fk_user_ID`) REFERENCES `user` (`user_ID`),
  ADD CONSTRAINT `current_workplace_ibfk_2` FOREIGN KEY (`fk_work_experience_ID`) REFERENCES `work_experience` (`work_experience_ID`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`fk_post_ID`) REFERENCES `post` (`post_ID`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`fk_user_ID`) REFERENCES `user` (`user_ID`);

--
-- Constraints for table `previous_workplace`
--
ALTER TABLE `previous_workplace`
  ADD CONSTRAINT `previous_workplace_ibfk_1` FOREIGN KEY (`fk_work_experience_ID`) REFERENCES `work_experience` (`work_experience_ID`),
  ADD CONSTRAINT `previous_workplace_ibfk_2` FOREIGN KEY (`fk_user_ID`) REFERENCES `user` (`user_ID`);

--
-- Constraints for table `school`
--
ALTER TABLE `school`
  ADD CONSTRAINT `school_ibfk_1` FOREIGN KEY (`fk_user_ID`) REFERENCES `user` (`user_ID`),
  ADD CONSTRAINT `school_ibfk_2` FOREIGN KEY (`fk_education_ID`) REFERENCES `education` (`education_ID`);

--
-- Constraints for table `tag`
--
ALTER TABLE `tag`
  ADD CONSTRAINT `tag_ibfk_1` FOREIGN KEY (`fk_post_ID`) REFERENCES `post` (`post_ID`),
  ADD CONSTRAINT `tag_ibfk_2` FOREIGN KEY (`fk_user_ID`) REFERENCES `user` (`user_ID`);

--
-- Constraints for table `university`
--
ALTER TABLE `university`
  ADD CONSTRAINT `university_ibfk_1` FOREIGN KEY (`fk_education_ID`) REFERENCES `education` (`education_ID`),
  ADD CONSTRAINT `university_ibfk_2` FOREIGN KEY (`fk_user_ID`) REFERENCES `user` (`user_ID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`fk_profile_ID`) REFERENCES `profile` (`profile_ID`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`fk_family_members_ID`) REFERENCES `family_members` (`family_members_ID`),
  ADD CONSTRAINT `user_ibfk_3` FOREIGN KEY (`fk_work_experience_ID`) REFERENCES `work_experience` (`work_experience_ID`),
  ADD CONSTRAINT `user_ibfk_4` FOREIGN KEY (`fk_work_experience_ID`) REFERENCES `work_experience` (`work_experience_ID`),
  ADD CONSTRAINT `user_ibfk_5` FOREIGN KEY (`fk_education_ID`) REFERENCES `education` (`education_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
