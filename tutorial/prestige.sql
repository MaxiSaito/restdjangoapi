-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: localhost    Database: prestige
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `dni` int NOT NULL,
  `pass` varchar(40) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `edad` int NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (39308507,'password','Maximiliano','Saito',28,'saito@gmail.com');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `dni` int NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `edad` int NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (44141397,'Sopoline','Cash',30,'posuere.enim@hotmail.net'),(44170354,'Courtney','Bishop',19,'pretium.et@icloud.com'),(44280215,'Hannah','Romero',32,'quisque@protonmail.edu'),(44336499,'Rajah','Weiss',30,'viverra.donec@google.edu'),(44340289,'Omar','Farrell',24,'odio.nam@yahoo.com'),(44556140,'Ian','Barry',34,'quisque.libero@protonmail.ca'),(44812617,'Martin','Berg',20,'etiam.ligula@icloud.couk'),(45383257,'Tanek','Cohen',35,'ante.dictum@google.ca'),(45401047,'Barry','Mendez',22,'nec.ante@outlook.couk'),(45484246,'Deirdre','Klein',23,'scelerisque.sed.sapien@protonmail.ca'),(45683122,'Uma','Rich',38,'cras@protonmail.ca'),(45922016,'Candice','Suarez',31,'quis.pede.praesent@protonmail.edu'),(45954677,'Priscilla','Britt',25,'facilisis.suspendisse@yahoo.edu'),(45963229,'Judah','Harrington',24,'eu@yahoo.couk'),(45964273,'Tate','Haney',36,'urna.justo.faucibus@protonmail.edu'),(46393329,'Leandra','Cochran',37,'conubia.nostra@protonmail.com'),(46988967,'Amber','Kirby',22,'orci.adipiscing@icloud.com'),(47036231,'Camden','Rosales',33,'pellentesque.a.facilisis@hotmail.edu'),(47404346,'Marvin','Walker',35,'ultrices.posuere@google.ca'),(47511214,'Tamekah','Hewitt',21,'leo.elementum@outlook.edu'),(47553111,'George','Roach',37,'sagittis.semper.nam@protonmail.couk'),(47728909,'Myra','Clemons',28,'in@outlook.net'),(47954214,'Aline','Burgess',24,'massa.mauris@google.couk'),(48120878,'Melanie','Washington',25,'sem@aol.org'),(48178908,'Wayne','Hewitt',34,'mattis.semper.dui@aol.couk'),(48599046,'Malik','Wynn',38,'in.ornare@google.couk'),(48775650,'Daria','Benjamin',28,'est.congue.a@yahoo.ca'),(48884969,'Grace','Thompson',39,'cursus.et@aol.edu'),(48976262,'Ciara','Dominguez',24,'suspendisse.dui.fusce@aol.com'),(49689642,'Rogan','Cummings',38,'sed.pharetra.felis@icloud.com');
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencia_alumnos`
--

DROP TABLE IF EXISTS `asistencia_alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencia_alumnos` (
  `dni_alumno` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  KEY `dni_alumno` (`dni_alumno`),
  CONSTRAINT `asistencia_alumnos_ibfk_1` FOREIGN KEY (`dni_alumno`) REFERENCES `alumnos` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia_alumnos`
--

LOCK TABLES `asistencia_alumnos` WRITE;
/*!40000 ALTER TABLE `asistencia_alumnos` DISABLE KEYS */;
INSERT INTO `asistencia_alumnos` VALUES (45683122,'2023-11-24'),(45683122,'2023-12-07'),(44336499,'2024-04-07'),(45383257,'2023-07-25'),(47954214,'2023-06-16'),(44812617,'2024-01-30'),(48976262,'2024-03-01'),(48178908,'2023-10-07'),(45954677,'2023-08-04'),(45683122,'2023-11-10'),(44556140,'2023-12-09'),(44336499,'2024-02-07'),(45484246,'2024-03-30'),(45922016,'2023-08-18'),(44141397,'2023-09-22'),(47404346,'2023-11-29'),(44336499,'2024-02-28'),(44336499,'2023-06-25'),(46393329,'2023-07-24'),(47404346,'2023-11-10'),(47954214,'2023-07-21'),(44340289,'2023-12-01'),(47511214,'2024-05-08'),(48120878,'2023-08-01'),(47728909,'2023-05-24'),(46393329,'2024-04-11'),(44141397,'2023-11-12'),(44340289,'2023-12-23'),(45954677,'2023-06-09'),(46988967,'2023-09-21'),(46393329,'2024-03-13'),(44340289,'2023-10-09'),(47404346,'2024-05-08'),(44556140,'2024-05-15'),(44336499,'2023-11-11'),(44141397,'2024-04-29'),(48599046,'2024-02-19'),(47404346,'2023-09-10'),(48976262,'2024-04-04'),(46988967,'2023-11-24'),(48120878,'2024-02-11'),(47036231,'2023-11-17'),(47036231,'2023-10-11'),(49689642,'2023-09-08'),(47036231,'2024-02-24'),(44170354,'2023-07-07'),(47553111,'2023-06-27'),(46393329,'2023-10-09'),(48599046,'2023-10-08'),(44812617,'2023-07-02');
/*!40000 ALTER TABLE `asistencia_alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asistencia_profesores`
--

DROP TABLE IF EXISTS `asistencia_profesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asistencia_profesores` (
  `dni_profesor` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  KEY `dni_profesor` (`dni_profesor`),
  CONSTRAINT `asistencia_profesores_ibfk_1` FOREIGN KEY (`dni_profesor`) REFERENCES `profesores` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asistencia_profesores`
--

LOCK TABLES `asistencia_profesores` WRITE;
/*!40000 ALTER TABLE `asistencia_profesores` DISABLE KEYS */;
INSERT INTO `asistencia_profesores` VALUES (48521414,'2023-10-22'),(48983932,'2023-09-05'),(48673742,'2024-04-28'),(48673742,'2023-07-20'),(48983932,'2023-10-11'),(48673742,'2024-02-04'),(48771684,'2023-12-01'),(48673742,'2023-07-10'),(48641015,'2023-07-29'),(48521414,'2023-07-04'),(48641015,'2023-08-05'),(48521414,'2024-01-04'),(48771684,'2024-04-09'),(48641015,'2023-05-27'),(48673742,'2023-11-12'),(48521414,'2024-03-31'),(48983932,'2024-01-26'),(48521414,'2023-10-12'),(48983932,'2024-01-01'),(48641015,'2024-05-07');
/*!40000 ALTER TABLE `asistencia_profesores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuotas`
--

DROP TABLE IF EXISTS `cuotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuotas` (
  `monto` float NOT NULL,
  `dni_alumno` int NOT NULL,
  `mes` enum('Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre') NOT NULL,
  `ano` int NOT NULL,
  `estado` enum('Pagado','Debe') NOT NULL,
  PRIMARY KEY (`mes`,`ano`,`dni_alumno`),
  KEY `dni_alumno` (`dni_alumno`),
  CONSTRAINT `cuotas_ibfk_1` FOREIGN KEY (`dni_alumno`) REFERENCES `alumnos` (`dni`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuotas`
--

LOCK TABLES `cuotas` WRITE;
/*!40000 ALTER TABLE `cuotas` DISABLE KEYS */;
INSERT INTO `cuotas` VALUES (4739.22,48976262,'Enero',2020,'Pagado'),(2450.8,47036231,'Enero',2023,'Pagado'),(4676.41,47404346,'Enero',2023,'Debe'),(5182.86,47728909,'Febrero',2022,'Debe'),(4971.85,49689642,'Febrero',2024,'Pagado'),(2834.39,44336499,'Marzo',2021,'Debe'),(3753.89,47954214,'Marzo',2024,'Pagado'),(4288.4,48120878,'Abril',2020,'Pagado'),(2670.65,45484246,'Abril',2022,'Debe'),(3777.65,46393329,'Abril',2022,'Debe'),(5216.36,44556140,'Abril',2023,'Pagado'),(5915.29,44340289,'Mayo',2020,'Pagado'),(3452.41,44170354,'Mayo',2021,'Debe'),(2868.04,48599046,'Mayo',2023,'Pagado'),(3840.62,45963229,'Junio',2020,'Debe'),(4908.11,45383257,'Junio',2023,'Debe'),(4430.59,48884969,'Julio',2021,'Pagado'),(3856.88,45683122,'Julio',2022,'Pagado'),(4128.47,45964273,'Julio',2022,'Pagado'),(4657.08,45401047,'Julio',2024,'Debe'),(3865.97,45922016,'Agosto',2022,'Debe'),(5858.8,45954677,'Septiembre',2020,'Pagado'),(2822.7,44812617,'Septiembre',2021,'Debe'),(3916.92,46988967,'Septiembre',2022,'Debe'),(5148.97,48775650,'Octubre',2024,'Pagado'),(3475.95,47553111,'Noviembre',2020,'Debe'),(4284.7,47511214,'Noviembre',2021,'Pagado'),(3521.57,48178908,'Noviembre',2021,'Pagado'),(2899.1,44280215,'Noviembre',2022,'Debe'),(5098.72,44141397,'Diciembre',2024,'Pagado');
/*!40000 ALTER TABLE `cuotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientos`
--

DROP TABLE IF EXISTS `movimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientos` (
  `concepto` enum('Turno','Producto','Alquiler Oficina','Otros') DEFAULT NULL,
  `tipoPago` enum('Efectivo','Debito','Credito','Transferencia','Otros') DEFAULT NULL,
  `fecha` date NOT NULL,
  `num_movimiento` int NOT NULL AUTO_INCREMENT,
  `monto` float NOT NULL,
  PRIMARY KEY (`num_movimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientos`
--

LOCK TABLES `movimientos` WRITE;
/*!40000 ALTER TABLE `movimientos` DISABLE KEYS */;
INSERT INTO `movimientos` VALUES ('Turno','Transferencia','2023-06-12',1,2004.58),('Producto','Transferencia','2023-10-24',2,3361.57),('Producto','Credito','2024-03-02',3,2690.35),('Turno','Otros','2023-07-21',4,4964.52),('Alquiler Oficina','Debito','2024-01-29',5,25000),('Otros','Otros','2023-06-12',6,3410.43),('Turno','Efectivo','2023-11-01',7,4290.73),('Turno','Credito','2024-02-04',8,3426.42),('Producto','Debito','2023-09-27',9,2957.01),('Producto','Debito','2023-11-23',10,1193.31),('Turno','Credito','2024-05-13',11,1036.52),('Producto','Otros','2023-07-27',12,4755.72),('Turno','Debito','2023-11-09',13,1404.62),('Producto','Otros','2024-03-13',14,4794.84),('Producto','Credito','2023-12-17',15,4764.81),('Producto','Debito','2024-02-08',16,2401.26),('Turno','Efectivo','2023-10-29',17,3393.79),('Turno','Transferencia','2024-04-05',18,2649.53),('Turno','Otros','2023-10-09',19,1362.76),('Producto','Otros','2023-09-18',20,2659.77),('Turno','Debito','2023-10-21',21,2919.81),('Turno','Transferencia','2024-04-23',22,4611.58),('Turno','Efectivo','2023-10-31',23,2699.74),('Producto','Credito','2023-07-25',24,4752.5),('Turno','Otros','2024-05-04',25,4897.97),('Producto','Efectivo','2023-06-05',26,3150.03),('Turno','Credito','2024-04-09',27,4926.67),('Producto','Debito','2023-07-04',28,2261.99),('Turno','Efectivo','2024-04-22',29,4306.29),('Turno','Transferencia','2024-04-15',30,3627.38),('Producto','Debito','2024-03-08',31,1051.74),('Producto','Debito','2024-01-11',32,3834.74),('Turno','Efectivo','2023-07-15',33,3668.84),('Turno','Efectivo','2023-12-16',34,2574.02),('Turno','Credito','2024-01-13',35,2145.79),('Otros','Transferencia','2023-11-30',36,1883.79),('Turno','Otros','2024-01-02',37,4950.24),('Turno','Credito','2024-02-20',38,4690.5),('Turno','Credito','2023-11-23',39,3047),('Producto','Otros','2024-05-09',40,3934.1);
/*!40000 ALTER TABLE `movimientos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesores`
--

DROP TABLE IF EXISTS `profesores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesores` (
  `dni` int NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `edad` int NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores`
--

LOCK TABLES `profesores` WRITE;
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;
INSERT INTO `profesores` VALUES (48521414,'Tara','Daniel',27,'at.egestas.a@outlook.com'),(48641015,'Chaney','Fernanda',20,'rutrum.lorem.ac@aol.couk'),(48673742,'Emmanuel','Alonsos',23,'pede.malesuada@icloud.ca'),(48771684,'Tanya','Jara',19,'lectus.convallis.est@hotmail.org'),(48983932,'Kenyon','Camila',22,'risus.duis@hotmail.org');
/*!40000 ALTER TABLE `profesores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salas`
--

DROP TABLE IF EXISTS `salas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salas` (
  `numero` int NOT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salas`
--

LOCK TABLES `salas` WRITE;
/*!40000 ALTER TABLE `salas` DISABLE KEYS */;
INSERT INTO `salas` VALUES (1),(2),(3);
/*!40000 ALTER TABLE `salas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_turnos`
--

DROP TABLE IF EXISTS `tipos_turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_turnos` (
  `tipo` enum('Pilates','Terapéutico','Personalizado','Cama Terapéutica') NOT NULL,
  `precio` float DEFAULT NULL,
  PRIMARY KEY (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_turnos`
--

LOCK TABLES `tipos_turnos` WRITE;
/*!40000 ALTER TABLE `tipos_turnos` DISABLE KEYS */;
INSERT INTO `tipos_turnos` VALUES ('Pilates',2000),('Terapéutico',1500),('Personalizado',2500),('Cama Terapéutica',1999);
/*!40000 ALTER TABLE `tipos_turnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turnos`
--

DROP TABLE IF EXISTS `turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turnos` (
  `dia` date NOT NULL,
  `hora` time NOT NULL,
  `tipo` enum('Pilates','Terapéutico','Personalizado','Cama Terapéutica') DEFAULT NULL,
  `dni_alumno` int DEFAULT NULL,
  `dni_profesor` int DEFAULT NULL,
  `num_sala` int DEFAULT NULL,
  PRIMARY KEY (`dia`,`hora`),
  KEY `dni_alumno` (`dni_alumno`),
  KEY `dni_profesor` (`dni_profesor`),
  KEY `num_sala` (`num_sala`),
  KEY `tipo` (`tipo`),
  CONSTRAINT `turnos_ibfk_1` FOREIGN KEY (`dni_alumno`) REFERENCES `alumnos` (`dni`),
  CONSTRAINT `turnos_ibfk_2` FOREIGN KEY (`dni_profesor`) REFERENCES `profesores` (`dni`),
  CONSTRAINT `turnos_ibfk_3` FOREIGN KEY (`num_sala`) REFERENCES `salas` (`numero`),
  CONSTRAINT `turnos_ibfk_4` FOREIGN KEY (`tipo`) REFERENCES `tipos_turnos` (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnos`
--

LOCK TABLES `turnos` WRITE;
/*!40000 ALTER TABLE `turnos` DISABLE KEYS */;
INSERT INTO `turnos` VALUES ('2024-01-17','02:58:32','Cama Terapéutica',49689642,48983932,2),('2024-01-28','17:43:43','Pilates',47553111,48771684,1),('2024-01-30','14:16:25','Pilates',44812617,48521414,1),('2024-01-31','14:55:10','Pilates',44336499,48641015,1),('2024-02-07','19:01:57','Personalizado',44812617,48983932,2),('2024-02-08','09:00:38','Terapéutico',48178908,48521414,2),('2024-02-18','12:52:11','Cama Terapéutica',45401047,48771684,2),('2024-02-20','11:36:41','Terapéutico',46393329,48771684,2),('2024-02-28','06:34:29','Pilates',47404346,48673742,1),('2024-03-05','22:21:52','Pilates',45683122,48521414,1),('2024-03-09','04:21:33','Terapéutico',44280215,48983932,2),('2024-03-09','05:47:36','Terapéutico',47036231,48983932,2),('2024-03-13','23:19:54','Personalizado',44170354,48673742,2),('2024-03-15','21:30:47','Personalizado',47511214,48673742,2),('2024-03-16','12:15:58','Terapéutico',46988967,48641015,2),('2024-03-19','12:26:51','Pilates',44336499,48641015,1),('2024-03-19','18:24:33','Cama Terapéutica',48976262,48771684,2),('2024-03-20','15:15:15','Terapéutico',48120878,48641015,2),('2024-03-20','23:14:48','Terapéutico',47954214,48641015,2),('2024-03-24','02:23:17','Pilates',44170354,48521414,1),('2024-03-25','08:40:48','Cama Terapéutica',45383257,48771684,2),('2024-03-28','15:32:09','Pilates',48599046,48771684,1),('2024-03-30','04:11:18','Personalizado',44280215,48983932,2),('2024-04-09','21:51:32','Pilates',47728909,48983932,1),('2024-04-10','06:43:41','Pilates',45484246,48521414,1),('2024-04-12','20:23:18','Personalizado',45954677,48641015,2),('2024-04-15','23:28:22','Terapéutico',45383257,48771684,2),('2024-04-16','02:07:00','Pilates',44340289,48983932,1),('2024-04-16','14:22:07','Pilates',45401047,48983932,1),('2024-04-19','03:58:45','Terapéutico',44141397,48673742,2),('2024-04-27','19:04:08','Terapéutico',48775650,48641015,2),('2024-05-02','13:34:02','Terapéutico',44556140,48983932,2),('2024-05-03','01:25:00','Pilates',45963229,48641015,1),('2024-05-05','02:36:41','Pilates',45922016,48521414,1),('2024-05-09','05:41:21','Terapéutico',45964273,48521414,2),('2024-05-10','03:04:08','Pilates',48884969,48521414,1),('2024-05-12','23:02:38','Personalizado',45484246,48983932,2),('2024-05-15','13:20:17','Personalizado',44340289,48771684,2),('2024-05-18','09:17:59','Pilates',44141397,48521414,1),('2024-05-21','23:44:57','Pilates',44556140,48983932,1);
/*!40000 ALTER TABLE `turnos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-05 18:03:25
