-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: my_db
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

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
-- Table structure for table `form_master`
--

DROP TABLE IF EXISTS `form_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_master` (
  `form_id` int(50) NOT NULL AUTO_INCREMENT,
  `date_manager` date NOT NULL DEFAULT current_timestamp(),
  `date_emp` date NOT NULL DEFAULT current_timestamp(),
  `task_id` int(50) NOT NULL,
  `desc_manager` text NOT NULL,
  `desc_emp` text NOT NULL,
  `for_id` int(50) NOT NULL,
  `form_guid` varchar(255) NOT NULL,
  `manager_id` int(50) NOT NULL,
  `duedate` date DEFAULT NULL,
  `created_by_id` int(50) NOT NULL COMMENT 'id of manager or admin\r\nBecause only manager or admin can submit the manager''s evaluation for his or her teammates..',
  `updated_by_id` int(50) NOT NULL COMMENT 'employee or manager id comes here when they submit the employee''s evaluation',
  `created_manager_date` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'The date and time  when the manager of particular employee created or submited manager''s evaluation for that employee',
  `updated_emp_date` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'The date and time  when the employee submit his/her self evaluation.',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=no, 1=yes',
  `is_submit` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0-not submitted\r\n1-submitted',
  PRIMARY KEY (`form_id`),
  KEY `task_id` (`task_id`),
  KEY `for_id` (`for_id`),
  CONSTRAINT `form_master_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `task_master` (`task_id`),
  CONSTRAINT `form_master_ibfk_2` FOREIGN KEY (`for_id`) REFERENCES `user_master` (`user_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_master`
--

LOCK TABLES `form_master` WRITE;
/*!40000 ALTER TABLE `form_master` DISABLE KEYS */;
INSERT INTO `form_master` VALUES (24,'2022-06-09','2022-06-07',1,'good','hard woking',17,'6295efc1c9f73',6,NULL,0,0,'2022-05-31 16:09:37','2022-05-31 16:09:37',0,0),(25,'2022-06-09','2022-06-07',3,'very good','',17,'6295f07ed665a',6,NULL,0,0,'2022-05-31 16:10:24','2022-05-31 16:10:24',0,0),(27,'2022-06-09','2022-04-21',4,'having good knowledge on particular this topic.','I think i am doing well but require more practice for the same.',27,'6296f8852133d',6,NULL,0,0,'2022-06-01 10:58:03','2022-06-01 10:58:03',0,1),(28,'2022-06-09','2022-04-23',3,'having good knowledge on particular this topic.','hard woking',27,'6297046870fa1',6,NULL,0,0,'2022-06-01 11:47:37','2022-06-01 11:47:37',0,1),(29,'2022-06-09','2022-05-17',1,'performance is good','I think i am doing well but require more practice for the same.',18,'6297194396988',7,NULL,0,0,'2022-06-01 13:17:07','2022-06-01 13:17:07',0,1),(34,'2022-06-09','2022-05-05',1,'good work','good work',8,'629b4f127e72b',6,NULL,0,0,'2022-06-04 17:55:18','2022-06-04 17:55:18',0,1),(35,'2022-06-09','2022-05-09',4,'VERY HARD WORKIN GUY.','',27,'629f2650e6535',6,NULL,6,0,'2022-06-07 15:50:34','2022-06-07 15:50:34',0,0),(37,'2022-06-09','2022-06-07',4,'kucj to kar','',26,'629f2b2875ed0',6,NULL,6,0,'2022-06-07 16:10:45','2022-06-07 16:10:45',0,0),(38,'2022-06-09','2022-06-07',4,'good work','fssw',27,'629f2ba7b1261',6,NULL,6,27,'2022-06-07 16:13:11','2022-06-07 16:20:52',0,1),(39,'2022-06-09','2022-06-07',1,'khkhkj','kucj to kar',27,'629f3b5f876f4',6,NULL,6,27,'2022-06-07 17:20:48','2022-06-07 17:22:54',0,1),(40,'2022-06-09','2022-06-09',3,'good work','',27,'62a18919b956e',6,NULL,6,0,'2022-06-09 11:16:30','2022-06-09 11:16:30',0,0),(41,'2022-06-10','2022-06-10',1,'good work','hard_work',17,'62a30ccb53ddb',6,'2022-06-30',6,17,'2022-06-10 14:52:06','2022-06-10 15:08:50',0,1),(43,'2022-06-10','2022-06-10',4,'good work','',17,'62a315d280610',6,'2022-06-08',6,0,'2022-06-10 15:28:51','2022-06-10 15:28:51',0,0),(44,'2022-06-10','2022-06-10',3,'good work','',17,'62a325d5de376',6,'2022-06-12',6,0,'2022-06-10 16:37:24','2022-06-10 16:37:24',0,0),(45,'2022-06-10','2022-06-10',4,'khkhkj','good work',17,'62a3263d06345',6,'2022-06-12',6,17,'2022-06-10 16:39:50','2022-06-10 16:42:28',0,1);
/*!40000 ALTER TABLE `form_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-14 15:13:20
