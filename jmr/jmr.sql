-- MySQL dump 10.13  Distrib 5.1.55, for Win32 (ia32)
--
-- Host: localhost    Database: jmr
-- ------------------------------------------------------
-- Server version	5.1.55-community

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
-- Table structure for table `ad`
--

DROP TABLE IF EXISTS `ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `filepath` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `url` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `adtype` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `click_num` int(4) DEFAULT NULL,
  `status` int(4) DEFAULT NULL,
  `cuserid` int(4) DEFAULT NULL,
  `createdatetime` datetime DEFAULT NULL,
  `uuserid` int(4) DEFAULT NULL,
  `lastupdatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad`
--

LOCK TABLES `ad` WRITE;
/*!40000 ALTER TABLE `ad` DISABLE KEYS */;
/*!40000 ALTER TABLE `ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar` (
  `calendarId` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `content` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `begindate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `cuserid` int(10) DEFAULT NULL,
  `createdatetime` date DEFAULT NULL,
  `uuserid` int(10) DEFAULT NULL,
  `lastupdatetime` date DEFAULT NULL,
  PRIMARY KEY (`calendarId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codedesc`
--

DROP TABLE IF EXISTS `codedesc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `codedesc` (
  `type` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `code` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  PRIMARY KEY (`type`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codedesc`
--

LOCK TABLES `codedesc` WRITE;
/*!40000 ALTER TABLE `codedesc` DISABLE KEYS */;
/*!40000 ALTER TABLE `codedesc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epaper`
--

DROP TABLE IF EXISTS `epaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epaper` (
  `epaperid` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `senddate` date DEFAULT NULL,
  `issend` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cuserid` int(10) DEFAULT NULL,
  `createdatetime` date DEFAULT NULL,
  `uuserid` int(10) DEFAULT NULL,
  `lastupdatetime` date DEFAULT NULL,
  PRIMARY KEY (`epaperid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epaper`
--

LOCK TABLES `epaper` WRITE;
/*!40000 ALTER TABLE `epaper` DISABLE KEYS */;
/*!40000 ALTER TABLE `epaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `functions`
--

DROP TABLE IF EXISTS `functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `functions` (
  `functionsid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET gb2312 DEFAULT NULL,
  `link` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  `topfuncid` int(10) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  PRIMARY KEY (`functionsid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `functions`
--

LOCK TABLES `functions` WRITE;
/*!40000 ALTER TABLE `functions` DISABLE KEYS */;
INSERT INTO `functions` VALUES (2,'管理用户','users.do?act=find',1,NULL,1),(3,'最新消息','news.do?act=find',2,NULL,1);
/*!40000 ALTER TABLE `functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `memberid` int(11) NOT NULL AUTO_INCREMENT,
  `loginid` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `epaper` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cuserid` int(10) DEFAULT NULL,
  `createdatetime` date DEFAULT NULL,
  `uuserid` int(10) DEFAULT NULL,
  `lastupdatetime` date DEFAULT NULL,
  PRIMARY KEY (`memberid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `newsid` int(11) NOT NULL AUTO_INCREMENT,
  `newstype` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `subject_chi` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `content_chi` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `subject_eng` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `content_eng` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `lang_chi` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `lang_eng` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `openapply` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cuserid` int(10) DEFAULT NULL,
  `createdatetime` date DEFAULT NULL,
  `uuserid` int(10) DEFAULT NULL,
  `lastupdatetime` date DEFAULT NULL,
  PRIMARY KEY (`newsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsmember`
--

DROP TABLE IF EXISTS `newsmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsmember` (
  `newsmemberid` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(10) DEFAULT NULL,
  `newsid` int(10) DEFAULT NULL,
  `cuserid` int(10) DEFAULT NULL,
  `createdatetime` date DEFAULT NULL,
  `uuserid` int(10) DEFAULT NULL,
  `lastupdatetime` date DEFAULT NULL,
  PRIMARY KEY (`newsmemberid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsmember`
--

LOCK TABLES `newsmember` WRITE;
/*!40000 ALTER TABLE `newsmember` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsmember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `notesid` int(11) NOT NULL AUTO_INCREMENT,
  `notestype` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `subject_chi` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `content_chi` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `subject_eng` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `content_eng` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `clicknum` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `lang_chi` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `lang_eng` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cuserid` int(10) DEFAULT NULL,
  `createdatetime` date DEFAULT NULL,
  `uuserid` int(10) DEFAULT NULL,
  `lastupdatetime` date DEFAULT NULL,
  PRIMARY KEY (`notesid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notesreply`
--

DROP TABLE IF EXISTS `notesreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notesreply` (
  `notesreplyid` int(11) NOT NULL AUTO_INCREMENT,
  `notesid` int(10) DEFAULT NULL,
  `memberid` int(10) DEFAULT NULL,
  `content` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `cuserid` int(10) DEFAULT NULL,
  `createdatetime` date DEFAULT NULL,
  `uuserid` int(10) DEFAULT NULL,
  `lastupdatetime` date DEFAULT NULL,
  PRIMARY KEY (`notesreplyid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notesreply`
--

LOCK TABLES `notesreply` WRITE;
/*!40000 ALTER TABLE `notesreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `notesreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `cuserid` int(11) DEFAULT NULL,
  `createdatetime` datetime DEFAULT NULL,
  `uuserid` int(11) DEFAULT NULL,
  `lastupdatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','d2518f1f1f61247581ea8e1a69785b3b','admin',1,1,'2012-09-25 09:20:13',NULL,NULL),(2,'admin2','d2518f1f1f61247581ea8e1a69785b3b','admin2',1,1,'2012-09-25 09:47:55',NULL,NULL),(3,'admin3','d2518f1f1f61247581ea8e1a69785b3b','admin3',1,1,'2012-09-25 09:48:08',NULL,NULL),(4,'admin4','d2518f1f1f61247581ea8e1a69785b3b','admin4',1,1,'2012-09-25 09:48:23',NULL,NULL),(5,'admin5','d2518f1f1f61247581ea8e1a69785b3b','admin5',1,1,'2012-09-25 09:48:37',NULL,NULL),(6,'admin6','d2518f1f1f61247581ea8e1a69785b3b','admin6',1,1,'2012-09-25 09:48:53',NULL,NULL),(7,'admin7','d2518f1f1f61247581ea8e1a69785b3b','admin7',1,1,'2012-09-25 09:49:05',NULL,NULL),(8,'admin8','d2518f1f1f61247581ea8e1a69785b3b','admin8',1,1,'2012-09-25 09:49:19',NULL,NULL),(9,'admin9','d2518f1f1f61247581ea8e1a69785b3b','admin9',1,1,'2012-09-25 09:49:33',NULL,NULL),(11,'admin11','d2518f1f1f61247581ea8e1a69785b3b','admin11',1,1,'2012-09-25 09:50:05',NULL,NULL),(12,'admin12','d2518f1f1f61247581ea8e1a69785b3b','admin12',1,1,'2012-09-25 09:50:21',NULL,NULL),(13,'admin13','d2518f1f1f61247581ea8e1a69785b3b','admin13',1,1,'2012-09-25 09:50:38',NULL,NULL),(14,'admin14','d2518f1f1f61247581ea8e1a69785b3b','admin14',1,1,'2012-09-25 09:50:49',NULL,NULL),(15,'admin15','d2518f1f1f61247581ea8e1a69785b3b','admin15',1,1,'2012-09-25 09:51:01',NULL,NULL),(16,'admin16','d2518f1f1f61247581ea8e1a69785b3b','admin16',1,1,'2012-09-25 09:51:13',NULL,NULL),(17,'admin17','d2518f1f1f61247581ea8e1a69785b3b','admin17',1,1,'2012-09-25 09:51:24',NULL,NULL),(18,'admin18','d2518f1f1f61247581ea8e1a69785b3b','admin18',1,1,'2012-09-25 09:51:43',NULL,NULL),(19,'admin19','d2518f1f1f61247581ea8e1a69785b3b','admin19',1,1,'2012-09-25 09:51:55',NULL,NULL),(20,'admin20','d2518f1f1f61247581ea8e1a69785b3b','admin20',1,1,'2012-09-25 09:52:06',NULL,NULL),(21,'admin21','d2518f1f1f61247581ea8e1a69785b3b','admin21',1,1,'2012-09-25 09:52:17',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-15 10:05:03
