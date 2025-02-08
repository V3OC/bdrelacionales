-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2025 a las 01:59:21
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Víctor Emilio', 'Ojeda Castro', '23325061070496', '2008-09-28', 1, 'victor.ojeda23@cetis107.edu.mx\r\n', '6677554258'),
(2, 'Juan Pablo', 'Ochoa Hermosillo', '23325061070396', '2008-07-23', 1, 'juan.ochoah23@cetis107.edu.mx', '6674299546'),
(3, 'Alejandro', 'Tizoc Beltrán', '23325061070754', '2008-06-12', 0, 'alejandro.tizoc23@cetis107.edu.mx', '6673325893'),
(4, 'Jan Carlo', 'Martinez Quintero', '23325061070734', '2008-07-06', 1, 'jan.martinez24@cetis107.edu.mx', '6675720017'),
(5, 'Luis Angel', 'Perez Lozano', '23325061070985', '2008-06-09', 1, 'luis.perez23@cetis107.edu.mx', '6673090801'),
(6, 'David Sebastian', 'Payan Serrano', '23325061070056', '2008-11-05', 1, 'david.payan23@cetis107.edu.mx', '6674573001'),
(7, 'Jonathan Horus', 'Zazueta Hernandéz', '23325061070549', '2008-04-09', 1, 'jonathan.zazueta23@cetis107.edu.mx', '6677562259'),
(8, 'Sergio Braulio', 'Martínez Félix', '23325061070248', '2008-08-14', 1, 'sergio.martinez23@cetis107.edu.mx', '6672075250'),
(9, 'Rubi Esmeralda', 'Zepeda Garcia', '23325061070724', '2007-09-29', 0, 'rubi.zepeda23@cetis107.edu.mx', '6672075299'),
(10, 'Hugo Alejandro', 'Rubio Maldonado', '23325061070031', '2008-08-22', 1, 'hugo.rubio23@cetis107.edu.mx', '6672075245');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
