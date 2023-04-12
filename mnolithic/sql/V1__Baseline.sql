-- MySQL dump 10.19  Distrib 10.3.38-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: monolith
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knex_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `batch` int DEFAULT NULL,
  `migration_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knex_migrations`
--

LOCK TABLES `knex_migrations` WRITE;
/*!40000 ALTER TABLE `knex_migrations` DISABLE KEYS */;
INSERT INTO `knex_migrations` VALUES (1,'20230223144611_init.js',1,'2023-03-17 12:09:10'),(2,'20230224093104_users.js',1,'2023-03-17 12:09:10'),(3,'20230224093313_orders.js',1,'2023-03-17 12:09:11');
/*!40000 ALTER TABLE `knex_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knex_migrations_lock`
--

DROP TABLE IF EXISTS `knex_migrations_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` char(36) NOT NULL DEFAULT (uuid()),
  `product_ids` json DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `total_cost` float(8,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('297eb24e-1c92-4852-8350-ca407dfd0eef','[\"e193cae5-bb27-45d6-afaf-2bf3f724ab5d\"]','2c5be9a7-2b81-44d0-bdf2-3f79f8dbea3e',65.50,'2023-03-17 06:39:11','2023-03-17 06:39:11'),('a022936b-9c35-46f3-85c4-e96f9de1f544','[\"d353c4ed-3255-4550-860a-147580c27e89\"]','2c5be9a7-2b81-44d0-bdf2-3f79f8dbea3e',124.00,'2023-03-17 06:39:11','2023-03-17 06:39:11'),('e0ff295b-5d84-4a0a-b7db-608ed0865dcd','[\"bcb2fa74-90be-487e-8dc0-c6bfd379c633\", \"1d7402b6-522b-42ad-84bc-e58d7402e3fb\"]','2c5be9a7-2b81-44d0-bdf2-3f79f8dbea3e',80.48,'2023-03-17 06:39:11','2023-03-17 06:39:11'),('ee7c8762-41c8-4570-93f5-339503dced5b','[\"8ab7a322-9ad7-4f4e-8230-046e214bdc49\"]','2c5be9a7-2b81-44d0-bdf2-3f79f8dbea3e',36.45,'2023-03-17 06:39:11','2023-03-17 06:39:11');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
INSERT INTO `products` VALUES ('1d7402b6-522b-42ad-84bc-e58d7402e3fb','Vintage Camera Lens','You won\'t have a camera to use it and it probably doesn\'t work anyway.','static/img/products/camera-lens.jpg',12.49,'[\"photography\", \"vintage\"]','2023-03-17 06:39:11','2023-03-17 06:39:11'),('3c0f83df-8e0f-45b5-bc35-9738de337ae9','Air Plant','Have you ever wondered whether air plants need water? Buy one and figure out.','static/img/products/air-plant.jpg',12.30,'[\"gardening\"]','2023-03-17 06:39:11','2023-03-17 06:39:11'),('8ab7a322-9ad7-4f4e-8230-046e214bdc49','Terrarium','This terrarium will looks great in your white painted living room.','static/img/products/terrarium.jpg',36.45,'[\"gardening\"]','2023-03-17 06:39:11','2023-03-17 06:39:11'),('9cd2319b-75bf-43f0-a8de-785d342edb06','Film Camera','This camera looks like it\'s a film camera, but it\'s actually digital.','static/img/products/film-camera.jpg',2245.00,'[\"photography\", \"vintage\"]','2023-03-17 06:39:11','2023-03-17 06:39:11'),('bcb2fa74-90be-487e-8dc0-c6bfd379c633','Vintage Typewriter','This typewriter looks good in your living room.','static/img/products/typewriter.jpg',67.99,'[\"vintage\"]','2023-03-17 06:39:11','2023-03-17 06:39:11'),('d353c4ed-3255-4550-860a-147580c27e89','Home Barista Kit','Always wanted to brew coffee with Chemex and Aeropress at home?','static/img/products/barista-kit.jpg',124.00,'[\"cookware\"]','2023-03-17 06:39:11','2023-03-17 06:39:11'),('e193cae5-bb27-45d6-afaf-2bf3f724ab5d','Vintage Record Player','It still works.','static/img/products/record-player.jpg',65.50,'[\"music\", \"vintage\"]','2023-03-17 06:39:11','2023-03-17 06:39:11'),('ec90542e-6fb1-4754-805b-c1fdf7224369','City Bike','This single gear bike probably cannot climb the hills of San Francisco.','static/img/products/city-bike.jpg',789.50,'[\"cycling\"]','2023-03-17 06:39:11','2023-03-17 06:39:11'),('f907da56-dc9b-4a58-b0a9-140cb825f25d','Metal Camping Mug','You probably don\'t go camping that often but this is better than plastic cups.','static/img/products/camp-mug.jpg',24.33,'[\"cookware\"]','2023-03-17 06:39:11','2023-03-17 06:39:11');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL DEFAULT (uuid()),
  `full_name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('2c5be9a7-2b81-44d0-bdf2-3f79f8dbea3e','test user','Mumbai,MH','test.user@gmail.com','2023-03-17 06:39:11','2023-03-17 06:39:11');
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

-- Dump completed on 2023-03-30 18:33:18
