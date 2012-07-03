CREATE DATABASE IF NOT EXISTS maponto_dblp;
USE maponto_dblp;

DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `authorName` varchar(100) NOT NULL,
  `authorAddress` varchar(100) default NULL,
  PRIMARY KEY  (`authorName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cites`;
CREATE TABLE `cites` (
  `citingDoc` varchar(100) NOT NULL,
  `citedDoc` varchar(100) NOT NULL,
  PRIMARY KEY  (`citingDoc`,`citedDoc`),
  KEY `citedDoc` (`citedDoc`),
  CONSTRAINT `cites_ibfk_1` FOREIGN KEY (`citingDoc`) REFERENCES `doc` (`title`),
  CONSTRAINT `cites_ibfk_2` FOREIGN KEY (`citedDoc`) REFERENCES `doc` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `doc`;
CREATE TABLE `doc` (
  `title` varchar(200) NOT NULL,
  `booktitle` varchar(100) default NULL,
  `pages` varchar(50) default NULL,
  `year` varchar(50) default NULL,
  `address` varchar(50) default NULL,
  `journal` varchar(50) default NULL,
  `volume` varchar(50) default NULL,
  `number` varchar(50) default NULL,
  `month` varchar(50) default NULL,
  `url` varchar(50) default NULL,
  `ee` varchar(200) default NULL,
  `cdrom` varchar(100) default NULL,
  `publisher` varchar(200) default NULL,
  `note` varchar(200) default NULL,
  `crossref` varchar(100) default NULL,
  `isbn` varchar(100) default NULL,
  `series` varchar(100) default NULL,
  `school` varchar(200) default NULL,
  `chapter` varchar(100) default NULL,
  PRIMARY KEY  (`title`),
  KEY `journal` (`journal`),
  KEY `FK_doc_1` (`publisher`),
  CONSTRAINT `FK_doc_1` FOREIGN KEY (`publisher`) REFERENCES `publisher` (`publisherName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `publisher`;
CREATE TABLE `publisher` (
  `publisherName` varchar(100) NOT NULL,
  `publisherAddress` varchar(100) default NULL,
  PRIMARY KEY  (`publisherName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `writes`;
CREATE TABLE `writes` (
  `author` varchar(100) NOT NULL,
  `doc` varchar(100) NOT NULL,
  PRIMARY KEY  (`author`,`doc`),
  KEY `doc` (`doc`),
  CONSTRAINT `writes_ibfk_1` FOREIGN KEY (`author`) REFERENCES `author` (`authorName`),
  CONSTRAINT `writes_ibfk_2` FOREIGN KEY (`doc`) REFERENCES `doc` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
