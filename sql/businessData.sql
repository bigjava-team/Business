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
INSERT INTO `addr` VALUES (1,'彭昕 ','123456789','北京市辖区东城区第三个',1),(2,'谢梦成','45678913','北京市辖区东城区发大水',1),(4,'谢梦成','45678913','云南昆明市西山区大法',1);
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
INSERT INTO `categorysecond` VALUES (1,'oppo',1),(2,'vivo',1);
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
INSERT INTO `comment` VALUES (1,'fhdasf',1,15,NULL),(2,'fdad',1,16,NULL),(3,'dfa',1,17,NULL),(4,'dfa',1,18,NULL),(5,'fdawr',1,19,NULL),(6,'ergfd',1,20,NULL),(7,'hffh',1,21,NULL),(8,'ytgff',1,22,NULL),(9,'ytrr',1,23,NULL),(10,'gfj',1,24,NULL),(11,'tew',1,19,NULL),(12,'fght',1,19,NULL),(13,'trey',1,20,NULL),(14,'ytrj',1,20,NULL),(15,'jety',1,20,NULL),(16,'twrt',1,18,NULL),(17,'twgf',1,17,NULL),(18,'hfhfdh',1,16,NULL),(19,'hfg',1,24,NULL);
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
INSERT INTO `merchant` VALUES (1,'sun',NULL,'2019-03-25 09:36:30',1,1,'热情载客舟迎风扬帆，诚信便民店喜庆开业我们用热忱的心和负责的态度竭诚为您服务。');
/*!40000 ALTER TABLE `merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (5,1,3000,1,24,NULL,NULL),(6,1,2000,1,26,NULL,NULL),(7,1,2666,1,25,NULL,NULL),(11,1,2000,1,26,NULL,NULL),(12,1,20000,1,20,NULL,NULL);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'201904090144111554745451611',22000,'2019-04-09 01:44:12',1,1,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (15,'荣耀',12222,'a0d20662-8dd7-4982-9087-a9e0644efce0.png',1999,'123',30,'2019-03-28 14:32:08',3,2,1,30),(16,'诺基亚',1123,'3d9d8ad5-56ea-4086-844f-5e97e91aaae5.png',1999,'123',22,'2019-04-01 10:24:08',3,1,1,40),(17,'诺基亚note',300,'c196d158-175a-4eda-b275-612ade91d53a.png',1999,'fafda',355,'2019-04-01 10:40:47',3,1,1,55),(18,'诺基亚1',2000,'6ab9f407-d7a0-4414-baae-beff1c9f6971.png',1999,'fefaf',3344,'2019-04-01 10:41:06',3,1,1,222),(19,'vivo',12222,'1a5b3545-5874-408d-bd58-5085fbc556c9.png',10000,'fad',244,'2019-04-01 10:43:30',3,2,1,55),(20,'vivo27',20000,'c82f373e-bfc8-4305-9feb-ded5876cab54.png',18888,'fds',889,'2019-04-01 10:43:56',3,1,1,44),(21,'vivo20',2500,'290137e8-3110-48ef-84d0-19197c809598.gif',2000,'dasf',233,'2019-04-01 10:43:35',3,1,1,63),(22,'vivo1',2000,'0b26b6b8-ce5f-4e79-b620-d0e01d82c809.gif',1800,'das',455,'2019-04-01 10:44:39',3,1,1,234),(23,'vivo2',2800,'f9eabd53-c2c6-41b2-96aa-2e2770879c63.gif',2333,'fdas',66,'2019-04-01 10:44:51',3,1,1,5765),(24,'vivo3',3000,'289da618-0ba6-4116-9cd4-4b00683b9b98.gif',2666,'fgsd',77,'2019-04-01 10:45:10',3,1,1,31),(25,'vivo4',2666,'63f38105-fc59-436e-95cd-5e45862554ca.png',3222,'fds',0,'2019-04-01 15:54:33',3,2,1,324),(26,'vivo5',2000,'09c3551a-6dc0-4187-87d9-c68f5960d138.png',1777,'fasdf',0,'2019-04-01 15:54:54',3,2,1,235);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `productage`
--

LOCK TABLES `productage` WRITE;
/*!40000 ALTER TABLE `productage` DISABLE KEYS */;
/*!40000 ALTER TABLE `productage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'sunrise','123','男','彭昕','23','123',1,NULL,1),(2,'sun','456','男','ss','34','534',3,NULL,1);
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

-- Dump completed on 2019-04-09  8:45:42
