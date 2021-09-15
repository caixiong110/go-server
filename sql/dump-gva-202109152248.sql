-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 192.168.91.129    Database: gva
-- ------------------------------------------------------
-- Server version	5.7.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary table structure for view `authority_menu`
--

DROP TABLE IF EXISTS `authority_menu`;
/*!50001 DROP VIEW IF EXISTS `authority_menu`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `authority_menu` (
  `id` tinyint NOT NULL,
  `created_at` tinyint NOT NULL,
  `updated_at` tinyint NOT NULL,
  `deleted_at` tinyint NOT NULL,
  `menu_level` tinyint NOT NULL,
  `parent_id` tinyint NOT NULL,
  `path` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `hidden` tinyint NOT NULL,
  `component` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `icon` tinyint NOT NULL,
  `sort` tinyint NOT NULL,
  `authority_id` tinyint NOT NULL,
  `menu_id` tinyint NOT NULL,
  `keep_alive` tinyint NOT NULL,
  `close_tab` tinyint NOT NULL,
  `default_menu` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `auto_code_examples`
--

DROP TABLE IF EXISTS `auto_code_examples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auto_code_examples` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `auto_code_example_field` varchar(191) DEFAULT NULL COMMENT '仅作示例条目无实际作用',
  PRIMARY KEY (`id`),
  KEY `idx_auto_code_examples_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_code_examples`
--

LOCK TABLES `auto_code_examples` WRITE;
/*!40000 ALTER TABLE `auto_code_examples` DISABLE KEYS */;
/*!40000 ALTER TABLE `auto_code_examples` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casbin_rule`
--

DROP TABLE IF EXISTS `casbin_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casbin_rule` (
  `p_type` varchar(100) DEFAULT NULL,
  `v0` varchar(100) DEFAULT NULL,
  `v1` varchar(100) DEFAULT NULL,
  `v2` varchar(100) DEFAULT NULL,
  `v3` varchar(100) DEFAULT NULL,
  `v4` varchar(100) DEFAULT NULL,
  `v5` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casbin_rule`
--

LOCK TABLES `casbin_rule` WRITE;
/*!40000 ALTER TABLE `casbin_rule` DISABLE KEYS */;
INSERT INTO `casbin_rule` VALUES ('p','8881','/base/login','POST','','',''),('p','8881','/user/register','POST','','',''),('p','8881','/api/createApi','POST','','',''),('p','8881','/api/getApiList','POST','','',''),('p','8881','/api/getApiById','POST','','',''),('p','8881','/api/deleteApi','POST','','',''),('p','8881','/api/updateApi','POST','','',''),('p','8881','/api/getAllApis','POST','','',''),('p','8881','/authority/createAuthority','POST','','',''),('p','8881','/authority/deleteAuthority','POST','','',''),('p','8881','/authority/getAuthorityList','POST','','',''),('p','8881','/authority/setDataAuthority','POST','','',''),('p','8881','/menu/getMenu','POST','','',''),('p','8881','/menu/getMenuList','POST','','',''),('p','8881','/menu/addBaseMenu','POST','','',''),('p','8881','/menu/getBaseMenuTree','POST','','',''),('p','8881','/menu/addMenuAuthority','POST','','',''),('p','8881','/menu/getMenuAuthority','POST','','',''),('p','8881','/menu/deleteBaseMenu','POST','','',''),('p','8881','/menu/updateBaseMenu','POST','','',''),('p','8881','/menu/getBaseMenuById','POST','','',''),('p','8881','/user/changePassword','POST','','',''),('p','8881','/user/getUserList','POST','','',''),('p','8881','/user/setUserAuthority','POST','','',''),('p','8881','/fileUploadAndDownload/upload','POST','','',''),('p','8881','/fileUploadAndDownload/getFileList','POST','','',''),('p','8881','/fileUploadAndDownload/deleteFile','POST','','',''),('p','8881','/casbin/updateCasbin','POST','','',''),('p','8881','/casbin/getPolicyPathByAuthorityId','POST','','',''),('p','8881','/jwt/jsonInBlacklist','POST','','',''),('p','8881','/system/getSystemConfig','POST','','',''),('p','8881','/system/setSystemConfig','POST','','',''),('p','8881','/customer/customer','POST','','',''),('p','8881','/customer/customer','PUT','','',''),('p','8881','/customer/customer','DELETE','','',''),('p','8881','/customer/customer','GET','','',''),('p','8881','/customer/customerList','GET','','',''),('p','8881','/user/getUserInfo','GET','','',''),('p','9528','/base/login','POST','','',''),('p','9528','/user/register','POST','','',''),('p','9528','/api/createApi','POST','','',''),('p','9528','/api/getApiList','POST','','',''),('p','9528','/api/getApiById','POST','','',''),('p','9528','/api/deleteApi','POST','','',''),('p','9528','/api/updateApi','POST','','',''),('p','9528','/api/getAllApis','POST','','',''),('p','9528','/authority/createAuthority','POST','','',''),('p','9528','/authority/deleteAuthority','POST','','',''),('p','9528','/authority/getAuthorityList','POST','','',''),('p','9528','/authority/setDataAuthority','POST','','',''),('p','9528','/menu/getMenu','POST','','',''),('p','9528','/menu/getMenuList','POST','','',''),('p','9528','/menu/addBaseMenu','POST','','',''),('p','9528','/menu/getBaseMenuTree','POST','','',''),('p','9528','/menu/addMenuAuthority','POST','','',''),('p','9528','/menu/getMenuAuthority','POST','','',''),('p','9528','/menu/deleteBaseMenu','POST','','',''),('p','9528','/menu/updateBaseMenu','POST','','',''),('p','9528','/menu/getBaseMenuById','POST','','',''),('p','9528','/user/changePassword','POST','','',''),('p','9528','/user/getUserList','POST','','',''),('p','9528','/user/setUserAuthority','POST','','',''),('p','9528','/fileUploadAndDownload/upload','POST','','',''),('p','9528','/fileUploadAndDownload/getFileList','POST','','',''),('p','9528','/fileUploadAndDownload/deleteFile','POST','','',''),('p','9528','/casbin/updateCasbin','POST','','',''),('p','9528','/casbin/getPolicyPathByAuthorityId','POST','','',''),('p','9528','/jwt/jsonInBlacklist','POST','','',''),('p','9528','/system/getSystemConfig','POST','','',''),('p','9528','/system/setSystemConfig','POST','','',''),('p','9528','/customer/customer','POST','','',''),('p','9528','/customer/customer','PUT','','',''),('p','9528','/customer/customer','DELETE','','',''),('p','9528','/customer/customer','GET','','',''),('p','9528','/customer/customerList','GET','','',''),('p','9528','/autoCode/createTemp','POST','','',''),('p','9528','/user/getUserInfo','GET','','',''),('p','888','/base/login','POST','','',''),('p','888','/user/register','POST','','',''),('p','888','/user/changePassword','POST','','',''),('p','888','/user/getUserList','POST','','',''),('p','888','/user/setUserAuthority','POST','','',''),('p','888','/user/deleteUser','DELETE','','',''),('p','888','/user/setUserInfo','PUT','','',''),('p','888','/user/setUserAuthorities','POST','','',''),('p','888','/user/getUserInfo','GET','','',''),('p','888','/api/createApi','POST','','',''),('p','888','/api/getApiList','POST','','',''),('p','888','/api/getApiById','POST','','',''),('p','888','/api/deleteApi','POST','','',''),('p','888','/api/updateApi','POST','','',''),('p','888','/api/getAllApis','POST','','',''),('p','888','/api/deleteApisByIds','DELETE','','',''),('p','888','/authority/createAuthority','POST','','',''),('p','888','/authority/deleteAuthority','POST','','',''),('p','888','/authority/getAuthorityList','POST','','',''),('p','888','/authority/setDataAuthority','POST','','',''),('p','888','/authority/updateAuthority','PUT','','',''),('p','888','/authority/copyAuthority','POST','','',''),('p','888','/menu/getMenu','POST','','',''),('p','888','/menu/getMenuList','POST','','',''),('p','888','/menu/addBaseMenu','POST','','',''),('p','888','/menu/getBaseMenuTree','POST','','',''),('p','888','/menu/addMenuAuthority','POST','','',''),('p','888','/menu/getMenuAuthority','POST','','',''),('p','888','/menu/deleteBaseMenu','POST','','',''),('p','888','/menu/updateBaseMenu','POST','','',''),('p','888','/menu/getBaseMenuById','POST','','',''),('p','888','/fileUploadAndDownload/upload','POST','','',''),('p','888','/fileUploadAndDownload/getFileList','POST','','',''),('p','888','/fileUploadAndDownload/deleteFile','POST','','',''),('p','888','/casbin/updateCasbin','POST','','',''),('p','888','/casbin/getPolicyPathByAuthorityId','POST','','',''),('p','888','/casbin/casbinTest/:pathParam','GET','','',''),('p','888','/jwt/jsonInBlacklist','POST','','',''),('p','888','/system/getSystemConfig','POST','','',''),('p','888','/system/setSystemConfig','POST','','',''),('p','888','/system/getServerInfo','POST','','',''),('p','888','/customer/customer','POST','','',''),('p','888','/customer/customer','PUT','','',''),('p','888','/customer/customer','DELETE','','',''),('p','888','/customer/customer','GET','','',''),('p','888','/customer/customerList','GET','','',''),('p','888','/autoCode/createTemp','POST','','',''),('p','888','/autoCode/getTables','GET','','',''),('p','888','/autoCode/getDB','GET','','',''),('p','888','/autoCode/getColumn','GET','','',''),('p','888','/autoCode/preview','POST','','',''),('p','888','/autoCode/getSysHistory','POST','','',''),('p','888','/autoCode/rollback','POST','','',''),('p','888','/autoCode/getMeta','POST','','',''),('p','888','/autoCode/delSysHistory','POST','','',''),('p','888','/sysDictionaryDetail/createSysDictionaryDetail','POST','','',''),('p','888','/sysDictionaryDetail/deleteSysDictionaryDetail','DELETE','','',''),('p','888','/sysDictionaryDetail/updateSysDictionaryDetail','PUT','','',''),('p','888','/sysDictionaryDetail/findSysDictionaryDetail','GET','','',''),('p','888','/sysDictionaryDetail/getSysDictionaryDetailList','GET','','',''),('p','888','/sysDictionary/createSysDictionary','POST','','',''),('p','888','/sysDictionary/deleteSysDictionary','DELETE','','',''),('p','888','/sysDictionary/updateSysDictionary','PUT','','',''),('p','888','/sysDictionary/findSysDictionary','GET','','',''),('p','888','/sysDictionary/getSysDictionaryList','GET','','',''),('p','888','/sysOperationRecord/createSysOperationRecord','POST','','',''),('p','888','/sysOperationRecord/deleteSysOperationRecord','DELETE','','',''),('p','888','/sysOperationRecord/findSysOperationRecord','GET','','',''),('p','888','/sysOperationRecord/getSysOperationRecordList','GET','','',''),('p','888','/sysOperationRecord/deleteSysOperationRecordByIds','DELETE','','',''),('p','888','/simpleUploader/upload','POST','','',''),('p','888','/simpleUploader/checkFileMd5','GET','','',''),('p','888','/simpleUploader/mergeFileMd5','GET','','',''),('p','888','/email/emailTest','POST','','',''),('p','888','/excel/importExcel','POST','','',''),('p','888','/excel/loadExcel','GET','','',''),('p','888','/excel/exportExcel','POST','','',''),('p','888','/excel/downloadTemplate','GET','','',''),('p','888','application/getApplicationList','POST','','',''),('p','888','application/create','POST','','','');
/*!40000 ALTER TABLE `casbin_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmdb_application`
--

DROP TABLE IF EXISTS `cmdb_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmdb_application` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `domain_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmdb_application`
--

LOCK TABLES `cmdb_application` WRITE;
/*!40000 ALTER TABLE `cmdb_application` DISABLE KEYS */;
INSERT INTO `cmdb_application` VALUES ('8cad9f2e-d95c-4fe2-b310-adb691dc9229','acr','acr',''),('bf87597c-3287-4f5a-a275-927bdf82e6f7','github','localhost:8081','1'),('bf87597c-3287-4f5a-a275-927bdf82e6f8','jenkins','localhost:8080','1'),('bf87597c-3287-4f5a-a275-927bdf82e6f9','sonar','sonar.tools.com','1'),('ea7d6c73-a0b8-47de-aef2-b368e4245ffb','centos','localhost',''),('f791c4f3-562f-4b0d-8362-8e1758eb6808','gitlab','localhost','');
/*!40000 ALTER TABLE `cmdb_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmdb_domain`
--

DROP TABLE IF EXISTS `cmdb_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmdb_domain` (
  `id` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmdb_domain`
--

LOCK TABLES `cmdb_domain` WRITE;
/*!40000 ALTER TABLE `cmdb_domain` DISABLE KEYS */;
INSERT INTO `cmdb_domain` VALUES ('1','PAAS','PAAS平台'),('2','CDL','CDL大数据');
/*!40000 ALTER TABLE `cmdb_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmdb_domain_employee`
--

DROP TABLE IF EXISTS `cmdb_domain_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmdb_domain_employee` (
  `id` varchar(100) DEFAULT NULL,
  `domain_id` varchar(100) DEFAULT NULL,
  `employee_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmdb_domain_employee`
--

LOCK TABLES `cmdb_domain_employee` WRITE;
/*!40000 ALTER TABLE `cmdb_domain_employee` DISABLE KEYS */;
INSERT INTO `cmdb_domain_employee` VALUES ('1','1','1'),('2','1','2'),('3','2','3'),('4','2','4');
/*!40000 ALTER TABLE `cmdb_domain_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmdb_employee`
--

DROP TABLE IF EXISTS `cmdb_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmdb_employee` (
  `id` varchar(100) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmdb_employee`
--

LOCK TABLES `cmdb_employee` WRITE;
/*!40000 ALTER TABLE `cmdb_employee` DISABLE KEYS */;
INSERT INTO `cmdb_employee` VALUES ('1','even','18300000000','A2','epam'),('2','jack','18300000000','A2','epam'),('3','wind','18300000000','A2','epam'),('4','yifeng','18300000000','A2','epam');
/*!40000 ALTER TABLE `cmdb_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exa_customers`
--

DROP TABLE IF EXISTS `exa_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exa_customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `customer_name` varchar(191) DEFAULT NULL COMMENT '客户名',
  `customer_phone_data` varchar(191) DEFAULT NULL COMMENT '客户手机号',
  `sys_user_id` bigint(20) unsigned DEFAULT NULL COMMENT '管理ID',
  `sys_user_authority_id` varchar(191) DEFAULT NULL COMMENT '管理角色ID',
  PRIMARY KEY (`id`),
  KEY `idx_exa_customers_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exa_customers`
--

LOCK TABLES `exa_customers` WRITE;
/*!40000 ALTER TABLE `exa_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `exa_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exa_file_chunks`
--

DROP TABLE IF EXISTS `exa_file_chunks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exa_file_chunks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `exa_file_id` bigint(20) unsigned DEFAULT NULL,
  `file_chunk_number` bigint(20) DEFAULT NULL,
  `file_chunk_path` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_chunks_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exa_file_chunks`
--

LOCK TABLES `exa_file_chunks` WRITE;
/*!40000 ALTER TABLE `exa_file_chunks` DISABLE KEYS */;
/*!40000 ALTER TABLE `exa_file_chunks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exa_file_upload_and_downloads`
--

DROP TABLE IF EXISTS `exa_file_upload_and_downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exa_file_upload_and_downloads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL COMMENT '文件名',
  `url` varchar(191) DEFAULT NULL COMMENT '文件地址',
  `tag` varchar(191) DEFAULT NULL COMMENT '文件标签',
  `key` varchar(191) DEFAULT NULL COMMENT '编号',
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_upload_and_downloads_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exa_file_upload_and_downloads`
--

LOCK TABLES `exa_file_upload_and_downloads` WRITE;
/*!40000 ALTER TABLE `exa_file_upload_and_downloads` DISABLE KEYS */;
INSERT INTO `exa_file_upload_and_downloads` VALUES (1,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'10.png','http://qmplusimg.henrongyi.top/gvalogo.png','png','158787308910.png'),(2,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'logo.png','http://qmplusimg.henrongyi.top/1576554439myAvatar.png','png','1587973709logo.png');
/*!40000 ALTER TABLE `exa_file_upload_and_downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exa_files`
--

DROP TABLE IF EXISTS `exa_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exa_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `file_md5` varchar(191) DEFAULT NULL,
  `file_path` varchar(191) DEFAULT NULL,
  `chunk_total` bigint(20) DEFAULT NULL,
  `is_finish` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_files_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exa_files`
--

LOCK TABLES `exa_files` WRITE;
/*!40000 ALTER TABLE `exa_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `exa_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exa_simple_uploaders`
--

DROP TABLE IF EXISTS `exa_simple_uploaders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exa_simple_uploaders` (
  `chunk_number` varchar(191) DEFAULT NULL COMMENT '当前切片标记',
  `current_chunk_size` varchar(191) DEFAULT NULL COMMENT '当前切片容量',
  `current_chunk_path` varchar(191) DEFAULT NULL COMMENT '切片本地路径',
  `total_size` varchar(191) DEFAULT NULL COMMENT '总容量',
  `identifier` varchar(191) DEFAULT NULL COMMENT '文件标识（md5）',
  `filename` varchar(191) DEFAULT NULL COMMENT '文件名',
  `total_chunks` varchar(191) DEFAULT NULL COMMENT '切片总数',
  `is_done` tinyint(1) DEFAULT NULL COMMENT '是否上传完成',
  `file_path` varchar(191) DEFAULT NULL COMMENT '文件本地路径'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exa_simple_uploaders`
--

LOCK TABLES `exa_simple_uploaders` WRITE;
/*!40000 ALTER TABLE `exa_simple_uploaders` DISABLE KEYS */;
/*!40000 ALTER TABLE `exa_simple_uploaders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jwt_blacklists`
--

DROP TABLE IF EXISTS `jwt_blacklists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jwt_blacklists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `jwt` text COMMENT 'jwt',
  PRIMARY KEY (`id`),
  KEY `idx_jwt_blacklists_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jwt_blacklists`
--

LOCK TABLES `jwt_blacklists` WRITE;
/*!40000 ALTER TABLE `jwt_blacklists` DISABLE KEYS */;
/*!40000 ALTER TABLE `jwt_blacklists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_apis`
--

DROP TABLE IF EXISTS `sys_apis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_apis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `path` varchar(191) DEFAULT NULL COMMENT 'api路径',
  `description` varchar(191) DEFAULT NULL COMMENT 'api中文描述',
  `api_group` varchar(191) DEFAULT NULL COMMENT 'api组',
  `method` varchar(191) DEFAULT 'POST' COMMENT '方法',
  PRIMARY KEY (`id`),
  KEY `idx_sys_apis_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_apis`
--

LOCK TABLES `sys_apis` WRITE;
/*!40000 ALTER TABLE `sys_apis` DISABLE KEYS */;
INSERT INTO `sys_apis` VALUES (1,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/base/login','用户登录（必选）','base','POST'),(2,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/user/register','用户注册（必选）','user','POST'),(3,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/api/createApi','创建api','api','POST'),(4,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/api/getApiList','获取api列表','api','POST'),(5,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/api/getApiById','获取api详细信息','api','POST'),(6,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/api/deleteApi','删除Api','api','POST'),(7,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/api/updateApi','更新Api','api','POST'),(8,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/api/getAllApis','获取所有api','api','POST'),(9,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/authority/createAuthority','创建角色','authority','POST'),(10,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/authority/deleteAuthority','删除角色','authority','POST'),(11,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/authority/getAuthorityList','获取角色列表','authority','POST'),(12,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/menu/getMenu','获取菜单树（必选）','menu','POST'),(13,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/menu/getMenuList','分页获取基础menu列表','menu','POST'),(14,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/menu/addBaseMenu','新增菜单','menu','POST'),(15,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/menu/getBaseMenuTree','获取用户动态路由','menu','POST'),(16,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/menu/addMenuAuthority','增加menu和角色关联关系','menu','POST'),(17,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/menu/getMenuAuthority','获取指定角色menu','menu','POST'),(18,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/menu/deleteBaseMenu','删除菜单','menu','POST'),(19,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/menu/updateBaseMenu','更新菜单','menu','POST'),(20,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/menu/getBaseMenuById','根据id获取菜单','menu','POST'),(21,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/user/changePassword','修改密码（建议选择）','user','POST'),(23,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/user/getUserList','获取用户列表','user','POST'),(24,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/user/setUserAuthority','修改用户角色（必选）','user','POST'),(25,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/fileUploadAndDownload/upload','文件上传示例','fileUploadAndDownload','POST'),(26,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/fileUploadAndDownload/getFileList','获取上传文件列表','fileUploadAndDownload','POST'),(27,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/casbin/updateCasbin','更改角色api权限','casbin','POST'),(28,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/casbin/getPolicyPathByAuthorityId','获取权限列表','casbin','POST'),(29,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/fileUploadAndDownload/deleteFile','删除文件','fileUploadAndDownload','POST'),(30,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/jwt/jsonInBlacklist','jwt加入黑名单(退出，必选)','jwt','POST'),(31,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/authority/setDataAuthority','设置角色资源权限','authority','POST'),(32,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/system/getSystemConfig','获取配置文件内容','system','POST'),(33,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/system/setSystemConfig','设置配置文件内容','system','POST'),(34,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/customer/customer','创建客户','customer','POST'),(35,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/customer/customer','更新客户','customer','PUT'),(36,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/customer/customer','删除客户','customer','DELETE'),(37,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/customer/customer','获取单一客户','customer','GET'),(38,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/customer/customerList','获取客户列表','customer','GET'),(39,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/casbin/casbinTest/:pathParam','RESTFUL模式测试','casbin','GET'),(40,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/autoCode/createTemp','自动化代码','autoCode','POST'),(41,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/authority/updateAuthority','更新角色信息','authority','PUT'),(42,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/authority/copyAuthority','拷贝角色','authority','POST'),(43,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/user/deleteUser','删除用户','user','DELETE'),(44,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/sysDictionaryDetail/createSysDictionaryDetail','新增字典内容','sysDictionaryDetail','POST'),(45,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/sysDictionaryDetail/deleteSysDictionaryDetail','删除字典内容','sysDictionaryDetail','DELETE'),(46,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/sysDictionaryDetail/updateSysDictionaryDetail','更新字典内容','sysDictionaryDetail','PUT'),(47,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/sysDictionaryDetail/findSysDictionaryDetail','根据ID获取字典内容','sysDictionaryDetail','GET'),(48,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/sysDictionaryDetail/getSysDictionaryDetailList','获取字典内容列表','sysDictionaryDetail','GET'),(49,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/sysDictionary/createSysDictionary','新增字典','sysDictionary','POST'),(50,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/sysDictionary/deleteSysDictionary','删除字典','sysDictionary','DELETE'),(51,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/sysDictionary/updateSysDictionary','更新字典','sysDictionary','PUT'),(52,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/sysDictionary/findSysDictionary','根据ID获取字典','sysDictionary','GET'),(53,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/sysDictionary/getSysDictionaryList','获取字典列表','sysDictionary','GET'),(54,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/sysOperationRecord/createSysOperationRecord','新增操作记录','sysOperationRecord','POST'),(55,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/sysOperationRecord/deleteSysOperationRecord','删除操作记录','sysOperationRecord','DELETE'),(56,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/sysOperationRecord/findSysOperationRecord','根据ID获取操作记录','sysOperationRecord','GET'),(57,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/sysOperationRecord/getSysOperationRecordList','获取操作记录列表','sysOperationRecord','GET'),(58,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/autoCode/getTables','获取数据库表','autoCode','GET'),(59,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/autoCode/getDB','获取所有数据库','autoCode','GET'),(60,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/autoCode/getColumn','获取所选table的所有字段','autoCode','GET'),(61,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/sysOperationRecord/deleteSysOperationRecordByIds','批量删除操作历史','sysOperationRecord','DELETE'),(62,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/simpleUploader/upload','插件版分片上传','simpleUploader','POST'),(63,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/simpleUploader/checkFileMd5','文件完整度验证','simpleUploader','GET'),(64,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/simpleUploader/mergeFileMd5','上传完成合并文件','simpleUploader','GET'),(65,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/user/setUserInfo','设置用户信息（必选）','user','PUT'),(66,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/system/getServerInfo','获取服务器信息','system','POST'),(67,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/email/emailTest','发送测试邮件','email','POST'),(80,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/autoCode/preview','预览自动化代码','autoCode','POST'),(81,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/excel/importExcel','导入excel','excel','POST'),(82,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/excel/loadExcel','下载excel','excel','GET'),(83,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/excel/exportExcel','导出excel','excel','POST'),(84,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/excel/downloadTemplate','下载excel模板','excel','GET'),(85,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/api/deleteApisByIds','批量删除api','api','DELETE'),(86,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/autoCode/getSysHistory','查询回滚记录','autoCode','POST'),(87,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/autoCode/rollback','回滚自动生成代码','autoCode','POST'),(88,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/autoCode/getMeta','获取meta信息','autoCode','POST'),(89,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/autoCode/delSysHistory','删除回滚记录','autoCode','POST'),(90,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/user/setUserAuthorities','设置权限组','user','POST'),(91,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'/user/getUserInfo','获取自身信息（必选）','user','GET'),(92,'2021-09-15 14:36:12','2021-09-15 14:36:12',NULL,'application/getApplicationList','获取application列表','application','POST'),(93,'2021-09-15 22:33:46','2021-09-15 22:33:46',NULL,'application/create','创建application','application','POST');
/*!40000 ALTER TABLE `sys_apis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_authorities`
--

DROP TABLE IF EXISTS `sys_authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_authorities` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `authority_id` varchar(90) NOT NULL COMMENT '角色ID',
  `authority_name` varchar(191) DEFAULT NULL COMMENT '角色名',
  `parent_id` varchar(191) DEFAULT NULL COMMENT '父角色ID',
  `default_router` varchar(191) DEFAULT 'dashboard' COMMENT '默认菜单',
  PRIMARY KEY (`authority_id`),
  UNIQUE KEY `authority_id` (`authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_authorities`
--

LOCK TABLES `sys_authorities` WRITE;
/*!40000 ALTER TABLE `sys_authorities` DISABLE KEYS */;
INSERT INTO `sys_authorities` VALUES ('2021-09-08 13:07:23','2021-09-15 14:50:31',NULL,'888','普通用户','0','https://www.gin-vue-admin.com'),('2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'8881','普通用户子角色','888','dashboard'),('2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'9528','测试角色','0','dashboard');
/*!40000 ALTER TABLE `sys_authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_authority_menus`
--

DROP TABLE IF EXISTS `sys_authority_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_authority_menus` (
  `sys_base_menu_id` bigint(20) unsigned NOT NULL,
  `sys_authority_authority_id` varchar(90) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_base_menu_id`,`sys_authority_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_authority_menus`
--

LOCK TABLES `sys_authority_menus` WRITE;
/*!40000 ALTER TABLE `sys_authority_menus` DISABLE KEYS */;
INSERT INTO `sys_authority_menus` VALUES (1,'888'),(1,'8881'),(1,'9528'),(2,'888'),(2,'8881'),(2,'9528'),(3,'888'),(3,'9528'),(4,'888'),(4,'9528'),(5,'888'),(5,'9528'),(6,'888'),(6,'9528'),(7,'888'),(7,'9528'),(8,'888'),(8,'8881'),(8,'9528'),(9,'888'),(9,'9528'),(10,'888'),(10,'9528'),(11,'888'),(11,'9528'),(12,'888'),(12,'9528'),(13,'888'),(14,'888'),(14,'9528'),(15,'888'),(15,'9528'),(16,'888'),(16,'9528'),(17,'888'),(17,'9528'),(18,'888'),(19,'888'),(20,'888'),(21,'888'),(22,'888'),(23,'888'),(24,'888'),(25,'888'),(26,'888'),(27,'888');
/*!40000 ALTER TABLE `sys_authority_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_auto_code_histories`
--

DROP TABLE IF EXISTS `sys_auto_code_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_auto_code_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `table_name` varchar(191) DEFAULT NULL,
  `request_meta` text,
  `auto_code_path` text,
  `injection_meta` text,
  `struct_name` varchar(191) DEFAULT NULL,
  `struct_cn_name` varchar(191) DEFAULT NULL,
  `api_ids` varchar(191) DEFAULT NULL,
  `flag` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_auto_code_histories_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_auto_code_histories`
--

LOCK TABLES `sys_auto_code_histories` WRITE;
/*!40000 ALTER TABLE `sys_auto_code_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_auto_code_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_base_menu_parameters`
--

DROP TABLE IF EXISTS `sys_base_menu_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_base_menu_parameters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `sys_base_menu_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL COMMENT '地址栏携带参数为params还是query',
  `key` varchar(191) DEFAULT NULL COMMENT '地址栏携带参数的key',
  `value` varchar(191) DEFAULT NULL COMMENT '地址栏携带参数的值',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menu_parameters_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_base_menu_parameters`
--

LOCK TABLES `sys_base_menu_parameters` WRITE;
/*!40000 ALTER TABLE `sys_base_menu_parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_base_menu_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_base_menus`
--

DROP TABLE IF EXISTS `sys_base_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_base_menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `menu_level` bigint(20) unsigned DEFAULT NULL,
  `parent_id` varchar(191) DEFAULT NULL COMMENT '父菜单ID',
  `path` varchar(191) DEFAULT NULL COMMENT '路由path',
  `name` varchar(191) DEFAULT NULL COMMENT '路由name',
  `hidden` tinyint(1) DEFAULT NULL COMMENT '是否在列表隐藏',
  `component` varchar(191) DEFAULT NULL COMMENT '对应前端文件路径',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序标记',
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `default_menu` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `title` varchar(191) DEFAULT NULL COMMENT '附加属性',
  `icon` varchar(191) DEFAULT NULL COMMENT '附加属性',
  `close_tab` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menus_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_base_menus`
--

LOCK TABLES `sys_base_menus` WRITE;
/*!40000 ALTER TABLE `sys_base_menus` DISABLE KEYS */;
INSERT INTO `sys_base_menus` VALUES (1,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'0','dashboard','dashboard',0,'view/dashboard/index.vue',1,0,0,'仪表盘','setting',0),(2,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'0','about','about',0,'view/about/index.vue',7,0,0,'关于我们','info',0),(3,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'0','admin','superAdmin',0,'view/superAdmin/index.vue',3,0,0,'超级管理员','user-solid',0),(4,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'3','authority','authority',0,'view/superAdmin/authority/authority.vue',1,0,0,'角色管理','s-custom',0),(5,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'3','menu','menu',0,'view/superAdmin/menu/menu.vue',2,1,0,'菜单管理','s-order',0),(6,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'3','api','api',0,'view/superAdmin/api/api.vue',3,1,0,'api管理','s-platform',0),(7,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'3','user','user',0,'view/superAdmin/user/user.vue',4,0,0,'用户管理','coordinate',0),(8,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'0','person','person',1,'view/person/person.vue',4,0,0,'个人信息','message-solid',0),(9,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'0','example','example',0,'view/example/index.vue',6,0,0,'示例文件','s-management',0),(10,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'9','excel','excel',0,'view/example/excel/excel.vue',4,0,0,'excel导入导出','s-marketing',0),(11,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'9','upload','upload',0,'view/example/upload/upload.vue',5,0,0,'媒体库（上传下载）','upload',0),(12,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'9','breakpoint','breakpoint',0,'view/example/breakpoint/breakpoint.vue',6,0,0,'断点续传','upload',0),(13,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'9','customer','customer',0,'view/example/customer/customer.vue',7,0,0,'客户列表（资源示例）','s-custom',0),(14,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'0','systemTools','systemTools',0,'view/systemTools/index.vue',5,0,0,'系统工具','s-cooperation',0),(15,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'14','autoCode','autoCode',0,'view/systemTools/autoCode/index.vue',1,1,0,'代码生成器','cpu',0),(16,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'14','formCreate','formCreate',0,'view/systemTools/formCreate/index.vue',2,1,0,'表单生成器','magic-stick',0),(17,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'14','system','system',0,'view/systemTools/system/system.vue',3,0,0,'系统配置','s-operation',0),(18,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'3','dictionary','dictionary',0,'view/superAdmin/dictionary/sysDictionary.vue',5,0,0,'字典管理','notebook-2',0),(19,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'3','dictionaryDetail/:id','dictionaryDetail',1,'view/superAdmin/dictionary/sysDictionaryDetail.vue',1,0,0,'字典详情','s-order',0),(20,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'3','operation','operation',0,'view/superAdmin/operation/sysOperationRecord.vue',6,0,0,'操作历史','time',0),(21,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'9','simpleUploader','simpleUploader',0,'view/example/simpleUploader/simpleUploader',6,0,0,'断点续传（插件版）','upload',0),(22,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'0','https://www.gin-vue-admin.com','https://www.gin-vue-admin.com',0,'/',0,0,0,'官方网站','s-home',0),(23,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'0','state','state',0,'view/system/state.vue',6,0,0,'服务器状态','cloudy',0),(24,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'14','autoCodeAdmin','autoCodeAdmin',0,'view/systemTools/autoCodeAdmin/index.vue',1,0,0,'自动化代码管理','s-finance',0),(25,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,0,'14','autoCodeEdit/:id','autoCodeEdit',1,'view/systemTools/autoCode/index.vue',0,0,0,'自动化代码（复用）','s-finance',0),(26,'2021-09-15 14:21:51','2021-09-15 14:49:18',NULL,0,'0','cmdb','cmdb',0,'view/cmdb/index.vue',6,0,0,'CMDB','s-tools',0),(27,'2021-09-15 14:37:41','2021-09-15 14:49:58',NULL,0,'26','application','application',0,'view/cmdb/application/application.vue',0,0,0,'Application','s-tools',0);
/*!40000 ALTER TABLE `sys_base_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_data_authority_id`
--

DROP TABLE IF EXISTS `sys_data_authority_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_data_authority_id` (
  `sys_authority_authority_id` varchar(90) NOT NULL COMMENT '角色ID',
  `data_authority_id_authority_id` varchar(90) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_authority_authority_id`,`data_authority_id_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_data_authority_id`
--

LOCK TABLES `sys_data_authority_id` WRITE;
/*!40000 ALTER TABLE `sys_data_authority_id` DISABLE KEYS */;
INSERT INTO `sys_data_authority_id` VALUES ('888','888'),('888','8881'),('888','9528'),('9528','8881'),('9528','9528');
/*!40000 ALTER TABLE `sys_data_authority_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dictionaries`
--

DROP TABLE IF EXISTS `sys_dictionaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dictionaries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL COMMENT '字典名（中）',
  `type` varchar(191) DEFAULT NULL COMMENT '字典名（英）',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `desc` varchar(191) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionaries_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dictionaries`
--

LOCK TABLES `sys_dictionaries` WRITE;
/*!40000 ALTER TABLE `sys_dictionaries` DISABLE KEYS */;
INSERT INTO `sys_dictionaries` VALUES (1,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'性别','sex',1,'性别字典'),(2,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'数据库int类型','int',1,'int类型对应的数据库类型'),(3,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'数据库时间日期类型','time.Time',1,'数据库时间日期类型'),(4,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'数据库浮点型','float64',1,'数据库浮点型'),(5,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'数据库字符串','string',1,'数据库字符串'),(6,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'数据库bool类型','bool',1,'数据库bool类型');
/*!40000 ALTER TABLE `sys_dictionaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dictionary_details`
--

DROP TABLE IF EXISTS `sys_dictionary_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dictionary_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `label` varchar(191) DEFAULT NULL COMMENT '展示值',
  `value` bigint(20) DEFAULT NULL COMMENT '字典值',
  `status` tinyint(1) DEFAULT NULL COMMENT '启用状态',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序标记',
  `sys_dictionary_id` bigint(20) unsigned DEFAULT NULL COMMENT '关联标记',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionary_details_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dictionary_details`
--

LOCK TABLES `sys_dictionary_details` WRITE;
/*!40000 ALTER TABLE `sys_dictionary_details` DISABLE KEYS */;
INSERT INTO `sys_dictionary_details` VALUES (1,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'smallint',1,1,1,2),(2,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'mediumint',2,1,2,2),(3,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'int',3,1,3,2),(4,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'bigint',4,1,4,2),(5,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'date',0,1,0,3),(6,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'time',1,1,1,3),(7,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'year',2,1,2,3),(8,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'datetime',3,1,3,3),(9,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'timestamp',5,1,5,3),(10,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'float',0,1,0,4),(11,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'double',1,1,1,4),(12,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'decimal',2,1,2,4),(13,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'char',0,1,0,5),(14,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'varchar',1,1,1,5),(15,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'tinyblob',2,1,2,5),(16,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'tinytext',3,1,3,5),(17,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'text',4,1,4,5),(18,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'blob',5,1,5,5),(19,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'mediumblob',6,1,6,5),(20,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'mediumtext',7,1,7,5),(21,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'longblob',8,1,8,5),(22,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'longtext',9,1,9,5),(23,'2021-09-08 13:20:09','2021-09-08 13:20:09',NULL,'tinyint',0,1,0,6);
/*!40000 ALTER TABLE `sys_dictionary_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_operation_records`
--

DROP TABLE IF EXISTS `sys_operation_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_operation_records` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `ip` varchar(191) DEFAULT NULL COMMENT '请求ip',
  `method` varchar(191) DEFAULT NULL COMMENT '请求方法',
  `path` varchar(191) DEFAULT NULL COMMENT '请求路径',
  `status` bigint(20) DEFAULT NULL COMMENT '请求状态',
  `latency` bigint(20) DEFAULT NULL COMMENT '延迟',
  `agent` varchar(191) DEFAULT NULL COMMENT '代理',
  `error_message` varchar(191) DEFAULT NULL COMMENT '错误信息',
  `body` longtext COMMENT '请求Body',
  `resp` longtext COMMENT '响应Body',
  `user_id` bigint(20) unsigned DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `idx_sys_operation_records_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_operation_records`
--

LOCK TABLES `sys_operation_records` WRITE;
/*!40000 ALTER TABLE `sys_operation_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_operation_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_authority`
--

DROP TABLE IF EXISTS `sys_user_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_authority` (
  `sys_user_id` bigint(20) unsigned NOT NULL,
  `sys_authority_authority_id` varchar(90) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_user_id`,`sys_authority_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_authority`
--

LOCK TABLES `sys_user_authority` WRITE;
/*!40000 ALTER TABLE `sys_user_authority` DISABLE KEYS */;
INSERT INTO `sys_user_authority` VALUES (1,'888'),(1,'8881'),(1,'9528'),(2,'888');
/*!40000 ALTER TABLE `sys_user_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_users`
--

DROP TABLE IF EXISTS `sys_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `uuid` varchar(191) DEFAULT NULL COMMENT '用户UUID',
  `username` varchar(191) DEFAULT NULL COMMENT '用户登录名',
  `password` varchar(191) DEFAULT NULL COMMENT '用户登录密码',
  `nick_name` varchar(191) DEFAULT '系统用户' COMMENT '用户昵称',
  `header_img` varchar(191) DEFAULT 'http://qmplusimg.henrongyi.top/head.png' COMMENT '用户头像',
  `authority_id` varchar(90) DEFAULT '888' COMMENT '用户角色ID',
  `side_mode` varchar(191) DEFAULT 'dark' COMMENT '用户角色ID',
  `active_color` varchar(191) DEFAULT '#1890ff' COMMENT '用户角色ID',
  `base_color` varchar(191) DEFAULT '#fff' COMMENT '用户角色ID',
  PRIMARY KEY (`id`),
  KEY `idx_sys_users_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_users`
--

LOCK TABLES `sys_users` WRITE;
/*!40000 ALTER TABLE `sys_users` DISABLE KEYS */;
INSERT INTO `sys_users` VALUES (1,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'7c27ebf9-9bab-44a0-ad85-dee644d29316','admin','e10adc3949ba59abbe56e057f20f883e','超级管理员','http://qmplusimg.henrongyi.top/gva_header.jpg','888','dark','#1890ff','#fff'),(2,'2021-09-08 13:07:23','2021-09-08 13:07:23',NULL,'654a14f2-c5dc-4732-bbfe-89c094224b45','a303176530','3ec063004a6f31642261936a379fde3d','QMPlusUser','http://qmplusimg.henrongyi.top/1572075907logo.png','9528','dark','#1890ff','#fff');
/*!40000 ALTER TABLE `sys_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'gva'
--

--
-- Final view structure for view `authority_menu`
--

/*!50001 DROP TABLE IF EXISTS `authority_menu`*/;
/*!50001 DROP VIEW IF EXISTS `authority_menu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `authority_menu` AS select `sys_base_menus`.`id` AS `id`,`sys_base_menus`.`created_at` AS `created_at`,`sys_base_menus`.`updated_at` AS `updated_at`,`sys_base_menus`.`deleted_at` AS `deleted_at`,`sys_base_menus`.`menu_level` AS `menu_level`,`sys_base_menus`.`parent_id` AS `parent_id`,`sys_base_menus`.`path` AS `path`,`sys_base_menus`.`name` AS `name`,`sys_base_menus`.`hidden` AS `hidden`,`sys_base_menus`.`component` AS `component`,`sys_base_menus`.`title` AS `title`,`sys_base_menus`.`icon` AS `icon`,`sys_base_menus`.`sort` AS `sort`,`sys_authority_menus`.`sys_authority_authority_id` AS `authority_id`,`sys_authority_menus`.`sys_base_menu_id` AS `menu_id`,`sys_base_menus`.`keep_alive` AS `keep_alive`,`sys_base_menus`.`close_tab` AS `close_tab`,`sys_base_menus`.`default_menu` AS `default_menu` from (`sys_authority_menus` join `sys_base_menus` on((`sys_authority_menus`.`sys_base_menu_id` = `sys_base_menus`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-15 22:48:37