-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: 0.0.0.0    Database: micro_shop_products
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
-- Table structure for table `knex_migrations`
--

DROP TABLE IF EXISTS `knex_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `knex_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `batch` int DEFAULT NULL,
  `migration_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knex_migrations`
--

LOCK TABLES `knex_migrations` WRITE;
/*!40000 ALTER TABLE `knex_migrations` DISABLE KEYS */;
INSERT INTO `knex_migrations` VALUES (1,'20230312062147_products.ts',1,'2023-04-11 09:32:39');
/*!40000 ALTER TABLE `knex_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knex_migrations_lock`
--

DROP TABLE IF EXISTS `knex_migrations_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `knex_migrations_lock` (
  `index` int unsigned NOT NULL AUTO_INCREMENT,
  `is_locked` int DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knex_migrations_lock`
--

LOCK TABLES `knex_migrations_lock` WRITE;
/*!40000 ALTER TABLE `knex_migrations_lock` DISABLE KEYS */;
INSERT INTO `knex_migrations_lock` VALUES (1,0);
/*!40000 ALTER TABLE `knex_migrations_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` char(36) NOT NULL DEFAULT (uuid()),
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `cost` float(8,2) DEFAULT '0.00',
  `categories` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('1d7402b6-522b-42ad-84bc-e58d7402e3fb','Vintage Camera Lens','You won\'t have a camera to use it and it probably doesn\'t work anyway.','static/img/products/camera-lens.jpg',12.49,'[\"photography\", \"vintage\"]','2023-04-11 09:34:58','2023-04-11 09:34:58'),('3c0f83df-8e0f-45b5-bc35-9738de337ae9','Air Plant','Have you ever wondered whether air plants need water? Buy one and figure out.','static/img/products/air-plant.jpg',12.30,'[\"gardening\"]','2023-04-11 09:34:58','2023-04-11 09:34:58'),('8ab7a322-9ad7-4f4e-8230-046e214bdc49','Terrarium','This terrarium will looks great in your white painted living room.','static/img/products/terrarium.jpg',36.45,'[\"gardening\"]','2023-04-11 09:34:58','2023-04-11 09:34:58'),('9cd2319b-75bf-43f0-a8de-785d342edb06','Film Camera','This camera looks like it\'s a film camera, but it\'s actually digital.','static/img/products/film-camera.jpg',2245.00,'[\"photography\", \"vintage\"]','2023-04-11 09:34:58','2023-04-11 09:34:58'),('bcb2fa74-90be-487e-8dc0-c6bfd379c633','Vintage Typewriter','This typewriter looks good in your living room.','static/img/products/typewriter.jpg',67.99,'[\"vintage\"]','2023-04-11 09:34:58','2023-04-11 09:34:58'),('d353c4ed-3255-4550-860a-147580c27e89','Home Barista Kit','Always wanted to brew coffee with Chemex and Aeropress at home?','static/img/products/barista-kit.jpg',124.00,'[\"cookware\"]','2023-04-11 09:34:58','2023-04-11 09:34:58'),('e193cae5-bb27-45d6-afaf-2bf3f724ab5d','Vintage Record Player','It still works.','static/img/products/record-player.jpg',65.50,'[\"music\", \"vintage\"]','2023-04-11 09:34:58','2023-04-11 09:34:58'),('ec90542e-6fb1-4754-805b-c1fdf7224369','City Bike','This single gear bike probably cannot climb the hills of San Francisco.','static/img/products/city-bike.jpg',789.50,'[\"cycling\"]','2023-04-11 09:34:58','2023-04-11 09:34:58'),('f907da56-dc9b-4a58-b0a9-140cb825f25d','Metal Camping Mug','You probably don\'t go camping that often but this is better than plastic cups.','static/img/products/camp-mug.jpg',24.33,'[\"cookware\"]','2023-04-11 09:34:58','2023-04-11 09:34:58');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-11 10:02:09
