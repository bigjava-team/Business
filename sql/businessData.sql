-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: business
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Dumping data for table `addr`
--

LOCK TABLES `addr` WRITE;
/*!40000 ALTER TABLE `addr` DISABLE KEYS */;
/*!40000 ALTER TABLE `addr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'手机'),(2,'手机');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `categorysecond`
--

LOCK TABLES `categorysecond` WRITE;
/*!40000 ALTER TABLE `categorysecond` DISABLE KEYS */;
INSERT INTO `categorysecond` VALUES (1,'oppo',1),(2,'1',1);
/*!40000 ALTER TABLE `categorysecond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `collectmerchant`
--

LOCK TABLES `collectmerchant` WRITE;
/*!40000 ALTER TABLE `collectmerchant` DISABLE KEYS */;
/*!40000 ALTER TABLE `collectmerchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `collectproduct`
--

LOCK TABLES `collectproduct` WRITE;
/*!40000 ALTER TABLE `collectproduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `collectproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `merchant`
--

LOCK TABLES `merchant` WRITE;
/*!40000 ALTER TABLE `merchant` DISABLE KEYS */;
INSERT INTO `merchant` VALUES (1,'sun',NULL,'2019-03-25 09:36:30',1,1),(2,'sun',NULL,'2019-03-25 19:21:07',1,1);
/*!40000 ALTER TABLE `merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'诺基亚',300,NULL,255,'123',0,'2019-03-25 20:20:55',3,1,1),(2,'诺基亚',300,NULL,255,'123',0,'2019-03-25 20:31:30',3,1,1),(3,'oppo20',2000,NULL,1999,'123',0,'2019-03-25 23:24:51',3,1,1),(4,'华为荣耀 ',2800,NULL,2700,'132',0,'2019-03-25 23:37:39',3,2,1),(5,'华为荣耀 23',12222,NULL,10000,'123',0,'2019-03-25 23:48:08',3,2,1),(9,'诺基亚',2666,'productImage/诺基亚_7.png',255,'sca',0,'2019-03-26 09:51:48',3,1,1),(10,'oppo27',2666,'productImage/oppo27_image017_S.png',1999,'123',0,'2019-03-27 10:34:58',3,1,1),(11,'华为荣耀 ',1341,'productImage/华为荣耀 _13.png',13,'1',0,'2019-03-27 10:56:35',3,2,1),(12,'诺基亚',131,'productImage/诺基亚_2.png',31,'31321',0,'2019-03-27 11:45:47',3,2,1),(13,'诺基亚',300,'productImage/诺基亚_4.png',255,'fda',0,'2019-03-27 11:52:22',3,1,1),(14,'诺基亚',300,'productImage/诺基亚_4.png',1999,'fa',0,'2019-03-27 11:56:33',3,1,1),(15,'荣耀',12222,'a0d20662-8dd7-4982-9087-a9e0644efce0.png',1999,'123',0,'2019-03-28 14:32:08',3,2,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'sunrise','123','男','彭昕','23','123',1,NULL,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-28 14:54:44
