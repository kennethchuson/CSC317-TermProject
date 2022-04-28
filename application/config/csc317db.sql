-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: csc317db
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment` longtext NOT NULL,
  `fk_authorid` int NOT NULL,
  `fk_postid` int NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `key_tousertable_idx` (`fk_authorid`),
  KEY `key_topoststable_idx` (`fk_postid`),
  CONSTRAINT `key_topoststable` FOREIGN KEY (`fk_postid`) REFERENCES `posts` (`id`),
  CONSTRAINT `key_tousertable` FOREIGN KEY (`fk_authorid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (49,'masarap\n        ',45,25,'2022-04-27 20:56:11');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `description` varchar(4096) NOT NULL,
  `photopath` varchar(4096) NOT NULL,
  `thumbnail` varchar(4096) NOT NULL,
  `active` int NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `fk_userid` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `posts to users_idx` (`fk_userid`),
  CONSTRAINT `posts to users` FOREIGN KEY (`fk_userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (23,'Kittens','Cute kittens on their own cup.','public/images/uploads/573cb4b7c56b5331a899cf40e1c501a944eb7403c180.png','public/images/uploads/thumbnail-573cb4b7c56b5331a899cf40e1c501a944eb7403c180.png',0,'2020-12-13 21:32:27',32),(24,'Scientist','The best scientist team. ','public/images/uploads/3233e835340b8195cb41ad6d9a83403c0b29b8528641.jpeg','public/images/uploads/thumbnail-3233e835340b8195cb41ad6d9a83403c0b29b8528641.jpeg',0,'2020-12-13 22:36:12',32),(25,'Tapsilog','Delicious breakfast in the world. ','public/images/uploads/348c50497d08eb7ee4c0a9f51703f8663dff5afe95e2.jpeg','public/images/uploads/thumbnail-348c50497d08eb7ee4c0a9f51703f8663dff5afe95e2.jpeg',0,'2020-12-14 20:20:21',32),(28,'Fried Chicken ','This is a good fried chicken. ','public/images/uploads/e64b39fbbde5e9b37b5a35a9d63693379cfbb2f4f7b1.jpeg','public/images/uploads/thumbnail-e64b39fbbde5e9b37b5a35a9d63693379cfbb2f4f7b1.jpeg',0,'2020-12-17 01:09:40',34),(30,'Bowl','Empty bowl','public/images/uploads/46fd3085ade6c6459013c0dd131e6fe3100ed200e17c.jpeg','public/images/uploads/thumbnail-46fd3085ade6c6459013c0dd131e6fe3100ed200e17c.jpeg',0,'2020-12-19 17:32:36',37);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('3ilz2imekf4sJ1DEFnNyi1Oe2izByTDQ',1651204674,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('oEgUxnhjLc07RpsEbaagfME1T8dkNc6A',1651204810,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{},\"postId\":\"25\"}');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `usertype` int NOT NULL DEFAULT '0',
  `active` int NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (19,'ieeusiw','elesmej@gmail.com','$2b$15$poG2cbHVmkEY/3CPiy.AWuMqy0LywLQhXDcHWfyupU17KXQoPAu6K',0,0,'2020-12-02 08:26:11'),(20,'Robertisito','Jshushurh@gmail.com','$2b$15$SACQm5wE0LbqyoYItnu7iOvwZsuqKt9xKobNu0.J0mQrZ6MQ43Dfy',0,0,'2020-12-02 16:08:12'),(21,'LalaVida','suheush@gmail.com','$2b$15$PJjc/emIaPolAscllrghJuVWaBp7w0Tf60QzEUV2/k.YwaLxSxMuu',0,0,'2020-12-02 18:15:38'),(22,'yurina','yurinana@ab.com','$2b$15$REMLWGNkaq1zmCXJqFt/devg1ZPYI/g6FifgtmdfnVrD1aAGQak8m',0,0,'2020-12-02 18:39:01'),(23,'Glandariy','Susannna@abs.com','$2b$15$6gSHYuRZVD6PYpQqbTUZW.lXLCKExiJrtu2jqvJF8Mb1huN2d8tOq',0,0,'2020-12-04 22:08:59'),(24,'JullyBeannies','Jusjiwhsdg@gmail.com','$2b$15$uSOEHLsLkpkhgmzAx2F7puaAocQa8HLBwRrzrwkO8ZLAvtG3Gc1P2',0,0,'2020-12-04 22:37:27'),(25,'Opamam','uuweh@yah.com','$2b$15$cOZ5xCr/gC3UhUc4kDvex.1TR4NgbY2ctnLK8ZPP2kCp8z6RgFzKa',0,0,'2020-12-05 12:08:21'),(26,'kokao','koedko@hal.com','$2b$15$6k1ZT2gAPT3UmAnW2dV8NuRdisQttVqoESA1AVi47NjdTq.U1qtn.',0,0,'2020-12-05 12:10:01'),(27,'JustinMao','JustinMao@fake.com','$2b$15$aHO6Iu1JBSzX4kHe2dlzh.ytn407GC0c8e0xIgAlAcvhlZSno.1.2',0,0,'2020-12-05 19:11:16'),(28,'Serra','SerraMara@mahal.com','$2b$15$sB4zhdj11EZ.d/C.jVXdF.J/8m1dPSTC1pBr.veEqmz0AIqsEjZ9e',0,0,'2020-12-06 21:45:24'),(29,'Flower','flowjd@hamo.com','$2b$15$6mZaBAzU74FIvNyS/6RD0uRKEI1ktT3R4LPHZIYMiAJHN30yb38im',0,0,'2020-12-06 21:48:53'),(30,'MiniTango','MiniTango@gmail.com','$2b$15$h6k719SPQcfWx1FI/6JjHeaplMTHCqXAn9w1leSHU7Xf/nfxzE6uO',0,0,'2020-12-06 22:03:50'),(31,'EddyYun','EddyYun@gmail.com','$2b$15$4lXVkvMe3xNZQ0fQyzsp9.VxEMfn0UaVr33sV0RtMCKO/jjwqbr76',0,0,'2020-12-08 18:53:07'),(32,'JohnSmith','JohnSmith@gmail.com','$2b$15$imzletbA1alFz9yKJ7iPzutiIb8NeSeAKrnJbXnFbfOCErqb9HNQO',0,0,'2020-12-12 01:48:57'),(34,'demotest123','demotest123@mail.com','$2b$15$vnIBUUuUhQaH9CbWvOOIsenKauC1GQT1t4yEbNyJhgcqc5pWpuvoe',0,0,'2020-12-17 01:08:32'),(36,'KateVu','KateVu@example.com','$2b$10$uB6HJEm/mKL1ukFoLYmpg.HOAAU.DH8pU27BjQyggU4d0gxWXVqyu',0,0,'2020-12-19 16:09:50'),(37,'Miami','MiamiMass@gmail.com','$2b$10$7pEl8ajvG85/jIlfFpZABeiEybHIUdwJTe6aJt5O4fPzBia/VuAw6',0,0,'2020-12-19 16:34:10'),(38,'JavierMarquez','JavierMarquez@gmail.com','$2b$10$21yLux6NH7bM2YHnI.Pm/OmCqGDOCgTwTjsmYHc2Hl4o26MW6fs3K',0,0,'2020-12-20 16:20:01'),(39,'Zaid','ZaidMan@gmail.com','$2b$10$ntgVGj51EYWWpWV7Es8k1OnBxAWGCvZVVZw/8b02mJeI6B7GG7ESq',0,0,'2020-12-20 16:39:09'),(40,'krelogs','krelogs@mail.com','$2b$10$WKjIjHcBLZW0i/k9HJkggecQ46yYlI2KZ9lYd6wsmlOq/jOLSc.yu',0,0,'2020-12-20 16:50:56'),(41,'frezzy','frezzy@gmail.com','$2b$10$gAXxMbe86gKzeXBk8kSoy.LFBndJR0SB4HQuYMgHghgWJsM8GIov2',0,0,'2020-12-20 17:12:11'),(42,'mariejoe','mariejoej@gmail.com','$2b$10$kQZk1AhJSuqp5m6s5nSpBeG8kam71hkRdilJijxxAHIiEyVmwnvVu',0,0,'2020-12-20 17:14:20'),(43,'joseph','josephedradan@mail.com','$2b$10$IgQ9c0bM5uJjJjMe22GBtuep1O0qviC9tahrgs.U1lDHnPmMVdf2K',0,0,'2020-12-20 17:15:31'),(44,'asdf','asdf@gmail.com','$2b$10$rEnowpoMkTui5cvVJ1DXDe.5Of5.3XrXEps7MvBBaeZ44Qen9LRim',0,0,'2020-12-20 17:24:16'),(45,'testinguser','testuser@mail.com','$2b$10$LPx2l/uREhJYEq/CLnvodun7pta77SiibJvUm28cUvQF4PNQjt4gy',0,0,'2022-04-27 19:42:59');
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

-- Dump completed on 2022-04-27 21:06:08
