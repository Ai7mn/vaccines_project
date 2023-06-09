-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: devicesarenadb.mysql.database.azure.com    Database: vaccineapi
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts_myuser`
--

DROP TABLE IF EXISTS `accounts_myuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_myuser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone` varchar(9) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_myuser`
--

LOCK TABLES `accounts_myuser` WRITE;
/*!40000 ALTER TABLE `accounts_myuser` DISABLE KEYS */;
INSERT INTO `accounts_myuser` VALUES (1,'pbkdf2_sha256$260000$RyZOFuyI75WcfOSf5XowfN$vYbbOzcrTF9gnEvbtgkLghushH/SamXHg/KQIdOCrt8=','2023-05-29 19:04:27.153760',1,'aiman','','',1,1,'2023-05-24 21:20:21.847748',NULL,'aiman@gmail.com'),(2,'pbkdf2_sha256$320000$kPetR12rqALezkaxMcoRP3$TX961lgU/csKov+E4eOkwp0JZwwp/ywdDUxrEqrI+WQ=','2023-05-26 01:48:57.583730',0,'1234512345','Aiman','Ali',1,1,'2023-05-24 21:35:32.000000','1243567','aimanahmed042@gmail.com'),(7,'pbkdf2_sha256$320000$1DGU8zQDcfuXnPXGPbQ3wG$WRW1eGngpuzWys0UDUoJVCPvML5Hk/5/HEsN7eV8cMo=','2023-05-30 13:47:33.699769',1,'ali123','ali','ali',1,1,'2023-05-26 21:36:05.000000','7485555','ali123@gmail.com'),(8,'pbkdf2_sha256$320000$c0albInbtqkr8hWO2d4cjc$AAaDFHexvPT5WeVplGy0ApyJhdhGOHpfqUzMx97NRKM=','2023-05-26 23:00:23.363709',0,'a12345678','a','a',1,1,'2023-05-26 22:58:40.000000','578','a@gmail.com'),(9,'Ahmed1@1','2023-05-28 20:22:14.000000',1,'ahmed123','ahmed','m',0,1,'2023-05-28 20:21:54.000000','789','ali@gmail.com'),(10,'pbkdf2_sha256$320000$rLvhEcOqEObYVA2cJfBhJw$xIY5r9L1AhV6Ax9uAvzc6dIKk/Mtu/7O0Uz3aSoAcP8=',NULL,0,'abc123','qwe','qwe',0,1,'2023-05-28 20:25:35.390580','784',NULL),(11,'pbkdf2_sha256$320000$sazV6ltHhltxGI8Saypc8W$39XazsghNfqMWhdK1PAHlK4BlMyVrgq0h+YLbodPNfI=',NULL,0,'abc112233','salah','mohusin',0,1,'2023-05-29 18:24:36.448922','122122222',NULL),(13,'ss','2023-05-30 20:49:06.000000',0,'akkk','','',1,1,'2023-05-30 20:49:20.000000','44','a2@gmail.com'),(14,'Ahmed1@1','2023-05-30 21:20:23.000000',1,'ahm123','ahmed','mohusin',1,1,'2023-05-30 21:20:06.000000','551','ammh@gmail.com'),(15,'pbkdf2_sha256$320000$7pgM9zHADkQeQw1VtFVBx8$Hj0gemkX+fMRK5P8KseZ23P1M48cj99P2OIuIDe4T2w=',NULL,0,'we123','we','we',0,1,'2023-05-30 21:40:33.933113','5454',NULL),(16,'pbkdf2_sha256$320000$C55Dk3bg2BDAjbxXUmUrD9$Aiky31Qd0LiNqafrvod+fhXs4NJordaMEOBMRDy/YeU=',NULL,0,'abc123123','salm','s',0,1,'2023-06-01 22:14:45.738833','787',NULL);
/*!40000 ALTER TABLE `accounts_myuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_myuser_groups`
--

DROP TABLE IF EXISTS `accounts_myuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_myuser_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `myuser_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_myuser_groups_myuser_id_group_id_6e1e817b_uniq` (`myuser_id`,`group_id`),
  KEY `accounts_myuser_groups_group_id_25089153_fk_auth_group_id` (`group_id`),
  CONSTRAINT `accounts_myuser_groups_group_id_25089153_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `accounts_myuser_groups_myuser_id_8dba2d0e_fk_accounts_myuser_id` FOREIGN KEY (`myuser_id`) REFERENCES `accounts_myuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_myuser_groups`
--

LOCK TABLES `accounts_myuser_groups` WRITE;
/*!40000 ALTER TABLE `accounts_myuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_myuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_myuser_user_permissions`
--

DROP TABLE IF EXISTS `accounts_myuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_myuser_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `myuser_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_myuser_user_per_myuser_id_permission_id_d0c28f68_uniq` (`myuser_id`,`permission_id`),
  KEY `accounts_myuser_user_permission_id_27a5b249_fk_auth_perm` (`permission_id`),
  CONSTRAINT `accounts_myuser_user_myuser_id_e664c60a_fk_accounts_` FOREIGN KEY (`myuser_id`) REFERENCES `accounts_myuser` (`id`),
  CONSTRAINT `accounts_myuser_user_permission_id_27a5b249_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_myuser_user_permissions`
--

LOCK TABLES `accounts_myuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `accounts_myuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_myuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add محافظة',7,'add_governorate'),(26,'Can change محافظة',7,'change_governorate'),(27,'Can delete محافظة',7,'delete_governorate'),(28,'Can view محافظة',7,'view_governorate'),(29,'Can add مديرية',8,'add_directorate'),(30,'Can change مديرية',8,'change_directorate'),(31,'Can delete مديرية',8,'delete_directorate'),(32,'Can view مديرية',8,'view_directorate'),(33,'Can add recommends',9,'add_recommends'),(34,'Can change recommends',9,'change_recommends'),(35,'Can delete recommends',9,'delete_recommends'),(36,'Can view recommends',9,'view_recommends'),(37,'Can add child',10,'add_child'),(38,'Can change child',10,'change_child'),(39,'Can delete child',10,'delete_child'),(40,'Can view child',10,'view_child'),(41,'Can add serum',11,'add_serum'),(42,'Can change serum',11,'change_serum'),(43,'Can delete serum',11,'delete_serum'),(44,'Can view serum',11,'view_serum'),(45,'Can add visit',12,'add_visit'),(46,'Can change visit',12,'change_visit'),(47,'Can delete visit',12,'delete_visit'),(48,'Can view visit',12,'view_visit'),(49,'Can add dose',13,'add_dose'),(50,'Can change dose',13,'change_dose'),(51,'Can delete dose',13,'delete_dose'),(52,'Can view dose',13,'view_dose'),(53,'Can add recommendations',9,'add_recommendations'),(54,'Can change recommendations',9,'change_recommendations'),(55,'Can delete recommendations',9,'delete_recommendations'),(56,'Can view recommendations',9,'view_recommendations'),(57,'Can add user',14,'add_myuser'),(58,'Can change user',14,'change_myuser'),(59,'Can delete user',14,'delete_myuser'),(60,'Can view user',14,'view_myuser'),(61,'Can add recommendations',15,'add_recommendations'),(62,'Can change recommendations',15,'change_recommendations'),(63,'Can delete recommendations',15,'delete_recommendations'),(64,'Can view recommendations',15,'view_recommendations'),(65,'Can add Token',16,'add_token'),(66,'Can change Token',16,'change_token'),(67,'Can delete Token',16,'delete_token'),(68,'Can view Token',16,'view_token'),(69,'Can add token',17,'add_tokenproxy'),(70,'Can change token',17,'change_tokenproxy'),(71,'Can delete token',17,'delete_tokenproxy'),(72,'Can view token',17,'view_tokenproxy');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (16,'pbkdf2_sha256$260000$VHAqeDN0vm7XQqZn0ZFtcQ$74vtPxfa1G9VayAM01lnmDrerAkuXghO08pAfG/1Qm0=','2023-05-24 21:13:11.828488',1,'aiman','','','aimanahmed042@gmail.com',1,1,'2023-05-24 20:21:52.085858'),(17,'System.Byte[]',NULL,0,'ahmed','ahmed','salah','ahmed@gmail.com',1,1,'0001-01-01 00:00:00.000000'),(18,'System.Byte[]',NULL,1,'admin','ayman','ahmed','ay@gmail.com',0,1,'0001-01-01 00:00:00.000000'),(19,'System.Byte[]',NULL,0,'emp','salah','mousa','emp@gmail.com',1,1,'0001-01-01 00:00:00.000000'),(22,'System.Byte[]',NULL,0,'dddd091144','d','ddd','',1,1,'0001-01-01 00:00:00.000000'),(23,'System.Byte[]',NULL,0,'tahrar091144','tahr','ar','',1,1,'0001-01-01 00:00:00.000000'),(26,'System.Byte[]',NULL,0,'moatizmohsin091144','moatiz','mohsin','',1,1,'0001-01-01 00:00:00.000000'),(27,'System.Byte[]',NULL,1,'salahtoken','salah','ahmed','salahmousa@gmail.com',1,1,'0001-01-01 00:00:00.000000'),(30,'System.Byte[]',NULL,1,'sal','salah','ahmed','sal@gmail.com',1,1,'0001-01-01 00:00:00.000000'),(35,'System.Byte[]',NULL,1,'sam','salah','ahmed','msal@gmail.com',1,1,'0001-01-01 00:00:00.000000'),(37,'System.Byte[]',NULL,1,'leo','salah','ahmed','mleoal@gmail.com',0,1,'0001-01-01 00:00:00.000000'),(38,'System.Byte[]',NULL,0,'crs','salah','ahmed','mlecrsl@gmail.com',1,1,'0001-01-01 00:00:00.000000'),(39,'System.Byte[]',NULL,1,'ssssalm','salah','ahmed','salml@gmail.com',0,1,'0001-01-01 00:00:00.000000'),(42,'System.Byte[]',NULL,1,'df','salah','ahmed','salml@gmail.com',0,1,'0001-01-01 00:00:00.000000'),(43,'System.Byte[]',NULL,1,'ddf','salah','ahmed','aasalml@gmail.com',0,1,'0001-01-01 00:00:00.000000'),(44,'System.Byte[]',NULL,1,'erd','sam','mosam','ael@gmail.com',0,1,'0001-01-01 00:00:00.000000'),(45,'System.Byte[]',NULL,1,'wewew','sam','mosam','ael@gmail.com',0,1,'0001-01-01 00:00:00.000000'),(46,'System.Byte[]',NULL,0,'dddf','new','ahmed','salml@gmail.com',1,1,'0001-01-01 00:00:00.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
INSERT INTO `authtoken_token` VALUES ('3055c23fd905a56e7a949ff036f0c93b49e68785','2023-05-30 21:11:05.647607',7),('421aa1d5c9b4c463f275d38332d46aeab7981e5b','2023-05-30 21:36:58.160508',10),('4bcb28a61741452fd883d1ca890e4a79fef93a06','2023-05-30 21:41:14.927355',15);
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_accounts_myuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-05-24 21:33:20.418162','1','صنعاء',1,'[{\"added\": {}}]',7,1),(2,'2023-05-24 21:33:44.441698','1','السبعين',1,'[{\"added\": {}}]',8,1),(3,'2023-05-24 21:35:33.134768','1','Aiman Mosa',1,'[{\"added\": {}}]',10,1),(4,'2023-05-26 01:01:32.608949','3','Aiman Mosa زيارة الطفل ',1,'[{\"added\": {}}]',12,1),(5,'2023-05-26 01:20:52.811211','2','1234512345',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\"]}}]',14,1),(6,'2023-05-26 01:30:41.964463','1','Aiman Mosa',2,'[{\"changed\": {\"fields\": [\"\\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\"]}}]',10,1),(7,'2023-05-26 20:24:15.528760','3','Ali Mohammed',1,'[{\"added\": {}}]',10,1),(8,'2023-05-26 20:24:44.398213','3','Ali Mohammed',2,'[{\"changed\": {\"fields\": [\"\\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\"]}}]',10,1),(9,'2023-05-26 20:25:32.307338','5','ali',2,'[{\"changed\": {\"fields\": [\"Superuser status\", \"First name\", \"Staff status\", \"\\u0631\\u0642\\u0645 \\u0627\\u0644\\u062c\\u0648\\u0627\\u0644\", \"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\"]}}]',14,1),(13,'2023-05-26 22:06:08.323022','3','ali123',1,'[{\"added\": {}}]',15,7),(14,'2023-05-26 22:30:36.904051','4','ali123',1,'[{\"added\": {}}]',15,7),(15,'2023-05-26 22:58:40.441717','5','a a',1,'[{\"added\": {}}]',10,7),(16,'2023-05-26 22:59:47.788499','8','a12345678',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"\\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a\"]}}]',14,7),(17,'2023-05-28 20:22:59.543458','9','ahmed123',1,'[{\"added\": {}}]',14,7),(18,'2023-05-28 20:25:35.556254','6','qwe qaz',1,'[{\"added\": {}}]',10,7),(19,'2023-05-29 18:24:36.606526','32','salah salah',1,'[{\"added\": {}}]',10,7),(20,'2023-05-29 20:23:52.658563','5','Aiman Mosa زيارة الطفل ',1,'[{\"added\": {}}]',12,7),(21,'2023-05-30 13:48:53.453638','12','Ahmed2',1,'[{\"added\": {}}]',14,7),(22,'2023-05-30 13:49:17.385843','12','3431522d7a572a2e58f095e749e5415d0e1f419e',1,'[{\"added\": {}}]',17,7),(23,'2023-05-30 13:56:13.424075','5','90848791d75b0f54dd85c86d3f636da4d8d1c01a',1,'[{\"added\": {}}]',17,7),(24,'2023-05-30 13:57:10.654576','2','عمران',1,'[{\"added\": {}}]',7,7),(25,'2023-05-30 13:58:20.846192','2','حرف سفيان',1,'[{\"added\": {}}]',8,7),(26,'2023-05-30 13:58:37.878364','3','حوث',1,'[{\"added\": {}}]',8,7),(27,'2023-05-30 19:18:47.840420','6','aiman',3,'',15,7),(28,'2023-05-30 19:18:47.865210','5','1234512345',3,'',15,7),(29,'2023-05-30 19:18:47.889019','4','ali123',3,'',15,7),(30,'2023-05-30 19:18:47.916495','3','ali123',3,'',15,7),(31,'2023-05-30 19:18:47.940666','2','aiman',3,'',15,7),(32,'2023-05-30 19:18:47.964633','1','aiman',3,'',15,7),(33,'2023-05-30 19:19:24.411150','32','salah salah',3,'',10,7),(34,'2023-05-30 19:19:24.437872','31','moatiz salah',3,'',10,7),(35,'2023-05-30 19:19:24.464885','26',' updated z z',3,'',10,7),(36,'2023-05-30 19:19:24.490978','24','w1 w2',3,'',10,7),(37,'2023-05-30 19:19:24.517245','22','a1 a2',3,'',10,7),(38,'2023-05-30 19:19:24.543990','17','q q',3,'',10,7),(39,'2023-05-30 19:19:24.569886','8','az az',3,'',10,7),(40,'2023-05-30 19:19:24.600119','7','nory salm',3,'',10,7),(41,'2023-05-30 19:19:24.626868','6','qwe qaz',3,'',10,7),(42,'2023-05-30 19:19:24.652626','5','a a',3,'',10,7),(43,'2023-05-30 19:19:24.678274','4','ali ahmed',3,'',10,7),(44,'2023-05-30 19:19:24.703884','3','Ali Mohammed',3,'',10,7),(45,'2023-05-30 19:19:24.733280','2','ali ay',3,'',10,7),(46,'2023-05-30 19:19:24.759028','1','Aiman Mosa',3,'',10,7),(47,'2023-05-30 19:33:10.053677','12','Ahmed2',3,'',14,7),(48,'2023-05-30 19:33:10.079971','6','Ahmed',3,'',14,7),(49,'2023-05-30 19:33:10.106276','5','ali',3,'',14,7),(50,'2023-05-30 20:50:05.301386','13','akkk',1,'[{\"added\": {}}]',14,7),(51,'2023-05-30 20:50:27.773310','13','akkk',2,'[{\"changed\": {\"fields\": [\"Password\"]}}]',14,7),(52,'2023-05-30 21:21:04.884140','14','ahm123',1,'[{\"added\": {}}]',14,7),(53,'2023-05-30 21:40:34.079531','33','we ew',1,'[{\"added\": {}}]',10,7),(54,'2023-06-01 22:14:45.892835','34','salm 123',1,'[{\"added\": {}}]',10,7),(55,'2023-06-01 22:18:43.838939','7','ali123',1,'[{\"added\": {}}]',15,7),(56,'2023-06-01 22:39:58.289630','8','ali123',1,'[{\"added\": {}}]',15,7);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (14,'accounts','myuser'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(16,'authtoken','token'),(17,'authtoken','tokenproxy'),(5,'contenttypes','contenttype'),(10,'dozes','child'),(8,'dozes','directorate'),(13,'dozes','dose'),(7,'dozes','governorate'),(15,'dozes','recommendations'),(9,'dozes','recommends'),(11,'dozes','serum'),(12,'dozes','visit'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-05-06 21:45:37.961836'),(2,'auth','0001_initial','2023-05-06 21:45:46.431650'),(6,'contenttypes','0002_remove_content_type_name','2023-05-06 21:45:49.692835'),(7,'auth','0002_alter_permission_name_max_length','2023-05-06 21:45:50.478163'),(8,'auth','0003_alter_user_email_max_length','2023-05-06 21:45:50.648982'),(9,'auth','0004_alter_user_username_opts','2023-05-06 21:45:50.693289'),(10,'auth','0005_alter_user_last_login_null','2023-05-06 21:45:51.214934'),(11,'auth','0006_require_contenttypes_0002','2023-05-06 21:45:51.261427'),(12,'auth','0007_alter_validators_add_error_messages','2023-05-06 21:45:51.298487'),(13,'auth','0008_alter_user_username_max_length','2023-05-06 21:45:51.438636'),(14,'auth','0009_alter_user_last_name_max_length','2023-05-06 21:45:51.549306'),(15,'auth','0010_alter_group_name_max_length','2023-05-06 21:45:51.698792'),(16,'auth','0011_update_proxy_permissions','2023-05-06 21:45:51.777027'),(17,'auth','0012_alter_user_first_name_max_length','2023-05-06 21:45:51.898566'),(18,'sessions','0001_initial','2023-05-06 21:45:52.955906'),(20,'dozes','0002_alter_child_gender_alter_dose_for_age_and_more','2023-05-06 22:52:01.317142'),(36,'accounts','0001_initial','2023-05-24 21:18:06.826926'),(37,'admin','0001_initial','2023-05-24 21:18:28.473588'),(38,'admin','0002_logentry_remove_auto_add','2023-05-24 21:18:28.753279'),(39,'admin','0003_logentry_add_action_flag_choices','2023-05-24 21:18:29.050506'),(40,'admin','0004_auto_20210424_0427','2023-05-24 21:18:29.322992'),(41,'admin','0005_auto_20210424_0501','2023-05-24 21:18:29.569809'),(42,'admin','0006_auto_20210424_0543','2023-05-24 21:18:29.841262'),(43,'admin','0007_auto_20210424_0619','2023-05-24 21:18:30.086939'),(44,'dozes','0001_initial','2023-05-24 21:18:39.201746'),(45,'dozes','0002_auto_20230525_0028','2023-05-24 21:28:49.716036'),(46,'dozes','0003_alter_child_gender','2023-05-26 00:02:41.531404'),(47,'dozes','0004_visit_next_visit_date','2023-05-26 00:28:44.860472'),(48,'authtoken','0001_initial','2023-05-29 19:08:25.562444'),(49,'authtoken','0002_auto_20160226_1747','2023-05-29 19:08:27.199161'),(50,'authtoken','0003_tokenproxy','2023-05-29 19:08:28.383552'),(51,'dozes','0005_alter_visit_next_visit_date','2023-05-30 15:10:38.491838'),(52,'dozes','0006_alter_visit_next_visit_date','2023-05-30 15:17:18.068839');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('09ipbseegg15xqm4vtbf8wcze0m9wgq0','.eJxVjEEOwiAQRe_C2pBWhBlcuvcMZGAGqRpISrsy3l2bdKHb_977LxVoXUpYu8xhYnVWVh1-t0jpIXUDfKd6azq1usxT1Juid9r1tbE8L7v7d1Col28NPonL7JgGFKCEkO1xiHSyOZoE4B1jioQejWU3oBUaPZgRLYyQxan3BwDfOAE:1q2e1O:--TDrNY5W64DzVwnWnMJA9yUmqJbfmdPyJgZfdZhxYg','2023-06-09 20:26:46.912416'),('2ahn0xf464l6hyew3kvphmwatdtdro38','.eJxVjEsOAiEQBe_C2pABoelx6d4zkG5oZNRAMp-V8e5mklno9lXVe6tI21rjtsgcp6wuyqjT78aUntJ2kB_U7l2n3tZ5Yr0r-qCLvvUsr-vh_h1UWupeJ6aS0GARZz2WcwliCiCNQdiRRQb0YgFwID9kJ4HEQQIegX3xRn2-Cxc4fQ:1q1vun:WMEHc-TYpJZuRkWmRb-K9c9Oa0vtMO8sd6ohCPcsd-s','2023-06-07 21:21:01.025389'),('4631z7lmxxoaws7iv52ye5ztaby8cijf','.eJxVjEEOwiAQRe_C2hAQCoxL9z0DYWZAqoYmpV0Z765NutDtf-_9l4hpW2vcel7ixOIitDj9bpjokdsO-J7abZY0t3WZUO6KPGiX48z5eT3cv4Oaev3WzmJQZyCDngpmzR6zsV55wsECkWEftEkFnR7QsMrBAjA49s4WcEa8P-6UN-s:1q3iAN:XzJk9EQK3cPJB5cAPTM2wOLJDSgBD556GwDKLbkzUYs','2023-06-12 19:04:27.413156'),('8w6gnu288tbm6vgufjq3fgaiaf8tj9lh','.eJxVjLsOAiEQRf-F2pAdQB6W9n4DGZhRVg0ky25l_Hcl2UKbW9xzcl4i4raWuHVe4kziJEAcfr-E-cF1ALpjvTWZW12XOcmhyJ12eWnEz_Pu_gUK9jKyyhBNTjFlH8BPhvIRwAcXmDiw9ZoT8zV9B5RGsjr4bIJXzlgLqMT7A-kEN-o:1q2M7n:50xAWpzhnQA9Q0n-ZIb-xXv2HPu5HCMHepSkRzbSrm4','2023-06-09 01:20:11.693206'),('a9tb5cu031twvhl79qud9xluekz5t5xw','.eJxVjDkOwjAQAP_iGlk-1hclfd5grS8cQLYUJxXi78hSCmhnRvMmHo-9-mPkza-JXIkhl18WMD5zmyI9sN07jb3t2xroTOhpB116yq_b2f4NKo46tyiCsNGIoAxXRUoLyCN3ARJnKDlLMoNFw7QoGlR26ApYHQEEaO2AfL7HZDa3:1q3hWj:-E7crAlsNE88dfXnk1l0D4ZBUIGfayVcfP1tqXxDCQw','2023-06-12 18:23:29.429183'),('aj47psvip949f34x2rmrqgclt68djlky','.eJxVjEsOAiEQBe_C2pABoelx6d4zkG5oZNRAMp-V8e5mklno9lXVe6tI21rjtsgcp6wuyqjT78aUntJ2kB_U7l2n3tZ5Yr0r-qCLvvUsr-vh_h1UWupeJ6aS0GARZz2WcwliCiCNQdiRRQb0YgFwID9kJ4HEQQIegX3xRn2-Cxc4fQ:1q2KvV:ivVU6HPRXQ3WSBjbeXXun2TTv-foiGNR9jKukFu5gNk','2023-06-09 00:03:25.417642'),('kkzt1r0upt3bgtu9oisbhfeelgng532j','.eJxVjDsOwjAQRO_iGln5rDcOJX3OYK29axxAthQnFeLuJFIK6Ebz3sxbOdrW5LYqi5tZXZVVl9_OU3hKPgA_KN-LDiWvy-z1oeiTVj0VltftdP8OEtW0r03s2Y5g0AB03IZAe5DGWyaK2BnogwdsRk8ysGFEixYitoaHKIigPl_gRTe_:1q2gQ3:iYTZBXHwEojX4IyR717ZX4JYDpHDcBN3ateyeFdhGKs','2023-06-09 23:00:23.390068'),('pvl0jdll1mz9wj9t6wy7wp5pjfz7xahc','.eJxVjDsOwyAQBe9CHaE15psyvc-AWBaCkwgkY1dR7h4huUjaNzPvzXw49uKPnja_Ersywy6_G4b4THUAeoR6bzy2um8r8qHwk3a-NEqv2-n-HZTQy6itQW2iVEIDYHDRWtCSSKCEpGDKiSYEsDgn0kFZ7WRWMFsxQ3YCkX2-13w3bA:1q3O45:Cz9vuh1mv9cc860M9UEg7R2xsM2Rx99iTKJvwGei8pw','2023-06-11 21:36:37.622718'),('si8iyobfhpmov8i0t5k2oo564ii4gvdl','.eJxVjDsOwjAQBe_iGlnrJPbuUtJzBmv9IwHkSHFSIe4OkVJA-2bmvZSXbR391vLip6TOqlOn3y1IfOS6g3SXept1nOu6TEHvij5o09c55eflcP8ORmnjtybIMRJAz84IiiuWbD90Dg1IYAA0GIzjgqGQpYGYXbLIQwfIIZNT7w-wfTZJ:1q2M9Y:9DE4li0kqx-7ndQYTCnJxBTsnW_K19_P458FHT2W-rU','2023-06-09 01:22:00.371867'),('x4m76g7cn4rbykk3eozi33xzkn5b41jb','.eJxVjDkOwjAQAP_iGlk-1hclfd5grS8cQLYUJxXi78hSCmhnRvMmHo-9-mPkza-JXIkhl18WMD5zmyI9sN07jb3t2xroTOhpB116yq_b2f4NKo46tyiCsNGIoAxXRUoLyCN3ARJnKDlLMoNFw7QoGlR26ApYHQEEaO2AfL7HZDa3:1q3zhF:8fc9IBYWVvnIO2Vu1G9Er49NbtNFdioSl_ajy2sg1oM','2023-06-13 13:47:33.725750'),('xj6q4p2e933j5yt69zkki6akkky4ad9q','.eJxVjMEOwiAQRP-FsyFAWRCP3v0GssuCVA1NSnsy_rtt0oMeZ96beYuI61Lj2vMcRxYXoUGcfkvC9MxtJ_zAdp9kmtoyjyR3RR60y9vE-XU93L-Dir1ua3BGOcW-GJ01DVuwmLQtQDYNxTsMCoJX1uA5J-KQWSOhDQCpOCYrPl_wlDgm:1pvm7t:KbWEKYsGMzrAR5JhAwVFcQ4ALO_otrXrMLGExfsP_Qw','2023-05-21 21:41:05.047151');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dozes_child`
--

DROP TABLE IF EXISTS `dozes_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dozes_child` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `second_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `serial` varchar(120) DEFAULT NULL,
  `gender` varchar(100) NOT NULL,
  `date_of_birth` varchar(100) DEFAULT NULL,
  `directorate_id` bigint DEFAULT NULL,
  `phone` varchar(9) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serial` (`serial`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `dozes_child_directorate_id_8b2a8f3a_fk_dozes_directorate_id` (`directorate_id`),
  CONSTRAINT `dozes_child_directorate_id_8b2a8f3a_fk_dozes_directorate_id` FOREIGN KEY (`directorate_id`) REFERENCES `dozes_directorate` (`id`),
  CONSTRAINT `dozes_child_user_id_ddf77b25_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dozes_child`
--

LOCK TABLES `dozes_child` WRITE;
/*!40000 ALTER TABLE `dozes_child` DISABLE KEYS */;
INSERT INTO `dozes_child` VALUES (33,'we','ew','we','we123','ذكر','2004/12/7',2,'5454',NULL),(34,'salm','123','s','abc123123','ذكر','ذو القعدة /08 /1444',2,'787',NULL);
/*!40000 ALTER TABLE `dozes_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dozes_directorate`
--

DROP TABLE IF EXISTS `dozes_directorate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dozes_directorate` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `governorate_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dozes_directorate_governorate_id_72ee49f4_fk_dozes_gov` (`governorate_id`),
  CONSTRAINT `dozes_directorate_governorate_id_72ee49f4_fk_dozes_gov` FOREIGN KEY (`governorate_id`) REFERENCES `dozes_governorate` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dozes_directorate`
--

LOCK TABLES `dozes_directorate` WRITE;
/*!40000 ALTER TABLE `dozes_directorate` DISABLE KEYS */;
INSERT INTO `dozes_directorate` VALUES (1,'السبعين',1),(2,'حرف سفيان',2),(3,'حوث',2);
/*!40000 ALTER TABLE `dozes_directorate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dozes_dose`
--

DROP TABLE IF EXISTS `dozes_dose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dozes_dose` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dose_number` int unsigned NOT NULL,
  `production_date` varchar(100) DEFAULT NULL,
  `exp_date` varchar(100) DEFAULT NULL,
  `for_age` varchar(100) DEFAULT NULL,
  `serum_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dozes_dose_serum_id_0a9ecfaa_fk_dozes_serum_id` (`serum_id`),
  CONSTRAINT `dozes_dose_serum_id_0a9ecfaa_fk_dozes_serum_id` FOREIGN KEY (`serum_id`) REFERENCES `dozes_serum` (`id`),
  CONSTRAINT `dozes_dose_chk_1` CHECK ((`dose_number` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dozes_dose`
--

LOCK TABLES `dozes_dose` WRITE;
/*!40000 ALTER TABLE `dozes_dose` DISABLE KEYS */;
INSERT INTO `dozes_dose` VALUES (1,1,'ذو القعدة /05 /1444','ذو القعدة /05 /1444','ddd',1);
/*!40000 ALTER TABLE `dozes_dose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dozes_governorate`
--

DROP TABLE IF EXISTS `dozes_governorate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dozes_governorate` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dozes_governorate`
--

LOCK TABLES `dozes_governorate` WRITE;
/*!40000 ALTER TABLE `dozes_governorate` DISABLE KEYS */;
INSERT INTO `dozes_governorate` VALUES (1,'صنعاء'),(2,'عمران');
/*!40000 ALTER TABLE `dozes_governorate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dozes_recommends`
--

DROP TABLE IF EXISTS `dozes_recommends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dozes_recommends` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `recommend_text` longtext NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dozes_recommends_user_id_83f4e44e_fk_accounts_myuser_id` (`user_id`),
  CONSTRAINT `dozes_recommends_user_id_83f4e44e_fk_accounts_myuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_myuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dozes_recommends`
--

LOCK TABLES `dozes_recommends` WRITE;
/*!40000 ALTER TABLE `dozes_recommends` DISABLE KEYS */;
INSERT INTO `dozes_recommends` VALUES (7,'try the best',7),(8,'hi hi',7);
/*!40000 ALTER TABLE `dozes_recommends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dozes_serum`
--

DROP TABLE IF EXISTS `dozes_serum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dozes_serum` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `made_in` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dozes_serum`
--

LOCK TABLES `dozes_serum` WRITE;
/*!40000 ALTER TABLE `dozes_serum` DISABLE KEYS */;
INSERT INTO `dozes_serum` VALUES (1,'h1','شراب','الهند');
/*!40000 ALTER TABLE `dozes_serum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dozes_visit`
--

DROP TABLE IF EXISTS `dozes_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dozes_visit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `visit_date` varchar(100) DEFAULT NULL,
  `is_taken` tinyint(1) NOT NULL,
  `next_visit` int unsigned DEFAULT NULL,
  `child_id` bigint NOT NULL,
  `next_visit_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dozes_visit_child_id_6839c4e2_fk_dozes_child_id` (`child_id`),
  CONSTRAINT `dozes_visit_child_id_6839c4e2_fk_dozes_child_id` FOREIGN KEY (`child_id`) REFERENCES `dozes_child` (`id`),
  CONSTRAINT `dozes_visit_chk_1` CHECK ((`next_visit` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dozes_visit`
--

LOCK TABLES `dozes_visit` WRITE;
/*!40000 ALTER TABLE `dozes_visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `dozes_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dozes_visit_dose`
--

DROP TABLE IF EXISTS `dozes_visit_dose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dozes_visit_dose` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `visit_id` bigint NOT NULL,
  `dose_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dozes_visit_dose_visit_id_dose_id_4382b546_uniq` (`visit_id`,`dose_id`),
  KEY `dozes_visit_dose_dose_id_398c8ee5_fk_dozes_dose_id` (`dose_id`),
  CONSTRAINT `dozes_visit_dose_dose_id_398c8ee5_fk_dozes_dose_id` FOREIGN KEY (`dose_id`) REFERENCES `dozes_dose` (`id`),
  CONSTRAINT `dozes_visit_dose_visit_id_c6ad8e95_fk_dozes_visit_id` FOREIGN KEY (`visit_id`) REFERENCES `dozes_visit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dozes_visit_dose`
--

LOCK TABLES `dozes_visit_dose` WRITE;
/*!40000 ALTER TABLE `dozes_visit_dose` DISABLE KEYS */;
/*!40000 ALTER TABLE `dozes_visit_dose` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-03 20:55:07
