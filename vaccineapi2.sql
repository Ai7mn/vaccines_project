-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: devicesarenadb.mysql.database.azure.com    Database: vaccineapi2
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_myuser`
--

LOCK TABLES `accounts_myuser` WRITE;
/*!40000 ALTER TABLE `accounts_myuser` DISABLE KEYS */;
INSERT INTO `accounts_myuser` VALUES (1,'pbkdf2_sha256$320000$EDCrDzeFAy8Ojb73fVnJov$w27C47jdp1/V+SIgE21qKjBaTgKK1K9RmtJPgCnJcE0=',NULL,1,'aiman','','',1,1,'2023-05-24 21:08:10.944652',NULL,'aiman@gmail.com'),(2,'pbkdf2_sha256$320000$F3SX0I4j6O9BhFu1x4Tvrc$jwmudRiTXjQ6CL2ShdgX4iFc8yIZAo/pljvDeVnJhdo=',NULL,1,'ali','','',1,1,'2023-05-24 21:08:49.433355',NULL,'ali@gmail.com');
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
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can view permission',1,'view_permission'),(5,'Can add group',2,'add_group'),(6,'Can change group',2,'change_group'),(7,'Can delete group',2,'delete_group'),(8,'Can view group',2,'view_group'),(9,'Can add content type',3,'add_contenttype'),(10,'Can change content type',3,'change_contenttype'),(11,'Can delete content type',3,'delete_contenttype'),(12,'Can view content type',3,'view_contenttype'),(13,'Can add user',4,'add_myuser'),(14,'Can change user',4,'change_myuser'),(15,'Can delete user',4,'delete_myuser'),(16,'Can view user',4,'view_myuser'),(17,'Can add log entry',5,'add_logentry'),(18,'Can change log entry',5,'change_logentry'),(19,'Can delete log entry',5,'delete_logentry'),(20,'Can view log entry',5,'view_logentry'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add child',7,'add_child'),(26,'Can change child',7,'change_child'),(27,'Can delete child',7,'delete_child'),(28,'Can view child',7,'view_child'),(29,'Can add dose',8,'add_dose'),(30,'Can change dose',8,'change_dose'),(31,'Can delete dose',8,'delete_dose'),(32,'Can view dose',8,'view_dose'),(33,'Can add محافظة',9,'add_governorate'),(34,'Can change محافظة',9,'change_governorate'),(35,'Can delete محافظة',9,'delete_governorate'),(36,'Can view محافظة',9,'view_governorate'),(37,'Can add serum',10,'add_serum'),(38,'Can change serum',10,'change_serum'),(39,'Can delete serum',10,'delete_serum'),(40,'Can view serum',10,'view_serum'),(41,'Can add visit',11,'add_visit'),(42,'Can change visit',11,'change_visit'),(43,'Can delete visit',11,'delete_visit'),(44,'Can view visit',11,'view_visit'),(45,'Can add مديرية',12,'add_directorate'),(46,'Can change مديرية',12,'change_directorate'),(47,'Can delete مديرية',12,'delete_directorate'),(48,'Can view مديرية',12,'view_directorate'),(49,'Can add recommendations',13,'add_recommendations'),(50,'Can change recommendations',13,'change_recommendations'),(51,'Can delete recommendations',13,'delete_recommendations'),(52,'Can view recommendations',13,'view_recommendations'),(53,'Can add all users',14,'add_allusers'),(54,'Can change all users',14,'change_allusers'),(55,'Can delete all users',14,'delete_allusers'),(56,'Can view all users',14,'view_allusers');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
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
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (4,'accounts','myuser'),(5,'admin','logentry'),(2,'auth','group'),(1,'auth','permission'),(3,'contenttypes','contenttype'),(14,'dozes','allusers'),(7,'dozes','child'),(12,'dozes','directorate'),(8,'dozes','dose'),(9,'dozes','governorate'),(13,'dozes','recommendations'),(10,'dozes','serum'),(11,'dozes','visit'),(6,'sessions','session');
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
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-05-24 21:01:41.363885'),(2,'contenttypes','0002_remove_content_type_name','2023-05-24 21:01:43.747693'),(3,'auth','0001_initial','2023-05-24 21:01:49.896057'),(4,'auth','0002_alter_permission_name_max_length','2023-05-24 21:01:51.142988'),(5,'auth','0003_alter_user_email_max_length','2023-05-24 21:01:53.697422'),(6,'auth','0004_alter_user_username_opts','2023-05-24 21:01:54.025598'),(7,'auth','0005_alter_user_last_login_null','2023-05-24 21:01:54.316694'),(8,'auth','0006_require_contenttypes_0002','2023-05-24 21:01:54.552413'),(9,'auth','0007_alter_validators_add_error_messages','2023-05-24 21:01:54.871160'),(10,'auth','0008_alter_user_username_max_length','2023-05-24 21:01:55.201122'),(11,'auth','0009_alter_user_last_name_max_length','2023-05-24 21:01:55.527087'),(12,'auth','0010_alter_group_name_max_length','2023-05-24 21:01:55.964751'),(13,'auth','0011_update_proxy_permissions','2023-05-24 21:01:56.818788'),(14,'auth','0012_alter_user_first_name_max_length','2023-05-24 21:01:57.279173'),(15,'accounts','0001_initial','2023-05-24 21:02:12.480747'),(16,'admin','0001_initial','2023-05-24 21:07:29.759100'),(17,'admin','0002_logentry_remove_auto_add','2023-05-24 21:07:29.807617'),(18,'admin','0003_logentry_add_action_flag_choices','2023-05-24 21:07:29.853536'),(19,'dozes','0001_initial','2023-05-24 21:07:31.857368'),(20,'dozes','0002_alter_child_gender_alter_dose_for_age_and_more','2023-05-24 21:07:32.406255'),(21,'dozes','0003_alter_dose_for_age','2023-05-24 21:07:32.451253'),(22,'dozes','0004_alter_dose_production_date','2023-05-24 21:07:32.660129'),(23,'dozes','0005_alter_dose_production_date','2023-05-24 21:07:32.873728'),(24,'dozes','0006_auto_20230508_0034','2023-05-24 21:07:33.131900'),(25,'sessions','0001_initial','2023-05-24 21:07:33.313337');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `serial` (`serial`),
  KEY `dozes_child_directorate_id_8b2a8f3a_fk_dozes_directorate_id` (`directorate_id`),
  CONSTRAINT `dozes_child_directorate_id_8b2a8f3a_fk_dozes_directorate_id` FOREIGN KEY (`directorate_id`) REFERENCES `dozes_directorate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dozes_child`
--

LOCK TABLES `dozes_child` WRITE;
/*!40000 ALTER TABLE `dozes_child` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dozes_directorate`
--

LOCK TABLES `dozes_directorate` WRITE;
/*!40000 ALTER TABLE `dozes_directorate` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dozes_dose`
--

LOCK TABLES `dozes_dose` WRITE;
/*!40000 ALTER TABLE `dozes_dose` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dozes_governorate`
--

LOCK TABLES `dozes_governorate` WRITE;
/*!40000 ALTER TABLE `dozes_governorate` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dozes_recommends`
--

LOCK TABLES `dozes_recommends` WRITE;
/*!40000 ALTER TABLE `dozes_recommends` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dozes_serum`
--

LOCK TABLES `dozes_serum` WRITE;
/*!40000 ALTER TABLE `dozes_serum` DISABLE KEYS */;
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
  PRIMARY KEY (`id`),
  KEY `dozes_visit_child_id_6839c4e2_fk_dozes_child_id` (`child_id`),
  CONSTRAINT `dozes_visit_child_id_6839c4e2_fk_dozes_child_id` FOREIGN KEY (`child_id`) REFERENCES `dozes_child` (`id`),
  CONSTRAINT `dozes_visit_chk_1` CHECK ((`next_visit` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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

-- Dump completed on 2023-06-03 20:56:34
