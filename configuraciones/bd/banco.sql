-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 14-05-2024 a las 17:25:03
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `banco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `cliente_id` int NOT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `persona_persona_id` int DEFAULT NULL,
  PRIMARY KEY (`cliente_id`),
  UNIQUE KEY `UK_ad09b6n7ousdabaak1umj26ui` (`persona_persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cliente_id`, `contrasena`, `estado`, `persona_persona_id`) VALUES
(1, '5678', 'verdadero', 2),
(3, '1234', 'verdadero', 1),
(4, '1245', 'verdadero', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente_seq`
--

DROP TABLE IF EXISTS `cliente_seq`;
CREATE TABLE IF NOT EXISTS `cliente_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `cliente_seq`
--

INSERT INTO `cliente_seq` (`next_val`) VALUES
(101);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

DROP TABLE IF EXISTS `cuenta`;
CREATE TABLE IF NOT EXISTS `cuenta` (
  `cuenta_id` int NOT NULL,
  `estado` bit(1) NOT NULL,
  `numero_cuenta` int NOT NULL,
  `saldo_inicial` double NOT NULL,
  `cliente_cliente_id` int DEFAULT NULL,
  `tipo_cuenta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cuenta_id`),
  KEY `FK1dnkiiaort65sek12scjdblux` (`cliente_cliente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`cuenta_id`, `estado`, `numero_cuenta`, `saldo_inicial`, `cliente_cliente_id`, `tipo_cuenta`) VALUES
(2, b'0', 225487, 700, 1, 'Corriente'),
(53, b'0', 478758, 1425, 3, 'Ahorros'),
(54, b'1', 496825, 0, 1, 'Ahorros'),
(102, b'1', 495878, 150, 4, 'Ahorros'),
(152, b'1', 585545, 1000, 3, 'Corriente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta_seq`
--

DROP TABLE IF EXISTS `cuenta_seq`;
CREATE TABLE IF NOT EXISTS `cuenta_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `cuenta_seq`
--

INSERT INTO `cuenta_seq` (`next_val`) VALUES
(251);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

DROP TABLE IF EXISTS `movimientos`;
CREATE TABLE IF NOT EXISTS `movimientos` (
  `movimiento_id` int NOT NULL,
  `fecha` datetime(6) DEFAULT NULL,
  `saldo` double NOT NULL,
  `tipo_movimiento` varchar(255) DEFAULT NULL,
  `valor` double NOT NULL,
  `cuenta_cuenta_id` int DEFAULT NULL,
  PRIMARY KEY (`movimiento_id`),
  KEY `FK9skv4ckaq0a476rvku3mhj4hn` (`cuenta_cuenta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`movimiento_id`, `fecha`, `saldo`, `tipo_movimiento`, `valor`, `cuenta_cuenta_id`) VALUES
(902, '2024-05-12 19:27:24.933000', 700, 'Deposito de 600', 600, 2),
(903, '2024-05-10 19:29:53.728000', 1425, 'Retiro de 575', 575, 53),
(1002, '2024-05-12 19:48:39.952000', 0, 'Retiro de 540', 540, 54),
(1102, '2024-05-12 20:01:50.482000', 150, 'Deposito de 150', 150, 102);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos_seq`
--

DROP TABLE IF EXISTS `movimientos_seq`;
CREATE TABLE IF NOT EXISTS `movimientos_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `movimientos_seq`
--

INSERT INTO `movimientos_seq` (`next_val`) VALUES
(1201);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `persona_id` int NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `identificacion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` int NOT NULL,
  `edad` int NOT NULL,
  PRIMARY KEY (`persona_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`persona_id`, `direccion`, `genero`, `identificacion`, `nombre`, `telefono`, `edad`) VALUES
(1, 'Otavalo sn y principal', 'Masculino', '177626345', 'Jose Lema', 988254785, 34),
(2, 'Amazonas y NNUU', 'Femenino', '172354757', 'Marianela Montalvo', 97548965, 31),
(3, '13 junio y Equinoccial', 'Masculino', '172847576', 'Juan Osorio', 98874587, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_seq`
--

DROP TABLE IF EXISTS `persona_seq`;
CREATE TABLE IF NOT EXISTS `persona_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `persona_seq`
--

INSERT INTO `persona_seq` (`next_val`) VALUES
(201);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `FKsx672v0wwantxy6x4tguuwbw7` FOREIGN KEY (`persona_persona_id`) REFERENCES `persona` (`persona_id`);

--
-- Filtros para la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD CONSTRAINT `FK1dnkiiaort65sek12scjdblux` FOREIGN KEY (`cliente_cliente_id`) REFERENCES `cliente` (`cliente_id`);

--
-- Filtros para la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD CONSTRAINT `FK9skv4ckaq0a476rvku3mhj4hn` FOREIGN KEY (`cuenta_cuenta_id`) REFERENCES `cuenta` (`cuenta_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
