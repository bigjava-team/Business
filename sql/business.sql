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
-- Table structure for table `addr`
--

DROP TABLE IF EXISTS `addr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addr` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(255) NOT NULL,
  `a_phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `u_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_id`),
  KEY `FK2D9BF1AC71ABAE` (`u_id`),
  CONSTRAINT `FK2D9BF1AC71ABAE` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addr`
--

LOCK TABLES `addr` WRITE;
/*!40000 ALTER TABLE `addr` DISABLE KEYS */;
/*!40000 ALTER TABLE `addr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(255) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'手机'),(2,'手机');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorysecond`
--

DROP TABLE IF EXISTS `categorysecond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorysecond` (
  `cs_id` int(11) NOT NULL AUTO_INCREMENT,
  `cs_name` varchar(255) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cs_id`),
  KEY `FK936FCAF2225CF66` (`c_id`),
  CONSTRAINT `FK936FCAF2225CF66` FOREIGN KEY (`c_id`) REFERENCES `category` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorysecond`
--

LOCK TABLES `categorysecond` WRITE;
/*!40000 ALTER TABLE `categorysecond` DISABLE KEYS */;
INSERT INTO `categorysecond` VALUES (1,'oppo',1),(2,'1',1);
/*!40000 ALTER TABLE `categorysecond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectmerchant`
--

DROP TABLE IF EXISTS `collectmerchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectmerchant` (
  `CM_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  PRIMARY KEY (`CM_id`),
  KEY `FKD4C260F2AC71ABAE` (`u_id`),
  KEY `FKD4C260F2BE59A0B0` (`m_id`),
  CONSTRAINT `FKD4C260F2AC71ABAE` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`),
  CONSTRAINT `FKD4C260F2BE59A0B0` FOREIGN KEY (`m_id`) REFERENCES `merchant` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectmerchant`
--

LOCK TABLES `collectmerchant` WRITE;
/*!40000 ALTER TABLE `collectmerchant` DISABLE KEYS */;
/*!40000 ALTER TABLE `collectmerchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectproduct`
--

DROP TABLE IF EXISTS `collectproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectproduct` (
  `CP_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  PRIMARY KEY (`CP_id`),
  KEY `FK8A08A885AC71ABAE` (`u_id`),
  KEY `FK8A08A885E7217C83` (`p_id`),
  CONSTRAINT `FK8A08A885AC71ABAE` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`),
  CONSTRAINT `FK8A08A885E7217C83` FOREIGN KEY (`p_id`) REFERENCES `product` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectproduct`
--

LOCK TABLES `collectproduct` WRITE;
/*!40000 ALTER TABLE `collectproduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `collectproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `u_id` int(11) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`com_id`),
  KEY `FK38A5EE5FAC71ABAE` (`u_id`),
  KEY `FK38A5EE5FE7217C83` (`p_id`),
  CONSTRAINT `FK38A5EE5FAC71ABAE` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`),
  CONSTRAINT `FK38A5EE5FE7217C83` FOREIGN KEY (`p_id`) REFERENCES `product` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `img_path` varchar(255) NOT NULL,
  `p_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`img_id`),
  KEY `FKB95A8278E7217C83` (`p_id`),
  CONSTRAINT `FKB95A8278E7217C83` FOREIGN KEY (`p_id`) REFERENCES `product` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchant`
--

DROP TABLE IF EXISTS `merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `merchant` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT,
  `m_name` varchar(255) NOT NULL,
  `m_image` varchar(255) DEFAULT NULL,
  `m_time` datetime NOT NULL,
  `m_is_freeze` int(11) NOT NULL,
  `u_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`m_id`),
  KEY `FKE1E1C9C8AC71ABAE` (`u_id`),
  CONSTRAINT `FKE1E1C9C8AC71ABAE` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant`
--

LOCK TABLES `merchant` WRITE;
/*!40000 ALTER TABLE `merchant` DISABLE KEYS */;
INSERT INTO `merchant` VALUES (1,'sun',NULL,'2019-03-25 09:36:30',1,1),(2,'sun',NULL,'2019-03-25 19:21:07',1,1);
/*!40000 ALTER TABLE `merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderitem` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) NOT NULL,
  `subtotal` double NOT NULL,
  `u_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `o_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `FKE8B2AB61AC71ABAE` (`u_id`),
  KEY `FKE8B2AB6197342528` (`o_id`),
  KEY `FKE8B2AB61E7217C83` (`p_id`),
  CONSTRAINT `FKE8B2AB6197342528` FOREIGN KEY (`o_id`) REFERENCES `orders` (`o_id`),
  CONSTRAINT `FKE8B2AB61AC71ABAE` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`),
  CONSTRAINT `FKE8B2AB61E7217C83` FOREIGN KEY (`p_id`) REFERENCES `product` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderNumber` varchar(255) NOT NULL,
  `total` double NOT NULL,
  `ordertim` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `u_id` int(11) DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`o_id`),
  KEY `FKC3DF62E5E740EB8E` (`a_id`),
  KEY `FKC3DF62E5AC71ABAE` (`u_id`),
  CONSTRAINT `FKC3DF62E5AC71ABAE` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`),
  CONSTRAINT `FKC3DF62E5E740EB8E` FOREIGN KEY (`a_id`) REFERENCES `addr` (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(255) NOT NULL,
  `p_price` double NOT NULL,
  `p_image` varchar(255) DEFAULT NULL,
  `market` double NOT NULL,
  `p_desc` varchar(255) DEFAULT NULL,
  `sale_volume` int(11) DEFAULT NULL,
  `p_date` datetime NOT NULL,
  `p_freeze` int(11) NOT NULL,
  `cs_id` int(11) NOT NULL,
  `m_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `FKED8DCCEFB2EE4401` (`cs_id`),
  KEY `FKED8DCCEFBE59A0B0` (`m_id`),
  CONSTRAINT `FKED8DCCEFB2EE4401` FOREIGN KEY (`cs_id`) REFERENCES `categorysecond` (`cs_id`),
  CONSTRAINT `FKED8DCCEFBE59A0B0` FOREIGN KEY (`m_id`) REFERENCES `merchant` (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'诺基亚',300,NULL,255,'123',0,'2019-03-25 20:20:55',3,1,1),(2,'诺基亚',300,NULL,255,'123',0,'2019-03-25 20:31:30',3,1,1),(3,'oppo20',2000,NULL,1999,'123',0,'2019-03-25 23:24:51',3,1,1),(4,'华为荣耀 ',2800,NULL,2700,'132',0,'2019-03-25 23:37:39',3,2,1),(5,'华为荣耀 23',12222,NULL,10000,'123',0,'2019-03-25 23:48:08',3,2,1),(9,'诺基亚',2666,'productImage/诺基亚_7.png',255,'sca',0,'2019-03-26 09:51:48',3,1,1),(10,'oppo27',2666,'productImage/oppo27_image017_S.png',1999,'123',0,'2019-03-27 10:34:58',3,1,1),(11,'华为荣耀 ',1341,'productImage/华为荣耀 _13.png',13,'1',0,'2019-03-27 10:56:35',3,2,1),(12,'诺基亚',131,'productImage/诺基亚_2.png',31,'31321',0,'2019-03-27 11:45:47',3,2,1),(13,'诺基亚',300,'productImage/诺基亚_4.png',255,'fda',0,'2019-03-27 11:52:22',3,1,1),(14,'诺基亚',300,'productImage/诺基亚_4.png',1999,'fa',0,'2019-03-27 11:56:33',3,1,1),(15,'荣耀',12222,'a0d20662-8dd7-4982-9087-a9e0644efce0.png',1999,'123',0,'2019-03-28 14:32:08',3,2,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `u_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `root` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `u_is_freeze` int(11) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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

-- Dump completed on 2019-03-28 14:54:57
