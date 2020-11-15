-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-10-2018 a las 00:52:37
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `basejae`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

CREATE TABLE `consultas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `mensaje` varchar(400) COLLATE utf8mb4_spanish_ci NOT NULL,
  `estado` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `consultas`
--

INSERT INTO `consultas` (`id`, `nombre`, `email`, `telefono`, `mensaje`, `estado`) VALUES
(1, 'Jesus Andres ', 'luciazini@gmail.com', '3777305250', 'asdfghjkl', 0),
(2, 'lucia zini', 'luciazini@gmail.com', '3777305250', 'te quiero mucho hermanito', 0),
(3, 'luci', 'luciazini@gmail.com', '1234567', 'bueno chee', 0),
(4, 'jesus zini', 'jesushola@gmail.com', '123456', 'hola como andas', 1),
(5, 'Jesus Andres 20395191528', 'luciazini@gmail.com', '3777305250', 'anda?', 1),
(6, 'Jesus Andres 20395191528', 'alejandro.correa.godoy@gmail.com', '3777305250', 'xcvz', 1),
(7, 'Jesus Andres 20395191528', 'luciazini@gmail.com', '3777305250', 'asf', 1),
(8, 'Jesus Andres 20395191528', 'jesusandreszini14@gmail.com', '3777305250', 'erty', 1),
(9, 'Jesus Andres 20395191528', 'jesusandreszini14@gmail.com', '3777305250', 'vb', 1),
(10, 'Jesus Andres 20395191528', 'alejandro.correa.godoy@gmail.com', '3777305250', 'sdfg', 1),
(11, 'Jesus Andres', 'luciazini@gmail.com', '3777305250', 'holaaaaaaaaaaaaaaaaaa', 0),
(12, 'Jesus Andres 20395191528', 'luciazini@gmail.com', '3777305250', 'fvyhjasdkv', 0),
(13, 'Jesus Andres 20395191528', 'jesusandreszini14@gmail.com', '3777305250', 'vggsdg', 0),
(14, 'Jesus Andres ', 'jesusandreszini14@gmail.com', '03777305250', 'jgfjhgjmñl.', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `efecto`
--

CREATE TABLE `efecto` (
  `id_efecto` int(11) NOT NULL,
  `descripcion` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `efecto`
--

INSERT INTO `efecto` (`id_efecto`, `descripcion`) VALUES
(1, 'overdrive'),
(2, 'distorsion'),
(3, 'delay'),
(4, 'reverb'),
(5, 'chorus'),
(6, 'vibrato'),
(7, 'tremolo'),
(8, 'phaser'),
(9, 'flanger'),
(10, 'otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `marca` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `efecto` int(10) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(40) COLLATE utf8mb4_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `marca`, `efecto`, `precio`, `stock`, `imagen`, `estado`) VALUES
(7, 'ds-1', 'Boss', 2, 1800, 14, 'mxr-m169-carbon-copy.jpg', 1),
(8, 'micro amp', 'MXR', 10, 2300, 19, '7667840_800.jpg', 1),
(10, 'booster', 'MXR', 10, 2600, 0, '10034553_800.jpg', 1),
(11, 'small clone', 'Electro Ha', 5, 1600, 26, '9777368_800.jpg', 1),
(13, 'tr-2', 'Boss', 7, 2100, 8, 'tr2_D_gal.jpg', 1),
(14, 'od-3', 'Boss', 1, 2100, 40, 'boss-od-3-overdrive-3440074.jpg', 1),
(15, 'Polytune 2', 'TC Electro', 5, 5000, 8, 'H96621000000000-00-500x500.jpg', 1),
(16, 'rat', 'pro co', 2, 4000, 20, 'rat.jpg', 1),
(17, 'reverb', 'MXR', 4, 2500, 30, 'MXR-M300-Reverb.jpg', 1),
(18, 'AXASDA', 'hola', 6, 111, 12, 'hall.jpg', 1),
(19, 'aaa', 'aaa', 10, 222, 222, 'Pedal-MXR-Blue-Box.jpg', 1),
(20, 'sss', 'sss', 10, 222, 22, 'boss-bf3.jpg', 1),
(21, '22', '222', 9, 222, 22, 'MXR-M-101-Phase-90-400x400.jpg', 1),
(22, 'nuevo', 'TC Electro', 3, 2000, 56, 'pedala-efect-boss-ds-1.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellido` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `perfil_id` int(11) NOT NULL DEFAULT '2',
  `estado` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `telefono`, `direccion`, `email`, `password`, `perfil_id`, `estado`) VALUES
(3, 'jesus andres', 'zini', '3777305251', 'por ahi', 'jesusandres@gmail.com', 'MTIz', 1, 1),
(4, 'lucia veronica', 'zini', '3777547698', 'hola', 'luciazini@gmail.com', 'MTIz', 2, 1),
(5, 'Horacio antonio', 'zini', '3777898767', 'cheche', 'hora@gmail.com', 'aG9sYWhvbGE=', 2, 0),
(6, 'mari', 'zini', '3777123456', '', 'mari@gmail.com', 'SE9MQUhPTEE=', 2, 0),
(7, 'lili', 'fabbro', '3777544326', '', 'lili@gmail.com', 'MTIzNDU2Nzg=', 2, 0),
(8, 'jesus', 'zini', '123456789', '', 'jesushola@gmail.com', 'MTIzNA==', 2, 0),
(9, 'horacio', 'zini', '1234567', '', 'horacio@gmail.com', 'MTIzNA==', 2, 0),
(10, 'maria', 'zini', '123456', '', 'maria@gmail.com', 'MTIzNA==', 2, 0),
(11, 'luciaa', 'zini', '1234567', '', 'luciaa@gmail.com', 'MTIzNA==', 2, 1),
(12, 'juan', 'ramon', '34567', '', 'test@test.com', 'MTIzNA==', 2, 1),
(13, 'qwerty', 'qwerty', '12334', '', 'qwerty@qwerty.com', 'MTIzNA==', 2, 1),
(14, 'q', 'q', '1234567', 'q', 'q@q.com', 'MTIzNA==', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_cabecera`
--

CREATE TABLE `ventas_cabecera` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `ventas_cabecera`
--

INSERT INTO `ventas_cabecera` (`id`, `fecha`, `usuario_id`, `total`) VALUES
(2, '2018-06-21', 4, 7800),
(3, '2018-06-21', 4, 7800),
(4, '2018-06-21', 4, 7800),
(5, '2018-06-21', 4, 7800),
(6, '2018-06-21', 4, 18000),
(7, '2018-06-21', 4, 18200),
(9, '2018-06-27', 8, 5300),
(10, '2018-07-04', 4, 4100),
(11, '2018-07-04', 4, 4600),
(12, '2018-07-04', 4, 6300),
(13, '2018-07-31', 4, 1800),
(14, '2018-08-01', 11, 1800),
(15, '2018-10-28', 14, 1800),
(16, '2018-10-30', 4, 3200);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_detalle`
--

CREATE TABLE `ventas_detalle` (
  `id` int(11) NOT NULL,
  `venta_id` int(111) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `precio` float NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `ventas_detalle`
--

INSERT INTO `ventas_detalle` (`id`, `venta_id`, `producto_id`, `cantidad`, `precio`, `total`) VALUES
(1, 2, 10, 3, 2600, 7800),
(2, 3, 10, 3, 2600, 7800),
(3, 4, 10, 3, 2600, 7800),
(4, 5, 10, 3, 2600, 7800),
(5, 6, 7, 10, 1800, 18000),
(6, 7, 10, 7, 2600, 18200),
(7, 9, 11, 2, 1600, 3200),
(8, 9, 13, 1, 2100, 2100),
(9, 10, 7, 1, 1800, 1800),
(10, 10, 8, 1, 2300, 2300),
(11, 11, 8, 2, 2300, 4600),
(12, 12, 13, 3, 2100, 6300),
(13, 13, 7, 1, 1800, 1800),
(14, 14, 7, 1, 1800, 1800),
(15, 15, 7, 1, 1800, 1800),
(16, 16, 11, 2, 1600, 3200);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `efecto`
--
ALTER TABLE `efecto`
  ADD PRIMARY KEY (`id_efecto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `efecto` (`efecto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas_cabecera`
--
ALTER TABLE `ventas_cabecera`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `ventas_detalle`
--
ALTER TABLE `ventas_detalle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `venta_id` (`venta_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `consultas`
--
ALTER TABLE `consultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `efecto`
--
ALTER TABLE `efecto`
  MODIFY `id_efecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `ventas_cabecera`
--
ALTER TABLE `ventas_cabecera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `ventas_detalle`
--
ALTER TABLE `ventas_detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`efecto`) REFERENCES `efecto` (`id_efecto`);

--
-- Filtros para la tabla `ventas_cabecera`
--
ALTER TABLE `ventas_cabecera`
  ADD CONSTRAINT `ventas_cabecera_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas_detalle`
--
ALTER TABLE `ventas_detalle`
  ADD CONSTRAINT `ventas_detalle_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `ventas_cabecera` (`id`),
  ADD CONSTRAINT `ventas_detalle_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
