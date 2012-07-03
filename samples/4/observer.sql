CREATE DATABASE IF NOT EXISTS maponto_observer;
USE maponto_observer;

DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent` (
  `agentName` varchar(200) NOT NULL,
  `agentPublisherAddress` varchar(200) default NULL,
  PRIMARY KEY  (`agentName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `conference`;
CREATE TABLE `conference` (
  `conferenceName` varchar(200) NOT NULL,
  `conferenceDate` varchar(100) default NULL,
  `conferenceAddress` varchar(200) default NULL,
  PRIMARY KEY  (`conferenceName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `doc`;
CREATE TABLE `doc` (
  `docAuthor` varchar(100) default NULL,
  `docSubject` varchar(100) default NULL,
  `docNotes` varchar(200) default NULL,
  `docOtherAuthors` varchar(200) default NULL,
  `docTitle` varchar(200) NOT NULL,
  `docOtherTitles` varchar(200) default NULL,
  `docSeries` varchar(200) default NULL,
  `docCorporateName` varchar(200) default NULL,
  `docDescription` varchar(200) default NULL,
  PRIMARY KEY  (`docTitle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `document`;
CREATE TABLE `document` (
  `documentLoc` varchar(50) default NULL,
  `documentIsbn` varchar(50) default NULL,
  `documentAuthor` varchar(50) default NULL,
  `documentConference` varchar(50) default NULL,
  `documentEdition` varchar(50) default NULL,
  `documentPages` varchar(50) default NULL,
  `documentDate` varchar(50) default NULL,
  `documentPublisher` varchar(50) default NULL,
  `documentSeriesTitle` varchar(50) default NULL,
  `documentTitle` varchar(50) NOT NULL,
  `documentType` varchar(50) default NULL,
  PRIMARY KEY  (`documentTitle`),
  KEY `documentAuthor` (`documentAuthor`),
  KEY `documentConference` (`documentConference`),
  KEY `documentPublisher` (`documentPublisher`),
  CONSTRAINT `document_ibfk_1` FOREIGN KEY (`documentAuthor`) REFERENCES `agent` (`agentName`),
  CONSTRAINT `document_ibfk_2` FOREIGN KEY (`documentConference`) REFERENCES `conference` (`conferenceName`),
  CONSTRAINT `document_ibfk_3` FOREIGN KEY (`documentPublisher`) REFERENCES `agent` (`agentName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pub`;
CREATE TABLE `pub` (
  `pubId` varchar(100) NOT NULL,
  `pubSubjects` varchar(200) default NULL,
  `pubAuthors` varchar(200) default NULL,
  `putTitle` varchar(200) default NULL,
  `pubPublishIn` varchar(200) default NULL,
  `pubType` varchar(200) default NULL,
  `pubDocument` varchar(200) default NULL,
  PRIMARY KEY  (`pubId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `type` varchar(50) default NULL,
  `dateOfPublication` varchar(50) default NULL,
  `illustration` varchar(50) default NULL,
  `targetAudience` varchar(50) default NULL,
  `brailler` varchar(50) default NULL,
  `fiction` varchar(50) default NULL,
  `biography` varchar(50) default NULL,
  `natureOfContents` varchar(50) default NULL,
  `language` varchar(50) default NULL,
  `ISBN` varchar(50) default NULL,
  `ISSN` varchar(50) default NULL,
  `catalogingSource` varchar(50) default NULL,
  `author` varchar(50) default NULL,
  `authorDates` varchar(50) default NULL,
  `corporateName` varchar(100) default NULL,
  `conferenceName` varchar(100) default NULL,
  `conferenceDate` varchar(20) default NULL,
  `title` varchar(100) NOT NULL,
  `edition` varchar(50) default NULL,
  `publication` varchar(50) default NULL,
  `publisher` varchar(50) default NULL,
  `publicationDate` varchar(50) default NULL,
  `phyDescription` varchar(50) default NULL,
  `pages` varchar(10) default NULL,
  `dimensions` varchar(10) default NULL,
  `abstract` varchar(200) default NULL,
  `awards` varchar(200) default NULL,
  `subject` varchar(100) default NULL,
  `generalTopics` varchar(200) default NULL,
  `price` varchar(20) default NULL,
  PRIMARY KEY  (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `ref`;
CREATE TABLE `ref` (
  `title` varchar(100) NOT NULL,
  `collaborators` varchar(100) default NULL,
  `allAuthors` varchar(200) default NULL,
  `publishing` varchar(100) default NULL,
  `edition` varchar(100) default NULL,
  `formatPages` varchar(50) default NULL,
  `titleCollection` varchar(200) default NULL,
  `otherTCollection` varchar(200) default NULL,
  `subject` varchar(100) default NULL,
  `sign` varchar(100) default NULL,
  `abreviateTitle` varchar(20) default NULL,
  `isbnNrContr` varchar(30) default NULL,
  `classification` varchar(20) default NULL,
  `note` varchar(20) default NULL,
  `notes` varchar(200) default NULL,
  `periodicity` varchar(10) default NULL,
  `beginingCession` varchar(10) default NULL,
  `library` varchar(50) default NULL,
  `place` varchar(20) default NULL,
  `numberCopies` varchar(20) default NULL,
  `numberLent` varchar(20) default NULL,
  `kind` varchar(20) default NULL,
  `language` varchar(20) default NULL,
  `data` varchar(20) default NULL,
  `state` varchar(20) default NULL,
  `authorFirm` varchar(50) default NULL,
  `otherFirms` varchar(50) default NULL,
  `collaborator` varchar(50) default NULL,
  `country` varchar(50) default NULL,
  PRIMARY KEY  (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `ref2`;
CREATE TABLE `ref2` (
  `id` varchar(200) NOT NULL,
  `address` varchar(200) default NULL,
  `annote` varchar(200) default NULL,
  `author` varchar(200) default NULL,
  `booktitle` varchar(200) default NULL,
  `chapter` varchar(200) default NULL,
  `crossref` varchar(100) default NULL,
  `edition` varchar(200) default NULL,
  `editor` varchar(200) default NULL,
  `howpublished` varchar(200) default NULL,
  `institution` varchar(200) default NULL,
  `keywords` varchar(200) default NULL,
  `journal` varchar(100) default NULL,
  `month` varchar(200) default NULL,
  `number` varchar(200) default NULL,
  `organization` varchar(200) default NULL,
  `pages` varchar(100) default NULL,
  `publisher` varchar(100) default NULL,
  `school` varchar(200) default NULL,
  `series` varchar(100) default NULL,
  `title` varchar(100) default NULL,
  `type` varchar(100) default NULL,
  `volume` varchar(100) default NULL,
  `year` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
