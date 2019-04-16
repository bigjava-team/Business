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
  `addressP_M_D` varchar(255) DEFAULT NULL,
  `detailedAddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_id`),
  KEY `FK2D9BF1AC71ABAE` (`u_id`),
  CONSTRAINT `FK2D9BF1AC71ABAE` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addr`
--

LOCK TABLES `addr` WRITE;
/*!40000 ALTER TABLE `addr` DISABLE KEYS */;
INSERT INTO `addr` VALUES (1,'彭昕 ','123456789','北京市辖区东城区第三个',4,'北京 | 市辖区 | 东城区','第三个'),(4,'谢梦成','45678913','云南昆明市西山区大法',4,'云南 | 昆明市 | 西山区','大法'),(9,'罗卿州','123','四川成都市市辖区制造',1,'四川|成都市|市辖区','制造');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'女'),(2,'男装'),(3,'内衣'),(4,'鞋靴'),(5,'箱包'),(6,'配件'),(7,'童装玩具'),(8,'孕产'),(9,'用品'),(10,'家电'),(11,'数码'),(12,'手机'),(13,'洗护'),(14,'保健品'),(15,'珠宝'),(16,'眼镜'),(17,'手表'),(18,'运动'),(19,'户外'),(20,'乐器'),(21,'游戏'),(22,'动漫'),(23,'影视'),(24,'美食'),(25,'生鲜'),(26,'美食'),(27,'鲜花'),(28,'宠物'),(29,'农资'),(30,'工具'),(31,'装修'),(32,'建材'),(33,'家具'),(34,'装饰'),(35,'家纺'),(36,'汽车'),(37,'二手车'),(38,'用品'),(39,'办公'),(40,'DIY'),(41,'五金电子'),(42,'百货'),(43,'餐厨'),(44,'家庭保健'),(45,'学习'),(46,'卡卷'),(47,'本地服务'),(49,'美妆'),(50,'');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorysecond`
--

LOCK TABLES `categorysecond` WRITE;
/*!40000 ALTER TABLE `categorysecond` DISABLE KEYS */;
INSERT INTO `categorysecond` VALUES (1,'oppo',12),(2,'vivo',12),(3,'衬衫',2),(4,'短袖',2),(5,'连衣裙',1),(6,'T恤',1),(7,'裤子',1),(8,'洗衣机',10),(9,'电视机',10),(10,'照相机',11),(11,'游戏机',11),(12,'背心',3),(13,'皮鞋',4),(14,'女包',5),(15,'帽子',6),(16,'积木',7),(17,'孕妇装',8),(18,'羊奶粉',9),(19,'洗发水',13),(20,'维生素',14),(21,'钻石',15),(22,'老花镜',16),(23,'卡西欧',17),(24,'耐克',18),(25,'鱼线',19),(26,'钢琴',20),(27,'LOL',21),(28,'航海王',22),(29,'大圣归来',23),(30,'牛奶',24),(31,'水果',25),(32,'面包',26),(33,'玫瑰',27),(34,'狗',28),(35,'农药',29),(36,'电钻',30),(37,'全包',31),(38,'灯',32),(39,'沙发',33),(40,'窗帘',34),(41,'被套',35),(42,'SUV',36),(43,'奥迪',37),(44,'空气净化器',38),(45,'打印机',39),(46,'工作服',40),(47,'切割器',41),(48,'保温杯',42),(49,'鞋柜',43),(50,'创口贴',44),(51,'英语四级',45),(52,'超市卡',46),(54,'婚纱摄影',49),(55,'摄影',49),(56,'美颜',49),(57,'摄影',47);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectmerchant`
--

LOCK TABLES `collectmerchant` WRITE;
/*!40000 ALTER TABLE `collectmerchant` DISABLE KEYS */;
INSERT INTO `collectmerchant` VALUES (1,1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectproduct`
--

LOCK TABLES `collectproduct` WRITE;
/*!40000 ALTER TABLE `collectproduct` DISABLE KEYS */;
INSERT INTO `collectproduct` VALUES (1,2,22),(3,2,25),(9,4,26),(10,4,24),(11,2,26),(12,4,25);
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
  `commentDate` datetime DEFAULT NULL,
  PRIMARY KEY (`com_id`),
  KEY `FK38A5EE5FAC71ABAE` (`u_id`),
  KEY `FK38A5EE5FE7217C83` (`p_id`),
  CONSTRAINT `FK38A5EE5FAC71ABAE` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`),
  CONSTRAINT `FK38A5EE5FE7217C83` FOREIGN KEY (`p_id`) REFERENCES `product` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'fhdasf',1,15,NULL),(2,'fdad',1,16,NULL),(3,'dfa',1,17,NULL),(4,'dfa',1,18,NULL),(5,'fdawr',1,19,NULL),(6,'ergfd',1,20,NULL),(7,'hffh',1,21,NULL),(8,'ytgff',1,22,NULL),(9,'ytrr',1,23,NULL),(10,'gfj',1,24,NULL),(11,'tew',1,19,NULL),(12,'fght',1,19,NULL),(13,'trey',1,20,NULL),(14,'ytrj',1,20,NULL),(15,'jety',1,20,NULL),(16,'twrt',1,18,NULL),(17,'twgf',1,17,NULL),(18,'hfhfdh',1,16,NULL),(19,'hfg',1,24,NULL);
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
  `pAge_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`img_id`),
  KEY `FKB95A8278E7217C83` (`p_id`),
  KEY `FKB95A827887D3E09E` (`pAge_id`),
  CONSTRAINT `FKB95A827887D3E09E` FOREIGN KEY (`pAge_id`) REFERENCES `productage` (`pAge_id`),
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
-- Table structure for table `indexnotice`
--

DROP TABLE IF EXISTS `indexnotice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indexnotice` (
  `indexNoticeId` int(11) NOT NULL AUTO_INCREMENT,
  `indexNoticeTitle` varchar(255) DEFAULT NULL,
  `indexNotice` varchar(255) DEFAULT NULL,
  `indexNoticeTime` datetime DEFAULT NULL,
  PRIMARY KEY (`indexNoticeId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indexnotice`
--

LOCK TABLES `indexnotice` WRITE;
/*!40000 ALTER TABLE `indexnotice` DISABLE KEYS */;
INSERT INTO `indexnotice` VALUES (2,'光光','光光NO.1','2019-04-16 03:37:23'),(3,'光光','光光NO.2','2019-04-16 03:42:36');
/*!40000 ALTER TABLE `indexnotice` ENABLE KEYS */;
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
  `notice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`m_id`),
  KEY `FKE1E1C9C8AC71ABAE` (`u_id`),
  CONSTRAINT `FKE1E1C9C8AC71ABAE` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant`
--

LOCK TABLES `merchant` WRITE;
/*!40000 ALTER TABLE `merchant` DISABLE KEYS */;
INSERT INTO `merchant` VALUES (1,'sun',NULL,'2019-03-25 09:36:30',1,1,'热情载客舟迎风扬帆，诚信便民店喜庆开业我们用热忱的心和负责的态度竭诚为您服务。'),(3,'星际争霸II','d48f766d-a7b3-444d-b5bd-3d7030e67336.png','2019-04-12 23:00:22',1,3,NULL);
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
  `pAge_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `FKE8B2AB61AC71ABAE` (`u_id`),
  KEY `FKE8B2AB6197342528` (`o_id`),
  KEY `FKE8B2AB61E7217C83` (`p_id`),
  KEY `FKE8B2AB6187D3E09E` (`pAge_id`),
  CONSTRAINT `FKE8B2AB6187D3E09E` FOREIGN KEY (`pAge_id`) REFERENCES `productage` (`pAge_id`),
  CONSTRAINT `FKE8B2AB6197342528` FOREIGN KEY (`o_id`) REFERENCES `orders` (`o_id`),
  CONSTRAINT `FKE8B2AB61AC71ABAE` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`),
  CONSTRAINT `FKE8B2AB61E7217C83` FOREIGN KEY (`p_id`) REFERENCES `product` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (5,1,3000,1,24,2,NULL),(6,1,2000,1,26,2,NULL),(7,1,2666,1,25,20,NULL),(11,1,2000,1,26,19,NULL),(12,2,40000,1,20,3,NULL),(13,1,2666,1,25,NULL,NULL),(14,1,2000,1,26,43,NULL),(21,1,2000,1,26,22,NULL),(22,1,3000,1,24,21,NULL),(23,1,3000,1,24,44,NULL),(25,1,2500,4,21,51,NULL),(28,1,2000,4,22,51,NULL),(31,1,2000,4,18,51,NULL),(32,1,2000,4,18,52,NULL);
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
  `ordertime` datetime DEFAULT NULL,
  `state` int(11) NOT NULL,
  `u_id` int(11) DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`o_id`),
  KEY `FKC3DF62E5E740EB8E` (`a_id`),
  KEY `FKC3DF62E5AC71ABAE` (`u_id`),
  CONSTRAINT `FKC3DF62E5AC71ABAE` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`),
  CONSTRAINT `FKC3DF62E5E740EB8E` FOREIGN KEY (`a_id`) REFERENCES `addr` (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (2,'2019040910034415547754246818',5000,'2019-04-09 10:03:45',1,1,NULL),(3,'2019040919313815548094981723',40000,'2019-04-09 19:31:39',1,1,NULL),(19,'2019041000572515548291045067',2000,'2019-04-10 00:57:25',2,1,1),(20,'2019041001010715548292627812',2666,'2019-04-10 01:01:08',3,1,1),(21,'201904111520551554967255514',3000,'2019-04-11 15:20:56',3,1,4),(22,'201904111530141554967814312',2000,'2019-04-11 15:30:14',1,1,NULL),(42,'201904111631261554971486646',2000,'2019-04-11 16:31:27',1,1,NULL),(43,'201904111639341554971974997',2000,'2019-04-11 16:39:35',1,1,NULL),(44,'201904111643291554972209388',3000,'2019-04-11 16:43:29',1,1,NULL),(50,'201904141416061555222566042',4500,'2019-04-14 14:16:06',1,4,NULL),(51,'201904141555251555228525374',2000,'2019-04-14 15:55:25',1,4,NULL),(52,'201904141605331555229133014',2000,'2019-04-14 16:05:33',2,4,4);
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
  `p_repertory` int(11) NOT NULL,
  PRIMARY KEY (`p_id`),
  KEY `FKED8DCCEFB2EE4401` (`cs_id`),
  KEY `FKED8DCCEFBE59A0B0` (`m_id`),
  CONSTRAINT `FKED8DCCEFB2EE4401` FOREIGN KEY (`cs_id`) REFERENCES `categorysecond` (`cs_id`),
  CONSTRAINT `FKED8DCCEFBE59A0B0` FOREIGN KEY (`m_id`) REFERENCES `merchant` (`m_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (15,'荣耀',2000,'a0d20662-8dd7-4982-9087-a9e0644efce0.png',12222,'123',30,'2019-03-28 14:32:08',3,1,1,30),(16,'诺基亚',1999,'3d9d8ad5-56ea-4086-844f-5e97e91aaae5.png',2300,'123',22,'2019-04-01 10:24:08',3,1,1,40),(17,'诺基亚note',1999,'c196d158-175a-4eda-b275-612ade91d53a.png',2300,'fafda',355,'2019-04-01 10:40:47',3,1,1,55),(18,'诺基亚1',2300,'6ab9f407-d7a0-4414-baae-beff1c9f6971.png',2500,'fefaf',3344,'2019-04-01 10:41:06',2,1,1,222),(19,'vivo',8000,'1a5b3545-5874-408d-bd58-5085fbc556c9.png',10000,'fad',244,'2019-04-01 10:43:30',3,2,1,55),(20,'vivo27',15000,'c82f373e-bfc8-4305-9feb-ded5876cab54.png',18888,'fds',889,'2019-04-01 10:43:56',3,2,1,44),(21,'vivo20',2000,'290137e8-3110-48ef-84d0-19197c809598.gif',2500,'dasf',233,'2019-04-01 10:43:35',3,2,1,63),(22,'vivo1',1500,'0b26b6b8-ce5f-4e79-b620-d0e01d82c809.gif',1800,'das',455,'2019-04-01 10:44:39',3,2,1,234),(23,'vivo2',2000,'f9eabd53-c2c6-41b2-96aa-2e2770879c63.gif',2333,'fdas',66,'2019-04-01 10:44:51',3,1,1,5765),(24,'vivo3',2100,'289da618-0ba6-4116-9cd4-4b00683b9b98.gif',2666,'fgsd',77,'2019-04-01 10:45:10',3,2,1,31),(25,'vivo4',2666,'63f38105-fc59-436e-95cd-5e45862554ca.png',3222,'fds',0,'2019-04-01 15:54:33',3,1,1,324),(26,'vivo5',2000,'09c3551a-6dc0-4187-87d9-c68f5960d138.png',2300,'fasdf',0,'2019-04-01 15:54:54',3,1,1,235);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productage`
--

DROP TABLE IF EXISTS `productage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productage` (
  `pAge_id` int(11) NOT NULL AUTO_INCREMENT,
  `pAge` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pAge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productage`
--

LOCK TABLES `productage` WRITE;
/*!40000 ALTER TABLE `productage` DISABLE KEYS */;
/*!40000 ALTER TABLE `productage` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'sunrise','123','男','彭昕','23','123',2,'user_morentouxiang.jpg',1),(2,'sun','456','男','ss','34','534',1,'user_morentouxiang.jpg',1),(3,'son','123456','男','ss','1084032831@qq.com','123',3,'user_morentouxiang.jpg',2),(4,'px','123456','男','付慧雷','1084032831@qq.com','123',1,'user_morentouxiang.jpg',1);
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

-- Dump completed on 2019-04-16  9:14:07
