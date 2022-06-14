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
-- Table structure for table `form_isto_para`
--

DROP TABLE IF EXISTS `form_isto_para`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_isto_para` (
  `form_isto_para_id` int(50) NOT NULL AUTO_INCREMENT,
  `form_id` int(50) NOT NULL,
  `task_id` int(50) NOT NULL,
  `para_id` int(50) NOT NULL,
  `user_master_id` int(50) NOT NULL,
  `rating_emp` int(20) NOT NULL,
  `rating_manager` int(20) NOT NULL,
  `created_by_id` int(50) NOT NULL,
  `updated_by_id` int(50) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=no 1=yes',
  `is_submit` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-not submitted\r\n1-submitted',
  PRIMARY KEY (`form_isto_para_id`),
  KEY `form_id` (`form_id`),
  KEY `task_id` (`task_id`),
  KEY `para_id` (`para_id`),
  KEY `user_master_id` (`user_master_id`),
  CONSTRAINT `form_isto_para_ibfk_1` FOREIGN KEY (`form_id`) REFERENCES `form_master` (`form_id`),
  CONSTRAINT `form_isto_para_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `task_master` (`task_id`),
  CONSTRAINT `form_isto_para_ibfk_3` FOREIGN KEY (`para_id`) REFERENCES `para_master` (`para_id`),
  CONSTRAINT `form_isto_para_ibfk_4` FOREIGN KEY (`user_master_id`) REFERENCES `user_master` (`user_master_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_isto_para`
--

LOCK TABLES `form_isto_para` WRITE;
/*!40000 ALTER TABLE `form_isto_para` DISABLE KEYS */;
INSERT INTO `form_isto_para` VALUES (41,27,4,1,27,7,7,0,0,'2022-06-01 10:58:03','2022-06-01 10:58:03',0,1),(42,27,4,2,27,6,8,0,0,'2022-06-01 10:58:03','2022-06-01 10:58:03',0,1),(43,27,4,3,27,6,8,0,0,'2022-06-01 10:58:03','2022-06-01 10:58:03',0,1),(44,28,3,1,27,8,8,0,0,'2022-06-01 11:47:37','2022-06-01 11:47:37',0,1),(45,28,3,2,27,9,6,0,0,'2022-06-01 11:47:37','2022-06-01 11:47:37',0,1),(46,28,3,3,27,10,5,0,0,'2022-06-01 11:47:37','2022-06-01 11:47:37',0,1),(47,29,1,1,18,8,7,0,0,'2022-06-01 13:17:07','2022-06-01 13:17:07',0,1),(48,29,1,2,18,9,6,0,0,'2022-06-01 13:17:07','2022-06-01 13:17:07',0,1),(49,29,1,3,18,10,5,0,0,'2022-06-01 13:17:07','2022-06-01 13:17:07',0,1),(50,31,1,1,8,0,7,0,0,'2022-06-02 12:58:25','2022-06-02 12:58:25',0,0),(51,31,1,2,8,0,9,0,0,'2022-06-02 12:58:25','2022-06-02 12:58:25',0,0),(52,31,1,3,8,0,10,0,0,'2022-06-02 12:58:25','2022-06-02 12:58:25',0,0),(53,34,1,1,8,9,8,0,0,'2022-06-04 17:55:18','2022-06-04 17:55:18',0,1),(54,34,1,2,8,7,9,0,0,'2022-06-04 17:55:18','2022-06-04 17:55:18',0,1),(55,34,1,3,8,10,10,0,0,'2022-06-04 17:55:18','2022-06-04 17:55:18',0,1),(56,35,4,1,27,8,7,0,0,'2022-06-07 15:50:34','2022-06-07 15:50:34',0,1),(57,35,4,2,27,9,9,0,0,'2022-06-07 15:50:34','2022-06-07 15:50:34',0,1),(58,35,4,3,27,8,10,0,0,'2022-06-07 15:50:34','2022-06-07 15:50:34',0,1),(59,37,4,1,26,0,5,0,0,'2022-06-07 16:10:45','2022-06-07 16:10:45',0,0),(60,37,4,2,26,0,5,0,0,'2022-06-07 16:10:45','2022-06-07 16:10:45',0,0),(61,37,4,3,26,0,5,0,0,'2022-06-07 16:10:45','2022-06-07 16:10:45',0,0),(62,38,4,1,27,6,5,0,0,'2022-06-07 16:13:11','2022-06-07 16:13:11',0,1),(63,38,4,2,27,6,5,0,0,'2022-06-07 16:13:11','2022-06-07 16:13:11',0,1),(64,38,4,3,27,6,5,0,0,'2022-06-07 16:13:11','2022-06-07 16:13:11',0,1),(65,39,1,1,27,5,7,0,0,'2022-06-07 17:20:48','2022-06-07 17:20:48',0,1),(66,39,1,2,27,6,9,0,0,'2022-06-07 17:20:48','2022-06-07 17:20:48',0,1),(67,39,1,3,27,6,10,0,0,'2022-06-07 17:20:48','2022-06-07 17:20:48',0,1),(68,40,3,1,27,0,6,0,0,'2022-06-09 11:16:30','2022-06-09 11:16:30',0,0),(69,40,3,2,27,0,6,0,0,'2022-06-09 11:16:30','2022-06-09 11:16:30',0,0),(70,40,3,3,27,0,6,0,0,'2022-06-09 11:16:30','2022-06-09 11:16:30',0,0),(71,41,1,1,17,6,7,0,0,'2022-06-10 14:52:06','2022-06-10 14:52:06',0,1),(72,41,1,2,17,9,6,0,0,'2022-06-10 14:52:06','2022-06-10 14:52:06',0,1),(73,41,1,3,17,8,6,0,0,'2022-06-10 14:52:06','2022-06-10 14:52:06',0,1),(74,43,4,1,17,0,7,0,0,'2022-06-10 15:28:51','2022-06-10 15:28:51',0,0),(75,43,4,2,17,0,9,0,0,'2022-06-10 15:28:51','2022-06-10 15:28:51',0,0),(76,43,4,3,17,0,10,0,0,'2022-06-10 15:28:51','2022-06-10 15:28:51',0,0),(77,44,3,1,17,0,11,0,0,'2022-06-10 16:37:24','2022-06-10 16:37:24',0,0),(78,44,3,2,17,0,11,0,0,'2022-06-10 16:37:24','2022-06-10 16:37:24',0,0),(79,44,3,3,17,0,11,0,0,'2022-06-10 16:37:24','2022-06-10 16:37:24',0,0),(80,45,4,1,17,10,9,0,0,'2022-06-10 16:39:50','2022-06-10 16:39:50',0,1),(81,45,4,2,17,6,7,0,0,'2022-06-10 16:39:50','2022-06-10 16:39:50',0,1),(82,45,4,3,17,6,8,0,0,'2022-06-10 16:39:50','2022-06-10 16:39:50',0,1);
/*!40000 ALTER TABLE `form_isto_para` ENABLE KEYS */;
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
