CREATE DATABASE IF NOT EXISTS maponto_vldb;
USE maponto_vldb;

DROP TABLE IF EXISTS `chair`;
CREATE TABLE `chair` (
  `name` varchar(200) NOT NULL,
  `eventTitle` varchar(200) NOT NULL,
  `startingTime` varchar(200) default NULL,
  `endTime` varchar(200) default NULL,
  PRIMARY KEY  (`name`,`eventTitle`),
  KEY `eventTitle` (`eventTitle`),
  CONSTRAINT `chair_ibfk_1` FOREIGN KEY (`name`) REFERENCES `person` (`name`),
  CONSTRAINT `chair_ibfk_2` FOREIGN KEY (`eventTitle`) REFERENCES `event` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `conference`;
CREATE TABLE `conference` (
  `title` varchar(200) NOT NULL,
  `orderNumber` varchar(100) default NULL,
  `venue` varchar(200) default NULL,
  `year` varchar(100) default NULL,
  PRIMARY KEY  (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `title` varchar(200) NOT NULL,
  `room` varchar(100) default NULL,
  `type` varchar(100) default NULL,
  `website` varchar(200) default NULL,
  `description` varchar(200) default NULL,
  `startingTime` varchar(200) default NULL,
  `endTime` varchar(200) default NULL,
  PRIMARY KEY  (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper` (
  `title` varchar(200) NOT NULL,
  `abstract` varchar(200) default NULL,
  `keywords` varchar(200) default NULL,
  `contactAuthor` varchar(200) default NULL,
  `contactEmail` varchar(200) default NULL,
  `accepted` varchar(10) default NULL,
  PRIMARY KEY  (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `paper_authors`;
CREATE TABLE `paper_authors` (
  `paperTitle` varchar(200) NOT NULL,
  `authorName` varchar(200) NOT NULL,
  PRIMARY KEY  (`paperTitle`,`authorName`),
  KEY `authorName` (`authorName`),
  CONSTRAINT `paper_authors_ibfk_1` FOREIGN KEY (`paperTitle`) REFERENCES `paper` (`title`),
  CONSTRAINT `paper_authors_ibfk_2` FOREIGN KEY (`authorName`) REFERENCES `person` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `name` varchar(200) NOT NULL,
  `title` varchar(200) default NULL,
  `affiliation` varchar(200) default NULL,
  `email` varchar(200) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `presentation`;
CREATE TABLE `presentation` (
  `name` varchar(200) NOT NULL,
  `event` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `startingTime` varchar(200) NOT NULL,
  `endTime` varchar(200) NOT NULL,
  PRIMARY KEY  (`name`,`event`,`title`),
  KEY `event` (`event`),
  KEY `title` (`title`),
  CONSTRAINT `presentation_ibfk_1` FOREIGN KEY (`name`) REFERENCES `person` (`name`),
  CONSTRAINT `presentation_ibfk_2` FOREIGN KEY (`event`) REFERENCES `event` (`title`),
  CONSTRAINT `presentation_ibfk_3` FOREIGN KEY (`title`) REFERENCES `paper` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `registration`;
CREATE TABLE `registration` (
  `name` varchar(200) NOT NULL,
  `student` varchar(10) default NULL,
  `inConference` varchar(10) default NULL,
  `inWorkshop` varchar(10) default NULL,
  PRIMARY KEY  (`name`),
  CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`name`) REFERENCES `person` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `workshop_registration`;
CREATE TABLE `workshop_registration` (
  `name` varchar(200) NOT NULL,
  `workshop` varchar(200) NOT NULL,
  PRIMARY KEY  (`name`,`workshop`),
  KEY `workshop` (`workshop`),
  CONSTRAINT `workshop_registration_ibfk_1` FOREIGN KEY (`name`) REFERENCES `person` (`name`),
  CONSTRAINT `workshop_registration_ibfk_2` FOREIGN KEY (`workshop`) REFERENCES `event` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
