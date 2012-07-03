CREATE DATABASE IF NOT EXISTS maponto_country;
USE maponto_country;

DROP TABLE IF EXISTS `city_population`;
CREATE TABLE `city_population` (
  `city` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `population` varchar(30) default NULL,
  PRIMARY KEY  (`city`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `coName` varchar(40) NOT NULL,
  `country` varchar(40) default NULL,
  `revenues` varchar(40) default NULL,
  PRIMARY KEY  USING BTREE (`coName`),
  KEY `country` (`country`),
  CONSTRAINT `company_ibfk_1` FOREIGN KEY (`country`) REFERENCES `country` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `name` varchar(40) NOT NULL,
  `capital` varchar(40) default NULL,
  `areaOfCapital` varchar(40) default NULL,
  `currency` varchar(20) default NULL,
  PRIMARY KEY  (`name`),
  KEY `capital` (`capital`),
  KEY `currency` (`currency`),
  CONSTRAINT `country_ibfk_1` FOREIGN KEY (`capital`) REFERENCES `city_population` (`city`),
  CONSTRAINT `country_ibfk_2` FOREIGN KEY (`currency`) REFERENCES `currency_value` (`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `country_cities`;
CREATE TABLE `country_cities` (
  `name` varchar(40) NOT NULL,
  `capital` varchar(40) default NULL,
  `areaOfCapital` varchar(40) default NULL,
  `central` varchar(20) default NULL,
  PRIMARY KEY  (`name`),
  KEY `capital` (`capital`),
  KEY `central` (`central`),
  CONSTRAINT `country_cities_ibfk_1` FOREIGN KEY (`capital`) REFERENCES `city_population` (`city`),
  CONSTRAINT `country_cities_ibfk_2` FOREIGN KEY (`central`) REFERENCES `city_population` (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `currency_value`;
CREATE TABLE `currency_value` (
  `currency` varchar(30) NOT NULL,
  `year` varchar(30) NOT NULL,
  `valueInUsd` varchar(30) default NULL,
  PRIMARY KEY  (`currency`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `european`;
CREATE TABLE `european` (
  `country` varchar(40) NOT NULL,
  `gnp` varchar(40) default NULL,
  PRIMARY KEY  (`country`),
  CONSTRAINT `european_ibfk_1` FOREIGN KEY (`country`) REFERENCES `country` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `export`;
CREATE TABLE `export` (
  `supplier` varchar(40) NOT NULL,
  `consumer` varchar(40) NOT NULL,
  `amount` varchar(40) default NULL,
  PRIMARY KEY  (`supplier`,`consumer`),
  KEY `consumer` (`consumer`),
  CONSTRAINT `export_ibfk_1` FOREIGN KEY (`supplier`) REFERENCES `country` (`name`),
  CONSTRAINT `export_ibfk_2` FOREIGN KEY (`consumer`) REFERENCES `country` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
