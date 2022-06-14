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
-- Table structure for table `user_master`
--

DROP TABLE IF EXISTS `user_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_master` (
  `user_master_id` int(50) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(150) NOT NULL,
  `name` varchar(100) NOT NULL,
  `role` enum('admin','employee') NOT NULL,
  `is_manager` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=no,1=yes',
  `manager_id` int(50) DEFAULT NULL,
  `dept_id` int(50) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by_id` int(50) NOT NULL,
  `updated_by_id` int(50) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=no, 1=yes',
  PRIMARY KEY (`user_master_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `user_master_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `dept_master` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_master`
--

LOCK TABLES `user_master` WRITE;
/*!40000 ALTER TABLE `user_master` DISABLE KEYS */;
INSERT INTO `user_master` VALUES (6,'ameya123','0c0dd480a44071c41ba75c8a6f1b47cd','ameya','admin',1,0,4,'2022-05-18 13:08:50','2022-05-18 13:08:50',0,0,0),(7,'viraj123','dad33e4c86d04b9cdf72a138446305fa','viraj','employee',1,0,1,'2022-05-18 13:11:26','2022-05-18 13:11:26',0,0,0),(8,'srush123 ','d8c2c6536149936da5430a5fe5e367bf','srushti ','employee',0,6,1,'2022-05-18 13:11:26','2022-05-18 13:11:26',0,0,0),(17,'ap123','7253c66f2605a751eb189f31d55a7f26','aniruddh patel','employee',1,6,4,'2022-05-19 18:06:43','2022-05-19 18:06:43',0,0,0),(18,'mansi123','edb7aeacd3789e92f6e6861b283ef278','mansi soni','employee',0,7,1,'2022-05-19 18:07:25','2022-05-19 18:07:25',0,0,0),(24,'apj123 ','8717226f3f726ff19b21e0c7c4089cdc','apj ','admin',1,6,1,'2022-05-23 14:56:07','2022-05-23 14:56:07',0,0,1),(25,'vishwa123 ','93985ce38fb7b74fbbbb710a59eb0a6e','vishwa TRIPATHI','employee',1,7,1,'2022-05-23 15:08:12','2022-05-23 15:08:12',0,0,0),(26,'bankim123 ','dd14d711d8718cc6f26030e6521028ce','Bankim Shah ','employee',0,6,1,'2022-05-24 17:16:07','2022-05-24 17:16:07',0,0,0),(27,'deep123','b50d94d27c88c37c08ed027f873d8580','deep','employee',1,6,4,'2022-06-01 10:56:17','2022-06-01 10:56:17',0,0,0),(28,'brijesh@123.com ','dcd3881068cb34a7af94af2efc3c11e5','Brijesh Somani','employee',0,27,3,'2022-06-07 10:52:34','2022-06-07 14:16:41',6,6,0);
/*!40000 ALTER TABLE `user_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-14 15:13:21
