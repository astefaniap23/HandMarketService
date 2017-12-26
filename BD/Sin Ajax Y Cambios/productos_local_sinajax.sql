-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 29-09-2013 a las 06:37:12
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
