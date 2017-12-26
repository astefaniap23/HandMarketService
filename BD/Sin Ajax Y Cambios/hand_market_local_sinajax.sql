-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 29-09-2013 a las 06:38:18
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `hand_market`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category_product`
--

CREATE TABLE IF NOT EXISTS `category_product` (
  `id_category` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category_product`
--

INSERT INTO `category_product` (`id_category`, `name`) VALUES
('1', 'Limpieza'),
('2', 'Alimentos'),
('3', 'Licores'),
('4', 'Perfumeria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category_selected`
--

CREATE TABLE IF NOT EXISTS `category_selected` (
  `id_category` varchar(20) NOT NULL,
  `id_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category_selected`
--

INSERT INTO `category_selected` (`id_category`, `id_name`) VALUES
('1', 'Limpieza'),
('', ''),
('', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacompra`
--

CREATE TABLE IF NOT EXISTS `facturacompra` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` int(20) NOT NULL,
  `total_productos` double NOT NULL,
  `total` double NOT NULL,
  `envio` varchar(300) CHARACTER SET utf8 NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `activo` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=220 ;

--
-- Volcado de datos para la tabla `facturacompra`
--

INSERT INTO `facturacompra` (`id`, `id_user`, `total_productos`, `total`, `envio`, `fecha`, `activo`) VALUES
(118, 12, 155, 0, 'Tienda de Los Chorros', '2013-09-13 00:05:44', 0),
(138, 16, 40, 110, 'los ruices', '2013-09-19 00:22:22', 0),
(140, 16, 20, 90, 'los ruices', '2013-09-19 00:35:45', 0),
(143, 16, 20, 90, 'los ruices', '2013-09-19 00:51:32', 0),
(146, 18, 50, 120, 'absjskskaksk', '2013-09-21 02:53:45', 0),
(153, 20, 505, 575, 'La California norte', '2013-09-22 22:21:13', 0),
(173, 15, 205, 275, 'macaracuay', '2013-09-24 20:53:17', 0),
(175, 15, 410, 0, 'Tienda de Chacao', '2013-09-24 21:29:37', 0),
(177, 14, 365, 435, 'fhjfhj', '2013-09-26 00:20:14', 0),
(178, 14, 375, 445, 'fhjfhj', '2013-09-26 00:23:30', 0),
(179, 14, 135, 205, 'sabana grande', '2013-09-26 02:32:56', 0),
(180, 14, 185, 0, 'Tienda de la Candelaria', '2013-09-26 02:39:12', 0),
(181, 14, 85, 155, 'sabana grande', '2013-09-26 02:40:37', 0),
(183, 14, 10, 0, 'Tienda de Chacao', '2013-09-26 02:44:34', 0),
(192, 14, 85, 0, 'Tienda en Macaracuay', '2013-09-26 05:36:17', 0),
(196, 26, 185, 0, 'Tienda de la Candelaria', '2013-09-27 03:50:41', 0),
(198, 27, 65, 135, 'una direccion con la eñe y con acéntó', '2013-09-27 23:23:30', 0),
(199, 27, 250, 0, 'Tienda de la Candelaria', '2013-09-27 23:24:40', 0),
(200, 27, 165, 0, 'Tienda de la Candelaria', '2013-09-27 23:31:16', 0),
(201, 27, 260, 0, 'Tienda de Los Chorros', '2013-09-27 23:35:36', 0),
(202, 27, 110, 0, 'Tienda de la Candelaria', '2013-09-27 23:39:37', 0),
(203, 27, 65, 0, 'Tienda de Chacao', '2013-09-27 23:41:11', 0),
(204, 27, 205, 0, 'Tienda en Macaracuay', '2013-09-27 23:43:46', 0),
(205, 27, 150, 0, 'Tienda de Los Chorros', '2013-09-27 23:45:46', 0),
(206, 14, 85, 0, 'Tienda de Los Chorros', '2013-09-27 23:51:19', 0),
(207, 14, 285, 355, 'cambian á la ene esa ñeeee', '2013-09-27 23:53:46', 0),
(208, 14, 75, 145, 'cambian á la ene esa ñeeee', '2013-09-27 23:56:01', 0),
(209, 14, 85, 0, 'Tienda de la Candelaria', '2013-09-28 01:09:15', 0),
(217, 14, 30, 100, 'Sabana grande. Av. Casanova. Edf: Don Fernando. Apto:6', '2013-09-28 01:23:24', 0),
(218, 14, 10, 80, 'Sabana grande. Av. Casanova. Edf: Don Fernando. Apto:6', '2013-09-28 01:24:30', 0),
(219, 14, 55, 0, 'Tienda de Chacao', '2013-09-28 01:25:26', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_empresa`
--

CREATE TABLE IF NOT EXISTS `factura_empresa` (
  `id` int(20) NOT NULL,
  `id_user` int(20) NOT NULL,
  `total` double NOT NULL,
  `total_productos` double NOT NULL,
  `envio` varchar(300) CHARACTER SET utf8 NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura_empresa`
--

INSERT INTO `factura_empresa` (`id`, `id_user`, `total`, `total_productos`, `envio`, `fecha`) VALUES
(99, 2, 200, 130, 'cvxcvxcv', '2013-08-22 03:18:58'),
(16, 2, 320, 250, 'cvxcvxcv', '2013-08-22 03:47:41'),
(17, 2, 175, 105, 'cvxcvxcv', '2013-08-22 04:13:29'),
(18, 2, 220, 150, 'cvxcvxcv', '2013-08-22 04:16:11'),
(19, 2, 290, 220, 'cvxcvxcv', '2013-08-22 04:21:18'),
(20, 2, 220, 150, 'cvxcvxcv', '2013-08-22 05:38:27'),
(21, 2, 245, 175, 'cvxcvxcv', '2013-08-22 06:17:19'),
(22, 2, 90, 20, 'cvxcvxcv', '2013-08-22 06:42:35'),
(23, 2, 80, 10, 'cvxcvxcv', '2013-08-22 06:48:00'),
(24, 2, 100, 30, 'cvxcvxcv', '2013-08-22 06:55:28'),
(25, 2, 200, 130, 'cvxcvxcv', '2013-08-22 07:13:29'),
(26, 2, 1570, 1500, 'cvxcvxcv', '2013-08-22 22:45:13'),
(82, 4, 0, 20, 'Tienda en Macaracuay', '2013-08-27 20:29:14'),
(83, 4, 0, 10, 'Tienda en Macaracuay', '2013-08-27 20:34:59'),
(84, 4, 0, 150, 'Tienda en Macaracuay', '2013-08-27 20:36:54'),
(85, 4, 0, 55, 'Tienda de Chacao', '2013-08-27 20:40:29'),
(86, 4, 0, 100, 'Tienda de Los Chorros', '2013-08-27 20:42:31'),
(88, 4, 0, 205, 'Tienda en Macaracuay', '2013-08-27 21:35:29'),
(89, 4, 480, 410, 'Sabana Grande', '2013-08-28 03:23:17'),
(95, 4, 0, 160, 'Tienda de Chacao', '2013-08-28 05:29:32'),
(99, 2, 0, 1000, 'Tienda de la Candelaria', '2013-08-29 20:32:43'),
(100, 2, 1070, 1000, 'cvxcvxcv', '2013-08-29 20:38:22'),
(102, 2, 340, 270, 'cvxcvxcv', '2013-08-29 20:48:58'),
(103, 2, 0, 110, 'Tienda en Macaracuay', '2013-08-29 21:12:56'),
(104, 10, 0, 220, 'Tienda en Macaracuay', '2013-09-10 20:14:01'),
(105, 10, 0, 265, 'Tienda de la Candelaria', '2013-09-12 20:18:46'),
(106, 10, 90, 20, 'los ruices', '2013-09-12 20:23:11'),
(107, 11, 0, 165, 'Tienda de Chacao', '2013-09-12 20:28:08'),
(108, 10, 0, 90, 'Tienda de Chacao', '2013-09-12 20:37:35'),
(109, 10, 285, 215, 'los ruices', '2013-09-12 20:40:01'),
(110, 10, 220, 150, 'los ruices', '2013-09-12 20:42:19'),
(111, 10, 220, 150, 'los ruices', '2013-09-12 20:47:37'),
(112, 10, 170, 100, 'los ruices', '2013-09-12 20:49:56'),
(113, 10, 220, 150, 'los ruices', '2013-09-12 20:51:13'),
(114, 10, 0, 50, 'Tienda de Chacao', '2013-09-12 20:53:21'),
(115, 10, 120, 50, 'los ruices', '2013-09-12 20:55:54'),
(116, 10, 270, 200, 'los ruices', '2013-09-12 20:59:28'),
(117, 10, 120, 50, 'los ruices', '2013-09-12 21:45:43'),
(118, 12, 0, 155, 'Tienda de Los Chorros', '2013-09-13 00:05:43'),
(120, 14, 0, 60, 'Tienda en Macaracuay', '2013-09-13 20:20:28'),
(121, 10, 0, 210, 'Tienda de Chacao', '2013-09-13 23:58:42'),
(124, 14, 0, 360, 'Tienda de Los Chorros', '2013-09-17 01:56:53'),
(125, 14, 330, 260, 'sabana grande bello monte', '2013-09-17 03:31:17'),
(126, 14, 385, 315, 'sabana grande bello monte', '2013-09-17 07:47:36'),
(128, 14, 405, 335, 'sabana grande bello monte', '2013-09-17 07:52:03'),
(129, 14, 325, 255, 'sabana grande bello monte', '2013-09-17 07:53:50'),
(130, 14, 0, 265, 'Tienda de Chacao', '2013-09-17 07:55:04'),
(131, 14, 0, 1520, 'Tienda de la Candelaria', '2013-09-17 08:00:39'),
(133, 14, 345, 275, 'hola  qoihofiq hejfn oqfoqeinf ioqehfoiq sfjwqoejh fojqweh foihwqe lfhnwdl nflwk dfoiwqeh ofine lfnq eofnqoenjf oqjnef oqneokfnq lenflqk efnlkqnf jnf oiqnef onqef lknas flknqenf lnadf andsfl kqnew lfnqle knqlkef nakpsjf qiwhf qipincalksdnf qijwe iqalfiinhq eifqie hfHOLAAAAAA jknhafojhaqlfnalkjnfljqb', '2013-09-17 20:14:22'),
(134, 14, 185, 115, 'hola  qoihofiq hejfn oqfoqeinf ioqehfoiq sfjwqoejh fojqweh foihwqe lfhnwdl nflwk dfoiwqeh ofine lfnq eofnqoenjf oqjnef oqneokfnq lenflqk efnlkqnf jnf oiqnef onqef lknas flknqenf lnadf andsfl kqnew lfnqle knqlkef nakpsjf qiwhf qipincalksdnf qijwe iqalfiinhq eifqie hfHOLAAAAAA jknhafojhaqlfnalkjnfljqb', '2013-09-17 20:22:09'),
(138, 16, 110, 40, 'los ruices', '2013-09-19 00:22:21'),
(140, 16, 90, 20, 'los ruices', '2013-09-19 00:35:44'),
(141, 14, 355, 285, 'hola  qoihofiq hejfn oqfoqeinf ioqehfoiq sfjwqoejh fojqweh foihwqe lfhnwdl nflwk dfoiwqeh ofine lfnq eofnqoenjf oqjnef oqneokfnq lenflqk efnlkqnf jnf oiqnef onqef lknas flknqenf lnadf andsfl kqnew lfnqle knqlkef nakpsjf qiwhf qipincalksdnf qijwe iqalfiinhq eifqie hfHOLAAAAAA jknhafojhaqlfnalkjnfljqb', '2013-09-19 00:38:42'),
(142, 14, 180, 110, 'hola  qoihofiq hejfn oqfoqeinf ioqehfoiq sfjwqoejh fojqweh foihwqe lfhnwdl nflwk dfoiwqeh ofine lfnq eofnqoenjf oqjnef oqneokfnq lenflqk efnlkqnf jnf oiqnef onqef lknas flknqenf lnadf andsfl kqnew lfnqle knqlkef nakpsjf qiwhf qipincalksdnf qijwe iqalfiinhq eifqie hfHOLAAAAAA jknhafojhaqlfnalkjnfljqb', '2013-09-19 00:50:09'),
(143, 16, 90, 20, 'los ruices', '2013-09-19 00:51:30'),
(144, 14, 0, 110, 'Tienda de Chacao', '2013-09-19 00:55:11'),
(145, 14, 220, 150, 'sabana grande av casanova', '2013-09-19 01:12:58'),
(146, 18, 120, 50, 'absjskskaksk', '2013-09-21 02:53:43'),
(150, 14, 120, 50, 'a', '2013-09-22 04:30:29'),
(151, 14, 0, 100, 'Tienda de Los Chorros', '2013-09-22 05:57:31'),
(152, 14, 380, 310, 'av casanova sabana grande', '2013-09-22 05:59:13'),
(153, 20, 575, 505, 'La California norte', '2013-09-22 22:21:11'),
(165, 14, 0, 60, 'Tienda de Los Chorros', '2013-09-23 07:46:41'),
(167, 14, 0, 110, 'Tienda de la Candelaria', '2013-09-23 08:56:38'),
(173, 15, 275, 205, 'macaracuay', '2013-09-24 20:53:15'),
(174, 15, 0, 270, 'Tienda de Chacao', '2013-09-24 20:54:50'),
(175, 15, 0, 410, 'Tienda de Chacao', '2013-09-24 21:29:36'),
(176, 14, 0, 330, 'Tienda en Macaracuay', '2013-09-25 08:43:30'),
(177, 14, 435, 365, 'fhjfhj', '2013-09-26 00:20:12'),
(178, 14, 445, 375, 'fhjfhj', '2013-09-26 00:23:28'),
(179, 14, 205, 135, 'sabana grande', '2013-09-26 02:32:54'),
(180, 14, 0, 185, 'Tienda de la Candelaria', '2013-09-26 02:39:11'),
(181, 14, 155, 85, 'sabana grande', '2013-09-26 02:40:36'),
(183, 14, 0, 10, 'Tienda de Chacao', '2013-09-26 02:44:32'),
(192, 14, 0, 85, 'Tienda en Macaracuay', '2013-09-26 05:36:15'),
(196, 26, 0, 185, 'Tienda de la Candelaria', '2013-09-27 03:50:38'),
(197, 27, 295, 225, 'una direccion con la eñe y con acéntó', '2013-09-27 23:20:04'),
(198, 27, 135, 65, 'una direccion con la eñe y con acéntó', '2013-09-27 23:23:29'),
(199, 27, 0, 250, 'Tienda de la Candelaria', '2013-09-27 23:24:39'),
(200, 27, 0, 165, 'Tienda de la Candelaria', '2013-09-27 23:31:15'),
(201, 27, 0, 260, 'Tienda de Los Chorros', '2013-09-27 23:35:35'),
(202, 27, 0, 110, 'Tienda de la Candelaria', '2013-09-27 23:39:35'),
(203, 27, 0, 65, 'Tienda de Chacao', '2013-09-27 23:41:10'),
(204, 27, 0, 205, 'Tienda en Macaracuay', '2013-09-27 23:43:44'),
(205, 27, 0, 150, 'Tienda de Los Chorros', '2013-09-27 23:45:44'),
(206, 14, 0, 85, 'Tienda de Los Chorros', '2013-09-27 23:51:17'),
(207, 14, 355, 285, 'cambian á la ene esa ñeeee', '2013-09-27 23:53:45'),
(208, 14, 145, 75, 'cambian á la ene esa ñeeee', '2013-09-27 23:56:00'),
(209, 14, 0, 85, 'Tienda de la Candelaria', '2013-09-28 01:09:13'),
(210, 14, 345, 275, 'Sabana grande. Av. Casanova. Edf: Don Fernando. Apto:6', '2013-09-28 01:15:43'),
(211, 14, 345, 275, 'Sabana grande. Av. Casanova. Edf: Don Fernando. Apto:6', '2013-09-28 01:16:53'),
(212, 14, 345, 275, 'Sabana grande. Av. Casanova. Edf: Don Fernando. Apto:6', '2013-09-28 01:18:34'),
(214, 14, 345, 275, 'Sabana grande. Av. Casanova. Edf: Don Fernando. Apto:6', '2013-09-28 01:19:36'),
(215, 14, 345, 275, 'Sabana grande. Av. Casanova. Edf: Don Fernando. Apto:6', '2013-09-28 01:20:29'),
(216, 14, 100, 30, 'Sabana grande. Av. Casanova. Edf: Don Fernando. Apto:6', '2013-09-28 01:21:31'),
(217, 14, 100, 30, 'Sabana grande. Av. Casanova. Edf: Don Fernando. Apto:6', '2013-09-28 01:23:22'),
(218, 14, 80, 10, 'Sabana grande. Av. Casanova. Edf: Don Fernando. Apto:6', '2013-09-28 01:24:28'),
(219, 14, 0, 55, 'Tienda de Chacao', '2013-09-28 01:25:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_historial`
--

CREATE TABLE IF NOT EXISTS `factura_historial` (
  `id_factura` int(20) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_user` int(20) NOT NULL,
  `id_product` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `factura_historial`
--

INSERT INTO `factura_historial` (`id_factura`, `fecha`, `id_user`, `id_product`) VALUES
(18, '2013-08-22 04:19:50', 2, 6),
(18, '2013-08-22 04:20:00', 2, 2),
(20, '2013-08-22 05:38:27', 2, 4),
(21, '2013-08-22 06:17:19', 2, 6),
(21, '2013-08-22 06:17:19', 2, 3),
(21, '2013-08-22 06:17:19', 2, 5),
(22, '2013-08-22 06:42:35', 2, 6),
(25, '2013-08-22 07:13:29', 2, 2),
(25, '2013-08-22 07:13:29', 2, 6),
(25, '2013-08-22 07:13:29', 2, 5),
(26, '2013-08-22 22:45:13', 2, 12),
(26, '2013-08-22 22:45:13', 2, 13),
(26, '2013-08-22 22:45:13', 2, 13),
(26, '2013-08-22 22:45:13', 2, 14),
(26, '2013-08-22 22:45:13', 2, 14),
(26, '2013-08-22 22:45:13', 2, 15),
(26, '2013-08-22 22:45:13', 2, 16),
(82, '2013-08-27 20:29:14', 4, 6),
(83, '2013-08-27 20:34:59', 4, 2),
(84, '2013-08-27 20:36:54', 4, 4),
(85, '2013-08-27 20:40:29', 4, 3),
(86, '2013-08-27 20:42:31', 4, 5),
(88, '2013-08-27 21:35:29', 4, 3),
(88, '2013-08-27 21:35:29', 4, 1),
(88, '2013-08-27 21:35:29', 4, 5),
(89, '2013-08-28 03:23:17', 4, 2),
(89, '2013-08-28 03:23:18', 4, 5),
(89, '2013-08-28 03:23:18', 4, 14),
(89, '2013-08-28 03:23:18', 4, 13),
(95, '2013-08-28 05:29:32', 4, 2),
(95, '2013-08-28 05:29:32', 4, 4),
(100, '2013-08-29 20:38:22', 2, 16),
(100, '2013-08-29 20:38:22', 2, 16),
(102, '2013-08-29 20:48:58', 2, 6),
(102, '2013-08-29 20:48:58', 2, 4),
(102, '2013-08-29 20:48:58', 2, 5),
(103, '2013-08-29 21:12:56', 2, 7),
(103, '2013-08-29 21:12:56', 2, 9),
(104, '2013-09-10 20:14:01', 10, 6),
(104, '2013-09-10 20:14:01', 10, 4),
(104, '2013-09-10 20:14:01', 10, 1),
(105, '2013-09-12 20:18:46', 10, 11),
(105, '2013-09-12 20:18:46', 10, 8),
(105, '2013-09-12 20:18:46', 10, 8),
(105, '2013-09-12 20:18:46', 10, 6),
(105, '2013-09-12 20:18:46', 10, 2),
(105, '2013-09-12 20:18:46', 10, 2),
(105, '2013-09-12 20:18:46', 10, 6),
(105, '2013-09-12 20:18:46', 10, 3),
(106, '2013-09-12 20:23:11', 10, 6),
(107, '2013-09-12 20:28:08', 11, 2),
(107, '2013-09-12 20:28:08', 11, 5),
(107, '2013-09-12 20:28:08', 11, 3),
(108, '2013-09-12 20:37:35', 10, 7),
(108, '2013-09-12 20:37:35', 10, 6),
(108, '2013-09-12 20:37:35', 10, 6),
(109, '2013-09-12 20:40:01', 10, 2),
(109, '2013-09-12 20:40:01', 10, 3),
(109, '2013-09-12 20:40:01', 10, 4),
(110, '2013-09-12 20:42:20', 10, 14),
(111, '2013-09-12 20:47:37', 10, 4),
(112, '2013-09-12 20:49:56', 10, 5),
(113, '2013-09-12 20:51:13', 10, 14),
(114, '2013-09-12 20:53:21', 10, 1),
(115, '2013-09-12 20:55:54', 10, 10),
(116, '2013-09-12 20:59:28', 10, 10),
(116, '2013-09-12 20:59:28', 10, 10),
(116, '2013-09-12 20:59:28', 10, 10),
(116, '2013-09-12 20:59:28', 10, 10),
(117, '2013-09-12 21:45:43', 10, 10),
(118, '2013-09-13 00:05:43', 12, 5),
(118, '2013-09-13 00:05:43', 12, 3),
(121, '2013-09-13 23:58:42', 10, 4),
(121, '2013-09-13 23:58:42', 10, 1),
(121, '2013-09-13 23:58:42', 10, 2),
(138, '2013-09-19 00:22:21', 16, 6),
(138, '2013-09-19 00:22:21', 16, 6),
(140, '2013-09-19 00:35:45', 16, 6),
(143, '2013-09-19 00:51:30', 16, 6),
(146, '2013-09-21 02:53:43', 18, 7),
(153, '2013-09-22 22:21:11', 20, 6),
(153, '2013-09-22 22:21:11', 20, 6),
(153, '2013-09-22 22:21:11', 20, 4),
(153, '2013-09-22 22:21:11', 20, 3),
(153, '2013-09-22 22:21:11', 20, 1),
(153, '2013-09-22 22:21:11', 20, 17),
(153, '2013-09-22 22:21:11', 20, 20),
(153, '2013-09-22 22:21:11', 20, 21),
(173, '2013-09-24 20:53:15', 15, 3),
(173, '2013-09-24 20:53:15', 15, 4),
(175, '2013-09-24 21:29:36', 15, 4),
(175, '2013-09-24 21:29:36', 15, 8),
(175, '2013-09-24 21:29:36', 15, 9),
(175, '2013-09-24 21:29:36', 15, 4),
(177, '2013-09-26 00:20:12', 14, 2),
(177, '2013-09-26 00:20:12', 14, 3),
(177, '2013-09-26 00:20:12', 14, 4),
(177, '2013-09-26 00:20:12', 14, 5),
(177, '2013-09-26 00:20:12', 14, 1),
(178, '2013-09-26 00:23:28', 14, 6),
(178, '2013-09-26 00:23:28', 14, 3),
(178, '2013-09-26 00:23:28', 14, 5),
(178, '2013-09-26 00:23:28', 14, 4),
(178, '2013-09-26 00:23:28', 14, 1),
(179, '2013-09-26 02:32:54', 14, 6),
(179, '2013-09-26 02:32:54', 14, 2),
(179, '2013-09-26 02:32:54', 14, 3),
(179, '2013-09-26 02:32:54', 14, 1),
(180, '2013-09-26 02:39:11', 14, 3),
(180, '2013-09-26 02:39:11', 14, 2),
(180, '2013-09-26 02:39:11', 14, 6),
(180, '2013-09-26 02:39:11', 14, 5),
(181, '2013-09-26 02:40:36', 14, 3),
(181, '2013-09-26 02:40:36', 14, 2),
(181, '2013-09-26 02:40:36', 14, 6),
(183, '2013-09-26 02:44:32', 14, 2),
(192, '2013-09-26 05:36:15', 14, 6),
(192, '2013-09-26 05:36:15', 14, 2),
(192, '2013-09-26 05:36:15', 14, 3),
(196, '2013-09-27 03:50:38', 26, 6),
(196, '2013-09-27 03:50:38', 26, 3),
(196, '2013-09-27 03:50:38', 26, 7),
(196, '2013-09-27 03:50:38', 26, 9),
(198, '2013-09-27 23:23:29', 27, 2),
(198, '2013-09-27 23:23:29', 27, 3),
(199, '2013-09-27 23:24:39', 27, 4),
(199, '2013-09-27 23:24:39', 27, 5),
(200, '2013-09-27 23:31:15', 27, 5),
(200, '2013-09-27 23:31:15', 27, 3),
(200, '2013-09-27 23:31:15', 27, 2),
(201, '2013-09-27 23:35:35', 27, 2),
(201, '2013-09-27 23:35:35', 27, 4),
(201, '2013-09-27 23:35:35', 27, 5),
(202, '2013-09-27 23:39:35', 27, 2),
(202, '2013-09-27 23:39:35', 27, 5),
(203, '2013-09-27 23:41:10', 27, 2),
(203, '2013-09-27 23:41:10', 27, 3),
(204, '2013-09-27 23:43:44', 27, 3),
(204, '2013-09-27 23:43:44', 27, 4),
(205, '2013-09-27 23:45:44', 27, 4),
(206, '2013-09-27 23:51:17', 14, 6),
(206, '2013-09-27 23:51:17', 14, 3),
(206, '2013-09-27 23:51:17', 14, 2),
(207, '2013-09-27 23:53:45', 14, 6),
(207, '2013-09-27 23:53:45', 14, 3),
(207, '2013-09-27 23:53:45', 14, 12),
(207, '2013-09-27 23:53:45', 14, 2),
(208, '2013-09-27 23:56:00', 14, 6),
(208, '2013-09-27 23:56:00', 14, 3),
(209, '2013-09-28 01:09:13', 14, 6),
(209, '2013-09-28 01:09:13', 14, 2),
(209, '2013-09-28 01:09:13', 14, 3),
(210, '2013-09-28 01:15:43', 14, 6),
(210, '2013-09-28 01:15:43', 14, 3),
(210, '2013-09-28 01:15:43', 14, 12),
(211, '2013-09-28 01:16:53', 14, 6),
(211, '2013-09-28 01:16:53', 14, 3),
(211, '2013-09-28 01:16:53', 14, 12),
(212, '2013-09-28 01:18:34', 14, 6),
(212, '2013-09-28 01:18:34', 14, 3),
(212, '2013-09-28 01:18:34', 14, 12),
(214, '2013-09-28 01:19:36', 14, 6),
(214, '2013-09-28 01:19:36', 14, 3),
(214, '2013-09-28 01:19:36', 14, 12),
(217, '2013-09-28 01:23:22', 14, 6),
(217, '2013-09-28 01:23:22', 14, 2),
(218, '2013-09-28 01:24:28', 14, 2),
(219, '2013-09-28 01:25:25', 14, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `id` int(20) NOT NULL,
  `id_category` varchar(20) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` longtext CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `precio` double NOT NULL,
  `imagen` varchar(500) NOT NULL,
  `imagen_max` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_category`, `nombre`, `descripcion`, `precio`, `imagen`, `imagen_max`) VALUES
(2, '1', 'Lavansan', 'Esta desarrollado para todo tipo de superficies lavables. Excelente para pisos de: vinil, granito, entre otros. Ademas para limpiar, desodorizar y desinfectar.', 10, 'http://10.0.2.2/Products_Category/Detergentes/Lavansan.jpg', 'http://10.0.2.2/Products_Category_Max/Detergentes/Lavansan.jpg'),
(3, '1', 'Ariel', 'Ariel Doble Poder,Posee activos quimicos y otros componentes adicionales que hacen que las prendas de vestir se mantengan limpias y mas nuevas por mas tiempo.\n', 55, 'http://10.0.2.2/Products_Category/Detergentes/Ariel.jpg', 'http://10.0.2.2/Products_Category_Max/Detergentes/Ariel.jpg'),
(4, '1', 'Ace', 'Jabon en polvo,Para el lavado y cuidado de toda su ropa dejando una fragancia exquisita en ellas.Presentacion: Paquete de 800grs.', 150, 'http://10.0.2.2/Products_Category/Detergentes/Ace.jpg', 'http://10.0.2.2/Products_Category_Max/Detergentes/Ace.jpg'),
(5, '1', 'Blem', 'La pulitura contiene finos abrasivos que remueven una delgada capa de pintura en la carroceria de su vehiculo.La pulitura es lo que hace brillar su carro.', 100, 'http://10.0.2.2/Products_Category/Detergentes/Blem.jpg', 'http://10.0.2.2/Products_Category_Max/Detergentes/Blem.jpg'),
(1, '1', 'Llaves', 'Jabon en polvo, Las Llaves es tu marca aliada en la limpieza de tu ropa y tu hogar, que te ofrece el balance ideal entre limpieza y cuidado.', 50, 'http://10.0.2.2/Products_Category/Detergentes/Llaves.jpg', 'http://10.0.2.2/Products_Category_Max/Detergentes/Llaves.jpg'),
(7, '2', 'Mary', 'Arroz Mary Superior . Posee 97% de gramos enteros, presentacion de empaque almohada. Paca de 1 kilogramo , de la Corporacion Mary.', 50, 'http://10.0.2.2/Products_Category/Alimentos/Arroz.jpg', 'http://10.0.2.2/Products_Category_Max/Alimentos/Arroz.jpg'),
(8, '2', 'Margarita', 'Atun,Margarita es la variedad de productos del mar mas sabrosos y de calidad que brindan la tranquilidad de alimentar saludablemente a la familia venezolana,ofrecen practicidad y la confianza de estar siempre a la mano.', 50, 'http://10.0.2.2/Products_Category/Alimentos/Atun.jpg', 'http://10.0.2.2/Products_Category_Max/Alimentos/Atun.jpg'),
(9, '2', 'Harina', 'Pan a base de maiz,emp 1 kg.harina de maiz precocido de las Empresas Polar.', 60, 'http://10.0.2.2/Products_Category/Alimentos/Harina.jpg', 'http://10.0.2.2/Products_Category_Max/Alimentos/Harina.jpg'),
(10, '2', 'Leche', 'Parmalat, Leche Liquida de larga duracion, emp 1ltr. ', 50, 'http://10.0.2.2/Products_Category/Alimentos/Leche.jpg', 'http://10.0.2.2/Products_Category_Max/Alimentos/Leche.jpg'),
(11, '2', 'Pasta', 'Ronco es la pasta hecha con carino con mas de 50 anos en el mercado.Es elaborada con 100% Trigo Durum lo que garantiza su excelente calidad.Pasta corta:Tornillo 500 grs.', 50, 'http://10.0.2.2/Products_Category/Alimentos/Pasta.jpg', 'http://10.0.2.2/Products_Category_Max/Alimentos/Pasta.jpg'),
(12, '3', 'Solera', 'Cerveza,Caracteristicos de una cerveza premium ligth,Empresas Polar,Emp 24u.', 200, 'http://10.0.2.2/Products_Category/Licores/Cerveza.jpg', 'http://10.0.2.2/Products_Category_Max/Licores/Cerveza.jpg'),
(13, '3', 'Santa Tereza', 'ron,santa teresa linaje,es fruto de una mezcla de rones anejos de primera calidad,cuyo nombre y botella indican que viene del mismo linaje de santa teresa gran reserva.', 150, 'http://10.0.2.2/Products_Category/Licores/Ron.jpg', 'http://10.0.2.2/Products_Category_Max/Licores/Ron.jpg'),
(14, '3', 'Vino', 'Vino merlot, Vino gato negro es producido por Vina San Pedro, que es una de las mas importantes empresas vinicolas chilenas', 150, 'http://10.0.2.2/Products_Category/Licores/Vino.jpg', 'http://10.0.2.2/Products_Category_Max/Licores/Vino.jpg'),
(15, '3', 'Vodka', 'ABSOLUT VODKA Sus ingredientes principales son agua y trigo de invierno. El agua provinene de un profundo pozo de Ahus que esta protegido contra las impurezas.', 200, 'http://10.0.2.2/Products_Category/Licores/Vodka.jpg\n', 'http://10.0.2.2/Products_Category_Max/Licores/Vodka.jpg\n'),
(16, '3', 'Wisky', 'Something Especial,Escoces Standard Premium, cuyos finos whiskies de malta y grano vienen de la region de Speyside, especialmente seleccionados para crear este excepcional whisky. Barricas optimas contribuyen a su caracter completo, ligeramente afrutado y un toque ahumado dulce.', 500, 'http://10.0.2.2/Products_Category/Licores/Wisky.jpg', 'http://10.0.2.2/Products_Category_Max/Licores/Wisky.jpg'),
(17, '4', 'Gillelette', 'Te da una afeitada al ras, mas suave y con menos irritacion incluso en las areas mas sensibles de tu cara, gracias a que es una afeitadora que tiene 3 hojas Corte-Diamante que estan alineadas progresivamente para darte una afeitada perfecta y su banda lubricante con aloe vera que evita la irritacion al afeitarse. ', 50, 'http://10.0.2.2/Products_Category/Perfumeria/Afeitadora.jpg', 'http://10.0.2.2/Products_Category_Max/Perfumeria/Afeitadora.jpg'),
(18, '4', 'Colgate', 'Crema Dental, Con el cepillado diario con Colgate Luminous White, tres veces al dia, tus dientes se tornaran mas claros y luminosos (En medida al color natural de los dientes).', 50, 'http://10.0.2.2/Products_Category/Perfumeria/Crema_dental.jpg', 'http://10.0.2.2/Products_Category_Max/Perfumeria/Crema_dental.jpg'),
(19, '4', 'Hisopos', 'Chico.', 30, 'http://10.0.2.2/Products_Category/Perfumeria/Hisopos.jpg', 'http://10.0.2.2/Products_Category_Max/Perfumeria/Hisopos.jpg'),
(20, '4', 'Nivea', 'Jabon para bano, iene una formula enriquecida con manzanilla,ademas contiene aceite de semillas de algodon el cual ayuda a suavizar la piel.Para personas que buscan un efecto relajante a la hora del bano y maxima suavidad en la piel.', 40, 'http://10.0.2.2/Products_Category/Perfumeria/Jabon.jpg', 'http://10.0.2.2/Products_Category_Max/Perfumeria/Jabon.jpg'),
(21, '4', 'Kerastase', 'Shampoo,tratamiento nutritivo de Kerastase con ingredientes termo reactivos para un cuidado profundo y duradero.', 120, 'http://10.0.2.2/Products_Category/Perfumeria/Shampoo.jpg', 'http://10.0.2.2/Products_Category_Max/Perfumeria/Shampoo.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shoppingcar`
--

CREATE TABLE IF NOT EXISTS `shoppingcar` (
  `id_code` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(20) NOT NULL,
  `id_user` int(20) NOT NULL,
  PRIMARY KEY (`id_code`),
  UNIQUE KEY `id_code` (`id_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=394 ;

--
-- Volcado de datos para la tabla `shoppingcar`
--

INSERT INTO `shoppingcar` (`id_code`, `id_product`, `id_user`) VALUES
(32, 13, 3),
(88, 6, 4),
(89, 5, 2),
(90, 6, 2),
(128, 1, 12),
(129, 5, 12),
(138, 1, 11),
(139, 3, 11),
(354, 6, 26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE IF NOT EXISTS `sucursales` (
  `id_place` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id_place`, `name`, `address`) VALUES
('1', 'Tienda de la Candelaria', 'Edif. Centro Residencial La Candelaria, entre Miguelacho y Cruz de Candelaria (Frente a la calle Sur 3 y 4), La Candelaria'),
('2', 'Tienda de Chacao', 'Av. Andres Bello con 3ra transversal. Urbanizacion,Los Palos Grandes'),
('3', 'Tienda de Los Chorros', 'Av. Sucre de los Dos Caminos con 5ta. Transversal, Los Chorros'),
('4', 'Tienda en Macaracuay', 'Av. Mara, Centro Comercial Macaracuay Plaza, Urb. Colinas de La California');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) CHARACTER SET utf8 NOT NULL,
  `apellido` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `sexo` varchar(30) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `clave` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `direccion` varchar(300) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `activo` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `sexo`, `usuario`, `clave`, `direccion`, `telefono`, `correo`, `activo`) VALUES
(10, 'Alba', 'Portillo', 'femenino', 'Astefaniap', '0e7e4e3fdd4fa143b00f71b7749569a2', 'los ruices', '04123354171', 'stefania23p@gmail.com', 0),
(11, 'c', 'b', 'masculino', 'cbello', '81dc9bdb52d04dc20036dbd8313ed055', 'shsh', '49784', 'calink124@gmail.com', 0),
(14, 'Elias', 'Tabban Sabbagh', 'masculino', 'r', '0cc175b9c0f1b6a831c399e269772661', 'Sabana grande. Av. Casanova. Edf: Don Fernando. Apto:6', '35', 'eliasjts@gmail.com', 0),
(15, 'alarma', 'gutierrez', 'masculino', 'alguty', '7e635ef3cc7e32581e35bdc7899a2f19', 'macaracuay', '2563615', 'alan.gutierrez@gmail.com', 0),
(16, 'alba', 'portillo', 'femenino', 'Asp', '9451810adcc13a25e610332880cc447a', 'los ruices', '2355909', 'stefania_p_23@hotmail.com', 1),
(17, 'ere', 'r', 'masculino', 'wer', '4b48ee02ab7eea346d0cd2b1fa247cce', 'dafadf ', '134135', 'eliastasa@hotmail.com', 0),
(18, 'Nassim', 'Sabbagh', 'masculino', 'nasa382', 'dc513ea4fbdaa7a14786ffdebc4ef64e', 'absjskskaksk', '04241426539', 'nassimantonio@hotmail.com', 0),
(19, 'gf', 'ef', 'masculino', 'q', 'f1290186a5d0b1ceab27f4e77c0c5d68', 'hfbdyry', '5488', 'frd@hdf.com', 0),
(20, 'Lina', 'Sabbagh', 'femenino', 'sabbagh', '7a0791604f981a25d1711c84ce268cf4', 'La California norte', '04142901661', 'tialinamaria@hotmail.com', 0),
(26, 'José', 'Mero', 'masculino', 'Jamero', '40ff6e9e5a8ca95790b5920bcae295d5', 'Los chaguaramos', '04129043282', 'j.mero25@gmail.com', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `id_code` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(20) NOT NULL,
  `id_user` int(20) NOT NULL,
  UNIQUE KEY `id_code` (`id_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=202 ;

--
-- Volcado de datos para la tabla `wishlist`
--

INSERT INTO `wishlist` (`id_code`, `id_product`, `id_user`) VALUES
(5, 7, 2),
(8, 5, 2),
(12, 16, 2),
(14, 14, 2),
(15, 12, 2),
(16, 19, 2),
(17, 20, 2),
(19, 1, 4),
(20, 3, 4),
(22, 9, 2),
(23, 18, 2),
(24, 6, 2),
(25, 10, 10),
(28, 6, 11),
(29, 1, 11),
(39, 1, 10),
(61, 6, 16),
(96, 6, 15),
(97, 4, 15),
(98, 8, 15),
(178, 6, 14),
(186, 12, 14),
(189, 3, 14),
(191, 2, 14),
(192, 4, 14),
(193, 5, 14),
(194, 1, 14),
(197, 2, 27),
(198, 3, 27),
(199, 4, 27),
(200, 5, 27);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
