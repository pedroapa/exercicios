CREATE DATABASE  IF NOT EXISTS `db_pizzaria_legal` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_pizzaria_legal`;
-- MariaDB dump 10.19  Distrib 10.4.21-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: db_pizzaria_legal
-- ------------------------------------------------------
-- Server version	10.4.21-MariaDB

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
-- Table structure for table `tb_categoria`
--

DROP TABLE IF EXISTS `tb_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) DEFAULT NULL,
  `tamanho` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categoria`
--

LOCK TABLES `tb_categoria` WRITE;
/*!40000 ALTER TABLE `tb_categoria` DISABLE KEYS */;
INSERT INTO `tb_categoria` VALUES (1,'Salgada','Normal',1),(2,'Salgada','Grande',2),(3,'Doce','Normal',1),(4,'Doce','Grande',2),(5,'Doce e Salgada','Normal',1);
/*!40000 ALTER TABLE `tb_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pizza`
--

DROP TABLE IF EXISTS `tb_pizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pizza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(500) DEFAULT NULL,
  `ingrediente` varchar(500) DEFAULT NULL,
  `Massa` varchar(255) DEFAULT NULL,
  `preco` decimal(8,2) DEFAULT NULL,
  `classe_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classe_id` (`classe_id`),
  CONSTRAINT `tb_pizza_ibfk_1` FOREIGN KEY (`classe_id`) REFERENCES `tb_categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pizza`
--

LOCK TABLES `tb_pizza` WRITE;
/*!40000 ALTER TABLE `tb_pizza` DISABLE KEYS */;
INSERT INTO `tb_pizza` VALUES (1,'Atum','Atum e cebola','Fina',30.00,1),(2,'Brócolis','Brócolis e queijo','Fina',35.00,1),(3,'Mozarela','Mozarela','Grossa',25.00,2),(4,'Calabresa','Calabresa e cebola','Grossa',25.00,2),(5,'Portugesa','Ovo, cebola, presunto e queijo','Grossa',28.00,2);
/*!40000 ALTER TABLE `tb_pizza` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-19 14:15:14
