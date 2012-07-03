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
-- Create schema ibm_wcc
--

CREATE DATABASE IF NOT EXISTS ibm_wcc;
USE ibm_wcc;

--
-- Definition of table `accessdateval`
--

DROP TABLE IF EXISTS `accessdateval`;
CREATE TABLE `accessdateval` (
  `ACC_DATE_VAL_ID` bigint(19) NOT NULL default '0',
  `INSTANCE_PK` bigint(19) default NULL,
  `ENTITY_NAME` varchar(20) default NULL,
  `COL_NAME` varchar(20) default NULL,
  `DESCRIPTION` varchar(1000) default NULL,
  `LAST_USED_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_VERIFIED_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`ACC_DATE_VAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accessdateval`
--

/*!40000 ALTER TABLE `accessdateval` DISABLE KEYS */;
/*!40000 ALTER TABLE `accessdateval` ENABLE KEYS */;


--
-- Definition of table `accessorentitle`
--

DROP TABLE IF EXISTS `accessorentitle`;
CREATE TABLE `accessorentitle` (
  `ACCESSOR_ENT_ID` bigint(19) NOT NULL default '0',
  `ACCESSOR_TP_CD` bigint(19) default NULL,
  `ENTITLEMENT_ID` bigint(19) default NULL,
  `ACCESSOR_KEY_TP_CD` bigint(19) default NULL,
  `ACCESSOR_KEY` varchar(20) default NULL,
  `ACCESSOR_DESC` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ACCESSOR_ENT_ID`),
  KEY `ACCESSOR_KEY_TP_CD` (`ACCESSOR_KEY_TP_CD`),
  KEY `ACCESSOR_TP_CD` (`ACCESSOR_TP_CD`),
  KEY `ENTITLEMENT_ID` (`ENTITLEMENT_ID`),
  CONSTRAINT `accessorentitle_ibfk_1` FOREIGN KEY (`ACCESSOR_KEY_TP_CD`) REFERENCES `cdaccessorkeytp` (`ACCESSOR_KEY_TP_CD`),
  CONSTRAINT `accessorentitle_ibfk_2` FOREIGN KEY (`ACCESSOR_TP_CD`) REFERENCES `cdaccessortp` (`ACCESSOR_TP_CD`),
  CONSTRAINT `accessorentitle_ibfk_3` FOREIGN KEY (`ENTITLEMENT_ID`) REFERENCES `entitlement` (`ENTITLEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accessorentitle`
--

/*!40000 ALTER TABLE `accessorentitle` DISABLE KEYS */;
/*!40000 ALTER TABLE `accessorentitle` ENABLE KEYS */;


--
-- Definition of table `accesstoken`
--

DROP TABLE IF EXISTS `accesstoken`;
CREATE TABLE `accesstoken` (
  `ACCESS_TOKEN_ID` bigint(19) NOT NULL default '0',
  `ACCESS_TOKEN_VALUE` varchar(50) default NULL,
  `GLOBAL_IND` char(1) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`ACCESS_TOKEN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accesstoken`
--

/*!40000 ALTER TABLE `accesstoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesstoken` ENABLE KEYS */;


--
-- Definition of table `adapterdef`
--

DROP TABLE IF EXISTS `adapterdef`;
CREATE TABLE `adapterdef` (
  `ADAPTERDEF_ID` bigint(19) NOT NULL default '0',
  `ADAPTERDEF_NAME` varchar(50) default NULL,
  `ADAPTERDEF_VENDOR` varchar(50) default NULL,
  `ADAPTERDEF_IMPL` varchar(200) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`ADAPTERDEF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adapterdef`
--

/*!40000 ALTER TABLE `adapterdef` DISABLE KEYS */;
/*!40000 ALTER TABLE `adapterdef` ENABLE KEYS */;


--
-- Definition of table `addactiontype`
--

DROP TABLE IF EXISTS `addactiontype`;
CREATE TABLE `addactiontype` (
  `ADD_ACTION_ID` bigint(19) NOT NULL default '0',
  `MATCH_RELEV_TP_CD` bigint(19) default NULL,
  `SUSP_REASON_TP_CD` bigint(19) default NULL,
  `ORG_TP_CD` bigint(19) default NULL,
  `PERSON_ORG_CODE` char(1) default NULL,
  `ADD_ACTION_CODE` char(2) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `SUSPECT_TP_CD` bigint(19) default NULL,
  PRIMARY KEY  (`ADD_ACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addactiontype`
--

/*!40000 ALTER TABLE `addactiontype` DISABLE KEYS */;
/*!40000 ALTER TABLE `addactiontype` ENABLE KEYS */;


--
-- Definition of table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `ADDRESS_ID` bigint(19) NOT NULL default '0',
  `COUNTRY_TP_CD` bigint(19) default NULL,
  `RESIDENCE_TP_CD` bigint(19) default NULL,
  `PROV_STATE_TP_CD` bigint(19) default NULL,
  `ADDR_LINE_ONE` varchar(50) default NULL,
  `P_ADDR_LINE_ONE` char(8) default NULL,
  `ADDR_LINE_TWO` varchar(50) default NULL,
  `P_ADDR_LINE_TWO` char(8) default NULL,
  `ADDR_LINE_THREE` varchar(50) default NULL,
  `P_ADDR_LINE_THREE` char(8) default NULL,
  `CITY_NAME` varchar(50) default NULL,
  `POSTAL_CODE` varchar(20) default NULL,
  `ADDR_STANDARD_IND` char(1) default NULL,
  `OVERRIDE_IND` char(1) default NULL,
  `RESIDENCE_NUM` varchar(10) default NULL,
  `COUNTY_CODE` char(3) default NULL,
  `LATITUDE_DEGREES` varchar(10) default NULL,
  `LONGITUDE_DEGREES` varchar(10) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `POSTAL_BARCODE` varchar(30) default NULL,
  `P_CITY` varchar(20) default NULL,
  PRIMARY KEY  (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;


--
-- Definition of table `addressgroup`
--

DROP TABLE IF EXISTS `addressgroup`;
CREATE TABLE `addressgroup` (
  `LOCATION_GROUP_ID` bigint(19) NOT NULL default '0',
  `ADDRESS_ID` bigint(19) default NULL,
  `CARE_OF_DESC` varchar(50) default NULL,
  `ADDR_USAGE_TP_CD` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`LOCATION_GROUP_ID`),
  KEY `ADDRESS_ID` (`ADDRESS_ID`),
  CONSTRAINT `addressgroup_ibfk_1` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `address` (`ADDRESS_ID`),
  CONSTRAINT `addressgroup_ibfk_2` FOREIGN KEY (`LOCATION_GROUP_ID`) REFERENCES `locationgroup` (`LOCATION_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addressgroup`
--

/*!40000 ALTER TABLE `addressgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `addressgroup` ENABLE KEYS */;


--
-- Definition of table `alert`
--

DROP TABLE IF EXISTS `alert`;
CREATE TABLE `alert` (
  `ALERT_ID` bigint(19) NOT NULL default '0',
  `ENTITY_NAME` varchar(20) default NULL,
  `INSTANCE_PK` bigint(19) default NULL,
  `REMOVED_BY_USER` varchar(20) default NULL,
  `CREATED_BY_USER` varchar(20) default NULL,
  `ALERT_TP_CD` bigint(19) default NULL,
  `ALERT_SEV_TP_CD` bigint(19) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `DESCRIPTION` varchar(1000) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`ALERT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `alert`
--

/*!40000 ALTER TABLE `alert` DISABLE KEYS */;
/*!40000 ALTER TABLE `alert` ENABLE KEYS */;


--
-- Definition of table `appdeployment`
--

DROP TABLE IF EXISTS `appdeployment`;
CREATE TABLE `appdeployment` (
  `DEPLOYMENT_ID` bigint(19) NOT NULL default '0',
  `APPLICATION_ID` bigint(19) default NULL,
  `NAME` varchar(50) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`DEPLOYMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appdeployment`
--

/*!40000 ALTER TABLE `appdeployment` DISABLE KEYS */;
/*!40000 ALTER TABLE `appdeployment` ENABLE KEYS */;


--
-- Definition of table `appinstance`
--

DROP TABLE IF EXISTS `appinstance`;
CREATE TABLE `appinstance` (
  `INSTANCE_ID` bigint(19) NOT NULL default '0',
  `DEPLOYMENT_ID` bigint(19) default NULL,
  `NAME` varchar(50) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`INSTANCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appinstance`
--

/*!40000 ALTER TABLE `appinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `appinstance` ENABLE KEYS */;


--
-- Definition of table `appsoftware`
--

DROP TABLE IF EXISTS `appsoftware`;
CREATE TABLE `appsoftware` (
  `APPLICATION_ID` bigint(19) NOT NULL default '0',
  `NAME` varchar(50) default NULL,
  `VERSION` varchar(20) default NULL,
  `CONFIG_SCHEMA` mediumtext,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`APPLICATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appsoftware`
--

/*!40000 ALTER TABLE `appsoftware` DISABLE KEYS */;
/*!40000 ALTER TABLE `appsoftware` ENABLE KEYS */;


--
-- Definition of table `associatedattrib`
--

DROP TABLE IF EXISTS `associatedattrib`;
CREATE TABLE `associatedattrib` (
  `ASSOC_ATTRIB_ID` bigint(19) NOT NULL default '0',
  `ASSOC_OBJ_ID` bigint(19) default NULL,
  `INSTANCE_VALUE` varchar(100) default NULL,
  `APPLICATION` varchar(50) default NULL,
  `GROUP_NAME` varchar(50) default NULL,
  `ELEMENT_NAME` varchar(50) default NULL,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `EXPIRY_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ASSOC_ATTRIB_ID`),
  KEY `associatedattrib_ibfk_1` USING BTREE (`ASSOC_OBJ_ID`),
  KEY `associatedattrib_ibfk_2` USING BTREE (`APPLICATION`,`GROUP_NAME`,`ELEMENT_NAME`),
  CONSTRAINT `associatedattrib_ibfk_1` FOREIGN KEY (`ASSOC_OBJ_ID`) REFERENCES `associatedobject` (`ASSOC_OBJ_ID`),
  CONSTRAINT `associatedattrib_ibfk_2` FOREIGN KEY (`APPLICATION`, `GROUP_NAME`, `ELEMENT_NAME`) REFERENCES `v_element` (`APPLICATION`, `GROUP_NAME`, `ELEMENT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `associatedattrib`
--

/*!40000 ALTER TABLE `associatedattrib` DISABLE KEYS */;
/*!40000 ALTER TABLE `associatedattrib` ENABLE KEYS */;


--
-- Definition of table `associatedobject`
--

DROP TABLE IF EXISTS `associatedobject`;
CREATE TABLE `associatedobject` (
  `ASSOC_OBJ_ID` bigint(19) NOT NULL default '0',
  `DATA_ASSOC_ID` bigint(19) default NULL,
  `APPLICATION` varchar(50) default NULL,
  `GROUP_NAME` varchar(50) default NULL,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `EXPIRY_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ASSOC_OBJ_ID`),
  KEY `associatedobject_ibfk_1` USING BTREE (`DATA_ASSOC_ID`),
  KEY `associatedobject_ibfk_2` USING BTREE (`APPLICATION`,`GROUP_NAME`),
  CONSTRAINT `associatedobject_ibfk_1` FOREIGN KEY (`DATA_ASSOC_ID`) REFERENCES `dataassociation` (`DATA_ASSOC_ID`),
  CONSTRAINT `associatedobject_ibfk_2` FOREIGN KEY (`APPLICATION`, `GROUP_NAME`) REFERENCES `v_group` (`APPLICATION`, `GROUP_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `associatedobject`
--

/*!40000 ALTER TABLE `associatedobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `associatedobject` ENABLE KEYS */;


--
-- Definition of table `bankaccount`
--

DROP TABLE IF EXISTS `bankaccount`;
CREATE TABLE `bankaccount` (
  `PAYMENT_SOURCE_ID` bigint(19) NOT NULL default '0',
  `ACCT_TP_CD` bigint(19) default NULL,
  `ACCT_NUM` varchar(30) default NULL,
  `RECORDED_OPEN_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `RECORDED_CLOSED_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `BRANCH_NUM` varchar(10) default NULL,
  `BANK_NUM` varchar(10) default NULL,
  `DEPOSITOR_NAME` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`PAYMENT_SOURCE_ID`),
  CONSTRAINT `bankaccount_ibfk_1` FOREIGN KEY (`PAYMENT_SOURCE_ID`) REFERENCES `paymentsource` (`PAYMENT_SOURCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bankaccount`
--

/*!40000 ALTER TABLE `bankaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `bankaccount` ENABLE KEYS */;


--
-- Definition of table `billingsummary`
--

DROP TABLE IF EXISTS `billingsummary`;
CREATE TABLE `billingsummary` (
  `BILLING_SUMMARY_ID` bigint(19) NOT NULL default '0',
  `BILLING_ST_TP_CD` bigint(19) default NULL,
  `PYMT_MTHD_TP_CD` bigint(19) default NULL,
  `LAST_PY_MD_TP_CD` bigint(19) default NULL,
  `EFFECTIVE_DATE` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `DUE_DATE` timestamp NOT NULL default '0000-00-00 00:00:00',
  `ACCOUNT_BALANCE` decimal(17,0) default NULL,
  `MIN_PAYMENT` decimal(17,0) default NULL,
  `MAX_PAYMENT` decimal(17,0) default NULL,
  `PAID_TO_DATE` timestamp NOT NULL default '0000-00-00 00:00:00',
  `INVOICE_ID` varchar(50) default NULL,
  `BILL_FROM_DATE` timestamp NOT NULL default '0000-00-00 00:00:00',
  `BILL_TO_DATE` timestamp NOT NULL default '0000-00-00 00:00:00',
  `ACCOUNT_ID` varchar(50) default NULL,
  `PAYMENT_SOURCE_ID` bigint(19) default NULL,
  `WITHDRAWAL_DATE` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_PAYMENT_AMT` decimal(17,0) default NULL,
  `LAST_PAYMENT_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `PAYMENTS_REMAINING` int(10) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `FREQ_MODE_TP_CD` bigint(19) default NULL,
  `CONTRACT_ID` bigint(19) default NULL,
  `CONTR_COMPONENT_ID` bigint(19) default NULL,
  `ACCBALA_CUR_TP` bigint(19) default NULL,
  `MINPAYM_CUR_TP` bigint(19) default NULL,
  `MAXPAYM_CUR_TP` bigint(19) default NULL,
  `LASTPAY_CUR_TP` bigint(19) default NULL,
  PRIMARY KEY  (`BILLING_SUMMARY_ID`),
  KEY `CONTRACT_ID` (`CONTRACT_ID`),
  KEY `CONTR_COMPONENT_ID` (`CONTR_COMPONENT_ID`),
  KEY `PAYMENT_SOURCE_ID` (`PAYMENT_SOURCE_ID`),
  CONSTRAINT `billingsummary_ibfk_1` FOREIGN KEY (`CONTRACT_ID`) REFERENCES `contract` (`CONTRACT_ID`),
  CONSTRAINT `billingsummary_ibfk_2` FOREIGN KEY (`CONTR_COMPONENT_ID`) REFERENCES `contractcomponent` (`CONTR_COMPONENT_ID`),
  CONSTRAINT `billingsummary_ibfk_3` FOREIGN KEY (`PAYMENT_SOURCE_ID`) REFERENCES `paymentsource` (`PAYMENT_SOURCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `billingsummary`
--

/*!40000 ALTER TABLE `billingsummary` DISABLE KEYS */;
/*!40000 ALTER TABLE `billingsummary` ENABLE KEYS */;


--
-- Definition of table `binarycontentblock_metadataitem_reffrom_metadataitem4d33da06`
--

DROP TABLE IF EXISTS `binarycontentblock_metadataitem_reffrom_metadataitem4d33da06`;
CREATE TABLE `binarycontentblock_metadataitem_reffrom_metadataitem4d33da06` (
  `METADATAITEM_XMETA` varchar(64) default NULL,
  `REFFROM_METADATAITEM_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `binarycontentblock_metadataitem_reffrom_metadataitem4d33da06`
--

/*!40000 ALTER TABLE `binarycontentblock_metadataitem_reffrom_metadataitem4d33da06` DISABLE KEYS */;
/*!40000 ALTER TABLE `binarycontentblock_metadataitem_reffrom_metadataitem4d33da06` ENABLE KEYS */;


--
-- Definition of table `businesstxreqresp`
--

DROP TABLE IF EXISTS `businesstxreqresp`;
CREATE TABLE `businesstxreqresp` (
  `BUSTX_REQRESP_ID` bigint(19) NOT NULL default '0',
  `BUSINESS_TX_TP_CD` bigint(19) default NULL,
  `APPLICATION` varchar(50) default NULL,
  `GROUP_NAME` varchar(50) default NULL,
  `REQ_RESP_IND` char(1) default NULL,
  `TX_PARAM_TP_CD` bigint(19) default NULL,
  `PARAM_NAME` varchar(50) default NULL,
  `PARAM_ORDER` smallint(5) default NULL,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `COLLECTION_IND` char(1) default NULL,
  PRIMARY KEY  (`BUSTX_REQRESP_ID`),
  KEY `businesstxreqresp_ibfk_1` USING BTREE (`BUSINESS_TX_TP_CD`),
  KEY `businesstxreqresp_ibfk_2` USING BTREE (`TX_PARAM_TP_CD`),
  KEY `businesstxreqresp_ibfk_3` USING BTREE (`APPLICATION`,`GROUP_NAME`),
  CONSTRAINT `businesstxreqresp_ibfk_1` FOREIGN KEY (`BUSINESS_TX_TP_CD`) REFERENCES `cdbusinesstxtp` (`BUSINESS_TX_TP_CD`),
  CONSTRAINT `businesstxreqresp_ibfk_2` FOREIGN KEY (`TX_PARAM_TP_CD`) REFERENCES `cdtxparamtp` (`TX_PARAM_TP_CD`),
  CONSTRAINT `businesstxreqresp_ibfk_3` FOREIGN KEY (`APPLICATION`, `GROUP_NAME`) REFERENCES `v_group` (`APPLICATION`, `GROUP_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `businesstxreqresp`
--

/*!40000 ALTER TABLE `businesstxreqresp` DISABLE KEYS */;
/*!40000 ALTER TABLE `businesstxreqresp` ENABLE KEYS */;


--
-- Definition of table `businternaltxn`
--

DROP TABLE IF EXISTS `businternaltxn`;
CREATE TABLE `businternaltxn` (
  `BUS_INTERN_TXN_ID` bigint(19) NOT NULL default '0',
  `BUSINESS_TX_TP_CD` bigint(19) default NULL,
  `INTERNAL_BUS_TX_TP` bigint(19) default NULL,
  `INT_TX_LOG_IND` char(1) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`BUS_INTERN_TXN_ID`),
  KEY `BUSINESS_TX_TP_CD` (`BUSINESS_TX_TP_CD`),
  KEY `INTERNAL_BUS_TX_TP` (`INTERNAL_BUS_TX_TP`),
  CONSTRAINT `businternaltxn_ibfk_1` FOREIGN KEY (`BUSINESS_TX_TP_CD`) REFERENCES `cdbusinesstxtp` (`BUSINESS_TX_TP_CD`),
  CONSTRAINT `businternaltxn_ibfk_2` FOREIGN KEY (`INTERNAL_BUS_TX_TP`) REFERENCES `cdinternaltxntp` (`INTERNAL_BUS_TX_TP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `businternaltxn`
--

/*!40000 ALTER TABLE `businternaltxn` DISABLE KEYS */;
/*!40000 ALTER TABLE `businternaltxn` ENABLE KEYS */;


--
-- Definition of table `cachingservice`
--

DROP TABLE IF EXISTS `cachingservice`;
CREATE TABLE `cachingservice` (
  `CACHE_ID` varchar(255) NOT NULL default '',
  `OBJ_ID` varchar(255) NOT NULL default '',
  `C_OBJECT` mediumblob,
  PRIMARY KEY  (`CACHE_ID`,`OBJ_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cachingservice`
--

/*!40000 ALTER TABLE `cachingservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `cachingservice` ENABLE KEYS */;


--
-- Definition of table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
CREATE TABLE `campaign` (
  `CAMPAIGN_ID` bigint(19) NOT NULL default '0',
  `PRIORITY_TP_CD` bigint(19) default NULL,
  `CAMPAIGN_TP_CD` bigint(19) default NULL,
  `CAMPAIGN_SOURCE` varchar(100) default NULL,
  `NAME` varchar(30) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `CREATED_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `START_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`CAMPAIGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `campaign`
--

/*!40000 ALTER TABLE `campaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign` ENABLE KEYS */;


--
-- Definition of table `campaignassociat`
--

DROP TABLE IF EXISTS `campaignassociat`;
CREATE TABLE `campaignassociat` (
  `CAMPAIGNASSOC_ID` bigint(19) NOT NULL default '0',
  `ENTITY_NAME` varchar(20) default NULL,
  `INSTANCE_PK` bigint(19) default NULL,
  `CAMPAIGN_ID` bigint(19) default NULL,
  `ASSOCIATE_IND` char(1) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`CAMPAIGNASSOC_ID`),
  KEY `CAMPAIGN_ID` (`CAMPAIGN_ID`),
  CONSTRAINT `campaignassociat_ibfk_1` FOREIGN KEY (`CAMPAIGN_ID`) REFERENCES `campaign` (`CAMPAIGN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `campaignassociat`
--

/*!40000 ALTER TABLE `campaignassociat` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaignassociat` ENABLE KEYS */;


--
-- Definition of table `cdaccessorkeytp`
--

DROP TABLE IF EXISTS `cdaccessorkeytp`;
CREATE TABLE `cdaccessorkeytp` (
  `ACCESSOR_KEY_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ACCESSOR_KEY_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdaccessorkeytp`
--

/*!40000 ALTER TABLE `cdaccessorkeytp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdaccessorkeytp` ENABLE KEYS */;


--
-- Definition of table `cdaccessortp`
--

DROP TABLE IF EXISTS `cdaccessortp`;
CREATE TABLE `cdaccessortp` (
  `ACCESSOR_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ACCESSOR_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdaccessortp`
--

/*!40000 ALTER TABLE `cdaccessortp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdaccessortp` ENABLE KEYS */;


--
-- Definition of table `cdaccetocomptp`
--

DROP TABLE IF EXISTS `cdaccetocomptp`;
CREATE TABLE `cdaccetocomptp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `ACCE_COMP_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`ACCE_COMP_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdaccetocomptp`
--

/*!40000 ALTER TABLE `cdaccetocomptp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdaccetocomptp` ENABLE KEYS */;


--
-- Definition of table `cdaccounttp`
--

DROP TABLE IF EXISTS `cdaccounttp`;
CREATE TABLE `cdaccounttp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `ACCT_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`ACCT_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdaccounttp`
--

/*!40000 ALTER TABLE `cdaccounttp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdaccounttp` ENABLE KEYS */;


--
-- Definition of table `cdactionadjreastp`
--

DROP TABLE IF EXISTS `cdactionadjreastp`;
CREATE TABLE `cdactionadjreastp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `ADJ_ACTION_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`ADJ_ACTION_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdactionadjreastp`
--

/*!40000 ALTER TABLE `cdactionadjreastp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdactionadjreastp` ENABLE KEYS */;


--
-- Definition of table `cdaddrusagetp`
--

DROP TABLE IF EXISTS `cdaddrusagetp`;
CREATE TABLE `cdaddrusagetp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `ADDR_USAGE_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`ADDR_USAGE_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdaddrusagetp`
--

/*!40000 ALTER TABLE `cdaddrusagetp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdaddrusagetp` ENABLE KEYS */;


--
-- Definition of table `cdadminfldnmtp`
--

DROP TABLE IF EXISTS `cdadminfldnmtp`;
CREATE TABLE `cdadminfldnmtp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `ADMIN_FLD_NM_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `ADMIN_SYS_TP_CD` bigint(19) default NULL,
  `SIZE_NUM` decimal(2,0) default NULL,
  `DATATYPE_NAME` varchar(40) default NULL,
  `DISPLAYED_IND` char(1) default NULL,
  `PRESENT_SEQ_NUM` smallint(5) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`ADMIN_FLD_NM_TP_CD`),
  KEY `cdadminfldnmtp_ibfk_1` USING BTREE (`LANG_TP_CD`,`ADMIN_SYS_TP_CD`),
  CONSTRAINT `cdadminfldnmtp_ibfk_1` FOREIGN KEY (`LANG_TP_CD`, `ADMIN_SYS_TP_CD`) REFERENCES `cdadminsystp` (`LANG_TP_CD`, `ADMIN_SYS_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdadminfldnmtp`
--

/*!40000 ALTER TABLE `cdadminfldnmtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdadminfldnmtp` ENABLE KEYS */;


--
-- Definition of table `cdadminsystp`
--

DROP TABLE IF EXISTS `cdadminsystp`;
CREATE TABLE `cdadminsystp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `ADMIN_SYS_TP_CD` bigint(19) NOT NULL default '0',
  `NATIVE_KEY_TOT` smallint(5) default NULL,
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`ADMIN_SYS_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdadminsystp`
--

/*!40000 ALTER TABLE `cdadminsystp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdadminsystp` ENABLE KEYS */;


--
-- Definition of table `cdageverdoctp`
--

DROP TABLE IF EXISTS `cdageverdoctp`;
CREATE TABLE `cdageverdoctp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `AGE_VER_DOC_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`AGE_VER_DOC_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdageverdoctp`
--

/*!40000 ALTER TABLE `cdageverdoctp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdageverdoctp` ENABLE KEYS */;


--
-- Definition of table `cdalertcat`
--

DROP TABLE IF EXISTS `cdalertcat`;
CREATE TABLE `cdalertcat` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `ALERT_CAT_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`ALERT_CAT_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdalertcat`
--

/*!40000 ALTER TABLE `cdalertcat` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdalertcat` ENABLE KEYS */;


--
-- Definition of table `cdalertsevtp`
--

DROP TABLE IF EXISTS `cdalertsevtp`;
CREATE TABLE `cdalertsevtp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `ALERT_SEV_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`ALERT_SEV_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdalertsevtp`
--

/*!40000 ALTER TABLE `cdalertsevtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdalertsevtp` ENABLE KEYS */;


--
-- Definition of table `cdalerttp`
--

DROP TABLE IF EXISTS `cdalerttp`;
CREATE TABLE `cdalerttp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `ALERT_TP_CD` bigint(19) NOT NULL default '0',
  `ALERT_CAT_CD` bigint(19) default NULL,
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`ALERT_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdalerttp`
--

/*!40000 ALTER TABLE `cdalerttp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdalerttp` ENABLE KEYS */;


--
-- Definition of table `cdarrangementtp`
--

DROP TABLE IF EXISTS `cdarrangementtp`;
CREATE TABLE `cdarrangementtp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `ARRANGEMENT_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`ARRANGEMENT_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdarrangementtp`
--

/*!40000 ALTER TABLE `cdarrangementtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdarrangementtp` ENABLE KEYS */;


--
-- Definition of table `cdassertruletp`
--

DROP TABLE IF EXISTS `cdassertruletp`;
CREATE TABLE `cdassertruletp` (
  `ASSERT_RULE_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ASSERT_RULE_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdassertruletp`
--

/*!40000 ALTER TABLE `cdassertruletp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdassertruletp` ENABLE KEYS */;


--
-- Definition of table `cdattributetp`
--

DROP TABLE IF EXISTS `cdattributetp`;
CREATE TABLE `cdattributetp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `ATTRIBUTE_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`ATTRIBUTE_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdattributetp`
--

/*!40000 ALTER TABLE `cdattributetp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdattributetp` ENABLE KEYS */;


--
-- Definition of table `cdbillingsttp`
--

DROP TABLE IF EXISTS `cdbillingsttp`;
CREATE TABLE `cdbillingsttp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `BILLING_ST_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`BILLING_ST_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdbillingsttp`
--

/*!40000 ALTER TABLE `cdbillingsttp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdbillingsttp` ENABLE KEYS */;


--
-- Definition of table `cdbilltp`
--

DROP TABLE IF EXISTS `cdbilltp`;
CREATE TABLE `cdbilltp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `BILL_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`BILL_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdbilltp`
--

/*!40000 ALTER TABLE `cdbilltp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdbilltp` ENABLE KEYS */;


--
-- Definition of table `cdbusinesstxtp`
--

DROP TABLE IF EXISTS `cdbusinesstxtp`;
CREATE TABLE `cdbusinesstxtp` (
  `BUSINESS_TX_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(50) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `TX_LOG_IND` char(1) default NULL,
  `TX_OBJECT_TP` char(1) default NULL,
  `DEPRECATED_SINCE` varchar(20) default NULL,
  `DWL_PROD_TP_CD` bigint(19) default NULL,
  PRIMARY KEY  (`BUSINESS_TX_TP_CD`),
  KEY `DWL_PROD_TP_CD` (`DWL_PROD_TP_CD`),
  CONSTRAINT `cdbusinesstxtp_ibfk_1` FOREIGN KEY (`DWL_PROD_TP_CD`) REFERENCES `cddwlproducttp` (`DWL_PROD_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdbusinesstxtp`
--

/*!40000 ALTER TABLE `cdbusinesstxtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdbusinesstxtp` ENABLE KEYS */;


--
-- Definition of table `cdbuysellagreetp`
--

DROP TABLE IF EXISTS `cdbuysellagreetp`;
CREATE TABLE `cdbuysellagreetp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `BUY_SELL_AGR_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`BUY_SELL_AGR_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdbuysellagreetp`
--

/*!40000 ALTER TABLE `cdbuysellagreetp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdbuysellagreetp` ENABLE KEYS */;


--
-- Definition of table `cdcampaigntp`
--

DROP TABLE IF EXISTS `cdcampaigntp`;
CREATE TABLE `cdcampaigntp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `CAMPAIGN_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`CAMPAIGN_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdcampaigntp`
--

/*!40000 ALTER TABLE `cdcampaigntp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdcampaigntp` ENABLE KEYS */;


--
-- Definition of table `cdcardinalitytp`
--

DROP TABLE IF EXISTS `cdcardinalitytp`;
CREATE TABLE `cdcardinalitytp` (
  `CARDINALITY_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(200) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`CARDINALITY_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdcardinalitytp`
--

/*!40000 ALTER TABLE `cdcardinalitytp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdcardinalitytp` ENABLE KEYS */;


--
-- Definition of table `cdcdcrejreasontp`
--

DROP TABLE IF EXISTS `cdcdcrejreasontp`;
CREATE TABLE `cdcdcrejreasontp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `REJ_REASON_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`REJ_REASON_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdcdcrejreasontp`
--

/*!40000 ALTER TABLE `cdcdcrejreasontp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdcdcrejreasontp` ENABLE KEYS */;


--
-- Definition of table `cdcdcsttp`
--

DROP TABLE IF EXISTS `cdcdcsttp`;
CREATE TABLE `cdcdcsttp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `CDC_ST_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`CDC_ST_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdcdcsttp`
--

/*!40000 ALTER TABLE `cdcdcsttp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdcdcsttp` ENABLE KEYS */;


--
-- Definition of table `cdchargecardtp`
--

DROP TABLE IF EXISTS `cdchargecardtp`;
CREATE TABLE `cdchargecardtp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `CHARGE_CARD_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`CHARGE_CARD_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdchargecardtp`
--

/*!40000 ALTER TABLE `cdchargecardtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdchargecardtp` ENABLE KEYS */;


--
-- Definition of table `cdclaimroletp`
--

DROP TABLE IF EXISTS `cdclaimroletp`;
CREATE TABLE `cdclaimroletp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `CLAIM_ROLE_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`CLAIM_ROLE_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdclaimroletp`
--

/*!40000 ALTER TABLE `cdclaimroletp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdclaimroletp` ENABLE KEYS */;


--
-- Definition of table `cdclaimstatustp`
--

DROP TABLE IF EXISTS `cdclaimstatustp`;
CREATE TABLE `cdclaimstatustp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `CLAIM_STATUS_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`CLAIM_STATUS_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdclaimstatustp`
--

/*!40000 ALTER TABLE `cdclaimstatustp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdclaimstatustp` ENABLE KEYS */;


--
-- Definition of table `cdclaimtp`
--

DROP TABLE IF EXISTS `cdclaimtp`;
CREATE TABLE `cdclaimtp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `CLAIM_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`CLAIM_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdclaimtp`
--

/*!40000 ALTER TABLE `cdclaimtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdclaimtp` ENABLE KEYS */;


--
-- Definition of table `cdclientimptp`
--

DROP TABLE IF EXISTS `cdclientimptp`;
CREATE TABLE `cdclientimptp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `CLIENT_IMP_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`CLIENT_IMP_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdclientimptp`
--

/*!40000 ALTER TABLE `cdclientimptp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdclientimptp` ENABLE KEYS */;


--
-- Definition of table `cdclientpotentp`
--

DROP TABLE IF EXISTS `cdclientpotentp`;
CREATE TABLE `cdclientpotentp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `CLIENT_POTEN_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`CLIENT_POTEN_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdclientpotentp`
--

/*!40000 ALTER TABLE `cdclientpotentp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdclientpotentp` ENABLE KEYS */;


--
-- Definition of table `cdclientsttp`
--

DROP TABLE IF EXISTS `cdclientsttp`;
CREATE TABLE `cdclientsttp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `CLIENT_ST_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`CLIENT_ST_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdclientsttp`
--

/*!40000 ALTER TABLE `cdclientsttp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdclientsttp` ENABLE KEYS */;


--
-- Definition of table `cdcompoptp`
--

DROP TABLE IF EXISTS `cdcompoptp`;
CREATE TABLE `cdcompoptp` (
  `COMP_OP_TP_CD` bigint(19) NOT NULL default '0',
  `OPERATOR` varchar(32) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`COMP_OP_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdcompoptp`
--

/*!40000 ALTER TABLE `cdcompoptp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdcompoptp` ENABLE KEYS */;


--
-- Definition of table `cdconditiontp`
--

DROP TABLE IF EXISTS `cdconditiontp`;
CREATE TABLE `cdconditiontp` (
  `CONDITION_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(100) default NULL,
  `UI_FREEFORM_IND` char(1) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`CONDITION_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdconditiontp`
--

/*!40000 ALTER TABLE `cdconditiontp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdconditiontp` ENABLE KEYS */;


--
-- Definition of table `cdconditionvaltp`
--

DROP TABLE IF EXISTS `cdconditionvaltp`;
CREATE TABLE `cdconditionvaltp` (
  `COND_VAL_TP_CD` bigint(19) NOT NULL default '0',
  `CONDITION_TP_CD` bigint(19) default NULL,
  `NAME` varchar(100) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`COND_VAL_TP_CD`),
  KEY `CONDITION_TP_CD` (`CONDITION_TP_CD`),
  CONSTRAINT `cdconditionvaltp_ibfk_1` FOREIGN KEY (`CONDITION_TP_CD`) REFERENCES `cdconditiontp` (`CONDITION_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdconditionvaltp`
--

/*!40000 ALTER TABLE `cdconditionvaltp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdconditionvaltp` ENABLE KEYS */;


--
-- Definition of table `cdconfigfeaturetp`
--

DROP TABLE IF EXISTS `cdconfigfeaturetp`;
CREATE TABLE `cdconfigfeaturetp` (
  `FEATURE_VALUE` varchar(100) NOT NULL default '',
  `COMMENTS_DESC` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`FEATURE_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdconfigfeaturetp`
--

/*!40000 ALTER TABLE `cdconfigfeaturetp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdconfigfeaturetp` ENABLE KEYS */;


--
-- Definition of table `cdconfigoptiontp`
--

DROP TABLE IF EXISTS `cdconfigoptiontp`;
CREATE TABLE `cdconfigoptiontp` (
  `OPTION_VALUE` varchar(20) NOT NULL default '',
  `COMMENTS_DESC` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`OPTION_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdconfigoptiontp`
--

/*!40000 ALTER TABLE `cdconfigoptiontp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdconfigoptiontp` ENABLE KEYS */;


--
-- Definition of table `cdconstrainttp`
--

DROP TABLE IF EXISTS `cdconstrainttp`;
CREATE TABLE `cdconstrainttp` (
  `CONSTRAINT_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`CONSTRAINT_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdconstrainttp`
--

/*!40000 ALTER TABLE `cdconstrainttp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdconstrainttp` ENABLE KEYS */;


--
-- Definition of table `cdcontmethcat`
--

DROP TABLE IF EXISTS `cdcontmethcat`;
CREATE TABLE `cdcontmethcat` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `CONT_METH_CAT_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`CONT_METH_CAT_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdcontmethcat`
--

/*!40000 ALTER TABLE `cdcontmethcat` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdcontmethcat` ENABLE KEYS */;


--
-- Definition of table `cdcontmethtp`
--

DROP TABLE IF EXISTS `cdcontmethtp`;
CREATE TABLE `cdcontmethtp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `CONT_METH_TP_CD` bigint(19) NOT NULL default '0',
  `CONT_METH_CAT_CD` bigint(19) default NULL,
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`CONT_METH_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdcontmethtp`
--

/*!40000 ALTER TABLE `cdcontmethtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdcontmethtp` ENABLE KEYS */;


--
-- Definition of table `cdcontractrelsttp`
--

DROP TABLE IF EXISTS `cdcontractrelsttp`;
CREATE TABLE `cdcontractrelsttp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `CONTR_REL_ST_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`CONTR_REL_ST_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdcontractrelsttp`
--

/*!40000 ALTER TABLE `cdcontractrelsttp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdcontractrelsttp` ENABLE KEYS */;


--
-- Definition of table `cdcontractreltp`
--

DROP TABLE IF EXISTS `cdcontractreltp`;
CREATE TABLE `cdcontractreltp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `CONTR_REL_TP_CD` bigint(19) NOT NULL default '0',
  `TO_FROM_NAME` varchar(120) default NULL,
  `FROM_TO_NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`CONTR_REL_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdcontractreltp`
--

/*!40000 ALTER TABLE `cdcontractreltp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdcontractreltp` ENABLE KEYS */;


--
-- Definition of table `cdcontractroletp`
--

DROP TABLE IF EXISTS `cdcontractroletp`;
CREATE TABLE `cdcontractroletp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `CONTR_ROLE_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`CONTR_ROLE_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdcontractroletp`
--

/*!40000 ALTER TABLE `cdcontractroletp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdcontractroletp` ENABLE KEYS */;


--
-- Definition of table `cdcontractsttp`
--

DROP TABLE IF EXISTS `cdcontractsttp`;
CREATE TABLE `cdcontractsttp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `CONTRACT_ST_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`CONTRACT_ST_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdcontractsttp`
--

/*!40000 ALTER TABLE `cdcontractsttp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdcontractsttp` ENABLE KEYS */;


--
-- Definition of table `cdcontrcomptp`
--

DROP TABLE IF EXISTS `cdcontrcomptp`;
CREATE TABLE `cdcontrcomptp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `CONTR_COMP_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`CONTR_COMP_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdcontrcomptp`
--

/*!40000 ALTER TABLE `cdcontrcomptp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdcontrcomptp` ENABLE KEYS */;


--
-- Definition of table `cdcountrytp`
--

DROP TABLE IF EXISTS `cdcountrytp`;
CREATE TABLE `cdcountrytp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `COUNTRY_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`COUNTRY_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdcountrytp`
--

/*!40000 ALTER TABLE `cdcountrytp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdcountrytp` ENABLE KEYS */;


--
-- Definition of table `cdcurrencytp`
--

DROP TABLE IF EXISTS `cdcurrencytp`;
CREATE TABLE `cdcurrencytp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `CURRENCY_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `CURRENCY_CODE` char(3) default NULL,
  PRIMARY KEY  (`LANG_TP_CD`,`CURRENCY_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdcurrencytp`
--

/*!40000 ALTER TABLE `cdcurrencytp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdcurrencytp` ENABLE KEYS */;


--
-- Definition of table `cddataactiontp`
--

DROP TABLE IF EXISTS `cddataactiontp`;
CREATE TABLE `cddataactiontp` (
  `DATA_ACTION_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`DATA_ACTION_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cddataactiontp`
--

/*!40000 ALTER TABLE `cddataactiontp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cddataactiontp` ENABLE KEYS */;


--
-- Definition of table `cddomaintp`
--

DROP TABLE IF EXISTS `cddomaintp`;
CREATE TABLE `cddomaintp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `DOMAIN_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`DOMAIN_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cddomaintp`
--

/*!40000 ALTER TABLE `cddomaintp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cddomaintp` ENABLE KEYS */;


--
-- Definition of table `cddomainvaluetp`
--

DROP TABLE IF EXISTS `cddomainvaluetp`;
CREATE TABLE `cddomainvaluetp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `DOMAIN_VALUE_TP_CD` bigint(19) NOT NULL default '0',
  `PROD_TP_CD` bigint(19) default NULL,
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `DOMAIN_TP_CD` bigint(19) default NULL,
  `PRECISION_VALUE` smallint(5) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`DOMAIN_VALUE_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cddomainvaluetp`
--

/*!40000 ALTER TABLE `cddomainvaluetp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cddomainvaluetp` ENABLE KEYS */;


--
-- Definition of table `cddwlcolumntp`
--

DROP TABLE IF EXISTS `cddwlcolumntp`;
CREATE TABLE `cddwlcolumntp` (
  `DWLCOLUMN_TP_CD` bigint(19) NOT NULL default '0',
  `DWLTABLE_TP_CD` bigint(19) default NULL,
  `COLUMN_NAME` varchar(18) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `DESCRIPTION` varchar(255) default NULL,
  `LOCALE_SENSITIVE` char(1) default NULL,
  PRIMARY KEY  (`DWLCOLUMN_TP_CD`),
  KEY `DWLTABLE_TP_CD` (`DWLTABLE_TP_CD`),
  CONSTRAINT `cddwlcolumntp_ibfk_1` FOREIGN KEY (`DWLTABLE_TP_CD`) REFERENCES `cddwltabletp` (`DWLTABLE_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cddwlcolumntp`
--

/*!40000 ALTER TABLE `cddwlcolumntp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cddwlcolumntp` ENABLE KEYS */;


--
-- Definition of table `cddwlproducttp`
--

DROP TABLE IF EXISTS `cddwlproducttp`;
CREATE TABLE `cddwlproducttp` (
  `DWL_PROD_TP_CD` bigint(19) NOT NULL default '0',
  `DWL_PROD_NAME` varchar(20) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`DWL_PROD_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cddwlproducttp`
--

/*!40000 ALTER TABLE `cddwlproducttp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cddwlproducttp` ENABLE KEYS */;


--
-- Definition of table `cddwltabletp`
--

DROP TABLE IF EXISTS `cddwltabletp`;
CREATE TABLE `cddwltabletp` (
  `DWLTABLE_TP_CD` bigint(19) NOT NULL default '0',
  `TABLE_NAME` varchar(50) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `EXPIRY_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `CODE_TYPE_IND` char(1) default NULL,
  `DWL_PROD_TP_CD` bigint(19) default NULL,
  PRIMARY KEY  (`DWLTABLE_TP_CD`),
  KEY `DWL_PROD_TP_CD` (`DWL_PROD_TP_CD`),
  CONSTRAINT `cddwltabletp_ibfk_1` FOREIGN KEY (`DWL_PROD_TP_CD`) REFERENCES `cddwlproducttp` (`DWL_PROD_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cddwltabletp`
--

/*!40000 ALTER TABLE `cddwltabletp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cddwltabletp` ENABLE KEYS */;


--
-- Definition of table `cdelementtp`
--

DROP TABLE IF EXISTS `cdelementtp`;
CREATE TABLE `cdelementtp` (
  `ELEMENT_TP_CD` int(10) NOT NULL default '0',
  `ELEMENT_TP_NAME` varchar(32) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ELEMENT_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdelementtp`
--

/*!40000 ALTER TABLE `cdelementtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdelementtp` ENABLE KEYS */;


--
-- Definition of table `cdendreasontp`
--

DROP TABLE IF EXISTS `cdendreasontp`;
CREATE TABLE `cdendreasontp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `END_REASON_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`END_REASON_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdendreasontp`
--

/*!40000 ALTER TABLE `cdendreasontp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdendreasontp` ENABLE KEYS */;


--
-- Definition of table `cderrmessagetp`
--

DROP TABLE IF EXISTS `cderrmessagetp`;
CREATE TABLE `cderrmessagetp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `ERR_MESSAGE_TP_CD` bigint(19) NOT NULL default '0',
  `ERR_MESSAGE` varchar(255) default NULL,
  `COMMENTS` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`LANG_TP_CD`,`ERR_MESSAGE_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cderrmessagetp`
--

/*!40000 ALTER TABLE `cderrmessagetp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cderrmessagetp` ENABLE KEYS */;


--
-- Definition of table `cderrseveritytp`
--

DROP TABLE IF EXISTS `cderrseveritytp`;
CREATE TABLE `cderrseveritytp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `ERR_SEVERITY_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`LANG_TP_CD`,`ERR_SEVERITY_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cderrseveritytp`
--

/*!40000 ALTER TABLE `cderrseveritytp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cderrseveritytp` ENABLE KEYS */;


--
-- Definition of table `cderrtypetp`
--

DROP TABLE IF EXISTS `cderrtypetp`;
CREATE TABLE `cderrtypetp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `ERR_TYPE_CD` varchar(10) NOT NULL default '',
  `ERR_TYPE_DESC` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`LANG_TP_CD`,`ERR_TYPE_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cderrtypetp`
--

/*!40000 ALTER TABLE `cderrtypetp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cderrtypetp` ENABLE KEYS */;


--
-- Definition of table `cdeventcat`
--

DROP TABLE IF EXISTS `cdeventcat`;
CREATE TABLE `cdeventcat` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `EVENT_CAT_CD` bigint(19) NOT NULL default '0',
  `CATEGORY_NAME` varchar(30) default NULL,
  `EVENT_HORIZON` bigint(19) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`LANG_TP_CD`,`EVENT_CAT_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdeventcat`
--

/*!40000 ALTER TABLE `cdeventcat` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdeventcat` ENABLE KEYS */;


--
-- Definition of table `cdeventdeftp`
--

DROP TABLE IF EXISTS `cdeventdeftp`;
CREATE TABLE `cdeventdeftp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `EVENTDEF_TP_CD` bigint(19) NOT NULL default '0',
  `EVENT_CAT_CD` bigint(19) default NULL,
  `EVENT_NAME` varchar(30) default NULL,
  `ENABLE_NOTIFY` char(1) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `DESCRIPTION` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`LANG_TP_CD`,`EVENTDEF_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdeventdeftp`
--

/*!40000 ALTER TABLE `cdeventdeftp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdeventdeftp` ENABLE KEYS */;


--
-- Definition of table `cdfailactiontp`
--

DROP TABLE IF EXISTS `cdfailactiontp`;
CREATE TABLE `cdfailactiontp` (
  `FAIL_ACTION_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`FAIL_ACTION_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdfailactiontp`
--

/*!40000 ALTER TABLE `cdfailactiontp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdfailactiontp` ENABLE KEYS */;


--
-- Definition of table `cdfreqmodetp`
--

DROP TABLE IF EXISTS `cdfreqmodetp`;
CREATE TABLE `cdfreqmodetp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `FREQ_MODE_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`FREQ_MODE_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdfreqmodetp`
--

/*!40000 ALTER TABLE `cdfreqmodetp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdfreqmodetp` ENABLE KEYS */;


--
-- Definition of table `cdgenerationtp`
--

DROP TABLE IF EXISTS `cdgenerationtp`;
CREATE TABLE `cdgenerationtp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `GENERATION_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`GENERATION_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdgenerationtp`
--

/*!40000 ALTER TABLE `cdgenerationtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdgenerationtp` ENABLE KEYS */;


--
-- Definition of table `cdgroupingcattp`
--

DROP TABLE IF EXISTS `cdgroupingcattp`;
CREATE TABLE `cdgroupingcattp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `GROUP_CAT_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`GROUP_CAT_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdgroupingcattp`
--

/*!40000 ALTER TABLE `cdgroupingcattp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdgroupingcattp` ENABLE KEYS */;


--
-- Definition of table `cdgroupingtp`
--

DROP TABLE IF EXISTS `cdgroupingtp`;
CREATE TABLE `cdgroupingtp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `GROUPING_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `GROUP_CAT_TP_CD` bigint(19) default NULL,
  PRIMARY KEY  (`LANG_TP_CD`,`GROUPING_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdgroupingtp`
--

/*!40000 ALTER TABLE `cdgroupingtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdgroupingtp` ENABLE KEYS */;


--
-- Definition of table `cdhierarchycattp`
--

DROP TABLE IF EXISTS `cdhierarchycattp`;
CREATE TABLE `cdhierarchycattp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `HIER_CAT_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`HIER_CAT_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdhierarchycattp`
--

/*!40000 ALTER TABLE `cdhierarchycattp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdhierarchycattp` ENABLE KEYS */;


--
-- Definition of table `cdhierarchytp`
--

DROP TABLE IF EXISTS `cdhierarchytp`;
CREATE TABLE `cdhierarchytp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `HIERARCHY_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `HIER_CAT_TP_CD` bigint(19) default NULL,
  PRIMARY KEY  (`LANG_TP_CD`,`HIERARCHY_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdhierarchytp`
--

/*!40000 ALTER TABLE `cdhierarchytp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdhierarchytp` ENABLE KEYS */;


--
-- Definition of table `cdhighestedutp`
--

DROP TABLE IF EXISTS `cdhighestedutp`;
CREATE TABLE `cdhighestedutp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `HIGHEST_EDU_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`HIGHEST_EDU_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdhighestedutp`
--

/*!40000 ALTER TABLE `cdhighestedutp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdhighestedutp` ENABLE KEYS */;


--
-- Definition of table `cdholdingtp`
--

DROP TABLE IF EXISTS `cdholdingtp`;
CREATE TABLE `cdholdingtp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `HOLD_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`HOLD_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdholdingtp`
--

/*!40000 ALTER TABLE `cdholdingtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdholdingtp` ENABLE KEYS */;


--
-- Definition of table `cdidstatustp`
--

DROP TABLE IF EXISTS `cdidstatustp`;
CREATE TABLE `cdidstatustp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `ID_STATUS_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`ID_STATUS_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdidstatustp`
--

/*!40000 ALTER TABLE `cdidstatustp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdidstatustp` ENABLE KEYS */;


--
-- Definition of table `cdidtp`
--

DROP TABLE IF EXISTS `cdidtp`;
CREATE TABLE `cdidtp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `ID_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `MAX_ALLOWED_NUM` smallint(5) default NULL,
  PRIMARY KEY  (`LANG_TP_CD`,`ID_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdidtp`
--

/*!40000 ALTER TABLE `cdidtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdidtp` ENABLE KEYS */;


--
-- Definition of table `cdinactreasontp`
--

DROP TABLE IF EXISTS `cdinactreasontp`;
CREATE TABLE `cdinactreasontp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `INACT_REASON_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`INACT_REASON_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdinactreasontp`
--

/*!40000 ALTER TABLE `cdinactreasontp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdinactreasontp` ENABLE KEYS */;


--
-- Definition of table `cdincomesrctp`
--

DROP TABLE IF EXISTS `cdincomesrctp`;
CREATE TABLE `cdincomesrctp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `INCOME_SRC_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`INCOME_SRC_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdincomesrctp`
--

/*!40000 ALTER TABLE `cdincomesrctp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdincomesrctp` ENABLE KEYS */;


--
-- Definition of table `cdindustrytp`
--

DROP TABLE IF EXISTS `cdindustrytp`;
CREATE TABLE `cdindustrytp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `INDUSTRY_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`INDUSTRY_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdindustrytp`
--

/*!40000 ALTER TABLE `cdindustrytp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdindustrytp` ENABLE KEYS */;


--
-- Definition of table `cdinteractioncat`
--

DROP TABLE IF EXISTS `cdinteractioncat`;
CREATE TABLE `cdinteractioncat` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `INTERACT_CAT_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`INTERACT_CAT_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdinteractioncat`
--

/*!40000 ALTER TABLE `cdinteractioncat` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdinteractioncat` ENABLE KEYS */;


--
-- Definition of table `cdinteractiontp`
--

DROP TABLE IF EXISTS `cdinteractiontp`;
CREATE TABLE `cdinteractiontp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `INTERACT_TP_CD` bigint(19) NOT NULL default '0',
  `INTERACT_CAT_CD` bigint(19) default NULL,
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`INTERACT_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdinteractiontp`
--

/*!40000 ALTER TABLE `cdinteractiontp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdinteractiontp` ENABLE KEYS */;


--
-- Definition of table `cdinteractpttp`
--

DROP TABLE IF EXISTS `cdinteractpttp`;
CREATE TABLE `cdinteractpttp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `INTERACT_PT_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`INTERACT_PT_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdinteractpttp`
--

/*!40000 ALTER TABLE `cdinteractpttp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdinteractpttp` ENABLE KEYS */;


--
-- Definition of table `cdinteractreltp`
--

DROP TABLE IF EXISTS `cdinteractreltp`;
CREATE TABLE `cdinteractreltp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `INTERACT_REL_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`INTERACT_REL_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdinteractreltp`
--

/*!40000 ALTER TABLE `cdinteractreltp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdinteractreltp` ENABLE KEYS */;


--
-- Definition of table `cdinteractresptp`
--

DROP TABLE IF EXISTS `cdinteractresptp`;
CREATE TABLE `cdinteractresptp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `INTERACT_RESP_TP` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`INTERACT_RESP_TP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdinteractresptp`
--

/*!40000 ALTER TABLE `cdinteractresptp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdinteractresptp` ENABLE KEYS */;


--
-- Definition of table `cdinteractsttp`
--

DROP TABLE IF EXISTS `cdinteractsttp`;
CREATE TABLE `cdinteractsttp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `INTERACT_ST_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`INTERACT_ST_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdinteractsttp`
--

/*!40000 ALTER TABLE `cdinteractsttp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdinteractsttp` ENABLE KEYS */;


--
-- Definition of table `cdinternaltxntp`
--

DROP TABLE IF EXISTS `cdinternaltxntp`;
CREATE TABLE `cdinternaltxntp` (
  `INTERNAL_BUS_TX_TP` bigint(19) NOT NULL default '0',
  `NAME` varchar(200) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`INTERNAL_BUS_TX_TP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdinternaltxntp`
--

/*!40000 ALTER TABLE `cdinternaltxntp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdinternaltxntp` ENABLE KEYS */;


--
-- Definition of table `cdlangtp`
--

DROP TABLE IF EXISTS `cdlangtp`;
CREATE TABLE `cdlangtp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LOCALE` varchar(20) default NULL,
  PRIMARY KEY  (`LANG_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdlangtp`
--

/*!40000 ALTER TABLE `cdlangtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdlangtp` ENABLE KEYS */;


--
-- Definition of table `cdlinkreasontp`
--

DROP TABLE IF EXISTS `cdlinkreasontp`;
CREATE TABLE `cdlinkreasontp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `LINK_REASON_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`LINK_REASON_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdlinkreasontp`
--

/*!40000 ALTER TABLE `cdlinkreasontp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdlinkreasontp` ENABLE KEYS */;


--
-- Definition of table `cdlobreltp`
--

DROP TABLE IF EXISTS `cdlobreltp`;
CREATE TABLE `cdlobreltp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `LOB_REL_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`LOB_REL_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdlobreltp`
--

/*!40000 ALTER TABLE `cdlobreltp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdlobreltp` ENABLE KEYS */;


--
-- Definition of table `cdlobtp`
--

DROP TABLE IF EXISTS `cdlobtp`;
CREATE TABLE `cdlobtp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `LOB_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`LOB_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdlobtp`
--

/*!40000 ALTER TABLE `cdlobtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdlobtp` ENABLE KEYS */;


--
-- Definition of table `cdmaritalsttp`
--

DROP TABLE IF EXISTS `cdmaritalsttp`;
CREATE TABLE `cdmaritalsttp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `MARITAL_ST_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`MARITAL_ST_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdmaritalsttp`
--

/*!40000 ALTER TABLE `cdmaritalsttp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdmaritalsttp` ENABLE KEYS */;


--
-- Definition of table `cdmatchenginetp`
--

DROP TABLE IF EXISTS `cdmatchenginetp`;
CREATE TABLE `cdmatchenginetp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `MATCH_ENG_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`MATCH_ENG_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdmatchenginetp`
--

/*!40000 ALTER TABLE `cdmatchenginetp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdmatchenginetp` ENABLE KEYS */;


--
-- Definition of table `cdmatchrelevtp`
--

DROP TABLE IF EXISTS `cdmatchrelevtp`;
CREATE TABLE `cdmatchrelevtp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `MATCH_RELEV_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `RELEVENCY_SCORE` smallint(5) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `MATCH_ENG_TP_CD` bigint(19) default NULL,
  PRIMARY KEY  (`LANG_TP_CD`,`MATCH_RELEV_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdmatchrelevtp`
--

/*!40000 ALTER TABLE `cdmatchrelevtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdmatchrelevtp` ENABLE KEYS */;


--
-- Definition of table `cdmethodstatustp`
--

DROP TABLE IF EXISTS `cdmethodstatustp`;
CREATE TABLE `cdmethodstatustp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `METHOD_ST_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`METHOD_ST_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdmethodstatustp`
--

/*!40000 ALTER TABLE `cdmethodstatustp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdmethodstatustp` ENABLE KEYS */;


--
-- Definition of table `cdmiscvalueattrtp`
--

DROP TABLE IF EXISTS `cdmiscvalueattrtp`;
CREATE TABLE `cdmiscvalueattrtp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `VALUEATTR_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`VALUEATTR_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdmiscvalueattrtp`
--

/*!40000 ALTER TABLE `cdmiscvalueattrtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdmiscvalueattrtp` ENABLE KEYS */;


--
-- Definition of table `cdmiscvaluecat`
--

DROP TABLE IF EXISTS `cdmiscvaluecat`;
CREATE TABLE `cdmiscvaluecat` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `MISCVALUE_CAT_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`MISCVALUE_CAT_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdmiscvaluecat`
--

/*!40000 ALTER TABLE `cdmiscvaluecat` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdmiscvaluecat` ENABLE KEYS */;


--
-- Definition of table `cdmiscvaluetp`
--

DROP TABLE IF EXISTS `cdmiscvaluetp`;
CREATE TABLE `cdmiscvaluetp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `MISCVALUE_TP_CD` bigint(19) NOT NULL default '0',
  `MISCVALUE_CAT_CD` bigint(19) default NULL,
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`MISCVALUE_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdmiscvaluetp`
--

/*!40000 ALTER TABLE `cdmiscvaluetp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdmiscvaluetp` ENABLE KEYS */;


--
-- Definition of table `cdnameusagetp`
--

DROP TABLE IF EXISTS `cdnameusagetp`;
CREATE TABLE `cdnameusagetp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `NAME_USAGE_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `MAX_ALLOWED_NUM` smallint(5) default NULL,
  PRIMARY KEY  (`LANG_TP_CD`,`NAME_USAGE_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdnameusagetp`
--

/*!40000 ALTER TABLE `cdnameusagetp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdnameusagetp` ENABLE KEYS */;


--
-- Definition of table `cdnodedesigtp`
--

DROP TABLE IF EXISTS `cdnodedesigtp`;
CREATE TABLE `cdnodedesigtp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `NODEDESIG_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`NODEDESIG_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdnodedesigtp`
--

/*!40000 ALTER TABLE `cdnodedesigtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdnodedesigtp` ENABLE KEYS */;


--
-- Definition of table `cdoperandtp`
--

DROP TABLE IF EXISTS `cdoperandtp`;
CREATE TABLE `cdoperandtp` (
  `OPERAND_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`OPERAND_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdoperandtp`
--

/*!40000 ALTER TABLE `cdoperandtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdoperandtp` ENABLE KEYS */;


--
-- Definition of table `cdoperatortp`
--

DROP TABLE IF EXISTS `cdoperatortp`;
CREATE TABLE `cdoperatortp` (
  `OPERATOR_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `IMPLEM_TP_CODE` char(1) default NULL,
  `JAVA_CLASS_PATH` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`OPERATOR_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdoperatortp`
--

/*!40000 ALTER TABLE `cdoperatortp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdoperatortp` ENABLE KEYS */;


--
-- Definition of table `cdorgnametp`
--

DROP TABLE IF EXISTS `cdorgnametp`;
CREATE TABLE `cdorgnametp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `ORG_NAME_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`ORG_NAME_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdorgnametp`
--

/*!40000 ALTER TABLE `cdorgnametp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdorgnametp` ENABLE KEYS */;


--
-- Definition of table `cdorgtp`
--

DROP TABLE IF EXISTS `cdorgtp`;
CREATE TABLE `cdorgtp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `ORG_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`ORG_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdorgtp`
--

/*!40000 ALTER TABLE `cdorgtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdorgtp` ENABLE KEYS */;


--
-- Definition of table `cdpaymentmethodtp`
--

DROP TABLE IF EXISTS `cdpaymentmethodtp`;
CREATE TABLE `cdpaymentmethodtp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `PYMT_MTHD_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`PYMT_MTHD_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdpaymentmethodtp`
--

/*!40000 ALTER TABLE `cdpaymentmethodtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdpaymentmethodtp` ENABLE KEYS */;


--
-- Definition of table `cdpermissiontp`
--

DROP TABLE IF EXISTS `cdpermissiontp`;
CREATE TABLE `cdpermissiontp` (
  `PERMISSION_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`PERMISSION_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdpermissiontp`
--

/*!40000 ALTER TABLE `cdpermissiontp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdpermissiontp` ENABLE KEYS */;


--
-- Definition of table `cdpprefactiontp`
--

DROP TABLE IF EXISTS `cdpprefactiontp`;
CREATE TABLE `cdpprefactiontp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `PPREF_ACTION_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`PPREF_ACTION_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdpprefactiontp`
--

/*!40000 ALTER TABLE `cdpprefactiontp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdpprefactiontp` ENABLE KEYS */;


--
-- Definition of table `cdpprefcat`
--

DROP TABLE IF EXISTS `cdpprefcat`;
CREATE TABLE `cdpprefcat` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `PPREF_CAT_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`PPREF_CAT_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdpprefcat`
--

/*!40000 ALTER TABLE `cdpprefcat` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdpprefcat` ENABLE KEYS */;


--
-- Definition of table `cdpprefreasontp`
--

DROP TABLE IF EXISTS `cdpprefreasontp`;
CREATE TABLE `cdpprefreasontp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `PPREF_REASON_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`PPREF_REASON_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdpprefreasontp`
--

/*!40000 ALTER TABLE `cdpprefreasontp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdpprefreasontp` ENABLE KEYS */;


--
-- Definition of table `cdpprefsegtp`
--

DROP TABLE IF EXISTS `cdpprefsegtp`;
CREATE TABLE `cdpprefsegtp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `PPREF_SEG_TP_CD` bigint(19) NOT NULL default '0',
  `PROV_STATE_TP_CD` bigint(19) default NULL,
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`PPREF_SEG_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdpprefsegtp`
--

/*!40000 ALTER TABLE `cdpprefsegtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdpprefsegtp` ENABLE KEYS */;


--
-- Definition of table `cdppreftp`
--

DROP TABLE IF EXISTS `cdppreftp`;
CREATE TABLE `cdppreftp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `PPREF_TP_CD` bigint(19) NOT NULL default '0',
  `PPREF_CAT_CD` bigint(19) default NULL,
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`PPREF_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdppreftp`
--

/*!40000 ALTER TABLE `cdppreftp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdppreftp` ENABLE KEYS */;


--
-- Definition of table `cdprefixnametp`
--

DROP TABLE IF EXISTS `cdprefixnametp`;
CREATE TABLE `cdprefixnametp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `PREFIX_NAME_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`PREFIX_NAME_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdprefixnametp`
--

/*!40000 ALTER TABLE `cdprefixnametp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdprefixnametp` ENABLE KEYS */;


--
-- Definition of table `cdprioritytp`
--

DROP TABLE IF EXISTS `cdprioritytp`;
CREATE TABLE `cdprioritytp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `PRIORITY_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`PRIORITY_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdprioritytp`
--

/*!40000 ALTER TABLE `cdprioritytp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdprioritytp` ENABLE KEYS */;


--
-- Definition of table `cdprodreltp`
--

DROP TABLE IF EXISTS `cdprodreltp`;
CREATE TABLE `cdprodreltp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `PRODREL_TP_CD` bigint(19) NOT NULL default '0',
  `FROM_TO_NAME` varchar(120) default NULL,
  `TO_FROM_NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`PRODREL_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdprodreltp`
--

/*!40000 ALTER TABLE `cdprodreltp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdprodreltp` ENABLE KEYS */;


--
-- Definition of table `cdprodtp`
--

DROP TABLE IF EXISTS `cdprodtp`;
CREATE TABLE `cdprodtp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `PROD_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `PROD_SOURCE` varchar(100) default NULL,
  PRIMARY KEY  (`LANG_TP_CD`,`PROD_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdprodtp`
--

/*!40000 ALTER TABLE `cdprodtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdprodtp` ENABLE KEYS */;


--
-- Definition of table `cdprovstatetp`
--

DROP TABLE IF EXISTS `cdprovstatetp`;
CREATE TABLE `cdprovstatetp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `PROV_STATE_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`PROV_STATE_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdprovstatetp`
--

/*!40000 ALTER TABLE `cdprovstatetp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdprovstatetp` ENABLE KEYS */;


--
-- Definition of table `cdpurposetp`
--

DROP TABLE IF EXISTS `cdpurposetp`;
CREATE TABLE `cdpurposetp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `PURPOSE_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`PURPOSE_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdpurposetp`
--

/*!40000 ALTER TABLE `cdpurposetp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdpurposetp` ENABLE KEYS */;


--
-- Definition of table `cdrelassigntp`
--

DROP TABLE IF EXISTS `cdrelassigntp`;
CREATE TABLE `cdrelassigntp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `REL_ASSIGN_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`REL_ASSIGN_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdrelassigntp`
--

/*!40000 ALTER TABLE `cdrelassigntp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdrelassigntp` ENABLE KEYS */;


--
-- Definition of table `cdreltp`
--

DROP TABLE IF EXISTS `cdreltp`;
CREATE TABLE `cdreltp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `REL_TP_CD` bigint(19) NOT NULL default '0',
  `FROM_TO_NAME` varchar(120) default NULL,
  `TO_FROM_NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`REL_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdreltp`
--

/*!40000 ALTER TABLE `cdreltp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdreltp` ENABLE KEYS */;


--
-- Definition of table `cdresidencetp`
--

DROP TABLE IF EXISTS `cdresidencetp`;
CREATE TABLE `cdresidencetp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `RESIDENCE_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`RESIDENCE_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdresidencetp`
--

/*!40000 ALTER TABLE `cdresidencetp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdresidencetp` ENABLE KEYS */;


--
-- Definition of table `cdrolecattp`
--

DROP TABLE IF EXISTS `cdrolecattp`;
CREATE TABLE `cdrolecattp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `ROLE_CAT_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`ROLE_CAT_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdrolecattp`
--

/*!40000 ALTER TABLE `cdrolecattp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdrolecattp` ENABLE KEYS */;


--
-- Definition of table `cdroletp`
--

DROP TABLE IF EXISTS `cdroletp`;
CREATE TABLE `cdroletp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `ROLE_TP_CD` bigint(19) NOT NULL default '0',
  `ROLE_CAT_TP_CD` bigint(19) default NULL,
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`ROLE_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdroletp`
--

/*!40000 ALTER TABLE `cdroletp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdroletp` ENABLE KEYS */;


--
-- Definition of table `cdrptingfreqtp`
--

DROP TABLE IF EXISTS `cdrptingfreqtp`;
CREATE TABLE `cdrptingfreqtp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `RPTING_FREQ_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`RPTING_FREQ_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdrptingfreqtp`
--

/*!40000 ALTER TABLE `cdrptingfreqtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdrptingfreqtp` ENABLE KEYS */;


--
-- Definition of table `cdsharedisttp`
--

DROP TABLE IF EXISTS `cdsharedisttp`;
CREATE TABLE `cdsharedisttp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `SHARE_DIST_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`SHARE_DIST_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdsharedisttp`
--

/*!40000 ALTER TABLE `cdsharedisttp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdsharedisttp` ENABLE KEYS */;


--
-- Definition of table `cdsourceidenttp`
--

DROP TABLE IF EXISTS `cdsourceidenttp`;
CREATE TABLE `cdsourceidenttp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `SOURCE_IDENT_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`SOURCE_IDENT_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdsourceidenttp`
--

/*!40000 ALTER TABLE `cdsourceidenttp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdsourceidenttp` ENABLE KEYS */;


--
-- Definition of table `cdsrchfld`
--

DROP TABLE IF EXISTS `cdsrchfld`;
CREATE TABLE `cdsrchfld` (
  `SRCH_FLD_CD_ID` bigint(19) NOT NULL default '0',
  `APPLICATION` varchar(50) default NULL,
  `GROUP_NAME` varchar(50) default NULL,
  `ELEMENT_NAME` varchar(50) default NULL,
  `SRCH_FLD_NAME` varchar(255) default NULL,
  `ELEMENT_TP_CD` int(10) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`SRCH_FLD_CD_ID`),
  KEY `cdsrchfld_ibfk_1` USING BTREE (`ELEMENT_TP_CD`),
  KEY `cdsrchfld_ibfk_2` USING BTREE (`APPLICATION`,`GROUP_NAME`,`ELEMENT_NAME`),
  CONSTRAINT `cdsrchfld_ibfk_1` FOREIGN KEY (`ELEMENT_TP_CD`) REFERENCES `cdelementtp` (`ELEMENT_TP_CD`),
  CONSTRAINT `cdsrchfld_ibfk_2` FOREIGN KEY (`APPLICATION`, `GROUP_NAME`, `ELEMENT_NAME`) REFERENCES `v_element` (`APPLICATION`, `GROUP_NAME`, `ELEMENT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdsrchfld`
--

/*!40000 ALTER TABLE `cdsrchfld` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdsrchfld` ENABLE KEYS */;


--
-- Definition of table `cdsuspectreasontp`
--

DROP TABLE IF EXISTS `cdsuspectreasontp`;
CREATE TABLE `cdsuspectreasontp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `SUSP_REASON_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `REASON_SCORE` smallint(5) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `MATCH_ENG_TP_CD` bigint(19) default NULL,
  PRIMARY KEY  (`LANG_TP_CD`,`SUSP_REASON_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdsuspectreasontp`
--

/*!40000 ALTER TABLE `cdsuspectreasontp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdsuspectreasontp` ENABLE KEYS */;


--
-- Definition of table `cdsuspectsourcetp`
--

DROP TABLE IF EXISTS `cdsuspectsourcetp`;
CREATE TABLE `cdsuspectsourcetp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `SUSP_SOURCE_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`SUSP_SOURCE_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdsuspectsourcetp`
--

/*!40000 ALTER TABLE `cdsuspectsourcetp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdsuspectsourcetp` ENABLE KEYS */;


--
-- Definition of table `cdsuspectstatustp`
--

DROP TABLE IF EXISTS `cdsuspectstatustp`;
CREATE TABLE `cdsuspectstatustp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `SUSP_ST_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`SUSP_ST_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdsuspectstatustp`
--

/*!40000 ALTER TABLE `cdsuspectstatustp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdsuspectstatustp` ENABLE KEYS */;


--
-- Definition of table `cdsuspecttp`
--

DROP TABLE IF EXISTS `cdsuspecttp`;
CREATE TABLE `cdsuspecttp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `SUSPECT_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `RULE_ID` varchar(10) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`SUSPECT_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdsuspecttp`
--

/*!40000 ALTER TABLE `cdsuspecttp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdsuspecttp` ENABLE KEYS */;


--
-- Definition of table `cdtxparamtp`
--

DROP TABLE IF EXISTS `cdtxparamtp`;
CREATE TABLE `cdtxparamtp` (
  `TX_PARAM_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(200) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`TX_PARAM_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdtxparamtp`
--

/*!40000 ALTER TABLE `cdtxparamtp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdtxparamtp` ENABLE KEYS */;


--
-- Definition of table `cdundelreasontp`
--

DROP TABLE IF EXISTS `cdundelreasontp`;
CREATE TABLE `cdundelreasontp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `UNDEL_REASON_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`UNDEL_REASON_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cdundelreasontp`
--

/*!40000 ALTER TABLE `cdundelreasontp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdundelreasontp` ENABLE KEYS */;


--
-- Definition of table `cduserroletp`
--

DROP TABLE IF EXISTS `cduserroletp`;
CREATE TABLE `cduserroletp` (
  `LANG_TP_CD` bigint(19) NOT NULL default '0',
  `USER_ROLE_TP_CD` bigint(19) NOT NULL default '0',
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`LANG_TP_CD`,`USER_ROLE_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cduserroletp`
--

/*!40000 ALTER TABLE `cduserroletp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cduserroletp` ENABLE KEYS */;


--
-- Definition of table `chargecard`
--

DROP TABLE IF EXISTS `chargecard`;
CREATE TABLE `chargecard` (
  `PAYMENT_SOURCE_ID` bigint(19) NOT NULL default '0',
  `CHARGE_CARD_TP_CD` bigint(19) default NULL,
  `CHARGE_CARD_NUM` varchar(30) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `ON_CARD_NAME` varchar(100) default NULL,
  `BANK_NUM` varchar(10) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`PAYMENT_SOURCE_ID`),
  CONSTRAINT `chargecard_ibfk_1` FOREIGN KEY (`PAYMENT_SOURCE_ID`) REFERENCES `paymentsource` (`PAYMENT_SOURCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chargecard`
--

/*!40000 ALTER TABLE `chargecard` DISABLE KEYS */;
/*!40000 ALTER TABLE `chargecard` ENABLE KEYS */;


--
-- Definition of table `claim`
--

DROP TABLE IF EXISTS `claim`;
CREATE TABLE `claim` (
  `CLAIM_ID` bigint(19) NOT NULL default '0',
  `ADMIN_REF_NUM` varchar(150) default NULL,
  `CLAIM_NUMBER` varchar(20) default NULL,
  `CLAIM_DETAIL_AMT` decimal(17,0) default NULL,
  `CLAIM_PAID_AMT` decimal(17,0) default NULL,
  `OUTSTANDING_AMT` decimal(17,0) default NULL,
  `BENEFIT_CLAIM_AMT` decimal(17,0) default NULL,
  `CLAIM_TP_CD` bigint(19) default NULL,
  `LOB_TP_CD` bigint(19) default NULL,
  `CLAIM_STATUS_TP_CD` bigint(19) default NULL,
  `CLAIM_CODE` varchar(20) default NULL,
  `STATUS_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `CLAIM_INCURRED_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `REPORTED_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `DESCRIPTION` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `DETLAMT_CUR_TP` bigint(19) default NULL,
  `PAIDAMT_CUR_TP` bigint(19) default NULL,
  `OUTSAMT_CUR_TP` bigint(19) default NULL,
  `BENEAMT_CUR_TP` bigint(19) default NULL,
  PRIMARY KEY  (`CLAIM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `claim`
--

/*!40000 ALTER TABLE `claim` DISABLE KEYS */;
/*!40000 ALTER TABLE `claim` ENABLE KEYS */;


--
-- Definition of table `claimcontract`
--

DROP TABLE IF EXISTS `claimcontract`;
CREATE TABLE `claimcontract` (
  `CLAIM_CONTR_ID` bigint(19) NOT NULL default '0',
  `CLAIM_ID` bigint(19) default NULL,
  `CONTRACT_ID` bigint(19) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`CLAIM_CONTR_ID`),
  KEY `CLAIM_ID` (`CLAIM_ID`),
  KEY `CONTRACT_ID` (`CONTRACT_ID`),
  CONSTRAINT `claimcontract_ibfk_1` FOREIGN KEY (`CLAIM_ID`) REFERENCES `claim` (`CLAIM_ID`),
  CONSTRAINT `claimcontract_ibfk_2` FOREIGN KEY (`CONTRACT_ID`) REFERENCES `contract` (`CONTRACT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `claimcontract`
--

/*!40000 ALTER TABLE `claimcontract` DISABLE KEYS */;
/*!40000 ALTER TABLE `claimcontract` ENABLE KEYS */;


--
-- Definition of table `claimrole`
--

DROP TABLE IF EXISTS `claimrole`;
CREATE TABLE `claimrole` (
  `CLAIM_ROLE_ID` bigint(19) NOT NULL default '0',
  `CLAIM_ROLE_TP_CD` bigint(19) default NULL,
  `CONT_ID` bigint(19) default NULL,
  `CLAIM_ID` bigint(19) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`CLAIM_ROLE_ID`),
  KEY `CLAIM_ID` (`CLAIM_ID`),
  KEY `CONT_ID` (`CONT_ID`),
  CONSTRAINT `claimrole_ibfk_1` FOREIGN KEY (`CLAIM_ID`) REFERENCES `claim` (`CLAIM_ID`),
  CONSTRAINT `claimrole_ibfk_2` FOREIGN KEY (`CONT_ID`) REFERENCES `contact` (`CONT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `claimrole`
--

/*!40000 ALTER TABLE `claimrole` DISABLE KEYS */;
/*!40000 ALTER TABLE `claimrole` ENABLE KEYS */;


--
-- Definition of table `codelist`
--

DROP TABLE IF EXISTS `codelist`;
CREATE TABLE `codelist` (
  `CODE_ID` int(10) NOT NULL default '0',
  `CODE` varchar(254) default NULL,
  `LIST` varchar(254) default NULL,
  PRIMARY KEY  (`CODE_ID`),
  KEY `LIST` (`LIST`),
  CONSTRAINT `codelist_ibfk_1` FOREIGN KEY (`LIST`) REFERENCES `list` (`LIST`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `codelist`
--

/*!40000 ALTER TABLE `codelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `codelist` ENABLE KEYS */;


--
-- Definition of table `codevalueassociatn`
--

DROP TABLE IF EXISTS `codevalueassociatn`;
CREATE TABLE `codevalueassociatn` (
  `ASSOCIATION_ID` int(10) NOT NULL default '0',
  `APPLICATION_NAME` varchar(50) default NULL,
  `CONTEXT` varchar(254) default NULL,
  `LOCALE` varchar(50) default NULL,
  `CODE_ID` int(10) default NULL,
  `CODE_VALUE` varchar(255) default NULL,
  `CODE_VALUE_SHORT` varchar(255) default NULL,
  `SORT_ID` int(10) default NULL,
  `START_DATE` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DATE` timestamp NOT NULL default '0000-00-00 00:00:00',
  `COMMENTS` varchar(255) default NULL,
  `LAST_UPDATE_DATE` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ASSOCIATION_ID`),
  KEY `CODE_ID` (`CODE_ID`),
  KEY `CONTEXT` (`CONTEXT`),
  CONSTRAINT `codevalueassociatn_ibfk_1` FOREIGN KEY (`CODE_ID`) REFERENCES `codelist` (`CODE_ID`),
  CONSTRAINT `codevalueassociatn_ibfk_2` FOREIGN KEY (`CONTEXT`) REFERENCES `context` (`CONTEXT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `codevalueassociatn`
--

/*!40000 ALTER TABLE `codevalueassociatn` DISABLE KEYS */;
/*!40000 ALTER TABLE `codevalueassociatn` ENABLE KEYS */;


--
-- Definition of table `codevalueattribute`
--

DROP TABLE IF EXISTS `codevalueattribute`;
CREATE TABLE `codevalueattribute` (
  `ATTRIBUTE_ID` int(10) NOT NULL default '0',
  `ASSOCIATION_ID` int(10) default NULL,
  `ATTRIBUTE_NAME` varchar(50) default NULL,
  `ATTRIBUTE_VALUE` varchar(255) default NULL,
  PRIMARY KEY  (`ATTRIBUTE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `codevalueattribute`
--

/*!40000 ALTER TABLE `codevalueattribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `codevalueattribute` ENABLE KEYS */;


--
-- Definition of table `componenttype`
--

DROP TABLE IF EXISTS `componenttype`;
CREATE TABLE `componenttype` (
  `COMPONENT_TYPE_ID` bigint(19) NOT NULL default '0',
  `DWL_PROD_TP_CD` bigint(19) default NULL,
  `COMPON_TYPE_VALUE` varchar(100) default NULL,
  `COMPON_LONG_DESC` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`COMPONENT_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `componenttype`
--

/*!40000 ALTER TABLE `componenttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `componenttype` ENABLE KEYS */;


--
-- Definition of table `configelement`
--

DROP TABLE IF EXISTS `configelement`;
CREATE TABLE `configelement` (
  `ELEMENT_ID` bigint(19) NOT NULL default '0',
  `DEPLOYMENT_ID` bigint(19) default NULL,
  `NAME` varchar(220) default NULL,
  `VALUE` varchar(1000) default NULL,
  `VALUE_DEFAULT` varchar(1000) default NULL,
  `INSTANCE_ID` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`ELEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `configelement`
--

/*!40000 ALTER TABLE `configelement` DISABLE KEYS */;
/*!40000 ALTER TABLE `configelement` ENABLE KEYS */;


--
-- Definition of table `configfeatureopt`
--

DROP TABLE IF EXISTS `configfeatureopt`;
CREATE TABLE `configfeatureopt` (
  `FEATURE_VALUE` varchar(100) NOT NULL default '',
  `OPTION_VALUE` varchar(20) NOT NULL default '',
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`FEATURE_VALUE`,`OPTION_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `configfeatureopt`
--

/*!40000 ALTER TABLE `configfeatureopt` DISABLE KEYS */;
/*!40000 ALTER TABLE `configfeatureopt` ENABLE KEYS */;


--
-- Definition of table `constraintparam`
--

DROP TABLE IF EXISTS `constraintparam`;
CREATE TABLE `constraintparam` (
  `CONSTR_PARAM_ID` bigint(19) NOT NULL default '0',
  `ENTITLE_CONSTR_ID` bigint(19) default NULL,
  `PARAM_TP_CD` bigint(19) default NULL,
  `PARAM_VALUE` varchar(255) default NULL,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `EXPIRY_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`CONSTR_PARAM_ID`),
  KEY `ENTITLE_CONSTR_ID` (`ENTITLE_CONSTR_ID`),
  KEY `PARAM_TP_CD` (`PARAM_TP_CD`),
  CONSTRAINT `constraintparam_ibfk_1` FOREIGN KEY (`ENTITLE_CONSTR_ID`) REFERENCES `entitleconstraint` (`ENTITLE_CONSTR_ID`),
  CONSTRAINT `constraintparam_ibfk_2` FOREIGN KEY (`PARAM_TP_CD`) REFERENCES `param_type` (`PARAMETER_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `constraintparam`
--

/*!40000 ALTER TABLE `constraintparam` DISABLE KEYS */;
/*!40000 ALTER TABLE `constraintparam` ENABLE KEYS */;


--
-- Definition of table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `CONT_ID` bigint(19) NOT NULL default '0',
  `ACCE_COMP_TP_CD` bigint(19) default NULL,
  `PREF_LANG_TP_CD` bigint(19) default NULL,
  `CREATED_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `INACTIVATED_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `CONTACT_NAME` varchar(255) default NULL,
  `PERSON_ORG_CODE` char(1) default NULL,
  `SOLICIT_IND` char(1) default NULL,
  `CONFIDENTIAL_IND` char(1) default NULL,
  `CLIENT_IMP_TP_CD` bigint(19) default NULL,
  `CLIENT_ST_TP_CD` bigint(19) default NULL,
  `CLIENT_POTEN_TP_CD` bigint(19) default NULL,
  `RPTING_FREQ_TP_CD` bigint(19) default NULL,
  `LAST_STATEMENT_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `PROVIDED_BY_CONT` bigint(19) default NULL,
  `ALERT_IND` char(1) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `DO_NOT_DELETE_IND` char(1) default NULL,
  `LAST_USED_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_VERIFIED_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `SOURCE_IDENT_TP_CD` bigint(19) default NULL,
  `SINCE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LEFT_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `ACCESS_TOKEN_VALUE` varchar(50) default NULL,
  `PENDING_CDC_IND` char(1) default NULL,
  PRIMARY KEY  (`CONT_ID`),
  KEY `PROVIDED_BY_CONT` (`PROVIDED_BY_CONT`),
  CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`PROVIDED_BY_CONT`) REFERENCES `contact` (`CONT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;


--
-- Definition of table `contactcdc`
--

DROP TABLE IF EXISTS `contactcdc`;
CREATE TABLE `contactcdc` (
  `CDC_ID` bigint(19) NOT NULL default '0',
  `CONT_ID` bigint(19) default NULL,
  `ENTITY_NAME` varchar(120) default NULL,
  `INSTANCE_PK` bigint(19) default NULL,
  `CRITDATA` mediumtext,
  `CDC_ST_TP_CD` bigint(19) default NULL,
  `REJ_REASON_TP_CD` bigint(19) default NULL,
  `CREATED_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `EXPIRY_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`CDC_ID`),
  KEY `CONT_ID` (`CONT_ID`),
  CONSTRAINT `contactcdc_ibfk_1` FOREIGN KEY (`CONT_ID`) REFERENCES `contact` (`CONT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactcdc`
--

/*!40000 ALTER TABLE `contactcdc` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactcdc` ENABLE KEYS */;


--
-- Definition of table `contactmethod`
--

DROP TABLE IF EXISTS `contactmethod`;
CREATE TABLE `contactmethod` (
  `CONTACT_METHOD_ID` bigint(19) NOT NULL default '0',
  `ADDRESS_ID` bigint(19) default NULL,
  `CONT_METH_CAT_CD` bigint(19) default NULL,
  `REF_NUM` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`CONTACT_METHOD_ID`),
  KEY `ADDRESS_ID` (`ADDRESS_ID`),
  CONSTRAINT `contactmethod_ibfk_1` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `address` (`ADDRESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactmethod`
--

/*!40000 ALTER TABLE `contactmethod` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactmethod` ENABLE KEYS */;


--
-- Definition of table `contactmethodgroup`
--

DROP TABLE IF EXISTS `contactmethodgroup`;
CREATE TABLE `contactmethodgroup` (
  `LOCATION_GROUP_ID` bigint(19) NOT NULL default '0',
  `CONTACT_METHOD_ID` bigint(19) default NULL,
  `CONT_METH_TP_CD` bigint(19) default NULL,
  `METHOD_ST_TP_CD` bigint(19) default NULL,
  `ATTACH_ALLOW_IND` char(1) default NULL,
  `TEXT_ONLY_IND` char(1) default NULL,
  `MESSAGE_SIZE` varchar(20) default NULL,
  `COMMENT_DESC` varchar(100) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`LOCATION_GROUP_ID`),
  KEY `CONTACT_METHOD_ID` (`CONTACT_METHOD_ID`),
  CONSTRAINT `contactmethodgroup_ibfk_1` FOREIGN KEY (`CONTACT_METHOD_ID`) REFERENCES `contactmethod` (`CONTACT_METHOD_ID`),
  CONSTRAINT `contactmethodgroup_ibfk_2` FOREIGN KEY (`LOCATION_GROUP_ID`) REFERENCES `locationgroup` (`LOCATION_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactmethodgroup`
--

/*!40000 ALTER TABLE `contactmethodgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactmethodgroup` ENABLE KEYS */;


--
-- Definition of table `contactrel`
--

DROP TABLE IF EXISTS `contactrel`;
CREATE TABLE `contactrel` (
  `CONT_REL_ID` bigint(19) NOT NULL default '0',
  `REL_TP_CD` bigint(19) default NULL,
  `REL_DESC` varchar(255) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `TO_CONT_ID` bigint(19) default NULL,
  `FROM_CONT_ID` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `REL_ASSIGN_TP_CD` bigint(19) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `END_REASON_TP_CD` bigint(19) default NULL,
  PRIMARY KEY  (`CONT_REL_ID`),
  KEY `FROM_CONT_ID` (`FROM_CONT_ID`),
  KEY `TO_CONT_ID` (`TO_CONT_ID`),
  CONSTRAINT `contactrel_ibfk_1` FOREIGN KEY (`FROM_CONT_ID`) REFERENCES `contact` (`CONT_ID`),
  CONSTRAINT `contactrel_ibfk_2` FOREIGN KEY (`TO_CONT_ID`) REFERENCES `contact` (`CONT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactrel`
--

/*!40000 ALTER TABLE `contactrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactrel` ENABLE KEYS */;


--
-- Definition of table `contequiv`
--

DROP TABLE IF EXISTS `contequiv`;
CREATE TABLE `contequiv` (
  `CONT_EQUIV_ID` bigint(19) NOT NULL default '0',
  `CONT_ID` bigint(19) default NULL,
  `ADMIN_SYS_TP_CD` bigint(19) default NULL,
  `ADMIN_CLIENT_ID` varchar(20) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`CONT_EQUIV_ID`),
  KEY `CONT_ID` (`CONT_ID`),
  CONSTRAINT `contequiv_ibfk_1` FOREIGN KEY (`CONT_ID`) REFERENCES `contact` (`CONT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contequiv`
--

/*!40000 ALTER TABLE `contequiv` DISABLE KEYS */;
/*!40000 ALTER TABLE `contequiv` ENABLE KEYS */;


--
-- Definition of table `context`
--

DROP TABLE IF EXISTS `context`;
CREATE TABLE `context` (
  `CONTEXT` varchar(254) NOT NULL default '',
  PRIMARY KEY  (`CONTEXT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `context`
--

/*!40000 ALTER TABLE `context` DISABLE KEYS */;
/*!40000 ALTER TABLE `context` ENABLE KEYS */;


--
-- Definition of table `contmacrorole`
--

DROP TABLE IF EXISTS `contmacrorole`;
CREATE TABLE `contmacrorole` (
  `CONT_MACRO_ROLE_ID` bigint(19) NOT NULL default '0',
  `CONT_ID` bigint(19) default NULL,
  `ROLE_TP_CD` bigint(19) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `DESCRIPTION` varchar(255) default NULL,
  `END_REASON_TP_CD` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`CONT_MACRO_ROLE_ID`),
  KEY `CONT_ID` (`CONT_ID`),
  CONSTRAINT `contmacrorole_ibfk_1` FOREIGN KEY (`CONT_ID`) REFERENCES `contact` (`CONT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contmacrorole`
--

/*!40000 ALTER TABLE `contmacrorole` DISABLE KEYS */;
/*!40000 ALTER TABLE `contmacrorole` ENABLE KEYS */;


--
-- Definition of table `contract`
--

DROP TABLE IF EXISTS `contract`;
CREATE TABLE `contract` (
  `CONTRACT_ID` bigint(19) NOT NULL default '0',
  `CONTR_LANG_TP_CD` bigint(19) default NULL,
  `CURRENCY_TP_CD` bigint(19) default NULL,
  `FREQ_MODE_TP_CD` bigint(19) default NULL,
  `BILL_TP_CD` bigint(19) default NULL,
  `REPL_BY_CONTRACT` bigint(19) default NULL,
  `PREMIUM_AMT` decimal(17,0) default NULL,
  `NEXT_BILL_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `CURR_CASH_VAL_AMT` decimal(17,0) default NULL,
  `LINE_OF_BUSINESS` varchar(30) default NULL,
  `BRAND_NAME` varchar(30) default NULL,
  `SERVICE_ORG_NAME` varchar(70) default NULL,
  `BUS_ORGUNIT_ID` varchar(30) default NULL,
  `SERVICE_PROV_ID` varchar(30) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `ISSUE_LOCATION` varchar(30) default NULL,
  `ADMIN_CONTRACT_ID` varchar(150) default NULL,
  `ADMIN_SYS_TP_CD` bigint(19) default NULL,
  `PREMAMT_CUR_TP` bigint(19) default NULL,
  `CASHVAL_CUR_TP` bigint(19) default NULL,
  `ACCESS_TOKEN_VALUE` varchar(50) default NULL,
  PRIMARY KEY  (`CONTRACT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contract`
--

/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;


--
-- Definition of table `contractcomponent`
--

DROP TABLE IF EXISTS `contractcomponent`;
CREATE TABLE `contractcomponent` (
  `CONTR_COMPONENT_ID` bigint(19) NOT NULL default '0',
  `CONTRACT_ST_TP_CD` bigint(19) default NULL,
  `PROD_TP_CD` bigint(19) default NULL,
  `CONTRACT_ID` bigint(19) default NULL,
  `CURR_CASH_VAL_AMT` decimal(17,0) default NULL,
  `PREMIUM_AMT` decimal(17,0) default NULL,
  `ISSUE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `VIATICAL_IND` char(1) default NULL,
  `BASE_IND` char(1) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `CONTR_COMP_TP_CD` bigint(19) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `SERV_ARRANGE_TP_CD` bigint(19) default NULL,
  `HOLDING_ID` bigint(19) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `PREMAMT_CUR_TP` bigint(19) default NULL,
  `CASHVAL_CUR_TP` bigint(19) default NULL,
  PRIMARY KEY  (`CONTR_COMPONENT_ID`),
  KEY `CONTRACT_ID` (`CONTRACT_ID`),
  KEY `HOLDING_ID` (`HOLDING_ID`),
  CONSTRAINT `contractcomponent_ibfk_1` FOREIGN KEY (`CONTRACT_ID`) REFERENCES `contract` (`CONTRACT_ID`),
  CONSTRAINT `contractcomponent_ibfk_2` FOREIGN KEY (`HOLDING_ID`) REFERENCES `holding` (`HOLDING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contractcomponent`
--

/*!40000 ALTER TABLE `contractcomponent` DISABLE KEYS */;
/*!40000 ALTER TABLE `contractcomponent` ENABLE KEYS */;


--
-- Definition of table `contractcompval`
--

DROP TABLE IF EXISTS `contractcompval`;
CREATE TABLE `contractcompval` (
  `CONTR_COMP_VAL_ID` bigint(19) NOT NULL default '0',
  `DOMAIN_VALUE_TP_CD` bigint(19) default NULL,
  `VALUE_STRING` varchar(50) default NULL,
  `CONTR_COMPONENT_ID` bigint(19) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`CONTR_COMP_VAL_ID`),
  KEY `CONTR_COMPONENT_ID` (`CONTR_COMPONENT_ID`),
  CONSTRAINT `contractcompval_ibfk_1` FOREIGN KEY (`CONTR_COMPONENT_ID`) REFERENCES `contractcomponent` (`CONTR_COMPONENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contractcompval`
--

/*!40000 ALTER TABLE `contractcompval` DISABLE KEYS */;
/*!40000 ALTER TABLE `contractcompval` ENABLE KEYS */;


--
-- Definition of table `contractrel`
--

DROP TABLE IF EXISTS `contractrel`;
CREATE TABLE `contractrel` (
  `CONTRACT_REL_ID` bigint(19) NOT NULL default '0',
  `TO_CONTRACT_ID` bigint(19) default NULL,
  `FROM_CONTRACT_ID` bigint(19) default NULL,
  `CONTR_REL_TP_CD` bigint(19) default NULL,
  `CONTR_REL_ST_TP_CD` bigint(19) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `REL_DESCRIPTION` varchar(255) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`CONTRACT_REL_ID`),
  KEY `FROM_CONTRACT_ID` (`FROM_CONTRACT_ID`),
  KEY `TO_CONTRACT_ID` (`TO_CONTRACT_ID`),
  CONSTRAINT `contractrel_ibfk_1` FOREIGN KEY (`FROM_CONTRACT_ID`) REFERENCES `contract` (`CONTRACT_ID`),
  CONSTRAINT `contractrel_ibfk_2` FOREIGN KEY (`TO_CONTRACT_ID`) REFERENCES `contract` (`CONTRACT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contractrel`
--

/*!40000 ALTER TABLE `contractrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `contractrel` ENABLE KEYS */;


--
-- Definition of table `contractrole`
--

DROP TABLE IF EXISTS `contractrole`;
CREATE TABLE `contractrole` (
  `CONTRACT_ROLE_ID` bigint(19) NOT NULL default '0',
  `CONT_ID` bigint(19) default NULL,
  `CONTR_COMPONENT_ID` bigint(19) default NULL,
  `CONTR_ROLE_TP_CD` bigint(19) default NULL,
  `REGISTERED_NAME` varchar(255) default NULL,
  `DISTRIB_PCT` decimal(5,0) default NULL,
  `IRREVOC_IND` char(1) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `RECORDED_START_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `RECORDED_END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `SHARE_DIST_TP_CD` bigint(19) default NULL,
  `ARRANGEMENT_TP_CD` bigint(19) default NULL,
  `ARRANGEMENT_DESC` varchar(255) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `END_REASON_TP_CD` bigint(19) default NULL,
  PRIMARY KEY  (`CONTRACT_ROLE_ID`),
  KEY `CONT_ID` (`CONT_ID`),
  KEY `CONTR_COMPONENT_ID` (`CONTR_COMPONENT_ID`),
  CONSTRAINT `contractrole_ibfk_1` FOREIGN KEY (`CONT_ID`) REFERENCES `contact` (`CONT_ID`),
  CONSTRAINT `contractrole_ibfk_2` FOREIGN KEY (`CONTR_COMPONENT_ID`) REFERENCES `contractcomponent` (`CONTR_COMPONENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contractrole`
--

/*!40000 ALTER TABLE `contractrole` DISABLE KEYS */;
/*!40000 ALTER TABLE `contractrole` ENABLE KEYS */;


--
-- Definition of table `contractrolerel`
--

DROP TABLE IF EXISTS `contractrolerel`;
CREATE TABLE `contractrolerel` (
  `CONTR_ROLE_REL_ID` bigint(19) NOT NULL default '0',
  `REL_TP_CD` bigint(19) default NULL,
  `ROLE_REL_DESC` varchar(255) default NULL,
  `CONTR_ROLE_FROM_ID` bigint(19) default NULL,
  `CONTR_ROLE_TO_ID` bigint(19) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `END_REASON_TP_CD` bigint(19) default NULL,
  PRIMARY KEY  (`CONTR_ROLE_REL_ID`),
  KEY `CONTR_ROLE_TO_ID` (`CONTR_ROLE_TO_ID`),
  KEY `CONTR_ROLE_FROM_ID` (`CONTR_ROLE_FROM_ID`),
  CONSTRAINT `contractrolerel_ibfk_1` FOREIGN KEY (`CONTR_ROLE_TO_ID`) REFERENCES `contractrole` (`CONTRACT_ROLE_ID`),
  CONSTRAINT `contractrolerel_ibfk_2` FOREIGN KEY (`CONTR_ROLE_FROM_ID`) REFERENCES `contractrole` (`CONTRACT_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contractrolerel`
--

/*!40000 ALTER TABLE `contractrolerel` DISABLE KEYS */;
/*!40000 ALTER TABLE `contractrolerel` ENABLE KEYS */;


--
-- Definition of table `contsummary`
--

DROP TABLE IF EXISTS `contsummary`;
CREATE TABLE `contsummary` (
  `CONT_ID` bigint(19) NOT NULL default '0',
  `PRIVPREF_IND` smallint(5) default NULL,
  `MISCVALUE_IND` smallint(5) default NULL,
  `CONTACTREL_IND` smallint(5) default NULL,
  `BANKACCOUNT_IND` smallint(5) default NULL,
  `CHARGECARD_IND` smallint(5) default NULL,
  `PAYROLLDEDUCT_IND` smallint(5) default NULL,
  `INCOMESOURCE_IND` smallint(5) default NULL,
  `IDENTIFIER_IND` smallint(5) default NULL,
  `ALERT_IND` smallint(5) default NULL,
  `CONTEQUIV_IND` smallint(5) default NULL,
  `INTERACTION_IND` smallint(5) default NULL,
  `ADDRESSGROUP_IND` smallint(5) default NULL,
  `CONTMETHGROUP_IND` smallint(5) default NULL,
  `LOBREL_IND` smallint(5) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`CONT_ID`),
  CONSTRAINT `contsummary_ibfk_1` FOREIGN KEY (`CONT_ID`) REFERENCES `contact` (`CONT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contsummary`
--

/*!40000 ALTER TABLE `contsummary` DISABLE KEYS */;
/*!40000 ALTER TABLE `contsummary` ENABLE KEYS */;


--
-- Definition of table `dataaction`
--

DROP TABLE IF EXISTS `dataaction`;
CREATE TABLE `dataaction` (
  `DATA_ACCESS_ID` bigint(19) NOT NULL default '0',
  `ENTITLEMENT_ID` bigint(19) default NULL,
  `ASSOC_DATA_IND` char(1) default NULL,
  `ASSOC_DATA_KEY` bigint(19) default NULL,
  `PERMISSION_TP_CD` bigint(19) default NULL,
  `DATA_ACTION_TP_CD` bigint(19) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`DATA_ACCESS_ID`),
  KEY `DATA_ACTION_TP_CD` (`DATA_ACTION_TP_CD`),
  KEY `PERMISSION_TP_CD` (`PERMISSION_TP_CD`),
  KEY `ENTITLEMENT_ID` (`ENTITLEMENT_ID`),
  CONSTRAINT `dataaction_ibfk_1` FOREIGN KEY (`DATA_ACTION_TP_CD`) REFERENCES `cddataactiontp` (`DATA_ACTION_TP_CD`),
  CONSTRAINT `dataaction_ibfk_2` FOREIGN KEY (`PERMISSION_TP_CD`) REFERENCES `cdpermissiontp` (`PERMISSION_TP_CD`),
  CONSTRAINT `dataaction_ibfk_3` FOREIGN KEY (`ENTITLEMENT_ID`) REFERENCES `entitlement` (`ENTITLEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dataaction`
--

/*!40000 ALTER TABLE `dataaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataaction` ENABLE KEYS */;


--
-- Definition of table `dataassociation`
--

DROP TABLE IF EXISTS `dataassociation`;
CREATE TABLE `dataassociation` (
  `DATA_ASSOC_ID` bigint(19) NOT NULL default '0',
  `NAME` varchar(30) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `DESCRIPTION` varchar(100) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`DATA_ASSOC_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dataassociation`
--

/*!40000 ALTER TABLE `dataassociation` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataassociation` ENABLE KEYS */;


--
-- Definition of table `dataowner`
--

DROP TABLE IF EXISTS `dataowner`;
CREATE TABLE `dataowner` (
  `DATA_OWNER_ID` bigint(19) NOT NULL default '0',
  `DATA_OWNER_NAME` varchar(50) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`DATA_OWNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dataowner`
--

/*!40000 ALTER TABLE `dataowner` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataowner` ENABLE KEYS */;


--
-- Definition of table `defaultsourceval`
--

DROP TABLE IF EXISTS `defaultsourceval`;
CREATE TABLE `defaultsourceval` (
  `DEFAULT_SRC_VAL_ID` bigint(19) NOT NULL default '0',
  `ENTITY_NAME` varchar(20) default NULL,
  `INSTANCE_PK` bigint(19) default NULL,
  `COLUMN_NAME` varchar(20) default NULL,
  `SOURCE_VALUE` varchar(100) default NULL,
  `DEFAULT_VALUE` varchar(100) default NULL,
  `DESCRIPTION` varchar(1000) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `SOURCE_IDENT_TP_CD` bigint(19) default NULL,
  `SOURCE_IDENTIFIER` varchar(100) default NULL,
  PRIMARY KEY  (`DEFAULT_SRC_VAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `defaultsourceval`
--

/*!40000 ALTER TABLE `defaultsourceval` DISABLE KEYS */;
/*!40000 ALTER TABLE `defaultsourceval` ENABLE KEYS */;


--
-- Definition of table `elementalias`
--

DROP TABLE IF EXISTS `elementalias`;
CREATE TABLE `elementalias` (
  `ELEMENT_ALIAS_ID` bigint(19) NOT NULL default '0',
  `APPLICATION` varchar(50) default NULL,
  `GROUP_NAME` varchar(50) default NULL,
  `ELEMENT_NAME` varchar(50) default NULL,
  `DATA_OWNER_ID` bigint(19) default NULL,
  `ELEMENT_ALIAS_NAME` varchar(50) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ELEMENT_ALIAS_ID`),
  KEY `elementalias_ibfk_1` USING BTREE (`DATA_OWNER_ID`),
  KEY `elementalias_ibfk_2` USING BTREE (`APPLICATION`,`GROUP_NAME`,`ELEMENT_NAME`),
  CONSTRAINT `elementalias_ibfk_1` FOREIGN KEY (`DATA_OWNER_ID`) REFERENCES `dataowner` (`DATA_OWNER_ID`),
  CONSTRAINT `elementalias_ibfk_2` FOREIGN KEY (`APPLICATION`, `GROUP_NAME`, `ELEMENT_NAME`) REFERENCES `v_element` (`APPLICATION`, `GROUP_NAME`, `ELEMENT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elementalias`
--

/*!40000 ALTER TABLE `elementalias` DISABLE KEYS */;
/*!40000 ALTER TABLE `elementalias` ENABLE KEYS */;


--
-- Definition of table `entitleconstraint`
--

DROP TABLE IF EXISTS `entitleconstraint`;
CREATE TABLE `entitleconstraint` (
  `ENTITLE_CONSTR_ID` bigint(19) NOT NULL default '0',
  `ENTITLEMENT_ID` bigint(19) default NULL,
  `CONSTRAINT_NAME` varchar(30) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `OPERATOR_TP_CD` bigint(19) default NULL,
  `RHS_OPERAND_TP_CD` bigint(19) default NULL,
  `NEGATE_RESULT_IND` char(1) default NULL,
  `FAIL_ACTION_TP_CD` bigint(19) default NULL,
  `ERR_MESSAGE_ID` varchar(50) default NULL,
  `ACTIVE_IND` char(1) default NULL,
  `APPLICATION` varchar(50) default NULL,
  `GROUP_NAME` varchar(50) default NULL,
  `ELEMENT_NAME` varchar(50) default NULL,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `EXTENSION_SET_ID` bigint(19) default NULL,
  `CONSTRAINT_TP_CD` bigint(19) default NULL,
  PRIMARY KEY  (`ENTITLE_CONSTR_ID`),
  KEY `entitleconstraint_ibfk_7` USING BTREE (`APPLICATION`,`GROUP_NAME`,`ELEMENT_NAME`),
  KEY `entitleconstraint_ibfk_2` USING BTREE (`FAIL_ACTION_TP_CD`),
  KEY `entitleconstraint_ibfk_3` USING BTREE (`RHS_OPERAND_TP_CD`),
  KEY `entitleconstraint_ibfk_4` USING BTREE (`OPERATOR_TP_CD`),
  KEY `entitleconstraint_ibfk_5` USING BTREE (`ENTITLEMENT_ID`),
  KEY `entitleconstraint_ibfk_6` USING BTREE (`EXTENSION_SET_ID`),
  KEY `entitleconstraint_ibfk_1` USING BTREE (`CONSTRAINT_TP_CD`),
  CONSTRAINT `entitleconstraint_ibfk_1` FOREIGN KEY (`CONSTRAINT_TP_CD`) REFERENCES `cdconstrainttp` (`CONSTRAINT_TP_CD`),
  CONSTRAINT `entitleconstraint_ibfk_2` FOREIGN KEY (`FAIL_ACTION_TP_CD`) REFERENCES `cdfailactiontp` (`FAIL_ACTION_TP_CD`),
  CONSTRAINT `entitleconstraint_ibfk_3` FOREIGN KEY (`RHS_OPERAND_TP_CD`) REFERENCES `cdoperandtp` (`OPERAND_TP_CD`),
  CONSTRAINT `entitleconstraint_ibfk_4` FOREIGN KEY (`OPERATOR_TP_CD`) REFERENCES `cdoperatortp` (`OPERATOR_TP_CD`),
  CONSTRAINT `entitleconstraint_ibfk_5` FOREIGN KEY (`ENTITLEMENT_ID`) REFERENCES `entitlement` (`ENTITLEMENT_ID`),
  CONSTRAINT `entitleconstraint_ibfk_6` FOREIGN KEY (`EXTENSION_SET_ID`) REFERENCES `extensionset` (`EXTENSION_SET_ID`),
  CONSTRAINT `entitleconstraint_ibfk_7` FOREIGN KEY (`APPLICATION`, `GROUP_NAME`, `ELEMENT_NAME`) REFERENCES `v_element` (`APPLICATION`, `GROUP_NAME`, `ELEMENT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entitleconstraint`
--

/*!40000 ALTER TABLE `entitleconstraint` DISABLE KEYS */;
/*!40000 ALTER TABLE `entitleconstraint` ENABLE KEYS */;


--
-- Definition of table `entitlement`
--

DROP TABLE IF EXISTS `entitlement`;
CREATE TABLE `entitlement` (
  `ENTITLEMENT_ID` bigint(19) NOT NULL default '0',
  `ENTITLE_RULE_NAME` varchar(255) default NULL,
  `ENTITLE_RULE_DESC` varchar(255) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ENTITLEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entitlement`
--

/*!40000 ALTER TABLE `entitlement` DISABLE KEYS */;
/*!40000 ALTER TABLE `entitlement` ENABLE KEYS */;


--
-- Definition of table `entityeventcat`
--

DROP TABLE IF EXISTS `entityeventcat`;
CREATE TABLE `entityeventcat` (
  `ENTITYEVENTCAT_ID` bigint(19) NOT NULL default '0',
  `PRODENTITY_ID` bigint(19) default NULL,
  `ADAPTERDEF_ID` bigint(19) default NULL,
  `EVENT_CAT_CD` bigint(19) default NULL,
  `ENTEVENTCATOPT_ID` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`ENTITYEVENTCAT_ID`),
  KEY `ADAPTERDEF_ID` (`ADAPTERDEF_ID`),
  KEY `ENTEVENTCATOPT_ID` (`ENTEVENTCATOPT_ID`),
  KEY `PRODENTITY_ID` (`PRODENTITY_ID`),
  CONSTRAINT `entityeventcat_ibfk_1` FOREIGN KEY (`ADAPTERDEF_ID`) REFERENCES `adapterdef` (`ADAPTERDEF_ID`),
  CONSTRAINT `entityeventcat_ibfk_2` FOREIGN KEY (`ENTEVENTCATOPT_ID`) REFERENCES `entityeventcatopt` (`ENTEVENTCATOPT_ID`),
  CONSTRAINT `entityeventcat_ibfk_3` FOREIGN KEY (`PRODENTITY_ID`) REFERENCES `prodentity` (`PRODENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entityeventcat`
--

/*!40000 ALTER TABLE `entityeventcat` DISABLE KEYS */;
/*!40000 ALTER TABLE `entityeventcat` ENABLE KEYS */;


--
-- Definition of table `entityeventcatopt`
--

DROP TABLE IF EXISTS `entityeventcatopt`;
CREATE TABLE `entityeventcatopt` (
  `ENTEVENTCATOPT_ID` bigint(19) NOT NULL default '0',
  `NAME` varchar(30) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`ENTEVENTCATOPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entityeventcatopt`
--

/*!40000 ALTER TABLE `entityeventcatopt` DISABLE KEYS */;
/*!40000 ALTER TABLE `entityeventcatopt` ENABLE KEYS */;


--
-- Definition of table `entityrole`
--

DROP TABLE IF EXISTS `entityrole`;
CREATE TABLE `entityrole` (
  `ENTITY_ROLE_ID` bigint(19) NOT NULL default '0',
  `ROLE_TP_CD` bigint(19) default NULL,
  `CONTXT_ENTITY_NAME` varchar(30) default NULL,
  `CONTXT_INSTANCE_PK` bigint(19) default NULL,
  `ROLE_ENTITY_NAME` varchar(30) default NULL,
  `ROLE_INSTANCE_PK` bigint(19) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `DESCRIPTION` varchar(255) default NULL,
  `END_REASON_TP_CD` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`ENTITY_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entityrole`
--

/*!40000 ALTER TABLE `entityrole` DISABLE KEYS */;
/*!40000 ALTER TABLE `entityrole` ENABLE KEYS */;


--
-- Definition of table `errreason`
--

DROP TABLE IF EXISTS `errreason`;
CREATE TABLE `errreason` (
  `ERR_REASON_TP_CD` bigint(19) NOT NULL default '0',
  `COMPONENT_TYPE_ID` bigint(19) default NULL,
  `ERR_TYPE_CD` varchar(10) default NULL,
  `ERR_MESSAGE_TP_CD` bigint(19) default NULL,
  `ERR_SEVERITY_TP_CD` bigint(19) default NULL,
  `HELP_ID` varchar(10) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`ERR_REASON_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `errreason`
--

/*!40000 ALTER TABLE `errreason` DISABLE KEYS */;
/*!40000 ALTER TABLE `errreason` ENABLE KEYS */;


--
-- Definition of table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `EVENT_ID` bigint(19) NOT NULL default '0',
  `EVENTDEF_TP_CD` bigint(19) default NULL,
  `PROCESSACTION_ID` bigint(19) default NULL,
  `NOTIF_EFFECT_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `EVENT_TRIGGER` varchar(20) default NULL,
  `CREATED_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `DESCRIPTION` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`EVENT_ID`),
  KEY `PROCESSACTION_ID` (`PROCESSACTION_ID`),
  CONSTRAINT `event_ibfk_1` FOREIGN KEY (`PROCESSACTION_ID`) REFERENCES `processaction` (`PROCESSACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;


--
-- Definition of table `eventdefextrule`
--

DROP TABLE IF EXISTS `eventdefextrule`;
CREATE TABLE `eventdefextrule` (
  `EVENTDEFEXTRULE_ID` bigint(19) NOT NULL default '0',
  `RULE_ID` varchar(10) default NULL,
  `EVENTDEF_TP_CD` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`EVENTDEFEXTRULE_ID`),
  KEY `RULE_ID` (`RULE_ID`),
  CONSTRAINT `eventdefextrule_ibfk_1` FOREIGN KEY (`RULE_ID`) REFERENCES `extrule` (`RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eventdefextrule`
--

/*!40000 ALTER TABLE `eventdefextrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventdefextrule` ENABLE KEYS */;


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
  `OBJECT_SCHEMA` varchar(128) default NULL,
  `OBJECT_NAME` varchar(128) default NULL,
  `OBJECT_TYPE` char(2) default NULL,
  `CREATE_TIME` timestamp NOT NULL default '0000-00-00 00:00:00',
  `STATISTICS_TIME` timestamp NOT NULL default '0000-00-00 00:00:00',
  `COLUMN_COUNT` smallint(5) default NULL,
  `ROW_COUNT_1` bigint(19) default NULL,
  `WIDTH` int(10) default NULL,
  `PAGES` bigint(19) default NULL,
  `DISTINCT_1` char(1) default NULL,
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
  `NUM_DATA_PARTS` int(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `explain_object`
--

/*!40000 ALTER TABLE `explain_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `explain_object` ENABLE KEYS */;


--
-- Definition of table `extensionset`
--

DROP TABLE IF EXISTS `extensionset`;
CREATE TABLE `extensionset` (
  `EXTENSION_SET_ID` bigint(19) NOT NULL default '0',
  `EXT_SET_NAME` varchar(120) default NULL,
  `EXT_SET_DESC` varchar(255) default NULL,
  `JAVA_CLASS_NAME` varchar(100) default NULL,
  `RULE_SET_NAME` varchar(1000) default NULL,
  `DWL_PROD_TP_CD` bigint(19) default NULL,
  `DWL_EXTENSION_IND` char(1) default NULL,
  `ASSERT_RULE_TP_CD` bigint(19) default NULL,
  `INACTIVE_IND` char(1) default NULL,
  `PRIORITY` smallint(5) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`EXTENSION_SET_ID`),
  KEY `ASSERT_RULE_TP_CD` (`ASSERT_RULE_TP_CD`),
  KEY `DWL_PROD_TP_CD` (`DWL_PROD_TP_CD`),
  CONSTRAINT `extensionset_ibfk_1` FOREIGN KEY (`ASSERT_RULE_TP_CD`) REFERENCES `cdassertruletp` (`ASSERT_RULE_TP_CD`),
  CONSTRAINT `extensionset_ibfk_2` FOREIGN KEY (`DWL_PROD_TP_CD`) REFERENCES `cddwlproducttp` (`DWL_PROD_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extensionset`
--

/*!40000 ALTER TABLE `extensionset` DISABLE KEYS */;
/*!40000 ALTER TABLE `extensionset` ENABLE KEYS */;


--
-- Definition of table `extrule`
--

DROP TABLE IF EXISTS `extrule`;
CREATE TABLE `extrule` (
  `RULE_ID` varchar(10) NOT NULL default '',
  `RULE_DESCRIPTION` varchar(1000) default NULL,
  `INPUT_PARAM_DESC` varchar(255) default NULL,
  `OUTPUT_PARAM_DESC` varchar(255) default NULL,
  `COMP_OBJECT_DESC` varchar(255) default NULL,
  `CREATED_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`RULE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extrule`
--

/*!40000 ALTER TABLE `extrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `extrule` ENABLE KEYS */;


--
-- Definition of table `extruleimplem`
--

DROP TABLE IF EXISTS `extruleimplem`;
CREATE TABLE `extruleimplem` (
  `EXT_RULE_IMPL_ID` bigint(19) NOT NULL default '0',
  `RULE_ID` varchar(10) default NULL,
  `EXT_RULE_TP_CODE` char(1) default NULL,
  `RULE_IN_FORCE_IND` char(1) default NULL,
  `IMPL_ORDER` smallint(5) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`EXT_RULE_IMPL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extruleimplem`
--

/*!40000 ALTER TABLE `extruleimplem` DISABLE KEYS */;
/*!40000 ALTER TABLE `extruleimplem` ENABLE KEYS */;


--
-- Definition of table `extsetcondval`
--

DROP TABLE IF EXISTS `extsetcondval`;
CREATE TABLE `extsetcondval` (
  `EXTSET_CONDVAL_ID` bigint(19) NOT NULL default '0',
  `COND_VAL_TP_CD` bigint(19) default NULL,
  `EXTENSION_SET_ID` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`EXTSET_CONDVAL_ID`),
  KEY `EXTENSION_SET_ID` (`EXTENSION_SET_ID`),
  CONSTRAINT `extsetcondval_ibfk_1` FOREIGN KEY (`EXTENSION_SET_ID`) REFERENCES `extensionset` (`EXTENSION_SET_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extsetcondval`
--

/*!40000 ALTER TABLE `extsetcondval` DISABLE KEYS */;
/*!40000 ALTER TABLE `extsetcondval` ENABLE KEYS */;


--
-- Definition of table `genericmetadata`
--

DROP TABLE IF EXISTS `genericmetadata`;
CREATE TABLE `genericmetadata` (
  `METADATAITEM_XMETA` varchar(64) default NULL,
  `REFFROM_METADATAITEM_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genericmetadata`
--

/*!40000 ALTER TABLE `genericmetadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `genericmetadata` ENABLE KEYS */;


--
-- Definition of table `genericmetadata_xmetagen`
--

DROP TABLE IF EXISTS `genericmetadata_xmetagen`;
CREATE TABLE `genericmetadata_xmetagen` (
  `METADATAITEM_XMETA` varchar(64) default NULL,
  `REFFROM_METADATAITEM_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genericmetadata_xmetagen`
--

/*!40000 ALTER TABLE `genericmetadata_xmetagen` DISABLE KEYS */;
/*!40000 ALTER TABLE `genericmetadata_xmetagen` ENABLE KEYS */;


--
-- Definition of table `genericmetadata_xmetagen_binarycontentblock_metadataitem`
--

DROP TABLE IF EXISTS `genericmetadata_xmetagen_binarycontentblock_metadataitem`;
CREATE TABLE `genericmetadata_xmetagen_binarycontentblock_metadataitem` (
  `METADATAITEM_XMETA` varchar(64) default NULL,
  `REFFROM_METADATAITEM_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genericmetadata_xmetagen_binarycontentblock_metadataitem`
--

/*!40000 ALTER TABLE `genericmetadata_xmetagen_binarycontentblock_metadataitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `genericmetadata_xmetagen_binarycontentblock_metadataitem` ENABLE KEYS */;


--
-- Definition of table `genericmetadata_xmetagen_binarycontentblock_metadataitem_reffrom`
--

DROP TABLE IF EXISTS `genericmetadata_xmetagen_binarycontentblock_metadataitem_reffrom`;
CREATE TABLE `genericmetadata_xmetagen_binarycontentblock_metadataitem_reffrom` (
  `METADATAITEM_XMETA` varchar(64) default NULL,
  `REFFROM_METADATAITEM_XMETA` varchar(64) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genericmetadata_xmetagen_binarycontentblock_metadataitem_reffrom`
--

/*!40000 ALTER TABLE `genericmetadata_xmetagen_binarycontentblock_metadataitem_reffrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `genericmetadata_xmetagen_binarycontentblock_metadataitem_reffrom` ENABLE KEYS */;


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
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gov_change_document`
--

/*!40000 ALTER TABLE `gov_change_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `gov_change_document` ENABLE KEYS */;


--
-- Definition of table `groupaccess`
--

DROP TABLE IF EXISTS `groupaccess`;
CREATE TABLE `groupaccess` (
  `GROUP_ACCESS_ID` bigint(19) NOT NULL default '0',
  `GROUP_PROFILE_ID` bigint(19) default NULL,
  `BUSINESS_TX_TP_CD` bigint(19) default NULL,
  `ACTIVE_IND` char(1) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`GROUP_ACCESS_ID`),
  KEY `BUSINESS_TX_TP_CD` (`BUSINESS_TX_TP_CD`),
  KEY `GROUP_PROFILE_ID` (`GROUP_PROFILE_ID`),
  CONSTRAINT `groupaccess_ibfk_1` FOREIGN KEY (`BUSINESS_TX_TP_CD`) REFERENCES `cdbusinesstxtp` (`BUSINESS_TX_TP_CD`),
  CONSTRAINT `groupaccess_ibfk_2` FOREIGN KEY (`GROUP_PROFILE_ID`) REFERENCES `groupprofile` (`GROUP_PROFILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groupaccess`
--

/*!40000 ALTER TABLE `groupaccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupaccess` ENABLE KEYS */;


--
-- Definition of table `groupaccesstoken`
--

DROP TABLE IF EXISTS `groupaccesstoken`;
CREATE TABLE `groupaccesstoken` (
  `GROUP_ACC_TOKEN_ID` bigint(19) NOT NULL default '0',
  `ACCESS_TOKEN_ID` bigint(19) default NULL,
  `GROUP_PROFILE_ID` bigint(19) default NULL,
  `DEFAULT_IND` char(1) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`GROUP_ACC_TOKEN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groupaccesstoken`
--

/*!40000 ALTER TABLE `groupaccesstoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupaccesstoken` ENABLE KEYS */;


--
-- Definition of table `groupalias`
--

DROP TABLE IF EXISTS `groupalias`;
CREATE TABLE `groupalias` (
  `GROUP_ALIAS_ID` bigint(19) NOT NULL default '0',
  `APPLICATION` varchar(50) default NULL,
  `GROUP_NAME` varchar(50) default NULL,
  `DATA_OWNER_ID` bigint(19) default NULL,
  `GROUP_ALIAS_NAME` varchar(50) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`GROUP_ALIAS_ID`),
  KEY `groupalias_ibfk_1` USING BTREE (`DATA_OWNER_ID`),
  KEY `groupalias_ibfk_2` USING BTREE (`APPLICATION`,`GROUP_NAME`),
  CONSTRAINT `groupalias_ibfk_1` FOREIGN KEY (`DATA_OWNER_ID`) REFERENCES `dataowner` (`DATA_OWNER_ID`),
  CONSTRAINT `groupalias_ibfk_2` FOREIGN KEY (`APPLICATION`, `GROUP_NAME`) REFERENCES `v_group` (`APPLICATION`, `GROUP_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groupalias`
--

/*!40000 ALTER TABLE `groupalias` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupalias` ENABLE KEYS */;


--
-- Definition of table `groupdwltable`
--

DROP TABLE IF EXISTS `groupdwltable`;
CREATE TABLE `groupdwltable` (
  `GROUP_DWLTABLE_ID` bigint(19) NOT NULL default '0',
  `APPLICATION` varchar(50) default NULL,
  `GROUP_NAME` varchar(50) default NULL,
  `DWLTABLE_TP_CD` bigint(19) default NULL,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`GROUP_DWLTABLE_ID`),
  KEY `groupdwltable_ibfk_1` USING BTREE (`DWLTABLE_TP_CD`),
  KEY `groupdwltable_ibfk_2` USING BTREE (`APPLICATION`,`GROUP_NAME`),
  CONSTRAINT `groupdwltable_ibfk_1` FOREIGN KEY (`DWLTABLE_TP_CD`) REFERENCES `cddwltabletp` (`DWLTABLE_TP_CD`),
  CONSTRAINT `groupdwltable_ibfk_2` FOREIGN KEY (`APPLICATION`, `GROUP_NAME`) REFERENCES `v_group` (`APPLICATION`, `GROUP_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groupdwltable`
--

/*!40000 ALTER TABLE `groupdwltable` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupdwltable` ENABLE KEYS */;


--
-- Definition of table `grouping`
--

DROP TABLE IF EXISTS `grouping`;
CREATE TABLE `grouping` (
  `GROUPING_ID` bigint(19) NOT NULL default '0',
  `GROUPING_TP_CD` bigint(19) default NULL,
  `ENTITY_NAME` varchar(20) default NULL,
  `NAME` varchar(30) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`GROUPING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grouping`
--

/*!40000 ALTER TABLE `grouping` DISABLE KEYS */;
/*!40000 ALTER TABLE `grouping` ENABLE KEYS */;


--
-- Definition of table `groupingassoc`
--

DROP TABLE IF EXISTS `groupingassoc`;
CREATE TABLE `groupingassoc` (
  `GROUPING_ASSOC_ID` bigint(19) NOT NULL default '0',
  `INSTANCE_PK` bigint(19) default NULL,
  `GROUPING_ID` bigint(19) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EFFECT_START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `EFFECT_END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`GROUPING_ASSOC_ID`),
  KEY `GROUPING_ID` (`GROUPING_ID`),
  CONSTRAINT `groupingassoc_ibfk_1` FOREIGN KEY (`GROUPING_ID`) REFERENCES `grouping` (`GROUPING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groupingassoc`
--

/*!40000 ALTER TABLE `groupingassoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupingassoc` ENABLE KEYS */;


--
-- Definition of table `groupprofile`
--

DROP TABLE IF EXISTS `groupprofile`;
CREATE TABLE `groupprofile` (
  `GROUP_PROFILE_ID` bigint(19) NOT NULL default '0',
  `GROUP_NAME` varchar(80) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`GROUP_PROFILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groupprofile`
--

/*!40000 ALTER TABLE `groupprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupprofile` ENABLE KEYS */;


--
-- Definition of table `hierarchy`
--

DROP TABLE IF EXISTS `hierarchy`;
CREATE TABLE `hierarchy` (
  `HIERARCHY_ID` bigint(19) NOT NULL default '0',
  `NAME` varchar(30) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `HIERARCHY_TP_CD` bigint(19) default NULL,
  PRIMARY KEY  (`HIERARCHY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hierarchy`
--

/*!40000 ALTER TABLE `hierarchy` DISABLE KEYS */;
/*!40000 ALTER TABLE `hierarchy` ENABLE KEYS */;


--
-- Definition of table `hierarchynode`
--

DROP TABLE IF EXISTS `hierarchynode`;
CREATE TABLE `hierarchynode` (
  `HIERARCHY_NODE_ID` bigint(19) NOT NULL default '0',
  `HIERARCHY_ID` bigint(19) default NULL,
  `ENTITY_NAME` varchar(20) default NULL,
  `INSTANCE_PK` bigint(19) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `NODEDESIG_TP_CD` bigint(19) default NULL,
  `LOCALEDESCRIPTION` varchar(255) default NULL,
  PRIMARY KEY  (`HIERARCHY_NODE_ID`),
  KEY `HIERARCHY_ID` (`HIERARCHY_ID`),
  CONSTRAINT `hierarchynode_ibfk_1` FOREIGN KEY (`HIERARCHY_ID`) REFERENCES `hierarchy` (`HIERARCHY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hierarchynode`
--

/*!40000 ALTER TABLE `hierarchynode` DISABLE KEYS */;
/*!40000 ALTER TABLE `hierarchynode` ENABLE KEYS */;


--
-- Definition of table `hierarchyrel`
--

DROP TABLE IF EXISTS `hierarchyrel`;
CREATE TABLE `hierarchyrel` (
  `HIERARCHY_REL_ID` bigint(19) NOT NULL default '0',
  `PARENT_NODE_ID` bigint(19) default NULL,
  `CHILD_NODE_ID` bigint(19) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`HIERARCHY_REL_ID`),
  KEY `PARENT_NODE_ID` (`PARENT_NODE_ID`),
  KEY `CHILD_NODE_ID` (`CHILD_NODE_ID`),
  CONSTRAINT `hierarchyrel_ibfk_1` FOREIGN KEY (`PARENT_NODE_ID`) REFERENCES `hierarchynode` (`HIERARCHY_NODE_ID`),
  CONSTRAINT `hierarchyrel_ibfk_2` FOREIGN KEY (`CHILD_NODE_ID`) REFERENCES `hierarchynode` (`HIERARCHY_NODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hierarchyrel`
--

/*!40000 ALTER TABLE `hierarchyrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `hierarchyrel` ENABLE KEYS */;


--
-- Definition of table `hierarchyultpar`
--

DROP TABLE IF EXISTS `hierarchyultpar`;
CREATE TABLE `hierarchyultpar` (
  `HIER_ULT_PAR_ID` bigint(19) NOT NULL default '0',
  `HIERARCHY_NODE_ID` bigint(19) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`HIER_ULT_PAR_ID`),
  KEY `HIERARCHY_NODE_ID` (`HIERARCHY_NODE_ID`),
  CONSTRAINT `hierarchyultpar_ibfk_1` FOREIGN KEY (`HIERARCHY_NODE_ID`) REFERENCES `hierarchynode` (`HIERARCHY_NODE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hierarchyultpar`
--

/*!40000 ALTER TABLE `hierarchyultpar` DISABLE KEYS */;
/*!40000 ALTER TABLE `hierarchyultpar` ENABLE KEYS */;


--
-- Definition of table `holding`
--

DROP TABLE IF EXISTS `holding`;
CREATE TABLE `holding` (
  `HOLDING_ID` bigint(19) NOT NULL default '0',
  `HOLD_TP_CD` bigint(19) default NULL,
  `HOLDING_CODE` char(1) default NULL,
  `HOLDING_VALUE_AMT` decimal(17,0) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `VALUAMT_CUR_TP` bigint(19) default NULL,
  PRIMARY KEY  (`HOLDING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `holding`
--

/*!40000 ALTER TABLE `holding` DISABLE KEYS */;
/*!40000 ALTER TABLE `holding` ENABLE KEYS */;


--
-- Definition of table `identifier`
--

DROP TABLE IF EXISTS `identifier`;
CREATE TABLE `identifier` (
  `IDENTIFIER_ID` bigint(19) NOT NULL default '0',
  `ID_STATUS_TP_CD` bigint(19) default NULL,
  `CONT_ID` bigint(19) default NULL,
  `ID_TP_CD` bigint(19) default NULL,
  `REF_NUM` varchar(50) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `EXPIRY_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `ASSIGNED_BY` bigint(19) default NULL,
  `IDENTIFIER_DESC` varchar(255) default NULL,
  `ISSUE_LOCATION` varchar(30) default NULL,
  `LAST_USED_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_VERIFIED_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `SOURCE_IDENT_TP_CD` bigint(19) default NULL,
  PRIMARY KEY  (`IDENTIFIER_ID`),
  KEY `CONT_ID` (`CONT_ID`),
  KEY `ASSIGNED_BY` (`ASSIGNED_BY`),
  CONSTRAINT `identifier_ibfk_1` FOREIGN KEY (`CONT_ID`) REFERENCES `contact` (`CONT_ID`),
  CONSTRAINT `identifier_ibfk_2` FOREIGN KEY (`ASSIGNED_BY`) REFERENCES `contact` (`CONT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `identifier`
--

/*!40000 ALTER TABLE `identifier` DISABLE KEYS */;
/*!40000 ALTER TABLE `identifier` ENABLE KEYS */;


--
-- Definition of table `inactivatedcont`
--

DROP TABLE IF EXISTS `inactivatedcont`;
CREATE TABLE `inactivatedcont` (
  `CONT_ID` bigint(19) NOT NULL default '0',
  `INACT_BY_USER` varchar(20) default NULL,
  `INACT_REASON_TP_CD` bigint(19) default NULL,
  `COMMENTS` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`CONT_ID`),
  CONSTRAINT `inactivatedcont_ibfk_1` FOREIGN KEY (`CONT_ID`) REFERENCES `contact` (`CONT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inactivatedcont`
--

/*!40000 ALTER TABLE `inactivatedcont` DISABLE KEYS */;
/*!40000 ALTER TABLE `inactivatedcont` ENABLE KEYS */;


--
-- Definition of table `inactivecontlink`
--

DROP TABLE IF EXISTS `inactivecontlink`;
CREATE TABLE `inactivecontlink` (
  `INACT_CONT_LINK_ID` bigint(19) NOT NULL default '0',
  `TARGET_CONT_ID` bigint(19) default NULL,
  `SOURCE_CONT_ID` bigint(19) default NULL,
  `LINK_REASON_TP_CD` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`INACT_CONT_LINK_ID`),
  KEY `TARGET_CONT_ID` (`TARGET_CONT_ID`),
  CONSTRAINT `inactivecontlink_ibfk_1` FOREIGN KEY (`TARGET_CONT_ID`) REFERENCES `contact` (`CONT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inactivecontlink`
--

/*!40000 ALTER TABLE `inactivecontlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `inactivecontlink` ENABLE KEYS */;


--
-- Definition of table `incomesource`
--

DROP TABLE IF EXISTS `incomesource`;
CREATE TABLE `incomesource` (
  `INCOME_SOURCE_ID` bigint(19) NOT NULL default '0',
  `CURRENCY_TP_CD` bigint(19) default NULL,
  `CONT_ID` bigint(19) default NULL,
  `INCOME_SRC_TP_CD` bigint(19) default NULL,
  `INCOME_SOURCE_DESC` varchar(255) default NULL,
  `ANNUAL_AMT` decimal(17,0) default NULL,
  `INVEST_EXPER_YRS` smallint(5) default NULL,
  `INFO_OBTAINED_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`INCOME_SOURCE_ID`),
  KEY `CONT_ID` (`CONT_ID`),
  CONSTRAINT `incomesource_ibfk_1` FOREIGN KEY (`CONT_ID`) REFERENCES `contact` (`CONT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `incomesource`
--

/*!40000 ALTER TABLE `incomesource` DISABLE KEYS */;
/*!40000 ALTER TABLE `incomesource` ENABLE KEYS */;


--
-- Definition of table `inqlvl`
--

DROP TABLE IF EXISTS `inqlvl`;
CREATE TABLE `inqlvl` (
  `INQLVL_ID` bigint(19) NOT NULL default '0',
  `APPLICATION` varchar(50) default NULL,
  `GROUP_NAME` varchar(50) default NULL,
  `INQLVL` smallint(5) default NULL,
  `CUMULATIVE_IND` char(1) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`INQLVL_ID`),
  KEY `inqlvl_ibfk_1` USING BTREE (`APPLICATION`,`GROUP_NAME`),
  CONSTRAINT `inqlvl_ibfk_1` FOREIGN KEY (`APPLICATION`, `GROUP_NAME`) REFERENCES `v_group` (`APPLICATION`, `GROUP_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inqlvl`
--

/*!40000 ALTER TABLE `inqlvl` DISABLE KEYS */;
/*!40000 ALTER TABLE `inqlvl` ENABLE KEYS */;


--
-- Definition of table `inqlvlgrp`
--

DROP TABLE IF EXISTS `inqlvlgrp`;
CREATE TABLE `inqlvlgrp` (
  `INQLVLGRP_ID` bigint(19) NOT NULL default '0',
  `APPLICATION` varchar(50) default NULL,
  `GROUP_NAME` varchar(50) default NULL,
  `INQLVL_ID` bigint(19) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`INQLVLGRP_ID`),
  KEY `inqlvlgrp_ibfk_1` USING BTREE (`INQLVL_ID`),
  KEY `inqlvlgrp_ibfk_2` USING BTREE (`APPLICATION`,`GROUP_NAME`),
  CONSTRAINT `inqlvlgrp_ibfk_1` FOREIGN KEY (`INQLVL_ID`) REFERENCES `inqlvl` (`INQLVL_ID`),
  CONSTRAINT `inqlvlgrp_ibfk_2` FOREIGN KEY (`APPLICATION`, `GROUP_NAME`) REFERENCES `v_group` (`APPLICATION`, `GROUP_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inqlvlgrp`
--

/*!40000 ALTER TABLE `inqlvlgrp` DISABLE KEYS */;
/*!40000 ALTER TABLE `inqlvlgrp` ENABLE KEYS */;


--
-- Definition of table `interaction`
--

DROP TABLE IF EXISTS `interaction`;
CREATE TABLE `interaction` (
  `INTERACTION_ID` bigint(19) NOT NULL default '0',
  `RECORDED_BY_USER` varchar(255) default NULL,
  `INTERACT_PT_TP_CD` bigint(19) default NULL,
  `RECORDED_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `SUBJECT_DESC` varchar(100) default NULL,
  `NOTE_DESC` varchar(1000) default NULL,
  `INTERACT_PARTY` varchar(255) default NULL,
  `INTERACT_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `INVALID_IND` char(1) default NULL,
  `INTERACT_ST_TP_CD` bigint(19) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `INTERACT_RESP_TP` bigint(19) default NULL,
  `ENTITY_NAME` varchar(20) default NULL,
  `INSTANCE_PK` bigint(19) default NULL,
  `INTERACT_TP_CD` bigint(19) default NULL,
  PRIMARY KEY  (`INTERACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `interaction`
--

/*!40000 ALTER TABLE `interaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `interaction` ENABLE KEYS */;


--
-- Definition of table `interactionrel`
--

DROP TABLE IF EXISTS `interactionrel`;
CREATE TABLE `interactionrel` (
  `INTERACT_REL_ID` bigint(19) NOT NULL default '0',
  `FROM_INTERACT_ID` bigint(19) default NULL,
  `TO_INTERACT_ID` bigint(19) default NULL,
  `INTERACT_REL_TP_CD` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`INTERACT_REL_ID`),
  KEY `TO_INTERACT_ID` (`TO_INTERACT_ID`),
  KEY `FROM_INTERACT_ID` (`FROM_INTERACT_ID`),
  CONSTRAINT `interactionrel_ibfk_1` FOREIGN KEY (`TO_INTERACT_ID`) REFERENCES `interaction` (`INTERACTION_ID`),
  CONSTRAINT `interactionrel_ibfk_2` FOREIGN KEY (`FROM_INTERACT_ID`) REFERENCES `interaction` (`INTERACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `interactionrel`
--

/*!40000 ALTER TABLE `interactionrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `interactionrel` ENABLE KEYS */;


--
-- Definition of table `internallog`
--

DROP TABLE IF EXISTS `internallog`;
CREATE TABLE `internallog` (
  `INTERNAL_LOG_ID` bigint(19) NOT NULL default '0',
  `TX_LOG_ID` bigint(19) default NULL,
  `INTERNAL_BUS_TX_TP` bigint(19) default NULL,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`INTERNAL_LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `internallog`
--

/*!40000 ALTER TABLE `internallog` DISABLE KEYS */;
/*!40000 ALTER TABLE `internallog` ENABLE KEYS */;


--
-- Definition of table `internallogtxnkey`
--

DROP TABLE IF EXISTS `internallogtxnkey`;
CREATE TABLE `internallogtxnkey` (
  `INTERN_LOG_KEY_ID` bigint(19) NOT NULL default '0',
  `INTERNAL_LOG_ID` bigint(19) default NULL,
  `INTERN_TX_KEY_ID` bigint(19) default NULL,
  `ELEMENT_VALUE` varchar(1000) default NULL,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`INTERN_LOG_KEY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `internallogtxnkey`
--

/*!40000 ALTER TABLE `internallogtxnkey` DISABLE KEYS */;
/*!40000 ALTER TABLE `internallogtxnkey` ENABLE KEYS */;


--
-- Definition of table `internaltxnkey`
--

DROP TABLE IF EXISTS `internaltxnkey`;
CREATE TABLE `internaltxnkey` (
  `INTERN_TX_KEY_ID` bigint(19) NOT NULL default '0',
  `INTERNAL_BUS_TX_TP` bigint(19) default NULL,
  `APPLICATION` varchar(50) default NULL,
  `GROUP_NAME` varchar(50) default NULL,
  `ELEMENT_NAME` varchar(50) default NULL,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`INTERN_TX_KEY_ID`),
  KEY `internaltxnkey_ibfk_1` USING BTREE (`INTERNAL_BUS_TX_TP`),
  KEY `internaltxnkey_ibfk_2` USING BTREE (`APPLICATION`,`GROUP_NAME`,`ELEMENT_NAME`),
  CONSTRAINT `internaltxnkey_ibfk_1` FOREIGN KEY (`INTERNAL_BUS_TX_TP`) REFERENCES `cdinternaltxntp` (`INTERNAL_BUS_TX_TP`),
  CONSTRAINT `internaltxnkey_ibfk_2` FOREIGN KEY (`APPLICATION`, `GROUP_NAME`, `ELEMENT_NAME`) REFERENCES `v_element` (`APPLICATION`, `GROUP_NAME`, `ELEMENT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `internaltxnkey`
--

/*!40000 ALTER TABLE `internaltxnkey` DISABLE KEYS */;
/*!40000 ALTER TABLE `internaltxnkey` ENABLE KEYS */;


--
-- Definition of table `javaimpl`
--

DROP TABLE IF EXISTS `javaimpl`;
CREATE TABLE `javaimpl` (
  `EXT_RULE_IMPL_ID` bigint(19) NOT NULL default '0',
  `JAVA_CLASSNAME` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`EXT_RULE_IMPL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `javaimpl`
--

/*!40000 ALTER TABLE `javaimpl` DISABLE KEYS */;
/*!40000 ALTER TABLE `javaimpl` ENABLE KEYS */;


--
-- Definition of table `list`
--

DROP TABLE IF EXISTS `list`;
CREATE TABLE `list` (
  `LIST` varchar(254) NOT NULL default '',
  PRIMARY KEY  (`LIST`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `list`
--

/*!40000 ALTER TABLE `list` DISABLE KEYS */;
/*!40000 ALTER TABLE `list` ENABLE KEYS */;


--
-- Definition of table `lobrel`
--

DROP TABLE IF EXISTS `lobrel`;
CREATE TABLE `lobrel` (
  `LOB_REL_ID` bigint(19) NOT NULL default '0',
  `ENTITY_NAME` varchar(20) default NULL,
  `INSTANCE_PK` bigint(19) default NULL,
  `LOB_TP_CD` bigint(19) default NULL,
  `LOB_REL_TP_CD` bigint(19) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`LOB_REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lobrel`
--

/*!40000 ALTER TABLE `lobrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `lobrel` ENABLE KEYS */;


--
-- Definition of table `locationgroup`
--

DROP TABLE IF EXISTS `locationgroup`;
CREATE TABLE `locationgroup` (
  `LOCATION_GROUP_ID` bigint(19) NOT NULL default '0',
  `UNDEL_REASON_TP_CD` bigint(19) default NULL,
  `CONT_ID` bigint(19) default NULL,
  `MEMBER_IND` char(1) default NULL,
  `PREFERRED_IND` char(1) default NULL,
  `SOLICIT_IND` char(1) default NULL,
  `LOC_GROUP_TP_CODE` char(1) default NULL,
  `EFFECT_START_MMDD` smallint(5) default NULL,
  `EFFECT_END_MMDD` smallint(5) default NULL,
  `EFFECT_START_TM` int(10) default NULL,
  `EFFECT_END_TM` int(10) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `LAST_USED_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_VERIFIED_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `SOURCE_IDENT_TP_CD` bigint(19) default NULL,
  PRIMARY KEY  (`LOCATION_GROUP_ID`),
  KEY `CONT_ID` (`CONT_ID`),
  CONSTRAINT `locationgroup_ibfk_1` FOREIGN KEY (`CONT_ID`) REFERENCES `contact` (`CONT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locationgroup`
--

/*!40000 ALTER TABLE `locationgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `locationgroup` ENABLE KEYS */;


--
-- Definition of table `macroroleassoc`
--

DROP TABLE IF EXISTS `macroroleassoc`;
CREATE TABLE `macroroleassoc` (
  `MACROROLE_ASSOC_ID` bigint(19) NOT NULL default '0',
  `CONT_MACRO_ROLE_ID` bigint(19) default NULL,
  `ENTITY_NAME` varchar(30) default NULL,
  `INSTANCE_PK` bigint(19) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `END_REASON_TP_CD` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`MACROROLE_ASSOC_ID`),
  KEY `CONT_MACRO_ROLE_ID` (`CONT_MACRO_ROLE_ID`),
  CONSTRAINT `macroroleassoc_ibfk_1` FOREIGN KEY (`CONT_MACRO_ROLE_ID`) REFERENCES `contmacrorole` (`CONT_MACRO_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `macroroleassoc`
--

/*!40000 ALTER TABLE `macroroleassoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `macroroleassoc` ENABLE KEYS */;


--
-- Definition of table `miscvalue`
--

DROP TABLE IF EXISTS `miscvalue`;
CREATE TABLE `miscvalue` (
  `MISCVALUE_ID` bigint(19) NOT NULL default '0',
  `INSTANCE_PK` bigint(19) default NULL,
  `ENTITY_NAME` varchar(20) default NULL,
  `MISCVALUE_TP_CD` bigint(19) default NULL,
  `VALUE_STRING` varchar(150) default NULL,
  `PRIORITY_TP_CD` bigint(19) default NULL,
  `SOURCE_IDENT_TP_CD` bigint(19) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `VALUEATTR_TP_CD_0` bigint(19) default NULL,
  `ATTR0_VALUE` varchar(150) default NULL,
  `VALUEATTR_TP_CD_1` bigint(19) default NULL,
  `ATTR1_VALUE` varchar(150) default NULL,
  `VALUEATTR_TP_CD_2` bigint(19) default NULL,
  `ATTR2_VALUE` varchar(150) default NULL,
  `VALUEATTR_TP_CD_3` bigint(19) default NULL,
  `ATTR3_VALUE` varchar(150) default NULL,
  `VALUEATTR_TP_CD_4` bigint(19) default NULL,
  `ATTR4_VALUE` varchar(150) default NULL,
  `VALUEATTR_TP_CD_5` bigint(19) default NULL,
  `ATTR5_VALUE` varchar(150) default NULL,
  `VALUEATTR_TP_CD_6` bigint(19) default NULL,
  `ATTR6_VALUE` varchar(150) default NULL,
  `VALUEATTR_TP_CD_7` bigint(19) default NULL,
  `ATTR7_VALUE` varchar(150) default NULL,
  `VALUEATTR_TP_CD_8` bigint(19) default NULL,
  `ATTR8_VALUE` varchar(150) default NULL,
  `VALUEATTR_TP_CD_9` bigint(19) default NULL,
  `ATTR9_VALUE` varchar(150) default NULL,
  PRIMARY KEY  (`MISCVALUE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `miscvalue`
--

/*!40000 ALTER TABLE `miscvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `miscvalue` ENABLE KEYS */;


--
-- Definition of table `nativekey`
--

DROP TABLE IF EXISTS `nativekey`;
CREATE TABLE `nativekey` (
  `NATIVE_KEY_ID` bigint(19) NOT NULL default '0',
  `ADMIN_CONTRACT_ID` varchar(150) default NULL,
  `CONTRACT_ID` bigint(19) default NULL,
  `ADMIN_FLD_NM_TP_CD` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `CONTRACT_COMP_IND` char(1) default NULL,
  PRIMARY KEY  (`NATIVE_KEY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nativekey`
--

/*!40000 ALTER TABLE `nativekey` DISABLE KEYS */;
/*!40000 ALTER TABLE `nativekey` ENABLE KEYS */;


--
-- Definition of table `org`
--

DROP TABLE IF EXISTS `org`;
CREATE TABLE `org` (
  `CONT_ID` bigint(19) NOT NULL default '0',
  `ORG_TP_CD` bigint(19) default NULL,
  `INDUSTRY_TP_CD` bigint(19) default NULL,
  `ESTABLISHED_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `BUY_SELL_AGR_TP_CD` bigint(19) default NULL,
  `PROFIT_IND` char(1) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`CONT_ID`),
  CONSTRAINT `org_ibfk_1` FOREIGN KEY (`CONT_ID`) REFERENCES `contact` (`CONT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `org`
--

/*!40000 ALTER TABLE `org` DISABLE KEYS */;
/*!40000 ALTER TABLE `org` ENABLE KEYS */;


--
-- Definition of table `orgname`
--

DROP TABLE IF EXISTS `orgname`;
CREATE TABLE `orgname` (
  `ORG_NAME_ID` bigint(19) NOT NULL default '0',
  `ORG_NAME_TP_CD` bigint(19) default NULL,
  `CONT_ID` bigint(19) default NULL,
  `ORG_NAME` varchar(255) default NULL,
  `S_ORG_NAME` varchar(255) default NULL,
  `NAME_SEARCH_KEY` varchar(30) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `LAST_USED_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_VERIFIED_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `SOURCE_IDENT_TP_CD` bigint(19) default NULL,
  `P_ORG_NAME` varchar(20) default NULL,
  PRIMARY KEY  (`ORG_NAME_ID`),
  KEY `CONT_ID` (`CONT_ID`),
  CONSTRAINT `orgname_ibfk_1` FOREIGN KEY (`CONT_ID`) REFERENCES `org` (`CONT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orgname`
--

/*!40000 ALTER TABLE `orgname` DISABLE KEYS */;
/*!40000 ALTER TABLE `orgname` ENABLE KEYS */;


--
-- Definition of table `param_type`
--

DROP TABLE IF EXISTS `param_type`;
CREATE TABLE `param_type` (
  `PARAMETER_TP_CD` bigint(19) NOT NULL default '0',
  `OPERAND_TP_CD` bigint(19) default NULL,
  `NAME` varchar(120) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `MIN_PARAMS` smallint(5) default NULL,
  `MAX_PARAMS` smallint(5) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`PARAMETER_TP_CD`),
  KEY `OPERAND_TP_CD` (`OPERAND_TP_CD`),
  CONSTRAINT `param_type_ibfk_1` FOREIGN KEY (`OPERAND_TP_CD`) REFERENCES `cdoperandtp` (`OPERAND_TP_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `param_type`
--

/*!40000 ALTER TABLE `param_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `param_type` ENABLE KEYS */;


--
-- Definition of table `paymentsource`
--

DROP TABLE IF EXISTS `paymentsource`;
CREATE TABLE `paymentsource` (
  `PAYMENT_SOURCE_ID` bigint(19) NOT NULL default '0',
  `PAYMENT_SRC_CODE` char(1) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `CONT_ID` bigint(19) default NULL,
  PRIMARY KEY  (`PAYMENT_SOURCE_ID`),
  KEY `CONT_ID` (`CONT_ID`),
  CONSTRAINT `paymentsource_ibfk_1` FOREIGN KEY (`CONT_ID`) REFERENCES `contact` (`CONT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paymentsource`
--

/*!40000 ALTER TABLE `paymentsource` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymentsource` ENABLE KEYS */;


--
-- Definition of table `payrolldeduction`
--

DROP TABLE IF EXISTS `payrolldeduction`;
CREATE TABLE `payrolldeduction` (
  `PAYMENT_SOURCE_ID` bigint(19) NOT NULL default '0',
  `EMPLOYER_NAME` varchar(255) default NULL,
  `PAYROLL_NO` varchar(50) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`PAYMENT_SOURCE_ID`),
  CONSTRAINT `payrolldeduction_ibfk_1` FOREIGN KEY (`PAYMENT_SOURCE_ID`) REFERENCES `paymentsource` (`PAYMENT_SOURCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payrolldeduction`
--

/*!40000 ALTER TABLE `payrolldeduction` DISABLE KEYS */;
/*!40000 ALTER TABLE `payrolldeduction` ENABLE KEYS */;


--
-- Definition of table `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `CONT_ID` bigint(19) NOT NULL default '0',
  `MARITAL_ST_TP_CD` bigint(19) default NULL,
  `BIRTHPLACE_TP_CD` bigint(19) default NULL,
  `CITIZENSHIP_TP_CD` bigint(19) default NULL,
  `HIGHEST_EDU_TP_CD` bigint(19) default NULL,
  `AGE_VER_DOC_TP_CD` bigint(19) default NULL,
  `GENDER_TP_CODE` char(1) default NULL,
  `BIRTH_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `DECEASED_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `CHILDREN_CT` smallint(5) default NULL,
  `DISAB_START_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `DISAB_END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `USER_IND` char(1) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`CONT_ID`),
  CONSTRAINT `person_ibfk_1` FOREIGN KEY (`CONT_ID`) REFERENCES `contact` (`CONT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person`
--

/*!40000 ALTER TABLE `person` DISABLE KEYS */;
/*!40000 ALTER TABLE `person` ENABLE KEYS */;


--
-- Definition of table `personname`
--

DROP TABLE IF EXISTS `personname`;
CREATE TABLE `personname` (
  `PERSON_NAME_ID` bigint(19) NOT NULL default '0',
  `PREFIX_NAME_TP_CD` bigint(19) default NULL,
  `PREFIX_DESC` varchar(20) default NULL,
  `NAME_USAGE_TP_CD` bigint(19) default NULL,
  `GIVEN_NAME_ONE` varchar(25) default NULL,
  `GIVEN_NAME_TWO` varchar(25) default NULL,
  `GIVEN_NAME_THREE` varchar(25) default NULL,
  `GIVEN_NAME_FOUR` varchar(25) default NULL,
  `LAST_NAME` varchar(30) default NULL,
  `GENERATION_TP_CD` bigint(19) default NULL,
  `SUFFIX_DESC` varchar(20) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `CONT_ID` bigint(19) default NULL,
  `USE_STANDARD_IND` char(1) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `LAST_USED_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_VERIFIED_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `SOURCE_IDENT_TP_CD` bigint(19) default NULL,
  `P_LAST_NAME` varchar(20) default NULL,
  `P_GIVEN_NAME_ONE` varchar(20) default NULL,
  `P_GIVEN_NAME_TWO` varchar(20) default NULL,
  `P_GIVEN_NAME_THREE` varchar(20) default NULL,
  `P_GIVEN_NAME_FOUR` varchar(20) default NULL,
  PRIMARY KEY  (`PERSON_NAME_ID`),
  KEY `CONT_ID` (`CONT_ID`),
  CONSTRAINT `personname_ibfk_1` FOREIGN KEY (`CONT_ID`) REFERENCES `person` (`CONT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `personname`
--

/*!40000 ALTER TABLE `personname` DISABLE KEYS */;
/*!40000 ALTER TABLE `personname` ENABLE KEYS */;


--
-- Definition of table `personsearch`
--

DROP TABLE IF EXISTS `personsearch`;
CREATE TABLE `personsearch` (
  `PERSON_SEARCH_ID` bigint(19) NOT NULL default '0',
  `PERSON_NAME_ID` bigint(19) default NULL,
  `CONT_ID` bigint(19) default NULL,
  `GIVEN_NAME_ONE` varchar(25) default NULL,
  `GIVEN_NAME_TWO` varchar(25) default NULL,
  `GIVEN_NAME_THREE` varchar(25) default NULL,
  `GIVEN_NAME_FOUR` varchar(25) default NULL,
  `LAST_NAME` varchar(30) default NULL,
  `END_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`PERSON_SEARCH_ID`),
  KEY `CONT_ID` (`CONT_ID`),
  KEY `PERSON_NAME_ID` (`PERSON_NAME_ID`),
  CONSTRAINT `personsearch_ibfk_1` FOREIGN KEY (`CONT_ID`) REFERENCES `person` (`CONT_ID`),
  CONSTRAINT `personsearch_ibfk_2` FOREIGN KEY (`PERSON_NAME_ID`) REFERENCES `personname` (`PERSON_NAME_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `personsearch`
--

/*!40000 ALTER TABLE `personsearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `personsearch` ENABLE KEYS */;


--
-- Definition of table `pprefactionopt`
--

DROP TABLE IF EXISTS `pprefactionopt`;
CREATE TABLE `pprefactionopt` (
  `PPREF_ACT_OPT_ID` bigint(19) NOT NULL default '0',
  `PPREF_TP_CD` bigint(19) default NULL,
  `PPREF_ACTION_TP_CD` bigint(19) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`PPREF_ACT_OPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pprefactionopt`
--

/*!40000 ALTER TABLE `pprefactionopt` DISABLE KEYS */;
/*!40000 ALTER TABLE `pprefactionopt` ENABLE KEYS */;


--
-- Definition of table `pprefdef`
--

DROP TABLE IF EXISTS `pprefdef`;
CREATE TABLE `pprefdef` (
  `PPREF_ID` bigint(19) NOT NULL default '0',
  `PPREF_SEG_TP_CD` bigint(19) default NULL,
  `REGULATION_VALUE` varchar(255) default NULL,
  `DEFAULT_IND` char(1) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`PPREF_ID`),
  CONSTRAINT `pprefdef_ibfk_1` FOREIGN KEY (`PPREF_ID`) REFERENCES `privpref` (`PPREF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pprefdef`
--

/*!40000 ALTER TABLE `pprefdef` DISABLE KEYS */;
/*!40000 ALTER TABLE `pprefdef` ENABLE KEYS */;


--
-- Definition of table `pprefdefrel`
--

DROP TABLE IF EXISTS `pprefdefrel`;
CREATE TABLE `pprefdefrel` (
  `PPREFDEFREL_ID` bigint(19) NOT NULL default '0',
  `PARENT_PPREF_ID` bigint(19) default NULL,
  `CHILD_PPREF_ID` bigint(19) default NULL,
  `REL_DESC` varchar(255) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TXN_ID` bigint(19) default NULL,
  PRIMARY KEY  (`PPREFDEFREL_ID`),
  KEY `PARENT_PPREF_ID` (`PARENT_PPREF_ID`),
  KEY `CHILD_PPREF_ID` (`CHILD_PPREF_ID`),
  CONSTRAINT `pprefdefrel_ibfk_1` FOREIGN KEY (`PARENT_PPREF_ID`) REFERENCES `pprefdef` (`PPREF_ID`),
  CONSTRAINT `pprefdefrel_ibfk_2` FOREIGN KEY (`CHILD_PPREF_ID`) REFERENCES `pprefdef` (`PPREF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pprefdefrel`
--

/*!40000 ALTER TABLE `pprefdefrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `pprefdefrel` ENABLE KEYS */;


--
-- Definition of table `pprefentity`
--

DROP TABLE IF EXISTS `pprefentity`;
CREATE TABLE `pprefentity` (
  `PPREF_ID` bigint(19) NOT NULL default '0',
  `PPREF_ENTITY` varchar(50) default NULL,
  `PPREF_INSTANCE_PK` bigint(19) default NULL,
  `PPREF_REASON_TP_CD` bigint(19) default NULL,
  `SOURCE_IDENT_TP_CD` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`PPREF_ID`),
  CONSTRAINT `pprefentity_ibfk_1` FOREIGN KEY (`PPREF_ID`) REFERENCES `privpref` (`PPREF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pprefentity`
--

/*!40000 ALTER TABLE `pprefentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `pprefentity` ENABLE KEYS */;


--
-- Definition of table `pprefinstance`
--

DROP TABLE IF EXISTS `pprefinstance`;
CREATE TABLE `pprefinstance` (
  `PPREF_INST_ID` bigint(19) NOT NULL default '0',
  `PPREF_ID` bigint(19) default NULL,
  `ENTITY_NAME` varchar(20) default NULL,
  `INSTANCE_PK` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`PPREF_INST_ID`),
  KEY `PPREF_ID` (`PPREF_ID`),
  CONSTRAINT `pprefinstance_ibfk_1` FOREIGN KEY (`PPREF_ID`) REFERENCES `privpref` (`PPREF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pprefinstance`
--

/*!40000 ALTER TABLE `pprefinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `pprefinstance` ENABLE KEYS */;


--
-- Definition of table `privpref`
--

DROP TABLE IF EXISTS `privpref`;
CREATE TABLE `privpref` (
  `PPREF_ID` bigint(19) NOT NULL default '0',
  `PPREF_ACT_OPT_ID` bigint(19) default NULL,
  `PPREF_TP_CD` bigint(19) default NULL,
  `VALUE_STRING` varchar(50) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`PPREF_ID`),
  KEY `PPREF_ACT_OPT_ID` (`PPREF_ACT_OPT_ID`),
  CONSTRAINT `privpref_ibfk_1` FOREIGN KEY (`PPREF_ACT_OPT_ID`) REFERENCES `pprefactionopt` (`PPREF_ACT_OPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `privpref`
--

/*!40000 ALTER TABLE `privpref` DISABLE KEYS */;
/*!40000 ALTER TABLE `privpref` ENABLE KEYS */;


--
-- Definition of table `processaction`
--

DROP TABLE IF EXISTS `processaction`;
CREATE TABLE `processaction` (
  `PROCESSACTION_ID` bigint(19) NOT NULL default '0',
  `PROCESSCON_ID` bigint(19) default NULL,
  `ENTITYEVENTCAT_ID` bigint(19) default NULL,
  `NEXT_PROCESS_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `EVENT_STATUS` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`PROCESSACTION_ID`),
  KEY `ENTITYEVENTCAT_ID` (`ENTITYEVENTCAT_ID`),
  KEY `PROCESSCON_ID` (`PROCESSCON_ID`),
  CONSTRAINT `processaction_ibfk_1` FOREIGN KEY (`ENTITYEVENTCAT_ID`) REFERENCES `entityeventcat` (`ENTITYEVENTCAT_ID`),
  CONSTRAINT `processaction_ibfk_2` FOREIGN KEY (`PROCESSCON_ID`) REFERENCES `processcontrol` (`PROCESSCON_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `processaction`
--

/*!40000 ALTER TABLE `processaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `processaction` ENABLE KEYS */;


--
-- Definition of table `processcontrol`
--

DROP TABLE IF EXISTS `processcontrol`;
CREATE TABLE `processcontrol` (
  `PROCESSCON_ID` bigint(19) NOT NULL default '0',
  `PROCESSCON_INST_PK` varchar(100) default NULL,
  `PRODENTITY_ID` bigint(19) default NULL,
  `NEXT_PROCESS_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`PROCESSCON_ID`),
  KEY `PRODENTITY_ID` (`PRODENTITY_ID`),
  CONSTRAINT `processcontrol_ibfk_1` FOREIGN KEY (`PRODENTITY_ID`) REFERENCES `prodentity` (`PRODENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `processcontrol`
--

/*!40000 ALTER TABLE `processcontrol` DISABLE KEYS */;
/*!40000 ALTER TABLE `processcontrol` ENABLE KEYS */;


--
-- Definition of table `prodentity`
--

DROP TABLE IF EXISTS `prodentity`;
CREATE TABLE `prodentity` (
  `PRODENTITY_ID` bigint(19) NOT NULL default '0',
  `DWL_PROD_TP_CD` bigint(19) default NULL,
  `NAME` varchar(30) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`PRODENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prodentity`
--

/*!40000 ALTER TABLE `prodentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `prodentity` ENABLE KEYS */;


--
-- Definition of table `prodtprel`
--

DROP TABLE IF EXISTS `prodtprel`;
CREATE TABLE `prodtprel` (
  `PROD_TP_REL_ID` bigint(19) NOT NULL default '0',
  `FROM_PROD_TP_CD` bigint(19) default NULL,
  `TO_PROD_TP_CD` bigint(19) default NULL,
  `PRODREL_TP_CD` bigint(19) default NULL,
  `REL_DESC` varchar(255) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TXN_ID` bigint(19) default NULL,
  PRIMARY KEY  (`PROD_TP_REL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prodtprel`
--

/*!40000 ALTER TABLE `prodtprel` DISABLE KEYS */;
/*!40000 ALTER TABLE `prodtprel` ENABLE KEYS */;


--
-- Definition of table `property`
--

DROP TABLE IF EXISTS `property`;
CREATE TABLE `property` (
  `HOLDING_ID` bigint(19) NOT NULL default '0',
  `ADDRESS_ID` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`HOLDING_ID`),
  KEY `ADDRESS_ID` (`ADDRESS_ID`),
  CONSTRAINT `property_ibfk_1` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `address` (`ADDRESS_ID`),
  CONSTRAINT `property_ibfk_2` FOREIGN KEY (`HOLDING_ID`) REFERENCES `holding` (`HOLDING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `property`
--

/*!40000 ALTER TABLE `property` DISABLE KEYS */;
/*!40000 ALTER TABLE `property` ENABLE KEYS */;


--
-- Definition of table `roleidentifier`
--

DROP TABLE IF EXISTS `roleidentifier`;
CREATE TABLE `roleidentifier` (
  `ROLE_IDENTIFIER_ID` bigint(19) NOT NULL default '0',
  `CONTRACT_ROLE_ID` bigint(19) default NULL,
  `IDENTIFIER_ID` bigint(19) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`ROLE_IDENTIFIER_ID`),
  KEY `CONTRACT_ROLE_ID` (`CONTRACT_ROLE_ID`),
  KEY `IDENTIFIER_ID` (`IDENTIFIER_ID`),
  CONSTRAINT `roleidentifier_ibfk_1` FOREIGN KEY (`CONTRACT_ROLE_ID`) REFERENCES `contractrole` (`CONTRACT_ROLE_ID`),
  CONSTRAINT `roleidentifier_ibfk_2` FOREIGN KEY (`IDENTIFIER_ID`) REFERENCES `identifier` (`IDENTIFIER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roleidentifier`
--

/*!40000 ALTER TABLE `roleidentifier` DISABLE KEYS */;
/*!40000 ALTER TABLE `roleidentifier` ENABLE KEYS */;


--
-- Definition of table `rolelocation`
--

DROP TABLE IF EXISTS `rolelocation`;
CREATE TABLE `rolelocation` (
  `ROLE_LOCATION_ID` bigint(19) NOT NULL default '0',
  `LOCATION_GROUP_ID` bigint(19) default NULL,
  `CONTRACT_ROLE_ID` bigint(19) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `UNDEL_REASON_TP_CD` bigint(19) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`ROLE_LOCATION_ID`),
  KEY `CONTRACT_ROLE_ID` (`CONTRACT_ROLE_ID`),
  KEY `LOCATION_GROUP_ID` (`LOCATION_GROUP_ID`),
  CONSTRAINT `rolelocation_ibfk_1` FOREIGN KEY (`CONTRACT_ROLE_ID`) REFERENCES `contractrole` (`CONTRACT_ROLE_ID`),
  CONSTRAINT `rolelocation_ibfk_2` FOREIGN KEY (`LOCATION_GROUP_ID`) REFERENCES `locationgroup` (`LOCATION_GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rolelocation`
--

/*!40000 ALTER TABLE `rolelocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `rolelocation` ENABLE KEYS */;


--
-- Definition of table `rolelocpurpose`
--

DROP TABLE IF EXISTS `rolelocpurpose`;
CREATE TABLE `rolelocpurpose` (
  `ROLE_LOC_PURP_ID` bigint(19) NOT NULL default '0',
  `ROLE_LOCATION_ID` bigint(19) default NULL,
  `PURPOSE_TP_CD` bigint(19) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`ROLE_LOC_PURP_ID`),
  KEY `ROLE_LOCATION_ID` (`ROLE_LOCATION_ID`),
  CONSTRAINT `rolelocpurpose_ibfk_1` FOREIGN KEY (`ROLE_LOCATION_ID`) REFERENCES `rolelocation` (`ROLE_LOCATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rolelocpurpose`
--

/*!40000 ALTER TABLE `rolelocpurpose` DISABLE KEYS */;
/*!40000 ALTER TABLE `rolelocpurpose` ENABLE KEYS */;


--
-- Definition of table `rolesituation`
--

DROP TABLE IF EXISTS `rolesituation`;
CREATE TABLE `rolesituation` (
  `ROLE_SITUATION_ID` bigint(19) NOT NULL default '0',
  `CONTRACT_ROLE_ID` bigint(19) default NULL,
  `ARRANGEMENT_TP_CD` bigint(19) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`ROLE_SITUATION_ID`),
  KEY `CONTRACT_ROLE_ID` (`CONTRACT_ROLE_ID`),
  CONSTRAINT `rolesituation_ibfk_1` FOREIGN KEY (`CONTRACT_ROLE_ID`) REFERENCES `contractrole` (`CONTRACT_ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rolesituation`
--

/*!40000 ALTER TABLE `rolesituation` DISABLE KEYS */;
/*!40000 ALTER TABLE `rolesituation` ENABLE KEYS */;


--
-- Definition of table `ruleengineimpl`
--

DROP TABLE IF EXISTS `ruleengineimpl`;
CREATE TABLE `ruleengineimpl` (
  `EXT_RULE_IMPL_ID` bigint(19) NOT NULL default '0',
  `RULE_SET_NAME` varchar(30) default NULL,
  `RULE_LOCATION` varchar(1000) default NULL,
  `RULE_ENGINE_TYPE` varchar(50) default NULL,
  `S_RULE_LOCATION` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`EXT_RULE_IMPL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ruleengineimpl`
--

/*!40000 ALTER TABLE `ruleengineimpl` DISABLE KEYS */;
/*!40000 ALTER TABLE `ruleengineimpl` ENABLE KEYS */;


--
-- Definition of table `searchcriterion`
--

DROP TABLE IF EXISTS `searchcriterion`;
CREATE TABLE `searchcriterion` (
  `SEARCH_SQL_ID` bigint(19) NOT NULL default '0',
  `SEQUENCE` int(10) NOT NULL default '0',
  `SRCH_FLD_CD_ID` bigint(19) default NULL,
  `COMP_OP_TP_CD` bigint(19) default NULL,
  `SUPPL_IND` char(1) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`SEARCH_SQL_ID`,`SEQUENCE`),
  KEY `COMP_OP_TP_CD` (`COMP_OP_TP_CD`),
  KEY `SRCH_FLD_CD_ID` (`SRCH_FLD_CD_ID`),
  CONSTRAINT `searchcriterion_ibfk_1` FOREIGN KEY (`COMP_OP_TP_CD`) REFERENCES `cdcompoptp` (`COMP_OP_TP_CD`),
  CONSTRAINT `searchcriterion_ibfk_2` FOREIGN KEY (`SRCH_FLD_CD_ID`) REFERENCES `cdsrchfld` (`SRCH_FLD_CD_ID`),
  CONSTRAINT `searchcriterion_ibfk_3` FOREIGN KEY (`SEARCH_SQL_ID`) REFERENCES `searchsql` (`SEARCH_SQL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `searchcriterion`
--

/*!40000 ALTER TABLE `searchcriterion` DISABLE KEYS */;
/*!40000 ALTER TABLE `searchcriterion` ENABLE KEYS */;


--
-- Definition of table `searchexclrule`
--

DROP TABLE IF EXISTS `searchexclrule`;
CREATE TABLE `searchexclrule` (
  `LAST_NAME` varchar(30) NOT NULL default '',
  `P_LAST_NAME` varchar(30) NOT NULL default '',
  `GIVEN_NAME_ONE` varchar(30) NOT NULL default '',
  `P_GIVEN_NAME_ONE` varchar(30) NOT NULL default '',
  `CITY_NAME` varchar(30) NOT NULL default '',
  `P_CITY_NAME` varchar(30) NOT NULL default '',
  `FREQUENCY` bigint(19) default NULL,
  PRIMARY KEY  (`LAST_NAME`,`P_LAST_NAME`,`GIVEN_NAME_ONE`,`P_GIVEN_NAME_ONE`,`CITY_NAME`,`P_CITY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `searchexclrule`
--

/*!40000 ALTER TABLE `searchexclrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `searchexclrule` ENABLE KEYS */;


--
-- Definition of table `searchresultfield`
--

DROP TABLE IF EXISTS `searchresultfield`;
CREATE TABLE `searchresultfield` (
  `SEARCH_SQL_ID` bigint(19) NOT NULL default '0',
  `SEQUENCE` int(10) NOT NULL default '0',
  `SRCH_FLD_CD_ID` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`SEARCH_SQL_ID`,`SEQUENCE`),
  KEY `SRCH_FLD_CD_ID` (`SRCH_FLD_CD_ID`),
  CONSTRAINT `searchresultfield_ibfk_1` FOREIGN KEY (`SRCH_FLD_CD_ID`) REFERENCES `cdsrchfld` (`SRCH_FLD_CD_ID`),
  CONSTRAINT `searchresultfield_ibfk_2` FOREIGN KEY (`SEARCH_SQL_ID`) REFERENCES `searchsql` (`SEARCH_SQL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `searchresultfield`
--

/*!40000 ALTER TABLE `searchresultfield` DISABLE KEYS */;
/*!40000 ALTER TABLE `searchresultfield` ENABLE KEYS */;


--
-- Definition of table `searchsql`
--

DROP TABLE IF EXISTS `searchsql`;
CREATE TABLE `searchsql` (
  `SEARCH_SQL_ID` bigint(19) NOT NULL default '0',
  `INPUT_CLASS` varchar(255) default NULL,
  `SQL_STATEMENT_ID` bigint(19) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `PROCESSOR_CLASS` varchar(255) default NULL,
  `ACTIVE_IND` char(1) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`SEARCH_SQL_ID`),
  KEY `SQL_STATEMENT_ID` (`SQL_STATEMENT_ID`),
  CONSTRAINT `searchsql_ibfk_1` FOREIGN KEY (`SQL_STATEMENT_ID`) REFERENCES `sqlstatement` (`SQL_STATEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `searchsql`
--

/*!40000 ALTER TABLE `searchsql` DISABLE KEYS */;
/*!40000 ALTER TABLE `searchsql` ENABLE KEYS */;


--
-- Definition of table `sqlstatement`
--

DROP TABLE IF EXISTS `sqlstatement`;
CREATE TABLE `sqlstatement` (
  `SQL_STATEMENT_ID` bigint(19) NOT NULL default '0',
  `SQL_STATEMENT` varchar(3900) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`SQL_STATEMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sqlstatement`
--

/*!40000 ALTER TABLE `sqlstatement` DISABLE KEYS */;
/*!40000 ALTER TABLE `sqlstatement` ENABLE KEYS */;


--
-- Definition of table `suspect`
--

DROP TABLE IF EXISTS `suspect`;
CREATE TABLE `suspect` (
  `SUSPECT_ID` bigint(19) NOT NULL default '0',
  `CONT_ID` bigint(19) default NULL,
  `SUSPECT_CONT_ID` bigint(19) default NULL,
  `SUSP_ST_TP_CD` bigint(19) default NULL,
  `SOURCE_TP_CD` bigint(19) default NULL,
  `SUSP_REASON_TP_CD` bigint(19) default NULL,
  `MATCH_RELEV_TP_CD` bigint(19) default NULL,
  `ADJ_ACTION_CODE` char(2) default NULL,
  `ADJ_ACTION_TP_CD` bigint(19) default NULL,
  `CREATED_BY` varchar(20) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  `MATCH_ENG_TP_CD` bigint(19) default NULL,
  `WEIGHT` decimal(17,0) default NULL,
  `CUR_SUSPECT_TP_CD` bigint(19) default NULL,
  `CUR_MTCH_ENG_TP_CD` bigint(19) default NULL,
  PRIMARY KEY  (`SUSPECT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suspect`
--

/*!40000 ALTER TABLE `suspect` DISABLE KEYS */;
/*!40000 ALTER TABLE `suspect` ENABLE KEYS */;


--
-- Definition of table `suspectaugment`
--

DROP TABLE IF EXISTS `suspectaugment`;
CREATE TABLE `suspectaugment` (
  `SUSPECT_AUGMENT_ID` bigint(19) NOT NULL default '0',
  `SUSPECT_ID` bigint(19) default NULL,
  `ADJ_ACTION_TP_CD` bigint(19) default NULL,
  `SUSPECT_TP_CD` bigint(19) default NULL,
  `WEIGHT` decimal(17,0) default NULL,
  `MATCH_ENG_TP_CD` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`SUSPECT_AUGMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suspectaugment`
--

/*!40000 ALTER TABLE `suspectaugment` DISABLE KEYS */;
/*!40000 ALTER TABLE `suspectaugment` ENABLE KEYS */;


--
-- Definition of table `transactionalias`
--

DROP TABLE IF EXISTS `transactionalias`;
CREATE TABLE `transactionalias` (
  `TRANS_ALIAS_ID` bigint(19) NOT NULL default '0',
  `DATA_OWNER_ID` bigint(19) default NULL,
  `BUSINESS_TX_TP_CD` bigint(19) default NULL,
  `TRANS_ALIAS_NAME` varchar(50) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`TRANS_ALIAS_ID`),
  KEY `DATA_OWNER_ID` (`DATA_OWNER_ID`),
  CONSTRAINT `transactionalias_ibfk_1` FOREIGN KEY (`DATA_OWNER_ID`) REFERENCES `dataowner` (`DATA_OWNER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactionalias`
--

/*!40000 ALTER TABLE `transactionalias` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactionalias` ENABLE KEYS */;


--
-- Definition of table `transactionlog`
--

DROP TABLE IF EXISTS `transactionlog`;
CREATE TABLE `transactionlog` (
  `TX_LOG_ID` bigint(19) NOT NULL default '0',
  `BUSINESS_TX_TP_CD` bigint(19) default NULL,
  `REQUESTER_LANG` varchar(50) default NULL,
  `REQUEST_DT` varchar(50) default NULL,
  `SESSION_ID` varchar(50) default NULL,
  `PRODUCT_VERSION` varchar(50) default NULL,
  `LINE_OF_BUSINESS` varchar(30) default NULL,
  `COMPANY_NAME` varchar(30) default NULL,
  `GEOGRAPH_REGION` varchar(20) default NULL,
  `CLIENT_TXN_NAME` varchar(100) default NULL,
  `CLIENT_SYS_NAME` varchar(100) default NULL,
  `USER_ROLE` varchar(30) default NULL,
  `UPDATE_METH_CODE` varchar(10) default NULL,
  `REQUEST_ORIGIN` varchar(255) default NULL,
  `REQUESTER_NAME` varchar(50) default NULL,
  `CREATED_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `EXT_CORR_ID` varchar(50) default NULL,
  PRIMARY KEY  (`TX_LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactionlog`
--

/*!40000 ALTER TABLE `transactionlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactionlog` ENABLE KEYS */;


--
-- Definition of table `ucodetable`
--

DROP TABLE IF EXISTS `ucodetable`;
CREATE TABLE `ucodetable` (
  `APPLICATION` varchar(18) NOT NULL default '',
  `VALUE` varchar(50) NOT NULL default '',
  `CODE_NAME` varchar(50) NOT NULL default '',
  `LANGUAGE` varchar(50) NOT NULL default '',
  `NAME` varchar(255) default NULL,
  PRIMARY KEY  (`APPLICATION`,`VALUE`,`CODE_NAME`,`LANGUAGE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ucodetable`
--

/*!40000 ALTER TABLE `ucodetable` DISABLE KEYS */;
/*!40000 ALTER TABLE `ucodetable` ENABLE KEYS */;


--
-- Definition of table `useraccess`
--

DROP TABLE IF EXISTS `useraccess`;
CREATE TABLE `useraccess` (
  `USER_ACCESS_ID` bigint(19) NOT NULL default '0',
  `BUSINESS_TX_TP_CD` bigint(19) default NULL,
  `USER_PROFILE_ID` bigint(19) default NULL,
  `ACTIVE_IND` char(1) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`USER_ACCESS_ID`),
  KEY `BUSINESS_TX_TP_CD` (`BUSINESS_TX_TP_CD`),
  KEY `USER_PROFILE_ID` (`USER_PROFILE_ID`),
  CONSTRAINT `useraccess_ibfk_1` FOREIGN KEY (`BUSINESS_TX_TP_CD`) REFERENCES `cdbusinesstxtp` (`BUSINESS_TX_TP_CD`),
  CONSTRAINT `useraccess_ibfk_2` FOREIGN KEY (`USER_PROFILE_ID`) REFERENCES `userprofile` (`USER_PROFILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `useraccess`
--

/*!40000 ALTER TABLE `useraccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `useraccess` ENABLE KEYS */;


--
-- Definition of table `useraccesstoken`
--

DROP TABLE IF EXISTS `useraccesstoken`;
CREATE TABLE `useraccesstoken` (
  `USER_ACC_TOKEN_ID` bigint(19) NOT NULL default '0',
  `ACCESS_TOKEN_ID` bigint(19) default NULL,
  `USER_PROFILE_ID` bigint(19) default NULL,
  `DEFAULT_IND` char(1) default NULL,
  `START_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `END_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_USER` varchar(20) default NULL,
  PRIMARY KEY  (`USER_ACC_TOKEN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `useraccesstoken`
--

/*!40000 ALTER TABLE `useraccesstoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `useraccesstoken` ENABLE KEYS */;


--
-- Definition of table `usergroupprofile`
--

DROP TABLE IF EXISTS `usergroupprofile`;
CREATE TABLE `usergroupprofile` (
  `USER_GRP_PROF_ID` bigint(19) NOT NULL default '0',
  `GROUP_PROFILE_ID` bigint(19) default NULL,
  `USER_PROFILE_ID` bigint(19) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `ACTIVE_IND` char(1) default NULL,
  PRIMARY KEY  (`USER_GRP_PROF_ID`),
  KEY `GROUP_PROFILE_ID` (`GROUP_PROFILE_ID`),
  KEY `USER_PROFILE_ID` (`USER_PROFILE_ID`),
  CONSTRAINT `usergroupprofile_ibfk_1` FOREIGN KEY (`GROUP_PROFILE_ID`) REFERENCES `groupprofile` (`GROUP_PROFILE_ID`),
  CONSTRAINT `usergroupprofile_ibfk_2` FOREIGN KEY (`USER_PROFILE_ID`) REFERENCES `userprofile` (`USER_PROFILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usergroupprofile`
--

/*!40000 ALTER TABLE `usergroupprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroupprofile` ENABLE KEYS */;


--
-- Definition of table `userprofile`
--

DROP TABLE IF EXISTS `userprofile`;
CREATE TABLE `userprofile` (
  `USER_PROFILE_ID` bigint(19) NOT NULL default '0',
  `USER_ID` varchar(80) default NULL,
  `CONT_ID` bigint(19) default NULL,
  `PASSWORD_VALUE` varchar(50) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`USER_PROFILE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userprofile`
--

/*!40000 ALTER TABLE `userprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `userprofile` ENABLE KEYS */;


--
-- Definition of table `usertable`
--

DROP TABLE IF EXISTS `usertable`;
CREATE TABLE `usertable` (
  `CONT_ID` bigint(19) NOT NULL default '0',
  `USER_ROLE_TP_CD` bigint(19) default NULL,
  `USER_ID` varchar(30) default NULL,
  `PASSWORD` varchar(20) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`CONT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usertable`
--

/*!40000 ALTER TABLE `usertable` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertable` ENABLE KEYS */;


--
-- Definition of table `v_element`
--

DROP TABLE IF EXISTS `v_element`;
CREATE TABLE `v_element` (
  `ELEMENT_NAME` varchar(50) NOT NULL default '',
  `APPLICATION` varchar(50) NOT NULL default '',
  `GROUP_NAME` varchar(50) NOT NULL default '',
  `ATTRIBUTE_NAME` varchar(254) default NULL,
  `COLUMN_NAME` varchar(50) default NULL,
  `FIELD_NAME` varchar(50) default NULL,
  `XML_TAG_NAME` varchar(50) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `RESPONSE_ORDER` smallint(5) default NULL,
  `ELEMENTAPPNAME` varchar(50) default NULL,
  `ELEMENTGROUPNAME` varchar(50) default NULL,
  `DWLCOLUMN_TP_CD` bigint(19) default NULL,
  `CARDINALITY_TP_CD` bigint(19) default NULL,
  PRIMARY KEY  (`APPLICATION`,`GROUP_NAME`,`ELEMENT_NAME`),
  KEY `v_element_ibfk_3` USING BTREE (`APPLICATION`,`GROUP_NAME`),
  KEY `v_element_ibfk_2` USING BTREE (`DWLCOLUMN_TP_CD`),
  KEY `v_element_ibfk_1` USING BTREE (`CARDINALITY_TP_CD`),
  CONSTRAINT `v_element_ibfk_1` FOREIGN KEY (`CARDINALITY_TP_CD`) REFERENCES `cdcardinalitytp` (`CARDINALITY_TP_CD`),
  CONSTRAINT `v_element_ibfk_2` FOREIGN KEY (`DWLCOLUMN_TP_CD`) REFERENCES `cddwlcolumntp` (`DWLCOLUMN_TP_CD`),
  CONSTRAINT `v_element_ibfk_3` FOREIGN KEY (`APPLICATION`, `GROUP_NAME`) REFERENCES `v_group` (`APPLICATION`, `GROUP_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `v_element`
--

/*!40000 ALTER TABLE `v_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_element` ENABLE KEYS */;


--
-- Definition of table `v_element_param`
--

DROP TABLE IF EXISTS `v_element_param`;
CREATE TABLE `v_element_param` (
  `PARAM_TYPE` varchar(50) NOT NULL default '',
  `VALIDATION_CODE` bigint(19) NOT NULL default '0',
  `PARAM_VALUE` varchar(50) NOT NULL default '',
  `DESCRIPTION` varchar(50) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`VALIDATION_CODE`,`PARAM_TYPE`,`PARAM_VALUE`),
  CONSTRAINT `v_element_param_ibfk_1` FOREIGN KEY (`VALIDATION_CODE`) REFERENCES `v_element_val` (`VALIDATION_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `v_element_param`
--

/*!40000 ALTER TABLE `v_element_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_element_param` ENABLE KEYS */;


--
-- Definition of table `v_element_val`
--

DROP TABLE IF EXISTS `v_element_val`;
CREATE TABLE `v_element_val` (
  `APPLICATION` varchar(50) default NULL,
  `PRIORITY` smallint(5) default NULL,
  `VALIDATION_CODE` bigint(19) NOT NULL default '0',
  `TRANSACTION_TYPE` varchar(50) default NULL,
  `GROUP_NAME` varchar(50) default NULL,
  `ELEMENT_NAME` varchar(50) default NULL,
  `ERROR_CODE` varchar(50) default NULL,
  `EFFECTIVE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `FUNCTION_NAME` varchar(50) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `RULE_ID` varchar(10) default NULL,
  PRIMARY KEY  (`VALIDATION_CODE`),
  KEY `v_element_val_ibfk_4` (`APPLICATION`,`TRANSACTION_TYPE`),
  KEY `v_element_val_ibfk_1` USING BTREE (`RULE_ID`),
  KEY `v_element_val_ibfk_2` USING BTREE (`APPLICATION`,`GROUP_NAME`,`ELEMENT_NAME`),
  KEY `v_element_val_ibfk_3` USING BTREE (`FUNCTION_NAME`),
  CONSTRAINT `v_element_val_ibfk_1` FOREIGN KEY (`RULE_ID`) REFERENCES `extrule` (`RULE_ID`),
  CONSTRAINT `v_element_val_ibfk_2` FOREIGN KEY (`APPLICATION`, `GROUP_NAME`, `ELEMENT_NAME`) REFERENCES `v_element` (`APPLICATION`, `GROUP_NAME`, `ELEMENT_NAME`),
  CONSTRAINT `v_element_val_ibfk_3` FOREIGN KEY (`FUNCTION_NAME`) REFERENCES `v_function` (`FUNCTION_NAME`),
  CONSTRAINT `v_element_val_ibfk_4` FOREIGN KEY (`APPLICATION`, `TRANSACTION_TYPE`) REFERENCES `v_transaction` (`APPLICATION`, `TRANSACTION_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `v_element_val`
--

/*!40000 ALTER TABLE `v_element_val` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_element_val` ENABLE KEYS */;


--
-- Definition of table `v_elementattribute`
--

DROP TABLE IF EXISTS `v_elementattribute`;
CREATE TABLE `v_elementattribute` (
  `V_ELEMENT_ATTRB_ID` bigint(19) NOT NULL default '0',
  `ATTRIBUTE_TP_CD` bigint(19) default NULL,
  `APPLICATION` varchar(50) default NULL,
  `GROUP_NAME` varchar(50) default NULL,
  `ELEMENT_NAME` varchar(50) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`V_ELEMENT_ATTRB_ID`),
  KEY `v_elementattribute_ibfk_1` USING BTREE (`APPLICATION`,`GROUP_NAME`,`ELEMENT_NAME`),
  CONSTRAINT `v_elementattribute_ibfk_1` FOREIGN KEY (`APPLICATION`, `GROUP_NAME`, `ELEMENT_NAME`) REFERENCES `v_element` (`APPLICATION`, `GROUP_NAME`, `ELEMENT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `v_elementattribute`
--

/*!40000 ALTER TABLE `v_elementattribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_elementattribute` ENABLE KEYS */;


--
-- Definition of table `v_function`
--

DROP TABLE IF EXISTS `v_function`;
CREATE TABLE `v_function` (
  `FUNCTION_NAME` varchar(50) NOT NULL default '',
  `JAVA_CLASS` varchar(100) default NULL,
  `RULE_FUNCTION` varchar(50) default NULL,
  `JS_FUNCTION` varchar(50) default NULL,
  `XLS_FUNCTION` varchar(50) default NULL,
  `DB_FUNCTION` varchar(50) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`FUNCTION_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `v_function`
--

/*!40000 ALTER TABLE `v_function` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_function` ENABLE KEYS */;


--
-- Definition of table `v_group`
--

DROP TABLE IF EXISTS `v_group`;
CREATE TABLE `v_group` (
  `GROUP_NAME` varchar(50) NOT NULL default '',
  `APPLICATION` varchar(50) NOT NULL default '',
  `OBJECT_NAME` varchar(100) default NULL,
  `TABLE_NAME` varchar(50) default NULL,
  `FORM_NAME` varchar(50) default NULL,
  `XML_TAG_NAME` varchar(50) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `SORTBY` varchar(50) default NULL,
  `CODE_TYPE_IND` char(1) default NULL,
  PRIMARY KEY  USING BTREE (`APPLICATION`,`GROUP_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `v_group`
--

/*!40000 ALTER TABLE `v_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_group` ENABLE KEYS */;


--
-- Definition of table `v_group_param`
--

DROP TABLE IF EXISTS `v_group_param`;
CREATE TABLE `v_group_param` (
  `PARAM_TYPE` varchar(50) NOT NULL default '',
  `VALIDATION_CODE` bigint(19) NOT NULL default '0',
  `PARAM_VALUE` varchar(100) NOT NULL default '',
  `DESCRIPTION` varchar(50) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`VALIDATION_CODE`,`PARAM_TYPE`,`PARAM_VALUE`),
  CONSTRAINT `v_group_param_ibfk_1` FOREIGN KEY (`VALIDATION_CODE`) REFERENCES `v_group_val` (`VALIDATION_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `v_group_param`
--

/*!40000 ALTER TABLE `v_group_param` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_group_param` ENABLE KEYS */;


--
-- Definition of table `v_group_val`
--

DROP TABLE IF EXISTS `v_group_val`;
CREATE TABLE `v_group_val` (
  `APPLICATION` varchar(50) default NULL,
  `PRIORITY` smallint(5) default NULL,
  `VALIDATION_CODE` bigint(19) NOT NULL default '0',
  `TRANSACTION_TYPE` varchar(50) default NULL,
  `GROUP_NAME` varchar(50) default NULL,
  `ERROR_CODE` varchar(50) default NULL,
  `EFFECTIVE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `FUNCTION_NAME` varchar(50) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  `RULE_ID` varchar(10) default NULL,
  PRIMARY KEY  (`VALIDATION_CODE`),
  KEY `FK_v_group_val_1` (`RULE_ID`),
  KEY `FK_v_group_val_2` (`FUNCTION_NAME`),
  KEY `v_group_val_ibfk_2` (`APPLICATION`,`TRANSACTION_TYPE`),
  KEY `v_group_val_ibfk_1` USING BTREE (`APPLICATION`,`GROUP_NAME`),
  CONSTRAINT `FK_v_group_val_1` FOREIGN KEY (`RULE_ID`) REFERENCES `extrule` (`RULE_ID`),
  CONSTRAINT `FK_v_group_val_2` FOREIGN KEY (`FUNCTION_NAME`) REFERENCES `v_function` (`FUNCTION_NAME`),
  CONSTRAINT `v_group_val_ibfk_1` FOREIGN KEY (`APPLICATION`, `GROUP_NAME`) REFERENCES `v_group` (`APPLICATION`, `GROUP_NAME`),
  CONSTRAINT `v_group_val_ibfk_2` FOREIGN KEY (`APPLICATION`, `TRANSACTION_TYPE`) REFERENCES `v_transaction` (`APPLICATION`, `TRANSACTION_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `v_group_val`
--

/*!40000 ALTER TABLE `v_group_val` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_group_val` ENABLE KEYS */;


--
-- Definition of table `v_transaction`
--

DROP TABLE IF EXISTS `v_transaction`;
CREATE TABLE `v_transaction` (
  `TRANSACTION_TYPE` varchar(50) NOT NULL default '',
  `APPLICATION` varchar(50) NOT NULL default '',
  `TRANSACTION_DESC` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`APPLICATION`,`TRANSACTION_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `v_transaction`
--

/*!40000 ALTER TABLE `v_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_transaction` ENABLE KEYS */;


--
-- Definition of table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE `vehicle` (
  `HOLDING_ID` bigint(19) NOT NULL default '0',
  `VIN_NUM` varchar(20) default NULL,
  `VEHICLE_MAKE` varchar(20) default NULL,
  `VEHICLE_MODEL` varchar(20) default NULL,
  `VEHICLE_YEAR` bigint(19) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_TX_ID` bigint(19) default NULL,
  PRIMARY KEY  (`HOLDING_ID`),
  CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`HOLDING_ID`) REFERENCES `holding` (`HOLDING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicle`
--

/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;


--
-- Definition of table `viewdriver`
--

DROP TABLE IF EXISTS `viewdriver`;
CREATE TABLE `viewdriver` (
  `VIEW_DRIVER_ID` bigint(19) NOT NULL default '0',
  `APPLICATION` varchar(50) NOT NULL,
  `GROUP_NAME` varchar(50) NOT NULL,
  `VIEW_INSTANCE_ID` bigint(19) default NULL,
  `LAST_UPDATE_USER` varchar(20) default NULL,
  `LAST_UPDATE_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`VIEW_DRIVER_ID`),
  KEY `FK_viewdriver_2` (`VIEW_INSTANCE_ID`),
  KEY `FK_viewdriver_1` USING BTREE (`APPLICATION`,`GROUP_NAME`),
  CONSTRAINT `FK_viewdriver_1` FOREIGN KEY (`APPLICATION`, `GROUP_NAME`) REFERENCES `v_group` (`APPLICATION`, `GROUP_NAME`),
  CONSTRAINT `FK_viewdriver_2` FOREIGN KEY (`VIEW_INSTANCE_ID`) REFERENCES `viewinstance` (`VIEW_INSTANCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `viewdriver`
--

/*!40000 ALTER TABLE `viewdriver` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewdriver` ENABLE KEYS */;


--
-- Definition of table `viewinstance`
--

DROP TABLE IF EXISTS `viewinstance`;
CREATE TABLE `viewinstance` (
  `VIEW_INSTANCE_ID` bigint(19) NOT NULL default '0',
  `NAME` varchar(50) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `EXPIRY_DT` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `LAST_UPDATE_DT` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`VIEW_INSTANCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `viewinstance`
--

/*!40000 ALTER TABLE `viewinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `viewinstance` ENABLE KEYS */;


--
-- Definition of table `w_lit_double`
--

DROP TABLE IF EXISTS `w_lit_double`;
CREATE TABLE `w_lit_double` (
  `ID` int(10) NOT NULL default '0',
  `LITVAL` double(53,10) default NULL,
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




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
