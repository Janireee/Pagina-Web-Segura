-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 17-12-2021 a las 11:33:50
-- Versión del servidor: 10.6.4-MariaDB-1:10.6.4+maria~focal
-- Versión de PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Erregistroa`
--

CREATE TABLE `Erregistroa` (
  `Erabiltzailea` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Izena` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Abizenak` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PostaKodea` int(11) NOT NULL,
  `NAN` char(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `JaiotzaData` date NOT NULL,
  `Pasahitza` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PostaElektronikoa` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Mugikorra` int(11) NOT NULL,
  `BankuDatuak` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `Erregistroa`
--

INSERT INTO `Erregistroa` (`Erabiltzailea`, `Izena`, `Abizenak`, `PostaKodea`, `NAN`, `JaiotzaData`, `Pasahitza`, `PostaElektronikoa`, `Mugikorra`, `BankuDatuak`) VALUES
('Gari45', 'Garikoitz', 'Salaberria', 48903, '79181000G', '2001-01-11', '1234', 'gari@gmail.com', 999888999, 'ES1234567890123456789012'),
('janire', 'hshhs', 'hshsh', 48903, '22761980F', '2001-12-14', 'Janire123!', 'hghg@gmail.com', 666666666, 'ES1234567891234567891234'),
('Janire12', 'Janire', 'Veganzones', 48903, '79181000G', '2001-12-14', 'Jani123?', 'janire@ehu.eus', 999888999, 'ES12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Loga`
--

CREATE TABLE `Loga` (
  `id` int(11) NOT NULL,
  `erabiltzaile` varchar(20) NOT NULL,
  `dat` date NOT NULL,
  `hordua` time NOT NULL,
  `saioaHasiDa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Loga`
--

INSERT INTO `Loga` (`id`, `erabiltzaile`, `dat`, `hordua`, `saioaHasiDa`) VALUES
(1, 'Juan', '2021-12-17', '00:56:00', 0),
(4, 'Gari45', '2021-12-17', '11:17:40', 0),
(9, 'kdkd', '2021-12-17', '11:29:57', 0),
(10, 'Gari45', '2021-12-17', '11:30:10', 0),
(11, 'Gari45', '2021-12-17', '11:30:19', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Produktuak`
--

CREATE TABLE `Produktuak` (
  `Kodea` int(11) NOT NULL,
  `Izena` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Mota` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Deskribapena` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prezioa` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Erregistroa`
--
ALTER TABLE `Erregistroa`
  ADD PRIMARY KEY (`Erabiltzailea`);

--
-- Indices de la tabla `Loga`
--
ALTER TABLE `Loga`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Produktuak`
--
ALTER TABLE `Produktuak`
  ADD PRIMARY KEY (`Kodea`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Loga`
--
ALTER TABLE `Loga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `Produktuak`
--
ALTER TABLE `Produktuak`
  MODIFY `Kodea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
