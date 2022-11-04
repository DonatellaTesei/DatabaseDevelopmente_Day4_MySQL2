-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 04, 2022 at 07:38 PM
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
-- Database: `social network`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_ID` int(11) NOT NULL,
  `fk_post_ID` int(11) DEFAULT NULL,
  `comment_text` varchar(55) NOT NULL,
  `level` enum('1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_ID`, `fk_post_ID`, `comment_text`, `level`) VALUES
(1, 3, 'awesome', '1'),
(2, 4, 'Stunning!', '1'),
(3, 5, '', '1'),
(4, 6, 'Hello there!', '1');

-- --------------------------------------------------------

--
-- Table structure for table `current_workplace_from_to`
--

CREATE TABLE `current_workplace_from_to` (
  `current_workplace_ID` int(11) NOT NULL,
  `beginning_date` date DEFAULT NULL,
  `fk_work_experience_ID` int(11) DEFAULT NULL,
  `fk_user_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `current_workplace_from_to`
--

INSERT INTO `current_workplace_from_to` (`current_workplace_ID`, `beginning_date`, `fk_work_experience_ID`, `fk_user_ID`) VALUES
(1, '2022-03-15', 1, 2),
(2, '2021-01-01', 2, 3),
(3, '2021-12-01', 3, 4),
(4, '2022-03-22', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `family_members`
--

CREATE TABLE `family_members` (
  `family_members_ID` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `relationship` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_ID` int(11) NOT NULL,
  `fk_post_ID` int(11) DEFAULT NULL,
  `file_name` varchar(55) DEFAULT NULL,
  `description` varchar(55) DEFAULT NULL,
  `location` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_ID`, `fk_post_ID`, `file_name`, `description`, `location`) VALUES
(1, 3, 'Autumn', 'Colorful leaves', 'Vienna'),
(2, 4, 'Sunset', 'Sunset view from home', 'Viterbo'),
(3, 5, 'My Dog', 'Such a cutie!', 'Altadena'),
(4, 6, 'desert', 'death valley ', 'Death Valley California');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_ID` int(11) NOT NULL,
  `publication_date` date NOT NULL,
  `fk_user_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_ID`, `publication_date`, `fk_user_ID`) VALUES
(3, '2021-12-29', 2),
(4, '2022-11-02', 3),
(5, '2022-11-03', 4),
(6, '2018-07-21', 5);

-- --------------------------------------------------------

--
-- Table structure for table `previous_workplace_from_to`
--

CREATE TABLE `previous_workplace_from_to` (
  `previous_workplace_ID` int(11) NOT NULL,
  `beginning_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `fk_work_experience_ID` int(11) DEFAULT NULL,
  `fk_user_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `previous_workplace_from_to`
--

INSERT INTO `previous_workplace_from_to` (`previous_workplace_ID`, `beginning_date`, `end_date`, `fk_work_experience_ID`, `fk_user_ID`) VALUES
(1, '2018-04-09', '2018-09-30', 1, 2),
(2, '2019-03-15', '2020-12-31', 2, 3),
(3, '2017-11-03', '2021-11-11', 3, 4),
(4, '2015-11-02', '2021-03-23', 4, 5);

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
(1, 'Molecular Microbiologist loving everything space'),
(2, 'A linguist with a passion for teaching'),
(3, 'aerospace engineer'),
(4, 'nerd');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `tag_ID` int(11) NOT NULL,
  `fk_post_ID` int(11) DEFAULT NULL,
  `fk_user_ID` int(11) DEFAULT NULL,
  `frame_position_coordinates` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_ID`, `fk_post_ID`, `fk_user_ID`, `frame_position_coordinates`) VALUES
(1, 3, 2, '0.9999614 -0.00163934 -0.00863229'),
(2, 4, 3, '-0.00865461 -0.01413587 -0.99986263'),
(3, 5, 3, '-0.00151709 -0.99989874 0.01414951'),
(4, 6, 5, '0.00151295 0.14521985 0.23501338');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_ID` int(11) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `nick_name` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `phone_number` varchar(55) NOT NULL,
  `gender` enum('Male','Female','Neither','') NOT NULL,
  `language` varchar(55) NOT NULL,
  `birthdate` date NOT NULL,
  `relationship_status` enum('Single','Married','It''s complicated','Separated','Divorced','Widowed') NOT NULL,
  `home_town` varchar(55) NOT NULL,
  `current_city` varchar(55) NOT NULL,
  `fk_profile_ID` int(11) NOT NULL,
  `fk_work_experience_ID` int(11) DEFAULT NULL,
  `fk_family_members_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_ID`, `first_name`, `last_name`, `nick_name`, `password`, `email`, `phone_number`, `gender`, `language`, `birthdate`, `relationship_status`, `home_town`, `current_city`, `fk_profile_ID`, `fk_work_experience_ID`, `fk_family_members_ID`) VALUES
(2, 'Donatella', 'Tesei', 'DonaTes', '1234$$%D', 'donatella.tesei@gmail.com', '06604349482', 'Female', 'Italian', '1984-12-29', 'It\'s complicated', 'Tarquinia', 'Vienna', 1, 1, 1),
(3, 'Azzurra', 'Tesei', 'AzzuTes', '14538889', 'azzurra.tesei@gmail.com', '3202769784', 'Female', 'Italian', '1990-08-30', 'Married', 'Tarquinia', 'Viterbo', 2, 2, 2),
(4, 'John', 'Harris', 'Johnny_Good', 'drft5677', 'john.harris@gmail.com', '067745655', 'Male', 'Spanish', '1980-04-03', 'Married', 'Edimburg', 'Pasadena', 3, 3, 3),
(5, 'Mark', 'Reeves', 'MarkyR', 'Mypassword115', 'mark.reeves@yahoo.it', '0656432178', 'Male', 'English', '1975-05-11', 'Married', 'Seattle', 'Los Angeles', 4, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `work_experience`
--

CREATE TABLE `work_experience` (
  `work_experience_ID` int(11) NOT NULL,
  `current_workplace` varchar(55) DEFAULT NULL,
  `previous_workplace` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `work_experience`
--

INSERT INTO `work_experience` (`work_experience_ID`, `current_workplace`, `previous_workplace`) VALUES
(1, '', 'Pasadena'),
(2, 'Tuscia University', 'Liceo Galileo Galilei'),
(3, 'JPL', 'CERN'),
(4, 'Blu Origin', 'NASA Ames');

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
-- Indexes for table `current_workplace_from_to`
--
ALTER TABLE `current_workplace_from_to`
  ADD PRIMARY KEY (`current_workplace_ID`),
  ADD KEY `fk_work_experience` (`fk_work_experience_ID`),
  ADD KEY `fk_user_ID` (`fk_user_ID`);

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
-- Indexes for table `previous_workplace_from_to`
--
ALTER TABLE `previous_workplace_from_to`
  ADD PRIMARY KEY (`previous_workplace_ID`),
  ADD KEY `fk_work_experience` (`fk_work_experience_ID`),
  ADD KEY `fk_user_ID` (`fk_user_ID`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`profile_ID`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_ID`),
  ADD KEY `fk_post_ID` (`fk_post_ID`),
  ADD KEY `fk_user_ID` (`fk_user_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_ID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_number` (`phone_number`),
  ADD UNIQUE KEY `nick_name` (`nick_name`),
  ADD KEY `fk_profile_ID` (`fk_profile_ID`),
  ADD KEY `fk_work_experience_ID` (`fk_work_experience_ID`),
  ADD KEY `fk_family_members_ID` (`fk_family_members_ID`);

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
  MODIFY `comment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `current_workplace_from_to`
--
ALTER TABLE `current_workplace_from_to`
  MODIFY `current_workplace_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `family_members`
--
ALTER TABLE `family_members`
  MODIFY `family_members_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `image_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `previous_workplace_from_to`
--
ALTER TABLE `previous_workplace_from_to`
  MODIFY `previous_workplace_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `profile_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `work_experience`
--
ALTER TABLE `work_experience`
  MODIFY `work_experience_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`fk_post_ID`) REFERENCES `post` (`post_ID`);

--
-- Constraints for table `current_workplace_from_to`
--
ALTER TABLE `current_workplace_from_to`
  ADD CONSTRAINT `current_workplace_from_to_ibfk_1` FOREIGN KEY (`fk_work_experience_ID`) REFERENCES `work_experience` (`work_experience_ID`),
  ADD CONSTRAINT `current_workplace_from_to_ibfk_2` FOREIGN KEY (`fk_user_ID`) REFERENCES `user` (`user_ID`);

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
-- Constraints for table `previous_workplace_from_to`
--
ALTER TABLE `previous_workplace_from_to`
  ADD CONSTRAINT `previous_workplace_from_to_ibfk_1` FOREIGN KEY (`fk_work_experience_ID`) REFERENCES `work_experience` (`work_experience_ID`),
  ADD CONSTRAINT `previous_workplace_from_to_ibfk_2` FOREIGN KEY (`fk_user_ID`) REFERENCES `user` (`user_ID`);

--
-- Constraints for table `tag`
--
ALTER TABLE `tag`
  ADD CONSTRAINT `tag_ibfk_1` FOREIGN KEY (`fk_post_ID`) REFERENCES `post` (`post_ID`),
  ADD CONSTRAINT `tag_ibfk_2` FOREIGN KEY (`fk_user_ID`) REFERENCES `user` (`user_ID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`fk_profile_ID`) REFERENCES `profile` (`profile_ID`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`fk_work_experience_ID`) REFERENCES `work_experience` (`work_experience_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
