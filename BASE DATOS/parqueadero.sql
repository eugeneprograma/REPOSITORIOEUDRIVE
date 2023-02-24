-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2023 at 09:00 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parqueadero`
--
CREATE DATABASE IF NOT EXISTS `parqueadero` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `parqueadero`;

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--
-- Creation: Feb 23, 2023 at 11:05 PM
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
  `ID.CATEGORIA` int(5) NOT NULL,
  `codigo.cat` int(5) NOT NULL,
  `nombre.cat` varchar(500) NOT NULL,
  `descripcion.cat` varchar(500) NOT NULL,
  `fecha.cat` date NOT NULL,
  `observ.cat` varchar(500) DEFAULT NULL,
  `img.cat` varchar(500) DEFAULT NULL,
  `ID.MARCA` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `categorias`:
--   `ID.MARCA`
--       `marcas` -> `ID.MARCA`
--

-- --------------------------------------------------------

--
-- Table structure for table `marcas`
--
-- Creation: Feb 23, 2023 at 11:11 PM
--

DROP TABLE IF EXISTS `marcas`;
CREATE TABLE `marcas` (
  `ID.MARCA` int(5) NOT NULL,
  `nombrre.marca` varchar(500) NOT NULL,
  `descrip.marca` varchar(500) NOT NULL,
  `img.marca` varchar(500) NOT NULL,
  `fecha.marca` date NOT NULL,
  `observ.marca` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `marcas`:
--

-- --------------------------------------------------------

--
-- Table structure for table `propietarios`
--
-- Creation: Feb 23, 2023 at 11:21 PM
--

DROP TABLE IF EXISTS `propietarios`;
CREATE TABLE `propietarios` (
  `ID.PROPIETARIO` int(5) NOT NULL,
  `fecha.reg.propiet` date NOT NULL,
  `nombre.propiet` varchar(500) NOT NULL,
  `identif.propiet` varchar(500) NOT NULL,
  `observacion.propiet` varchar(500) DEFAULT NULL,
  `celular.propiet` varchar(500) NOT NULL,
  `direccion.propiet` varchar(500) DEFAULT NULL,
  `telefono.propiet` varchar(500) NOT NULL,
  `email.propiet` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `propietarios`:
--

-- --------------------------------------------------------

--
-- Table structure for table `servicios`
--
-- Creation: Feb 23, 2023 at 11:26 PM
--

DROP TABLE IF EXISTS `servicios`;
CREATE TABLE `servicios` (
  `ID.VECHICULO` int(5) NOT NULL,
  `ID.PROPIETARIO` int(5) NOT NULL,
  `fecha.serv` date NOT NULL,
  `hora.serv` date NOT NULL,
  `impr.servicio` varchar(500) DEFAULT NULL,
  `obseervacion.serv` varchar(500) DEFAULT NULL,
  `descuento.serv` int(5) NOT NULL,
  `valor.serv` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `servicios`:
--   `ID.PROPIETARIO`
--       `propietarios` -> `ID.PROPIETARIO`
--   `ID.VECHICULO`
--       `vehiculos` -> `ID.VECHICULO`
--

-- --------------------------------------------------------

--
-- Table structure for table `vehiculos`
--
-- Creation: Feb 23, 2023 at 11:16 PM
--

DROP TABLE IF EXISTS `vehiculos`;
CREATE TABLE `vehiculos` (
  `ID.VECHICULO` int(5) NOT NULL,
  `ID.CATEGORIA` int(5) NOT NULL,
  `modelo.vehiculo` varchar(500) NOT NULL,
  `placa.vehiculo` varchar(500) NOT NULL,
  `color.vehiculo` varchar(500) DEFAULT NULL,
  `observ.vehiculo` varchar(500) DEFAULT NULL,
  `img.vehiculo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- RELATIONSHIPS FOR TABLE `vehiculos`:
--   `ID.CATEGORIA`
--       `categorias` -> `ID.CATEGORIA`
--

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`ID.CATEGORIA`),
  ADD UNIQUE KEY `descripcion.cat` (`descripcion.cat`),
  ADD KEY `ID.CATEGORIA` (`ID.CATEGORIA`,`descripcion.cat`),
  ADD KEY `ID.MARCA` (`ID.MARCA`);

--
-- Indexes for table `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`ID.MARCA`);

--
-- Indexes for table `propietarios`
--
ALTER TABLE `propietarios`
  ADD PRIMARY KEY (`ID.PROPIETARIO`);

--
-- Indexes for table `servicios`
--
ALTER TABLE `servicios`
  ADD KEY `foranea.vehicuo` (`ID.VECHICULO`),
  ADD KEY `foranea.propietario` (`ID.PROPIETARIO`);

--
-- Indexes for table `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`ID.VECHICULO`),
  ADD KEY `foranea.vehiculos` (`ID.CATEGORIA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `ID.CATEGORIA` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marcas`
--
ALTER TABLE `marcas`
  MODIFY `ID.MARCA` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `propietarios`
--
ALTER TABLE `propietarios`
  MODIFY `ID.PROPIETARIO` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `ID.VECHICULO` int(5) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categorias`
--
ALTER TABLE `categorias`
  ADD CONSTRAINT `categorias_ibfk_1` FOREIGN KEY (`ID.MARCA`) REFERENCES `marcas` (`ID.MARCA`);

--
-- Constraints for table `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `servicios_ibfk_1` FOREIGN KEY (`ID.PROPIETARIO`) REFERENCES `propietarios` (`ID.PROPIETARIO`),
  ADD CONSTRAINT `servicios_ibfk_2` FOREIGN KEY (`ID.VECHICULO`) REFERENCES `vehiculos` (`ID.VECHICULO`);

--
-- Constraints for table `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD CONSTRAINT `vehiculos_ibfk_1` FOREIGN KEY (`ID.CATEGORIA`) REFERENCES `categorias` (`ID.CATEGORIA`);


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table categorias
--

--
-- Metadata for table marcas
--

--
-- Metadata for table propietarios
--

--
-- Metadata for table servicios
--

--
-- Metadata for table vehiculos
--

--
-- Metadata for database parqueadero
--

--
-- Dumping data for table `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_descr`) VALUES
('parqueadero', 'PARQUEADEROS . MER');

SET @LAST_PAGE = LAST_INSERT_ID();

--
-- Dumping data for table `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('parqueadero', 'categorias', @LAST_PAGE, 64, 71),
('parqueadero', 'marcas', @LAST_PAGE, 186, 447),
('parqueadero', 'propietarios', @LAST_PAGE, 959, 115),
('parqueadero', 'servicios', @LAST_PAGE, 680, 175),
('parqueadero', 'vehiculos', @LAST_PAGE, 434, 61);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
