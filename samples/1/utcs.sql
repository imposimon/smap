CREATE DATABASE IF NOT EXISTS maponto_utcs;
USE maponto_utcs;

DROP TABLE IF EXISTS `academic_staff`;
CREATE TABLE `academic_staff` (
  `name` varchar(50) NOT NULL,
  `office` varchar(50) default NULL,
  `position` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `phone` varchar(50) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `admin_staff`;
CREATE TABLE `admin_staff` (
  `name` varchar(50) NOT NULL,
  `office` varchar(50) default NULL,
  `position` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `phone` varchar(50) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `areas_of_interest`;
CREATE TABLE `areas_of_interest` (
  `name` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  PRIMARY KEY  (`name`,`area`),
  CONSTRAINT `FK_areasOfInterest_1` FOREIGN KEY (`name`) REFERENCES `student` (`name`),
  CONSTRAINT `FK_areasOfInterest_2` FOREIGN KEY (`name`) REFERENCES `academic_staff` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `courseNumber` varchar(40) NOT NULL,
  `courseTitle` varchar(100) default NULL,
  `instructor` varchar(50) default NULL,
  `area` varchar(50) default NULL,
  `description` varchar(200) default NULL,
  `prerequisite` varchar(200) default NULL,
  PRIMARY KEY  (`courseNumber`),
  KEY `FK_course_1` (`instructor`),
  CONSTRAINT `FK_course_1` FOREIGN KEY (`instructor`) REFERENCES `academic_staff` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `name` varchar(50) NOT NULL,
  `researchGroup` varchar(50) NOT NULL,
  PRIMARY KEY  (`name`,`researchGroup`),
  CONSTRAINT `FK_roles_1` FOREIGN KEY (`name`) REFERENCES `student` (`name`),
  CONSTRAINT `FK_roles_2` FOREIGN KEY (`name`) REFERENCES `academic_staff` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `name` varchar(50) NOT NULL,
  `office` varchar(50) default NULL,
  `position` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `phone` varchar(50) default NULL,
  `supervisor` varchar(50) default NULL,
  PRIMARY KEY  (`name`),
  KEY `FK_student_1` (`supervisor`),
  CONSTRAINT `FK_student_1` FOREIGN KEY (`supervisor`) REFERENCES `academic_staff` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `ta_assignment`;
CREATE TABLE `ta_assignment` (
  `courseNumber` varchar(40) NOT NULL,
  `studentName` varchar(50) NOT NULL,
  PRIMARY KEY  (`courseNumber`,`studentName`),
  KEY `FK_taAssignment_2` (`studentName`),
  CONSTRAINT `FK_taAssignment_1` FOREIGN KEY (`courseNumber`) REFERENCES `course` (`courseNumber`),
  CONSTRAINT `FK_taAssignment_2` FOREIGN KEY (`studentName`) REFERENCES `student` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `technical_staff`;
CREATE TABLE `technical_staff` (
  `name` varchar(50) NOT NULL,
  `office` varchar(50) default NULL,
  `email` varchar(50) default NULL,
  `phone` varchar(50) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
