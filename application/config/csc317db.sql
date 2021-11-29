-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: csc317db
-- ------------------------------------------------------
-- Server version	8.0.22

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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'jihhh\n        ',32,28,'2020-12-19 13:06:49'),(2,'kojh        ',32,28,'2020-12-19 13:09:44'),(3,'\n        jihihh',32,28,'2020-12-19 13:15:10'),(4,'jiied\n        ',32,28,'2020-12-19 13:16:17'),(5,'jiejidse\n        ',32,28,'2020-12-19 13:16:48'),(6,'jihhh\n        ',32,28,'2020-12-19 13:23:44'),(7,'\n        hueush',37,30,'2020-12-19 17:36:41'),(8,'\n        jihuuigui',37,30,'2020-12-19 17:39:55'),(9,'\nhuhuhuhuh',37,30,'2020-12-19 17:42:43'),(10,'\n        huhuuhu',37,28,'2020-12-19 17:44:11'),(11,'hihihihi\n        ',37,29,'2020-12-19 17:45:24'),(12,'jijiji\n        ',37,30,'2020-12-19 18:34:38'),(13,'jijiji\n        ',37,30,'2020-12-19 18:34:40'),(14,'jijiji\n        ',37,30,'2020-12-19 18:34:40'),(15,'jijiji\n        ',37,30,'2020-12-19 18:34:41'),(16,'\n        jip',37,30,'2020-12-19 18:35:16'),(17,'Hi man\n        ',37,29,'2020-12-19 18:45:30'),(18,'Hi man\n        ',37,29,'2020-12-19 18:45:33'),(19,'\n        Nice',37,29,'2020-12-19 18:47:38'),(20,'\n        Nice',37,29,'2020-12-19 18:47:42'),(21,'\nuhehsuiehsdiuehdiued',37,29,'2020-12-19 18:47:49'),(22,'jiiihu\n        ',37,29,'2020-12-19 18:48:31'),(23,'\n        ground',37,29,'2020-12-19 18:53:43'),(24,'my girlfriend\n        ',37,26,'2020-12-19 19:10:56'),(25,'shes cute\n        ',37,26,'2020-12-19 19:11:26'),(26,'adorable!\n        ',37,26,'2020-12-19 19:22:56'),(27,'wowwwww\n        ',37,26,'2020-12-19 21:21:13'),(28,'goodie lady\n        ',37,26,'2020-12-19 21:24:35'),(29,'amazing trimmie\n        ',37,26,'2020-12-19 21:27:26'),(30,'amazing action\n        ',37,26,'2020-12-19 21:30:00'),(31,'\n        ijijijiji',37,26,'2020-12-19 21:34:49'),(32,'cute little kittens\n        ',37,23,'2020-12-19 21:57:51'),(33,'Hi there kittens!        ',37,23,'2020-12-19 22:00:42'),(34,'huugigiguyfufufyu\n        ',37,29,'2020-12-19 22:54:10'),(35,'huhugygy\n        ',37,26,'2020-12-19 23:20:18'),(36,'uggygygygy\n        ',37,30,'2020-12-19 23:43:53'),(37,'\n        nice',37,30,'2020-12-19 23:44:09'),(38,'nice jobs\n        ',37,23,'2020-12-19 23:48:10'),(39,'       Meow',37,23,'2020-12-19 23:50:26'),(40,'Good job',37,23,'2020-12-19 23:50:43'),(41,'wow whos that\n        ',37,31,'2020-12-19 23:56:13'),(42,'wow\n        ',34,30,'2020-12-20 00:08:00'),(43,'thats a nice one\n        ',34,23,'2020-12-20 01:50:31'),(44,'\n        Good Fried Chicken',34,28,'2020-12-20 01:58:08'),(45,'\n        hes rock',34,29,'2020-12-20 02:06:13'),(46,'\namazing',34,29,'2020-12-20 02:06:20'),(47,'\n        ang sarap naman nyan',34,25,'2020-12-20 02:06:46'),(48,'\n        this is so good men!',39,25,'2020-12-20 16:40:32');
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
INSERT INTO `posts` VALUES (17,'Sumi ','Best Anime girlfriend','public/images/uploads/8dec6095de2f39d5a5422d80649385964c28ed8ecfee.jpeg','public/images/uploads/thumbnail-8dec6095de2f39d5a5422d80649385964c28ed8ecfee.jpeg',0,'2020-12-12 01:56:37',32),(18,'CJ & Big Smoke','They are enemies at the end. ','public/images/uploads/2adb5c3e7960b27a7507fc73382aa5a6eebe6076d6e8.jpeg','public/images/uploads/thumbnail-2adb5c3e7960b27a7507fc73382aa5a6eebe6076d6e8.jpeg',0,'2020-12-12 02:01:45',32),(19,'Rivals','High School argue and fight. ','public/images/uploads/872cfa8a7a018258a36d74ead8ad2b7ca03e6f8bdf3b.jpeg','public/images/uploads/thumbnail-872cfa8a7a018258a36d74ead8ad2b7ca03e6f8bdf3b.jpeg',0,'2020-12-12 02:06:33',32),(20,'Angry Love','Trouble relationship. ','public/images/uploads/dd82c4d6fb23fe1a0a3827fa9aef67e09bc6b6cf33c4.jpeg','public/images/uploads/thumbnail-dd82c4d6fb23fe1a0a3827fa9aef67e09bc6b6cf33c4.jpeg',0,'2020-12-12 02:10:00',32),(21,'Ball Pet','Dwarf hamster acts cute.','public/images/uploads/9bd6023659d457fa8c53a8260bab72ebc8ec5f149b6d.jpeg','public/images/uploads/thumbnail-9bd6023659d457fa8c53a8260bab72ebc8ec5f149b6d.jpeg',0,'2020-12-12 02:14:53',32),(22,'Mami Chan','Worst Anime girlfriend. ','public/images/uploads/3b14da6e8d36b1c0705c251db1c280b13925da565e6c.jpeg','public/images/uploads/thumbnail-3b14da6e8d36b1c0705c251db1c280b13925da565e6c.jpeg',0,'2020-12-12 02:18:33',32),(23,'Kittens','Cute kittens on their own cup.','public/images/uploads/573cb4b7c56b5331a899cf40e1c501a944eb7403c180.png','public/images/uploads/thumbnail-573cb4b7c56b5331a899cf40e1c501a944eb7403c180.png',0,'2020-12-13 21:32:27',32),(24,'Scientist','The best scientist team. ','public/images/uploads/3233e835340b8195cb41ad6d9a83403c0b29b8528641.jpeg','public/images/uploads/thumbnail-3233e835340b8195cb41ad6d9a83403c0b29b8528641.jpeg',0,'2020-12-13 22:36:12',32),(25,'Tapsilog','Delicious breakfast in the world. ','public/images/uploads/348c50497d08eb7ee4c0a9f51703f8663dff5afe95e2.jpeg','public/images/uploads/thumbnail-348c50497d08eb7ee4c0a9f51703f8663dff5afe95e2.jpeg',0,'2020-12-14 20:20:21',32),(26,'Sumi','Best anime girlfriend. ','public/images/uploads/51249392689dcd561170c1691face1aaf8c62f52e55a.jpeg','public/images/uploads/thumbnail-51249392689dcd561170c1691face1aaf8c62f52e55a.jpeg',0,'2020-12-14 20:24:33',32),(28,'Fried Chicken ','This is a good fried chicken. ','public/images/uploads/e64b39fbbde5e9b37b5a35a9d63693379cfbb2f4f7b1.jpeg','public/images/uploads/thumbnail-e64b39fbbde5e9b37b5a35a9d63693379cfbb2f4f7b1.jpeg',0,'2020-12-17 01:09:40',34),(29,'Duc Ta','Good professor','public/images/uploads/c4758fe1be06f88c5b486361cb96d6cd418c9074f47b.jpeg','public/images/uploads/thumbnail-c4758fe1be06f88c5b486361cb96d6cd418c9074f47b.jpeg',0,'2020-12-18 20:16:19',32),(30,'Bowl','Empty bowl','public/images/uploads/46fd3085ade6c6459013c0dd131e6fe3100ed200e17c.jpeg','public/images/uploads/thumbnail-46fd3085ade6c6459013c0dd131e6fe3100ed200e17c.jpeg',0,'2020-12-19 17:32:36',37),(31,'Best friend','Best friend forever. ','public/images/uploads/5ad86ba446cabb56f3ea208d4a821f54f6ea93c94373.jpeg','public/images/uploads/thumbnail-5ad86ba446cabb56f3ea208d4a821f54f6ea93c94373.jpeg',0,'2020-12-19 23:55:56',37);
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
INSERT INTO `sessions` VALUES ('6iD6Fg1Z2y8fz_UAMKx67W5jj9DW4OV0',1608600204,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('D4XpGAyadG2cIbf4OijLwl-npiY85-W8',1608599688,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('EHgG9LCc5bQLHvKiR24zearmlMZdLFp7',1608596242,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('MgLkYinq5yWHQMkkxs7rzObvSJW044AB',1608597644,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('NhiesQBWTpKs6FDhol0wLFBOTt8jVf8M',1608600274,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{},\"username\":\"asdf\",\"userId\":44}'),('Ph3GeMMh7yCUq3STEMEU8a6Jg1wihJQn',1608598275,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('ZftvSDMjqZBth116P0MSBx6hW9aNF3vs',1608514304,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}'),('kD7NtUJo_otB-lguOxlSFWnGJ7dIvTep',1608537436,'{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{}}');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (19,'ieeusiw','elesmej@gmail.com','$2b$15$poG2cbHVmkEY/3CPiy.AWuMqy0LywLQhXDcHWfyupU17KXQoPAu6K',0,0,'2020-12-02 08:26:11'),(20,'Robertisito','Jshushurh@gmail.com','$2b$15$SACQm5wE0LbqyoYItnu7iOvwZsuqKt9xKobNu0.J0mQrZ6MQ43Dfy',0,0,'2020-12-02 16:08:12'),(21,'LalaVida','suheush@gmail.com','$2b$15$PJjc/emIaPolAscllrghJuVWaBp7w0Tf60QzEUV2/k.YwaLxSxMuu',0,0,'2020-12-02 18:15:38'),(22,'yurina','yurinana@ab.com','$2b$15$REMLWGNkaq1zmCXJqFt/devg1ZPYI/g6FifgtmdfnVrD1aAGQak8m',0,0,'2020-12-02 18:39:01'),(23,'Glandariy','Susannna@abs.com','$2b$15$6gSHYuRZVD6PYpQqbTUZW.lXLCKExiJrtu2jqvJF8Mb1huN2d8tOq',0,0,'2020-12-04 22:08:59'),(24,'JullyBeannies','Jusjiwhsdg@gmail.com','$2b$15$uSOEHLsLkpkhgmzAx2F7puaAocQa8HLBwRrzrwkO8ZLAvtG3Gc1P2',0,0,'2020-12-04 22:37:27'),(25,'Opamam','uuweh@yah.com','$2b$15$cOZ5xCr/gC3UhUc4kDvex.1TR4NgbY2ctnLK8ZPP2kCp8z6RgFzKa',0,0,'2020-12-05 12:08:21'),(26,'kokao','koedko@hal.com','$2b$15$6k1ZT2gAPT3UmAnW2dV8NuRdisQttVqoESA1AVi47NjdTq.U1qtn.',0,0,'2020-12-05 12:10:01'),(27,'JustinMao','JustinMao@fake.com','$2b$15$aHO6Iu1JBSzX4kHe2dlzh.ytn407GC0c8e0xIgAlAcvhlZSno.1.2',0,0,'2020-12-05 19:11:16'),(28,'Serra','SerraMara@mahal.com','$2b$15$sB4zhdj11EZ.d/C.jVXdF.J/8m1dPSTC1pBr.veEqmz0AIqsEjZ9e',0,0,'2020-12-06 21:45:24'),(29,'Flower','flowjd@hamo.com','$2b$15$6mZaBAzU74FIvNyS/6RD0uRKEI1ktT3R4LPHZIYMiAJHN30yb38im',0,0,'2020-12-06 21:48:53'),(30,'MiniTango','MiniTango@gmail.com','$2b$15$h6k719SPQcfWx1FI/6JjHeaplMTHCqXAn9w1leSHU7Xf/nfxzE6uO',0,0,'2020-12-06 22:03:50'),(31,'EddyYun','EddyYun@gmail.com','$2b$15$4lXVkvMe3xNZQ0fQyzsp9.VxEMfn0UaVr33sV0RtMCKO/jjwqbr76',0,0,'2020-12-08 18:53:07'),(32,'JohnSmith','JohnSmith@gmail.com','$2b$15$imzletbA1alFz9yKJ7iPzutiIb8NeSeAKrnJbXnFbfOCErqb9HNQO',0,0,'2020-12-12 01:48:57'),(34,'demotest123','demotest123@mail.com','$2b$15$vnIBUUuUhQaH9CbWvOOIsenKauC1GQT1t4yEbNyJhgcqc5pWpuvoe',0,0,'2020-12-17 01:08:32'),(36,'KateVu','KateVu@example.com','$2b$10$uB6HJEm/mKL1ukFoLYmpg.HOAAU.DH8pU27BjQyggU4d0gxWXVqyu',0,0,'2020-12-19 16:09:50'),(37,'Miami','MiamiMass@gmail.com','$2b$10$7pEl8ajvG85/jIlfFpZABeiEybHIUdwJTe6aJt5O4fPzBia/VuAw6',0,0,'2020-12-19 16:34:10'),(38,'JavierMarquez','JavierMarquez@gmail.com','$2b$10$21yLux6NH7bM2YHnI.Pm/OmCqGDOCgTwTjsmYHc2Hl4o26MW6fs3K',0,0,'2020-12-20 16:20:01'),(39,'Zaid','ZaidMan@gmail.com','$2b$10$ntgVGj51EYWWpWV7Es8k1OnBxAWGCvZVVZw/8b02mJeI6B7GG7ESq',0,0,'2020-12-20 16:39:09'),(40,'krelogs','krelogs@mail.com','$2b$10$WKjIjHcBLZW0i/k9HJkggecQ46yYlI2KZ9lYd6wsmlOq/jOLSc.yu',0,0,'2020-12-20 16:50:56'),(41,'frezzy','frezzy@gmail.com','$2b$10$gAXxMbe86gKzeXBk8kSoy.LFBndJR0SB4HQuYMgHghgWJsM8GIov2',0,0,'2020-12-20 17:12:11'),(42,'mariejoe','mariejoej@gmail.com','$2b$10$kQZk1AhJSuqp5m6s5nSpBeG8kam71hkRdilJijxxAHIiEyVmwnvVu',0,0,'2020-12-20 17:14:20'),(43,'joseph','josephedradan@mail.com','$2b$10$IgQ9c0bM5uJjJjMe22GBtuep1O0qviC9tahrgs.U1lDHnPmMVdf2K',0,0,'2020-12-20 17:15:31'),(44,'asdf','asdf@gmail.com','$2b$10$rEnowpoMkTui5cvVJ1DXDe.5Of5.3XrXEps7MvBBaeZ44Qen9LRim',0,0,'2020-12-20 17:24:16');
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

-- Dump completed on 2020-12-20 19:54:50
