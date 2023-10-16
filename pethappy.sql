-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2023 a las 10:30:02
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pethappy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historialpagos`
--

CREATE TABLE `historialpagos` (
  `IDHistorialPagos` int(11) NOT NULL,
  `FechaPagado` datetime DEFAULT NULL,
  `TipoPago` char(20) NOT NULL,
  `IDPagoNuevo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagonuevo`
--

CREATE TABLE `pagonuevo` (
  `IDPagoNuevo` int(11) NOT NULL,
  `NombreDueno` char(40) NOT NULL,
  `NombrePaciente` char(40) NOT NULL,
  `edadPaciente` int(11) NOT NULL,
  `pesoPaciente` float NOT NULL,
  `EspeciePaciente` char(20) NOT NULL,
  `GeneroPaciente` char(10) NOT NULL,
  `TipoTratamiento` char(15) NOT NULL,
  `detalles` char(200) NOT NULL,
  `IDRegistro` int(11) NOT NULL,
  `IDReserva` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registroproducto`
--

CREATE TABLE `registroproducto` (
  `IDRegistro` int(11) NOT NULL,
  `NombreProducto` char(40) NOT NULL,
  `CantidadProducto` int(11) NOT NULL,
  `FV` datetime NOT NULL,
  `PrecioProducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservar`
--

CREATE TABLE `reservar` (
  `IDReserva` int(11) NOT NULL,
  `NombreDueno` char(40) NOT NULL,
  `NombreMascota` char(40) NOT NULL,
  `FechaRegistro` datetime DEFAULT NULL,
  `fechaAtencion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `historialpagos`
--
ALTER TABLE `historialpagos`
  ADD PRIMARY KEY (`IDHistorialPagos`);

--
-- Indices de la tabla `pagonuevo`
--
ALTER TABLE `pagonuevo`
  ADD PRIMARY KEY (`IDPagoNuevo`);

--
-- Indices de la tabla `registroproducto`
--
ALTER TABLE `registroproducto`
  ADD PRIMARY KEY (`IDRegistro`);

--
-- Indices de la tabla `reservar`
--
ALTER TABLE `reservar`
  ADD PRIMARY KEY (`IDReserva`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
