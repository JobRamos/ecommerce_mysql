CREATE DATABASE  IF NOT EXISTS `db_demo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_demo`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 110.238.80.161    Database: db_demo
-- ------------------------------------------------------
-- Server version	8.0.25-230100

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '07c3b08a-0080-11ee-af26-fa163ed6f1bb:1-432,
bb6cd722-21c1-11ee-af26-fa163ed6ee1e:1-66224,
e5964d66-da2d-11ed-9fce-fa163ed6f836:1-723';

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `CategoryID` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(250) NOT NULL,
  `Description` mediumtext,
  `CategorySlug` varchar(250) NOT NULL,
  `Image` longtext NOT NULL,
  PRIMARY KEY (`CategoryID`),
  KEY `CategoryName` (`CategoryName`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (12,'Audio','Audio','Audio','https://m.media-amazon.com/images/I/41wi3jsd+sS._AC_SX522_.jpg'),(13,'Wearables','Wearables','Wearables','https://http2.mlstatic.com/D_NQ_NP_2X_920879-MLA46301470340_062021-F.webp'),(16,'Celulares','Celulares','Celulares','https://http2.mlstatic.com/D_NQ_NP_2X_831150-MLA43651758854_102020-F.webp'),(18,'Videojuegos','Videojuegos','Videojuegos','https://http2.mlstatic.com/D_NQ_NP_2X_641295-MLA69573719686_052023-F.webp'),(20,'Cómputo','Cómputo','Computo','https://http2.mlstatic.com/D_NQ_NP_2X_850374-MLA69121656490_042023-F.webp');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codigos`
--

DROP TABLE IF EXISTS `codigos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codigos` (
  `CodigoID` int NOT NULL AUTO_INCREMENT,
  `orden` int DEFAULT NULL,
  `juego` int DEFAULT NULL,
  `codigo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CodigoID`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codigos`
--

LOCK TABLES `codigos` WRITE;
/*!40000 ALTER TABLE `codigos` DISABLE KEYS */;
INSERT INTO `codigos` VALUES (1,86,40,'xddxdx'),(2,86,40,'xddxdx'),(3,86,40,'xddxdx'),(4,86,40,'xddxdx'),(5,87,36,'xddxdx'),(6,87,36,'xddxdx'),(7,87,36,'xddxdx'),(8,87,36,'xddxdx'),(9,87,37,'xddxdx'),(10,87,37,'xddxdx'),(11,87,37,'xddxdx'),(12,87,37,'xddxdx'),(13,87,37,'xddxdx'),(14,87,37,'xddxdx'),(15,87,37,'xddxdx'),(16,88,39,'G6XJ-UJZS-V2PR'),(17,88,36,'VM1E-6WTV-PVUC'),(18,88,36,'P2HI-EEZQ-X4H5'),(19,88,36,'YBNW-NJVR-6F57'),(20,88,37,'DKNX-1T3X-TLGF'),(21,88,39,'GOSY-TKZ7-2WCS'),(22,88,39,'2NPI-AYUM-QDAE'),(23,89,39,'78HL-V6O3-VD6K'),(24,89,39,'PGQ7-QIL7-YQLU'),(25,89,39,'DP31-KR25-HU2Y'),(26,89,39,'GKAJ-TFAP-1OT3'),(27,89,39,'EOBE-9NS2-GNAA'),(28,89,39,'ADCI-86V8-D4CQ'),(29,89,39,'8GZP-RNQ1-8IZM'),(30,89,39,'MK9M-03S4-HUOI'),(31,89,39,'JQ9R-02XX-MZTH'),(32,90,40,'6IIR-BC9O-IW3I'),(33,91,41,'YSER-8J1E-BA36'),(34,92,37,'UF7C-Q1L9-QZDN'),(35,93,40,'60PO-4WVV-OROR'),(36,94,43,'6SG7-IH5A-XCJQ'),(37,95,40,'EDSL-BJOF-RRPR'),(38,96,40,'GXBL-K9AZ-F70Y'),(39,96,37,'5149-XR8F-PDE2'),(40,97,40,'78J6-8H3F-PVMU'),(41,98,41,'YQ8E-N91T-6DGQ'),(42,99,36,'B9RL-IEBA-MNWH'),(43,99,45,'8I58-LEPD-0QPN'),(44,100,37,'PYJ2-D002-9RX9'),(45,101,39,'L6IC-S01Q-GOZ6'),(46,102,42,'VACC-19VY-C778'),(47,103,35,'2GQ0-2Y68-60NP'),(48,103,35,'MIPG-2Q3R-B932'),(49,103,35,'W7WY-C10D-KDW9'),(50,104,36,'3E9A-NHCU-DYT9'),(51,104,37,'GPFN-EY9R-B8QI'),(52,105,36,'Q75M-KSTZ-QKY4'),(53,106,39,'DJ8V-AA7D-JDLT'),(54,107,43,'7WXP-SMGP-ZUKZ'),(55,108,37,'A8V5-DGM7-XD48'),(56,109,37,'8TJP-QBZM-Y70F'),(57,110,37,'6B9I-HO5Q-7I6N'),(58,111,35,'V5KO-H354-FIBH'),(59,112,37,'GLWX-JVKY-KF1S'),(60,113,38,'P0OD-4ZGJ-SP6D'),(61,114,43,'VRO7-CWKD-FSM4'),(62,114,47,'0X3D-U8KL-VTPF'),(63,114,57,'8LAO-TZG5-63FU'),(64,115,36,'YVBZ-HWID-PH0H'),(65,116,35,'TB04-KM2E-XTSB'),(66,116,36,'MUH0-ST90-P8OB'),(67,116,39,'KH50-MS4Q-5F1H'),(68,117,37,'G6DN-YGCX-LG5O'),(69,117,37,'WSPT-B685-QN0X'),(70,117,40,'UOMK-UNA3-9AYX'),(71,117,45,'FUJL-VW79-6EIQ'),(72,118,36,'XZ1S-WLWM-WNKY'),(73,118,37,'TEZG-BSSQ-URA8'),(74,120,37,'B4M3-L633-0TZ6'),(75,120,40,'32WH-FZC8-XEI3'),(76,120,41,'2BH3-GQAO-DTFF'),(77,120,41,'2X3X-H1WL-JMAO'),(78,120,41,'6FOT-LM0J-BTL3'),(79,121,39,'4Z3Q-CAK6-XJGR'),(80,121,39,'ML5A-1OUP-2J06'),(81,122,40,'MEMX-WANN-MPXG'),(82,123,36,'4K8D-XI8H-POD7'),(83,124,38,'4EDI-5Q8E-M46Q'),(84,124,36,'JCCR-HW14-V3K9'),(85,124,38,'7EH5-2W6S-Y4XV'),(86,124,38,'O643-LVA1-WNDZ'),(87,124,40,'FGG3-UA0X-ZI4R'),(88,125,42,'PC3I-K7MV-QGV7'),(89,126,42,'LU0L-GK6F-0AUJ'),(90,126,47,'NNTJ-OG3P-7W06'),(91,127,73,'EG0A-G40J-PSUC'),(92,128,67,'PGO7-JOHB-I9V9'),(93,129,66,'JCKX-KZFC-6MEN'),(94,129,70,'QXAA-9FNZ-PTHM'),(95,130,69,'KAZM-2II6-WDBR'),(96,131,70,'Q4W0-5MBJ-NB24'),(97,131,71,'BBCM-9NX5-1L4A'),(98,132,74,'H05N-58K1-O189');
/*!40000 ALTER TABLE `codigos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `MessageID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Subject` varchar(128) DEFAULT NULL,
  `Content` varchar(158) DEFAULT NULL,
  PRIMARY KEY (`MessageID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'hnj','jobdavid107@gmail.com','byuhnij','uhnjimk'),(2,'llera','vgjhbbkjnknlj@mail.com','uhnjimko,','hunjik'),(3,'llera','lleralj@mail.com','fvgbh','tfyguh'),(4,'Llera Leo','lleramail@mail.com','gvhjkl','ghjklzgvhghzghzgh1');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order details`
--

DROP TABLE IF EXISTS `order details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order details` (
  `OrderID` int NOT NULL,
  `ProductID` int NOT NULL,
  `Quantity` smallint NOT NULL DEFAULT '1',
  `Total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`OrderID`,`ProductID`),
  KEY `FK_Order_Details_Products` (`ProductID`),
  CONSTRAINT `FK_Order_Details_Orders` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE CASCADE,
  CONSTRAINT `FK_Order_Details_Products` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order details`
--

LOCK TABLES `order details` WRITE;
/*!40000 ALTER TABLE `order details` DISABLE KEYS */;
INSERT INTO `order details` VALUES (127,73,1,16279.00),(128,67,1,2499.00),(129,66,1,19999.00),(129,70,1,5199.00),(130,69,1,1414.00),(131,70,1,5199.00),(131,71,1,2299.00),(132,74,1,15999.00);
/*!40000 ALTER TABLE `order details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `SubTotal` decimal(10,2) DEFAULT NULL,
  `Discount` decimal(10,2) DEFAULT NULL,
  `Total` decimal(10,2) DEFAULT NULL,
  `OrderDate` datetime DEFAULT NULL,
  `Status` varchar(150) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `FK_Orders_Users` (`UserID`),
  CONSTRAINT `FK_Orders_Users` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (116,42,3019.00,0.00,3019.00,'2023-06-11 13:08:37','Order Received'),(117,42,4700.00,0.00,4700.00,'2023-06-11 13:26:44','Order Received'),(118,42,2199.00,0.00,2199.00,'2023-06-11 13:34:45','Order Received'),(120,42,6000.00,0.00,6000.00,'2023-06-11 13:47:24','Order Received'),(121,42,1640.00,0.00,1640.00,'2023-06-11 13:53:33','Order Received'),(122,42,1200.00,0.00,1200.00,'2023-06-11 13:54:25','Order Received'),(123,42,999.00,0.00,999.00,'2023-06-11 14:13:25','Order Received'),(124,42,5799.00,0.00,5799.00,'2023-06-11 14:14:53','Order Received'),(125,42,1200.00,0.00,1200.00,'2023-06-11 19:40:18','Order Received'),(126,42,3000.00,0.00,3000.00,'2023-06-11 19:42:52','Order Received'),(127,1,16279.00,0.00,16279.00,'2023-06-11 22:09:29','Order Received'),(128,1,2499.00,0.00,2499.00,'2023-06-11 22:11:17','Order Received'),(129,1,25198.00,0.00,25198.00,'2023-06-11 22:12:06','Order Received'),(130,42,1414.00,0.00,1414.00,'2023-06-19 18:16:54','Order Received'),(131,42,7498.00,0.00,7498.00,'2023-06-19 18:17:31','Order Received'),(132,42,15999.00,0.00,15999.00,'2023-06-19 18:25:19','Order Received');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(255) NOT NULL,
  `CategoryID` int DEFAULT NULL,
  `ProductPrice` decimal(10,2) DEFAULT '0.00',
  `UnitsInStock` smallint DEFAULT '0',
  `Description` longtext NOT NULL,
  `ManufactureYear` smallint NOT NULL,
  `Image` longtext NOT NULL,
  `ProductSlug` longtext NOT NULL,
  `Feature` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ProductID`),
  KEY `FK_Products_Categories` (`CategoryID`),
  KEY `ProductName` (`ProductName`),
  CONSTRAINT `FK_Products_Categories` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (66,'Laptop Gamer Msi Cyborg 15 Rtx 3050 I5 8gb 512ssd',20,19999.00,26,'La siguiente fase de la evolución está aquí: sumérgete en el mundo de los juegos al estilo cyberpunk, elige tu estilo de ciencia ficción y supera a tu oponente con un hardware revolucionario. Con un diseño exterior mecanizado y futurista, la Cyborg 15 A12U está diseñada para ser la laptop para juegos más innovadora y vanguardista.',2019,'https://http2.mlstatic.com/D_NQ_NP_2X_850374-MLA69121656490_042023-F.webp','Laptop-Gamer-Msi-Cyborg-15-Rtx-3050-I5-8gb-512ssd',1),(67,'Bocina JBL Charge 5 portátil con bluetooth waterproof black 110V/220V',12,2499.00,15,'JBL Charge 5 ofrece un sonido natural, con una gran claridad y precisión, que se dispersa de manera uniforme. Una bocina que asegura potencia y calidad por igual en la reproducción de contenidos multimedia.',2016,'https://http2.mlstatic.com/D_NQ_NP_2X_782339-MLA46510034257_062021-F.webp','Bocina-JBL-Charge-5-portatil-con-bluetooth-waterproof-black-110V220V',1),(69,'Audífonos in-ear inalámbricos Samsung Galaxy Buds2 SM-R177 x 1 unidades graphite',13,1414.00,36,'Samsung, empresa coreana de gran prestigio, se destaca por su presencia mundial en el mercado de electrónica. La compañía tiene como base fundamental ofrecer los mejores productos y servicios. Es por esto que sus gamas de audífonos presentan innovaciones tecnológicas que se notan al reproducir tu música preferida.',2022,'https://http2.mlstatic.com/D_NQ_NP_2X_744021-MLU69486077400_052023-F.webp','Audifonos-in-ear-inalambricos-Samsung-Galaxy-Buds2-SM-R177-x-1-unidades-graphite',1),(70,'Microsoft Xbox Series S 512GB Standard color blanco',18,5199.00,24,'Con tu consola Xbox Series tendrás entretenimiento asegurado todos los días. Su tecnología fue creada para poner nuevos retos tanto a jugadores principiantes como expertos.',2019,'https://http2.mlstatic.com/D_NQ_NP_2X_641295-MLA69573719686_052023-F.webp','Microsoft-Xbox-Series-S-512GB-Standard-color-blanco',1),(71,'Bocina Huawei Sound portátil con bluetooth y wifi black',12,2299.00,18,'Huawei Sound ofrece un sonido natural, con una gran claridad y precisión, que se dispersa de manera uniforme. Una bocina que asegura potencia y calidad por igual en la reproducción de contenidos multimedia.',216,'https://http2.mlstatic.com/D_NQ_NP_2X_966882-MLU69483138250_052023-F.webp','Bocina-Huawei-Sound-portatil-con-bluetooth-y-wifi-black',1),(72,'Samsung Galaxy Note20 Ultra 5G 128 GB negro místico 12 GB RAM',16,14599.00,23,'Fotografía profesional en tu bolsillo Descubre infinitas posibilidades para tus fotos con las 3 cámaras principales de tu equipo. Pon a prueba tu creatividad y juega con la iluminación, diferentes planos y efectos para obtener grandes resultados.',2021,'https://http2.mlstatic.com/D_NQ_NP_2X_831150-MLA43651758854_102020-F.webp','Samsung-Galaxy-Note20-Ultra-5G-128-GB-negro-mistico-12-GB-RAM',1),(73,'Apple iPhone 14 (128 GB) - Morado',16,16279.00,28,'El iPhone 14 viene con el sistema de dos cámaras más impresionante en un iPhone, para que tomes fotos espectaculares con mucha o poca luz. Y te da más tranquilidad gracias a una funcionalidad de seguridad que salva vidas.',2019,'https://http2.mlstatic.com/D_NQ_NP_2X_786356-MLM51559385272_092022-F.webp','Apple-iPhone-14-128-GB-Morado',1),(74,'Laptop Huawei MateBook D15 gris 15.6\", Intel Core i5 10210U 8GB de RAM 512GB SSD',20,15999.00,62,'La laptop Huawei MateBook D15 es una solución tanto para trabajar y estudiar como para entretenerte. Al ser portátil, el escritorio dejará de ser tu único espacio de uso para abrirte las puertas a otros ambientes ya sea en tu casa o en la oficina.',2017,'https://http2.mlstatic.com/D_NQ_NP_2X_974453-MLA50484281687_062022-F.webp','Laptop-Huawei-MateBook-D15-gris-156-Intel-Core-i5-10210U-8GB-de-RAM-512GB-SSD',1),(75,'Laptop Lenovo IdeaPad 14ITL05 platinum gray 14\", Intel Core i3 1115G4 8GB de RAM 512GB ',20,8699.00,83,'La laptop Lenovo IdeaPad 3 fue pensada para hacer tu vida más sencilla. Su diseño elegante e innovador y su comodidad para transportarla, la convertirá en tu PC favorita. Cualquier tarea que te propongas, ya sea en casa o en la oficina, la harás con facilidad gracias a su poderoso rendimiento.',2016,'https://http2.mlstatic.com/D_NQ_NP_2X_907439-MLA52573733450_112022-F.webp','Laptop-Lenovo-IdeaPad-14ITL05-platinum-gray-14-Intel-Core-i3-1115G4-8GB-de-RAM-512GB',1),(76,'Apple Watch SE (GPS, 40mm) - Caja de aluminio color gris espacial - Correa deportiva Negra',13,4699.00,72,'Poderosas funcionalidades para ayudarte a llevar una vida más conectada, activa, saludable y segura. El Apple Watch SE es mucho más que un reloj y está más a tu alcance.',2022,'https://http2.mlstatic.com/D_NQ_NP_2X_613296-MLA48329164607_112021-F.webp','Apple-Watch-SE-GPS-40mm-Caja-de-aluminio-color-gris-espacial-Correa-deportiva-Negra',1),(77,'Xiaomi Mi Smart Band 7 1.62\" caja negra, malla negra',13,549.00,82,'Con 10 años de trayectoria, Xiaomi se posiciona como uno de los líderes indiscutidos en el mercado de los smartwatches. Sus productos se destacan por la calidad, el diseño sencillo y muy buenas prestaciones. La Mi Band tiene todo lo necesario para acompañarte en tu rutina.',2018,'https://http2.mlstatic.com/D_NQ_NP_2X_974754-MLA54925550069_042023-F.webp','Xiaomi-Mi-Smart-Band-7-162-caja-negra-malla-negra',1),(79,'Laptop Huawei MateBook 13 space gray 13\", Intel Core i5 10210U 8GB de RAM 512GB ',20,12299.00,37,'La laptop Huawei MateBook 13 es una solución tanto para trabajar y estudiar como para entretenerte. Al ser portátil, el escritorio dejará de ser tu único espacio de uso para abrirte las puertas a otros ambientes ya sea en tu casa o en la oficina.',2022,'https://http2.mlstatic.com/D_NQ_NP_2X_601804-MLA45017811973_022021-F.webp','Laptop-Huawei-MateBook-13-space-gray-13-Intel-Core-i5-10210U-8GB-de-RAM-512GB',1),(80,'Apple AirPods (3ª generación) con caja de carga MagSafe',13,3999.00,47,'Presentamos los nuevos AirPods. Con audio espacial para disfrutar de un sonido envolvente(1), Ecualización Adaptativa que ajusta la música según la forma de tus oídos, mayor duración de la batería(2) y resistencia al agua y al sudor. Prepárate para una experiencia llena de magia.',2018,'https://http2.mlstatic.com/D_NQ_NP_2X_703128-MLA48697190741_122021-F.webp','Apple-AirPods-3a-generacion-con-caja-de-carga-MagSafe',1),(81,'Sony PlayStation 5 825GB Standard color blanco y negro',18,11099.00,48,'Con tu consola PlayStation 5 tendrás entretenimiento asegurado todos los días. Su tecnología fue creada para poner nuevos retos tanto a jugadores principiantes como expertos.',2019,'https://http2.mlstatic.com/D_NQ_NP_2X_841787-MLA44484414455_012021-F.webp','Sony-PlayStation-5-825GB-Standard-color-blanco-y-negro',1),(83,'Nintendo Switch OLED 64GB Standard ',18,6999.00,27,'Con tu consola Switch tendrás entretenimiento asegurado todos los días. Su tecnología fue creada para poner nuevos retos tanto a jugadores principiantes como expertos.',2018,'https://http2.mlstatic.com/D_NQ_NP_2X_969606-MLA47920420604_102021-F.webp','Nintendo-Switch-OLED-64GB-Standard',1),(84,'Laptop Lenovo V15-IGL iron gray 15.6\", Intel Celeron N4020',20,4799.00,38,'La laptop Lenovo V15 es una solución tanto para trabajar y estudiar como para entretenerte. Al ser portátil, el escritorio dejará de ser tu único espacio de uso para abrirte las puertas a otros ambientes ya sea en tu casa o en la oficina.',2018,'https://http2.mlstatic.com/D_NQ_NP_2X_729740-MLA53455434149_012023-F.webp','Laptop-Lenovo-V15-IGL-iron-gray-156-Intel-Celeron-N4020',1),(88,'Huawei Watch GT',13,6000.00,37,'Reloj Huawei',2018,'https://consumer.huawei.com/content/dam/huawei-cbg-site/common/mkt/plp/wearables/list/new-img/watch-4-series.jpg','Huawei-Watch-GT',1),(89,'Huawei P60 black',16,23000.00,28,'Huawei phone p60',2022,'https://shop-cdncname.huawei.com/mx/uomcdn/MXHW/pms/202304/gbom/6941487294572/800_800_1F29440135BCEAF707671B733C853BCDmp.png','Huawei-P60-black',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribers` (
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
INSERT INTO `subscribers` VALUES ('javier_xmd@hotmail.com'),('avgagh@mail.com');
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(50) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Username` varchar(28) DEFAULT NULL,
  `Password` varchar(158) DEFAULT NULL,
  `Admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`UserID`),
  KEY `Username` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','0123456789','admin@astore.com','admin','$2a$10$mpJCYlSr762SwQVzdLwxR.KgRuWEHA2NzUanxxG/nxEStDRcRBbB6',1),(28,'Leo Llera','5582337118','leollera04@gmail.com','llera1234','$2a$10$2YMwnV4XJv6w0jOvvjQVEuMxLeuhmnosE/HqIKBVlAwwAVxKJRSte',0),(42,'job ramos','5582773616','jobdavid107@gmail.com','jobdavid107','$2a$10$6vW3MMssMiOLWNIcAIkb0OhU8059Kpm4MIN5D3BcV6yfhAZCOkHMq',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `idwishlist` int NOT NULL AUTO_INCREMENT,
  `IDvideojuego` int DEFAULT NULL,
  `IDUsuario` int DEFAULT NULL,
  PRIMARY KEY (`idwishlist`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (57,39,1),(62,40,19),(72,37,26),(74,43,4),(75,41,4),(77,37,27),(78,35,27),(79,57,27),(80,37,38),(82,38,38),(83,39,38),(84,41,38),(85,36,42),(87,37,42),(88,42,42),(89,42,42);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-12 16:58:22
