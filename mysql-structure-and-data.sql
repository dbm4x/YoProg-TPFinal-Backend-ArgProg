-- MySQL dump 10.13  Distrib 8.0.15-5, for Linux (x86_64)
--
-- Host: localhost    Database: portafolio
-- ------------------------------------------------------
-- Server version	8.0.15-5

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!50717 SELECT COUNT(*) INTO @rocksdb_has_p_s_session_variables FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'session_variables' */;
/*!50717 SET @rocksdb_get_is_supported = IF (@rocksdb_has_p_s_session_variables, 'SELECT COUNT(*) INTO @rocksdb_is_supported FROM performance_schema.session_variables WHERE VARIABLE_NAME=\'rocksdb_bulk_load\'', 'SELECT 0') */;
/*!50717 PREPARE s FROM @rocksdb_get_is_supported */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50717 SET @rocksdb_enable_bulk_load = IF (@rocksdb_is_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @rocksdb_dummy_bulk_load = 0') */;
/*!50717 PREPARE s FROM @rocksdb_enable_bulk_load */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;

--
-- Table structure for table `acercade`
--

DROP TABLE IF EXISTS `acercade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `acercade` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `texto` varchar(200) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `visible` bit(1) DEFAULT NULL,
  `acercade_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfvbc9bfi0vdny41y02bfms4yn` (`acercade_id`),
  CONSTRAINT `FKfvbc9bfi0vdny41y02bfms4yn` FOREIGN KEY (`acercade_id`) REFERENCES `acercade` (`id`),
  CONSTRAINT `pk_acerca` FOREIGN KEY (`acercade_id`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acercade`
--

LOCK TABLES `acercade` WRITE;
/*!40000 ALTER TABLE `acercade` DISABLE KEYS */;
INSERT INTO `acercade` VALUES (1,'Acerca de ...','Programador en Front-End y Back-End con la experiencia de llevar a cabo proyectos de una forma organizada y eficiente.','Desarrollador web',_binary '',NULL);
/*!40000 ALTER TABLE `acercade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `categoria` (
  `id` bigint(20) NOT NULL,
  `categorias` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `Persona_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Contacto_Persona1_idx` (`Persona_id`),
  CONSTRAINT `fk_Contacto_Persona1` FOREIGN KEY (`Persona_id`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacto`
--

LOCK TABLES `contacto` WRITE;
/*!40000 ALTER TABLE `contacto` DISABLE KEYS */;
INSERT INTO `contacto` VALUES (1,'assa','as@asc.com','2323',1);
/*!40000 ALTER TABLE `contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educacion`
--

DROP TABLE IF EXISTS `educacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `educacion` (
  `id` bigint(20) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `texto` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educacion`
--

LOCK TABLES `educacion` WRITE;
/*!40000 ALTER TABLE `educacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `educacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudio`
--

DROP TABLE IF EXISTS `estudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `estudio` (
  `id` int(11) NOT NULL,
  `fecha_inicio` varchar(45) DEFAULT NULL,
  `fecha_fin` varchar(45) DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `texto` varchar(150) DEFAULT NULL,
  `logo` varchar(150) DEFAULT NULL,
  `Persona_id` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Estudio_Persona1_idx` (`Persona_id`),
  CONSTRAINT `fk_Estudio_Persona1` FOREIGN KEY (`Persona_id`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudio`
--

LOCK TABLES `estudio` WRITE;
/*!40000 ALTER TABLE `estudio` DISABLE KEYS */;
INSERT INTO `estudio` VALUES (1,'','2018','Secundario C.e.n.m.a. No 217','Especialidad en Economía y Administración.','',1,NULL,NULL),(503,'2017','','Cisco CCNA - Academia Cisco Oracle UTN Córdoba','Certificación Cisco Certified Network Associated.','https://www.frc.utn.edu.ar/imagenes/utnfrc46.png',1,NULL,NULL),(504,'2022','2022','Argentina Programa - #SéProgramar','Plan nacional de formación en programación.','assets/img/APLogo-20-20.png',1,NULL,NULL),(505,'2022','Presente','Argentina Programa - #YoProgramo','Certificado Programador Web Full-Stack Junior.','assets/img/APLogo-20-20.png',1,NULL,NULL),(511,'2022','Presente','Codo a Codo Inicial','Programa de enseñanza en Programación.','https://user-images.githubusercontent.com/83146564/137408912-013f0d0c-37d1-4dc2-a1b5-77356c1003f3.png',1,NULL,NULL);
/*!40000 ALTER TABLE `estudio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiencia`
--

DROP TABLE IF EXISTS `experiencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `experiencia` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `subtitulo` varchar(200) DEFAULT NULL,
  `texto` varchar(200) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `Persona_id` int(11) NOT NULL,
  `link` varchar(200) DEFAULT NULL,
  `fecha_fin` varchar(255) DEFAULT NULL,
  `fecha_inicio` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Experiencia_Persona1_idx` (`Persona_id`),
  CONSTRAINT `fk_Experiencia_Persona1` FOREIGN KEY (`Persona_id`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiencia`
--

LOCK TABLES `experiencia` WRITE;
/*!40000 ALTER TABLE `experiencia` DISABLE KEYS */;
INSERT INTO `experiencia` VALUES (298,'Monarca Designs','Developer','Estudio para el desarrollo de soluciones basadas en internet y la web.','assets/img/monarca1.jpg',1,NULL,'Presente','2018'),(510,'Desire - App de citas y chat','Fundador en Desire - App de citas y chat.','Principal responsable del mantenimiento y funcionamiento.','https://play-lh.googleusercontent.com/JFyN7p2M4v7UeZis2hRqqDMTudTG2vAYA75ELRMJ-qQhgNt25H4QmkozkNV1O71tKn0=s128-rw',1,'https://play.google.com/store/apps/details?id=com.monarca.desire','Presente','2022');
/*!40000 ALTER TABLE `experiencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1088),(1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequences`
--

DROP TABLE IF EXISTS `hibernate_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) NOT NULL,
  `next_val` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sequence_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequences`
--

LOCK TABLES `hibernate_sequences` WRITE;
/*!40000 ALTER TABLE `hibernate_sequences` DISABLE KEYS */;
INSERT INTO `hibernate_sequences` VALUES ('default',4);
/*!40000 ALTER TABLE `hibernate_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensaje`
--

DROP TABLE IF EXISTS `mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mensaje` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `asunto` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mensaje` varchar(45) DEFAULT NULL,
  `Persona_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Mensaje_Persona1_idx` (`Persona_id`),
  CONSTRAINT `fk_Mensaje_Persona1` FOREIGN KEY (`Persona_id`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje`
--

LOCK TABLES `mensaje` WRITE;
/*!40000 ALTER TABLE `mensaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `noticias` (
  `id` bigint(20) NOT NULL,
  `persona_id` bigint(20) DEFAULT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `subtitulo` varchar(255) DEFAULT NULL,
  `texto` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pergfdsona`
--

DROP TABLE IF EXISTS `pergfdsona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pergfdsona` (
  `id` bigint(20) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pergfdsona`
--

LOCK TABLES `pergfdsona` WRITE;
/*!40000 ALTER TABLE `pergfdsona` DISABLE KEYS */;
/*!40000 ALTER TABLE `pergfdsona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `localidad` varchar(45) DEFAULT NULL,
  `titulo` varchar(45) DEFAULT NULL,
  `foto_perfil_url` varchar(200) DEFAULT NULL,
  `foto_portada` varchar(200) DEFAULT NULL,
  `canvas` bit(1) DEFAULT NULL,
  `densidad` varchar(255) DEFAULT NULL,
  `interactivo` bit(1) DEFAULT NULL,
  `particula` varchar(255) DEFAULT NULL,
  `velocidad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Lanfranco Darel','Caballero','Córdoba, Argentina.','Full Stack Developer Jr.','assets/img/yo.png','assets/img/banner.jpg',_binary '','high',_binary '','#ffff1f','fast'),(435,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(437,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(439,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(488,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(490,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(492,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(494,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(496,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(498,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proyecto` (
  `id` int(11) NOT NULL,
  `titulo` varchar(245) DEFAULT NULL,
  `texto` varchar(245) DEFAULT NULL,
  `logo` varchar(245) DEFAULT NULL,
  `Persona_id` bigint(20) DEFAULT NULL,
  `link` varchar(245) DEFAULT NULL,
  `subtitulo` varchar(245) DEFAULT NULL,
  `fecha_fin` varchar(255) DEFAULT NULL,
  `fecha_inicio` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index` (`Persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES (233,'Desire App de Citas y Chat','Desire App de Citas y Chat es una app de citas desarrollada para Android y con Firebase.','https://www.xtrafondos.com/wallpapers/resized/paisaje-digital-en-atardecer-5846.jpg?s=large',1,'https://play.google.com/store/apps/details?id=com.monarca.desire','App de citas para Android.','Presente','2022'),(532,'Proyecto Full Stack - Argentina Programa - #YoProgramo','El proyecto integrador full stack, es el trabajo práctico integrador final de la segunda etapa del programa Argentina Programa - #Yo programo. Creado con Angular, Spring Boot, JWT, Mysql entre otros.','https://play-lh.googleusercontent.com/JFyN7p2M4v7UeZis2hRqqDMTudTG2vAYA75ELRMJ-qQhgNt25H4QmkozkNV1O71tKn0=s128-rw',1,'https://angular-70dcf.firebaseapp.com/','Trabajo Práctico final integrador.','Presente','2022'),(533,'Monarca Designs','Monarca Designs es un estudio para el desarrollo de soluciones de la web e internet.\nSe implementan y ofrecen soluciones de acuerdo a los requerimientos de cada cliente con estándares como la escalabilidad, estabilidad y seguridad.','https://www.xtrafondos.com/wallpapers/resized/paisaje-digital-en-atardecer-5846.jpg?s=large',1,'','Un estudio para el desarrollo de soluciones.','Presente','2018');
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto_logo`
--

DROP TABLE IF EXISTS `proyecto_logo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `proyecto_logo` (
  `id` bigint(20) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_PROYECTOL_idx` (`proyecto_id`),
  CONSTRAINT `FK7xf5sifyptvfk7nbavym9r9dw` FOREIGN KEY (`proyecto_id`) REFERENCES `proyecto` (`id`),
  CONSTRAINT `SDSD` FOREIGN KEY (`proyecto_id`) REFERENCES `proyecto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto_logo`
--

LOCK TABLES `proyecto_logo` WRITE;
/*!40000 ALTER TABLE `proyecto_logo` DISABLE KEYS */;
INSERT INTO `proyecto_logo` VALUES (1049,'/assets/img/monarca1.jpg',NULL),(1050,'6',NULL),(1051,'9',NULL),(1052,'https://play-lh.googleusercontent.com/JFyN7p2M4v7UeZis2hRqqDMTudTG2vAYA75ELRMJ-qQhgNt25H4QmkozkNV1O71tKn0=s128-rw',233),(1053,'https://play-lh.googleusercontent.com/HkwvdBZCb6ElEzHKSAVL0lEhSprNVR1G72JOaJII2nhEK0cHFWg-wQ56L6GuLxhzSpY=w1052-h592-rw',233),(1054,'https://play-lh.googleusercontent.com/KhBm63XCZlq6EFC4ZVLx5gCpDaqKyhOB-rcMN81cnCh-zHq3cyrDCW49ud3O657DSHBG=w1052-h592-rw',233),(1055,'https://play-lh.googleusercontent.com/pl98tdhuQyzQ3jCnSPjl3Qp4r_E3e8kVxtIw2fD9OEJLMd3YKgi3EdeMHUh2yaOpLcoz=w1052-h592-rw',233),(1056,'https://play-lh.googleusercontent.com/LQzmCtWmk2n7xtfYjc396kvAIxt7jGQntqHJyGeKg1xuxhP5I3RU1vhf1cgpJBV6NQ=w1052-h592-rw',233),(1057,'https://play-lh.googleusercontent.com/GgHh4fBA4cySN-0qt4kqjthIBc3w790BqF1MkE4KEBDXZeAirne2kfBDfUHiVz0dyhK8=w1052-h592-rw',233),(1058,'',NULL),(1059,'assets/img/porta1.png',532),(1060,'assets/img/porta2.png',532),(1061,'assets/img/porta3.png',532),(1062,'assets/img/porta4.png',532),(1063,'assets/img/porta5.png',532),(1064,'/assets/img/monarca1.jpg',533),(1065,'fg',NULL),(1078,'https://www.gravatar.com/avatar/090069409887536f078fd716b54611c5?s=64&d=identicon&r=PG',NULL);
/*!40000 ALTER TABLE `proyecto_logo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `skill` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `porcentaje` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `Persona_id` int(11) NOT NULL,
  `texto` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Skill_Persona1_idx` (`Persona_id`),
  CONSTRAINT `fk_Skill_Persona1` FOREIGN KEY (`Persona_id`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (513,'HTML5/CSS3/Javascript','90','#ff8800',1,'Combinar JavaScript, HTML5 y CSS3 para crear páginas web que se ven bien en todos los dispositivos, plataformas y navegadores.','https://i.ibb.co/TLRM921/js.png'),(514,'Angular','85','#da1010',1,'Angular es un framework Javascript potente que permite el desarrollo de aplicaciones Frontend de manera óptima, mantenible y escalable.','https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Angular_full_color_logo.svg/1024px-Angular_full_color_logo.svg.png?20160527092314'),(520,'C#','70','#1ed006',1,'C#, es un lenguaje que destaca por su flexibilidad y potencia, que permite desarrollar desde aplicaciones móviles, videojuegos, páginas webs, aplicaciones de escritorio etc ...','https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/C_Sharp_wordmark.svg/1920px-C_Sharp_wordmark.svg.png'),(524,'Java','80','#566fd2',1,'Java es un lenguaje robusto/fiable, orientado a objetos, multiplataforma, open source que es utilizado en todo tipo de aplicaciones como también sistemas operativos y dispositivos.','assets/img/java.png'),(526,'PHP','78','#af60f0',1,'PHP es un lenguaje de programación de alto nivel, popular y utilizado en el desarrollo web por su rapidez, flexibilidad y practicidad.','https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/PHP-logo.svg/2880px-PHP-logo.svg.png'),(527,'C++','65','#b027ab',1,'C++ es un ejemplo de lenguaje de programación compilado, multiparadigma, principalmente de tipo imperativo y orientado a objetos, incluyendo también programación genérica y funcional.','https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/ISO_C%2B%2B_Logo.svg/400px-ISO_C%2B%2B_Logo.svg.png'),(528,'Android developer','90','#7acd56',1,'Crear el código, hacer correcciones, pruebas y diseñar la base de datos de los programas a instalar en los dispositivos, como por ejemplo las apps.','https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Android_logo_2019_%28stacked%29.svg/300px-Android_logo_2019_%28stacked%29.svg.png'),(529,'MySQL/MSSQL/NoSQL','70','#14cedb',1,'Soluciones RDBMS con diferencias técnicas entre ellas siendo las más utilizadas, excepto NoSQL que es una base de datos no relacional diseñadas para varios patrones de acceso a datos que incluyen aplicaciones de baja latencia.','https://s3.amazonaws.com/s3.timetoast.com/public/uploads/photo/15209372/image/8e0914bc4f363d17666b5a58c62263a4'),(530,'Servidores','88','#0192da',1,'Gestionar el sistema operativo del servidor, mantener la integridad del rendimiento del servidor, instalar y configurar el software nuevo y las actualizaciones, solucionar problemas y actualizar la información de cuentas de usuario etc.','https://labcollector.com/wp-content/uploads/1458792239_Web_Hosting.png'),(531,'GNU/Linux','85','#0e97b9',1,'Es la base estable para todas las cargas de trabajo e implementaciones de TI, tanto las tradicionales como las innovadoras, en cualquier entorno, ya sea con servidores dedicados, virtual, de nube o en contenedores.','https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/Gnulinux.svg/270px-Gnulinux.svg.png'),(1076,'Ciberseguridad','80','#9c2b78',1,'Evitar todo tipo de amenazas que ponen en riesgo la información procesada, transportada y almacenada en cualquier dispositivo. Actuando antes, durante y después para reducir el riesgo de exposición del usuario y de los sistemas.','https://1.bp.blogspot.com/-mtIULwTDFB4/XSwevYurXhI/AAAAAAAAFd0/k1mv0akFVQERLIbxnqmR2IEVKLrJ1FbaACLcBGAs/s1600/logus%2Bpocus.ico'),(1077,'Inglés','62','#224eb4',1,'Actitud lectrocomprensora para entender, evaluar, utilizar e implicarse con la lengua extranjera participando en la sociedad para alcanzar las metas y desarrollar el mayor potencial posible.','');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `activo` tinyint(4) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'test@test.io','ACA EL PASS EN bcrypt',1,'Lanfranco Caballero',NULL,NULL,NULL),(6,'jijo','OTRO USER PASS BCRYPT',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-01 21:11:04
