-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: projectfinal02
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `agence_`
--

DROP TABLE IF EXISTS `agence_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agence_` (
  `Id_Agence` int NOT NULL AUTO_INCREMENT,
  `Nom_Agence` varchar(50) DEFAULT NULL,
  `Id_Ville_` int NOT NULL,
  PRIMARY KEY (`Id_Agence`),
  KEY `Id_Ville_` (`Id_Ville_`),
  CONSTRAINT `agence__ibfk_1` FOREIGN KEY (`Id_Ville_`) REFERENCES `ville_` (`Id_Ville_`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agence_`
--

LOCK TABLES `agence_` WRITE;
/*!40000 ALTER TABLE `agence_` DISABLE KEYS */;
INSERT INTO `agence_` VALUES (1,'Agence de Paris',1),(2,'Agence de Versailles',2),(3,'Agence de Boulogne-Billancourt',3),(4,'Agence de Saint-Denis',4),(5,'Agence de Marseille',5),(6,'Agence de Nice',6),(7,'Agence de Toulon',7),(8,'Agence de Avignon',8),(9,'Agence de Lyon',9),(10,'Agence de Grenoble',10),(11,'Agence de Clermont-Ferrand',11),(12,'Agence de Saint-Étienne',12),(13,'Agence de Toulouse',13),(14,'Agence de Montpellier',14),(15,'Agence de Nîmes',15),(16,'Agence de Perpignan',16),(17,'Agence de Bordeaux',17),(18,'Agence de La Rochelle',18),(19,'Agence de Limoges',19),(20,'Agence de Pau',20);
/*!40000 ALTER TABLE `agence_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `capteur`
--

DROP TABLE IF EXISTS `capteur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capteur` (
  `Id_Capteur_` int NOT NULL AUTO_INCREMENT,
  `Nom_Capteur_` varchar(50) DEFAULT NULL,
  `Id_personnel_` int NOT NULL,
  `Id_Secteur_` int NOT NULL,
  `Id_Agence` int NOT NULL,
  `Id_Gaz` int NOT NULL,
  PRIMARY KEY (`Id_Capteur_`),
  KEY `Id_personnel_` (`Id_personnel_`),
  KEY `Id_Secteur_` (`Id_Secteur_`),
  KEY `Id_Agence` (`Id_Agence`),
  KEY `Id_Gaz` (`Id_Gaz`),
  CONSTRAINT `capteur_ibfk_1` FOREIGN KEY (`Id_personnel_`) REFERENCES `personnel_technique` (`Id_personnel_`),
  CONSTRAINT `capteur_ibfk_2` FOREIGN KEY (`Id_Secteur_`) REFERENCES `secteur_` (`Id_Secteur_`),
  CONSTRAINT `capteur_ibfk_3` FOREIGN KEY (`Id_Agence`) REFERENCES `agence_` (`Id_Agence`),
  CONSTRAINT `capteur_ibfk_4` FOREIGN KEY (`Id_Gaz`) REFERENCES `gaz` (`Id_Gaz`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capteur`
--

LOCK TABLES `capteur` WRITE;
/*!40000 ALTER TABLE `capteur` DISABLE KEYS */;
INSERT INTO `capteur` VALUES (1,'CAP-01',141,1,1,1),(2,'CAP-02',161,2,1,2),(3,'CAP-03',161,3,1,3),(4,'CAP-04',142,4,2,4),(5,'CAP-05',163,5,2,5),(6,'CAP-06',163,6,2,6),(7,'CAP-07',142,7,3,7),(8,'CAP-08',162,8,3,8),(9,'CAP-09',162,9,3,9),(10,'CAP-10',143,10,4,10),(11,'CAP-11',163,11,4,11),(12,'CAP-12',163,12,4,12),(13,'CAP-13',144,13,5,13),(14,'CAP-14',165,14,5,14),(15,'CAP-15',165,15,5,15),(16,'CAP-16',145,16,6,16),(17,'CAP-17',165,17,6,17),(18,'CAP-18',165,18,6,18),(19,'CAP-19',146,19,7,19),(20,'CAP-20',166,20,7,20),(21,'CAP-21',166,21,7,1),(22,'CAP-22',147,22,8,2),(23,'CAP-23',167,23,8,3),(24,'CAP-24',167,24,8,4),(25,'CAP-25',148,25,9,5),(26,'CAP-26',168,26,9,6),(27,'CAP-27',168,27,9,7),(28,'CAP-28',149,28,10,8),(29,'CAP-29',169,29,10,9),(30,'CAP-30',169,30,10,10),(31,'CAP-31',150,31,11,11),(32,'CAP-32',170,32,11,12),(33,'CAP-33',170,33,11,13),(34,'CAP-34',151,34,12,14),(35,'CAP-35',171,35,12,15),(36,'CAP-36',171,36,12,16),(37,'CAP-37',152,37,13,17),(38,'CAP-38',172,38,13,18),(39,'CAP-39',172,39,13,19),(40,'CAP-40',153,40,14,20),(41,'CAP-41',173,41,14,1),(42,'CAP-42',173,42,14,2),(43,'CAP-43',154,43,15,3),(44,'CAP-44',175,44,15,4),(45,'CAP-45',175,45,15,5),(46,'CAP-46',156,46,16,6),(47,'CAP-47',176,47,16,7),(48,'CAP-48',176,48,16,8),(49,'CAP-49',157,49,17,9),(50,'CAP-50',177,50,17,10),(51,'CAP-51',177,51,17,11),(52,'CAP-52',158,52,18,12),(53,'CAP-53',178,53,18,13),(54,'CAP-54',178,54,18,14),(55,'CAP-55',159,55,19,15),(56,'CAP-56',179,56,19,16),(57,'CAP-57',179,57,19,17),(58,'CAP-58',160,58,20,18),(59,'CAP-59',180,59,20,19),(60,'CAP-60',180,60,20,20);
/*!40000 ALTER TABLE `capteur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chef_d_agence`
--

DROP TABLE IF EXISTS `chef_d_agence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chef_d_agence` (
  `Id_personnel_` int NOT NULL,
  `Id_Agence` int NOT NULL,
  PRIMARY KEY (`Id_personnel_`),
  KEY `Id_Agence` (`Id_Agence`),
  CONSTRAINT `chef_d_agence_ibfk_1` FOREIGN KEY (`Id_personnel_`) REFERENCES `personnel_` (`Id_personnel_`),
  CONSTRAINT `chef_d_agence_ibfk_2` FOREIGN KEY (`Id_Agence`) REFERENCES `agence_` (`Id_Agence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef_d_agence`
--

LOCK TABLES `chef_d_agence` WRITE;
/*!40000 ALTER TABLE `chef_d_agence` DISABLE KEYS */;
INSERT INTO `chef_d_agence` VALUES (81,1),(82,2),(83,3),(84,4),(85,5),(86,6),(87,7),(88,8),(89,9),(90,10),(91,11),(92,12),(93,13),(94,14),(95,15),(96,16),(97,17),(98,18),(99,19),(100,20);
/*!40000 ALTER TABLE `chef_d_agence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenir`
--

DROP TABLE IF EXISTS `contenir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenir` (
  `Id_Rapport_` int NOT NULL,
  `id_Données` int NOT NULL,
  PRIMARY KEY (`Id_Rapport_`,`id_Données`),
  KEY `id_Données` (`id_Données`),
  CONSTRAINT `contenir_ibfk_1` FOREIGN KEY (`Id_Rapport_`) REFERENCES `rapport_` (`Id_Rapport_`),
  CONSTRAINT `contenir_ibfk_2` FOREIGN KEY (`id_Données`) REFERENCES `données` (`id_Données`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenir`
--

LOCK TABLES `contenir` WRITE;
/*!40000 ALTER TABLE `contenir` DISABLE KEYS */;
/*!40000 ALTER TABLE `contenir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `données`
--

DROP TABLE IF EXISTS `données`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `données` (
  `id_Données` int NOT NULL AUTO_INCREMENT,
  `Mesure_ppm` double DEFAULT NULL,
  `Date_relevé` date DEFAULT NULL,
  `Id_Gaz` int NOT NULL,
  `Id_Capteur_` int NOT NULL,
  PRIMARY KEY (`id_Données`),
  KEY `Id_Gaz` (`Id_Gaz`),
  KEY `Id_Capteur_` (`Id_Capteur_`),
  CONSTRAINT `données_ibfk_1` FOREIGN KEY (`Id_Gaz`) REFERENCES `gaz` (`Id_Gaz`),
  CONSTRAINT `données_ibfk_2` FOREIGN KEY (`Id_Capteur_`) REFERENCES `capteur` (`Id_Capteur_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `données`
--

LOCK TABLES `données` WRITE;
/*!40000 ALTER TABLE `données` DISABLE KEYS */;
/*!40000 ALTER TABLE `données` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gaz`
--

DROP TABLE IF EXISTS `gaz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gaz` (
  `Id_Gaz` int NOT NULL AUTO_INCREMENT,
  `Nom_de_Gaz` varchar(20) DEFAULT NULL,
  `Classification_` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Gaz`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gaz`
--

LOCK TABLES `gaz` WRITE;
/*!40000 ALTER TABLE `gaz` DISABLE KEYS */;
INSERT INTO `gaz` VALUES (1,'CO2 bio','Gaz à effet de serre'),(2,'NH3','Acidificateurs'),(3,'CH4','Gaz à effet de serre'),(4,'PFC','Gaz à effet de serre'),(5,'HFC','Gaz à effet de serre'),(6,'SF6','Gaz à effet de serre'),(7,'CO2 non bio','Gaz à effet de serre'),(8,'N2O','Gaz à effet de serre'),(9,'VOCs','Gaz à effet de serre'),(10,'CO','Acidificateurs'),(11,'H2S','Acidificateurs'),(12,'N2O5','Acidificateurs'),(13,'NO','Acidificateurs'),(14,'HCHO','Gaz à effet de serre'),(15,'H2','Gaz à effet de serre'),(16,'N2O4','Acidificateurs'),(17,'NO3','Acidificateurs'),(18,'CO2eq','Gaz à effet de serre'),(19,'PM2.5','Gaz à effet de serre'),(20,'O2','Gaz à effet de serre');
/*!40000 ALTER TABLE `gaz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnel_`
--

DROP TABLE IF EXISTS `personnel_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personnel_` (
  `Id_personnel_` int NOT NULL AUTO_INCREMENT,
  `Date_de_prise_du_poste` date DEFAULT NULL,
  `Date_de_naissance_` date NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prénom_` varchar(50) DEFAULT NULL,
  `Adresse_Postal_` varchar(100) DEFAULT NULL,
  `Num_de_telephone` varchar(50) DEFAULT NULL,
  `Id_Agence` int NOT NULL,
  PRIMARY KEY (`Id_personnel_`),
  KEY `Id_Agence` (`Id_Agence`),
  CONSTRAINT `personnel__ibfk_1` FOREIGN KEY (`Id_Agence`) REFERENCES `agence_` (`Id_Agence`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel_`
--

LOCK TABLES `personnel_` WRITE;
/*!40000 ALTER TABLE `personnel_` DISABLE KEYS */;
INSERT INTO `personnel_` VALUES (81,'1995-06-12','1965-06-12','Dubois','Adèle','37 Rue de Rivoli, 75001 Paris','03 67 06 56 67',1),(82,'1998-09-05','1972-09-05','El-Masri','Amir','58 Rue du Maréchal Joffre, 78000 Versailles','04 56 05 67 56',2),(83,'1992-11-23','1978-11-23','Nkosi','Yasmine','23 Rue de Bellevue, 92100 Boulogne-Billancourt','01 23 45 67 89',3),(84,'1990-03-15','1983-03-15','Giroud','Mathieu','91 Rue Gabriel Péri, 93200 Saint-Denis','02 34 56 78 90',4),(85,'2002-08-09','1990-08-09','Yamamoto','Aya','42 Rue de la République, 13001 Marseille','03 45 67 89 01',5),(86,'2001-12-28','1987-12-28','Mbappé','Thierry','65 Promenade des Anglais, 06000 Nice','04 56 78 90 12',6),(87,'1999-04-02','1974-04-02','Toure','Amira','14 Place de la Liberté, 83000 Toulon','05 67 89 01 23',7),(88,'2007-07-19','1968-07-19','Ronaldo','Hugo','76 Place du Palais des Papes, 84000 Avignon','06 78 90 12 34',8),(89,'2018-10-31','1976-10-31','Diop','Leila','29 Place des Terreaux, 69001 Lyon','07 89 01 23 45',9),(90,'2005-01-07','1988-01-07','Varane','Raphael','83 Place Grenette, 38000 Grenoble','08 90 12 34 56',10),(91,'2010-05-20','1985-05-20','Ouattara','Nora','55 Place de Jaude, 63000 Clermont-Ferrand','09 01 23 45 67',11),(92,'2003-09-11','1970-09-11','Salah','Zinedine','17 Place du Peuple, 42000 Saint-Étienne','01 98 76 54 32',12),(93,'1996-02-14','1966-02-14','Toure','Malik','28 Place du Capitole, 31000 Toulouse','02 87 65 43 21',13),(94,'2009-06-25','1979-06-25','Leclerc','Émilie','47 Place de la Comédie, 34000 Montpellier','03 76 54 32 10',14),(95,'2008-12-03','1981-12-03','Eto\'o','Karim','39 Rue de la République, 30000 Nîmes','04 65 43 21 09',15),(96,'1997-08-30','1997-08-30','Fofana','Inès','72 Place de la Loge, 66000 Perpignan','05 54 32 10 98',16),(97,'2013-04-09','1962-04-09','Messi','Kylian','61 Place de la Bourse, 33000 Bordeaux','06 43 21 09 87',17),(98,'2015-07-13','1993-07-13','Kante','Safiya','95 Place de Verdun, 17000 La Rochelle','07 32 10 98 76',18),(99,'2019-10-17','1980-10-17','Agüero','Antoine','12 Place de la Motte, 87000 Limoges','08 21 09 87 65',19),(100,'2004-01-28','1971-01-28','Traoré','Fatoumata','24 Place Royale, 64000 Pau','09 10 98 76 54',20),(101,'2006-05-06','1995-05-06','Neymar','Lucas','59 Rue de la Paix, 75002 Paris','01 80 90 12 34',1),(102,'2016-11-11','1977-11-11','Bamba','Anwar','76 Avenue de Paris, 78000 Versailles','02 70 80 90 12',2),(103,'2000-02-22','1963-02-22','Pogba','Elodie','33 Avenue André Morizet, 92100 Boulogne-Billancourt','03 60 70 80 90',3),(104,'1993-06-04','1989-06-04','Mahrez','Ahmed','78 Avenue du Président Wilson, 93210 Saint-Denis','04 50 60 70 80',4),(105,'2012-09-16','1992-09-16','Touré','Mariam','25 Quai des Belges, 13002 Marseille','05 40 50 60 70',5),(106,'2000-03-08','1964-03-08','Benzema','François','63 Rue de France, 06100 Nice','06 30 40 50 60',6),(107,'1994-07-21','1973-07-21','Abdi','Samira','45 Rue d\'Alger, 83100 Toulon','07 20 30 40 50',7),(108,'1991-11-01','1982-11-01','Lewandowski','Paul','81 Rue de la République, 84100 Avignon','08 10 20 30 40',8),(109,'2009-04-18','1999-04-18','Di Maria','Léa','12 Quai Saint-Antoine, 69002 Lyon','09 99 10 20 30',9),(110,'1996-12-08','1967-12-08','Ibrahimovic','Malik','37 Rue Félix Poulat, 38100 Grenoble','01 88 99 10 20',10),(111,'1991-12-29','1975-12-29','Kova?i?','Yasmina','54 Rue Blatin, 63100 Clermont-Ferrand','02 77 88 99 10',11),(112,'2014-09-16','1981-09-16','Diaby','Omar','88 Rue de la République, 42100 Saint-Étienne','03 66 77 88 99',12),(113,'2003-07-03','1991-07-03','Griezmann','Julie','59 Rue de Metz, 31100 Toulouse','04 55 66 77 88',13),(114,'2017-10-10','1979-10-10','Aubameyang','Hakim','45 Rue de la Loge, 34100 Montpellier','05 44 55 66 77',14),(115,'2011-01-12','1986-01-12','Oshimi','Selma','28 Boulevard Gambetta, 30100 Nîmes','06 33 44 55 66',15),(116,'2007-05-24','1961-05-24','Modri?','Lionel','69 Rue de l\'Ange, 66100 Perpignan','07 22 33 44 55',16),(117,'2013-09-29','1966-09-29','Diop','Yasir','57 Rue Sainte-Catherine, 33100 Bordeaux','08 11 22 33 44',17),(118,'2006-02-05','1978-02-05','Hazard','Clara','35 Rue du Palais, 17100 La Rochelle','09 00 11 22 33',18),(119,'2018-06-14','1980-06-14','Son','Riyad','48 Rue de la Boucherie, 87100 Limoges','01 89 09 99 99',19),(120,'1992-06-02','1993-06-02','Alaba','Hafsa','73 Boulevard des Pyrénées, 64100 Pau','02 78 89 09 98',20),(121,'2012-04-20','1998-04-20','Kane','Karim','93 Rue des Halles, 75003 Paris','03 67 78 09 97',1),(122,'2008-08-07','1970-08-07','Kova?','Sofia','70 Rue du Vieux Versailles, 78000 Versailles','04 56 67 89 96',2),(123,'2002-12-24','1983-12-24','Rashford','Thomas','19 Rue de Silly, 92100 Boulogne-Billancourt','05 45 56 78 95',3),(124,'2001-03-31','1995-03-31','Mahrez','Djamila','80 Rue de la République, 93220 Saint-Denis','06 34 45 67 94',4),(125,'2005-07-08','1972-07-08','Mbemba','Benjamin','56 Rue Saint-Ferréol, 13003 Marseille','07 23 34 56 93',5),(126,'2009-10-23','1965-10-23','Benzema','Salma','26 Avenue Jean Médecin, 06200 Nice','08 12 23 45 92',6),(127,'2004-02-17','1976-02-17','Dembélé','Didier','64 Avenue de la République, 83200 Toulon','09 01 12 34 91',7),(128,'2016-06-30','1990-06-30','Alves','Leïla','38 Rue Joseph Vernet, 84200 Avignon','01 90 01 23 90',8),(129,'1999-11-19','1987-11-19','Salah','Eden','82 Rue de la République, 69003 Lyon','02 89 12 34 89',9),(130,'2014-04-13','1964-04-13','Kante','Aïcha','51 Boulevard Gambetta, 38200 Grenoble','03 78 23 45 78',10),(131,'2006-08-02','1981-08-02','Kane','Mathieu','49 Boulevard Lafayette, 63200 Clermont-Ferrand','04 67 34 56 67',11),(132,'2010-12-19','1977-12-19','Salah','Amira','25 Boulevard Jules Janin, 42200 Saint-Étienne','05 56 45 67 56',12),(133,'2003-03-26','1968-03-26','De Bruyne','Olivier','72 Allées Jean Jaurès, 31200 Toulouse','06 45 56 78 45',13),(134,'2017-08-09','1992-08-09','Ronaldo','Inès','67 Allées Provençales, 34000 Montpellier','07 34 67 89 34',14),(135,'2011-01-01','1989-01-01','Neymar','Zakaria','14 Allée François Verdier, 30000 Nîmes','08 23 45 67 23',15),(136,'2019-02-28','1974-02-28','Messi','Zara','34 Allée Jules Guesde, 66000 Perpignan','09 12 34 56 12',16),(137,'2000-05-15','1978-05-15','Sané','Hugo','49 Allée de Barcelone, 33000 Bordeaux','01 01 23 45 01',17),(138,'2015-10-28','1984-10-28','Kovacic','Inès','87 Allée Léon Gambetta, 17000 La Rochelle','02 90 12 34 90',18),(139,'2018-12-03','1993-12-03','Sterling','Yassin','22 Allée Franklin Roosevelt, 87000 Limoges','03 89 01 23 89',19),(140,'2008-04-01','1973-04-01','Mané','Youssef','35 Allée Victor Hugo, 64000 Pau','04 78 90 12 78',20),(141,'1996-09-09','1996-09-09','Dembele','Lina','52 Allée de la Libération, 75004 Paris','05 67 89 01 67',1),(142,'2014-02-14','1969-02-14','Salah','Léon','10 Allée du Parc, 78000 Versailles','06 56 67 89 56',2),(143,'2016-06-29','1988-06-29','Sancho','Nour','29 Allée des Tilleuls, 92100 Boulogne-Billancourt','07 45 56 78 45',3),(144,'2012-01-05','1976-01-05','Immobile','Nora','77 Allée des Lilas, 93230 Saint-Denis','08 34 45 67 34',4),(145,'2018-09-15','1991-09-15','Hazard','Hugo','58 Allée des Roses, 78000 Versailles','09 23 34 56 23',5),(146,'2010-04-29','1974-04-29','Vardy','Inès','36 Allée des Mimosas, 13004 Marseille','01 12 34 56 12',6),(147,'2003-11-02','1997-11-02','De Bruyne','Yassin','91 Allée des Ormes, 06000 Nice','02 01 23 45 01',7),(148,'2015-03-12','1965-03-12','Ronaldo','Léa','53 Allée des Acacias, 83000 Toulon','03 90 12 34 90',8),(149,'2017-11-22','1980-11-22','Modri?','Youssef','27 Allée des Érables, 06000 Nice','04 89 01 23 89',9),(150,'2000-08-15','1966-08-15','Neymar','Lina','84 Allée des Chênes, 75004 Paris','05 78 90 12 78',10),(151,'2019-05-05','1995-05-05','Sterling','Léon','50 Allée des Bouleaux, 78000 Versailles','06 67 89 01 67',11),(152,'2007-12-10','1973-12-10','Mané','Nour','31 Allée des Pommiers, 92100 Boulogne-Billancourt','07 56 67 89 56',12),(153,'2013-10-20','1983-10-20','Dembele','Nora','99 Allée des Peupliers, 93230 Saint-Denis','08 45 56 78 45',13),(154,'2011-07-18','1978-07-18','Salah','Hugo','62 Allée des Platanes, 78000 Versailles','09 34 45 67 34',14),(155,'2014-09-25','1994-09-25','Sané','Inès','78 Allée des Lilas, 13004 Marseille','01 23 34 56 12',15),(156,'2009-02-13','1963-02-13','Salah','Yassin','49 Allée des Mimosas, 06000 Nice','02 12 34 56 01',16),(157,'2018-12-06','1998-12-06','Sancho','Léa','36 Allée des Ormes, 83000 Toulon','03 01 23 45 90',17),(158,'2017-03-08','1964-03-08','Immobile','Léon','68 Allée des Acacias, 06000 Nice','04 90 12 34 89',18),(159,'2016-02-18','1986-02-18','Hazard','Nour','22 Allée des Érables, 75004 Paris','05 89 01 23 78',19),(160,'2004-06-11','1971-06-11','Vardy','Hugo','50 Allée des Chênes, 78000 Versailles','06 78 90 12 67',20),(161,'2012-03-27','1986-03-27','Fati','Benjamin','50 Rue du Faubourg Saint-Antoine, 75005 Paris','07 67 06 56 67',1),(162,'1992-07-12','1990-07-12','Mane','Amina','46 Rue Royale, 78000 Versailles','08 56 05 67 56',2),(163,'2010-10-26','1971-10-26','Aubameyang','Laurent','35 Avenue Pierre Grenier, 92100 Boulogne-Billancourt','09 45 04 78 45',3),(164,'1999-02-10','1980-02-10','Mahrez','Selma','89 Rue des Ursulines, 93240 Saint-Denis','01 34 03 89 34',4),(165,'2018-06-02','1992-06-02','Silva','Corentin','91 Boulevard Longchamp, 13005 Marseille','02 23 02 90 23',5),(166,'2001-09-15','1965-09-15','Dembélé','Nadia','16 Avenue de la Californie, 06400 Nice','03 12 01 01 12',6),(167,'2004-01-09','1979-01-09','Ramos','Vincent','38 Rue Jean Jaurès, 83400 Toulon','04 01 90 12 01',7),(168,'2015-05-22','1996-05-22','Kanté','Farida','94 Boulevard Limbert, 84400 Avignon','05 90 09 23 90',8),(169,'2005-10-12','1988-10-12','Alves','Alexandre','68 Place Bellecour, 69005 Lyon','06 89 08 34 89',9),(170,'1993-02-25','1963-02-25','Griezmann','Fatoumata','75 Avenue Félix Viallet, 38400 Grenoble','07 78 07 45 78',10),(171,'1991-06-07','1974-06-07','Sané','Philippe','42 Avenue de la République, 63400 Clermont-Ferrand','08 67 06 56 67',11),(172,'2016-09-20','1965-09-20','Touré','Yasmine','59 Rue Gambetta, 42400 Saint-Étienne','09 56 05 67 56',12),(173,'2008-11-30','1968-11-30','Agüero','Olivier','36 Boulevard Lascrosses, 31400 Toulouse','01 45 04 78 45',13),(174,'2007-05-07','1972-05-07','Salah','Zara','60 Rue de Aiguillerie, 34400 Montpellier','02 34 03 89 34',14),(175,'2017-08-25','1984-08-25','Diawara','Mathieu','11 Rue de la Madeleine, 30400 Nîmes','03 23 02 90 23',15),(176,'2000-01-18','1996-01-18','Pogba','Safiya','62 Rue de la Fusterie, 66400 Perpignan','04 12 01 01 12',16),(177,'2003-10-02','1975-10-02','Ziyech','Karim','80 Rue Fondaudège, 33400 Bordeaux','05 01 90 12 01',17),(178,'2012-12-19','1966-12-19','De Bruyne','Leïla','57 Avenue Charles de Gaulle, 17400 La Rochelle','06 90 09 23 90',18),(179,'2010-03-24','1978-03-24','Mendy','Florian','54 Avenue des Bénédictins, 87400 Limoges','07 89 08 34 89',19),(180,'2006-07-28','1989-07-28','Elneny','Aïcha','45 Boulevard Hauterive, 64400 Pau','08 78 07 45 78',20);
/*!40000 ALTER TABLE `personnel_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnel_administratifs`
--

DROP TABLE IF EXISTS `personnel_administratifs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personnel_administratifs` (
  `Id_personnel_` int NOT NULL,
  PRIMARY KEY (`Id_personnel_`),
  CONSTRAINT `personnel_administratifs_ibfk_1` FOREIGN KEY (`Id_personnel_`) REFERENCES `personnel_` (`Id_personnel_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel_administratifs`
--

LOCK TABLES `personnel_administratifs` WRITE;
/*!40000 ALTER TABLE `personnel_administratifs` DISABLE KEYS */;
INSERT INTO `personnel_administratifs` VALUES (101),(102),(103),(104),(105),(106),(107),(108),(109),(110),(111),(112),(113),(114),(115),(116),(117),(118),(119),(120),(121),(122),(123),(124),(125),(126),(127),(128),(129),(130),(131),(132),(133),(134),(135),(136),(137),(138),(139),(140);
/*!40000 ALTER TABLE `personnel_administratifs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnel_technique`
--

DROP TABLE IF EXISTS `personnel_technique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personnel_technique` (
  `Id_personnel_` int NOT NULL,
  PRIMARY KEY (`Id_personnel_`),
  CONSTRAINT `personnel_technique_ibfk_1` FOREIGN KEY (`Id_personnel_`) REFERENCES `personnel_` (`Id_personnel_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel_technique`
--

LOCK TABLES `personnel_technique` WRITE;
/*!40000 ALTER TABLE `personnel_technique` DISABLE KEYS */;
INSERT INTO `personnel_technique` VALUES (141),(142),(143),(144),(145),(146),(147),(148),(149),(150),(151),(152),(153),(154),(155),(156),(157),(158),(159),(160),(161),(162),(163),(164),(165),(166),(167),(168),(169),(170),(171),(172),(173),(174),(175),(176),(177),(178),(179),(180);
/*!40000 ALTER TABLE `personnel_technique` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rapport_`
--

DROP TABLE IF EXISTS `rapport_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rapport_` (
  `Id_Rapport_` int NOT NULL AUTO_INCREMENT,
  `_Titre` longtext,
  `Date_Parution` date DEFAULT NULL,
  PRIMARY KEY (`Id_Rapport_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rapport_`
--

LOCK TABLES `rapport_` WRITE;
/*!40000 ALTER TABLE `rapport_` DISABLE KEYS */;
/*!40000 ALTER TABLE `rapport_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redige_`
--

DROP TABLE IF EXISTS `redige_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `redige_` (
  `Id_personnel_` int NOT NULL,
  `Id_Rapport_` int NOT NULL,
  PRIMARY KEY (`Id_personnel_`,`Id_Rapport_`),
  KEY `Id_Rapport_` (`Id_Rapport_`),
  CONSTRAINT `redige__ibfk_1` FOREIGN KEY (`Id_personnel_`) REFERENCES `personnel_administratifs` (`Id_personnel_`),
  CONSTRAINT `redige__ibfk_2` FOREIGN KEY (`Id_Rapport_`) REFERENCES `rapport_` (`Id_Rapport_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redige_`
--

LOCK TABLES `redige_` WRITE;
/*!40000 ALTER TABLE `redige_` DISABLE KEYS */;
/*!40000 ALTER TABLE `redige_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `région_`
--

DROP TABLE IF EXISTS `région_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `région_` (
  `Id_Région_` int NOT NULL AUTO_INCREMENT,
  `Nom_de_Région` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Région_`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `région_`
--

LOCK TABLES `région_` WRITE;
/*!40000 ALTER TABLE `région_` DISABLE KEYS */;
INSERT INTO `région_` VALUES (1,'Île-de-France'),(2,'Provence-Alpes-Côte d\'Azur'),(3,'Auvergne-Rhône-Alpes'),(4,'Occitanie'),(5,'Nouvelle-Aquitaine');
/*!40000 ALTER TABLE `région_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `répertorier`
--

DROP TABLE IF EXISTS `répertorier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `répertorier` (
  `Id_Gaz` int NOT NULL,
  `Id_Région_` int NOT NULL,
  PRIMARY KEY (`Id_Gaz`,`Id_Région_`),
  KEY `Id_Région_` (`Id_Région_`),
  CONSTRAINT `répertorier_ibfk_1` FOREIGN KEY (`Id_Gaz`) REFERENCES `gaz` (`Id_Gaz`),
  CONSTRAINT `répertorier_ibfk_2` FOREIGN KEY (`Id_Région_`) REFERENCES `région_` (`Id_Région_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `répertorier`
--

LOCK TABLES `répertorier` WRITE;
/*!40000 ALTER TABLE `répertorier` DISABLE KEYS */;
INSERT INTO `répertorier` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(1,2),(2,2),(3,2),(4,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(16,3),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(8,4),(17,4),(18,4),(19,4),(20,4),(9,5),(10,5),(11,5),(12,5),(13,5),(14,5),(15,5),(16,5),(17,5),(18,5),(19,5),(20,5);
/*!40000 ALTER TABLE `répertorier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `secteur_`
--

DROP TABLE IF EXISTS `secteur_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `secteur_` (
  `Id_Secteur_` int NOT NULL AUTO_INCREMENT,
  `Nom_De_Secteur_` varchar(50) DEFAULT NULL,
  `Id_Ville_` int NOT NULL,
  PRIMARY KEY (`Id_Secteur_`),
  KEY `Id_Ville_` (`Id_Ville_`),
  CONSTRAINT `secteur__ibfk_1` FOREIGN KEY (`Id_Ville_`) REFERENCES `ville_` (`Id_Ville_`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secteur_`
--

LOCK TABLES `secteur_` WRITE;
/*!40000 ALTER TABLE `secteur_` DISABLE KEYS */;
INSERT INTO `secteur_` VALUES (1,'Secteur financier',1),(2,'Tourisme et hôtellerie',1),(3,'Mode et luxe',1),(4,'Tourisme culturel',2),(5,'Événementiel',2),(6,'Secteur immobilier',2),(7,'Industrie automobile',3),(8,'Secteur numérique',3),(9,'Services aux entreprises',3),(10,'Industrie textile',4),(11,'Logistique',4),(12,'Énergies renouvelables',4),(13,'Industrie maritime',5),(14,'Tourisme culturel',5),(15,'Secteur agroalimentaire',5),(16,'Tourisme balnéaire',6),(17,'Secteur hôtelier',6),(18,'Secteur événementiel',6),(19,'Secteur naval',7),(20,'Tourisme balnéaire',7),(21,'Industrie navale',7),(22,'Tourisme culturel',8),(23,'Secteur viticole',8),(24,'Arts et culture',8),(25,'Industrie pharmaceutique',9),(26,'Gastronomie',9),(27,'Secteur numérique',9),(28,'Secteur high-tech',10),(29,'Recherche scientifique',10),(30,'Énergie et environnement',10),(31,'Industrie pneumatique',11),(32,'Recherche scientifique',11),(33,'Industrie pharmaceutique',11),(34,'Industrie métallurgique',12),(35,'Secteur design',12),(36,'Énergie et environnement',12),(37,'Aéronautique et spatial',13),(38,'Secteur numérique',13),(39,'Recherche scientifique',13),(40,'Recherche médicale',14),(41,'Viticulture',14),(42,'Tourisme balnéaire',14),(43,'Tourisme culturel',15),(44,'Industrie agroalimentaire',15),(45,'Équipement pour l\'industrie',15),(46,'Secteur agroalimentaire',16),(47,'Logistique',16),(48,'Tourisme culturel',16),(49,'Viticulture',17),(50,'Secteur aéronautique',17),(51,'Secteur numérique',17),(52,'Tourisme balnéaire',18),(53,'Secteur nautique',18),(54,'Industries maritimes',18),(55,'Industrie de la porcelaine',19),(56,'Secteur agroalimentaire',19),(57,'Tourisme culturel',19),(58,'Industrie pétrochimique',20),(59,'Secteur énergétique',20),(60,'Technologies de information et de la communication',20);
/*!40000 ALTER TABLE `secteur_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ville_`
--

DROP TABLE IF EXISTS `ville_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ville_` (
  `Id_Ville_` int NOT NULL AUTO_INCREMENT,
  `Nom_de_Ville_` varchar(40) DEFAULT NULL,
  `Id_Région_` int NOT NULL,
  PRIMARY KEY (`Id_Ville_`),
  KEY `Id_Région_` (`Id_Région_`),
  CONSTRAINT `ville__ibfk_1` FOREIGN KEY (`Id_Région_`) REFERENCES `région_` (`Id_Région_`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ville_`
--

LOCK TABLES `ville_` WRITE;
/*!40000 ALTER TABLE `ville_` DISABLE KEYS */;
INSERT INTO `ville_` VALUES (1,'Paris',1),(2,'Versailles',1),(3,'Boulogne-Billancourt',1),(4,'Saint-Denis',1),(5,'Marseille',2),(6,'Nice',2),(7,'Toulon',2),(8,'Avignon',2),(9,'Lyon',3),(10,'Grenoble',3),(11,'Clermont-Ferrand',3),(12,'Saint-Étienne',3),(13,'Toulouse',4),(14,'Montpellier',4),(15,'Nîmes',4),(16,'Perpignan',4),(17,'Bordeaux',5),(18,'La Rochelle',5),(19,'Limoges',5),(20,'Pau',5);
/*!40000 ALTER TABLE `ville_` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-04  3:02:28
