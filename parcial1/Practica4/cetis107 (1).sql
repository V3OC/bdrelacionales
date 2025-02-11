-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2025 a las 00:40:54
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
(10, 'Hugo Alejandro', 'Rubio Maldonado', '23325061070031', '2008-08-22', 1, 'hugo.rubio23@cetis107.edu.mx', '6672075245'),
(11, 'Mateo', 'Ibarra Gastelum', '23325061070547', '2008-01-11', 1, 'mateo.ibar09@gmail.com', '6678619006');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Construcción', 'La especialidad de Construcción del CETIS 107 forma técnicos capacitados en diseño, gestión y ejecución de proyectos de construcción, abarcando desde la interpretación de planos hasta la supervisión de obras, con enfoque en seguridad, calidad y prácticas profesionales.'),
(2, 'Programación', 'La especialidad de Programación del CETIS 107 capacita a los estudiantes en el desarrollo de software, bases de datos y aplicaciones, utilizando lenguajes y herramientas actuales. Forman profesionales capaces de diseñar, implementar y mantener sistemas informáticos eficientes.'),
(3, 'Diseño Grafico', 'La especialidad de Diseño Gráfico del CETIS 107 prepara a los estudiantes en la creación de piezas visuales para comunicación digital e impresa. Aprenden a manejar software de diseño, técnicas de ilustración y fundamentos de branding, publicidad y diseño web.'),
(4, 'Ofimatica', 'La especialidad de Ofimática del CETIS 107 capacita a los estudiantes en el manejo de herramientas digitales como procesadores de texto, hojas de cálculo y presentaciones, así como en la gestión de información y la automatización de tareas administrativas para mejorar la productividad.\r\n\r\n\r\n\r\n\r\n'),
(5, 'Electronica', 'La especialidad de Electrónica del CETIS 107 forma profesionales capacitados en el diseño, mantenimiento y reparación de circuitos electrónicos y sistemas automatizados. Los estudiantes aprenden a trabajar con componentes electrónicos, redes y tecnologías de control, aplicando conocimientos práctico'),
(6, 'Contabilidad', 'La especialidad de Contabilidad del CETIS 107 capacita a los estudiantes en la gestión y registro de información financiera. Aprenden a realizar estados financieros, auditorías, cálculo de impuestos y la administración de recursos, utilizando herramientas contables y normativas vigentes.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id`, `nombre`, `correo`, `genero`, `fecha_nacimiento`) VALUES
(1, 'Jorge Ibarra Quintero', 'ibarra.quintero@cetis107.edu.mx', 1, '1890-05-25'),
(2, 'Lupita Guadalupe Ruelas Astorga', 'lupita.ruelas@cetis107.edu.mx', 0, '1890-04-20'),
(3, 'Jose Francisco Rochin Gonzalez', 'rochin.gonzales@cetis107.edu.mx', 1, '1990-03-21'),
(4, 'Maria de Jesus Verduzco', 'maria.verduzco@cetis107.edu.mx', 0, '1990-01-12'),
(5, 'Luis Carlos Santillan', 'carlos.santillan@cetis107.edu.mx', 1, '1990-04-11'),
(6, 'Liliana Espinoza Juarez', 'juarez.liliana@cetis107.edu.mx', 0, '1890-04-22'),
(7, 'Maria Teresa Sepulveda Lomas', 'maria.lomas@cetis107.edu.mx', 0, '1990-09-24'),
(8, 'Pedro Noe del Real', 'pedro.noe@cetis107.edu.mx', 1, '1890-07-12'),
(9, 'Ivan Berdusco', 'berdusco.ivan@cetis107.edu.mx', 1, '1990-02-01'),
(10, 'Angel Luis Perez Lozoya', 'perez.angel@cetis107.edu.mx', 1, '1990-06-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `semestre`) VALUES
(1, 'Matemáticas', 4),
(2, 'Inglés', 4),
(3, 'Reacciones Químicas', 4),
(4, 'Historia', 4),
(5, 'Base de Datos Relacionales', 4),
(6, 'Base de Datos No Relacionales', 4),
(7, 'Ciencias Sociales', 4),
(8, 'Tutorías', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
