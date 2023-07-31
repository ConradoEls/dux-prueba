-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: pruebatecnica
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
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_venta` bigint NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `cantidad` bigint NOT NULL,
  `precio_unitario` double NOT NULL,
  `codigo_producto` varchar(15) NOT NULL,
  `id_cliente` bigint NOT NULL,
  PRIMARY KEY (`id_venta`,`codigo_producto`,`id_cliente`),
  KEY `fk_ventas_productos_idx` (`codigo_producto`),
  KEY `fk_ventas_clientes1_idx` (`id_cliente`),
  CONSTRAINT `fk_ventas_clientes1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_clientes`),
  CONSTRAINT `fk_ventas_productos` FOREIGN KEY (`codigo_producto`) REFERENCES `productos` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'2023-02-20',1,22000,'AMOLA',1),(2,'2023-03-19',1,33500.5,'LAVAR',1),(3,'2023-03-19',1,33500.5,'LAVAR',1),(4,'2023-01-22',2,4000,'MAXS',1),(5,'2023-06-22',3,20000,'OLL',1),(6,'2023-07-10',4,3500.7,'TIERF',1),(7,'2023-07-12',2,3500.7,'TIERF',2),(8,'2023-06-04',6,467,'PLAT',2),(9,'2023-04-23',6,500.23,'TAZ',2),(10,'2023-07-20',1,3100.6,'ECDV',2),(11,'2023-07-12',1,68250.35,'HELAD',2),(12,'2023-03-01',2,3500.7,'TIERF',3),(13,'2022-12-23',4,500.23,'TAZ',3),(14,'2023-01-03',1,4000,'MAXS',3),(15,'2023-01-08',1,68250.35,'HELAD',3),(16,'2023-02-02',1,89599.9,'COCIN',3),(17,'2023-07-16',1,3500.7,'TIERF',4),(18,'2023-07-18',1,33500.5,'LAVAR',4),(19,'2023-05-23',1,2400.3,'LB',4),(20,'2023-03-01',2,68250.35,'HELAD',4),(21,'2023-04-06',5,500.23,'TAZ',4),(22,'2023-07-27',2,3500.7,'TIERF',5),(23,'2023-02-18',1,20000,'OLL',5),(24,'2023-07-23',2,500.23,'TAZ',5),(25,'2022-09-10',1,2199.8,'MANGU',5),(26,'2022-12-25',1,3150.9,'BARB',5),(27,'2023-07-18',1,43000.5,'PLAT',1),(28,'2023-08-02',1,2000.5,'OLL',2),(29,'2023-08-01',1,2300,'HPOT',3),(30,'2023-07-03',1,1200.9,'COCIN',3),(31,'2023-07-06',1,399.8,'HELAD',3),(32,'2023-08-01',1,12455.8,'LAVAR',2),(33,'2023-02-03',1,45765.8,'BARB',4),(34,'2023-07-12',1,35890.7,'TAZ',5),(35,'2023-04-03',1,1005.5,'MAXS',4),(36,'2023-07-27',2,2230,'PLAT',1),(37,'2023-07-27',2,2230,'PLAT',1),(38,'2023-07-27',1,2230,'COSTI',1);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-27 18:37:49