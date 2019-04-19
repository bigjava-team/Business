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
  `addressP_M_D` varchar(255) NOT NULL,
  `detailedAddress` varchar(255) NOT NULL,
  `u_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`a_id`),
  KEY `FK2D9BF1AC71ABAE` (`u_id`),
  CONSTRAINT `FK2D9BF1AC71ABAE` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addr`
--

LOCK TABLES `addr` WRITE;
/*!40000 ALTER TABLE `addr` DISABLE KEYS */;
INSERT INTO `addr` VALUES (1,'龚智猛','19979405455','江西南昌市南昌县江西制造职业技术学院','江西|南昌市|南昌县','江西制造职业技术学院',3),(3,'龚智猛','19979405455','江苏南京市市辖区江西制造职业技术学院','江苏|南京市|市辖区','江西制造职业技术学院',4);
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
  `c_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'女装'),(2,'男装'),(3,'内衣'),(4,'鞋靴'),(5,'箱包'),(6,'配件'),(7,'童装玩具'),(8,'孕产'),(9,'用品'),(10,'家电'),(11,'数码'),(12,'手机'),(13,'美妆'),(14,'洗护'),(15,'保健品'),(16,'珠宝'),(17,'眼镜'),(18,'手表'),(19,'运动'),(20,'户外'),(21,'乐器'),(22,'游戏'),(23,'动漫'),(24,'影视'),(25,'美食'),(26,'生鲜'),(27,'零食'),(28,'鲜花'),(29,'宠物'),(30,'农资'),(31,'工具'),(32,'装修'),(33,'建材'),(34,'家具'),(35,'家饰'),(36,'家纺'),(37,'汽车'),(38,'二手车'),(39,'用品'),(40,'办公'),(41,'DIY'),(42,'五金电子'),(43,'百货'),(44,'餐厨'),(45,'家庭保健'),(46,'学习'),(47,'卡券'),(48,'本地服务');
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
  `cs_name` varchar(255) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cs_id`),
  KEY `FK936FCAF2225CF66` (`c_id`),
  CONSTRAINT `FK936FCAF2225CF66` FOREIGN KEY (`c_id`) REFERENCES `category` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorysecond`
--

LOCK TABLES `categorysecond` WRITE;
/*!40000 ALTER TABLE `categorysecond` DISABLE KEYS */;
INSERT INTO `categorysecond` VALUES (1,'T恤',1),(2,'裤子',1),(3,'连衣裙',1),(4,'外套',2),(5,'衬衫',2),(6,'背心',3),(7,'休闲鞋',4),(8,'女包',5),(9,'帽子',6),(10,'积木',7),(11,'孕妇裤',8),(12,'羊奶粉',9),(13,'电视机',10),(14,'洗衣机',10),(15,'游戏机',11),(16,'照相机',11),(17,'oppo',12),(18,'vivo',12),(19,'洗发水',14),(20,'维生素',15),(21,'钻石',16),(22,'老花镜',17),(23,'卡西欧',18),(24,'耐克',19),(25,'鱼线',20),(26,'钢琴',21),(27,'lol',22),(28,'航海王',23),(29,'大圣归来',24),(30,'面包',25),(31,'牛奶',25),(32,'水果',26),(33,'牛肉干',27),(34,'辣条',27),(35,'玫瑰',28),(36,'狗',29),(37,'农药',30),(38,'电钻',31),(39,'全包',32),(40,'LED灯',33),(41,'沙发',34),(42,'床',34),(43,'窗帘',35),(44,'地毯',35),(45,'竹席',36),(46,'被褥',36),(47,'新能源',37),(48,'SUV',37),(49,'大众',38),(50,'宝马',38),(51,'车载香水',39),(52,'车载导航',39),(53,'打印机',40),(54,'复印机',40),(55,'定制T恤',41),(56,'工作服',41),(57,'电动螺丝刀',42),(58,'变压器',42),(59,'切割机',42),(60,'保温杯',43),(61,'茶壶',43),(62,'碗',43),(63,'收纳箱',44),(64,'鞋柜',44),(65,'置物架',44),(66,'创口贴',45),(67,'急救箱',45),(68,'消毒用品',45),(69,'汽车维修',46),(70,'中小学辅导',46),(71,'超市卡',47),(72,'网页设计',47),(73,'搬家',48),(74,'婚车租赁',48),(75,'面膜',13);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectproduct`
--

LOCK TABLES `collectproduct` WRITE;
/*!40000 ALTER TABLE `collectproduct` DISABLE KEYS */;
INSERT INTO `collectproduct` VALUES (1,2,5);
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
  `commentDate` datetime DEFAULT NULL,
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
  `pAge_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`img_id`),
  KEY `FKB95A827887D3E09E` (`pAge_id`),
  KEY `FKB95A8278E7217C83` (`p_id`),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indexnotice`
--

LOCK TABLES `indexnotice` WRITE;
/*!40000 ALTER TABLE `indexnotice` DISABLE KEYS */;
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
  `notice` varchar(255) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`m_id`),
  KEY `FKE1E1C9C8AC71ABAE` (`u_id`),
  CONSTRAINT `FKE1E1C9C8AC71ABAE` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchant`
--

LOCK TABLES `merchant` WRITE;
/*!40000 ALTER TABLE `merchant` DISABLE KEYS */;
INSERT INTO `merchant` VALUES (1,'爱依服','\\女装\\连衣裙\\花栗鼠小姐 红色波点连衣裙春装2019新款韩版宽松衬衫方领上衣女\\lianyiqun_021_04.jpg','2019-04-18 20:48:14',2,'好看的衣服',2),(2,'机械之家',NULL,'2019-04-18 23:48:14',2,NULL,3),(3,'小棉袄之家','1bd6555d-1237-4723-b927-98d4472065a4.jpg','2019-04-19 02:01:39',2,NULL,5),(4,'呆瓜不太呆','ea21a2f3-8b3c-4925-a5a7-9541ef4ad6a8.jpg','2019-04-19 09:19:56',2,NULL,4);
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
  KEY `FKE8B2AB6187D3E09E` (`pAge_id`),
  KEY `FKE8B2AB6197342528` (`o_id`),
  KEY `FKE8B2AB61E7217C83` (`p_id`),
  CONSTRAINT `FKE8B2AB6187D3E09E` FOREIGN KEY (`pAge_id`) REFERENCES `productage` (`pAge_id`),
  CONSTRAINT `FKE8B2AB6197342528` FOREIGN KEY (`o_id`) REFERENCES `orders` (`o_id`),
  CONSTRAINT `FKE8B2AB61AC71ABAE` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`),
  CONSTRAINT `FKE8B2AB61E7217C83` FOREIGN KEY (`p_id`) REFERENCES `product` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (1,1,59,2,27,NULL,NULL),(9,1,2899,3,24,5,NULL),(11,1,2899,3,24,7,NULL),(16,1,150,3,1,6,NULL),(17,1,59,3,235,NULL,NULL),(18,1,109,4,243,8,NULL);
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
  `ordertime` datetime NOT NULL,
  `state` int(11) NOT NULL,
  `u_id` int(11) DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`o_id`),
  KEY `FKC3DF62E5E740EB8E` (`a_id`),
  KEY `FKC3DF62E5AC71ABAE` (`u_id`),
  CONSTRAINT `FKC3DF62E5AC71ABAE` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`),
  CONSTRAINT `FKC3DF62E5E740EB8E` FOREIGN KEY (`a_id`) REFERENCES `addr` (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'201904190122351555608155608',0,'2019-04-19 01:22:36',1,3,NULL),(5,'201904190128401555608520668',2899,'2019-04-19 01:28:41',1,3,NULL),(6,'201904190131261555608686071',150,'2019-04-19 01:31:26',3,3,1),(7,'201904190137421555609062832',2899,'2019-04-19 01:37:43',1,3,NULL),(8,'201904190916401555636600004',109,'2019-04-19 09:16:40',2,4,3);
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
  `p_repertory` int(11) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'香港代购19春夏下衣失踪纯棉卡通烫钻小熊T恤字母情侣短袖上衣女',150,'\\女装\\T恤\\香港代购19春夏下衣失踪纯棉卡通烫钻小熊T恤字母情侣短袖上衣女\\txu_001_01.jpg',18,200,'hahah',12,'2019-04-18 20:48:14',1,1,1),(2,'破洞牛仔裤女春夏2019新款韩版高腰bf宽松学生阔腿裤九分乞丐裤子',99,'\\女装\\裤子\\破洞牛仔裤女春夏2019新款韩版高腰bf宽松学生阔腿裤九分乞丐裤子\\kuzi_001_01.jpg',50,150,'hahah',20,'2019-04-18 20:50:14',1,2,1),(3,'【欢欢法代】maje 19春夏 镂空蕾丝花边束腰中长款连衣裙 ROSERAY',100,'\\女装\\连衣裙\\【欢欢法代】maje 19春夏 镂空蕾丝花边束腰中长款连衣裙 ROSERAY\\lianyiqun_011_01.jpg',20,200,'hahha',50,'2019-04-18 20:52:14',1,3,1),(4,'2019夏季新款很仙的法国小众仙女超仙甜美蛋糕裙雪纺连衣裙子长裙',100,'\\女装\\连衣裙\\2019夏季新款很仙的法国小众仙女超仙甜美蛋糕裙雪纺连衣裙子长裙\\lianyiqun_012_01.jpg',30,259,'hahha',60,'2019-04-18 20:53:14',1,3,1),(5,'2019夏季新款女装气质两件套很仙的法国小众连衣裙超仙少女温柔裙',120,'\\女装\\连衣裙\\2019夏季新款女装气质两件套很仙的法国小众连衣裙超仙少女温柔裙\\lianyiqun_014_01.jpg',60,200,'hahah',20,'2019-04-18 20:53:14',1,3,1),(6,'2019新款女装装很仙的法国小众连衣裙春秋气质裙子初春两件套洋气',130,'\\女装\\连衣裙\\2019新款女装装很仙的法国小众连衣裙春秋气质裙子初春两件套洋气\\lianyiqun_018_01.jpg',30,199,'hhhh',40,'2019-04-18 20:54:14',1,3,1),(7,'D衣家IU DVF裹身裙印花连衣裙夏碎花长款V领修身显瘦气质中袖长裙',199,'\\女装\\连衣裙\\D衣家IU DVF裹身裙印花连衣裙夏碎花长款V领修身显瘦气质中袖长裙\\lianyiqun_016_01.jpg',20,299,'hhhh',20,'2019-04-18 20:55:14',1,3,1),(8,'D衣家IU DVF新款大热茶歇裙浪漫法式复古V领红色系带短袖连衣裙',99,'\\女装\\连衣裙\\D衣家IU DVF新款大热茶歇裙浪漫法式复古V领红色系带短袖连衣裙\\lianyiqun_015_01.jpg',50,199,'hhhh',50,'2019-04-18 20:56:16',1,3,1),(9,'IU DVF新款裹身裙夏季黄色印花七分袖性感包臀修身长裙度假连衣裙',99,'\\女装\\连衣裙\\IU DVF新款裹身裙夏季黄色印花七分袖性感包臀修身长裙度假连衣裙\\lianyiqun_013_01.jpg',30,129,'hhhh',30,'2019-04-18 20:56:20',1,3,1),(10,'sandro moscoloni2018新款polo领条纹衬衫裙子显瘦减龄连衣裙女夏',99,'\\女装\\连衣裙\\sandro moscoloni2018新款polo领条纹衬衫裙子显瘦减龄连衣裙女夏\\lianyiqun_010_01.jpg',30,139,'hhh',30,'2019-04-18 20:56:25',1,3,1),(11,'Sandro Moscoloni2019初春新款白色蕾丝连衣裙chic韩版中裙女显瘦',129,'\\女装\\连衣裙\\Sandro Moscoloni2019初春新款白色蕾丝连衣裙chic韩版中裙女显瘦\\lianyiqun_023_01.jpg',50,199,'hhhh',50,'2019-04-18 20:56:55',1,3,1),(12,'春装2019款女连衣裙法式复古裙过膝流行裙子套装女春秋刺绣两件套',99,'\\女装\\连衣裙\\春装2019款女连衣裙法式复古裙过膝流行裙子套装女春秋刺绣两件套\\lianyiqun_004_01.jpg',23,199,'hhhh',50,'2019-04-18 20:57:55',1,3,1),(13,'春装2019新款流行裙子女春秋法国小众长裙两件套很仙的连衣裙夏季',59,'\\女装\\连衣裙\\春装2019新款流行裙子女春秋法国小众长裙两件套很仙的连衣裙夏季\\lianyiqun005_01.jpg',25,199,'hhh',30,'2019-04-18 20:58:55',1,3,1),(14,'夏季白衬衫男短袖商务休闲修身寸衫韩版潮流帅气长袖7七分袖衬衣',199,'\\男装\\衬衫\\夏季白衬衫男短袖商务休闲修身寸衫韩版潮流帅气长袖7七分袖衬衣\\chenshan_001_01.jpg',30,299,'hhh',60,'2019-04-18 20:59:00',1,5,1),(15,'2019春季新款西装男套装二件套休闲修身潮流帅气小西服薄款外套男',199,'\\男装\\外套\\2019春季新款西装男套装二件套休闲修身潮流帅气小西服薄款外套男\\waitao_001_01.jpg',26,259,'hhh',20,'2019-04-18 20:59:01',1,4,1),(16,'3件CK男士背心纯棉莫代尔修身型青年工字运动跨栏打底汗衫夏季潮',59,'\\内衣\\背心\\3件CK男士背心纯棉莫代尔修身型青年工字运动跨栏打底汗衫夏季潮\\beixin_001_01.jpg',56,99,'hhh',50,'2019-04-18 20:59:02',1,6,1),(17,'木林森2019新款休闲鞋男春季英伦百搭男鞋韩版潮流皮鞋黑色鞋子男',199,'\\鞋靴\\休闲鞋\\木林森2019新款休闲鞋男春季英伦百搭男鞋韩版潮流皮鞋黑色鞋子男\\xiuxianxie_001_01.jpg',56,299,'hhh',56,'2019-04-18 20:59:03',1,7,1),(18,'代购FURLA芙拉新款小方包丛林动物图案真皮包单肩斜挎女包链条包',199,'\\箱包\\女包\\代购FURLA芙拉新款小方包丛林动物图案真皮包单肩斜挎女包链条包\\nvbao_001_01.jpg',23,299,'hh',66,'2019-04-18 20:59:05',1,8,1),(19,'儿童遮阳帽夏潮韩版渔夫帽旅游出游草帽盆帽 西部牛仔男童女童帽',99,'\\配件\\帽子\\儿童遮阳帽夏潮韩版渔夫帽旅游出游草帽盆帽 西部牛仔男童女童帽\\maozi_001_01.jpg',59,199,'hhhh',56,'2019-04-18 20:59:06',1,9,1),(20,'儿童积木桌子玩具男孩子3-6周岁7拼装8女孩益智10多功能兼容legao',79,'\\童装玩具\\积木\\儿童积木桌子玩具男孩子3-6周岁7拼装8女孩益智10多功能兼容legao\\jimu_001_01.jpg',100,89,'hhh',23,'2019-04-18 20:59:07',1,10,1),(21,'孕妇背带裤春夏2019新款时尚3-9个月潮妈薄款裤子牛仔孕妇套装',189,'\\孕产\\孕妇裤\\孕妇背带裤春夏2019新款时尚3-9个月潮妈薄款裤子牛仔孕妇套装\\yunfudai_001_01.jpg',59,299,'hhh',25,'2019-04-18 20:59:08',1,11,1),(22,'澳洲直邮 Karicare可瑞康羊奶粉婴幼儿奶粉3段三段 有2段新日期',109,'\\用品\\羊奶粉\\澳洲直邮 Karicare可瑞康羊奶粉婴幼儿奶粉3段三段 有2段新日期\\yangnaifeng_001_01.jpg',89,159,'hhh',15,'2019-04-18 20:59:09',1,12,1),(23,'Xiaomi小米 小米电视4A 55英寸 4k超高清智能网络智能电视 5060',59,'\\家电\\电视机\\Xiaomi小米 小米电视4A 55英寸 4k超高清智能网络智能电视 5060\\dianshiji_001_01.png',99,99,'hhh',89,'2019-04-18 20:59:10',1,13,1),(24,'小天鹅10公斤KG洗衣机全自动滚筒家用 变频智能静音 TG100V120WDG',2899,'\\家电\\洗衣机\\小天鹅10公斤KG洗衣机全自动滚筒家用 变频智能静音 TG100V120WDG\\xiyiji_001_01.png',56,2999,'hh',99,'2019-04-18 20:59:11',1,14,1),(25,'BIGBANDS掌上游戏机FC超级玛丽SUP GAME BOX掌机双人版怀旧款老式',169,'\\数码\\游戏机\\BIGBANDS掌上游戏机FC超级玛丽SUP GAME BOX掌机双人版怀旧款老式\\youxiji_001_01.jpg',56,266,'hh',89,'2019-04-18 20:59:12',1,15,1),(26,'Nikon尼康D5300 18-140mmVR 入门级单反照相机 高清家用旅游自拍',500,'\\数码\\照相机\\Nikon尼康D5300 18-140mmVR 入门级单反照相机 高清家用旅游自拍\\zhaoxiangji_001_01.png',568,599,'hh',59,'2019-04-18 20:59:13',1,16,1),(27,'【限时减250】OPPO K1oppok1手机全新机正品新款oppok1手机限量oppor17oppor15手机oppofindxoppor11sa7xa5k3',59,'\\手机\\OPPO\\【限时减250】OPPO K1oppok1手机全新机正品新款oppok1手机限量oppor17oppor15手机oppofindxoppor11sa7xa5k3\\OPPO_001_01.png',98,299,'hh',6,'2019-04-18 20:59:14',1,17,1),(28,'【详情页抢券减100】vivo Z3水滴全面屏高通骁龙710AIE处理器全网通智能4G限量版新款手机官方正品vivoz3 z3',10,'\\手机\\vivo\\【详情页抢券减100】vivo Z3水滴全面屏高通骁龙710AIE处理器全网通智能4G限量版新款手机官方正品vivoz3 z3\\vivo_001_01.png',12,2999,'hh',56,'2019-04-18 20:59:15',1,18,1),(29,'马丁男士洗发水去屑止痒洗发露古龙控油清爽香水型洗头膏持久正品',150,'\\洗护\\洗发水\\马丁男士洗发水去屑止痒洗发露古龙控油清爽香水型洗头膏持久正品\\xihu_001_01.png',156,299,'hh',23,'2019-04-18 20:59:16',1,19,1),(30,'善存多维元素(29)100片成人中老年复合维生素和矿物质',100,'\\保健品\\维生素\\善存多维元素(29)100片成人中老年复合维生素和矿物质\\baojianping_001_01.png',123,299,'hh',25,'2019-04-18 20:59:17',1,20,1),(31,'正品1克拉钻戒女50定制30分裸钻白金结求婚18K金钻石戒指铂金情侣',40,'\\珠宝\\钻石\\正品1克拉钻戒女50定制30分裸钻白金结求婚18K金钻石戒指铂金情侣\\zhubao_001_01.jpg',45,59,'hh',23,'2019-04-18 20:59:18',1,21,1),(32,'东海水晶老花镜男正品折叠花镜女高清水晶老花眼镜防疲劳石头老人',40,'\\眼镜\\老花镜\\东海水晶老花镜男正品折叠花镜女高清水晶老花眼镜防疲劳石头老人\\yanjing_001_01.png',48,56,'hh',56,'2019-04-18 20:59:19',1,22,1),(33,'卡西欧 casio男士运动手表男G-SHOCK黑金系列防水防震 GA-110GB',10,'\\手表\\卡西欧\\卡西欧 casio男士运动手表男G-SHOCK黑金系列防水防震 GA-110GB\\shoubiao_001_01.png',12,59,'hhh',9,'2019-04-18 20:59:20',1,23,1),(34,'Nike 耐克官方NIKE AIR MAX 270女子运动鞋 AH6789',50,'\\运动\\耐克\\Nike 耐克官方NIKE AIR MAX 270女子运动鞋 AH6789\\yundong_001_01.png',56,199,'hhhh',15,'2019-04-18 20:59:21',1,24,1),(35,'正品美人鱼鱼线十年情50米竞技钓线超强拉力主线子线钓线超强拉力',59,'\\户外\\鱼线\\正品美人鱼鱼线十年情50米竞技钓线超强拉力主线子线钓线超强拉力\\huwai_001_01.png',89,199,'hh',59,'2019-04-18 20:59:22',1,25,1),(36,'索帕电钢琴88键重锤专业成人家用幼师儿童初学者智能数码电子钢琴',19,'\\乐器\\钢琴\\索帕电钢琴88键重锤专业成人家用幼师儿童初学者智能数码电子钢琴\\yueqi_001_01.png',23,199,'hhh',78,'2019-04-18 20:59:23',1,26,1),(37,'lol英雄联盟 皮肤修改器软件 换肤盒子灭霸一键换肤 自制皮肤防封',39,'\\游戏\\lol\\lol英雄联盟 皮肤修改器软件 换肤盒子灭霸一键换肤 自制皮肤防封\\youxi_001_01.jpg',48,199,'hhhh',49,'2019-04-18 20:59:24',1,27,1),(38,'onepiece手办模型路飞索隆艾斯罗公仔动漫生日礼物摆件玩偶',199,'\\动漫\\航海王\\onepiece手办模型路飞索隆艾斯罗公仔动漫生日礼物摆件玩偶\\hanghaiwang_001_01.jpg',56,299,'hh',59,'2019-04-18 20:59:25',1,28,1),(39,'羽林造物 悟空摆件齐天大圣归来 手工创意工艺品礼品装饰倒流香炉',99,'\\影视\\大圣归来\\羽林造物 悟空摆件齐天大圣归来 手工创意工艺品礼品装饰倒流香炉\\dashengguilai_001_01.jpg',23,199,'h',65,'2019-04-18 20:59:26',1,29,1),(40,'千丝绿豆饼整箱早餐面包网红零食品蛋糕点心特产小吃的成人款美食',16,'\\美食\\面包\\千丝绿豆饼整箱早餐面包网红零食品蛋糕点心特产小吃的成人款美食\\mianbao_001_01.png',59,26,'hh',15,'2019-04-18 20:59:27',1,30,1),(41,'蒙牛特仑苏纯牛奶250ml16盒营养升级 专属牧场',189,'\\美食\\牛奶\\蒙牛特仑苏纯牛奶250ml16盒营养升级 专属牧场\\niunai_001_01.png',48,199,'hh',266,'2019-04-18 20:59:28',1,31,1),(42,'新鲜橙橘橙子5斤当季水果脐橙冰糖橙果冻橙血橙橘子桔子拍2件10斤',159,'\\生鲜\\水果\\新鲜橙橘橙子5斤当季水果脐橙冰糖橙果冻橙血橙橘子桔子拍2件10斤\\shuiguo_001_01.png',12,169,'hhh',56,'2019-04-18 20:59:29',1,32,1),(43,'满减【三只松鼠_蜀香牛肉100g】休闲零食小吃肉脯手撕牛肉干美食',179,'\\零食\\牛肉干\\满减【三只松鼠_蜀香牛肉100g】休闲零食小吃肉脯手撕牛肉干美食\\niurougan_001_01.png',65,299,'hhh',2,'2019-04-18 20:59:30',1,33,1),(44,'新品【三只松鼠_好多啦23袋508g_辣条大礼包】可以吃很久的零食',50,'\\零食\\辣条\\新品【三只松鼠_好多啦23袋508g_辣条大礼包】可以吃很久的零食\\latiao_001_01.png',23,59,'hhh',56,'2019-04-18 20:59:31',1,34,1),(45,'水养鲜花花束直批云南昆明基地直发百合花批发家用玫瑰花速递同城',50,'\\鲜花\\玫瑰\\水养鲜花花束直批云南昆明基地直发百合花批发家用玫瑰花速递同城\\meigui_001_01.jpg',56,99,'hhh',23,'2019-04-18 20:59:32',1,35,1),(46,'哈士奇公仔送女友大号狗狗熊毛绒玩具布娃娃玩偶可爱睡觉抱枕女孩',199,'\\宠物\\狗\\哈士奇公仔送女友大号狗狗熊毛绒玩具布娃娃玩偶可爱睡觉抱枕女孩\\gou_001_01.png',256,89,'hhh',89,'2019-04-18 20:59:34',1,36,1),(47,'高效氯氟氰菊酯果树蔬菜青虫腻虫药蚜虫地下害虫农药店杀虫剂杀鱼',20,'\\农资\\农药\\高效氯氟氰菊酯果树蔬菜青虫腻虫药蚜虫地下害虫农药店杀虫剂杀鱼\\nongyao_001_01.jpg',23,89,'hhh',56,'2019-04-18 20:59:35',1,37,1),(48,'龙韵12V锂电钻充电式手钻小手枪钻电钻多功能家用电动螺丝刀电转',49,'\\工具\\电钻\\龙韵12V锂电钻充电式手钻小手枪钻电钻多功能家用电动螺丝刀电转\\dianzuan_001_01.png',55,79,'hhh',23,'2019-04-18 20:59:36',1,38,1),(49,'重庆装修公司装修全包整装家装装修设计效果图新房半包装修施工',159,'\\装修\\全包\\重庆装修公司装修全包整装家装装修设计效果图新房半包装修施工\\quanbao_001_01.jpg',88,199,'hh',56,'2019-04-18 20:59:37',1,39,1),(50,'爱迪生led灯泡e27螺口复古怀旧暖黄白光节能钨丝螺纹超亮吊led灯',20,'\\建材\\灯\\爱迪生led灯泡e27螺口复古怀旧暖黄白光节能钨丝螺纹超亮吊led灯\\deng_001_01.jpg',56,26,'h',25,'2019-04-18 20:59:38',1,40,1),(51,'林尔邦简约现代免洗防水布艺沙发组合大小户型可拆洗乳胶客厅家具',49,'\\家具\\沙发\\林尔邦简约现代免洗防水布艺沙发组合大小户型可拆洗乳胶客厅家具\\shafa_001_01.jpg',995,59,'hh',59,'2019-04-18 20:59:39',1,41,1),(52,'维莎日式1.51.8米实木床橡木双人床环保卧室家具北欧现代简约',15,'\\家具\\床\\维莎日式1.51.8米实木床橡木双人床环保卧室家具北欧现代简约\\chuang_001_01.png',56,18,'hhh',15,'2019-04-18 20:59:40',1,42,1),(53,'简约现代田园成品窗帘卧室遮光窗帘遮光布客厅加厚隔热遮阳布短帘',149,'\\家饰\\窗帘\\简约现代田园成品窗帘卧室遮光窗帘遮光布客厅加厚隔热遮阳布短帘\\chuanglian_001_01.png',26,199,'hhh',26,'2019-04-18 20:59:41',1,43,1),(54,'胖鱼轻奢北欧风格地毯现代简约线条客厅茶几卧室房间床边毯满铺',19,'\\家饰\\地毯\\胖鱼轻奢北欧风格地毯现代简约线条客厅茶几卧室房间床边毯满铺\\ditan_001_01.jpg',59,25,'hhh',59,'2019-04-18 20:59:42',1,44,1),(55,'席子碳化竹凉席双面竹席可折叠席子单双人宿舍1.21.5 1.8m床凉席',199,'\\家纺\\竹席\\席子碳化竹凉席双面竹席可折叠席子单双人宿舍1.21.5 1.8m床凉席\\zuxi_001_01.png',156,215,'d',26,'2019-04-18 20:59:43',1,45,1),(56,'被套单件 1.51.82.0m米床单双人床上用品学生宿舍贡缎提花被罩',20,'\\家纺\\被套\\被套单件 1.51.82.0m米床单双人床上用品学生宿舍贡缎提花被罩\\beitao_001_01.jpg',12,25,'g',48,'2019-04-18 20:59:44',1,46,1),(57,'【订金】上汽名爵6新能源',199,'\\汽车\\新能源车\\【订金】上汽名爵6新能源\\xinengyuan_001_01.png',54,841,'d',26,'2019-04-18 20:59:45',1,47,1),(58,'【订金】传祺GS8 新车整车 旗舰级豪华大7座SUV',9.9,'\\汽车\\suv\\【订金】传祺GS8 新车整车 旗舰级豪华大7座SUV\\suv_001_01.png',56,15,'gdf',23,'2019-04-18 20:59:46',1,48,1),(59,'大众POLO两厢2013款1.4手动风尚版 优信二手车',199,'\\二手车\\大众\\大众POLO两厢2013款1.4手动风尚版 优信二手车\\dazhong_001_01.png',89,589,'hg',22,'2019-04-18 20:59:47',1,49,1),(60,'宝马1系2017款1.5T自动118i设计套装型 优信二手车',189,'\\二手车\\宝马\\宝马1系2017款1.5T自动118i设计套装型 优信二手车\\baoma_001_01.png',59,199,'hh',59,'2019-04-18 20:59:48',1,50,1),(61,'固体香膏车载香水持久淡香汽车内饰品摆件装饰空气清新剂车用香薰',89,'\\汽车用品\\车载香水\\固体香膏车载香水持久淡香汽车内饰品摆件装饰空气清新剂车用香薰\\chezaixiangshui_001_01.png',598,99,'hh',22,'2019-04-18 20:59:49',1,51,1),(62,'蘑菇智行智能车机大众速迈腾POLO途观捷达新朗逸倒车导航一体机',179,'\\汽车用品\\车载导航\\蘑菇智行智能车机大众速迈腾POLO途观捷达新朗逸倒车导航一体机\\chezaidaohang_001_01.png',31,299,'g',23,'2019-04-18 20:59:50',1,52,1),(168,'佳能ts3180打印机家用小型一体机彩色喷墨复印件办公打字多功能三合一',179,'\\办公\\打印机\\佳能ts3180打印机家用小型一体机彩色喷墨复印件办公打字多功能三合一\\dayingji_001_01.png',59,199,'fsdg',58,'2019-04-18 20:59:51',1,53,1),(169,'佳能ir2204N复印机佳能IR2204N复印机打印佳能复印机无线WIFI功能',179,'\\办公\\复印机\\佳能ir2204N复印机佳能IR2204N复印机打印佳能复印机无线WIFI功能\\fuyingji_001_01.png',59,199,'gfds',89,'2019-04-18 20:59:52',1,54,1),(170,'班服定制同学会聚会衣服定制t恤短袖公司团体工作服企业t恤文化衫',179,'\\DIY\\定制T恤\\班服定制同学会聚会衣服定制t恤短袖公司团体工作服企业t恤文化衫\\dingzhitxue_001_01.png',26,199,'gs',65,'2019-04-18 20:59:53',1,55,1),(171,'POLO衫定制T恤印字logo翻领DIY团队广告文化衫工衣刺绣企业工作服',179,'\\DIY\\工作服\\POLO衫定制T恤印字logo翻领DIY团队广告文化衫工衣刺绣企业工作服\\DIY_001_01.jpg',48,199,'ngd',15,'2019-04-18 20:59:54',1,56,1),(172,'YAT亚特手电钻充电式锂电钻手枪钻家用多功能电动螺丝刀锂电池',179,'\\五金\\电动螺丝刀\\YAT亚特手电钻充电式锂电钻手枪钻家用多功能电动螺丝刀锂电池\\wujin_001_01.jpg',15,199,'afd',26,'2019-04-18 20:59:55',1,57,1),(173,'umi变压器220v转110v100V日本美国电器电饭煲纯铜家用电压转换器',179,'\\五金\\变压器\\umi变压器220v转110v100V日本美国电器电饭煲纯铜家用电压转换器\\wujin_003_01.jpg',59,199,'fbsf',59,'2019-04-18 20:59:56',1,58,1),(174,'槽王开槽机水电安装一次成型无尘无死角墙壁混凝土石材电动切割机',179,'\\五金\\切割机\\槽王开槽机水电安装一次成型无尘无死角墙壁混凝土石材电动切割机\\wujin_002_01.jpg',25,199,'gfdsr',15,'2019-04-18 20:59:57',1,59,1),(175,'琪虎保温杯大容量3000ml4升户外旅游车载5升便携超大号水壶4000',179,'\\百货\\保温杯\\琪虎保温杯大容量3000ml4升户外旅游车载5升便携超大号水壶4000\\baihuo_003_01.jpg',26,199,'fdsg',26,'2019-04-18 20:59:58',1,60,1),(176,'物生物情侣保温杯便携男女士创意不锈钢真空水杯茶杯学生儿童杯子',179,'\\百货\\保温杯\\物生物情侣保温杯便携男女士创意不锈钢真空水杯茶杯学生儿童杯子/baihuo_001_01.jpg',59,199,'gdg',59,'2019-04-18 20:59:59',1,60,1),(177,'希诺迷你保温杯女学生韩版清新文艺不锈钢水杯子创意可爱便携水杯',179,'\\百货\\保温杯\\希诺迷你保温杯女学生韩版清新文艺不锈钢水杯子创意可爱便携水杯\\baihuo_001_01.jpg',59,199,'gsdfht',48,'2019-04-18 21:00:01',1,60,1),(178,'雷利开槽机一次成型无尘水电安装工程全自动墙壁线槽切割机神器',179,'\\五金\\切割机\\雷利开槽机一次成型无尘水电安装工程全自动墙壁线槽切割机神器\\wujin_002_01.jpg',19,199,'gfds',59,'2019-04-18 21:00:02',1,59,2),(179,'无刷充电角磨机锂电池多功能抛光机切割机打磨机充电式角向磨光机',179,'\\五金\\切割机\\无刷充电角磨机锂电池多功能抛光机切割机打磨机充电式角向磨光机\\wujin_002_01.jpg',16,199,'vfdsht',79,'2019-04-18 21:00:03',1,59,2),(180,'启变三相干式隔离变压器380V变220转200351020kva30kw50千瓦',179,'\\五金\\变压器\\启变三相干式隔离变压器380V变220转200351020kva30kw50千瓦\\wujin_003_01.jpg',64,199,'grwy',26,'2019-04-18 21:00:04',1,58,2),(181,'舜红220v转110v变压器110v转为220v美国日本100v电压转换器2000w',179,'\\五金\\变压器\\舜红220v转110v变压器110v转为220v美国日本100v电压转换器2000w\\wujin_003_01.jpg',49,199,'gfh',18,'2019-04-18 21:00:05',1,58,2),(182,'博世电动螺丝刀迷你充电式起子机锂电螺丝批3.6V电动工具Bosch GO',179,'\\五金\\电动螺丝刀\\博世电动螺丝刀迷你充电式起子机锂电螺丝批3.6V电动工具Bosch GO\\wujin_001_01.jpg',26,199,'ytre',15,'2019-04-18 21:00:06',1,57,2),(183,'德国25V充电式锂电钻 冲击手枪电转家用手钻工具电动螺丝刀手电转',89,'\\五金\\电动螺丝刀\\德国25V充电式锂电钻 冲击手枪电转家用手钻工具电动螺丝刀手电转\\wujin_001_01.jpg',28,99,'gfey',79,'2019-04-18 21:00:07',1,57,2),(184,'琪虎保温杯大容量3000ml4升户外旅游车载5升便携超大号水壶4000',179,'\\百货\\保温杯\\琪虎保温杯大容量3000ml4升户外旅游车载5升便携超大号水壶4000\\baihuo_003_01.jpg',59,199,'sgdsfh',59,'2019-04-18 21:00:08',1,60,2),(185,'物生物情侣保温杯便携男女士创意不锈钢真空水杯茶杯学生儿童杯子',179,'\\百货\\保温杯\\物生物情侣保温杯便携男女士创意不锈钢真空水杯茶杯学生儿童杯子\\baihuo_001_01.jpg',49,199,'tfgdsr',59,'2019-04-18 21:00:09',1,60,1),(186,'希诺迷你保温杯女学生韩版清新文艺不锈钢水杯子创意可爱便携水杯',179,'\\百货\\保温杯\\希诺迷你保温杯女学生韩版清新文艺不锈钢水杯子创意可爱便携水杯\\baihuo_001_01.jpg',15,199,'gfdsh',26,'2019-04-18 21:00:10',1,60,1),(187,'纯手工紫砂壶全手工西施壶大红袍宜兴原矿朱泥茶壶名家国工万菊芬',89,'\\百货\\茶壶\\纯手工紫砂壶全手工西施壶大红袍宜兴原矿朱泥茶壶名家国工万菊芬\\baihuo_003_01.jpg',26,99,'sgfsn',59,'2019-04-18 21:00:11',1,61,1),(188,'九土玻璃茶壶带过滤胆泡茶杯耐热花茶杯茶隔杯茶漏杯个人功夫茶具',89,'\\百货\\茶壶\\九土玻璃茶壶带过滤胆泡茶杯耐热花茶杯茶隔杯茶漏杯个人功夫茶具\\baihuo_003_01.jpg',49,99,'bsgf',48,'2019-04-18 21:00:12',1,61,1),(189,'银壶 纯银999烧水壶日本功夫银茶具纯手工云南雪花银一张打煮茶壶',59,'\\百货\\茶壶\\银壶 纯银999烧水壶日本功夫银茶具纯手工云南雪花银一张打煮茶壶\\baihuo_003_01.jpg',59,69,'sdgfds',59,'2019-04-18 21:00:13',1,61,1),(190,'4.5寸碗可爱家用吃饭碗4人6只10个套装网红餐具ins风好看的碗日式',179,'\\百货\\碗\\4.5寸碗可爱家用吃饭碗4人6只10个套装网红餐具ins风好看的碗日式\\baihuo_001_01.jpg',49,199,'gfds',89,'2019-04-18 21:00:14',1,62,1),(191,'日本原装进口米饭碗陶瓷日式碗中式家用吃饭碗套装套碗餐具韩式',179,'\\百货\\碗\\日本原装进口米饭碗陶瓷日式碗中式家用吃饭碗套装套碗餐具韩式\\baihuo_002_01.jpg',15,199,'gfds',15,'2019-04-18 21:00:15',1,62,1),(192,'碗碟套装家用 景德镇珐琅彩高端骨瓷餐具中式酒店摆台私人会所',599,'\\百货\\碗\\碗碟套装家用 景德镇珐琅彩高端骨瓷餐具中式酒店摆台私人会所\\baihuo_003_01.jpg',49,699,'gfdsgf',26,'2019-04-18 21:00:17',1,62,1),(193,'木质珠宝首饰盒超大容量复古实木饰品耳环收纳盒家用公主欧式韩国',179,'\\餐厨\\收纳箱\\木质珠宝首饰盒超大容量复古实木饰品耳环收纳盒家用公主欧式韩国\\canchu_003_01.jpg',5,199,'sg',9,'2019-04-18 21:00:20',1,63,1),(194,'首饰收纳盒项链耳环耳钉耳饰架收拾亚克力大容量手饰品盒子ins风',179,'\\餐厨\\收纳箱\\首饰收纳盒项链耳环耳钉耳饰架收拾亚克力大容量手饰品盒子ins风\\canchu_003_01.jpg',49,199,'r',815,'2019-04-18 21:00:22',1,63,1),(195,'特大号塑料收纳箱加厚衣服储物箱有盖衣柜收纳盒玩具滑轮整理箱子',179,'\\餐厨\\收纳箱\\特大号塑料收纳箱加厚衣服储物箱有盖衣柜收纳盒玩具滑轮整理箱子\\canchu_002_01.jpg',49,199,'fsg',79,'2019-04-18 21:00:23',1,63,1),(196,'抽屉式收纳柜子塑料衣柜收纳盒衣服收纳箱多层加厚儿童储物柜鞋柜',179,'\\餐厨\\鞋柜\\抽屉式收纳柜子塑料衣柜收纳盒衣服收纳箱多层加厚儿童储物柜鞋柜\\canchu_002_01.jpg',16,199,'fdsgf',6,'2019-04-18 21:00:25',1,64,1),(197,'简易鞋柜双层鞋托分层鞋架衣柜鞋托架拖鞋整理架塑料鞋子收纳架',179,'\\餐厨\\鞋柜\\简易鞋柜双层鞋托分层鞋架衣柜鞋托架拖鞋整理架塑料鞋子收纳架\\canchu_001_01.jpg',151,199,'dsgfds',26,'2019-04-18 21:00:26',1,64,1),(198,'欧式塑料收纳箱抽屉式收纳柜子儿童衣柜宝宝储物柜婴儿整理柜鞋柜',179,'\\餐厨\\鞋柜\\欧式塑料收纳箱抽屉式收纳柜子儿童衣柜宝宝储物柜婴儿整理柜鞋柜\\canchu_003_01.jpg',56,179,'gfdsg',59,'2019-04-18 21:00:27',1,64,1),(199,'和年美家美式全实木置物架阳台柜子隔板书架客厅储物架玩具收纳架',159,'\\餐厨\\置物架\\和年美家美式全实木置物架阳台柜子隔板书架客厅储物架玩具收纳架\\canchu_002_01.jpg',156,199,'dsfg',15,'2019-04-18 21:00:28',1,65,1),(200,'三层可移动小手推车家居欧宜家置物架厨房储物架客厅拉斯克收纳架',159,'\\餐厨\\置物架\\三层可移动小手推车家居欧宜家置物架厨房储物架客厅拉斯克收纳架\\canchu_003_01.jpg',48,199,'fdsgfds',942,'2019-04-18 21:00:29',1,65,1),(201,'置物架落地多层卧室床头书架柜子架子家用整理架宿舍收纳神器',159,'\\餐厨\\置物架\\置物架落地多层卧室床头书架柜子架子家用整理架宿舍收纳神器\\canchu_002_01.jpg',156,199,'gds',69,'2019-04-18 21:00:30',1,65,1),(221,'邦迪创可贴 创口贴100片防水透气止血贴医用透气型正品 创可贴',69,'\\家庭保健\\创口贴\\邦迪创可贴 创口贴100片防水透气止血贴医用透气型正品 创可贴\\jiating_001_01.jpg',59,79,'gsd',59,'2019-04-18 21:00:31',1,66,1),(222,'海氏海诺防水透气医用创可贴少女可爱止血创口贴100片卡通包邮',89,'\\家庭保健\\创口贴\\海氏海诺防水透气医用创可贴少女可爱止血创口贴100片卡通包邮\\jiating_003_01.jpg',89,99,'hsg',59,'2019-04-18 21:00:32',1,66,1),(223,'海氏海诺 家庭大号医药箱医用急救包套装156件家用创伤消毒应急包',79,'\\家庭保健\\急救箱\\海氏海诺 家庭大号医药箱医用急救包套装156件家用创伤消毒应急包\\jiating_003_01.jpg',51,89,'re',89,'2019-04-18 21:00:33',1,67,1),(224,'威阳24罐磁疗真空拔罐拔汽罐保健箱装真空拔罐器拔火罐家用',79,'\\家庭保健\\急救箱\\威阳24罐磁疗真空拔罐拔汽罐保健箱装真空拔罐器拔火罐家用\\jiating_002_01.jpg',76,89,'dsgfds',59,'2019-04-18 21:00:34',1,67,1),(225,'海氏海诺 医用脱脂棉球 家用化妆婴儿一次性伤口消毒棉花球 100g',69,'\\家庭保健\\消毒用品\\海氏海诺 医用脱脂棉球 家用化妆婴儿一次性伤口消毒棉花球 100g\\jiating_003_01.jpg',76,89,'hfsg',26,'2019-04-18 21:00:35',1,68,1),(226,'食品级消毒液家用泡腾片杀菌喷雾水玩具除菌室内空气消毒剂免洗',69,'\\家庭保健\\消毒用品\\食品级消毒液家用泡腾片杀菌喷雾水玩具除菌室内空气消毒剂免洗\\jiating_003_01.jpg',75,89,'rsfgres',59,'2019-04-18 21:00:36',1,68,1),(227,'2018全套汽车维修视频教程正时汽修资料自学技术大全修理教学库',69,'\\学习\\汽车维修\\2018全套汽车维修视频教程正时汽修资料自学技术大全修理教学库\\xuexi_002_01.jpg',78,69,'gfdsgrwe',48,'2019-04-18 21:00:37',1,69,1),(228,'全套汽车美容保养技术视频教程洗车创业开店维修修复贴膜抛光教学',59,'\\学习\\汽车维修\\全套汽车美容保养技术视频教程洗车创业开店维修修复贴膜抛光教学\\xuexi_002_01.jpg',25,69,'fsdgfdsg',79,'2019-04-18 21:00:38',1,69,1),(229,'人教版新目标初中英语七八九年级上下册优质课堂实录视频课件教案',59,'\\学习\\中小学辅导\\人教版新目标初中英语七八九年级上下册优质课堂实录视频课件教案\\xuexi_001_01.jpg',45,69,'fdsgfdsg',78,'2019-04-18 21:00:39',1,70,1),(230,'猿辅导小学数学二年级儿童幼儿园数学教具加减法算数学具珠心算盘',59,'\\学习\\中小学辅导\\猿辅导小学数学二年级儿童幼儿园数学教具加减法算数学具珠心算盘\\xuexi_002_01.jpg',98,99,'fsgfds',56,'2019-04-18 21:00:40',1,70,1),(231,'联华ok积点卡百联OK卡联华超市购物卡5001000元商超礼卡上海通用',79,'\\卡卷\\超市卡\\联华ok积点卡百联OK卡联华超市购物卡5001000元商超礼卡上海通用\\chaoshika_002_01.jpg',59,98,'gadsgfs',59,'2019-04-18 21:00:41',1,71,1),(232,'斯玛特衫徳万通卡斯马特smart商超市消费卡2005001000面值',79,'\\卡卷\\超市卡\\斯玛特衫徳万通卡斯马特smart商超市消费卡2005001000面值\\chaoshika_003_01.jpg',59,99,'gfsg',89,'2019-04-18 21:00:42',1,71,1),(233,'ui设计app界面设计手机客户端网页设计后台界面 微信小程序设计',69,'\\卡卷\\网页设计\\ui设计app界面设计手机客户端网页设计后台界面 微信小程序设计\\wangye_002_01.png',59,79,'fsgf',15,'2019-04-18 21:00:43',1,72,1),(234,'大学生网页设计代做 个人学生网页制作成品素材HTML模板 ps切图',59,'\\卡卷\\网页设计\\大学生网页设计代做 个人学生网页制作成品素材HTML模板 ps切图\\wangye_004_01.jpg',26,89,'fgrh',76,'2019-04-18 21:00:44',1,72,1),(235,'包邮北京兄弟心诚搬家公司大小件搬家长短途搬家居家搬家小时工',59,'\\本地服务\\搬家\\包邮北京兄弟心诚搬家公司大小件搬家长短途搬家居家搬家小时工\\banjia_001_01.jpg',15,99,'fsdht',59,'2019-04-18 21:00:45',1,73,1),(236,'合肥本地搬家公司拉货长途短途货车面包车搬家居家搬家上门服务',89,'\\本地服务\\搬家\\合肥本地搬家公司拉货长途短途货车面包车搬家居家搬家上门服务\\banjia_002_01.jpg',56,99,'jdfdsgr',59,'2019-04-18 21:00:46',1,73,1),(237,'成都婚车租赁玛莎拉蒂保时捷林肯加长四川奥迪奔驰宝马婚车队出租',109,'\\本地服务\\婚车租赁\\成都婚车租赁玛莎拉蒂保时捷林肯加长四川奥迪奔驰宝马婚车队出租\\sheying_001_01.jpg',59,169,'shtrhfs',56,'2019-04-18 21:00:47',1,74,1),(238,'温州 婚车 租赁 宝马',109,'\\本地服务\\婚车租赁\\温州 婚车 租赁 宝马\\sheying_003_01.jpg',49,129,'gfhtejt',15,'2019-04-18 21:00:48',1,74,1),(239,'奢悦活颜净肌清洁面膜吸黑头去粉刺角质淡化毛孔补水保湿官网正品',119,'\\美妆\\面膜\\奢悦活颜净肌清洁面膜吸黑头去粉刺角质淡化毛孔补水保湿官网正品\\meizhuang_002_01.jpg',98,239,'sgrsf',89,'2019-04-18 21:00:49',1,75,1),(240,'香港直邮法尔曼细胞活化面膜 200ml院装 幸福面膜',209,'\\美妆\\面膜\\香港直邮法尔曼细胞活化面膜 200ml院装 幸福面膜\\meizhuang_001_01.jpg',76,259,'gfsd',76,'2019-04-18 21:00:50',1,75,1),(241,'D衣家IU DVF裹身裙印花连衣裙夏碎花长款V领修身显瘦气质中袖长裙',99,'74f31913-a77d-4c62-be85-48d64b3abdab.jpg',56,109,'一款漂亮的连衣裙',89,'2019-04-19 02:05:21',1,3,3),(242,'花栗鼠小姐 红色波点连衣裙春装2019新款韩版宽松衬衫方领上衣女',179,'16638cd7-5fab-46e6-8931-b78bd1850b47.jpg',45,199,'好看的',55,'2019-04-19 08:36:27',3,3,2),(243,'欧洲站小香风显瘦女装2019夏新款套装时尚气质蕾丝裙子t恤两件套',109,'70def056-e539-4711-8521-4a8c174e758b.jpg',-1,199,'hfdsg',1,'2019-04-19 08:42:41',3,3,2),(244,'欧洲站小香风显瘦女装2019夏新款套装时尚气质蕾丝裙子t恤两件套',179,'d219597d-2727-4f44-8401-4aeaca8b5ac2.jpg',0,199,'欧洲站小香风显瘦女装2019夏新款套装时尚气质蕾丝裙子t恤两件套',0,'2019-04-19 09:22:33',3,3,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','123456','男','周文乙','1044220129@qq.com','15070277250',3,'user_morentouxiang.jpg',1),(2,'zhangsan','111111','男','张三','1044220129@qq.com','15070277250',2,'user_morentouxiang.jpg',1),(3,'gongzhimeng','111111','男','龚智猛','2868583170@qq.com','19979405455',2,'user_morentouxiang.jpg',1),(4,'pengxin','123123','男','彭昕','1044220129@qq.com','19979405450',2,'user_morentouxiang.jpg',1),(5,'zhouwenyi','123123','男','周文乙','1044220129@qq.com','15070277250',2,'user_morentouxiang.jpg',1);
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

-- Dump completed on 2019-04-19 14:19:48
