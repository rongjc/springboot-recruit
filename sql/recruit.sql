-- MySQL dump 10.13  Distrib 8.0.32, for macos12.6 (arm64)
--
-- Host: localhost    Database: recruit
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Yuu','e10adc3949ba59abbe56e057f20f883e');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bid`
--

DROP TABLE IF EXISTS `bid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bid` (
  `id` bigint NOT NULL COMMENT '投标ID',
  `task_id` bigint DEFAULT NULL COMMENT '任务ID',
  `employee_id` bigint DEFAULT NULL COMMENT '职业者ID',
  `bid_status` tinyint DEFAULT NULL COMMENT '竞标状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bid`
--

LOCK TABLES `bid` WRITE;
/*!40000 ALTER TABLE `bid` DISABLE KEYS */;
INSERT INTO `bid` VALUES (157124285696981,157124090699406,157124225706439,0,'2019-10-16 16:20:57'),(157124347413656,157124009918832,157124288026264,1,'2019-10-16 16:31:14'),(167696143004079,167696130024463,167696117235892,1,'2023-02-21 06:37:10'),(167704823098370,157124114265141,167696117235892,1,'2023-02-22 06:43:51'),(167713934639809,157124114265141,167704695242467,0,'2023-02-23 08:02:26'),(167714286346120,167714010719248,167696117235892,0,'2023-02-23 09:01:03');
/*!40000 ALTER TABLE `bid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` bigint NOT NULL COMMENT '雇员ID',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '登录密码',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `head_img` varchar(255) DEFAULT 'http://recruit1.oss-cn-shenzhen.aliyuncs.com/4aa3d423-b8cf-4520-91ba-3f30b578973f.png' COMMENT '头像地址',
  `tagline` varchar(255) DEFAULT NULL COMMENT '标语',
  `profile` text COMMENT '个人简介',
  `browse_count` int DEFAULT '0' COMMENT '主页被浏览次数',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (157124225706439,'Yuu','123','1225459207@qq.com','13055206361','http://recruit1.oss-cn-shenzhen.aliyuncs.com/dc7fa65a-ae93-4938-8f91-01f6c6e7ee4c.jpg','Good Man!','来跟妲己一起玩耍呀~',0,'2019-10-16 16:10:57'),(157124288026264,'Yuu2','123',NULL,NULL,'http://recruit1.oss-cn-shenzhen.aliyuncs.com/10f65b3a-e73d-4d8b-b95b-3841534ea0dc.png',NULL,NULL,29,'2019-10-16 16:21:20'),(167696117235892,'rongjc','ffffff',NULL,NULL,'http://recruit1.oss-cn-shenzhen.aliyuncs.com/10f65b3a-e73d-4d8b-b95b-3841534ea0dc.png',NULL,NULL,5,'2023-02-21 06:32:52'),(167704692453318,'rongjc1','ffffff',NULL,NULL,'http://recruit1.oss-cn-shenzhen.aliyuncs.com/10f65b3a-e73d-4d8b-b95b-3841534ea0dc.png',NULL,NULL,0,'2023-02-22 06:22:05'),(167704693813874,'rongjc2','ffffff',NULL,NULL,'http://recruit1.oss-cn-shenzhen.aliyuncs.com/10f65b3a-e73d-4d8b-b95b-3841534ea0dc.png',NULL,NULL,0,'2023-02-22 06:22:18'),(167704695242467,'rongjc3','ffffff',NULL,NULL,'http://recruit1.oss-cn-shenzhen.aliyuncs.com/10f65b3a-e73d-4d8b-b95b-3841534ea0dc.png',NULL,NULL,0,'2023-02-22 06:22:32');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_bookmarked`
--

DROP TABLE IF EXISTS `employee_bookmarked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_bookmarked` (
  `id` bigint NOT NULL COMMENT '雇员收藏任务ID',
  `employee_id` bigint DEFAULT NULL COMMENT '雇员ID',
  `task_id` bigint DEFAULT NULL COMMENT '任务ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_bookmarked`
--

LOCK TABLES `employee_bookmarked` WRITE;
/*!40000 ALTER TABLE `employee_bookmarked` DISABLE KEYS */;
INSERT INTO `employee_bookmarked` VALUES (157124280249465,157124225706439,157124114265141),(157124281570732,157124225706439,157124090699406),(157124282308079,157124225706439,157124009918832),(157124468269738,157124288026264,157124114265141);
/*!40000 ALTER TABLE `employee_bookmarked` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_skill`
--

DROP TABLE IF EXISTS `employee_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_skill` (
  `id` bigint NOT NULL COMMENT '雇员技能对应ID',
  `employee_id` bigint DEFAULT NULL COMMENT '雇员ID',
  `skill_name` varchar(255) DEFAULT NULL COMMENT '技能名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_skill`
--

LOCK TABLES `employee_skill` WRITE;
/*!40000 ALTER TABLE `employee_skill` DISABLE KEYS */;
INSERT INTO `employee_skill` VALUES (157124228454456,157124225706439,'Java'),(157124228840540,157124225706439,'MySQL'),(157124229314145,157124225706439,'SSM'),(157124229869194,157124225706439,'Spring Boot');
/*!40000 ALTER TABLE `employee_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer`
--

DROP TABLE IF EXISTS `employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employer` (
  `id` bigint NOT NULL COMMENT '雇主ID',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '登录密码',
  `head_img` varchar(255) DEFAULT NULL COMMENT '头像',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer`
--

LOCK TABLES `employer` WRITE;
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
INSERT INTO `employer` VALUES (157123889925612,'Yuu','123456','http://recruit1.oss-cn-shenzhen.aliyuncs.com/37872ab6-0460-4905-85b1-5350e09df6e4.jpg','13055206361','1225459207@qq.com','2019-10-16 15:14:59'),(167696122195256,'rongjc','ffffff','http://recruit1.oss-cn-shenzhen.aliyuncs.com/10f65b3a-e73d-4d8b-b95b-3841534ea0dc.png',NULL,NULL,'2023-02-21 06:33:42');
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_bower`
--

DROP TABLE IF EXISTS `home_bower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `home_bower` (
  `id` bigint NOT NULL COMMENT '主页浏览表',
  `employee_id` bigint DEFAULT NULL COMMENT '雇员ID',
  `employer_id` bigint DEFAULT NULL COMMENT '雇主ID',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '浏览时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_bower`
--

LOCK TABLES `home_bower` WRITE;
/*!40000 ALTER TABLE `home_bower` DISABLE KEYS */;
INSERT INTO `home_bower` VALUES (157124308317312,157124288026264,157123889925612,'2019-10-16 16:24:43'),(157124362128255,157124288026264,157123889925612,'2019-10-16 16:33:41'),(157124394802989,157124288026264,157123889925612,'2019-10-16 16:39:08'),(157124395181598,157124288026264,157123889925612,'2019-10-16 16:39:12'),(157124399959641,157124288026264,157123889925612,'2019-10-16 16:40:00'),(157124400572249,157124288026264,157123889925612,'2019-10-16 16:40:06'),(157124436645011,157124288026264,157123889925612,'2019-10-16 16:46:06'),(157124444335881,157124288026264,157123889925612,'2019-10-16 16:47:23'),(157124444529063,157124288026264,157123889925612,'2019-10-16 16:47:25'),(157124444718472,157124288026264,157123889925612,'2019-10-16 16:47:27'),(157124444939622,157124288026264,157123889925612,'2019-10-16 16:47:29'),(157124445119862,157124288026264,157123889925612,'2019-10-16 16:47:31'),(157124460085914,157124288026264,157123889925612,'2019-10-16 16:50:01'),(157124460223002,157124288026264,157123889925612,'2019-10-16 16:50:02'),(157124460257603,157124288026264,157123889925612,'2019-10-16 16:50:03'),(157124460283010,157124288026264,157123889925612,'2019-10-16 16:50:03'),(157124460285719,157124288026264,157123889925612,'2019-10-16 16:50:03'),(157124460324956,157124288026264,157123889925612,'2019-10-16 16:50:03'),(157124460338967,157124288026264,157123889925612,'2019-10-16 16:50:03'),(157124460378313,157124288026264,157123889925612,'2019-10-16 16:50:04'),(157124460389161,157124288026264,157123889925612,'2019-10-16 16:50:04'),(157124460425585,157124288026264,157123889925612,'2019-10-16 16:50:04'),(157124460445058,157124288026264,157123889925612,'2019-10-16 16:50:04'),(157124460465351,157124288026264,157123889925612,'2019-10-16 16:50:05'),(157124460475301,157124288026264,157123889925612,'2019-10-16 16:50:05'),(157124460514124,157124288026264,157123889925612,'2019-10-16 16:50:05'),(157124460528858,157124288026264,157123889925612,'2019-10-16 16:50:05'),(167696148927817,167696117235892,167696122195256,'2023-02-21 06:38:09'),(167696149713549,167696117235892,167696122195256,'2023-02-21 06:38:17'),(167704938592019,157124288026264,157123889925612,'2023-02-22 07:03:06'),(167704939896175,167696117235892,157123889925612,'2023-02-22 07:03:19'),(167704940498467,167696117235892,157123889925612,'2023-02-22 07:03:25'),(167705671128498,167696117235892,157123889925612,'2023-02-22 09:05:11'),(167714142885692,157124288026264,157123889925612,'2023-02-23 08:37:09');
/*!40000 ALTER TABLE `home_bower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referrer`
--

DROP TABLE IF EXISTS `referrer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referrer` (
  `task_id` bigint NOT NULL,
  `employee_id` bigint NOT NULL,
  `referrer_id` bigint NOT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`task_id`,`employee_id`,`referrer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referrer`
--

LOCK TABLES `referrer` WRITE;
/*!40000 ALTER TABLE `referrer` DISABLE KEYS */;
INSERT INTO `referrer` VALUES (157124114265141,167696117235892,167696117235892,'2023-02-22 11:28:34'),(157124114265141,167696117235892,167704692453318,'2023-02-22 14:27:38'),(157124114265141,167696117235892,167704693813874,'2023-02-23 14:56:03'),(157124114265141,167704693813874,167696117235892,'2023-02-23 14:55:15'),(157124114265141,167704693813874,167704692453318,'2023-02-22 14:30:10');
/*!40000 ALTER TABLE `referrer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `id` bigint NOT NULL COMMENT '任务ID',
  `category_id` bigint DEFAULT NULL COMMENT '任务分类ID',
  `employer_id` bigint DEFAULT NULL COMMENT '任务发布雇主ID',
  `task_title` varchar(255) DEFAULT NULL COMMENT '任务标题',
  `task_profile` varchar(255) DEFAULT NULL COMMENT '任务简介',
  `task_desc` text COMMENT '任务描述',
  `fees_low` double DEFAULT NULL COMMENT '最低预算价格',
  `fees_high` double DEFAULT NULL COMMENT '最高预算价格',
  `fees_file` varchar(255) DEFAULT NULL COMMENT '任务附件地址',
  `filename` varchar(255) DEFAULT NULL COMMENT '附件文件名称',
  `employee_id` bigint DEFAULT NULL COMMENT '完成任务雇员ID',
  `task_price` double DEFAULT NULL COMMENT '任务成交价格',
  `task_status` tinyint DEFAULT NULL COMMENT '任务状态',
  `close_time` timestamp NULL DEFAULT NULL COMMENT '成交时间',
  `bid_time` timestamp NULL DEFAULT NULL COMMENT '中标时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (157124009918832,157123941263519,157123889925612,'Python developer','Python developer for CMS','Python developer for CMS',1500,999999999,'http://recruit1.oss-cn-shenzhen.aliyuncs.com/d7077ec8-0ed5-4e7d-8e6f-d45138baf212.pdf','file.pdf',157124288026264,1500,0,'2019-10-16 16:37:10','2019-10-16 16:31:23','2019-10-16 15:34:59'),(157124090699406,157123941263519,157123889925612,'Java developer','Java developer','Java developer',8000,999999999,'http://recruit1.oss-cn-shenzhen.aliyuncs.com/5084c0a5-71cb-495d-a929-fb6348c8211d.pdf','file.pdf',157124288026264,8000,0,'2019-10-16 16:39:57','2019-10-16 16:24:40','2019-10-16 15:48:27'),(157124114265141,157123941263519,157123889925612,'Ruby Developer','Ruby Developer','Ruby Developer',7000,999999999,'http://recruit1.oss-cn-shenzhen.aliyuncs.com/31f0cc27-f9a6-4740-9f08-9e016c97d0df.pdf','file.pdf',157124288026264,7000,0,NULL,NULL,'2019-10-16 15:52:23'),(167696130024463,157123941263519,167696122195256,'test','test','test',550,999999999,'','',167696117235892,550,1,NULL,'2023-02-21 06:38:06','2023-02-21 06:35:00'),(167714010719248,157123941263519,157123889925612,'I need a java developer','test','This is a job that needs java developer',5000,999999999,'','',NULL,NULL,0,NULL,NULL,'2023-02-23 08:15:07');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_category`
--

DROP TABLE IF EXISTS `task_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_category` (
  `id` bigint NOT NULL COMMENT '任务分类ID',
  `category_name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `category_img` varchar(255) DEFAULT NULL COMMENT '分类图片展示地址',
  `is_popular` tinyint DEFAULT '0' COMMENT '是否热门 0 否 1 热门',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_category`
--

LOCK TABLES `task_category` WRITE;
/*!40000 ALTER TABLE `task_category` DISABLE KEYS */;
INSERT INTO `task_category` VALUES (157123941263519,'Web','http://recruit1.oss-cn-shenzhen.aliyuncs.com/f5c7a84b-89fb-4b04-8e15-4afe18068de6.jpg',1),(157123944799651,'Data Science','http://recruit1.oss-cn-shenzhen.aliyuncs.com/853bca3f-eb79-478f-85f0-aa03e9def32e.jpg',1),(157123947616803,'Accounting','http://recruit1.oss-cn-shenzhen.aliyuncs.com/ab9a164d-ea0c-4409-a214-901bea818b89.jpg',1),(157123949774553,'Content','http://recruit1.oss-cn-shenzhen.aliyuncs.com/c588a079-e60b-46bd-b274-c3a477a06a90.jpg',1),(157123952210737,'Marketing','http://recruit1.oss-cn-shenzhen.aliyuncs.com/062b6bac-1127-4209-8987-b532180129e9.jpg',1),(157123953698793,'Design','http://recruit1.oss-cn-shenzhen.aliyuncs.com/07d93a43-d92f-44a8-8c86-cf471933eff5.jpg',1),(157123955607669,'Digital Marketing','http://recruit1.oss-cn-shenzhen.aliyuncs.com/875d9129-a0f8-48a8-857a-b5fc2886e215.jpg',1),(157123956834969,'Education','http://recruit1.oss-cn-shenzhen.aliyuncs.com/45f15358-b3ba-4dc3-822e-ae6a233617a3.jpg',1);
/*!40000 ALTER TABLE `task_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_skill`
--

DROP TABLE IF EXISTS `task_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task_skill` (
  `id` bigint NOT NULL COMMENT '任务技能ID',
  `skill_name` varchar(255) DEFAULT NULL COMMENT '技能名称',
  `task_id` bigint DEFAULT NULL COMMENT '任务ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_skill`
--

LOCK TABLES `task_skill` WRITE;
/*!40000 ALTER TABLE `task_skill` DISABLE KEYS */;
INSERT INTO `task_skill` VALUES (157123994236997,'Java',157123994233279),(157123994237672,'SSM',157123994233279),(157123994237921,'Spring Boot',157123994233279),(157124026569962,'Javascript',157124009918832),(157124090700978,'Python',157124090699406),(157124090701279,'Database',157124090699406),(167696130025874,'Node',167696130024463),(167696130026054,'AI',167696130024463),(167714010722367,'Crypto',167714010719248);
/*!40000 ALTER TABLE `task_skill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-24 15:38:13
