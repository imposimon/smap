-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.67-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ibm_wsrr
--

CREATE DATABASE IF NOT EXISTS ibm_wsrr;
USE ibm_wsrr;

--
-- Definition of table `allvaluesfrom`
--

DROP TABLE IF EXISTS `allvaluesfrom`;
CREATE TABLE `allvaluesfrom` (
  `ID` int(10) NOT NULL default '0',
  `PROPERTYID` int(10) default NULL,
  `TARGETID` int(10) default NULL,
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `allvaluesfrom`
--

/*!40000 ALTER TABLE `allvaluesfrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `allvaluesfrom` ENABLE KEYS */;


--
-- Definition of table `analysispath`
--

DROP TABLE IF EXISTS `analysispath`;
CREATE TABLE `analysispath` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `TIMESTARTED_XMETA` bigint(19) default NULL,
  `ROOTNODE_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `analysispath`
--

/*!40000 ALTER TABLE `analysispath` DISABLE KEYS */;
/*!40000 ALTER TABLE `analysispath` ENABLE KEYS */;


--
-- Definition of table `analysispath_options_reffrom`
--

DROP TABLE IF EXISTS `analysispath_options_reffrom`;
CREATE TABLE `analysispath_options_reffrom` (
  `OPTIONS_XMETA` varchar(64) default NULL,
  `REFFROM_OPTIONS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `analysispath_options_reffrom`
--

/*!40000 ALTER TABLE `analysispath_options_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `analysispath_options_reffrom` ENABLE KEYS */;


--
-- Definition of table `analysispathlink`
--

DROP TABLE IF EXISTS `analysispathlink`;
CREATE TABLE `analysispathlink` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `LINKNAME_XMETA` varchar(255) default NULL,
  `REVERSELINKNAME_XMETA` varchar(255) default NULL,
  `LINKTYPES_XMETA` longtext,
  `TARGET_XMETA` varchar(64) default NULL,
  `CONTAININGNODE_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `analysispathlink`
--

/*!40000 ALTER TABLE `analysispathlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `analysispathlink` ENABLE KEYS */;


--
-- Definition of table `analysispathnode`
--

DROP TABLE IF EXISTS `analysispathnode`;
CREATE TABLE `analysispathnode` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `CLASSNAME_XMETA` varchar(255) default NULL,
  `CLASSPACKAGE_XMETA` varchar(255) default NULL,
  `NODENAME_XMETA` varchar(255) default NULL,
  `RID_XMETA` varchar(255) default NULL,
  `NODETYPE_XMETA` int(10) default NULL,
  `CREATEDBYUSER_XMETA` varchar(255) default NULL,
  `CREATEDTIMESTAMP_XMETA` bigint(19) default NULL,
  `MODIFIEDBYUSER_XMETA` varchar(255) default NULL,
  `MODIFIEDTIMESTAMP_XMETA` bigint(19) default NULL,
  `DESCRIPTION_XMETA` varchar(255) default NULL,
  `CONTAININGPATH_XMETA` varchar(64) default NULL,
  `BACKLINK_XMETA` varchar(64) default NULL,
  `LINKS_XMETA` longtext,
  `EXTRAATTRIBUTEVALUES_XMETA` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `analysispathnode`
--

/*!40000 ALTER TABLE `analysispathnode` DISABLE KEYS */;
/*!40000 ALTER TABLE `analysispathnode` ENABLE KEYS */;


--
-- Definition of table `attributedeclaration`
--

DROP TABLE IF EXISTS `attributedeclaration`;
CREATE TABLE `attributedeclaration` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributedeclaration`
--

/*!40000 ALTER TABLE `attributedeclaration` DISABLE KEYS */;
/*!40000 ALTER TABLE `attributedeclaration` ENABLE KEYS */;


--
-- Definition of table `attributevalue`
--

DROP TABLE IF EXISTS `attributevalue`;
CREATE TABLE `attributevalue` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `ATTRIBUTENAME_XMETA` varchar(255) default NULL,
  `VALUE_XMETA` varchar(255) default NULL,
  `CONTAININGNODE_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributevalue`
--

/*!40000 ALTER TABLE `attributevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `attributevalue` ENABLE KEYS */;


--
-- Definition of table `binarycontentblock`
--

DROP TABLE IF EXISTS `binarycontentblock`;
CREATE TABLE `binarycontentblock` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `DATA_XMETA` longblob,
  `BLOCKINDEX_XMETA` int(10) default NULL,
  `NEXTCONTENTBLOCK_XMETA` varchar(64) default NULL,
  `PREVIOUSCONTENTBLOCK_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `binarycontentblock`
--

/*!40000 ALTER TABLE `binarycontentblock` DISABLE KEYS */;
/*!40000 ALTER TABLE `binarycontentblock` ENABLE KEYS */;


--
-- Definition of table `binarycontentblock_metadataitem_reffrom`
--

DROP TABLE IF EXISTS `binarycontentblock_metadataitem_reffrom`;
CREATE TABLE `binarycontentblock_metadataitem_reffrom` (
  `METADATAITEM_XMETA` varchar(64) default NULL,
  `REFFROM_METADATAITEM_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `binarycontentblock_metadataitem_reffrom`
--

/*!40000 ALTER TABLE `binarycontentblock_metadataitem_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `binarycontentblock_metadataitem_reffrom` ENABLE KEYS */;


--
-- Definition of table `binarymetadataitem`
--

DROP TABLE IF EXISTS `binarymetadataitem`;
CREATE TABLE `binarymetadataitem` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `URI_XMETA` varchar(512) default NULL,
  `NAME_XMETA` varchar(254) default NULL,
  `DESCRIPTION_XMETA` longtext,
  `PROPERTIES_XMETA` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `binarymetadataitem`
--

/*!40000 ALTER TABLE `binarymetadataitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `binarymetadataitem` ENABLE KEYS */;


--
-- Definition of table `binarymetadataitem_content_reffrom`
--

DROP TABLE IF EXISTS `binarymetadataitem_content_reffrom`;
CREATE TABLE `binarymetadataitem_content_reffrom` (
  `CONTENT_XMETA` varchar(64) default NULL,
  `REFFROM_CONTENT_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `binarymetadataitem_content_reffrom`
--

/*!40000 ALTER TABLE `binarymetadataitem_content_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `binarymetadataitem_content_reffrom` ENABLE KEYS */;


--
-- Definition of table `cardinality`
--

DROP TABLE IF EXISTS `cardinality`;
CREATE TABLE `cardinality` (
  `ID` int(10) NOT NULL default '0',
  `PROPERTYID` int(10) default NULL,
  `CARDINALITY` int(10) default NULL,
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cardinality`
--

/*!40000 ALTER TABLE `cardinality` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardinality` ENABLE KEYS */;


--
-- Definition of table `charactercontentblock`
--

DROP TABLE IF EXISTS `charactercontentblock`;
CREATE TABLE `charactercontentblock` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `DATA_XMETA` longtext,
  `BLOCKINDEX_XMETA` int(10) default NULL,
  `NEXTCONTENTBLOCK_XMETA` varchar(64) default NULL,
  `PREVIOUSCONTENTBLOCK_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `charactercontentblock`
--

/*!40000 ALTER TABLE `charactercontentblock` DISABLE KEYS */;
/*!40000 ALTER TABLE `charactercontentblock` ENABLE KEYS */;


--
-- Definition of table `charactercontentblock_metadataitem_reffrom`
--

DROP TABLE IF EXISTS `charactercontentblock_metadataitem_reffrom`;
CREATE TABLE `charactercontentblock_metadataitem_reffrom` (
  `METADATAITEM_XMETA` varchar(64) default NULL,
  `REFFROM_METADATAITEM_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `charactercontentblock_metadataitem_reffrom`
--

/*!40000 ALTER TABLE `charactercontentblock_metadataitem_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `charactercontentblock_metadataitem_reffrom` ENABLE KEYS */;


--
-- Definition of table `charactermetadataitem`
--

DROP TABLE IF EXISTS `charactermetadataitem`;
CREATE TABLE `charactermetadataitem` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `URI_XMETA` varchar(512) default NULL,
  `NAME_XMETA` varchar(254) default NULL,
  `DESCRIPTION_XMETA` longtext,
  `PROPERTIES_XMETA` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `charactermetadataitem`
--

/*!40000 ALTER TABLE `charactermetadataitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `charactermetadataitem` ENABLE KEYS */;


--
-- Definition of table `charactermetadataitem_content_reffrom`
--

DROP TABLE IF EXISTS `charactermetadataitem_content_reffrom`;
CREATE TABLE `charactermetadataitem_content_reffrom` (
  `CONTENT_XMETA` varchar(64) default NULL,
  `REFFROM_CONTENT_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `charactermetadataitem_content_reffrom`
--

/*!40000 ALTER TABLE `charactermetadataitem_content_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `charactermetadataitem_content_reffrom` ENABLE KEYS */;


--
-- Definition of table `classes`
--

DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `ID` int(10) default NULL,
  `ONTOLOGYID` int(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;


--
-- Definition of table `commonuri`
--

DROP TABLE IF EXISTS `commonuri`;
CREATE TABLE `commonuri` (
  `ID` int(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commonuri`
--

/*!40000 ALTER TABLE `commonuri` DISABLE KEYS */;
/*!40000 ALTER TABLE `commonuri` ENABLE KEYS */;


--
-- Definition of table `compiledquery`
--

DROP TABLE IF EXISTS `compiledquery`;
CREATE TABLE `compiledquery` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `QUERYEXPRESSION_XMETA` varchar(255) default NULL,
  `PACKAGE_XMETA` varchar(255) default NULL,
  `TIMETOCOMPILE_XMETA` bigint(19) default NULL,
  `ERRORS_XMETA` varchar(255) default NULL,
  `WARNINGS_XMETA` varchar(255) default NULL,
  `RESULTTYPE_XMETA` longtext,
  `ISREPORT_XMETA` smallint(5) default NULL,
  `SOURCECLASS_XMETA` varchar(255) default NULL,
  `STATUS_XMETA` int(10) default NULL,
  `BOUNDPARAMETER_XMETA` longtext,
  `RUN_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `compiledquery`
--

/*!40000 ALTER TABLE `compiledquery` DISABLE KEYS */;
/*!40000 ALTER TABLE `compiledquery` ENABLE KEYS */;


--
-- Definition of table `complement`
--

DROP TABLE IF EXISTS `complement`;
CREATE TABLE `complement` (
  `ID` int(10) NOT NULL default '0',
  `TARGETID` int(10) default NULL,
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `complement`
--

/*!40000 ALTER TABLE `complement` DISABLE KEYS */;
/*!40000 ALTER TABLE `complement` ENABLE KEYS */;


--
-- Definition of table `complextypedefinition`
--

DROP TABLE IF EXISTS `complextypedefinition`;
CREATE TABLE `complextypedefinition` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `complextypedefinition`
--

/*!40000 ALTER TABLE `complextypedefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `complextypedefinition` ENABLE KEYS */;


--
-- Definition of table `complextypedefinition_localattribute_reffrom`
--

DROP TABLE IF EXISTS `complextypedefinition_localattribute_reffrom`;
CREATE TABLE `complextypedefinition_localattribute_reffrom` (
  `LOCALATTRIBUTE_XMETA` varchar(64) default NULL,
  `REFFROM_LOCALATTRIBUTE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `complextypedefinition_localattribute_reffrom`
--

/*!40000 ALTER TABLE `complextypedefinition_localattribute_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `complextypedefinition_localattribute_reffrom` ENABLE KEYS */;


--
-- Definition of table `configitem`
--

DROP TABLE IF EXISTS `configitem`;
CREATE TABLE `configitem` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `CONFIGTYPE_XMETA` varchar(1020) default NULL,
  `ISSYSTEM_XMETA` smallint(5) default NULL,
  `CONTENT_XMETA` longblob,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CHECKSUM_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `configitem`
--

/*!40000 ALTER TABLE `configitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `configitem` ENABLE KEYS */;


--
-- Definition of table `datalineagetemplate`
--

DROP TABLE IF EXISTS `datalineagetemplate`;
CREATE TABLE `datalineagetemplate` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `SHORTDESCRIPTION_XMETA` varchar(255) default NULL,
  `LONGDESCRIPTION_XMETA` varchar(255) default NULL,
  `SOURCEPACKAGE_XMETA` varchar(255) default NULL,
  `ANALYSISDEPTH_XMETA` int(10) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datalineagetemplate`
--

/*!40000 ALTER TABLE `datalineagetemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `datalineagetemplate` ENABLE KEYS */;


--
-- Definition of table `datarange`
--

DROP TABLE IF EXISTS `datarange`;
CREATE TABLE `datarange` (
  `ID` int(10) NOT NULL default '0',
  `MEMBERID` int(10) NOT NULL default '0',
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`ID`,`MEMBERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datarange`
--

/*!40000 ALTER TABLE `datarange` DISABLE KEYS */;
/*!40000 ALTER TABLE `datarange` ENABLE KEYS */;


--
-- Definition of table `datatype`
--

DROP TABLE IF EXISTS `datatype`;
CREATE TABLE `datatype` (
  `ID` int(10) NOT NULL default '0',
  `URI` varchar(768) default NULL,
  `HASHCODE` int(10) default NULL,
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datatype`
--

/*!40000 ALTER TABLE `datatype` DISABLE KEYS */;
/*!40000 ALTER TABLE `datatype` ENABLE KEYS */;


--
-- Definition of table `differencenode`
--

DROP TABLE IF EXISTS `differencenode`;
CREATE TABLE `differencenode` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `LEFTCLASSNAME_XMETA` varchar(255) default NULL,
  `RIGHTCLASSNAME_XMETA` varchar(255) default NULL,
  `COMPAREDCLASSNAME_XMETA` varchar(255) default NULL,
  `LEFTOBJECTRID_XMETA` varchar(255) default NULL,
  `RIGHTOBJECTRID_XMETA` varchar(255) default NULL,
  `IGNOREDLEFTFEATURES_XMETA` longtext,
  `IGNOREDRIGHTFEATURES_XMETA` longtext,
  `CYCLICLEFTLEAFNODE_XMETA` smallint(5) default NULL,
  `CYCLICRIGHTLEAFNODE_XMETA` smallint(5) default NULL,
  `CONTAININGTREE_XMETA` varchar(64) default NULL,
  `DISSIMILARATTRIBUTES_XMETA` longtext,
  `SIMILARATTRIBUTES_XMETA` longtext,
  `SIMILARREFERENCES_XMETA` longtext,
  `BACKLINK_XMETA` varchar(64) default NULL,
  `DISSIMILARREFERENCES_XMETA` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `differencenode`
--

/*!40000 ALTER TABLE `differencenode` DISABLE KEYS */;
/*!40000 ALTER TABLE `differencenode` ENABLE KEYS */;


--
-- Definition of table `differencetree`
--

DROP TABLE IF EXISTS `differencetree`;
CREATE TABLE `differencetree` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `TIMESTARTED_XMETA` bigint(19) default NULL,
  `ROOTNODE_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `differencetree`
--

/*!40000 ALTER TABLE `differencetree` DISABLE KEYS */;
/*!40000 ALTER TABLE `differencetree` ENABLE KEYS */;


--
-- Definition of table `differencetree_options_reffrom`
--

DROP TABLE IF EXISTS `differencetree_options_reffrom`;
CREATE TABLE `differencetree_options_reffrom` (
  `OPTIONS_XMETA` varchar(64) default NULL,
  `REFFROM_OPTIONS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `differencetree_options_reffrom`
--

/*!40000 ALTER TABLE `differencetree_options_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `differencetree_options_reffrom` ENABLE KEYS */;


--
-- Definition of table `differencingtemplate`
--

DROP TABLE IF EXISTS `differencingtemplate`;
CREATE TABLE `differencingtemplate` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `SHORTDESCRIPTION_XMETA` varchar(255) default NULL,
  `LONGDESCRIPTION_XMETA` varchar(255) default NULL,
  `SOURCEPACKAGE_XMETA` varchar(255) default NULL,
  `EXACTTYPE_XMETA` smallint(5) default NULL,
  `IGNOREATTRIBUTES_XMETA` smallint(5) default NULL,
  `CASEINSENSITIVECOMPARE_XMETA` smallint(5) default NULL,
  `ROLLUPDISSIMILAR_XMETA` smallint(5) default NULL,
  `INCLUDECONTAINERREFERENCESXMET` smallint(5) default NULL,
  `INCLUDENONCONTAINMENTRFRNCSXMT` smallint(5) default NULL,
  `INCLUDEDERIVEDFEATURES_XMETA` smallint(5) default NULL,
  `REFERENCEDEPTH_XMETA` int(10) default NULL,
  `EXCLUDEINVERSEREFERENCES_XMETA` smallint(5) default NULL,
  `EXCLUDEATTRIBUTES_XMETA` longtext,
  `EXCLUDEREFERENCES_XMETA` longtext,
  `EXCLUDECLASSES_XMETA` longtext,
  `RETURNVALUES_XMETA` smallint(5) default NULL,
  `RETURNDIFFERENCESONLY_XMETA` smallint(5) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `differencingtemplate`
--

/*!40000 ALTER TABLE `differencingtemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `differencingtemplate` ENABLE KEYS */;


--
-- Definition of table `differentindividual`
--

DROP TABLE IF EXISTS `differentindividual`;
CREATE TABLE `differentindividual` (
  `INDIVIDUALID1` int(10) NOT NULL default '0',
  `INDIVIDUALID2` int(10) NOT NULL default '0',
  `INFERRED` smallint(5) default NULL,
  PRIMARY KEY  (`INDIVIDUALID1`,`INDIVIDUALID2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `differentindividual`
--

/*!40000 ALTER TABLE `differentindividual` DISABLE KEYS */;
/*!40000 ALTER TABLE `differentindividual` ENABLE KEYS */;


--
-- Definition of table `differentindividuals`
--

DROP TABLE IF EXISTS `differentindividuals`;
CREATE TABLE `differentindividuals` (
  `NODEID1` int(10) NOT NULL default '0',
  `NODEID2` int(10) NOT NULL default '0',
  PRIMARY KEY  (`NODEID1`,`NODEID2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `differentindividuals`
--

/*!40000 ALTER TABLE `differentindividuals` DISABLE KEYS */;
/*!40000 ALTER TABLE `differentindividuals` ENABLE KEYS */;


--
-- Definition of table `disjointclass`
--

DROP TABLE IF EXISTS `disjointclass`;
CREATE TABLE `disjointclass` (
  `CLASSID1` int(10) NOT NULL default '0',
  `CLASSID2` int(10) NOT NULL default '0',
  PRIMARY KEY  (`CLASSID1`,`CLASSID2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `disjointclass`
--

/*!40000 ALTER TABLE `disjointclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `disjointclass` ENABLE KEYS */;


--
-- Definition of table `dissimilarattribute`
--

DROP TABLE IF EXISTS `dissimilarattribute`;
CREATE TABLE `dissimilarattribute` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `FEATURENAME_XMETA` varchar(255) default NULL,
  `LEFTVALUE_XMETA` varchar(255) default NULL,
  `RIGHTVALUE_XMETA` varchar(255) default NULL,
  `DATATYPENAME_XMETA` varchar(255) default NULL,
  `CONTAININGNODE_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dissimilarattribute`
--

/*!40000 ALTER TABLE `dissimilarattribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `dissimilarattribute` ENABLE KEYS */;


--
-- Definition of table `dissimilarreference`
--

DROP TABLE IF EXISTS `dissimilarreference`;
CREATE TABLE `dissimilarreference` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `FEATURENAME_XMETA` varchar(255) default NULL,
  `TARGETS_XMETA` longtext,
  `CONTAININGNODE_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dissimilarreference`
--

/*!40000 ALTER TABLE `dissimilarreference` DISABLE KEYS */;
/*!40000 ALTER TABLE `dissimilarreference` ENABLE KEYS */;


--
-- Definition of table `domain`
--

DROP TABLE IF EXISTS `domain`;
CREATE TABLE `domain` (
  `PROPERTYID` int(10) NOT NULL default '0',
  `CLASSID` int(10) NOT NULL default '0',
  PRIMARY KEY  (`PROPERTYID`,`CLASSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `domain`
--

/*!40000 ALTER TABLE `domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `domain` ENABLE KEYS */;


--
-- Definition of table `dummy`
--

DROP TABLE IF EXISTS `dummy`;
CREATE TABLE `dummy` (
  `DUMMYID` int(10) default NULL,
  `DUMMYSTRING` varchar(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dummy`
--

/*!40000 ALTER TABLE `dummy` DISABLE KEYS */;
/*!40000 ALTER TABLE `dummy` ENABLE KEYS */;


--
-- Definition of table `elementdeclaration`
--

DROP TABLE IF EXISTS `elementdeclaration`;
CREATE TABLE `elementdeclaration` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elementdeclaration`
--

/*!40000 ALTER TABLE `elementdeclaration` DISABLE KEYS */;
/*!40000 ALTER TABLE `elementdeclaration` ENABLE KEYS */;


--
-- Definition of table `epackage`
--

DROP TABLE IF EXISTS `epackage`;
CREATE TABLE `epackage` (
  `URI` varchar(255) default NULL,
  `XML` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `epackage`
--

/*!40000 ALTER TABLE `epackage` DISABLE KEYS */;
/*!40000 ALTER TABLE `epackage` ENABLE KEYS */;


--
-- Definition of table `explain_argument`
--

DROP TABLE IF EXISTS `explain_argument`;
CREATE TABLE `explain_argument` (
  `EXPLAIN_REQUESTER` varchar(128) default NULL,
  `EXPLAIN_TIME` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `SOURCE_NAME` varchar(128) default NULL,
  `SOURCE_SCHEMA` varchar(128) default NULL,
  `SOURCE_VERSION` varchar(64) default NULL,
  `EXPLAIN_LEVEL` char(1) default NULL,
  `STMTNO` int(10) default NULL,
  `SECTNO` int(10) default NULL,
  `OPERATOR_ID` int(10) default NULL,
  `ARGUMENT_TYPE` char(8) default NULL,
  `ARGUMENT_VALUE` varchar(1024) default NULL,
  `LONG_ARGUMENT_VALUE` mediumtext,
  KEY `FK_explain_argument_1` (`EXPLAIN_REQUESTER`,`EXPLAIN_TIME`,`SOURCE_NAME`,`SOURCE_SCHEMA`,`SOURCE_VERSION`,`EXPLAIN_LEVEL`,`STMTNO`,`SECTNO`),
  CONSTRAINT `FK_explain_argument_1` FOREIGN KEY (`EXPLAIN_REQUESTER`, `EXPLAIN_TIME`, `SOURCE_NAME`, `SOURCE_SCHEMA`, `SOURCE_VERSION`, `EXPLAIN_LEVEL`, `STMTNO`, `SECTNO`) REFERENCES `explain_statement` (`EXPLAIN_REQUESTER`, `EXPLAIN_TIME`, `SOURCE_NAME`, `SOURCE_SCHEMA`, `SOURCE_VERSION`, `EXPLAIN_LEVEL`, `STMTNO`, `SECTNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `explain_argument`
--

/*!40000 ALTER TABLE `explain_argument` DISABLE KEYS */;
/*!40000 ALTER TABLE `explain_argument` ENABLE KEYS */;


--
-- Definition of table `explain_diagnostic`
--

DROP TABLE IF EXISTS `explain_diagnostic`;
CREATE TABLE `explain_diagnostic` (
  `EXPLAIN_REQUESTER` varchar(128) NOT NULL default '',
  `EXPLAIN_TIME` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `SOURCE_NAME` varchar(128) NOT NULL default '',
  `SOURCE_SCHEMA` varchar(128) NOT NULL default '',
  `SOURCE_VERSION` varchar(64) NOT NULL default '',
  `EXPLAIN_LEVEL` char(1) NOT NULL default '',
  `STMTNO` int(10) NOT NULL default '0',
  `SECTNO` int(10) NOT NULL default '0',
  `DIAGNOSTIC_ID` int(10) NOT NULL default '0',
  `CODE` int(10) default NULL,
  PRIMARY KEY  (`EXPLAIN_REQUESTER`,`EXPLAIN_TIME`,`SOURCE_NAME`,`SOURCE_SCHEMA`,`SOURCE_VERSION`,`EXPLAIN_LEVEL`,`STMTNO`,`SECTNO`,`DIAGNOSTIC_ID`),
  CONSTRAINT `FK_explain_diagnostic_1` FOREIGN KEY (`EXPLAIN_REQUESTER`, `EXPLAIN_TIME`, `SOURCE_NAME`, `SOURCE_SCHEMA`, `SOURCE_VERSION`, `EXPLAIN_LEVEL`, `STMTNO`, `SECTNO`) REFERENCES `explain_statement` (`EXPLAIN_REQUESTER`, `EXPLAIN_TIME`, `SOURCE_NAME`, `SOURCE_SCHEMA`, `SOURCE_VERSION`, `EXPLAIN_LEVEL`, `STMTNO`, `SECTNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `explain_diagnostic`
--

/*!40000 ALTER TABLE `explain_diagnostic` DISABLE KEYS */;
/*!40000 ALTER TABLE `explain_diagnostic` ENABLE KEYS */;


--
-- Definition of table `explain_diagnostic_data`
--

DROP TABLE IF EXISTS `explain_diagnostic_data`;
CREATE TABLE `explain_diagnostic_data` (
  `EXPLAIN_REQUESTER` varchar(128) default NULL,
  `EXPLAIN_TIME` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `SOURCE_NAME` varchar(128) default NULL,
  `SOURCE_SCHEMA` varchar(128) default NULL,
  `SOURCE_VERSION` varchar(64) default NULL,
  `EXPLAIN_LEVEL` char(1) default NULL,
  `STMTNO` int(10) default NULL,
  `SECTNO` int(10) default NULL,
  `DIAGNOSTIC_ID` int(10) default NULL,
  `ORDINAL` int(10) default NULL,
  `TOKEN` varchar(1000) default NULL,
  `TOKEN_LONG` mediumblob,
  KEY `FK_explain_diagnostic_data_1` (`EXPLAIN_REQUESTER`,`EXPLAIN_TIME`,`SOURCE_NAME`,`SOURCE_SCHEMA`,`SOURCE_VERSION`,`EXPLAIN_LEVEL`,`STMTNO`,`SECTNO`,`DIAGNOSTIC_ID`),
  CONSTRAINT `FK_explain_diagnostic_data_1` FOREIGN KEY (`EXPLAIN_REQUESTER`, `EXPLAIN_TIME`, `SOURCE_NAME`, `SOURCE_SCHEMA`, `SOURCE_VERSION`, `EXPLAIN_LEVEL`, `STMTNO`, `SECTNO`, `DIAGNOSTIC_ID`) REFERENCES `explain_diagnostic` (`EXPLAIN_REQUESTER`, `EXPLAIN_TIME`, `SOURCE_NAME`, `SOURCE_SCHEMA`, `SOURCE_VERSION`, `EXPLAIN_LEVEL`, `STMTNO`, `SECTNO`, `DIAGNOSTIC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `explain_diagnostic_data`
--

/*!40000 ALTER TABLE `explain_diagnostic_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `explain_diagnostic_data` ENABLE KEYS */;


--
-- Definition of table `explain_instance`
--

DROP TABLE IF EXISTS `explain_instance`;
CREATE TABLE `explain_instance` (
  `EXPLAIN_REQUESTER` varchar(128) NOT NULL default '',
  `EXPLAIN_TIME` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `SOURCE_NAME` varchar(128) NOT NULL default '',
  `SOURCE_SCHEMA` varchar(128) NOT NULL default '',
  `SOURCE_VERSION` varchar(64) NOT NULL default '',
  `EXPLAIN_OPTION` char(1) default NULL,
  `SNAPSHOT_TAKEN` char(1) default NULL,
  `DB2_VERSION` char(7) default NULL,
  `SQL_TYPE` char(1) default NULL,
  `QUERYOPT` int(10) default NULL,
  `BLOCK` char(1) default NULL,
  `ISOLATION` char(2) default NULL,
  `BUFFPAGE` int(10) default NULL,
  `AVG_APPLS` int(10) default NULL,
  `SORTHEAP` int(10) default NULL,
  `LOCKLIST` int(10) default NULL,
  `MAXLOCKS` smallint(5) default NULL,
  `LOCKS_AVAIL` int(10) default NULL,
  `CPU_SPEED` double default NULL,
  `REMARKS` varchar(254) default NULL,
  `DBHEAP` int(10) default NULL,
  `COMM_SPEED` double default NULL,
  `PARALLELISM` char(2) default NULL,
  `DATAJOINER` char(1) default NULL,
  PRIMARY KEY  (`EXPLAIN_REQUESTER`,`EXPLAIN_TIME`,`SOURCE_NAME`,`SOURCE_SCHEMA`,`SOURCE_VERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `explain_instance`
--

/*!40000 ALTER TABLE `explain_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `explain_instance` ENABLE KEYS */;


--
-- Definition of table `explain_object`
--

DROP TABLE IF EXISTS `explain_object`;
CREATE TABLE `explain_object` (
  `EXPLAIN_REQUESTER` varchar(128) default NULL,
  `EXPLAIN_TIME` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `SOURCE_NAME` varchar(128) default NULL,
  `SOURCE_SCHEMA` varchar(128) default NULL,
  `SOURCE_VERSION` varchar(64) default NULL,
  `EXPLAIN_LEVEL` char(1) default NULL,
  `STMTNO` int(10) default NULL,
  `SECTNO` int(10) default NULL,
  `BJECT_SCHEMA` varchar(128) default NULL,
  `OBJECT_NAME` varchar(128) default NULL,
  `OBJECT_TYPE` char(2) default NULL,
  `CREATE_TIME` timestamp NOT NULL default '0000-00-00 00:00:00',
  `STATISTICS_TIME` timestamp NOT NULL default '0000-00-00 00:00:00',
  `COLUMN_COUNT` smallint(5) default NULL,
  `ROW_COUNT` bigint(19) default NULL,
  `WIDTH` int(10) default NULL,
  `PAGES` bigint(19) default NULL,
  `DISTINCT_` char(1) default NULL,
  `TABLESPACE_NAME` varchar(128) default NULL,
  `OVERHEAD` double default NULL,
  `TRANSFER_RATE` double default NULL,
  `PREFETCHSIZE` int(10) default NULL,
  `EXTENTSIZE` int(10) default NULL,
  `CLUSTER` double default NULL,
  `NLEAF` bigint(19) default NULL,
  `NLEVELS` int(10) default NULL,
  `FULLKEYCARD` bigint(19) default NULL,
  `OVERFLOW` bigint(19) default NULL,
  `FIRSTKEYCARD` bigint(19) default NULL,
  `FIRST2KEYCARD` bigint(19) default NULL,
  `FIRST3KEYCARD` bigint(19) default NULL,
  `FIRST4KEYCARD` bigint(19) default NULL,
  `SEQUENTIAL_PAGES` bigint(19) default NULL,
  `DENSITY` int(10) default NULL,
  `STATS_SRC` char(1) default NULL,
  `AVERAGE_SEQUENCE_GAP` double default NULL,
  `AVERAGE_SEQUENCE_FETCH_GAP` double default NULL,
  `AVERAGE_SEQUENCE_PAGES` double default NULL,
  `AVERAGE_SEQUENCE_FETCH_PAGES` double default NULL,
  `AVERAGE_RANDOM_PAGES` double default NULL,
  `AVERAGE_RANDOM_FETCH_PAGES` double default NULL,
  `NUMRIDS` bigint(19) default NULL,
  `NUMRIDS_DELETED` bigint(19) default NULL,
  `NUM_EMPTY_LEAFS` bigint(19) default NULL,
  `ACTIVE_BLOCKS` bigint(19) default NULL,
  `NUM_DATA_PARTS` int(10) default NULL,
  KEY `FK_explain_object_1` (`EXPLAIN_REQUESTER`,`EXPLAIN_TIME`,`SOURCE_NAME`,`SOURCE_SCHEMA`,`SOURCE_VERSION`,`EXPLAIN_LEVEL`,`STMTNO`,`SECTNO`),
  CONSTRAINT `FK_explain_object_1` FOREIGN KEY (`EXPLAIN_REQUESTER`, `EXPLAIN_TIME`, `SOURCE_NAME`, `SOURCE_SCHEMA`, `SOURCE_VERSION`, `EXPLAIN_LEVEL`, `STMTNO`, `SECTNO`) REFERENCES `explain_statement` (`EXPLAIN_REQUESTER`, `EXPLAIN_TIME`, `SOURCE_NAME`, `SOURCE_SCHEMA`, `SOURCE_VERSION`, `EXPLAIN_LEVEL`, `STMTNO`, `SECTNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `explain_object`
--

/*!40000 ALTER TABLE `explain_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `explain_object` ENABLE KEYS */;


--
-- Definition of table `explain_operator`
--

DROP TABLE IF EXISTS `explain_operator`;
CREATE TABLE `explain_operator` (
  `EXPLAIN_REQUESTER` varchar(128) default NULL,
  `EXPLAIN_TIME` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `SOURCE_NAME` varchar(128) default NULL,
  `SOURCE_SCHEMA` varchar(128) default NULL,
  `SOURCE_VERSION` varchar(64) default NULL,
  `EXPLAIN_LEVEL` char(1) default NULL,
  `STMTNO` int(10) default NULL,
  `SECTNO` int(10) default NULL,
  `OPERATOR_ID` int(10) default NULL,
  `OPERATOR_TYPE` char(6) default NULL,
  `TOTAL_COST` double default NULL,
  `IO_COST` double default NULL,
  `CPU_COST` double default NULL,
  `FIRST_ROW_COST` double default NULL,
  `RE_TOTAL_COST` double default NULL,
  `RE_IO_COST` double default NULL,
  `RE_CPU_COST` double default NULL,
  `COMM_COST` double default NULL,
  `FIRST_COMM_COST` double default NULL,
  `BUFFERS` double default NULL,
  `REMOTE_TOTAL_COST` double default NULL,
  `REMOTE_COMM_COST` double default NULL,
  KEY `FK_explain_operator_1` (`EXPLAIN_REQUESTER`,`EXPLAIN_TIME`,`SOURCE_NAME`,`SOURCE_SCHEMA`,`SOURCE_VERSION`,`EXPLAIN_LEVEL`,`STMTNO`,`SECTNO`),
  CONSTRAINT `FK_explain_operator_1` FOREIGN KEY (`EXPLAIN_REQUESTER`, `EXPLAIN_TIME`, `SOURCE_NAME`, `SOURCE_SCHEMA`, `SOURCE_VERSION`, `EXPLAIN_LEVEL`, `STMTNO`, `SECTNO`) REFERENCES `explain_statement` (`EXPLAIN_REQUESTER`, `EXPLAIN_TIME`, `SOURCE_NAME`, `SOURCE_SCHEMA`, `SOURCE_VERSION`, `EXPLAIN_LEVEL`, `STMTNO`, `SECTNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `explain_operator`
--

/*!40000 ALTER TABLE `explain_operator` DISABLE KEYS */;
/*!40000 ALTER TABLE `explain_operator` ENABLE KEYS */;


--
-- Definition of table `explain_predicate`
--

DROP TABLE IF EXISTS `explain_predicate`;
CREATE TABLE `explain_predicate` (
  `EXPLAIN_REQUESTER` varchar(128) default NULL,
  `EXPLAIN_TIME` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `SOURCE_NAME` varchar(128) default NULL,
  `SOURCE_SCHEMA` varchar(128) default NULL,
  `SOURCE_VERSION` varchar(64) default NULL,
  `EXPLAIN_LEVEL` char(1) default NULL,
  `STMTNO` int(10) default NULL,
  `SECTNO` int(10) default NULL,
  `OPERATOR_ID` int(10) default NULL,
  `PREDICATE_ID` int(10) default NULL,
  `HOW_APPLIED` char(10) default NULL,
  `WHEN_EVALUATED` char(3) default NULL,
  `RELOP_TYPE` char(2) default NULL,
  `SUBQUERY` char(1) default NULL,
  `FILTER_FACTOR` double default NULL,
  `PREDICATE_TEXT` mediumtext,
  `RANGE_NUM` int(10) default NULL,
  KEY `FK_explain_predicate_1` (`EXPLAIN_REQUESTER`,`EXPLAIN_TIME`,`SOURCE_NAME`,`SOURCE_SCHEMA`,`SOURCE_VERSION`,`EXPLAIN_LEVEL`,`STMTNO`,`SECTNO`),
  CONSTRAINT `FK_explain_predicate_1` FOREIGN KEY (`EXPLAIN_REQUESTER`, `EXPLAIN_TIME`, `SOURCE_NAME`, `SOURCE_SCHEMA`, `SOURCE_VERSION`, `EXPLAIN_LEVEL`, `STMTNO`, `SECTNO`) REFERENCES `explain_statement` (`EXPLAIN_REQUESTER`, `EXPLAIN_TIME`, `SOURCE_NAME`, `SOURCE_SCHEMA`, `SOURCE_VERSION`, `EXPLAIN_LEVEL`, `STMTNO`, `SECTNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `explain_predicate`
--

/*!40000 ALTER TABLE `explain_predicate` DISABLE KEYS */;
/*!40000 ALTER TABLE `explain_predicate` ENABLE KEYS */;


--
-- Definition of table `explain_statement`
--

DROP TABLE IF EXISTS `explain_statement`;
CREATE TABLE `explain_statement` (
  `EXPLAIN_REQUESTER` varchar(128) NOT NULL default '',
  `EXPLAIN_TIME` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `SOURCE_NAME` varchar(128) NOT NULL default '',
  `SOURCE_SCHEMA` varchar(128) NOT NULL default '',
  `SOURCE_VERSION` varchar(64) NOT NULL default '',
  `EXPLAIN_LEVEL` char(1) NOT NULL default '',
  `STMTNO` int(10) NOT NULL default '0',
  `SECTNO` int(10) NOT NULL default '0',
  `QUERYNO` int(10) default NULL,
  `QUERYTAG` char(20) default NULL,
  `STATEMENT_TYPE` char(2) default NULL,
  `UPDATABLE` char(1) default NULL,
  `DELETABLE` char(1) default NULL,
  `TOTAL_COST` double default NULL,
  `STATEMENT_TEXT` mediumtext,
  `SNAPSHOT` mediumblob,
  `QUERY_DEGREE` int(10) default NULL,
  PRIMARY KEY  (`EXPLAIN_REQUESTER`,`EXPLAIN_TIME`,`SOURCE_NAME`,`SOURCE_SCHEMA`,`SOURCE_VERSION`,`EXPLAIN_LEVEL`,`STMTNO`,`SECTNO`),
  CONSTRAINT `FK_explain_statement_1` FOREIGN KEY (`EXPLAIN_REQUESTER`, `EXPLAIN_TIME`, `SOURCE_NAME`, `SOURCE_SCHEMA`, `SOURCE_VERSION`) REFERENCES `explain_instance` (`EXPLAIN_REQUESTER`, `EXPLAIN_TIME`, `SOURCE_NAME`, `SOURCE_SCHEMA`, `SOURCE_VERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `explain_statement`
--

/*!40000 ALTER TABLE `explain_statement` DISABLE KEYS */;
/*!40000 ALTER TABLE `explain_statement` ENABLE KEYS */;


--
-- Definition of table `explain_stream`
--

DROP TABLE IF EXISTS `explain_stream`;
CREATE TABLE `explain_stream` (
  `EXPLAIN_REQUESTER` varchar(128) default NULL,
  `EXPLAIN_TIME` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `SOURCE_NAME` varchar(128) default NULL,
  `SOURCE_SCHEMA` varchar(128) default NULL,
  `SOURCE_VERSION` varchar(64) default NULL,
  `EXPLAIN_LEVEL` char(1) default NULL,
  `STMTNO` int(10) default NULL,
  `SECTNO` int(10) default NULL,
  `STREAM_ID` int(10) default NULL,
  `SOURCE_TYPE` char(1) default NULL,
  `SOURCE_ID` int(10) default NULL,
  `TARGET_TYPE` char(1) default NULL,
  `TARGET_ID` int(10) default NULL,
  `OBJECT_SCHEMA` varchar(128) default NULL,
  `OBJECT_NAME` varchar(128) default NULL,
  `STREAM_COUNT` double default NULL,
  `COLUMN_COUNT` smallint(5) default NULL,
  `PREDICATE_ID` int(10) default NULL,
  `COLUMN_NAMES` mediumtext,
  `PMID` smallint(5) default NULL,
  `SINGLE_NODE` char(5) default NULL,
  `PARTITION_COLUMNS` mediumtext,
  `SEQUENCE_SIZES` mediumtext,
  KEY `FK_explain_stream_1` (`EXPLAIN_REQUESTER`,`EXPLAIN_TIME`,`SOURCE_NAME`,`SOURCE_SCHEMA`,`SOURCE_VERSION`,`EXPLAIN_LEVEL`,`STMTNO`,`SECTNO`),
  CONSTRAINT `FK_explain_stream_1` FOREIGN KEY (`EXPLAIN_REQUESTER`, `EXPLAIN_TIME`, `SOURCE_NAME`, `SOURCE_SCHEMA`, `SOURCE_VERSION`, `EXPLAIN_LEVEL`, `STMTNO`, `SECTNO`) REFERENCES `explain_statement` (`EXPLAIN_REQUESTER`, `EXPLAIN_TIME`, `SOURCE_NAME`, `SOURCE_SCHEMA`, `SOURCE_VERSION`, `EXPLAIN_LEVEL`, `STMTNO`, `SECTNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `explain_stream`
--

/*!40000 ALTER TABLE `explain_stream` DISABLE KEYS */;
/*!40000 ALTER TABLE `explain_stream` ENABLE KEYS */;


--
-- Definition of table `export`
--

DROP TABLE IF EXISTS `export`;
CREATE TABLE `export` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `export`
--

/*!40000 ALTER TABLE `export` DISABLE KEYS */;
/*!40000 ALTER TABLE `export` ENABLE KEYS */;


--
-- Definition of table `export_exportbinding_reffrom`
--

DROP TABLE IF EXISTS `export_exportbinding_reffrom`;
CREATE TABLE `export_exportbinding_reffrom` (
  `EXPORTBINDING_XMETA` varchar(64) default NULL,
  `REFFROM_EXPORTBINDING_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `export_exportbinding_reffrom`
--

/*!40000 ALTER TABLE `export_exportbinding_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `export_exportbinding_reffrom` ENABLE KEYS */;


--
-- Definition of table `export_scainterface_reffrom`
--

DROP TABLE IF EXISTS `export_scainterface_reffrom`;
CREATE TABLE `export_scainterface_reffrom` (
  `SCAINTERFACE_XMETA` varchar(64) default NULL,
  `REFFROM_SCAINTERFACE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `export_scainterface_reffrom`
--

/*!40000 ALTER TABLE `export_scainterface_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `export_scainterface_reffrom` ENABLE KEYS */;


--
-- Definition of table `exporttemplate`
--

DROP TABLE IF EXISTS `exporttemplate`;
CREATE TABLE `exporttemplate` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `SHORTDESCRIPTION_XMETA` varchar(255) default NULL,
  `LONGDESCRIPTION_XMETA` varchar(255) default NULL,
  `SOURCEPACKAGE_XMETA` varchar(255) default NULL,
  `USEINTERNALXMIIDS_XMETA` smallint(5) default NULL,
  `IGNOREUPCASTTOPACKAGECONTXTXMT` smallint(5) default NULL,
  `XMIENCODING_XMETA` varchar(255) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exporttemplate`
--

/*!40000 ALTER TABLE `exporttemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `exporttemplate` ENABLE KEYS */;


--
-- Definition of table `extensionlogicalobject`
--

DROP TABLE IF EXISTS `extensionlogicalobject`;
CREATE TABLE `extensionlogicalobject` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `EXTENSIONNAMESPACE_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extensionlogicalobject`
--

/*!40000 ALTER TABLE `extensionlogicalobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `extensionlogicalobject` ENABLE KEYS */;


--
-- Definition of table `genericmetadataitem`
--

DROP TABLE IF EXISTS `genericmetadataitem`;
CREATE TABLE `genericmetadataitem` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `ORIGINALURI_XMETA` varchar(1020) default NULL,
  `CONTENTSIZE_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genericmetadataitem`
--

/*!40000 ALTER TABLE `genericmetadataitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `genericmetadataitem` ENABLE KEYS */;


--
-- Definition of table `genericobject`
--

DROP TABLE IF EXISTS `genericobject`;
CREATE TABLE `genericobject` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `PRIMARYTYPE_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genericobject`
--

/*!40000 ALTER TABLE `genericobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `genericobject` ENABLE KEYS */;


--
-- Definition of table `gov_change_approval`
--

DROP TABLE IF EXISTS `gov_change_approval`;
CREATE TABLE `gov_change_approval` (
  `ID` int(10) NOT NULL default '0',
  `CHANGE_STATUS_ID` int(10) default NULL,
  `APPROVAL_BY` varchar(254) default NULL,
  `DATE_CREATED` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `DATE_MODIFIED` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ID`),
  KEY `CHANGE_STATUS_ID` (`CHANGE_STATUS_ID`),
  CONSTRAINT `gov_change_approval_ibfk_1` FOREIGN KEY (`CHANGE_STATUS_ID`) REFERENCES `gov_change_status` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gov_change_approval`
--

/*!40000 ALTER TABLE `gov_change_approval` DISABLE KEYS */;
/*!40000 ALTER TABLE `gov_change_approval` ENABLE KEYS */;


--
-- Definition of table `gov_change_document`
--

DROP TABLE IF EXISTS `gov_change_document`;
CREATE TABLE `gov_change_document` (
  `ID` int(10) NOT NULL default '0',
  `DOCUMENT_TYPE_ID` int(10) default NULL,
  `CONTENT_BLOB` blob,
  `CHANGE_STATUS_ID` int(10) default NULL,
  `DOCUMENT_NAME` varchar(100) default NULL,
  `CONTENT_TYPE` varchar(32) default NULL,
  `DATE_CREATED` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `DATE_MODIFIED` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ID`),
  KEY `CHANGE_STATUS_ID` (`CHANGE_STATUS_ID`),
  CONSTRAINT `gov_change_document_ibfk_1` FOREIGN KEY (`CHANGE_STATUS_ID`) REFERENCES `gov_change_status` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gov_change_document`
--

/*!40000 ALTER TABLE `gov_change_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `gov_change_document` ENABLE KEYS */;


--
-- Definition of table `gov_change_status`
--

DROP TABLE IF EXISTS `gov_change_status`;
CREATE TABLE `gov_change_status` (
  `ID` int(10) NOT NULL default '0',
  `STATUS_ID` int(10) default NULL,
  `CHANGE_SUBMISSION_ID` int(10) default NULL,
  `DATE_CREATED` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `DATE_MODIFIED` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ID`),
  KEY `CHANGE_SUBMISSION_ID` (`CHANGE_SUBMISSION_ID`),
  CONSTRAINT `gov_change_status_ibfk_1` FOREIGN KEY (`CHANGE_SUBMISSION_ID`) REFERENCES `gov_change_submission` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gov_change_status`
--

/*!40000 ALTER TABLE `gov_change_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `gov_change_status` ENABLE KEYS */;


--
-- Definition of table `gov_change_submission`
--

DROP TABLE IF EXISTS `gov_change_submission`;
CREATE TABLE `gov_change_submission` (
  `ID` int(10) NOT NULL default '0',
  `REQUEST_ID` varchar(32) default NULL,
  `CATALOG_VERSION` int(10) default NULL,
  `SUBMITTED_BY` varchar(254) default NULL,
  `SUBMISSION_DATE` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `COMMIT_DATE` timestamp NOT NULL default '0000-00-00 00:00:00',
  `SHORT_DESCRIPTION` varchar(200) default NULL,
  `LONG_DESCRIPTION` varchar(1000) default NULL,
  `DATE_CREATED` timestamp NOT NULL default '0000-00-00 00:00:00',
  `DATE_MODIFIED` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gov_change_submission`
--

/*!40000 ALTER TABLE `gov_change_submission` DISABLE KEYS */;
/*!40000 ALTER TABLE `gov_change_submission` ENABLE KEYS */;


--
-- Definition of table `gov_top_level_element`
--

DROP TABLE IF EXISTS `gov_top_level_element`;
CREATE TABLE `gov_top_level_element` (
  `ID` int(10) NOT NULL default '0',
  `CHANGE_SUBMISSION_ID` int(10) default NULL,
  `INDIVIDUAL_URI` varchar(255) default NULL,
  `TYPE_URI` varchar(255) default NULL,
  `LOCKED_AT_SUBMIT` smallint(5) default NULL,
  `DATE_CREATED` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `DATE_MODIFIED` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ID`),
  KEY `CHANGE_SUBMISSION_ID` (`CHANGE_SUBMISSION_ID`),
  CONSTRAINT `gov_top_level_element_ibfk_1` FOREIGN KEY (`CHANGE_SUBMISSION_ID`) REFERENCES `gov_change_submission` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gov_top_level_element`
--

/*!40000 ALTER TABLE `gov_top_level_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `gov_top_level_element` ENABLE KEYS */;


--
-- Definition of table `governancerecord`
--

DROP TABLE IF EXISTS `governancerecord`;
CREATE TABLE `governancerecord` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `ENTITYBSRURI_XMETA` varchar(1020) default NULL,
  `STATES_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `governancerecord`
--

/*!40000 ALTER TABLE `governancerecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `governancerecord` ENABLE KEYS */;


--
-- Definition of table `governancerecord_governedobjects_reffrom`
--

DROP TABLE IF EXISTS `governancerecord_governedobjects_reffrom`;
CREATE TABLE `governancerecord_governedobjects_reffrom` (
  `GOVERNEDOBJECTS_XMETA` varchar(64) default NULL,
  `REFFROM_GOVERNEDOBJECTS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `governancerecord_governedobjects_reffrom`
--

/*!40000 ALTER TABLE `governancerecord_governedobjects_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `governancerecord_governedobjects_reffrom` ENABLE KEYS */;


--
-- Definition of table `graphquery`
--

DROP TABLE IF EXISTS `graphquery`;
CREATE TABLE `graphquery` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `QUERYHANDLE_XMETA` bigint(19) default NULL,
  `QUERYXPATH_XMETA` varchar(1020) default NULL,
  `QUERYXMQL_XMETA` varchar(1020) default NULL,
  `DEPTH_XMETA` int(10) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `graphquery`
--

/*!40000 ALTER TABLE `graphquery` DISABLE KEYS */;
/*!40000 ALTER TABLE `graphquery` ENABLE KEYS */;


--
-- Definition of table `hasvalue`
--

DROP TABLE IF EXISTS `hasvalue`;
CREATE TABLE `hasvalue` (
  `ID` int(10) NOT NULL default '0',
  `PROPERTYID` int(10) default NULL,
  `TARGETID` int(10) default NULL,
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hasvalue`
--

/*!40000 ALTER TABLE `hasvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `hasvalue` ENABLE KEYS */;


--
-- Definition of table `impactanalysistemplate`
--

DROP TABLE IF EXISTS `impactanalysistemplate`;
CREATE TABLE `impactanalysistemplate` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `SHORTDESCRIPTION_XMETA` varchar(255) default NULL,
  `LONGDESCRIPTION_XMETA` varchar(255) default NULL,
  `SOURCEPACKAGE_XMETA` varchar(255) default NULL,
  `ANALYSISDEPTH_XMETA` int(10) default NULL,
  `SOURCECLASS_XMETA` varchar(255) default NULL,
  `LINKTYPES_XMETA` longtext,
  `INCLUDEREFERENCES_XMETA` longtext,
  `IGNOREREFERENCES_XMETA` longtext,
  `IGNORESIMILARPATHS_XMETA` smallint(5) default NULL,
  `RESTRICTCLASSES_XMETA` longtext,
  `STOPCLASSES_XMETA` longtext,
  `LEAFCLASSES_XMETA` longtext,
  `EXTRAATTRIBUTEVALUES_XMETA` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `impactanalysistemplate`
--

/*!40000 ALTER TABLE `impactanalysistemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `impactanalysistemplate` ENABLE KEYS */;


--
-- Definition of table `import`
--

DROP TABLE IF EXISTS `import`;
CREATE TABLE `import` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `import`
--

/*!40000 ALTER TABLE `import` DISABLE KEYS */;
/*!40000 ALTER TABLE `import` ENABLE KEYS */;


--
-- Definition of table `import_importbinding_reffrom`
--

DROP TABLE IF EXISTS `import_importbinding_reffrom`;
CREATE TABLE `import_importbinding_reffrom` (
  `IMPORTBINDING_XMETA` varchar(64) default NULL,
  `REFFROM_IMPORTBINDING_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `import_importbinding_reffrom`
--

/*!40000 ALTER TABLE `import_importbinding_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_importbinding_reffrom` ENABLE KEYS */;


--
-- Definition of table `import_scainterface_reffrom`
--

DROP TABLE IF EXISTS `import_scainterface_reffrom`;
CREATE TABLE `import_scainterface_reffrom` (
  `SCAINTERFACE_XMETA` varchar(64) default NULL,
  `REFFROM_SCAINTERFACE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `import_scainterface_reffrom`
--

/*!40000 ALTER TABLE `import_scainterface_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_scainterface_reffrom` ENABLE KEYS */;


--
-- Definition of table `importrecord`
--

DROP TABLE IF EXISTS `importrecord`;
CREATE TABLE `importrecord` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `RUNRECORDS_XMETA` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `importrecord`
--

/*!40000 ALTER TABLE `importrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `importrecord` ENABLE KEYS */;


--
-- Definition of table `importrecord_importfolder_reffrom`
--

DROP TABLE IF EXISTS `importrecord_importfolder_reffrom`;
CREATE TABLE `importrecord_importfolder_reffrom` (
  `IMPORTFOLDER_XMETA` varchar(64) default NULL,
  `REFFROM_IMPORTFOLDER_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `importrecord_importfolder_reffrom`
--

/*!40000 ALTER TABLE `importrecord_importfolder_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `importrecord_importfolder_reffrom` ENABLE KEYS */;


--
-- Definition of table `importrunrecord`
--

DROP TABLE IF EXISTS `importrunrecord`;
CREATE TABLE `importrunrecord` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `TIMESTART_XMETA` bigint(19) default NULL,
  `TIMEEND_XMETA` bigint(19) default NULL,
  `RIDSDELETED_XMETA` longtext,
  `SUCCESS_XMETA` smallint(5) default NULL,
  `IMPORTOPTIONS_XMETA` varchar(64) default NULL,
  `PARENTRECORD_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `importrunrecord`
--

/*!40000 ALTER TABLE `importrunrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `importrunrecord` ENABLE KEYS */;


--
-- Definition of table `importtemplate`
--

DROP TABLE IF EXISTS `importtemplate`;
CREATE TABLE `importtemplate` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `SHORTDESCRIPTION_XMETA` varchar(255) default NULL,
  `LONGDESCRIPTION_XMETA` varchar(255) default NULL,
  `SOURCEPACKAGE_XMETA` varchar(255) default NULL,
  `FOLDERINSTANCE_XMETA` varchar(255) default NULL,
  `ASSOCIATEWITHIMPORTRECORDXMETA` smallint(5) default NULL,
  `TREATASREIMPORT_XMETA` smallint(5) default NULL,
  `DOIMPLIEDDELETES_XMETA` smallint(5) default NULL,
  `MULTIPLEIDENTITYMATCHHNDLNGXMT` int(10) default NULL,
  `ACQUIREFOLDERLOCK_XMETA` smallint(5) default NULL,
  `MISSINGIDENTITYDEFINITNSRRRXMT` smallint(5) default NULL,
  `DEPENDENTPACKAGESMTCHHNDLNGXMT` int(10) default NULL,
  `CONNECTONLYMATCHCLASSESRQRDXMT` longtext,
  `CONNECTONLYMATCHCLASSESPTNLXMT` longtext,
  `USEDINIMPORT_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `importtemplate`
--

/*!40000 ALTER TABLE `importtemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `importtemplate` ENABLE KEYS */;


--
-- Definition of table `individual`
--

DROP TABLE IF EXISTS `individual`;
CREATE TABLE `individual` (
  `ID` bigint(19) NOT NULL default '0',
  `WCCOID` bigint(19) default NULL,
  `URI` varchar(768) default NULL,
  `HASHCODE` int(10) default NULL,
  `ONTOLOGYID` int(10) default NULL,
  `NODEID` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `individual`
--

/*!40000 ALTER TABLE `individual` DISABLE KEYS */;
/*!40000 ALTER TABLE `individual` ENABLE KEYS */;


--
-- Definition of table `interface`
--

DROP TABLE IF EXISTS `interface`;
CREATE TABLE `interface` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `PREFERREDINTERACTIONSTYLEXMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `interface`
--

/*!40000 ALTER TABLE `interface` DISABLE KEYS */;
/*!40000 ALTER TABLE `interface` ENABLE KEYS */;


--
-- Definition of table `intersection`
--

DROP TABLE IF EXISTS `intersection`;
CREATE TABLE `intersection` (
  `ID` int(10) NOT NULL default '0',
  `MEMBERID` int(10) NOT NULL default '0',
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`ID`,`MEMBERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `intersection`
--

/*!40000 ALTER TABLE `intersection` DISABLE KEYS */;
/*!40000 ALTER TABLE `intersection` ENABLE KEYS */;


--
-- Definition of table `inversepropertyof`
--

DROP TABLE IF EXISTS `inversepropertyof`;
CREATE TABLE `inversepropertyof` (
  `PROPERTYID1` int(10) NOT NULL default '0',
  `PROPERTYID2` int(10) NOT NULL default '0',
  PRIMARY KEY  (`PROPERTYID1`,`PROPERTYID2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inversepropertyof`
--

/*!40000 ALTER TABLE `inversepropertyof` DISABLE KEYS */;
/*!40000 ALTER TABLE `inversepropertyof` ENABLE KEYS */;


--
-- Definition of table `jmsexportbinding`
--

DROP TABLE IF EXISTS `jmsexportbinding`;
CREATE TABLE `jmsexportbinding` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `DATABINDINGTYPE_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmsexportbinding`
--

/*!40000 ALTER TABLE `jmsexportbinding` DISABLE KEYS */;
/*!40000 ALTER TABLE `jmsexportbinding` ENABLE KEYS */;


--
-- Definition of table `jmsimportbinding`
--

DROP TABLE IF EXISTS `jmsimportbinding`;
CREATE TABLE `jmsimportbinding` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `DATABINDINGTYPE_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmsimportbinding`
--

/*!40000 ALTER TABLE `jmsimportbinding` DISABLE KEYS */;
/*!40000 ALTER TABLE `jmsimportbinding` ENABLE KEYS */;


--
-- Definition of table `jmsimportbinding_jmsexportbinding_reffrom`
--

DROP TABLE IF EXISTS `jmsimportbinding_jmsexportbinding_reffrom`;
CREATE TABLE `jmsimportbinding_jmsexportbinding_reffrom` (
  `JMSEXPORTBINDING_XMETA` varchar(64) default NULL,
  `REFFROM_JMSEXPORTBINDING_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmsimportbinding_jmsexportbinding_reffrom`
--

/*!40000 ALTER TABLE `jmsimportbinding_jmsexportbinding_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `jmsimportbinding_jmsexportbinding_reffrom` ENABLE KEYS */;


--
-- Definition of table `joinedrelationship`
--

DROP TABLE IF EXISTS `joinedrelationship`;
CREATE TABLE `joinedrelationship` (
  `SUBJECTID` bigint(19) NOT NULL default '0',
  `SUBNODEID` int(10) default NULL,
  `PREDICATEID` int(10) NOT NULL default '0',
  `OBJECTID` bigint(19) NOT NULL default '0',
  `OBJNODEID` int(10) default NULL,
  PRIMARY KEY  (`SUBJECTID`,`PREDICATEID`,`OBJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `joinedrelationship`
--

/*!40000 ALTER TABLE `joinedrelationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `joinedrelationship` ENABLE KEYS */;


--
-- Definition of table `kb`
--

DROP TABLE IF EXISTS `kb`;
CREATE TABLE `kb` (
  `ID` int(10) default NULL,
  `NAME` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kb`
--

/*!40000 ALTER TABLE `kb` DISABLE KEYS */;
/*!40000 ALTER TABLE `kb` ENABLE KEYS */;


--
-- Definition of table `lit_boolean`
--

DROP TABLE IF EXISTS `lit_boolean`;
CREATE TABLE `lit_boolean` (
  `ID` int(10) NOT NULL default '0',
  `VALUE` smallint(5) default NULL,
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lit_boolean`
--

/*!40000 ALTER TABLE `lit_boolean` DISABLE KEYS */;
/*!40000 ALTER TABLE `lit_boolean` ENABLE KEYS */;


--
-- Definition of table `lit_datetime`
--

DROP TABLE IF EXISTS `lit_datetime`;
CREATE TABLE `lit_datetime` (
  `ID` int(10) NOT NULL default '0',
  `VALUE` bigint(19) default NULL,
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lit_datetime`
--

/*!40000 ALTER TABLE `lit_datetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `lit_datetime` ENABLE KEYS */;


--
-- Definition of table `lit_number`
--

DROP TABLE IF EXISTS `lit_number`;
CREATE TABLE `lit_number` (
  `ID` int(10) NOT NULL default '0',
  `VALUE` double default NULL,
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lit_number`
--

/*!40000 ALTER TABLE `lit_number` DISABLE KEYS */;
/*!40000 ALTER TABLE `lit_number` ENABLE KEYS */;


--
-- Definition of table `literal`
--

DROP TABLE IF EXISTS `literal`;
CREATE TABLE `literal` (
  `ID` int(10) NOT NULL default '0',
  `LEXICAL` varchar(1950) default NULL,
  `LANG` varchar(100) default NULL,
  `DATATYPEID` int(10) default NULL,
  `HASHCODE` int(10) default NULL,
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `literal`
--

/*!40000 ALTER TABLE `literal` DISABLE KEYS */;
/*!40000 ALTER TABLE `literal` ENABLE KEYS */;


--
-- Definition of table `localattribute`
--

DROP TABLE IF EXISTS `localattribute`;
CREATE TABLE `localattribute` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `ATTRIBUTETYPE_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `localattribute`
--

/*!40000 ALTER TABLE `localattribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `localattribute` ENABLE KEYS */;


--
-- Definition of table `maxcardinality`
--

DROP TABLE IF EXISTS `maxcardinality`;
CREATE TABLE `maxcardinality` (
  `ID` int(10) NOT NULL default '0',
  `PROPERTYID` int(10) default NULL,
  `CARDINALITY` int(10) default NULL,
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `maxcardinality`
--

/*!40000 ALTER TABLE `maxcardinality` DISABLE KEYS */;
/*!40000 ALTER TABLE `maxcardinality` ENABLE KEYS */;


--
-- Definition of table `maxneighbour`
--

DROP TABLE IF EXISTS `maxneighbour`;
CREATE TABLE `maxneighbour` (
  `NODEID` int(10) NOT NULL default '0',
  `PROPERTYID` int(10) NOT NULL default '0',
  `MAXCOUNT` int(10) default NULL,
  PRIMARY KEY  (`NODEID`,`PROPERTYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `maxneighbour`
--

/*!40000 ALTER TABLE `maxneighbour` DISABLE KEYS */;
/*!40000 ALTER TABLE `maxneighbour` ENABLE KEYS */;


--
-- Definition of table `mergefeaturerule`
--

DROP TABLE IF EXISTS `mergefeaturerule`;
CREATE TABLE `mergefeaturerule` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `FEATURENAME_XMETA` varchar(255) default NULL,
  `BIAS_XMETA` int(10) default NULL,
  `MERGEEXPRESSION_XMETA` varchar(255) default NULL,
  `CONTAININGTEMPLATE_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mergefeaturerule`
--

/*!40000 ALTER TABLE `mergefeaturerule` DISABLE KEYS */;
/*!40000 ALTER TABLE `mergefeaturerule` ENABLE KEYS */;


--
-- Definition of table `mergetemplate`
--

DROP TABLE IF EXISTS `mergetemplate`;
CREATE TABLE `mergetemplate` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `SHORTDESCRIPTION_XMETA` varchar(255) default NULL,
  `LONGDESCRIPTION_XMETA` varchar(255) default NULL,
  `SOURCEPACKAGE_XMETA` varchar(255) default NULL,
  `ATTRIBUTEBIAS_XMETA` int(10) default NULL,
  `ATTRIBUTEEXPR_XMETA` varchar(255) default NULL,
  `CONTAINMENTREFBIAS_XMETA` int(10) default NULL,
  `CONTAINMENTREFEXPR_XMETA` varchar(255) default NULL,
  `NONCONTAINMENTREFBIAS_XMETA` int(10) default NULL,
  `NONCONTAINMENTREFEXPR_XMETA` varchar(255) default NULL,
  `RETARGETREFERENCES_XMETA` smallint(5) default NULL,
  `FEATURERULES_XMETA` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mergetemplate`
--

/*!40000 ALTER TABLE `mergetemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `mergetemplate` ENABLE KEYS */;


--
-- Definition of table `metadataitemcontent`
--

DROP TABLE IF EXISTS `metadataitemcontent`;
CREATE TABLE `metadataitemcontent` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `CONTENT_XMETA` longblob,
  `BSRURI_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `metadataitemcontent`
--

/*!40000 ALTER TABLE `metadataitemcontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `metadataitemcontent` ENABLE KEYS */;


--
-- Definition of table `metadataproperty`
--

DROP TABLE IF EXISTS `metadataproperty`;
CREATE TABLE `metadataproperty` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `VALUE_XMETA` varchar(4000) default NULL,
  `METADATAITEM_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `metadataproperty`
--

/*!40000 ALTER TABLE `metadataproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `metadataproperty` ENABLE KEYS */;


--
-- Definition of table `metadataproperty_propertytype_reffrom`
--

DROP TABLE IF EXISTS `metadataproperty_propertytype_reffrom`;
CREATE TABLE `metadataproperty_propertytype_reffrom` (
  `PROPERTYTYPE_XMETA` varchar(64) default NULL,
  `REFFROM_PROPERTYTYPE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `metadataproperty_propertytype_reffrom`
--

/*!40000 ALTER TABLE `metadataproperty_propertytype_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `metadataproperty_propertytype_reffrom` ENABLE KEYS */;


--
-- Definition of table `metadatapropertytype`
--

DROP TABLE IF EXISTS `metadatapropertytype`;
CREATE TABLE `metadatapropertytype` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `DESCRIPTION_XMETA` longtext,
  `NAME_XMETA` varchar(254) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `metadatapropertytype`
--

/*!40000 ALTER TABLE `metadatapropertytype` DISABLE KEYS */;
/*!40000 ALTER TABLE `metadatapropertytype` ENABLE KEYS */;


--
-- Definition of table `metadatarelationship`
--

DROP TABLE IF EXISTS `metadatarelationship`;
CREATE TABLE `metadatarelationship` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `metadatarelationship`
--

/*!40000 ALTER TABLE `metadatarelationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `metadatarelationship` ENABLE KEYS */;


--
-- Definition of table `metadatarelationship_relationshiptype_reffrom`
--

DROP TABLE IF EXISTS `metadatarelationship_relationshiptype_reffrom`;
CREATE TABLE `metadatarelationship_relationshiptype_reffrom` (
  `RELATIONSHIPTYPE_XMETA` varchar(64) default NULL,
  `REFFROM_RELATIONSHIPTYPE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `metadatarelationship_relationshiptype_reffrom`
--

/*!40000 ALTER TABLE `metadatarelationship_relationshiptype_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `metadatarelationship_relationshiptype_reffrom` ENABLE KEYS */;


--
-- Definition of table `metadatarelationship_source_reffrom`
--

DROP TABLE IF EXISTS `metadatarelationship_source_reffrom`;
CREATE TABLE `metadatarelationship_source_reffrom` (
  `SOURCE_XMETA` varchar(64) default NULL,
  `REFFROM_SOURCE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `metadatarelationship_source_reffrom`
--

/*!40000 ALTER TABLE `metadatarelationship_source_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `metadatarelationship_source_reffrom` ENABLE KEYS */;


--
-- Definition of table `metadatarelationship_target_reffrom`
--

DROP TABLE IF EXISTS `metadatarelationship_target_reffrom`;
CREATE TABLE `metadatarelationship_target_reffrom` (
  `TARGET_XMETA` varchar(64) default NULL,
  `REFFROM_TARGET_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `metadatarelationship_target_reffrom`
--

/*!40000 ALTER TABLE `metadatarelationship_target_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `metadatarelationship_target_reffrom` ENABLE KEYS */;


--
-- Definition of table `metadatarelationshiptype`
--

DROP TABLE IF EXISTS `metadatarelationshiptype`;
CREATE TABLE `metadatarelationshiptype` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(254) default NULL,
  `DESCRIPTION_XMETA` longtext,
  `SOURCEROLE_XMETA` varchar(128) default NULL,
  `TARGETROLE_XMETA` varchar(128) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `metadatarelationshiptype`
--

/*!40000 ALTER TABLE `metadatarelationshiptype` DISABLE KEYS */;
/*!40000 ALTER TABLE `metadatarelationshiptype` ENABLE KEYS */;


--
-- Definition of table `mincardinality`
--

DROP TABLE IF EXISTS `mincardinality`;
CREATE TABLE `mincardinality` (
  `ID` int(10) NOT NULL default '0',
  `PROPERTYID` int(10) default NULL,
  `CARDINALITY` int(10) default NULL,
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mincardinality`
--

/*!40000 ALTER TABLE `mincardinality` DISABLE KEYS */;
/*!40000 ALTER TABLE `mincardinality` ENABLE KEYS */;


--
-- Definition of table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `MODULETYPE_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module`
--

/*!40000 ALTER TABLE `module` DISABLE KEYS */;
/*!40000 ALTER TABLE `module` ENABLE KEYS */;


--
-- Definition of table `module_scaexport_reffrom`
--

DROP TABLE IF EXISTS `module_scaexport_reffrom`;
CREATE TABLE `module_scaexport_reffrom` (
  `SCAEXPORT_XMETA` varchar(64) default NULL,
  `REFFROM_SCAEXPORT_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module_scaexport_reffrom`
--

/*!40000 ALTER TABLE `module_scaexport_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_scaexport_reffrom` ENABLE KEYS */;


--
-- Definition of table `module_scaimport_reffrom`
--

DROP TABLE IF EXISTS `module_scaimport_reffrom`;
CREATE TABLE `module_scaimport_reffrom` (
  `SCAIMPORT_XMETA` varchar(64) default NULL,
  `REFFROM_SCAIMPORT_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module_scaimport_reffrom`
--

/*!40000 ALTER TABLE `module_scaimport_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `module_scaimport_reffrom` ENABLE KEYS */;


--
-- Definition of table `narycondition`
--

DROP TABLE IF EXISTS `narycondition`;
CREATE TABLE `narycondition` (
  `ID` int(10) NOT NULL default '0',
  `CINDEX` int(10) NOT NULL default '0',
  `PROPERTYID` int(10) default NULL,
  PRIMARY KEY  (`ID`,`CINDEX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `narycondition`
--

/*!40000 ALTER TABLE `narycondition` DISABLE KEYS */;
/*!40000 ALTER TABLE `narycondition` ENABLE KEYS */;


--
-- Definition of table `naryhierarchy`
--

DROP TABLE IF EXISTS `naryhierarchy`;
CREATE TABLE `naryhierarchy` (
  `ID` int(10) NOT NULL default '0',
  `URI` varchar(768) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `naryhierarchy`
--

/*!40000 ALTER TABLE `naryhierarchy` DISABLE KEYS */;
/*!40000 ALTER TABLE `naryhierarchy` ENABLE KEYS */;


--
-- Definition of table `narymetadata`
--

DROP TABLE IF EXISTS `narymetadata`;
CREATE TABLE `narymetadata` (
  `ID` int(10) NOT NULL default '0',
  `PROPERTYID` int(10) default NULL,
  `HCONDITIONID` int(10) default NULL,
  `HIERARCHYID` int(10) default NULL,
  `CCOUNT` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `narymetadata`
--

/*!40000 ALTER TABLE `narymetadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `narymetadata` ENABLE KEYS */;


--
-- Definition of table `narytree`
--

DROP TABLE IF EXISTS `narytree`;
CREATE TABLE `narytree` (
  `HIERARCHYID` int(10) NOT NULL default '0',
  `SUBID` int(10) NOT NULL default '0',
  `SUPERID` int(10) default NULL,
  PRIMARY KEY  (`HIERARCHYID`,`SUBID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `narytree`
--

/*!40000 ALTER TABLE `narytree` DISABLE KEYS */;
/*!40000 ALTER TABLE `narytree` ENABLE KEYS */;


--
-- Definition of table `objecttypelookup`
--

DROP TABLE IF EXISTS `objecttypelookup`;
CREATE TABLE `objecttypelookup` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `XMETARID_XMETA` varchar(1020) default NULL,
  `OBJECTTYPE_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `objecttypelookup`
--

/*!40000 ALTER TABLE `objecttypelookup` DISABLE KEYS */;
/*!40000 ALTER TABLE `objecttypelookup` ENABLE KEYS */;


--
-- Definition of table `oneof`
--

DROP TABLE IF EXISTS `oneof`;
CREATE TABLE `oneof` (
  `ID` int(10) NOT NULL default '0',
  `MEMBERID` int(10) NOT NULL default '0',
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`ID`,`MEMBERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oneof`
--

/*!40000 ALTER TABLE `oneof` DISABLE KEYS */;
/*!40000 ALTER TABLE `oneof` ENABLE KEYS */;


--
-- Definition of table `ontology`
--

DROP TABLE IF EXISTS `ontology`;
CREATE TABLE `ontology` (
  `ID` int(10) NOT NULL default '0',
  `URI` varchar(768) default NULL,
  `HASHCODE` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ontology`
--

/*!40000 ALTER TABLE `ontology` DISABLE KEYS */;
/*!40000 ALTER TABLE `ontology` ENABLE KEYS */;


--
-- Definition of table `originalobject_predecessor_reffrom`
--

DROP TABLE IF EXISTS `originalobject_predecessor_reffrom`;
CREATE TABLE `originalobject_predecessor_reffrom` (
  `PREDECESSOR_XMETA` varchar(64) default NULL,
  `REFFROM_PREDECESSOR_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `originalobject_predecessor_reffrom`
--

/*!40000 ALTER TABLE `originalobject_predecessor_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `originalobject_predecessor_reffrom` ENABLE KEYS */;


--
-- Definition of table `originalobject_successor_reffrom`
--

DROP TABLE IF EXISTS `originalobject_successor_reffrom`;
CREATE TABLE `originalobject_successor_reffrom` (
  `SUCCESSOR_XMETA` varchar(64) default NULL,
  `REFFROM_SUCCESSOR_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `originalobject_successor_reffrom`
--

/*!40000 ALTER TABLE `originalobject_successor_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `originalobject_successor_reffrom` ENABLE KEYS */;


--
-- Definition of table `originalobject_template_reffrom`
--

DROP TABLE IF EXISTS `originalobject_template_reffrom`;
CREATE TABLE `originalobject_template_reffrom` (
  `TEMPLATE_XMETA` varchar(64) default NULL,
  `REFFROM_TEMPLATE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `originalobject_template_reffrom`
--

/*!40000 ALTER TABLE `originalobject_template_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `originalobject_template_reffrom` ENABLE KEYS */;


--
-- Definition of table `policyattachment`
--

DROP TABLE IF EXISTS `policyattachment`;
CREATE TABLE `policyattachment` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `SCOPEXPATH_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `policyattachment`
--

/*!40000 ALTER TABLE `policyattachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `policyattachment` ENABLE KEYS */;


--
-- Definition of table `policyattachment_appliesto_reffrom`
--

DROP TABLE IF EXISTS `policyattachment_appliesto_reffrom`;
CREATE TABLE `policyattachment_appliesto_reffrom` (
  `APPLIESTO_XMETA` varchar(64) default NULL,
  `REFFROM_APPLIESTO_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `policyattachment_appliesto_reffrom`
--

/*!40000 ALTER TABLE `policyattachment_appliesto_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `policyattachment_appliesto_reffrom` ENABLE KEYS */;


--
-- Definition of table `policyattachment_policies_reffrom`
--

DROP TABLE IF EXISTS `policyattachment_policies_reffrom`;
CREATE TABLE `policyattachment_policies_reffrom` (
  `POLICIES_XMETA` varchar(64) default NULL,
  `REFFROM_POLICIES_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `policyattachment_policies_reffrom`
--

/*!40000 ALTER TABLE `policyattachment_policies_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `policyattachment_policies_reffrom` ENABLE KEYS */;


--
-- Definition of table `policyexpression`
--

DROP TABLE IF EXISTS `policyexpression`;
CREATE TABLE `policyexpression` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `POLICYWSUID_XMETA` varchar(1020) default NULL,
  `POLICYURI_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `policyexpression`
--

/*!40000 ALTER TABLE `policyexpression` DISABLE KEYS */;
/*!40000 ALTER TABLE `policyexpression` ENABLE KEYS */;


--
-- Definition of table `policyexpression_referencedpolicyexpression_reffrom`
--

DROP TABLE IF EXISTS `policyexpression_referencedpolicyexpression_reffrom`;
CREATE TABLE `policyexpression_referencedpolicyexpression_reffrom` (
  `REFERENCEDPOLICYEXPRESSIONXMET` varchar(64) default NULL,
  `REFFROMREFERENCEDPLCYXPRSSNXMT` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `policyexpression_referencedpolicyexpression_reffrom`
--

/*!40000 ALTER TABLE `policyexpression_referencedpolicyexpression_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `policyexpression_referencedpolicyexpression_reffrom` ENABLE KEYS */;


--
-- Definition of table `policymetadataitem`
--

DROP TABLE IF EXISTS `policymetadataitem`;
CREATE TABLE `policymetadataitem` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `ORIGINALURI_XMETA` varchar(1020) default NULL,
  `CONTENTSIZE_XMETA` bigint(19) default NULL,
  `ENCODING_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `policymetadataitem`
--

/*!40000 ALTER TABLE `policymetadataitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `policymetadataitem` ENABLE KEYS */;


--
-- Definition of table `prefixmapping`
--

DROP TABLE IF EXISTS `prefixmapping`;
CREATE TABLE `prefixmapping` (
  `PREFIXID` int(10) default NULL,
  `PREFIXNAME` varchar(30) default NULL,
  `TABLENAME` varchar(30) NOT NULL default '',
  PRIMARY KEY  (`TABLENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prefixmapping`
--

/*!40000 ALTER TABLE `prefixmapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `prefixmapping` ENABLE KEYS */;


--
-- Definition of table `primitiveclass`
--

DROP TABLE IF EXISTS `primitiveclass`;
CREATE TABLE `primitiveclass` (
  `ID` int(10) NOT NULL default '0',
  `URI` varchar(768) default NULL,
  `HASHCODE` int(10) default NULL,
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `primitiveclass`
--

/*!40000 ALTER TABLE `primitiveclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `primitiveclass` ENABLE KEYS */;


--
-- Definition of table `processanalysistemplate`
--

DROP TABLE IF EXISTS `processanalysistemplate`;
CREATE TABLE `processanalysistemplate` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `SHORTDESCRIPTION_XMETA` varchar(255) default NULL,
  `LONGDESCRIPTION_XMETA` varchar(255) default NULL,
  `SOURCEPACKAGE_XMETA` varchar(255) default NULL,
  `ANALYSISDEPTH_XMETA` int(10) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `processanalysistemplate`
--

/*!40000 ALTER TABLE `processanalysistemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `processanalysistemplate` ENABLE KEYS */;


--
-- Definition of table `property`
--

DROP TABLE IF EXISTS `property`;
CREATE TABLE `property` (
  `ID` int(10) NOT NULL default '0',
  `URI` varchar(768) default NULL,
  `HASHCODE` int(10) default NULL,
  `TYPE` smallint(5) default NULL,
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `property`
--

/*!40000 ALTER TABLE `property` DISABLE KEYS */;
/*!40000 ALTER TABLE `property` ENABLE KEYS */;


--
-- Definition of table `propertyquery`
--

DROP TABLE IF EXISTS `propertyquery`;
CREATE TABLE `propertyquery` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `QUERYHANDLE_XMETA` bigint(19) default NULL,
  `QUERYXPATH_XMETA` varchar(1020) default NULL,
  `QUERYXMQL_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `propertyquery`
--

/*!40000 ALTER TABLE `propertyquery` DISABLE KEYS */;
/*!40000 ALTER TABLE `propertyquery` ENABLE KEYS */;


--
-- Definition of table `propertytype`
--

DROP TABLE IF EXISTS `propertytype`;
CREATE TABLE `propertytype` (
  `TYPE` smallint(5) NOT NULL default '0',
  `PCLASS` int(10) NOT NULL default '0',
  PRIMARY KEY  (`TYPE`,`PCLASS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `propertytype`
--

/*!40000 ALTER TABLE `propertytype` DISABLE KEYS */;
/*!40000 ALTER TABLE `propertytype` ENABLE KEYS */;


--
-- Definition of table `query`
--

DROP TABLE IF EXISTS `query`;
CREATE TABLE `query` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `QUERYEXPRESSION_XMETA` varchar(255) default NULL,
  `PACKAGE_XMETA` varchar(255) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `query`
--

/*!40000 ALTER TABLE `query` DISABLE KEYS */;
/*!40000 ALTER TABLE `query` ENABLE KEYS */;


--
-- Definition of table `query_report_reffrom`
--

DROP TABLE IF EXISTS `query_report_reffrom`;
CREATE TABLE `query_report_reffrom` (
  `REPORT_XMETA` varchar(64) default NULL,
  `REFFROM_REPORT_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `query_report_reffrom`
--

/*!40000 ALTER TABLE `query_report_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `query_report_reffrom` ENABLE KEYS */;


--
-- Definition of table `queryparameter`
--

DROP TABLE IF EXISTS `queryparameter`;
CREATE TABLE `queryparameter` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `VALUE_XMETA` varchar(255) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `PARAMETERTYPE_XMETA` int(10) default NULL,
  `QUERY_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `queryparameter`
--

/*!40000 ALTER TABLE `queryparameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `queryparameter` ENABLE KEYS */;


--
-- Definition of table `queryreport`
--

DROP TABLE IF EXISTS `queryreport`;
CREATE TABLE `queryreport` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `QUERYEXPRESSION_XMETA` varchar(255) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `queryreport`
--

/*!40000 ALTER TABLE `queryreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `queryreport` ENABLE KEYS */;


--
-- Definition of table `queryresult`
--

DROP TABLE IF EXISTS `queryresult`;
CREATE TABLE `queryresult` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `ENTRYTYPE_XMETA` varchar(255) default NULL,
  `ENTRY_XMETA` longtext,
  `QUERY_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `queryresult`
--

/*!40000 ALTER TABLE `queryresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `queryresult` ENABLE KEYS */;


--
-- Definition of table `queryrun`
--

DROP TABLE IF EXISTS `queryrun`;
CREATE TABLE `queryrun` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `TIMESTARTED_XMETA` bigint(19) default NULL,
  `ERRORS_XMETA` longtext,
  `WARNINGS_XMETA` longtext,
  `TIMEFINISHED_XMETA` bigint(19) default NULL,
  `RESULT_XMETA` varchar(64) default NULL,
  `QUERY_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `queryrun`
--

/*!40000 ALTER TABLE `queryrun` DISABLE KEYS */;
/*!40000 ALTER TABLE `queryrun` ENABLE KEYS */;


--
-- Definition of table `queryrun_runparameter_reffrom`
--

DROP TABLE IF EXISTS `queryrun_runparameter_reffrom`;
CREATE TABLE `queryrun_runparameter_reffrom` (
  `RUNPARAMETER_XMETA` varchar(64) default NULL,
  `REFFROM_RUNPARAMETER_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `queryrun_runparameter_reffrom`
--

/*!40000 ALTER TABLE `queryrun_runparameter_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `queryrun_runparameter_reffrom` ENABLE KEYS */;


--
-- Definition of table `range`
--

DROP TABLE IF EXISTS `range`;
CREATE TABLE `range` (
  `PROPERTYID` int(10) NOT NULL default '0',
  `CLASSID` int(10) NOT NULL default '0',
  PRIMARY KEY  (`PROPERTYID`,`CLASSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `range`
--

/*!40000 ALTER TABLE `range` DISABLE KEYS */;
/*!40000 ALTER TABLE `range` ENABLE KEYS */;


--
-- Definition of table `referencedgovernedcollections_reffrom`
--

DROP TABLE IF EXISTS `referencedgovernedcollections_reffrom`;
CREATE TABLE `referencedgovernedcollections_reffrom` (
  `REFERENCEDGOVERNEDCOLLECTNSXMT` varchar(64) default NULL,
  `REFFROMREFERNCDGVRNDCLLCTNSXMT` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `referencedgovernedcollections_reffrom`
--

/*!40000 ALTER TABLE `referencedgovernedcollections_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `referencedgovernedcollections_reffrom` ENABLE KEYS */;


--
-- Definition of table `relationship`
--

DROP TABLE IF EXISTS `relationship`;
CREATE TABLE `relationship` (
  `SUBJECTID` int(10) default NULL,
  `PREDICATEID` int(10) default NULL,
  `OBJECTID` int(10) default NULL,
  `INFERRED` smallint(5) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relationship`
--

/*!40000 ALTER TABLE `relationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `relationship` ENABLE KEYS */;


--
-- Definition of table `relationshipind`
--

DROP TABLE IF EXISTS `relationshipind`;
CREATE TABLE `relationshipind` (
  `SUBJECTID` int(10) NOT NULL default '0',
  `PREDICATEID` int(10) NOT NULL default '0',
  `OBJECTID` int(10) NOT NULL default '0',
  `INFERRED` smallint(5) default NULL,
  PRIMARY KEY  (`SUBJECTID`,`PREDICATEID`,`OBJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relationshipind`
--

/*!40000 ALTER TABLE `relationshipind` DISABLE KEYS */;
/*!40000 ALTER TABLE `relationshipind` ENABLE KEYS */;


--
-- Definition of table `relationshiplit`
--

DROP TABLE IF EXISTS `relationshiplit`;
CREATE TABLE `relationshiplit` (
  `SUBJECTID` int(10) NOT NULL default '0',
  `PREDICATEID` int(10) NOT NULL default '0',
  `OBJECTID` int(10) NOT NULL default '0',
  `INFERRED` smallint(5) default NULL,
  PRIMARY KEY  (`SUBJECTID`,`PREDICATEID`,`OBJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relationshiplit`
--

/*!40000 ALTER TABLE `relationshiplit` DISABLE KEYS */;
/*!40000 ALTER TABLE `relationshiplit` ENABLE KEYS */;


--
-- Definition of table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
CREATE TABLE `relationships` (
  `SUBJECTID` int(10) NOT NULL default '0',
  `PREDICATEID` int(10) NOT NULL default '0',
  `OBJECTID` int(10) NOT NULL default '0',
  `ECOUNT` int(10) default NULL,
  PRIMARY KEY  (`PREDICATEID`,`SUBJECTID`,`OBJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relationships`
--

/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;


--
-- Definition of table `resource`
--

DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `ID` int(10) NOT NULL default '0',
  `URI` varchar(768) default NULL,
  `HASHCODE` int(10) default NULL,
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resource`
--

/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;


--
-- Definition of table `restriction`
--

DROP TABLE IF EXISTS `restriction`;
CREATE TABLE `restriction` (
  `ID` int(10) default NULL,
  `PROPERTYID` int(10) default NULL,
  `ONTOLOGYID` int(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restriction`
--

/*!40000 ALTER TABLE `restriction` DISABLE KEYS */;
/*!40000 ALTER TABLE `restriction` ENABLE KEYS */;


--
-- Definition of table `resultstring`
--

DROP TABLE IF EXISTS `resultstring`;
CREATE TABLE `resultstring` (
  `ID` int(10) NOT NULL default '0',
  `STRING` varchar(1950) default NULL,
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resultstring`
--

/*!40000 ALTER TABLE `resultstring` DISABLE KEYS */;
/*!40000 ALTER TABLE `resultstring` ENABLE KEYS */;


--
-- Definition of table `rss_feed_engine_tb`
--

DROP TABLE IF EXISTS `rss_feed_engine_tb`;
CREATE TABLE `rss_feed_engine_tb` (
  `ID` varchar(64) NOT NULL default '',
  `DEF` varchar(1024) default NULL,
  `CACHE_` mediumtext,
  `TIME_` date default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rss_feed_engine_tb`
--

/*!40000 ALTER TABLE `rss_feed_engine_tb` DISABLE KEYS */;
/*!40000 ALTER TABLE `rss_feed_engine_tb` ENABLE KEYS */;


--
-- Definition of table `runreport`
--

DROP TABLE IF EXISTS `runreport`;
CREATE TABLE `runreport` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `runreport`
--

/*!40000 ALTER TABLE `runreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `runreport` ENABLE KEYS */;


--
-- Definition of table `runtime`
--

DROP TABLE IF EXISTS `runtime`;
CREATE TABLE `runtime` (
  `RKEY` varchar(20) NOT NULL default '',
  `RVALUE` int(10) default NULL,
  PRIMARY KEY  (`RKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `runtime`
--

/*!40000 ALTER TABLE `runtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `runtime` ENABLE KEYS */;


--
-- Definition of table `sameindividual`
--

DROP TABLE IF EXISTS `sameindividual`;
CREATE TABLE `sameindividual` (
  `INDIVIDUALID1` int(10) NOT NULL default '0',
  `INDIVIDUALID2` int(10) NOT NULL default '0',
  `INFERRED` smallint(5) default NULL,
  PRIMARY KEY  (`INDIVIDUALID1`,`INDIVIDUALID2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sameindividual`
--

/*!40000 ALTER TABLE `sameindividual` DISABLE KEYS */;
/*!40000 ALTER TABLE `sameindividual` ENABLE KEYS */;


--
-- Definition of table `scaexportbinding`
--

DROP TABLE IF EXISTS `scaexportbinding`;
CREATE TABLE `scaexportbinding` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scaexportbinding`
--

/*!40000 ALTER TABLE `scaexportbinding` DISABLE KEYS */;
/*!40000 ALTER TABLE `scaexportbinding` ENABLE KEYS */;


--
-- Definition of table `scaexportmetadataitem`
--

DROP TABLE IF EXISTS `scaexportmetadataitem`;
CREATE TABLE `scaexportmetadataitem` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `ORIGINALURI_XMETA` varchar(1020) default NULL,
  `CONTENTSIZE_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scaexportmetadataitem`
--

/*!40000 ALTER TABLE `scaexportmetadataitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `scaexportmetadataitem` ENABLE KEYS */;


--
-- Definition of table `scaimportbinding`
--

DROP TABLE IF EXISTS `scaimportbinding`;
CREATE TABLE `scaimportbinding` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scaimportbinding`
--

/*!40000 ALTER TABLE `scaimportbinding` DISABLE KEYS */;
/*!40000 ALTER TABLE `scaimportbinding` ENABLE KEYS */;


--
-- Definition of table `scaimportbinding_scaexportbinding_reffrom`
--

DROP TABLE IF EXISTS `scaimportbinding_scaexportbinding_reffrom`;
CREATE TABLE `scaimportbinding_scaexportbinding_reffrom` (
  `SCAEXPORTBINDING_XMETA` varchar(64) default NULL,
  `REFFROM_SCAEXPORTBINDING_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scaimportbinding_scaexportbinding_reffrom`
--

/*!40000 ALTER TABLE `scaimportbinding_scaexportbinding_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `scaimportbinding_scaexportbinding_reffrom` ENABLE KEYS */;


--
-- Definition of table `scaimportmetadataitem`
--

DROP TABLE IF EXISTS `scaimportmetadataitem`;
CREATE TABLE `scaimportmetadataitem` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `ORIGINALURI_XMETA` varchar(1020) default NULL,
  `CONTENTSIZE_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scaimportmetadataitem`
--

/*!40000 ALTER TABLE `scaimportmetadataitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `scaimportmetadataitem` ENABLE KEYS */;


--
-- Definition of table `scamodule`
--

DROP TABLE IF EXISTS `scamodule`;
CREATE TABLE `scamodule` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scamodule`
--

/*!40000 ALTER TABLE `scamodule` DISABLE KEYS */;
/*!40000 ALTER TABLE `scamodule` ENABLE KEYS */;


--
-- Definition of table `scamodule_scaexports_reffrom`
--

DROP TABLE IF EXISTS `scamodule_scaexports_reffrom`;
CREATE TABLE `scamodule_scaexports_reffrom` (
  `SCAEXPORTS_XMETA` varchar(64) default NULL,
  `REFFROM_SCAEXPORTS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scamodule_scaexports_reffrom`
--

/*!40000 ALTER TABLE `scamodule_scaexports_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `scamodule_scaexports_reffrom` ENABLE KEYS */;


--
-- Definition of table `scamodule_scaimports_reffrom`
--

DROP TABLE IF EXISTS `scamodule_scaimports_reffrom`;
CREATE TABLE `scamodule_scaimports_reffrom` (
  `SCAIMPORTS_XMETA` varchar(64) default NULL,
  `REFFROM_SCAIMPORTS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scamodule_scaimports_reffrom`
--

/*!40000 ALTER TABLE `scamodule_scaimports_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `scamodule_scaimports_reffrom` ENABLE KEYS */;


--
-- Definition of table `scamodule_scamodule_reffrom`
--

DROP TABLE IF EXISTS `scamodule_scamodule_reffrom`;
CREATE TABLE `scamodule_scamodule_reffrom` (
  `SCAMODULE_XMETA` varchar(64) default NULL,
  `REFFROM_SCAMODULE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scamodule_scamodule_reffrom`
--

/*!40000 ALTER TABLE `scamodule_scamodule_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `scamodule_scamodule_reffrom` ENABLE KEYS */;


--
-- Definition of table `scamodule_scaschemas_reffrom`
--

DROP TABLE IF EXISTS `scamodule_scaschemas_reffrom`;
CREATE TABLE `scamodule_scaschemas_reffrom` (
  `SCASCHEMAS_XMETA` varchar(64) default NULL,
  `REFFROM_SCASCHEMAS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scamodule_scaschemas_reffrom`
--

/*!40000 ALTER TABLE `scamodule_scaschemas_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `scamodule_scaschemas_reffrom` ENABLE KEYS */;


--
-- Definition of table `scamodule_scawsdls_reffrom`
--

DROP TABLE IF EXISTS `scamodule_scawsdls_reffrom`;
CREATE TABLE `scamodule_scawsdls_reffrom` (
  `SCAWSDLS_XMETA` varchar(64) default NULL,
  `REFFROM_SCAWSDLS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scamodule_scawsdls_reffrom`
--

/*!40000 ALTER TABLE `scamodule_scawsdls_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `scamodule_scawsdls_reffrom` ENABLE KEYS */;


--
-- Definition of table `scamodulemetadataitem`
--

DROP TABLE IF EXISTS `scamodulemetadataitem`;
CREATE TABLE `scamodulemetadataitem` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `ORIGINALURI_XMETA` varchar(1020) default NULL,
  `CONTENTSIZE_XMETA` bigint(19) default NULL,
  `MODULETYPE_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scamodulemetadataitem`
--

/*!40000 ALTER TABLE `scamodulemetadataitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `scamodulemetadataitem` ENABLE KEYS */;


--
-- Definition of table `scawsdlporttype`
--

DROP TABLE IF EXISTS `scawsdlporttype`;
CREATE TABLE `scawsdlporttype` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `PREFERREDINTERACTIONSTYLEXMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scawsdlporttype`
--

/*!40000 ALTER TABLE `scawsdlporttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `scawsdlporttype` ENABLE KEYS */;


--
-- Definition of table `scawsdlporttype_wsdlporttype_reffrom`
--

DROP TABLE IF EXISTS `scawsdlporttype_wsdlporttype_reffrom`;
CREATE TABLE `scawsdlporttype_wsdlporttype_reffrom` (
  `WSDLPORTTYPE_XMETA` varchar(64) default NULL,
  `REFFROM_WSDLPORTTYPE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scawsdlporttype_wsdlporttype_reffrom`
--

/*!40000 ALTER TABLE `scawsdlporttype_wsdlporttype_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `scawsdlporttype_wsdlporttype_reffrom` ENABLE KEYS */;


--
-- Definition of table `similarattribute`
--

DROP TABLE IF EXISTS `similarattribute`;
CREATE TABLE `similarattribute` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `FEATURENAME_XMETA` varchar(255) default NULL,
  `VALUE_XMETA` varchar(255) default NULL,
  `DATATYPENAME_XMETA` varchar(255) default NULL,
  `CONTAININGNODE_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `similarattribute`
--

/*!40000 ALTER TABLE `similarattribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `similarattribute` ENABLE KEYS */;


--
-- Definition of table `similarreference`
--

DROP TABLE IF EXISTS `similarreference`;
CREATE TABLE `similarreference` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `FEATURENAME_XMETA` varchar(255) default NULL,
  `TARGETS_XMETA` longtext,
  `CONTAININGNODE_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `similarreference`
--

/*!40000 ALTER TABLE `similarreference` DISABLE KEYS */;
/*!40000 ALTER TABLE `similarreference` ENABLE KEYS */;


--
-- Definition of table `simpletypedefinition`
--

DROP TABLE IF EXISTS `simpletypedefinition`;
CREATE TABLE `simpletypedefinition` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `simpletypedefinition`
--

/*!40000 ALTER TABLE `simpletypedefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `simpletypedefinition` ENABLE KEYS */;


--
-- Definition of table `slsbimportbinding`
--

DROP TABLE IF EXISTS `slsbimportbinding`;
CREATE TABLE `slsbimportbinding` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `JNDINAME_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slsbimportbinding`
--

/*!40000 ALTER TABLE `slsbimportbinding` DISABLE KEYS */;
/*!40000 ALTER TABLE `slsbimportbinding` ENABLE KEYS */;


--
-- Definition of table `soapaddress`
--

DROP TABLE IF EXISTS `soapaddress`;
CREATE TABLE `soapaddress` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `LOCATION_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `soapaddress`
--

/*!40000 ALTER TABLE `soapaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `soapaddress` ENABLE KEYS */;


--
-- Definition of table `soapbinding`
--

DROP TABLE IF EXISTS `soapbinding`;
CREATE TABLE `soapbinding` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `TRANSPORT_XMETA` varchar(1020) default NULL,
  `STYLE_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `soapbinding`
--

/*!40000 ALTER TABLE `soapbinding` DISABLE KEYS */;
/*!40000 ALTER TABLE `soapbinding` ENABLE KEYS */;


--
-- Definition of table `somevaluesfrom`
--

DROP TABLE IF EXISTS `somevaluesfrom`;
CREATE TABLE `somevaluesfrom` (
  `ID` int(10) NOT NULL default '0',
  `PROPERTYID` int(10) default NULL,
  `TARGETID` int(10) default NULL,
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `somevaluesfrom`
--

/*!40000 ALTER TABLE `somevaluesfrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `somevaluesfrom` ENABLE KEYS */;


--
-- Definition of table `spm_invocation`
--

DROP TABLE IF EXISTS `spm_invocation`;
CREATE TABLE `spm_invocation` (
  `ID` int(10) NOT NULL default '0',
  `SVC_TIME` int(10) default NULL,
  `INVOKE_DATE` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `APP_ID` int(10) default NULL,
  `SUITE_ID` int(10) default NULL,
  `BS_ID` int(10) default NULL,
  `WS_ID` int(10) default NULL,
  `EP_ID` int(10) default NULL,
  `ORG_ID` int(10) default NULL,
  `CHANNEL_ID` int(10) default NULL,
  `BS_TYPE` int(10) default NULL,
  `RESULT` int(10) default NULL,
  `CONTEXT_ID` varchar(128) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `APP_ID` (`APP_ID`),
  KEY `BS_ID` (`BS_ID`),
  KEY `CHANNEL_ID` (`CHANNEL_ID`),
  KEY `EP_ID` (`EP_ID`),
  KEY `ORG_ID` (`ORG_ID`),
  KEY `SUITE_ID` (`SUITE_ID`),
  KEY `WS_ID` (`WS_ID`),
  CONSTRAINT `spm_invocation_ibfk_1` FOREIGN KEY (`APP_ID`) REFERENCES `spm_uri` (`ID`),
  CONSTRAINT `spm_invocation_ibfk_2` FOREIGN KEY (`BS_ID`) REFERENCES `spm_uri` (`ID`),
  CONSTRAINT `spm_invocation_ibfk_3` FOREIGN KEY (`CHANNEL_ID`) REFERENCES `spm_uri` (`ID`),
  CONSTRAINT `spm_invocation_ibfk_4` FOREIGN KEY (`EP_ID`) REFERENCES `spm_uri` (`ID`),
  CONSTRAINT `spm_invocation_ibfk_5` FOREIGN KEY (`ORG_ID`) REFERENCES `spm_uri` (`ID`),
  CONSTRAINT `spm_invocation_ibfk_6` FOREIGN KEY (`SUITE_ID`) REFERENCES `spm_uri` (`ID`),
  CONSTRAINT `spm_invocation_ibfk_7` FOREIGN KEY (`WS_ID`) REFERENCES `spm_uri` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spm_invocation`
--

/*!40000 ALTER TABLE `spm_invocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `spm_invocation` ENABLE KEYS */;


--
-- Definition of table `spm_uri`
--

DROP TABLE IF EXISTS `spm_uri`;
CREATE TABLE `spm_uri` (
  `ID` int(10) NOT NULL default '0',
  `URI` varchar(254) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spm_uri`
--

/*!40000 ALTER TABLE `spm_uri` DISABLE KEYS */;
/*!40000 ALTER TABLE `spm_uri` ENABLE KEYS */;


--
-- Definition of table `sr_baselogicalobject_contributing_physicalobject_reffrom`
--

DROP TABLE IF EXISTS `sr_baselogicalobject_contributing_physicalobject_reffrom`;
CREATE TABLE `sr_baselogicalobject_contributing_physicalobject_reffrom` (
  `CONTRIBUTINGPHYSICALOBJECTXMET` varchar(64) default NULL,
  `REFFROMCONTRIBTNGPHYSCLBJCTXMT` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sr_baselogicalobject_contributing_physicalobject_reffrom`
--

/*!40000 ALTER TABLE `sr_baselogicalobject_contributing_physicalobject_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `sr_baselogicalobject_contributing_physicalobject_reffrom` ENABLE KEYS */;


--
-- Definition of table `sr_baselogicalobject_extensionlogicalobject_reffrom`
--

DROP TABLE IF EXISTS `sr_baselogicalobject_extensionlogicalobject_reffrom`;
CREATE TABLE `sr_baselogicalobject_extensionlogicalobject_reffrom` (
  `EXTENSIONLOGICALOBJECT_XMETA` varchar(64) default NULL,
  `REFFROMEXTENSIONLOGICALBJCTXMT` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sr_baselogicalobject_extensionlogicalobject_reffrom`
--

/*!40000 ALTER TABLE `sr_baselogicalobject_extensionlogicalobject_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `sr_baselogicalobject_extensionlogicalobject_reffrom` ENABLE KEYS */;


--
-- Definition of table `sr_baseobject`
--

DROP TABLE IF EXISTS `sr_baseobject`;
CREATE TABLE `sr_baseobject` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sr_baseobject`
--

/*!40000 ALTER TABLE `sr_baseobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `sr_baseobject` ENABLE KEYS */;


--
-- Definition of table `sr_baseobject_reffrom`
--

DROP TABLE IF EXISTS `sr_baseobject_reffrom`;
CREATE TABLE `sr_baseobject_reffrom` (
  `SR_BASEOBJECT_XMETA` varchar(64) default NULL,
  `REFFROM__SR_BASEOBJECT_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sr_baseobject_reffrom`
--

/*!40000 ALTER TABLE `sr_baseobject_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `sr_baseobject_reffrom` ENABLE KEYS */;


--
-- Definition of table `sr_classification`
--

DROP TABLE IF EXISTS `sr_classification`;
CREATE TABLE `sr_classification` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `CLASSIFICATIONURI_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sr_classification`
--

/*!40000 ALTER TABLE `sr_classification` DISABLE KEYS */;
/*!40000 ALTER TABLE `sr_classification` ENABLE KEYS */;


--
-- Definition of table `sr_classification_reffrom`
--

DROP TABLE IF EXISTS `sr_classification_reffrom`;
CREATE TABLE `sr_classification_reffrom` (
  `SR_CLASSIFICATION_XMETA` varchar(64) default NULL,
  `REFFROMSRCLASSIFICATIONXMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sr_classification_reffrom`
--

/*!40000 ALTER TABLE `sr_classification_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `sr_classification_reffrom` ENABLE KEYS */;


--
-- Definition of table `sr_property`
--

DROP TABLE IF EXISTS `sr_property`;
CREATE TABLE `sr_property` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `VALUE_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sr_property`
--

/*!40000 ALTER TABLE `sr_property` DISABLE KEYS */;
/*!40000 ALTER TABLE `sr_property` ENABLE KEYS */;


--
-- Definition of table `sr_property_reffrom`
--

DROP TABLE IF EXISTS `sr_property_reffrom`;
CREATE TABLE `sr_property_reffrom` (
  `SR_PROPERTY_XMETA` varchar(64) default NULL,
  `REFFROM__SR_PROPERTY_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sr_property_reffrom`
--

/*!40000 ALTER TABLE `sr_property_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `sr_property_reffrom` ENABLE KEYS */;


--
-- Definition of table `sr_relationship`
--

DROP TABLE IF EXISTS `sr_relationship`;
CREATE TABLE `sr_relationship` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sr_relationship`
--

/*!40000 ALTER TABLE `sr_relationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `sr_relationship` ENABLE KEYS */;


--
-- Definition of table `sr_relationship_reffrom`
--

DROP TABLE IF EXISTS `sr_relationship_reffrom`;
CREATE TABLE `sr_relationship_reffrom` (
  `SR_RELATIONSHIP_XMETA` varchar(64) default NULL,
  `REFFROM__SR_RELATIONSHIP_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sr_relationship_reffrom`
--

/*!40000 ALTER TABLE `sr_relationship_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `sr_relationship_reffrom` ENABLE KEYS */;


--
-- Definition of table `staticdatalineagetemplate`
--

DROP TABLE IF EXISTS `staticdatalineagetemplate`;
CREATE TABLE `staticdatalineagetemplate` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `SHORTDESCRIPTION_XMETA` varchar(255) default NULL,
  `LONGDESCRIPTION_XMETA` varchar(255) default NULL,
  `SOURCEPACKAGE_XMETA` varchar(255) default NULL,
  `ANALYSISDEPTH_XMETA` int(10) default NULL,
  `FINDTARGETS_XMETA` smallint(5) default NULL,
  `VERBOSE_XMETA` smallint(5) default NULL,
  `EXCLUDEJOBDESIGNS_XMETA` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staticdatalineagetemplate`
--

/*!40000 ALTER TABLE `staticdatalineagetemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `staticdatalineagetemplate` ENABLE KEYS */;


--
-- Definition of table `storablesemanticmapping`
--

DROP TABLE IF EXISTS `storablesemanticmapping`;
CREATE TABLE `storablesemanticmapping` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `VIEWEPACKAGENSURI_XMETA` varchar(255) default NULL,
  `XMIENCODEDTEXT_XMETA` longtext,
  `JYTHONTRANSFORMTEXT_XMETA` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `storablesemanticmapping`
--

/*!40000 ALTER TABLE `storablesemanticmapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `storablesemanticmapping` ENABLE KEYS */;


--
-- Definition of table `storabletransientepackage`
--

DROP TABLE IF EXISTS `storabletransientepackage`;
CREATE TABLE `storabletransientepackage` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NSURI_XMETA` varchar(255) default NULL,
  `XMIENCODEDTEXT_XMETA` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `storabletransientepackage`
--

/*!40000 ALTER TABLE `storabletransientepackage` DISABLE KEYS */;
/*!40000 ALTER TABLE `storabletransientepackage` ENABLE KEYS */;


--
-- Definition of table `subclassof`
--

DROP TABLE IF EXISTS `subclassof`;
CREATE TABLE `subclassof` (
  `SUBID` int(10) NOT NULL default '0',
  `SUPERID` int(10) NOT NULL default '0',
  `INFERRED` smallint(5) default NULL,
  PRIMARY KEY  (`SUBID`,`SUPERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subclassof`
--

/*!40000 ALTER TABLE `subclassof` DISABLE KEYS */;
/*!40000 ALTER TABLE `subclassof` ENABLE KEYS */;


--
-- Definition of table `subpropertyof`
--

DROP TABLE IF EXISTS `subpropertyof`;
CREATE TABLE `subpropertyof` (
  `SUBID` int(10) NOT NULL default '0',
  `SUPERID` int(10) NOT NULL default '0',
  `INFERRED` smallint(5) default NULL,
  PRIMARY KEY  (`SUBID`,`SUPERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subpropertyof`
--

/*!40000 ALTER TABLE `subpropertyof` DISABLE KEYS */;
/*!40000 ALTER TABLE `subpropertyof` ENABLE KEYS */;


--
-- Definition of table `subscribedoperations`
--

DROP TABLE IF EXISTS `subscribedoperations`;
CREATE TABLE `subscribedoperations` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `SUBSCRIBEDOPERATION_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribedoperations`
--

/*!40000 ALTER TABLE `subscribedoperations` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribedoperations` ENABLE KEYS */;


--
-- Definition of table `subscribedoperations_reffrom`
--

DROP TABLE IF EXISTS `subscribedoperations_reffrom`;
CREATE TABLE `subscribedoperations_reffrom` (
  `SUBSCRIBEDOPERATIONS_XMETA` varchar(64) default NULL,
  `REFFROMSUBSCRIBEDOPERATIONSXMT` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribedoperations_reffrom`
--

/*!40000 ALTER TABLE `subscribedoperations_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribedoperations_reffrom` ENABLE KEYS */;


--
-- Definition of table `subscribedtransitions`
--

DROP TABLE IF EXISTS `subscribedtransitions`;
CREATE TABLE `subscribedtransitions` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `SUBSCRIBEDTRANSITION_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribedtransitions`
--

/*!40000 ALTER TABLE `subscribedtransitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribedtransitions` ENABLE KEYS */;


--
-- Definition of table `subscribedtransitions_reffrom`
--

DROP TABLE IF EXISTS `subscribedtransitions_reffrom`;
CREATE TABLE `subscribedtransitions_reffrom` (
  `SUBSCRIBEDTRANSITIONS_XMETA` varchar(64) default NULL,
  `REFFROMSUBSCRIBEDTRANSITINSXMT` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribedtransitions_reffrom`
--

/*!40000 ALTER TABLE `subscribedtransitions_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribedtransitions_reffrom` ENABLE KEYS */;


--
-- Definition of table `subscriptionobject`
--

DROP TABLE IF EXISTS `subscriptionobject`;
CREATE TABLE `subscriptionobject` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `EMAILADDRESS_XMETA` varchar(1020) default NULL,
  `TARGETBSRURI_XMETA` varchar(1020) default NULL,
  `TARGETNAME_XMETA` varchar(1020) default NULL,
  `TARGETNAMESPACE_XMETA` varchar(1020) default NULL,
  `TARGETVERSION_XMETA` varchar(1020) default NULL,
  `LOCALE_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscriptionobject`
--

/*!40000 ALTER TABLE `subscriptionobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptionobject` ENABLE KEYS */;


--
-- Definition of table `summarynode`
--

DROP TABLE IF EXISTS `summarynode`;
CREATE TABLE `summarynode` (
  `ID` int(10) NOT NULL default '0',
  `CLASSSET` varchar(1950) default NULL,
  `HASHCODE` int(10) default NULL,
  `GENERIC` smallint(5) default NULL,
  `ICOUNT` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `summarynode`
--

/*!40000 ALTER TABLE `summarynode` DISABLE KEYS */;
/*!40000 ALTER TABLE `summarynode` ENABLE KEYS */;


--
-- Definition of table `targetclassifications`
--

DROP TABLE IF EXISTS `targetclassifications`;
CREATE TABLE `targetclassifications` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `TARGETCLASSIFICATION_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `targetclassifications`
--

/*!40000 ALTER TABLE `targetclassifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `targetclassifications` ENABLE KEYS */;


--
-- Definition of table `targetclassifications_reffrom`
--

DROP TABLE IF EXISTS `targetclassifications_reffrom`;
CREATE TABLE `targetclassifications_reffrom` (
  `TARGETCLASSIFICATIONS_XMETA` varchar(64) default NULL,
  `REFFROMTARGETCLASSIFICATINSXMT` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `targetclassifications_reffrom`
--

/*!40000 ALTER TABLE `targetclassifications_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `targetclassifications_reffrom` ENABLE KEYS */;


--
-- Definition of table `temp0_`
--

DROP TABLE IF EXISTS `temp0_`;
CREATE TABLE `temp0_` (
  `SUBJECTID` int(10) NOT NULL default '0',
  `PREDICATEID` int(10) NOT NULL default '0',
  `OBJECTID` int(10) NOT NULL default '0',
  PRIMARY KEY  (`SUBJECTID`,`PREDICATEID`,`OBJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `temp0_`
--

/*!40000 ALTER TABLE `temp0_` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp0_` ENABLE KEYS */;


--
-- Definition of table `temp1_`
--

DROP TABLE IF EXISTS `temp1_`;
CREATE TABLE `temp1_` (
  `SUBJECTID` int(10) NOT NULL default '0',
  `PREDICATEID` int(10) NOT NULL default '0',
  `OBJECTID` int(10) NOT NULL default '0',
  PRIMARY KEY  (`SUBJECTID`,`PREDICATEID`,`OBJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `temp1_`
--

/*!40000 ALTER TABLE `temp1_` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp1_` ENABLE KEYS */;


--
-- Definition of table `tempr`
--

DROP TABLE IF EXISTS `tempr`;
CREATE TABLE `tempr` (
  `SUBJECTID` int(10) NOT NULL default '0',
  `PREDICATEID` int(10) NOT NULL default '0',
  `OBJECTID` int(10) NOT NULL default '0',
  PRIMARY KEY  (`SUBJECTID`,`PREDICATEID`,`OBJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tempr`
--

/*!40000 ALTER TABLE `tempr` DISABLE KEYS */;
/*!40000 ALTER TABLE `tempr` ENABLE KEYS */;


--
-- Definition of table `typeof`
--

DROP TABLE IF EXISTS `typeof`;
CREATE TABLE `typeof` (
  `INDIVIDUALID` bigint(19) NOT NULL default '0',
  `WCCOID` bigint(19) default NULL,
  `CLASSID` int(10) NOT NULL default '0',
  `INFERRED` smallint(5) default NULL,
  `INDIVIDUALURI` varchar(50) default NULL,
  PRIMARY KEY  (`INDIVIDUALID`,`CLASSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `typeof`
--

/*!40000 ALTER TABLE `typeof` DISABLE KEYS */;
/*!40000 ALTER TABLE `typeof` ENABLE KEYS */;


--
-- Definition of table `typeofs`
--

DROP TABLE IF EXISTS `typeofs`;
CREATE TABLE `typeofs` (
  `NODEID` int(10) NOT NULL default '0',
  `CLASSID` int(10) NOT NULL default '0',
  PRIMARY KEY  (`NODEID`,`CLASSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `typeofs`
--

/*!40000 ALTER TABLE `typeofs` DISABLE KEYS */;
/*!40000 ALTER TABLE `typeofs` ENABLE KEYS */;


--
-- Definition of table `union_`
--

DROP TABLE IF EXISTS `union_`;
CREATE TABLE `union_` (
  `ID` int(10) NOT NULL default '0',
  `MEMBERID` int(10) NOT NULL default '0',
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`ID`,`MEMBERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `union_`
--

/*!40000 ALTER TABLE `union_` DISABLE KEYS */;
/*!40000 ALTER TABLE `union_` ENABLE KEYS */;


--
-- Definition of table `uri`
--

DROP TABLE IF EXISTS `uri`;
CREATE TABLE `uri` (
  `ID` bigint(19) default NULL,
  `URI` varchar(768) default NULL,
  `HASHCODE` int(10) default NULL,
  `IDTYPE` int(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uri`
--

/*!40000 ALTER TABLE `uri` DISABLE KEYS */;
/*!40000 ALTER TABLE `uri` ENABLE KEYS */;


--
-- Definition of table `utility`
--

DROP TABLE IF EXISTS `utility`;
CREATE TABLE `utility` (
  `SUBJECTID` int(10) NOT NULL default '0',
  `PREDICATEID` int(10) NOT NULL default '0',
  `OBJECTID` int(10) NOT NULL default '0',
  `ONTOLOGYID` int(10) default NULL,
  PRIMARY KEY  (`SUBJECTID`,`PREDICATEID`,`OBJECTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `utility`
--

/*!40000 ALTER TABLE `utility` DISABLE KEYS */;
/*!40000 ALTER TABLE `utility` ENABLE KEYS */;


--
-- Definition of table `w_dbversion`
--

DROP TABLE IF EXISTS `w_dbversion`;
CREATE TABLE `w_dbversion` (
  `SUBSYSTEM` varchar(8) NOT NULL default '',
  `CUR_VERSION` int(10) default NULL,
  PRIMARY KEY  (`SUBSYSTEM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `w_dbversion`
--

/*!40000 ALTER TABLE `w_dbversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `w_dbversion` ENABLE KEYS */;


--
-- Definition of table `w_inboxmsg`
--

DROP TABLE IF EXISTS `w_inboxmsg`;
CREATE TABLE `w_inboxmsg` (
  `ID` int(10) NOT NULL default '0',
  `OWNER_URI` varchar(254) default NULL,
  `MSG_DATE` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `ERROR` smallint(5) default NULL,
  `BIZSVC_URI` varchar(254) default NULL,
  `DOC_URL` varchar(255) default NULL,
  `MSG_FROM` varchar(255) default NULL,
  `MESSAGE` varchar(255) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `w_inboxmsg`
--

/*!40000 ALTER TABLE `w_inboxmsg` DISABLE KEYS */;
/*!40000 ALTER TABLE `w_inboxmsg` ENABLE KEYS */;


--
-- Definition of table `w_lit_bool`
--

DROP TABLE IF EXISTS `w_lit_bool`;
CREATE TABLE `w_lit_bool` (
  `ID` int(10) NOT NULL default '0',
  `LITVAL` smallint(5) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `w_lit_bool`
--

/*!40000 ALTER TABLE `w_lit_bool` DISABLE KEYS */;
/*!40000 ALTER TABLE `w_lit_bool` ENABLE KEYS */;


--
-- Definition of table `w_lit_double`
--

DROP TABLE IF EXISTS `w_lit_double`;
CREATE TABLE `w_lit_double` (
  `ID` int(10) NOT NULL default '0',
  `LITVAL` double default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `w_lit_double`
--

/*!40000 ALTER TABLE `w_lit_double` DISABLE KEYS */;
/*!40000 ALTER TABLE `w_lit_double` ENABLE KEYS */;


--
-- Definition of table `w_lit_float`
--

DROP TABLE IF EXISTS `w_lit_float`;
CREATE TABLE `w_lit_float` (
  `ID` int(10) NOT NULL default '0',
  `LITVAL` double default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `w_lit_float`
--

/*!40000 ALTER TABLE `w_lit_float` DISABLE KEYS */;
/*!40000 ALTER TABLE `w_lit_float` ENABLE KEYS */;


--
-- Definition of table `w_lit_int`
--

DROP TABLE IF EXISTS `w_lit_int`;
CREATE TABLE `w_lit_int` (
  `ID` int(10) NOT NULL default '0',
  `LITVAL` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `w_lit_int`
--

/*!40000 ALTER TABLE `w_lit_int` DISABLE KEYS */;
/*!40000 ALTER TABLE `w_lit_int` ENABLE KEYS */;


--
-- Definition of table `w_lit_long`
--

DROP TABLE IF EXISTS `w_lit_long`;
CREATE TABLE `w_lit_long` (
  `ID` int(10) NOT NULL default '0',
  `LITVAL` bigint(19) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `w_lit_long`
--

/*!40000 ALTER TABLE `w_lit_long` DISABLE KEYS */;
/*!40000 ALTER TABLE `w_lit_long` ENABLE KEYS */;


--
-- Definition of table `w_namespace`
--

DROP TABLE IF EXISTS `w_namespace`;
CREATE TABLE `w_namespace` (
  `ID` int(10) NOT NULL default '0',
  `NAMESPACE` varchar(254) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `w_namespace`
--

/*!40000 ALTER TABLE `w_namespace` DISABLE KEYS */;
/*!40000 ALTER TABLE `w_namespace` ENABLE KEYS */;


--
-- Definition of table `w_obj_lit_any`
--

DROP TABLE IF EXISTS `w_obj_lit_any`;
CREATE TABLE `w_obj_lit_any` (
  `ID` int(10) NOT NULL default '0',
  `LARGE` blob,
  `HASH` varchar(40) default NULL,
  `TYPE_URI` varchar(254) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `w_obj_lit_any`
--

/*!40000 ALTER TABLE `w_obj_lit_any` DISABLE KEYS */;
/*!40000 ALTER TABLE `w_obj_lit_any` ENABLE KEYS */;


--
-- Definition of table `w_obj_lit_date`
--

DROP TABLE IF EXISTS `w_obj_lit_date`;
CREATE TABLE `w_obj_lit_date` (
  `ID` int(10) NOT NULL default '0',
  `LITVAL` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `w_obj_lit_date`
--

/*!40000 ALTER TABLE `w_obj_lit_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `w_obj_lit_date` ENABLE KEYS */;


--
-- Definition of table `w_obj_lit_datetime`
--

DROP TABLE IF EXISTS `w_obj_lit_datetime`;
CREATE TABLE `w_obj_lit_datetime` (
  `ID` int(10) NOT NULL default '0',
  `LITVAL` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `w_obj_lit_datetime`
--

/*!40000 ALTER TABLE `w_obj_lit_datetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `w_obj_lit_datetime` ENABLE KEYS */;


--
-- Definition of table `w_obj_lit_plain`
--

DROP TABLE IF EXISTS `w_obj_lit_plain`;
CREATE TABLE `w_obj_lit_plain` (
  `ID` int(10) NOT NULL default '0',
  `LARGE` blob,
  `LITVAL` varchar(1024) default NULL,
  `HASH` varchar(40) default NULL,
  `XML_LANG` varchar(64) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `w_obj_lit_plain`
--

/*!40000 ALTER TABLE `w_obj_lit_plain` DISABLE KEYS */;
/*!40000 ALTER TABLE `w_obj_lit_plain` ENABLE KEYS */;


--
-- Definition of table `w_obj_lit_string`
--

DROP TABLE IF EXISTS `w_obj_lit_string`;
CREATE TABLE `w_obj_lit_string` (
  `ID` int(10) NOT NULL default '0',
  `LARGE` blob,
  `LITVAL` varchar(1024) default NULL,
  `HASH` varchar(40) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `w_obj_lit_string`
--

/*!40000 ALTER TABLE `w_obj_lit_string` DISABLE KEYS */;
/*!40000 ALTER TABLE `w_obj_lit_string` ENABLE KEYS */;


--
-- Definition of table `w_statement`
--

DROP TABLE IF EXISTS `w_statement`;
CREATE TABLE `w_statement` (
  `ID` int(10) NOT NULL default '0',
  `VERSION_FROM` int(10) default NULL,
  `VERSION_TO` int(10) default NULL,
  `SUBJ_ID` int(10) default NULL,
  `PRED_ID` int(10) default NULL,
  `OBJ_ID` int(10) default NULL,
  `OBJ_TYP_CD` int(10) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `w_statement`
--

/*!40000 ALTER TABLE `w_statement` DISABLE KEYS */;
/*!40000 ALTER TABLE `w_statement` ENABLE KEYS */;


--
-- Definition of table `w_uri`
--

DROP TABLE IF EXISTS `w_uri`;
CREATE TABLE `w_uri` (
  `ID` int(10) NOT NULL default '0',
  `URI` varchar(254) default NULL,
  `NAMESPACE_ID` int(10) default NULL,
  PRIMARY KEY  (`ID`),
  KEY `NAMESPACE_ID` (`NAMESPACE_ID`),
  CONSTRAINT `w_uri_ibfk_1` FOREIGN KEY (`NAMESPACE_ID`) REFERENCES `w_namespace` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `w_uri`
--

/*!40000 ALTER TABLE `w_uri` DISABLE KEYS */;
/*!40000 ALTER TABLE `w_uri` ENABLE KEYS */;


--
-- Definition of table `w_version`
--

DROP TABLE IF EXISTS `w_version`;
CREATE TABLE `w_version` (
  `USERNAME` varchar(64) default NULL,
  `CHANGE_TIME` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `CL_GID` varchar(36) default NULL,
  `CL_LID` varchar(10) default NULL,
  `SCHEMA_NS_ID` int(10) default NULL,
  `SCHEMA_REV` int(10) default NULL,
  `ID` int(10) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `SCHEMA_NS_ID` (`SCHEMA_NS_ID`),
  CONSTRAINT `w_version_ibfk_1` FOREIGN KEY (`SCHEMA_NS_ID`) REFERENCES `w_namespace` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `w_version`
--

/*!40000 ALTER TABLE `w_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `w_version` ENABLE KEYS */;


--
-- Definition of table `webserviceexportbinding`
--

DROP TABLE IF EXISTS `webserviceexportbinding`;
CREATE TABLE `webserviceexportbinding` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webserviceexportbinding`
--

/*!40000 ALTER TABLE `webserviceexportbinding` DISABLE KEYS */;
/*!40000 ALTER TABLE `webserviceexportbinding` ENABLE KEYS */;


--
-- Definition of table `webserviceexportbinding_wsdlport_reffrom`
--

DROP TABLE IF EXISTS `webserviceexportbinding_wsdlport_reffrom`;
CREATE TABLE `webserviceexportbinding_wsdlport_reffrom` (
  `WSDLPORT_XMETA` varchar(64) default NULL,
  `REFFROM_WSDLPORT_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webserviceexportbinding_wsdlport_reffrom`
--

/*!40000 ALTER TABLE `webserviceexportbinding_wsdlport_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `webserviceexportbinding_wsdlport_reffrom` ENABLE KEYS */;


--
-- Definition of table `webserviceimportbinding`
--

DROP TABLE IF EXISTS `webserviceimportbinding`;
CREATE TABLE `webserviceimportbinding` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `ENDPOINT_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webserviceimportbinding`
--

/*!40000 ALTER TABLE `webserviceimportbinding` DISABLE KEYS */;
/*!40000 ALTER TABLE `webserviceimportbinding` ENABLE KEYS */;


--
-- Definition of table `webserviceimportbinding_wsdlport_reffrom`
--

DROP TABLE IF EXISTS `webserviceimportbinding_wsdlport_reffrom`;
CREATE TABLE `webserviceimportbinding_wsdlport_reffrom` (
  `WSDLPORT_XMETA` varchar(64) default NULL,
  `REFFROM_WSDLPORT_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `webserviceimportbinding_wsdlport_reffrom`
--

/*!40000 ALTER TABLE `webserviceimportbinding_wsdlport_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `webserviceimportbinding_wsdlport_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdlbinding`
--

DROP TABLE IF EXISTS `wsdlbinding`;
CREATE TABLE `wsdlbinding` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlbinding`
--

/*!40000 ALTER TABLE `wsdlbinding` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlbinding` ENABLE KEYS */;


--
-- Definition of table `wsdlbinding_operation_reffrom`
--

DROP TABLE IF EXISTS `wsdlbinding_operation_reffrom`;
CREATE TABLE `wsdlbinding_operation_reffrom` (
  `OPERATION_XMETA` varchar(64) default NULL,
  `REFFROM_OPERATION_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlbinding_operation_reffrom`
--

/*!40000 ALTER TABLE `wsdlbinding_operation_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlbinding_operation_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdlbinding_soapbinding_reffrom`
--

DROP TABLE IF EXISTS `wsdlbinding_soapbinding_reffrom`;
CREATE TABLE `wsdlbinding_soapbinding_reffrom` (
  `SOAPBINDING_XMETA` varchar(64) default NULL,
  `REFFROM__SOAPBINDING_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlbinding_soapbinding_reffrom`
--

/*!40000 ALTER TABLE `wsdlbinding_soapbinding_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlbinding_soapbinding_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdlbinding_type_reffrom`
--

DROP TABLE IF EXISTS `wsdlbinding_type_reffrom`;
CREATE TABLE `wsdlbinding_type_reffrom` (
  `TYPE_XMETA` varchar(64) default NULL,
  `REFFROM_TYPE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlbinding_type_reffrom`
--

/*!40000 ALTER TABLE `wsdlbinding_type_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlbinding_type_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdlfault`
--

DROP TABLE IF EXISTS `wsdlfault`;
CREATE TABLE `wsdlfault` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlfault`
--

/*!40000 ALTER TABLE `wsdlfault` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlfault` ENABLE KEYS */;


--
-- Definition of table `wsdlfault_wsdlmessage_reffrom`
--

DROP TABLE IF EXISTS `wsdlfault_wsdlmessage_reffrom`;
CREATE TABLE `wsdlfault_wsdlmessage_reffrom` (
  `WSDLMESSAGE_XMETA` varchar(64) default NULL,
  `REFFROM_WSDLMESSAGE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlfault_wsdlmessage_reffrom`
--

/*!40000 ALTER TABLE `wsdlfault_wsdlmessage_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlfault_wsdlmessage_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdlinput`
--

DROP TABLE IF EXISTS `wsdlinput`;
CREATE TABLE `wsdlinput` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlinput`
--

/*!40000 ALTER TABLE `wsdlinput` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlinput` ENABLE KEYS */;


--
-- Definition of table `wsdlinput_wsdlmessage_reffrom`
--

DROP TABLE IF EXISTS `wsdlinput_wsdlmessage_reffrom`;
CREATE TABLE `wsdlinput_wsdlmessage_reffrom` (
  `WSDLMESSAGE_XMETA` varchar(64) default NULL,
  `REFFROM_WSDLMESSAGE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlinput_wsdlmessage_reffrom`
--

/*!40000 ALTER TABLE `wsdlinput_wsdlmessage_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlinput_wsdlmessage_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdlmessage`
--

DROP TABLE IF EXISTS `wsdlmessage`;
CREATE TABLE `wsdlmessage` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlmessage`
--

/*!40000 ALTER TABLE `wsdlmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlmessage` ENABLE KEYS */;


--
-- Definition of table `wsdlmessage_messagepart_reffrom`
--

DROP TABLE IF EXISTS `wsdlmessage_messagepart_reffrom`;
CREATE TABLE `wsdlmessage_messagepart_reffrom` (
  `MESSAGEPART_XMETA` varchar(64) default NULL,
  `REFFROM_MESSAGEPART_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlmessage_messagepart_reffrom`
--

/*!40000 ALTER TABLE `wsdlmessage_messagepart_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlmessage_messagepart_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdlmetadataitem`
--

DROP TABLE IF EXISTS `wsdlmetadataitem`;
CREATE TABLE `wsdlmetadataitem` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `ORIGINALURI_XMETA` varchar(1020) default NULL,
  `CONTENTSIZE_XMETA` bigint(19) default NULL,
  `XSDTARGETNAMESPACE_XMETA` longtext,
  `ENCODING_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlmetadataitem`
--

/*!40000 ALTER TABLE `wsdlmetadataitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlmetadataitem` ENABLE KEYS */;


--
-- Definition of table `wsdlmetadataitem_importedschemas_reffrom`
--

DROP TABLE IF EXISTS `wsdlmetadataitem_importedschemas_reffrom`;
CREATE TABLE `wsdlmetadataitem_importedschemas_reffrom` (
  `IMPORTEDSCHEMAS_XMETA` varchar(64) default NULL,
  `REFFROM_IMPORTEDSCHEMAS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlmetadataitem_importedschemas_reffrom`
--

/*!40000 ALTER TABLE `wsdlmetadataitem_importedschemas_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlmetadataitem_importedschemas_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdlmetadataitem_importedwsdls_reffrom`
--

DROP TABLE IF EXISTS `wsdlmetadataitem_importedwsdls_reffrom`;
CREATE TABLE `wsdlmetadataitem_importedwsdls_reffrom` (
  `IMPORTEDWSDLS_XMETA` varchar(64) default NULL,
  `REFFROM_IMPORTEDWSDLS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlmetadataitem_importedwsdls_reffrom`
--

/*!40000 ALTER TABLE `wsdlmetadataitem_importedwsdls_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlmetadataitem_importedwsdls_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdlmetadataitem_includedschemas_reffrom`
--

DROP TABLE IF EXISTS `wsdlmetadataitem_includedschemas_reffrom`;
CREATE TABLE `wsdlmetadataitem_includedschemas_reffrom` (
  `INCLUDEDSCHEMAS_XMETA` varchar(64) default NULL,
  `REFFROM_INCLUDEDSCHEMAS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlmetadataitem_includedschemas_reffrom`
--

/*!40000 ALTER TABLE `wsdlmetadataitem_includedschemas_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlmetadataitem_includedschemas_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdlmetadataitem_redefinedschemas_reffro`
--

DROP TABLE IF EXISTS `wsdlmetadataitem_redefinedschemas_reffro`;
CREATE TABLE `wsdlmetadataitem_redefinedschemas_reffro` (
  `REDEFINEDSCHEMAS_XMETA` varchar(64) default NULL,
  `REFFROM_REDEFINEDSCHEMAS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlmetadataitem_redefinedschemas_reffro`
--

/*!40000 ALTER TABLE `wsdlmetadataitem_redefinedschemas_reffro` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlmetadataitem_redefinedschemas_reffro` ENABLE KEYS */;


--
-- Definition of table `wsdloperation`
--

DROP TABLE IF EXISTS `wsdloperation`;
CREATE TABLE `wsdloperation` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdloperation`
--

/*!40000 ALTER TABLE `wsdloperation` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdloperation` ENABLE KEYS */;


--
-- Definition of table `wsdloperation_faults_reffrom`
--

DROP TABLE IF EXISTS `wsdloperation_faults_reffrom`;
CREATE TABLE `wsdloperation_faults_reffrom` (
  `FAULTS_XMETA` varchar(64) default NULL,
  `REFFROM_FAULTS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdloperation_faults_reffrom`
--

/*!40000 ALTER TABLE `wsdloperation_faults_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdloperation_faults_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdloperation_input_reffrom`
--

DROP TABLE IF EXISTS `wsdloperation_input_reffrom`;
CREATE TABLE `wsdloperation_input_reffrom` (
  `INPUT_XMETA` varchar(64) default NULL,
  `REFFROM_INPUT_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdloperation_input_reffrom`
--

/*!40000 ALTER TABLE `wsdloperation_input_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdloperation_input_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdloperation_output_reffrom`
--

DROP TABLE IF EXISTS `wsdloperation_output_reffrom`;
CREATE TABLE `wsdloperation_output_reffrom` (
  `OUTPUT_XMETA` varchar(64) default NULL,
  `REFFROM_OUTPUT_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdloperation_output_reffrom`
--

/*!40000 ALTER TABLE `wsdloperation_output_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdloperation_output_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdloperation_wsdlfaults_reffrom`
--

DROP TABLE IF EXISTS `wsdloperation_wsdlfaults_reffrom`;
CREATE TABLE `wsdloperation_wsdlfaults_reffrom` (
  `WSDLFAULTS_XMETA` varchar(64) default NULL,
  `REFFROM_WSDLFAULTS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdloperation_wsdlfaults_reffrom`
--

/*!40000 ALTER TABLE `wsdloperation_wsdlfaults_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdloperation_wsdlfaults_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdloperation_wsdlinput_reffrom`
--

DROP TABLE IF EXISTS `wsdloperation_wsdlinput_reffrom`;
CREATE TABLE `wsdloperation_wsdlinput_reffrom` (
  `WSDLINPUT_XMETA` varchar(64) default NULL,
  `REFFROM_WSDLINPUT_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdloperation_wsdlinput_reffrom`
--

/*!40000 ALTER TABLE `wsdloperation_wsdlinput_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdloperation_wsdlinput_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdloperation_wsdloutput_reffrom`
--

DROP TABLE IF EXISTS `wsdloperation_wsdloutput_reffrom`;
CREATE TABLE `wsdloperation_wsdloutput_reffrom` (
  `WSDLOUTPUT_XMETA` varchar(64) default NULL,
  `REFFROM_WSDLOUTPUT_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdloperation_wsdloutput_reffrom`
--

/*!40000 ALTER TABLE `wsdloperation_wsdloutput_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdloperation_wsdloutput_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdloutput`
--

DROP TABLE IF EXISTS `wsdloutput`;
CREATE TABLE `wsdloutput` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdloutput`
--

/*!40000 ALTER TABLE `wsdloutput` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdloutput` ENABLE KEYS */;


--
-- Definition of table `wsdloutput_wsdlmessage_reffrom`
--

DROP TABLE IF EXISTS `wsdloutput_wsdlmessage_reffrom`;
CREATE TABLE `wsdloutput_wsdlmessage_reffrom` (
  `WSDLMESSAGE_XMETA` varchar(64) default NULL,
  `REFFROM_WSDLMESSAGE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdloutput_wsdlmessage_reffrom`
--

/*!40000 ALTER TABLE `wsdloutput_wsdlmessage_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdloutput_wsdlmessage_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdlpart`
--

DROP TABLE IF EXISTS `wsdlpart`;
CREATE TABLE `wsdlpart` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlpart`
--

/*!40000 ALTER TABLE `wsdlpart` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlpart` ENABLE KEYS */;


--
-- Definition of table `wsdlpart_xsdelement_reffrom`
--

DROP TABLE IF EXISTS `wsdlpart_xsdelement_reffrom`;
CREATE TABLE `wsdlpart_xsdelement_reffrom` (
  `XSDELEMENT_XMETA` varchar(64) default NULL,
  `REFFROM_XSDELEMENT_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlpart_xsdelement_reffrom`
--

/*!40000 ALTER TABLE `wsdlpart_xsdelement_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlpart_xsdelement_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdlpart_xsdtype_reffrom`
--

DROP TABLE IF EXISTS `wsdlpart_xsdtype_reffrom`;
CREATE TABLE `wsdlpart_xsdtype_reffrom` (
  `XSDTYPE_XMETA` varchar(64) default NULL,
  `REFFROM_XSDTYPE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlpart_xsdtype_reffrom`
--

/*!40000 ALTER TABLE `wsdlpart_xsdtype_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlpart_xsdtype_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdlport`
--

DROP TABLE IF EXISTS `wsdlport`;
CREATE TABLE `wsdlport` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlport`
--

/*!40000 ALTER TABLE `wsdlport` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlport` ENABLE KEYS */;


--
-- Definition of table `wsdlport_binding_reffrom`
--

DROP TABLE IF EXISTS `wsdlport_binding_reffrom`;
CREATE TABLE `wsdlport_binding_reffrom` (
  `BINDING_XMETA` varchar(64) default NULL,
  `REFFROM_BINDING_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlport_binding_reffrom`
--

/*!40000 ALTER TABLE `wsdlport_binding_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlport_binding_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdlport_soapaddress_reffrom`
--

DROP TABLE IF EXISTS `wsdlport_soapaddress_reffrom`;
CREATE TABLE `wsdlport_soapaddress_reffrom` (
  `SOAPADDRESS_XMETA` varchar(64) default NULL,
  `REFFROM__SOAPADDRESS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlport_soapaddress_reffrom`
--

/*!40000 ALTER TABLE `wsdlport_soapaddress_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlport_soapaddress_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdlporttype`
--

DROP TABLE IF EXISTS `wsdlporttype`;
CREATE TABLE `wsdlporttype` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlporttype`
--

/*!40000 ALTER TABLE `wsdlporttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlporttype` ENABLE KEYS */;


--
-- Definition of table `wsdlporttype_operation_reffrom`
--

DROP TABLE IF EXISTS `wsdlporttype_operation_reffrom`;
CREATE TABLE `wsdlporttype_operation_reffrom` (
  `OPERATION_XMETA` varchar(64) default NULL,
  `REFFROM_OPERATION_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlporttype_operation_reffrom`
--

/*!40000 ALTER TABLE `wsdlporttype_operation_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlporttype_operation_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsdlservice`
--

DROP TABLE IF EXISTS `wsdlservice`;
CREATE TABLE `wsdlservice` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlservice`
--

/*!40000 ALTER TABLE `wsdlservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlservice` ENABLE KEYS */;


--
-- Definition of table `wsdlservice_port_reffrom`
--

DROP TABLE IF EXISTS `wsdlservice_port_reffrom`;
CREATE TABLE `wsdlservice_port_reffrom` (
  `PORT_XMETA` varchar(64) default NULL,
  `REFFROM_PORT_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsdlservice_port_reffrom`
--

/*!40000 ALTER TABLE `wsdlservice_port_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsdlservice_port_reffrom` ENABLE KEYS */;


--
-- Definition of table `wsrrlmgr`
--

DROP TABLE IF EXISTS `wsrrlmgr`;
CREATE TABLE `wsrrlmgr` (
  `LEASENAME` varchar(254) NOT NULL default '',
  `LEASEOWNER` varchar(254) default NULL,
  `LEASE_EXPIRE_TIME` bigint(19) default NULL,
  `DISABLED` varchar(5) default NULL,
  PRIMARY KEY  (`LEASENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsrrlmgr`
--

/*!40000 ALTER TABLE `wsrrlmgr` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsrrlmgr` ENABLE KEYS */;


--
-- Definition of table `wsrrlmpr`
--

DROP TABLE IF EXISTS `wsrrlmpr`;
CREATE TABLE `wsrrlmpr` (
  `LEASENAME` varchar(254) default NULL,
  `NAME` varchar(254) default NULL,
  `VALUE` varchar(254) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsrrlmpr`
--

/*!40000 ALTER TABLE `wsrrlmpr` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsrrlmpr` ENABLE KEYS */;


--
-- Definition of table `wsrrtask`
--

DROP TABLE IF EXISTS `wsrrtask`;
CREATE TABLE `wsrrtask` (
  `TASKID` bigint(19) NOT NULL default '0',
  `VERSION` varchar(5) default NULL,
  `ROW_VERSION` int(10) default NULL,
  `TASKTYPE` int(10) default NULL,
  `TASKSUSPENDED` smallint(5) default NULL,
  `CANCELLED` smallint(5) default NULL,
  `NEXTFIRETIME` bigint(19) default NULL,
  `STARTBYINTERVAL` varchar(254) default NULL,
  `STARTBYTIME` bigint(19) default NULL,
  `VALIDFROMTIME` bigint(19) default NULL,
  `VALIDTOTIME` bigint(19) default NULL,
  `REPEATINTERVAL` varchar(254) default NULL,
  `MAXREPEATS` int(10) default NULL,
  `REPEATSLEFT` int(10) default NULL,
  `TASKINFO` mediumblob,
  `NAME` varchar(254) default NULL,
  `AUTOPURGE` int(10) default NULL,
  `FAILUREACTION` int(10) default NULL,
  `MAXATTEMPTS` int(10) default NULL,
  `QOS` int(10) default NULL,
  `PARTITIONID` int(10) default NULL,
  `OWNERTOKEN` varchar(200) default NULL,
  `CREATETIME` bigint(19) default NULL,
  PRIMARY KEY  (`TASKID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsrrtask`
--

/*!40000 ALTER TABLE `wsrrtask` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsrrtask` ENABLE KEYS */;


--
-- Definition of table `wsrrtreg`
--

DROP TABLE IF EXISTS `wsrrtreg`;
CREATE TABLE `wsrrtreg` (
  `REGKEY` varchar(254) NOT NULL default '',
  `REGVALUE` varchar(254) default NULL,
  PRIMARY KEY  (`REGKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wsrrtreg`
--

/*!40000 ALTER TABLE `wsrrtreg` DISABLE KEYS */;
/*!40000 ALTER TABLE `wsrrtreg` ENABLE KEYS */;


--
-- Definition of table `xmetafolder`
--

DROP TABLE IF EXISTS `xmetafolder`;
CREATE TABLE `xmetafolder` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `CONTENTEXPRESSION_XMETA` longtext,
  `DESCRIPTION_XMETA` varchar(255) default NULL,
  `DYNAMIC_XMETA` smallint(5) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xmetafolder`
--

/*!40000 ALTER TABLE `xmetafolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmetafolder` ENABLE KEYS */;


--
-- Definition of table `xmetafolder_xmetaobjects_reffrom`
--

DROP TABLE IF EXISTS `xmetafolder_xmetaobjects_reffrom`;
CREATE TABLE `xmetafolder_xmetaobjects_reffrom` (
  `XMETAOBJECTS_XMETA` varchar(64) default NULL,
  `REFFROM_XMETAOBJECTS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xmetafolder_xmetaobjects_reffrom`
--

/*!40000 ALTER TABLE `xmetafolder_xmetaobjects_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmetafolder_xmetaobjects_reffrom` ENABLE KEYS */;


--
-- Definition of table `xmetalockinfo`
--

DROP TABLE IF EXISTS `xmetalockinfo`;
CREATE TABLE `xmetalockinfo` (
  `REPOSITORY_ID` varchar(64) NOT NULL default '',
  `LOCKED_AT` decimal(31,0) default NULL,
  `LOCKED_BY_USER` varchar(256) default NULL,
  `LOCKED_BY_SESSION` varchar(256) default NULL,
  `NEEDS_UPGRADE` smallint(5) default NULL,
  PRIMARY KEY  (`REPOSITORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xmetalockinfo`
--

/*!40000 ALTER TABLE `xmetalockinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmetalockinfo` ENABLE KEYS */;


--
-- Definition of table `xmetareference`
--

DROP TABLE IF EXISTS `xmetareference`;
CREATE TABLE `xmetareference` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xmetareference`
--

/*!40000 ALTER TABLE `xmetareference` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmetareference` ENABLE KEYS */;


--
-- Definition of table `xmetareference_referencedobject_reffrom`
--

DROP TABLE IF EXISTS `xmetareference_referencedobject_reffrom`;
CREATE TABLE `xmetareference_referencedobject_reffrom` (
  `REFERENCEDOBJECT_XMETA` varchar(64) default NULL,
  `REFFROM_REFERENCEDOBJECT_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xmetareference_referencedobject_reffrom`
--

/*!40000 ALTER TABLE `xmetareference_referencedobject_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmetareference_referencedobject_reffrom` ENABLE KEYS */;


--
-- Definition of table `xmetarepositoryobject`
--

DROP TABLE IF EXISTS `xmetarepositoryobject`;
CREATE TABLE `xmetarepositoryobject` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xmetarepositoryobject`
--

/*!40000 ALTER TABLE `xmetarepositoryobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmetarepositoryobject` ENABLE KEYS */;


--
-- Definition of table `xmlmetadataitem`
--

DROP TABLE IF EXISTS `xmlmetadataitem`;
CREATE TABLE `xmlmetadataitem` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `ORIGINALURI_XMETA` varchar(1020) default NULL,
  `CONTENTSIZE_XMETA` bigint(19) default NULL,
  `ENCODING_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xmlmetadataitem`
--

/*!40000 ALTER TABLE `xmlmetadataitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmlmetadataitem` ENABLE KEYS */;


--
-- Definition of table `xmlschemametadataitem`
--

DROP TABLE IF EXISTS `xmlschemametadataitem`;
CREATE TABLE `xmlschemametadataitem` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(1020) default NULL,
  `NAMESPACE_XMETA` varchar(1020) default NULL,
  `VERSION_XMETA` varchar(1020) default NULL,
  `DESCRIPTION_XMETA` varchar(1020) default NULL,
  `BSRURI_XMETA` varchar(1020) default NULL,
  `CREATEDBY_XMETA` varchar(1020) default NULL,
  `CREATIONTIMESTAMP_XMETA` bigint(19) default NULL,
  `LASTMODIFIEDBY_XMETA` varchar(1020) default NULL,
  `LASTMODIFIEDBYTIMESTAMP_XMETA` bigint(19) default NULL,
  `ORIGINALURI_XMETA` varchar(1020) default NULL,
  `CONTENTSIZE_XMETA` bigint(19) default NULL,
  `ENCODING_XMETA` varchar(1020) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xmlschemametadataitem`
--

/*!40000 ALTER TABLE `xmlschemametadataitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmlschemametadataitem` ENABLE KEYS */;


--
-- Definition of table `xmlschemametadataitem_importedschemas_reffrom`
--

DROP TABLE IF EXISTS `xmlschemametadataitem_importedschemas_reffrom`;
CREATE TABLE `xmlschemametadataitem_importedschemas_reffrom` (
  `IMPORTEDSCHEMAS_XMETA` varchar(64) default NULL,
  `REFFROM_IMPORTEDSCHEMAS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xmlschemametadataitem_importedschemas_reffrom`
--

/*!40000 ALTER TABLE `xmlschemametadataitem_importedschemas_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmlschemametadataitem_importedschemas_reffrom` ENABLE KEYS */;


--
-- Definition of table `xmlschemametadataitem_includedschemas_reffrom`
--

DROP TABLE IF EXISTS `xmlschemametadataitem_includedschemas_reffrom`;
CREATE TABLE `xmlschemametadataitem_includedschemas_reffrom` (
  `INCLUDEDSCHEMAS_XMETA` varchar(64) default NULL,
  `REFFROM_INCLUDEDSCHEMAS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xmlschemametadataitem_includedschemas_reffrom`
--

/*!40000 ALTER TABLE `xmlschemametadataitem_includedschemas_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmlschemametadataitem_includedschemas_reffrom` ENABLE KEYS */;


--
-- Definition of table `xmlschemametadataitem_redefinedschemas_reffrom`
--

DROP TABLE IF EXISTS `xmlschemametadataitem_redefinedschemas_reffrom`;
CREATE TABLE `xmlschemametadataitem_redefinedschemas_reffrom` (
  `REDEFINEDSCHEMAS_XMETA` varchar(64) default NULL,
  `REFFROM_REDEFINEDSCHEMAS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xmlschemametadataitem_redefinedschemas_reffrom`
--

/*!40000 ALTER TABLE `xmlschemametadataitem_redefinedschemas_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmlschemametadataitem_redefinedschemas_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmannotation`
--

DROP TABLE IF EXISTS `xqmannotation`;
CREATE TABLE `xqmannotation` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `GROUP_XMETA` varchar(255) default NULL,
  `VALUE_XMETA` varchar(255) default NULL,
  `XQMANNOTATIONS_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmannotation`
--

/*!40000 ALTER TABLE `xqmannotation` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmannotation` ENABLE KEYS */;


--
-- Definition of table `xqmannotations`
--

DROP TABLE IF EXISTS `xqmannotations`;
CREATE TABLE `xqmannotations` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `SOURCEURI_XMETA` varchar(255) default NULL,
  `ANNOTATIONS_XMETA` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmannotations`
--

/*!40000 ALTER TABLE `xqmannotations` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmannotations` ENABLE KEYS */;


--
-- Definition of table `xqmattribute`
--

DROP TABLE IF EXISTS `xqmattribute`;
CREATE TABLE `xqmattribute` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `REGISTEREDNSURI_XMETA` varchar(255) default NULL,
  `DESCRIPTION_XMETA` longtext,
  `ORDERED_XMETA` smallint(5) default NULL,
  `UNIQUE_XMETA` smallint(5) default NULL,
  `REQUIRED_XMETA` smallint(5) default NULL,
  `MANY_XMETA` smallint(5) default NULL,
  `LOWERBOUND_XMETA` int(10) default NULL,
  `UPPERBOUND_XMETA` int(10) default NULL,
  `CHANGEABLE_XMETA` smallint(5) default NULL,
  `DEFAULTVALUE_XMETA` varchar(255) default NULL,
  `DERIVED_XMETA` smallint(5) default NULL,
  `TRANSIENT_XMETA` smallint(5) default NULL,
  `UNSETTABLE_XMETA` smallint(5) default NULL,
  `VOLATILE_XMETA` smallint(5) default NULL,
  `INDEXED_XMETA` smallint(5) default NULL,
  `DISPLAYS_XMETA` smallint(5) default NULL,
  `LENGTH_XMETA` int(10) default NULL,
  `VIEWMAPPING_XMETA` longtext,
  `PERSISTENTMAPPING_ORDER` longtext,
  `ANNOTATIONS_ORDER` longtext,
  `CONTAININGCLASS_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmattribute`
--

/*!40000 ALTER TABLE `xqmattribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmattribute` ENABLE KEYS */;


--
-- Definition of table `xqmattribute_attributetype_reffrom`
--

DROP TABLE IF EXISTS `xqmattribute_attributetype_reffrom`;
CREATE TABLE `xqmattribute_attributetype_reffrom` (
  `ATTRIBUTETYPE_XMETA` varchar(64) default NULL,
  `REFFROM_ATTRIBUTETYPE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmattribute_attributetype_reffrom`
--

/*!40000 ALTER TABLE `xqmattribute_attributetype_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmattribute_attributetype_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmattributevalue`
--

DROP TABLE IF EXISTS `xqmattributevalue`;
CREATE TABLE `xqmattributevalue` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `CONTAININGIDENTITY_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmattributevalue`
--

/*!40000 ALTER TABLE `xqmattributevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmattributevalue` ENABLE KEYS */;


--
-- Definition of table `xqmattributevalue_attribute_reffrom`
--

DROP TABLE IF EXISTS `xqmattributevalue_attribute_reffrom`;
CREATE TABLE `xqmattributevalue_attribute_reffrom` (
  `ATTRIBUTE_XMETA` varchar(64) default NULL,
  `REFFROM_ATTRIBUTE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmattributevalue_attribute_reffrom`
--

/*!40000 ALTER TABLE `xqmattributevalue_attribute_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmattributevalue_attribute_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmclass`
--

DROP TABLE IF EXISTS `xqmclass`;
CREATE TABLE `xqmclass` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `REGISTEREDNSURI_XMETA` varchar(255) default NULL,
  `DESCRIPTION_XMETA` longtext,
  `ABSTRACT_XMETA` smallint(5) default NULL,
  `INTERFACE_XMETA` smallint(5) default NULL,
  `ALLSUPERTYPES_XMETA` longtext,
  `ALLSUBTYPES_XMETA` longtext,
  `CONTAININGPACKAGE_XMETA` varchar(64) default NULL,
  `VIEWMAPPING_XMETA` longtext,
  `PERSISTENTMAPPING_ORDER` longtext,
  `DECLAREDIDENTITYDEFINITIONXMET` varchar(64) default NULL,
  `DECLAREDATTRIBUTES_XMETA` longtext,
  `DECLAREDOPERATIONS_XMETA` longtext,
  `DECLAREDREFERENCES_XMETA` longtext,
  `ALLREFERENCES_ORDER` longtext,
  `ALLATTRIBUTES_ORDER` longtext,
  `ALLOPERATIONS_ORDER` longtext,
  `SUPERTYPES_ORDER` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmclass`
--

/*!40000 ALTER TABLE `xqmclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmclass` ENABLE KEYS */;


--
-- Definition of table `xqmclass_allattributes_reffrom`
--

DROP TABLE IF EXISTS `xqmclass_allattributes_reffrom`;
CREATE TABLE `xqmclass_allattributes_reffrom` (
  `ALLATTRIBUTES_XMETA` varchar(64) default NULL,
  `REFFROM_ALLATTRIBUTES_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmclass_allattributes_reffrom`
--

/*!40000 ALTER TABLE `xqmclass_allattributes_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmclass_allattributes_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmclass_alloperations_reffrom_alloperations`
--

DROP TABLE IF EXISTS `xqmclass_alloperations_reffrom_alloperations`;
CREATE TABLE `xqmclass_alloperations_reffrom_alloperations` (
  `ALLOPERATIONS_XMETA` varchar(64) default NULL,
  `REFFROM_ALLOPERATIONS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmclass_alloperations_reffrom_alloperations`
--

/*!40000 ALTER TABLE `xqmclass_alloperations_reffrom_alloperations` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmclass_alloperations_reffrom_alloperations` ENABLE KEYS */;


--
-- Definition of table `xqmclass_allreferences_reffrom`
--

DROP TABLE IF EXISTS `xqmclass_allreferences_reffrom`;
CREATE TABLE `xqmclass_allreferences_reffrom` (
  `ALLREFERENCES_XMETA` varchar(64) default NULL,
  `REFFROM_ALLREFERENCES_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmclass_allreferences_reffrom`
--

/*!40000 ALTER TABLE `xqmclass_allreferences_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmclass_allreferences_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmclass_displaysattribute_reffrom`
--

DROP TABLE IF EXISTS `xqmclass_displaysattribute_reffrom`;
CREATE TABLE `xqmclass_displaysattribute_reffrom` (
  `DISPLAYSATTRIBUTE_XMETA` varchar(64) default NULL,
  `REFFROMDISPLAYSATTRIBUTEXMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmclass_displaysattribute_reffrom`
--

/*!40000 ALTER TABLE `xqmclass_displaysattribute_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmclass_displaysattribute_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmclass_identitydefinition_reffrom`
--

DROP TABLE IF EXISTS `xqmclass_identitydefinition_reffrom`;
CREATE TABLE `xqmclass_identitydefinition_reffrom` (
  `IDENTITYDEFINITION_XMETA` varchar(64) default NULL,
  `REFFROMIDENTITYDEFINITIONXMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmclass_identitydefinition_reffrom`
--

/*!40000 ALTER TABLE `xqmclass_identitydefinition_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmclass_identitydefinition_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmclass_supertypes_reffro`
--

DROP TABLE IF EXISTS `xqmclass_supertypes_reffro`;
CREATE TABLE `xqmclass_supertypes_reffro` (
  `SUPERTYPES_XMETA` varchar(64) default NULL,
  `REFFROM_SUPERTYPES_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmclass_supertypes_reffro`
--

/*!40000 ALTER TABLE `xqmclass_supertypes_reffro` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmclass_supertypes_reffro` ENABLE KEYS */;


--
-- Definition of table `xqmclassifier`
--

DROP TABLE IF EXISTS `xqmclassifier`;
CREATE TABLE `xqmclassifier` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `REGISTEREDNSURI_XMETA` varchar(255) default NULL,
  `DESCRIPTION_XMETA` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmclassifier`
--

/*!40000 ALTER TABLE `xqmclassifier` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmclassifier` ENABLE KEYS */;


--
-- Definition of table `xqmclassmapping`
--

DROP TABLE IF EXISTS `xqmclassmapping`;
CREATE TABLE `xqmclassmapping` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `DESCRIPTION_XMETA` longtext,
  `ID_XMETA` varchar(255) default NULL,
  `VIEWCLASS_XMETA` varchar(64) default NULL,
  `PERSISTENTCLASSES_ORDER` longtext,
  `CONTAININGPACKAGE_XMETA` varchar(64) default NULL,
  `FEATUREMAPPINGS_XMETA` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmclassmapping`
--

/*!40000 ALTER TABLE `xqmclassmapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmclassmapping` ENABLE KEYS */;


--
-- Definition of table `xqmclassmapping_persistentclasses_persistentmapping`
--

DROP TABLE IF EXISTS `xqmclassmapping_persistentclasses_persistentmapping`;
CREATE TABLE `xqmclassmapping_persistentclasses_persistentmapping` (
  `PERSISTENTCLASSES_XMETA` varchar(64) default NULL,
  `PERSISTENTMAPPING_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmclassmapping_persistentclasses_persistentmapping`
--

/*!40000 ALTER TABLE `xqmclassmapping_persistentclasses_persistentmapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmclassmapping_persistentclasses_persistentmapping` ENABLE KEYS */;


--
-- Definition of table `xqmcomputedvalue`
--

DROP TABLE IF EXISTS `xqmcomputedvalue`;
CREATE TABLE `xqmcomputedvalue` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `CONTAININGIDENTITY_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmcomputedvalue`
--

/*!40000 ALTER TABLE `xqmcomputedvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmcomputedvalue` ENABLE KEYS */;


--
-- Definition of table `xqmdatatype`
--

DROP TABLE IF EXISTS `xqmdatatype`;
CREATE TABLE `xqmdatatype` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `REGISTEREDNSURI_XMETA` varchar(255) default NULL,
  `DESCRIPTION_XMETA` longtext,
  `SERIALIZABLE_XMETA` smallint(5) default NULL,
  `INSTANCETYPE_XMETA` int(10) default NULL,
  `INSTANCECLASSNAME_XMETA` varchar(255) default NULL,
  `DEFAULTVALUE_XMETA` varchar(255) default NULL,
  `CONTAININGPACKAGE_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmdatatype`
--

/*!40000 ALTER TABLE `xqmdatatype` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmdatatype` ENABLE KEYS */;


--
-- Definition of table `xqmenum`
--

DROP TABLE IF EXISTS `xqmenum`;
CREATE TABLE `xqmenum` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `REGISTEREDNSURI_XMETA` varchar(255) default NULL,
  `DESCRIPTION_XMETA` longtext,
  `SERIALIZABLE_XMETA` smallint(5) default NULL,
  `INSTANCETYPE_XMETA` int(10) default NULL,
  `INSTANCECLASSNAME_XMETA` varchar(255) default NULL,
  `DEFAULTVALUE_XMETA` varchar(255) default NULL,
  `CONTAININGPACKAGE_XMETA` varchar(64) default NULL,
  `LITERALS_XMETA` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmenum`
--

/*!40000 ALTER TABLE `xqmenum` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmenum` ENABLE KEYS */;


--
-- Definition of table `xqmenumliteral`
--

DROP TABLE IF EXISTS `xqmenumliteral`;
CREATE TABLE `xqmenumliteral` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `REGISTEREDNSURI_XMETA` varchar(255) default NULL,
  `DESCRIPTION_XMETA` longtext,
  `VALUE_XMETA` int(10) default NULL,
  `CONTAININGENUM_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmenumliteral`
--

/*!40000 ALTER TABLE `xqmenumliteral` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmenumliteral` ENABLE KEYS */;


--
-- Definition of table `xqmidentitydefinition`
--

DROP TABLE IF EXISTS `xqmidentitydefinition`;
CREATE TABLE `xqmidentitydefinition` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `SELECTIONVALUE_XMETA` varchar(255) default NULL,
  `CONTAININGSET_XMETA` varchar(64) default NULL,
  `IDENTITYCOMPONENTS_XMETA` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmidentitydefinition`
--

/*!40000 ALTER TABLE `xqmidentitydefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmidentitydefinition` ENABLE KEYS */;


--
-- Definition of table `xqmidentitydefinition_selectionfeature_reffrom`
--

DROP TABLE IF EXISTS `xqmidentitydefinition_selectionfeature_reffrom`;
CREATE TABLE `xqmidentitydefinition_selectionfeature_reffrom` (
  `SELECTIONFEATURE_XMETA` varchar(64) default NULL,
  `REFFROM_SELECTIONFEATURE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmidentitydefinition_selectionfeature_reffrom`
--

/*!40000 ALTER TABLE `xqmidentitydefinition_selectionfeature_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmidentitydefinition_selectionfeature_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmidentitydefinitionset`
--

DROP TABLE IF EXISTS `xqmidentitydefinitionset`;
CREATE TABLE `xqmidentitydefinitionset` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `REGISTEREDNSURI_XMETA` varchar(255) default NULL,
  `DESCRIPTION_XMETA` longtext,
  `CONTAININGCLASS_XMETA` varchar(64) default NULL,
  `IDENTITYDEFINITIONS_XMETA` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmidentitydefinitionset`
--

/*!40000 ALTER TABLE `xqmidentitydefinitionset` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmidentitydefinitionset` ENABLE KEYS */;


--
-- Definition of table `xqmoperation`
--

DROP TABLE IF EXISTS `xqmoperation`;
CREATE TABLE `xqmoperation` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `REGISTEREDNSURI_XMETA` varchar(255) default NULL,
  `DESCRIPTION_XMETA` longtext,
  `ORDERED_XMETA` smallint(5) default NULL,
  `UNIQUE_XMETA` smallint(5) default NULL,
  `REQUIRED_XMETA` smallint(5) default NULL,
  `MANY_XMETA` smallint(5) default NULL,
  `LOWERBOUND_XMETA` int(10) default NULL,
  `UPPERBOUND_XMETA` int(10) default NULL,
  `CONTAININGCLASS_XMETA` varchar(64) default NULL,
  `EXCEPTIONS_ORDER` longtext,
  `PARAMETERS_XMETA` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmoperation`
--

/*!40000 ALTER TABLE `xqmoperation` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmoperation` ENABLE KEYS */;


--
-- Definition of table `xqmoperation_exceptions_reffrom`
--

DROP TABLE IF EXISTS `xqmoperation_exceptions_reffrom`;
CREATE TABLE `xqmoperation_exceptions_reffrom` (
  `EXCEPTIONS_XMETA` varchar(64) default NULL,
  `REFFROM_EXCEPTIONS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmoperation_exceptions_reffrom`
--

/*!40000 ALTER TABLE `xqmoperation_exceptions_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmoperation_exceptions_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmoperation_returntype_reffrom`
--

DROP TABLE IF EXISTS `xqmoperation_returntype_reffrom`;
CREATE TABLE `xqmoperation_returntype_reffrom` (
  `RETURNTYPE_XMETA` varchar(64) default NULL,
  `REFFROM_RETURNTYPE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmoperation_returntype_reffrom`
--

/*!40000 ALTER TABLE `xqmoperation_returntype_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmoperation_returntype_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmpackage`
--

DROP TABLE IF EXISTS `xqmpackage`;
CREATE TABLE `xqmpackage` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `REGISTEREDNSURI_XMETA` varchar(255) default NULL,
  `DESCRIPTION_XMETA` longtext,
  `NSPREFIX_XMETA` varchar(255) default NULL,
  `PERSISTENTPACKAGE_XMETA` smallint(5) default NULL,
  `NSURI_XMETA` varchar(255) default NULL,
  `DATEREGISTERED_XMETA` bigint(19) default NULL,
  `MAJORVERSION_XMETA` varchar(255) default NULL,
  `MINORVERSION_XMETA` varchar(255) default NULL,
  `AUTHORINGTOOLNAME_XMETA` varchar(255) default NULL,
  `AUTHORINGTOOLVERSION_XMETA` varchar(255) default NULL,
  `BASEPACKAGE_XMETA` varchar(255) default NULL,
  `CLASSES_XMETA` longtext,
  `SUBPACKAGES_XMETA` longtext,
  `SUPERPACKAGE_XMETA` varchar(64) default NULL,
  `DATATYPES_XMETA` longtext,
  `DEPENDSON_ORDER` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmpackage`
--

/*!40000 ALTER TABLE `xqmpackage` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmpackage` ENABLE KEYS */;


--
-- Definition of table `xqmpackage_dependson_reffrom`
--

DROP TABLE IF EXISTS `xqmpackage_dependson_reffrom`;
CREATE TABLE `xqmpackage_dependson_reffrom` (
  `DEPENDSON_XMETA` varchar(64) default NULL,
  `REFFROM_DEPENDSON_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmpackage_dependson_reffrom`
--

/*!40000 ALTER TABLE `xqmpackage_dependson_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmpackage_dependson_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmpackagemapping`
--

DROP TABLE IF EXISTS `xqmpackagemapping`;
CREATE TABLE `xqmpackagemapping` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `DESCRIPTION_XMETA` longtext,
  `ID_XMETA` varchar(255) default NULL,
  `MAPGROUPNAME_XMETA` varchar(255) default NULL,
  `HUBPACKAGES_ORDER` longtext,
  `UNMAPPEDPACKAGES_ORDER` longtext,
  `CLASSMAPPINGS_XMETA` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmpackagemapping`
--

/*!40000 ALTER TABLE `xqmpackagemapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmpackagemapping` ENABLE KEYS */;


--
-- Definition of table `xqmpackagemapping_hubpackages_reffrom`
--

DROP TABLE IF EXISTS `xqmpackagemapping_hubpackages_reffrom`;
CREATE TABLE `xqmpackagemapping_hubpackages_reffrom` (
  `HUBPACKAGES_XMETA` varchar(64) default NULL,
  `REFFROM_HUBPACKAGES_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmpackagemapping_hubpackages_reffrom`
--

/*!40000 ALTER TABLE `xqmpackagemapping_hubpackages_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmpackagemapping_hubpackages_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmpackagemapping_roothubpackage_reffrom`
--

DROP TABLE IF EXISTS `xqmpackagemapping_roothubpackage_reffrom`;
CREATE TABLE `xqmpackagemapping_roothubpackage_reffrom` (
  `ROOTHUBPACKAGE_XMETA` varchar(64) default NULL,
  `REFFROM_ROOTHUBPACKAGE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmpackagemapping_roothubpackage_reffrom`
--

/*!40000 ALTER TABLE `xqmpackagemapping_roothubpackage_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmpackagemapping_roothubpackage_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmpackagemapping_unmappedpackages_reffrom`
--

DROP TABLE IF EXISTS `xqmpackagemapping_unmappedpackages_reffrom`;
CREATE TABLE `xqmpackagemapping_unmappedpackages_reffrom` (
  `UNMAPPEDPACKAGES_XMETA` varchar(64) default NULL,
  `REFFROM_UNMAPPEDPACKAGES_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmpackagemapping_unmappedpackages_reffrom`
--

/*!40000 ALTER TABLE `xqmpackagemapping_unmappedpackages_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmpackagemapping_unmappedpackages_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmpackagemapping_viewpackage_reffrom`
--

DROP TABLE IF EXISTS `xqmpackagemapping_viewpackage_reffrom`;
CREATE TABLE `xqmpackagemapping_viewpackage_reffrom` (
  `VIEWPACKAGE_XMETA` varchar(64) default NULL,
  `REFFROM_VIEWPACKAGE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmpackagemapping_viewpackage_reffrom`
--

/*!40000 ALTER TABLE `xqmpackagemapping_viewpackage_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmpackagemapping_viewpackage_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmparameter`
--

DROP TABLE IF EXISTS `xqmparameter`;
CREATE TABLE `xqmparameter` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `REGISTEREDNSURI_XMETA` varchar(255) default NULL,
  `DESCRIPTION_XMETA` longtext,
  `ORDERED_XMETA` smallint(5) default NULL,
  `UNIQUE_XMETA` smallint(5) default NULL,
  `REQUIRED_XMETA` smallint(5) default NULL,
  `MANY_XMETA` smallint(5) default NULL,
  `LOWERBOUND_XMETA` int(10) default NULL,
  `UPPERBOUND_XMETA` int(10) default NULL,
  `CONTAININGOPERATION_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmparameter`
--

/*!40000 ALTER TABLE `xqmparameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmparameter` ENABLE KEYS */;


--
-- Definition of table `xqmparameter_parametertype_reffrom`
--

DROP TABLE IF EXISTS `xqmparameter_parametertype_reffrom`;
CREATE TABLE `xqmparameter_parametertype_reffrom` (
  `PARAMETERTYPE_XMETA` varchar(64) default NULL,
  `REFFROM_PARAMETERTYPE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmparameter_parametertype_reffrom`
--

/*!40000 ALTER TABLE `xqmparameter_parametertype_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmparameter_parametertype_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmreference`
--

DROP TABLE IF EXISTS `xqmreference`;
CREATE TABLE `xqmreference` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `REGISTEREDNSURI_XMETA` varchar(255) default NULL,
  `DESCRIPTION_XMETA` longtext,
  `ORDERED_XMETA` smallint(5) default NULL,
  `UNIQUE_XMETA` smallint(5) default NULL,
  `REQUIRED_XMETA` smallint(5) default NULL,
  `MANY_XMETA` smallint(5) default NULL,
  `LOWERBOUND_XMETA` int(10) default NULL,
  `UPPERBOUND_XMETA` int(10) default NULL,
  `CHANGEABLE_XMETA` smallint(5) default NULL,
  `DEFAULTVALUE_XMETA` varchar(255) default NULL,
  `DERIVED_XMETA` smallint(5) default NULL,
  `TRANSIENT_XMETA` smallint(5) default NULL,
  `UNSETTABLE_XMETA` smallint(5) default NULL,
  `VOLATILE_XMETA` smallint(5) default NULL,
  `INDEXED_XMETA` smallint(5) default NULL,
  `CONTAINER_XMETA` smallint(5) default NULL,
  `CONTAINMENT_XMETA` smallint(5) default NULL,
  `ANNOTATIONDEPENDSON_XMETA` smallint(5) default NULL,
  `ANNOTATIONUSEDBY_XMETA` smallint(5) default NULL,
  `ANNOTATIONINCLUDES_XMETA` smallint(5) default NULL,
  `ANNOTATIONIDENTIFIES_XMETA` smallint(5) default NULL,
  `DELETION_XMETA` int(10) default NULL,
  `VIEWMAPPING_XMETA` longtext,
  `PERSISTENTMAPPING_ORDER` longtext,
  `ANNOTATIONS_ORDER` longtext,
  `CONTAININGCLASS_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmreference`
--

/*!40000 ALTER TABLE `xqmreference` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmreference` ENABLE KEYS */;


--
-- Definition of table `xqmreference_opposite_reffrom`
--

DROP TABLE IF EXISTS `xqmreference_opposite_reffrom`;
CREATE TABLE `xqmreference_opposite_reffrom` (
  `OPPOSITE_XMETA` varchar(64) default NULL,
  `REFFROM_OPPOSITE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmreference_opposite_reffrom`
--

/*!40000 ALTER TABLE `xqmreference_opposite_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmreference_opposite_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmreference_referencetype_reffrom`
--

DROP TABLE IF EXISTS `xqmreference_referencetype_reffrom`;
CREATE TABLE `xqmreference_referencetype_reffrom` (
  `REFERENCETYPE_XMETA` varchar(64) default NULL,
  `REFFROM_REFERENCETYPE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmreference_referencetype_reffrom`
--

/*!40000 ALTER TABLE `xqmreference_referencetype_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmreference_referencetype_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmreferencedattributevalue`
--

DROP TABLE IF EXISTS `xqmreferencedattributevalue`;
CREATE TABLE `xqmreferencedattributevalue` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `CONTAININGIDENTITY_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmreferencedattributevalue`
--

/*!40000 ALTER TABLE `xqmreferencedattributevalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmreferencedattributevalue` ENABLE KEYS */;


--
-- Definition of table `xqmreferencedattributevalue_attribute_reffrom`
--

DROP TABLE IF EXISTS `xqmreferencedattributevalue_attribute_reffrom`;
CREATE TABLE `xqmreferencedattributevalue_attribute_reffrom` (
  `ATTRIBUTE_XMETA` varchar(64) default NULL,
  `REFFROM_ATTRIBUTE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmreferencedattributevalue_attribute_reffrom`
--

/*!40000 ALTER TABLE `xqmreferencedattributevalue_attribute_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmreferencedattributevalue_attribute_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmreferencedattributevalue_reference_reffrom`
--

DROP TABLE IF EXISTS `xqmreferencedattributevalue_reference_reffrom`;
CREATE TABLE `xqmreferencedattributevalue_reference_reffrom` (
  `REFERENCE_XMETA` varchar(64) default NULL,
  `REFFROM_REFERENCE_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmreferencedattributevalue_reference_reffrom`
--

/*!40000 ALTER TABLE `xqmreferencedattributevalue_reference_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmreferencedattributevalue_reference_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmreferencedidentity`
--

DROP TABLE IF EXISTS `xqmreferencedidentity`;
CREATE TABLE `xqmreferencedidentity` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `CONTAININGIDENTITY_XMETA` varchar(64) default NULL,
  `REFERENCES_ORDER` longtext,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmreferencedidentity`
--

/*!40000 ALTER TABLE `xqmreferencedidentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmreferencedidentity` ENABLE KEYS */;


--
-- Definition of table `xqmreferencedidentity_identity_reffrom`
--

DROP TABLE IF EXISTS `xqmreferencedidentity_identity_reffrom`;
CREATE TABLE `xqmreferencedidentity_identity_reffrom` (
  `IDENTITY_XMETA` varchar(64) default NULL,
  `REFFROM_IDENTITY_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmreferencedidentity_identity_reffrom`
--

/*!40000 ALTER TABLE `xqmreferencedidentity_identity_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmreferencedidentity_identity_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmreferencedidentity_references_reffrom`
--

DROP TABLE IF EXISTS `xqmreferencedidentity_references_reffrom`;
CREATE TABLE `xqmreferencedidentity_references_reffrom` (
  `REFERENCES_XMETA` varchar(64) default NULL,
  `REFFROM_REFERENCES_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmreferencedidentity_references_reffrom`
--

/*!40000 ALTER TABLE `xqmreferencedidentity_references_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmreferencedidentity_references_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmstructuralfeature_annotations_reffrom`
--

DROP TABLE IF EXISTS `xqmstructuralfeature_annotations_reffrom`;
CREATE TABLE `xqmstructuralfeature_annotations_reffrom` (
  `ANNOTATIONS_XMETA` varchar(64) default NULL,
  `REFFROM_ANNOTATIONS_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmstructuralfeature_annotations_reffrom`
--

/*!40000 ALTER TABLE `xqmstructuralfeature_annotations_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmstructuralfeature_annotations_reffrom` ENABLE KEYS */;


--
-- Definition of table `xqmstructuralfeaturemapping`
--

DROP TABLE IF EXISTS `xqmstructuralfeaturemapping`;
CREATE TABLE `xqmstructuralfeaturemapping` (
  `CONTAINER_RID` varchar(64) default NULL,
  `XMETA_REPOS_OBJECT_ID_XMETA` varchar(64) NOT NULL default '',
  `XMETA_CREATED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETA_CREATION_TIMESTAMP_XMETA` bigint(19) default NULL,
  `XMETA_MODIFIED_BY_USER_XMETA` varchar(64) default NULL,
  `XMETAMODIFICATIONTIMESTAMPXMET` bigint(19) default NULL,
  `XMETA_OPTIMISTIC_LOCK_ID_XMETA` int(10) default NULL,
  `NAME_XMETA` varchar(255) default NULL,
  `DESCRIPTION_XMETA` longtext,
  `ID_XMETA` varchar(255) default NULL,
  `VIEWFEATURE_XMETA` varchar(64) default NULL,
  `PERSISTENTFEATURES_ORDER` longtext,
  `CONTAININGCLASS_XMETA` varchar(64) default NULL,
  PRIMARY KEY  (`XMETA_REPOS_OBJECT_ID_XMETA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmstructuralfeaturemapping`
--

/*!40000 ALTER TABLE `xqmstructuralfeaturemapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmstructuralfeaturemapping` ENABLE KEYS */;


--
-- Definition of table `xqmstructuralfeaturemapping_persistentfeatures_persistentmapping`
--

DROP TABLE IF EXISTS `xqmstructuralfeaturemapping_persistentfeatures_persistentmapping`;
CREATE TABLE `xqmstructuralfeaturemapping_persistentfeatures_persistentmapping` (
  `PERSISTENTFEATURES_XMETA` varchar(64) default NULL,
  `PERSISTENTMAPPING_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xqmstructuralfeaturemapping_persistentfeatures_persistentmapping`
--

/*!40000 ALTER TABLE `xqmstructuralfeaturemapping_persistentfeatures_persistentmapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `xqmstructuralfeaturemapping_persistentfeatures_persistentmapping` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
