-- MySQL dump 10.13  Distrib 8.0.36, for macos14 (x86_64)
--
-- Host: 127.0.0.1    Database: introdb75386
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `aerolineas`
--

DROP TABLE IF EXISTS `aerolineas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aerolineas` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `aerolinea` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `aerolinea` (`aerolinea`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aerolineas`
--

LOCK TABLES `aerolineas` WRITE;
/*!40000 ALTER TABLE `aerolineas` DISABLE KEYS */;
INSERT INTO `aerolineas` VALUES (1,'Aerol?neas Argentinas','www.aerolineas.com.ar','0810-222-86527',1),(2,'Lade','lade.faa.mil.ar','0810-810-5233',1),(3,'Flybondi','www.flybondi.com','351-284-3320',1),(4,'Jet Smart','www.jetsmart.com','11-2206-7799',1),(5,'Aerom?xico','www.aeromexico.com','0800-888-2276',1),(6,'Air Canada','www.aircanada.com','0800-345-1540',1),(7,'Air Europa','www.aireuropa.com','0810-122-4546',1),(8,'Air France','www.airfrance.com.ar','0800-666-0133',1),(9,'Amaszonas Uruguay','www.amaszonas.com','11-3985-8800',1),(10,'American Airlines','www.aa.com','0800-444-84253',1),(11,'Azul Linhas A?reas','www.voeazul.com.br','11-5984-5178',1),(12,'Avianca','www.avianca.com','0810-333-8222',1),(13,'Boliviana de Aviaci?n','www.boa.bo','11-5252-3409',1),(14,'British Airways','www.britishairways.com','0800-222-0075',1),(15,'Copa Airlines','www.copaair.com','0810-810-2672',1),(16,'Cubana','www.cubana.cu','11-4326-5291',1),(17,'Delta Airlines','www.delta.com','0800-666-0133',1),(18,'Ethiopian Airlines','www.ethiopianairlines.com','4326-0362',1),(19,'Gol','www.voegol.com','0810-266-3131',1),(20,'Iberia','www.iberia.com','0810-999-4237',1),(21,'KLM','www.klm.com','11-4317-4700',1),(22,'Latam','www.latamairlines.com/ar','0800-345-9410',1),(23,'Level','www.flylevel.com','11-5984-5995',1),(24,'Lufthansa','www.lufthansa.com','11-3991-5953',1),(25,'Paranair','www.paranair.com','11-5273-4081',1),(26,'Qatar','www.qatarairways.com','11-5273-1400',1),(27,'Sky Airline','www.skyairline.com','11-5480-5138',1),(28,'Turkish Airlines','www.turkishairlines.com','11-5984-2758',1),(29,'United Airlines','www.united.com','0810-777-8648',1);
/*!40000 ALTER TABLE `aerolineas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `idCategoria` smallint unsigned NOT NULL AUTO_INCREMENT,
  `catNombre` varchar(50) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  UNIQUE KEY `catNombre` (`catNombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (5,'Cámaras Mirrorless'),(6,'Iluminación inteligente'),(2,'Parlantes Bluetooth'),(3,'Robot de limpieza'),(1,'Smartphone'),(4,'Smat TV');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destinos`
--

DROP TABLE IF EXISTS `destinos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `destinos` (
  `idDestino` smallint unsigned NOT NULL AUTO_INCREMENT,
  `aeropuerto` varchar(50) NOT NULL,
  `precio` decimal(10,2) unsigned NOT NULL,
  `idRegion` smallint unsigned NOT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`idDestino`),
  KEY `idRegion` (`idRegion`),
  CONSTRAINT `destinos_ibfk_1` FOREIGN KEY (`idRegion`) REFERENCES `regiones` (`idRegion`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destinos`
--

LOCK TABLES `destinos` WRITE;
/*!40000 ALTER TABLE `destinos` DISABLE KEYS */;
INSERT INTO `destinos` VALUES (1,'Londres (Heathrow)',9711.00,5,1),(2,'Amsterdam (Schiphol)',6231.00,5,1),(3,'Miami (Wilcox Field)',6517.00,4,1),(4,'Tokio (Narita)',8704.00,7,1),(5,'Kuala Lumpur (KLIA)',8570.00,7,1),(6,'Bangkok (Suvarnabhumi)',8469.00,7,1),(7,'París (Charles de Gaulle)',7713.00,5,1),(8,'Cancún (Cancún)',6494.00,3,1),(9,'Milán (Malpensa)',6756.00,5,1);
/*!40000 ALTER TABLE `destinos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `lista_precios`
--

DROP TABLE IF EXISTS `lista_precios`;
/*!50001 DROP VIEW IF EXISTS `lista_precios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lista_precios` AS SELECT 
 1 AS `id`,
 1 AS `Producto`,
 1 AS `Contado`,
 1 AS `Lista`,
 1 AS `Marca`,
 1 AS `Categoría`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marcas` (
  `idMarca` smallint unsigned NOT NULL AUTO_INCREMENT,
  `mkNombre` varchar(50) NOT NULL,
  PRIMARY KEY (`idMarca`),
  UNIQUE KEY `mkNombre` (`mkNombre`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'Apple'),(10,'Blaupunkt'),(8,'Bose'),(4,'iRobot'),(3,'Marshall'),(7,'Nikon'),(9,'OnePlus'),(2,'Oppo'),(6,'Samsung'),(5,'Xiaomi');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `apellido` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `dni` int unsigned NOT NULL,
  `alta` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'García','Javier',25852410,'2008-12-12'),(2,'González','Mónica',36520147,'2005-09-30'),(3,'Martínez','Vanesa',35741952,'2006-06-21'),(4,'Álvarez','Fernando',32912457,'2007-11-02'),(5,'Page','Jimmy',18543219,'1944-01-09'),(6,'Plant','Robert',18543220,'1948-08-20'),(7,'Bonham','Bonzo',18543221,'1948-05-31'),(8,'Jones','John',18543222,'1946-01-03'),(9,'García','Juan',12345678,'2023-01-15'),(10,'López','María',23456789,'2023-02-20'),(11,'Martínez','Carlos',34567890,'2023-03-10'),(12,'Rodríguez','Ana',45678901,'2023-04-05'),(13,'Pérez','Luis',56789012,'2023-05-12'),(14,'Gómez','Sofía',67890123,'2023-06-18'),(15,'Fernández','Diego',78901234,'2023-07-22'),(16,'Díaz','Lucía',89012345,'2023-08-30'),(17,'Sánchez','Javier',90123456,'2023-09-25'),(18,'Romero','Elena',1234567,'2023-10-10');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precios`
--

DROP TABLE IF EXISTS `precios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `precios` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `exacto` decimal(10,2) unsigned NOT NULL,
  `aproximado` float unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precios`
--

LOCK TABLES `precios` WRITE;
/*!40000 ALTER TABLE `precios` DISABLE KEYS */;
INSERT INTO `precios` VALUES (1,7.70,7.7),(2,23.60,23.6),(3,50.00,50),(4,13.50,13.5),(5,10.10,10.1),(6,90.46,90.46),(7,40.20,40.2),(8,95.50,95.5);
/*!40000 ALTER TABLE `precios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` smallint unsigned NOT NULL AUTO_INCREMENT,
  `prdNombre` varchar(50) NOT NULL,
  `prdPrecio` decimal(10,2) unsigned NOT NULL,
  `idMarca` smallint unsigned NOT NULL,
  `idCategoria` smallint unsigned NOT NULL,
  `prdDescripcion` varchar(1000) NOT NULL,
  `prdImagen` varchar(40) NOT NULL,
  `prdActivo` tinyint(1) NOT NULL DEFAULT (1),
  PRIMARY KEY (`idProducto`),
  UNIQUE KEY `prdNombre` (`prdNombre`),
  KEY `idMarca` (`idMarca`),
  KEY `idCategoria` (`idCategoria`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `marcas` (`idMarca`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Oppo A78 Dual-SIM 128GB',200.00,2,1,'Smartphone Android con pantalla HD+ de 6.56 pulgadas. 8GB de RAM y 128GB de almacenamiento interno. Cámara trasera dual de 50MP. Cámara selfie es de 8MP. Batería de 5000 mAh con soporte para carga rápida de 33W.','Oppo-A78.png',1),(2,'iPhone 15 Pro',1000.00,1,1,'Apple iPhone 15 Pro con chasis fabricado en titanio y puerto USB-C. Pantalla OLED LTPO de 6.1 pulgadas y triple cámara posteriorde 48MP. Cámara frontal de 12MP con sensores para Face ID. Batería de carga rápida de 15W.','iPhone-15-pro.png',1),(3,'HomePod (2nd gen)',250.00,1,2,'El HomePod es un altavoz de alta fidelidad que combina sonido inmersivo, asistente personal y control de hogar inteligente. Conectividad Bluetooth y Wifi via Apple Music','homepod-2.png',1),(4,'Marshall Acton III',300.00,3,2,'El altavoz bluetooth Acton III Cuenta con Dynamic Loudness, que ajusta el equilibrio tonal del sonido para garantizar que su música suene brillante en todos los volúmenes. 30 Watts de potencia','marshall-acton-iii.png',1),(5,'Aspiradora Robot iRobot Roomba j7+',900.00,4,3,'Robot de limpieza Roomba J7+ con sistema de limpieza superior de tres fases y dos rodillos de silicona. Tecnología de trazado de mapas inteligente Imprint™ que aprende, crea mapas y se adapta a cada habitación.','roomba-j7.png',1),(6,'Xiaomi TV Q2',560.00,5,4,'Smart TV con panel QLED Quantum Dot Display de 55 pulgadas y resolución 4K UHD. Sonido Dolby VisionTM IQ y Dolby Atmos. Sistema operativo Google TV. 3 puertos HDMI 2.0, un puerto HDMI 2.1 eARC a 120 Hz, 2 USB 2.0, Wi-Fi 802.11, Bluetooth 5.0 y entrada de audio óptica','xiaomi-q2.jpg',1),(7,'Samsung TV Crystal UHD 2023',650.00,6,4,'Smart TV con panel LED de 65 pulgadas con resolución 4K, tasa de 50 Hz y retroiluminación LED. TizenOS integra altavoces de 20 W compatibles con Dolby Atmos. 3 puertos HDMI, 2 USB y salida óptica de audio, WiFi y Bluetooth.','samsung-crystal-65.png',1),(8,'Samsung Galaxy S23 Ultra',1200.00,6,1,'Smartphone de alta gama con pantalla AMOLED de 6.8 pulgadas, Snapdragon 8 Gen 2, S-Pen integrado.','Samsung-S23-Ultra.png',1),(9,'Xiaomi Redmi Note 12',250.00,5,1,'Smartphone de gama media con pantalla AMOLED de 6.67 pulgadas, procesador Snapdragon 695, batería de 5000mAh.','Xiaomi-Redmi-Note-12.png',1),(10,'Marshall Emberton II',180.00,3,2,'Parlante Bluetooth portátil con sonido envolvente de 360 grados, batería de hasta 30 horas de duración.','Marshall-Emberton-II.png',1),(11,'Bose SoundLink Flex',160.00,8,2,'Parlante Bluetooth resistente al agua con sonido potente y nítido, ideal para exteriores.','Bose-SoundLink-Flex.png',1),(12,'iRobot Roomba j7+',750.00,4,3,'Robot aspirador con detección de obstáculos, autovaciado y mapeo inteligente.','Roomba-j7.png',1),(13,'LG OLED C3 55\"',1300.00,6,4,'Smart TV OLED de 55 pulgadas con procesador α9 Gen6 AI, soporte para Dolby Vision y HDMI 2.1.','LG-OLED-C3-55.png',1),(14,'Sony Alpha A7 IV',2500.00,7,5,'Cámara mirrorless de fotograma completo con sensor de 33MP, grabación 4K y enfoque automático avanzado.','Sony-A7-IV.png',1),(15,'Philips Hue Starter Kit',200.00,6,6,'Kit de iluminación inteligente con 3 bombillas LED RGB y hub de conexión para control remoto.','Philips-Hue-Kit.png',1),(16,'OnePlus 11 5G',700.00,9,1,'Smartphone con Snapdragon 8 Gen 2, pantalla AMOLED de 6.7 pulgadas y carga rápida de 100W.','OnePlus-11-5G.png',1),(17,'Blaupunkt Retro Radio',90.00,10,2,'Radio Bluetooth con diseño retro, sintonizador FM y batería de larga duración.','Blaupunkt-Retro-Radio.png',1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regiones`
--

DROP TABLE IF EXISTS `regiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regiones` (
  `idRegion` smallint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`idRegion`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regiones`
--

LOCK TABLES `regiones` WRITE;
/*!40000 ALTER TABLE `regiones` DISABLE KEYS */;
INSERT INTO `regiones` VALUES (2,'América Central'),(4,'América del Norte'),(1,'América del Sur'),(7,'Asia'),(3,'Caribe y México'),(6,'Europa del Este'),(5,'Europa Occidental'),(8,'Oceanía');
/*!40000 ALTER TABLE `regiones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `lista_precios`
--

/*!50001 DROP VIEW IF EXISTS `lista_precios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lista_precios` AS select `p`.`idProducto` AS `id`,`p`.`prdNombre` AS `Producto`,`p`.`prdPrecio` AS `Contado`,(`p`.`prdPrecio` * 1.05) AS `Lista`,`m`.`mkNombre` AS `Marca`,`c`.`catNombre` AS `Categoría` from ((`productos` `p` join `marcas` `m` on((`p`.`idMarca` = `m`.`idMarca`))) join `categorias` `c` on((`p`.`idCategoria` = `c`.`idCategoria`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-22 15:18:36
