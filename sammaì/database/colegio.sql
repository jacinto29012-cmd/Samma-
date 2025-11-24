-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2025 a las 05:04:30
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `colegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id_matricula` int(5) NOT NULL,
  `especilidad` varchar(20) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `fecha_nac` date NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `telefono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_matricula`, `especilidad`, `nombre`, `apellidos`, `fecha_nac`, `direccion`, `telefono`) VALUES
(1001, 'Programacion', 'Luis', 'Perez Diaz', '2008-05-10', 'Av. Hidalgo #45', 554321987),
(1002, 'Contabilidad', 'Ana', 'Torres Ruiz', '2007-03-12', 'Calle REFORMA #88', 551234876),
(1003, 'Diseño', 'Carlos', 'Gomez Leon', '2008-10-22', 'Morelos #13', 553216789),
(1004, 'Programacion', 'Mariana', 'Lopez Ortiz', '2008-01-05', 'Insurgentes #110', 552345678),
(1005, 'Contabilidad', 'Sofia', 'Ramirez Vega', '2007-07-18', 'Zaragoza #20', 554567234);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegiaturas`
--

CREATE TABLE `colegiaturas` (
  `id_matricula` int(5) NOT NULL,
  `especialidad` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `semestre` varchar(10) NOT NULL,
  `monto` int(5) NOT NULL,
  `concepto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `colegiaturas`
--

INSERT INTO `colegiaturas` (`id_matricula`, `especialidad`, `nombre`, `apellidos`, `semestre`, `monto`, `concepto`) VALUES
(1001, 'Programacion', 'Luis', 'Perez Diaz', '4B', 1500, 'Pago febrero'),
(1002, 'Contabilidad', 'Ana', 'Torres Ruiz', '5A', 1500, 'Pago febrero'),
(1003, 'Diseño', 'Carlos', 'Gomez Leon', '3C', 1500, 'Pago febrero'),
(1004, 'Programacion', 'Mariana', 'Lopez Ortiz', '4B', 1500, 'Pago febrero'),
(1005, 'Contabilidad', 'Sofia', 'Ramirez Vega', '5A', 1500, 'Pago febrero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kardex`
--

CREATE TABLE `kardex` (
  `id_folio` int(5) NOT NULL,
  `id_matricula` int(5) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `especilidad` varchar(20) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `feche_egreso` date NOT NULL,
  `promedio` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `kardex`
--

INSERT INTO `kardex` (`id_folio`, `id_matricula`, `nombre`, `apellidos`, `especilidad`, `fecha_ingreso`, `feche_egreso`, `promedio`) VALUES
(1, 1001, 'Luis', 'Perez', 'Programacion', '2024-01-10', '2024-06-30', 85),
(2, 1002, 'Ana', 'Torres ', 'Contabilidad', '2024-01-10', '2024-06-30', 90),
(3, 1003, 'Carlos', 'Gomez', 'Diseño', '2024-01-10', '2024-06-30', 78),
(4, 1004, 'Mariana', 'Lopez', 'Programacion', '2024-01-10', '2024-06-30', 92),
(5, 1005, 'Sofia', 'Ramirez', 'Contabilidad', '2024-01-10', '2024-06-30', 88);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `no_empleado` int(5) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `fecha_nac` date NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `telefono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`no_empleado`, `nombre`, `apellidos`, `fecha_nac`, `direccion`, `telefono`) VALUES
(1, 'Juan', 'Hernandez Lopez', '1980-05-02', 'Calle Juarez #45', 554321111),
(2, 'Laura', 'Castillo Ramos', '1985-01-10', 'Morelos #50', 553456789),
(3, 'Pedro', 'Morales Diaz', '1978-01-17', 'Independencia #67', 551236589),
(4, 'Maria', 'Sanchez Peres', '1982-06-10', 'Reforma #12', 552345987),
(5, 'Fernando', 'Ruiz Ramirez', '1988-03-14', 'Av. Juarez #99', 554567888);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id_matricula`);

--
-- Indices de la tabla `colegiaturas`
--
ALTER TABLE `colegiaturas`
  ADD PRIMARY KEY (`id_matricula`);

--
-- Indices de la tabla `kardex`
--
ALTER TABLE `kardex`
  ADD PRIMARY KEY (`id_folio`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`no_empleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
