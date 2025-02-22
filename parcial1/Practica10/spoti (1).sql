-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2025 a las 02:16:21
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
-- Base de datos: `spoti`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artisacanciones`
--

CREATE TABLE `artisacanciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripción` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripción`) VALUES
(1, 'Ariana Grande', 'Ariana Grande-Butera ​ es una cantante, compositora, actriz y empresaria estadounidense.​ Comenzó su carrera musical en Broadway a los 15 años en el musical 13. '),
(2, ' Freddie Mercury', 'Freddie Mercury fue un cantante y compositor británico, conocido mundialmente por haber sido el vocalista principal y pianista de la banda de rock Queen'),
(3, 'Eminem', 'Marshall Bruce Mathers III, conocido artísticamente como Eminem, es un rapero, productor y actor estadounidense. Se le atribuye la popularización del hip-hop en las clases medias y altas de Estados Unidos y es aclamado por la crítica como uno de los mejores raperos de todos los tiempos.'),
(4, 'Maluma', 'Juan Luis Londoño Arias, conocido artísticamente como Maluma, es un cantante y compositor colombiano.​ Saltó a la fama en su país natal en 2011, gracias a los sencillos «Farandulera», «Obsesión», y «La temperatura»; y con «Carnaval», en el resto de América Latina'),
(5, 'Gerardo Ortiz', 'Cesar Gerardo Ortiz, más conocido como Gerardo Ortiz, es un cantante y compositor mexicano-estadounidense de música regional mexicana. Es especialmente famoso por sus corridos progresivos'),
(6, 'Rodolfo Aicardi', 'Marco Tulio Aicardi Rivera, conocido artísticamente como Rodolfo Aicardi, fue un cantautor colombiano-italiano de música tropical como la cumbia y el merengue, también incursionó en los géneros de bolero y romántica.​ '),
(7, 'Natanael Cano', 'Nathanahel Rubén Cano Monge es un cantante y compositor mexicano dedicado principalmente al género musical corridos tumbados, además de ser acreditado como precursor del mismo.​Publicó su primer álbum de estudio Todo es diferente en 2019 a través de la compañía discográfica independiente La R Record'),
(8, 'Louis Armstrong', 'Louis Daniel Armstrong​​, también conocido como Satchmo o Pops, fue un trompetista y cantante estadounidense de jazz. Se trata de una de las figuras más carismáticas e innovadoras de la historia del jazz y, probablemente, su músico más popular.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duración` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duración`, `fecha`, `activo`, `foto`) VALUES
(1, 'Stayin\'Alive', 1, '01:32:00', '0000-00-00', 1, 'Bee Gees'),
(2, 'living on my own', 2, '00:03:38', '1985-06-05', 1, 'freddie mercury'),
(3, 'the greet pretender', 2, '00:03:26', '1985-05-05', 1, 'freddie mercury'),
(4, 'I was born to love you', 2, '00:03:39', '1985-06-10', 1, 'freddie mercury'),
(5, 'love is the hero', 2, '00:05:09', '1996-06-02', 1, 'feddie mercury'),
(6, 'time waits for no one ', 2, '00:03:23', '1996-06-16', 1, 'freddie mercury'),
(7, 'the golden boy', 2, '00:06:03', '1996-09-10', 1, 'freddie mercury'),
(8, 'we can\'t be friends', 1, '00:03:48', '2024-05-02', 1, 'Ariana Grande '),
(9, 'bye', 1, '00:02:44', '2024-05-02', 1, 'Ariana Grande'),
(10, 'eternal sunshine', 1, '00:03:30', '2024-05-02', 1, 'Ariana Grande'),
(11, 'true story', 1, '00:02:43', '2024-05-02', 1, 'Ariana Grande'),
(12, 'the boy is mine', 1, '00:02:54', '2024-05-02', 1, 'Ariana Grande'),
(13, 'imperfect for you', 1, '00:03:02', '2024-05-02', 1, 'Ariana Grande'),
(14, 'whithout me ', 3, '00:04:05', '2002-05-26', 1, 'Eminem'),
(15, 'Superman', 3, '00:05:05', '2002-05-26', 1, 'Eminem'),
(16, 'soldier', 3, '00:03:46', '2002-05-26', 1, 'Eminem'),
(17, 'white America', 3, '00:05:24', '2002-05-26', 1, 'Eminem'),
(18, 'Business', 3, '00:04:11', '2002-05-26', 1, 'Eminem'),
(19, 'square dance', 3, '00:05:23', '2002-05-26', 1, 'Eminem'),
(20, 'Borro Cassette', 4, '00:03:27', '2015-09-30', 1, 'Maluma'),
(21, 'El Perdedor ', 4, '00:03:26', '2015-09-30', 1, 'Maluma'),
(22, 'Me Gustas', 4, '00:03:38', '2015-09-30', 1, 'Maluma'),
(23, 'Sin Contrato', 4, '00:03:41', '2015-09-30', 1, 'Maluma'),
(24, 'Recuerdame', 4, '00:03:08', '2015-09-30', 1, 'Maluma'),
(25, 'La Misma Moneda', 4, '00:03:39', '2015-09-30', 1, 'Maluma');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'pop'),
(2, 'rock'),
(3, 'rap'),
(4, 'reggaetón'),
(5, 'banda'),
(6, 'cumbia'),
(7, 'corridos tumbados'),
(8, 'jazz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripciones` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `descripciones`, `precio`) VALUES
(1, '1 cuenta Premium\r\n\r\nCancela en cualquier momento\r\n\r\nPago por suscripción o pago único', 129),
(2, '\r\n1 cuenta Premium verificada\r\n\r\nDescuento para estudiantes que cumplen con los requisitos\r\n\r\nCancel', 69),
(3, '2 cuentas Premium\r\n\r\nCancela en cualquier momento\r\n\r\nPago por suscripción o pago único', 169),
(4, 'Hasta 6 cuentas Kids o Premium\r\n\r\nControla el contenido marcado como explícito.\r\n\r\nAcceso a Spotify ', 200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playliscanciones`
--

CREATE TABLE `playliscanciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duración` time NOT NULL,
  `totalcanciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Luis Ángel Pérez lozano', 'luis.peerez23@cetis107.edu.mx', 3),
(2, 'Víctor Ojeda castro ', 'victor.ojeda23@cetis107.edu.mx', 1),
(3, 'juan pablo Ochoa', 'juan.ochoa23@cetis107.edu.mx\r\n', 1),
(4, 'Isaac Chávez moreno ', 'isaac.chavez23@cetis107.edu.mx', 1),
(5, 'Alejandro tizoc Beltrán ', 'alejandro.tizoc23@cetis107.edu.mx', 2),
(6, 'mateo Ibarra Gastelum', 'mateo.ibarra23@cetis107.edu.mx', 3),
(7, 'Krisell Betina Angulo García', 'krisell.angulo23@cetis107.edu.mx\r\n', 1),
(8, 'Rosselin esparza Uriarte', 'rosselin.uriarte23@cetis107.edu.mx\r\n', 1),
(9, 'Ana Sofia delgado German', 'ana.german23@cetis107.edu.mx\r\n', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playliscanciones`
--
ALTER TABLE `playliscanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `playliscanciones`
--
ALTER TABLE `playliscanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  ADD CONSTRAINT `artisacanciones_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `artisacanciones_ibfk_2` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `playliscanciones`
--
ALTER TABLE `playliscanciones`
  ADD CONSTRAINT `playliscanciones_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playliscanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playliscanciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
