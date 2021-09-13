-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-09-2021 a las 21:39:24
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `soporte_tecnico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diag_prob_hard`
--

CREATE TABLE `diag_prob_hard` (
  `id_diag_prob_hard` int(11) NOT NULL,
  `pos_diag_prob_hard` varchar(255) NOT NULL,
  `tipo_diag_prob_hard` varchar(255) NOT NULL,
  `desc_diag_pro_hard` varchar(255) NOT NULL,
  `id_prob_hard` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diag_prob_soft`
--

CREATE TABLE `diag_prob_soft` (
  `id_diag_prob_soft` int(11) NOT NULL,
  `pos_diag_prob_soft` varchar(255) NOT NULL,
  `tipo_diag_prob_soft` varchar(255) NOT NULL,
  `desc_diag_pro_soft` varchar(255) NOT NULL,
  `id_prob_spft` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo_computación`
--

CREATE TABLE `equipo_computación` (
  `id_equi_com` int(11) NOT NULL,
  `nom_equi_com` varchar(255) NOT NULL,
  `desc_equi_com` varchar(255) NOT NULL,
  `serial_equi_com` varchar(255) NOT NULL,
  `marca_equi_com` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipo_computación`
--

INSERT INTO `equipo_computación` (`id_equi_com`, `nom_equi_com`, `desc_equi_com`, `serial_equi_com`, `marca_equi_com`) VALUES
(1, 'monitor', 'monitor lcd de 21\"', '1234567', 'samnsung'),
(2, 'lector de huellas decadactilar', 'Decadactilar marca Dermalog FL10', '54321', 'dermalog'),
(3, 'monitor', 'monitor lcd de 21\"', '1234567', 'samnsung'),
(4, 'lector de huellas decadactilar', 'Decadactilar marca Dermalog FL10', '54321', 'dermalog');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hardware`
--

CREATE TABLE `hardware` (
  `id_hard` int(11) NOT NULL,
  `nom_hard` varchar(255) NOT NULL,
  `marca_hard` varchar(255) NOT NULL,
  `tipo_hard` varchar(255) NOT NULL,
  `carac_hard` varchar(255) NOT NULL,
  `id_equi_comp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `problemas_hardware`
--

CREATE TABLE `problemas_hardware` (
  `id_prob_hard` int(11) NOT NULL,
  `caracte_proble_hard` varchar(255) NOT NULL,
  `id_hard` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `problemas_software`
--

CREATE TABLE `problemas_software` (
  `id_prob_soft` int(11) NOT NULL,
  `descr_prob_soft` varchar(255) NOT NULL,
  `id_soft` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `software`
--

CREATE TABLE `software` (
  `id_soft` int(11) NOT NULL,
  `nom_soft` varchar(255) NOT NULL,
  `tipo_soft` varchar(255) NOT NULL,
  `version_soft` varchar(255) NOT NULL,
  `desc_soft` varchar(255) NOT NULL,
  `id_equi_comp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solu_diag_problema_hard`
--

CREATE TABLE `solu_diag_problema_hard` (
  `id_solu_diag_pro_hard` int(11) NOT NULL,
  `pos_solu_diag_pro_hard` varchar(255) NOT NULL,
  `descri_solu_diag_pro_hard` varchar(255) NOT NULL,
  `id_diag_prob_hard` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solu_diag_problema_soft`
--

CREATE TABLE `solu_diag_problema_soft` (
  `id_solu_diag_pro_soft` int(11) NOT NULL,
  `pos_solu_diag_pro_soft` varchar(255) NOT NULL,
  `descri_solu_diag_pro_soft` varchar(255) NOT NULL,
  `id_diag_prob_soft` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `diag_prob_hard`
--
ALTER TABLE `diag_prob_hard`
  ADD PRIMARY KEY (`id_diag_prob_hard`);

--
-- Indices de la tabla `diag_prob_soft`
--
ALTER TABLE `diag_prob_soft`
  ADD PRIMARY KEY (`id_diag_prob_soft`);

--
-- Indices de la tabla `equipo_computación`
--
ALTER TABLE `equipo_computación`
  ADD PRIMARY KEY (`id_equi_com`);

--
-- Indices de la tabla `hardware`
--
ALTER TABLE `hardware`
  ADD PRIMARY KEY (`id_hard`);

--
-- Indices de la tabla `problemas_hardware`
--
ALTER TABLE `problemas_hardware`
  ADD PRIMARY KEY (`id_prob_hard`);

--
-- Indices de la tabla `problemas_software`
--
ALTER TABLE `problemas_software`
  ADD PRIMARY KEY (`id_prob_soft`);

--
-- Indices de la tabla `software`
--
ALTER TABLE `software`
  ADD PRIMARY KEY (`id_soft`);

--
-- Indices de la tabla `solu_diag_problema_hard`
--
ALTER TABLE `solu_diag_problema_hard`
  ADD PRIMARY KEY (`id_solu_diag_pro_hard`);

--
-- Indices de la tabla `solu_diag_problema_soft`
--
ALTER TABLE `solu_diag_problema_soft`
  ADD PRIMARY KEY (`id_solu_diag_pro_soft`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `diag_prob_hard`
--
ALTER TABLE `diag_prob_hard`
  MODIFY `id_diag_prob_hard` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `diag_prob_soft`
--
ALTER TABLE `diag_prob_soft`
  MODIFY `id_diag_prob_soft` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `equipo_computación`
--
ALTER TABLE `equipo_computación`
  MODIFY `id_equi_com` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `hardware`
--
ALTER TABLE `hardware`
  MODIFY `id_hard` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `problemas_hardware`
--
ALTER TABLE `problemas_hardware`
  MODIFY `id_prob_hard` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `problemas_software`
--
ALTER TABLE `problemas_software`
  MODIFY `id_prob_soft` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `software`
--
ALTER TABLE `software`
  MODIFY `id_soft` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solu_diag_problema_hard`
--
ALTER TABLE `solu_diag_problema_hard`
  MODIFY `id_solu_diag_pro_hard` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solu_diag_problema_soft`
--
ALTER TABLE `solu_diag_problema_soft`
  MODIFY `id_solu_diag_pro_soft` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
