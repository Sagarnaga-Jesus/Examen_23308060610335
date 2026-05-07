-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.28-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.15.0.7171
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla registro.tareas
CREATE TABLE IF NOT EXISTS `tareas` (
  `id_tarea` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT NULL,
  `fecha_limite` date DEFAULT '0000-00-00',
  `hora_limite` time DEFAULT '00:00:00',
  `prioridad` varchar(300) DEFAULT NULL,
  `clasificacion` varchar(300) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tarea`),
  KEY `fk_usuario_tarea` (`id_usuario`),
  CONSTRAINT `fk_usuario_tarea` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla registro.tareas: ~4 rows (aproximadamente)
DELETE FROM `tareas`;
INSERT INTO `tareas` (`id_tarea`, `id_usuario`, `titulo`, `descripcion`, `fecha_creacion`, `fecha_limite`, `hora_limite`, `prioridad`, `clasificacion`, `estado`) VALUES
	(1, 1, 'hola', '', NULL, '0000-00-00', '00:00:00', 'media', 'trabajo', NULL),
	(3, 2, 'rdffhhfh', 'hffhfhhffh', NULL, '0000-00-00', '00:00:00', 'Baja', 'Trabajo', 'Terminada'),
	(4, 2, 'fgfgffgd', 'hhdfgf', NULL, '0000-00-00', '00:00:00', 'Media', 'Trabajo', 'Pendiente'),
	(5, 3, 'dhffh', 'ffhfhh', NULL, '0000-00-00', '00:00:00', 'Media', 'Personal', 'Terminada');

-- Volcando estructura para tabla registro.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `contraseña` varchar(300) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `fecha_registro` timestamp NULL DEFAULT NULL,
  `ultimo_ingreso` timestamp NULL DEFAULT NULL,
  `activo` varchar(10) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla registro.usuario: ~3 rows (aproximadamente)
DELETE FROM `usuario`;
INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido`, `email`, `contraseña`, `telefono`, `fecha_registro`, `ultimo_ingreso`, `activo`, `foto`) VALUES
	(1, 'Admin', 'Admins', 'Admin@gmail.com', 'Admin#19', '6562321212', '2026-03-19 11:24:00', '2026-03-19 11:24:02', 'inactivo', NULL),
	(2, 'Examen', 'examenes', 'examen@gmail.com', '$2b$12$vl7f.bMmO6OA4BMGYdDfF.C4I7rHfgRHebu2VS.icWx4ARkJsscGK', '7894561230', '2026-05-07 05:00:00', '2026-05-07 15:35:54', 'activo', '512px-0385_Porsche_Diesel_Bus_blau.webp'),
	(3, 'Examne', 'asfsf', 'examenes@gmail.com', '$2b$12$iLhUCTKpQuC/7j1XASUrlePzddhDk8tD3xCIc1q3TKP9a33z3Ajm6', '77894561230', '2026-05-07 05:00:00', '2026-05-07 15:44:10', 'inactivo', '512px-0385_Porsche_Diesel_Bus_blau.webp');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
