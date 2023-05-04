-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: astore
-- ------------------------------------------------------
-- Server version	8.0.29

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (12,'Xbox','Juegos de Xbox','Xbox','https://static.vecteezy.com/system/resources/previews/018/930/272/original/xbox-logo-transparent-free-png.png'),(13,'Nintendo','Juegos de Nintendo','Nintendo','https://store.tictactoys.cl/wp-content/uploads/logo-nintendo.png'),(16,'PC ','Juegos de PC','PC','https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Windows_logo_-_2012.svg/768px-Windows_logo_-_2012.svg.png'),(18,'Play Station','Juegos de Play Station','Play-Station','https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Playstation_logo_colour.svg/800px-Playstation_logo_colour.svg.png');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codigos`
--

LOCK TABLES `codigos` WRITE;
/*!40000 ALTER TABLE `codigos` DISABLE KEYS */;
INSERT INTO `codigos` VALUES (1,86,40,'xddxdx'),(2,86,40,'xddxdx'),(3,86,40,'xddxdx'),(4,86,40,'xddxdx'),(5,87,36,'xddxdx'),(6,87,36,'xddxdx'),(7,87,36,'xddxdx'),(8,87,36,'xddxdx'),(9,87,37,'xddxdx'),(10,87,37,'xddxdx'),(11,87,37,'xddxdx'),(12,87,37,'xddxdx'),(13,87,37,'xddxdx'),(14,87,37,'xddxdx'),(15,87,37,'xddxdx'),(16,88,39,'G6XJ-UJZS-V2PR'),(17,88,36,'VM1E-6WTV-PVUC'),(18,88,36,'P2HI-EEZQ-X4H5'),(19,88,36,'YBNW-NJVR-6F57'),(20,88,37,'DKNX-1T3X-TLGF'),(21,88,39,'GOSY-TKZ7-2WCS'),(22,88,39,'2NPI-AYUM-QDAE'),(23,89,39,'78HL-V6O3-VD6K'),(24,89,39,'PGQ7-QIL7-YQLU'),(25,89,39,'DP31-KR25-HU2Y'),(26,89,39,'GKAJ-TFAP-1OT3'),(27,89,39,'EOBE-9NS2-GNAA'),(28,89,39,'ADCI-86V8-D4CQ'),(29,89,39,'8GZP-RNQ1-8IZM'),(30,89,39,'MK9M-03S4-HUOI'),(31,89,39,'JQ9R-02XX-MZTH');
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
INSERT INTO `order details` VALUES (85,38,10,12000.00),(86,40,4,4800.00),(87,36,4,3996.00),(87,37,7,8400.00),(88,36,3,2997.00),(88,37,1,1200.00),(88,39,3,2460.00),(89,39,9,7380.00);
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (85,4,12000.00,0.00,12000.00,'2023-04-29 20:15:59','Order Received'),(86,4,4800.00,0.00,4800.00,'2023-04-29 20:21:16','Order Received'),(87,4,12396.00,0.00,12396.00,'2023-04-29 20:22:27','Order Received'),(88,4,6657.00,0.00,6657.00,'2023-04-29 20:37:05','Order Received'),(89,4,7380.00,0.00,7380.00,'2023-05-04 12:03:16','Order Received');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (35,'Ori and the Will of the Wisps (PC)',16,1200.00,0,'Ori and the Will of the Wisps es la continuación del emblemático videojuego de plataformas y aventuras Ori and the Blind Forest, desarrollado por Moon Studios. Se trata de una secuela que sigue ofreciéndonos un estilo impecable a nivel visual y jugable de la mano de Microsoft Studios y con un lanzamiento para Xbox One y PC.',2020,'https://sm.ign.com/ign_es/game/o/ori-and-th/ori-and-the-will-of-the-wisps_1ch5.png','Ori-and-the-Will-of-the-Wisps-PC',0),(36,'Ori and the Blind Forest: Definitive Edition (PC)',16,999.00,3,'En Ori and the Blind Forest: Definitive Edition, versión mejorada de la aventura original para Xbox One y PC, encontraremos nuevas áreas, nuevas habilidades, secuencias inéditas de la historia y varios modos de dificultad. En esta versión ampliada, por ejemplo, podemos descubrir más del pasado de Naru en dos nuevos entornos y descubrir nuevos secretos en Nibel gracias a un nuevo sistema de teletransporte entre escenarios.',2016,'https://uvejuegos.com/img/caratulas/63240/Ori-and-the-Blind-Forest-Definitive-Edition-Switch-EU.jpg','Ori-and-the-Blind-Forest-Definitive-Edition-PC',1),(37,'Need for Speed Unbound (PC)',16,1200.00,2,'Corre hasta lo más alto, sin llevarte chascos. Supera a la policía y participa en las eliminatorias semanales del Grand, la carrera callejera definitiva. Llena tu garaje de coches personalizados y tuneados con precisión e inunda las calles con tu estilo.',2020,'https://upload.wikimedia.org/wikipedia/ru/5/50/Need_for_Speed_Unbound.jpeg','Need-for-Speed-Unbound-PC',1),(38,'Ghost of Tsushima (PS5)',18,1200.00,0,'Forja un nuevo camino y emplea tácticas de guerra poco convencionales para liberar Tsushima. Desafía a tus enemigos con tu katana, domina el arco para eliminar las amenazas lejanas, aprende tácticas de sigilo para emboscar a los enemigos y explora una nueva historia en la Isla Iki.',2020,'https://www.mishoppingdigital.com/wp-content/uploads/2022/01/Ghost-of-Tsushima-DIRECTORS-CUT.png','Ghost-of-Tsushima-PS5',0),(39,'Battlefield 1 (Xbox Series)',12,820.00,-2,'Battlefield 1 supone el retorno a las raíces de esta veterana serie de videojuegos de acción bélica. El conflicto se traslada a los campos de batalla de la Primera Guerra Mundial, en los que podemos pilotar una amplia variedad de vehículos terrestres, marinos y aéreos; aparte de usar también un vasto arsenal de armas de fuego.',2016,'https://www.mishoppingdigital.com/wp-content/uploads/2022/01/Battlefield-1-2.jpg','Battlefield-1-Xbox-Series',0),(40,'Hogwarts Legacy (PS5)',18,1200.00,6,'Hogwarts Legacy es un videojuego de rol y aventuras en tercera persona desarrollado por Warner Bros. Games y Avalanche para consolas y PC. El título nos traslada al universo de Harry Potter a través de una experiencia inmersiva de mundo abierto ambientada a finales del siglo XIX, invitándonos a explorar y descubrir bestias fantásticas, personalizar nuestro personaje y elaborar pociones, dominar el lanzamiento de hechizos y desentrañar qué misterios se ocultan en Hogwarts. ',2023,'https://www.mishoppingdigital.com/wp-content/uploads/2023/03/Hogwarts-Legacy.png','Hogwarts-Legacy-PS5',1),(41,'God of War Ragnarök (PS5)',18,1200.00,10,'Equipado con sus fieles armas de guerra, como el hacha Leviatán y las Espadas del Caos, Kratos deberá llevar al límite sus letales capacidades para proteger a su familia. Además, tanto él como Atreus podrán aprender nuevas habilidades que les permitirán personalizar el fluido y expresivo combate en este relato épico e implacable que garantiza sus responsables con God of War: Ragnarok.',2022,'https://www.mishoppingdigital.com/wp-content/uploads/2022/09/God-of-War-Ragnarok.png','God-of-War-Ragnarok-PS5',1),(42,'Dead Island 2 (PS4)',18,1200.00,50,'Una aventura cinemática cooperativa – Dead Island 2 es una experiencia de rol auténtica; ofrece numerosas misiones emocionantes, un elenco de personajes disparatado, un mundo abierto infestado de Zombis y una trepidante historia de serie B para que te sumerjas en su retorcido universo. La rejugabilidad está garantizada. Añade un modo cooperativo de infarto para hasta tres jugadores, lo que te garantiza una larga (y sangrienta) estancia en Los Ángeles.',2023,'https://www.mishoppingdigital.com/wp-content/uploads/2023/04/Dead-Island-2.png','Dead-Island-2-PS4',1),(43,'Assassin’s Creed Odyssey (PS5)',18,1200.00,10,'Sentenciado a muerte por tu propia familia, Assassin’s Creed: Odyssey te propone embarcarte en un viaje épico en el que dejarás de ser un mercenario proscrito para convertirte en un legendario héroe griego y descubrir la verdad sobre tu pasado, forjando tu camino a través de un mundo en guerra modelado por dioses y hombres, donde mares y montañas colisionan.',2018,'https://www.mishoppingdigital.com/wp-content/uploads/2022/01/Assassins-Creed-Odyssey.jpg','Assassins-Creed-Odyssey-PS5',1),(45,'Biomutant (Xbox One)',12,1100.00,10,'Biomutant es un título de rol y acción de mundo abierto, con especial énfasis en la exploración y el combate cuerpo a cuerpo. Llevándonos a un universo de ciencia ficción lejano, plagado de planetas selváticos y de climas extremos, en Biomutant encarnaremos a un animal capaz de mutar, añadir habilidades y viajar por distintos escenarios con los más variados vehículos, que irán desde mechas a globos y jetpacks.',2022,'https://www.mishoppingdigital.com/wp-content/uploads/2022/01/Biomutant-.png','Biomutant-Xbox-One',1),(46,'Call of Duty Black Ops Cold War (Xbox series)',12,1200.00,80,'Call of Duty: Black Ops Cold War es la entrega para el año de 2020 de la veterana y exitosa saga de acción bélica de Activision. La producción apuesta por la Guerra Fría como ambientación y posibles saltos temporales entre diferentes guerras de distintas épocas.',2020,'https://www.mishoppingdigital.com/wp-content/uploads/2022/01/Call-of-Duty-Black-Ops-Cold-War.jpg','Call-of-Duty-Black-Ops-Cold-War-Xbox-series',1),(47,'Crash Team Racing Nitro-Fueled (PS4)',18,1800.00,98,'El gran éxito de Crash Bandicoot N. Sane Trilogy ha animado a Activision y Beenox a traer también de vuelta a Crash Team Racing, el divertido videojuego de karts que protagonizaron los personajes más conocidos de esta saga en los tiempos de la primera PlayStation. En la remasterización CTR Nitro-Fueled no solo vamos a encontrarnos aquel mítico videojuego con gráficos muy mejorados, sino también algunos de los personajes y circuitos que en aquel entonces no pudieron añadirse.',2019,'https://www.mishoppingdigital.com/wp-content/uploads/2022/01/CTR-Nitro-Fueled.jpg','Crash-Team-Racing-Nitro-Fueled-PS4',1),(48,'Cyberpunk 2077 (PC)',16,2000.00,100,'Cyberpunk 2077 es el nuevo videojuego de rol en primera persona con estructura de mundo abierto de CD Projekt RED. Los padres de The Witcher nos presentan una aventura de corte futurista y ciberpunk en la que encarnaremos a un personaje diseñado a nuestra medida y en la que tendremos que sobrevivir en una peligrosa urbe plagada de corporaciones, ciborgs, bandas y las más variadas amenazas tecnológicas.',2020,'https://www.mishoppingdigital.com/wp-content/uploads/2022/01/Cyberpunk-2077.png','Cyberpunk-2077-PC',1),(49,'Elden Ring (Xbox Series)',12,2500.00,10,'Elden Ring es un misterioso videojuego en el que trabaja FromSoftware, padres de Dark Souls, y George R.R. Martin, autor de la saga de libros adaptada con éxito a televisión bajo el nombre de Juego de Tronos. Elden Ring es un juego de mundo abierto, que presumiblemente sigue a rajatabla los mandamientos de la serie creada por Hidetaka Miyazaki, y que está ambientado en la fantasía oscura occidental y que proponen una mirada más profunda del RPG en tercera persona.',2022,'https://www.mishoppingdigital.com/wp-content/uploads/2022/03/Elden-Ring.png','Elden-Ring-Xbox-Series',1),(50,'FAR CRY 6 (PC)',16,2150.00,100,'En Far Cry 6 los jugadores volverán a explorar un exuberante mundo abierto, repleto de vegetación, ciudades, playas, selvas y muchos más lugares que explorar más allá de Esperanza, la enorme capital de Yara. La variedad de escenarios será amplia, ya que este será el Far Cry más grande de toda la saga.',2021,'https://www.mishoppingdigital.com/wp-content/uploads/2022/01/Far-Cry-6-.png','FAR-CRY-6-PC',1),(51,'FIFA 22 (Xbox Series)',12,2150.00,100,'Videojuego de simulación de fútbol para PC y consolas. No se han compartido detalles sobre sus novedades, pero los jugadores pueden esperar un título con un nuevo salto jugable y técnico en PS5 y Xbox Series X|S cargado de contenidos como viene siendo habitual en las últimas entregas de la serie. FIFA 22 cuenta con casi la totalidad de licencias de los principales campeonatos y equipos del mundo, y eso incluye la UEFA Champions League en exclusiva tras la renovación de su acuerdo con la UEFA.',2021,'https://www.mishoppingdigital.com/wp-content/uploads/2022/01/FIFA-22.jpeg','FIFA-22-Xbox-Series',1),(52,'Mario Kart 8 Deluxe Código (Nintendo Switch)',13,3375.00,100,'Remasterización para Nintendo Switch de este exitoso y aclamado juego de Wii U. Además de ofrecer mejores gráficos, también contará con nuevos personajes, ajustes jugables y un renovado Modo Batalla. De esta forma, Mario Kart 8 Deluxe tendrá 48 circuitos (los 32 del original más los 16 de los DLC) y 40 personajes, cinco de ellos nuevos. Estos son Inkling chico e Inkling chica de Splatoon, el Rey Boo, Huesitos y Bowsy, así como nuevas piezas con las que configurar nuestros vehículos.',2014,'https://www.mishoppingdigital.com/wp-content/uploads/2022/01/Mario-Kart-8-Deluxe.jpg','Mario-Kart-8-Deluxe-Codigo-Nintendo-Switch',1),(53,'Grand Theft Auto V GTA (Xbox Series)',12,2500.00,10,'Tres protagonistas (Michael, Trevor y Franklin) se centran en la búsqueda del todopoderoso dinero en un reinventado Sur de California en la actualidad.',2013,'https://www.mishoppingdigital.com/wp-content/uploads/2022/01/gtav_350.jpg','Grand-Theft-Auto-V-GTA-Xbox-Series',1),(54,'The Last of Us Part II (PS5)',18,2500.00,10,'Secuela de The Last of Us, uno de los juegos más aclamados de la consola PS3, que apareció en 2015 en PS4 en versión remasterizada. Esta continuación ha sido anunciada en el evento PlayStation Experience de diciembre de 2016, generando grandísimas expectativas entre los jugadores.',2020,'https://www.mishoppingdigital.com/wp-content/uploads/2022/01/The-Last-of-Us-II.jpg','The-Last-of-Us-Part-II-PS5',1),(55,'Resident Evil 4 Remake (PS4)',18,2150.00,10,'En esta ocasión, Capcom ha optado por crear un remake que se mantiene fiel al original en algunas situaciones y escenas clásicas, pero añadiendo también otros momentos nuevos y refinando los que necesitaban algo más de tensión e incluso transformando algunos jefes que necesitaban un diseño mejorado. El resultado es un juego que se beneficia de estas modificaciones, aunque en el que también se pueden echar de menos algunos momentos y jefes míticos. Uno de los grandes añadidos ha sido el juego con el cuchillo, que no solo puede mejorarse y repararse, sino que nos sirve para la defensa en incontables ocasiones y permite acabar con algunos enemigos mediante el sigilo.',2023,'https://www.mishoppingdigital.com/wp-content/uploads/2023/03/Resident-Evil-4-Remake.png','Resident-Evil-4-Remake-PS4',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','0123456789','admin@astore.com','admin','$2a$10$mpJCYlSr762SwQVzdLwxR.KgRuWEHA2NzUanxxG/nxEStDRcRBbB6',1),(2,'Anh Pham','012 345 6787','anh.pham@astore.com','anhpham','$2a$10$TsD7IW0m1g/57C931nC7R.FjwXw9i0tAbJZk7u4Uk0gDoneR9yBim',0),(4,'Llera Leo','558888818','lleramail@mail.com','llera01','$2a$10$SWMOjlKVBlE35gj1u554PuJE0pmHA33RjAml8U7ZjFgMfOzvtD.0S',0),(12,'migueljaja','7890','ajimaj@mail.com','migueljaja','$2a$10$.p9t.OuEDdXFx/ZgIm0O3O9iH5YDMDf6CkM8gvu/ZSy.Za2aIaKN2',0),(13,'karla','5537829032','karlaxd@mail.com','karlaxd','$2a$10$PkVe.CN5312VKwwKShjUkuylixirZrtdlu3vSgf5pKg57MU2foz8O',0),(14,'job','5572636382','jobdavid107@gmail.com','job01','$2a$10$Jm/6oRH4cOMPP5S8lIcuEugs4aUQxoODKXASOCGRVha3jHEr2QDMe',0),(15,'gvbuhn','552638497','67test3@mail.com','fyguh','$2a$10$N1IMURzVt6fJvXr0krVUE.WTqSAXCCOGOTHocI/jmybCw6FgLFAxe',0),(16,'vgbh','55272829','678test3@mail.com','vygbuhnij','$2a$10$aT2gnME3D54IxRH7yVuxAue2.tPrXmFI9Vp7pWGbkS9Vi0iuTBq4O',0),(17,'gbhjn','5678','test3@mail.com','tyguh','$2a$10$Xn4QzJcs9TTz0a19DDIBvu1XYq09/Siy8rVkk1L/9ekUS.fsLMPES',0),(18,'gbuh','5678','6789test3@mail.com','vtyu','$2a$10$PmqPRcADvYDEKFcU243PTus8wKA0.kT4GO6Yvb.cD3AIsrKyJP8MW',0),(19,'kalramailtest','567','karla250464@gmail.com','karlamailtest','$2a$10$JJXC1vWI4WyYVl.m/CoIael1SRdCHwVeU2VpV5iUhSyK1k9yn7KUm',0),(20,'hxxjh736183+','6578','tvyg8test3@mail.com','hxxjh736183+','$2a$10$Xn4QzJcs9TTz0a19DDIBvu1XYq09/Siy8rVkk1L/9ekUS.fsLMPES',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (57,39,1),(60,37,4),(61,43,4),(62,40,19);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-04 12:48:00
