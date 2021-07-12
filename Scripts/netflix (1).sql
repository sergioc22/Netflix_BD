-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-07-2021 a las 04:16:57
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `netflix`
--
CREATE DATABASE IF NOT EXISTS `netflix` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `netflix`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actua`
--

CREATE TABLE `actua` (
  `Id_Contenido` int(11) NOT NULL,
  `Id_Persona_Cont` int(11) NOT NULL,
  `Es_Protagonista` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `Id_Ciudad` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Descripcion` varchar(40) DEFAULT NULL,
  `Id_Pais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasificacionedad`
--

CREATE TABLE `clasificacionedad` (
  `Id_Edad` int(11) NOT NULL,
  `Descripcion` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conecta`
--

CREATE TABLE `conecta` (
  `Id_Perfil` int(11) NOT NULL,
  `Id_Dispositivo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido`
--

CREATE TABLE `contenido` (
  `id_Contenido` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Año_Lanzamiento` int(11) NOT NULL,
  `Es_Contenido_Original` tinyint(1) NOT NULL,
  `Id_idioma` int(11) NOT NULL,
  `Id_Edad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrata`
--

CREATE TABLE `contrata` (
  `Id_Usuario` int(11) NOT NULL,
  `Id_Suscripcion` int(11) NOT NULL,
  `Id_Tarjeta` int(11) NOT NULL,
  `Fecha_Inicio` date DEFAULT NULL,
  `Fecha_Fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dirige`
--

CREATE TABLE `dirige` (
  `Id_Contenido` int(11) NOT NULL,
  `Id_Persona_Cont` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dispositivo`
--

CREATE TABLE `dispositivo` (
  `Id_Dispositivo` int(11) NOT NULL,
  `Nombre_Dispositivo` varchar(20) NOT NULL,
  `Id_Tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `episodio`
--

CREATE TABLE `episodio` (
  `Id_Episodio` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Descripcion` varchar(60) NOT NULL,
  `Id_Temporada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `Id_Genero` int(11) NOT NULL,
  `Nombre` varchar(15) NOT NULL,
  `Descripcion` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `idioma`
--

CREATE TABLE `idioma` (
  `Id_Idioma` int(11) NOT NULL,
  `NombIdioma` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `Id_Pais` int(11) NOT NULL,
  `Nombre` varchar(15) NOT NULL,
  `Descripcion` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `Id_Pelicula` int(11) NOT NULL,
  `Mins_Duracion` int(11) NOT NULL,
  `Sinopsis` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `Id_Perfil` int(11) NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Nombre_Perfil` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_contenido`
--

CREATE TABLE `persona_contenido` (
  `Id_Persona_Cont` int(11) NOT NULL,
  `NombTrab` varchar(30) NOT NULL,
  `ApellidoTrab` varchar(30) NOT NULL,
  `Año_Experiencia` int(11) NOT NULL,
  `Sexo_Trab` char(1) NOT NULL,
  `Es_Actor` tinyint(1) NOT NULL,
  `Es_Director` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan`
--

CREATE TABLE `plan` (
  `Id_Plan` int(11) NOT NULL,
  `Nombre_Plan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `premio`
--

CREATE TABLE `premio` (
  `Id_Premio` int(11) NOT NULL,
  `NombPremio` varchar(25) NOT NULL,
  `Id_Pelicula_Ganadora` int(11) NOT NULL,
  `Año_Fue_Ganadora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recomendada`
--

CREATE TABLE `recomendada` (
  `Id_Pelicula` int(11) NOT NULL,
  `Id_Perfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requiere`
--

CREATE TABLE `requiere` (
  `Id_Contenido` int(11) NOT NULL,
  `Id_Suscripcion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serie`
--

CREATE TABLE `serie` (
  `Id_Serie` int(11) NOT NULL,
  `Descripcion` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripcion`
--

CREATE TABLE `suscripcion` (
  `Id_Suscripcion` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Tipo` varchar(20) NOT NULL,
  `Descripcion` varchar(40) DEFAULT NULL,
  `Tarifa` double NOT NULL,
  `Id_Plan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta_credito`
--

CREATE TABLE `tarjeta_credito` (
  `Id_Tarjeta` int(11) NOT NULL,
  `Cvv` int(11) NOT NULL,
  `Fecha_Vencimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporada`
--

CREATE TABLE `temporada` (
  `Id_Temporada` int(11) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Descripcion` varchar(60) NOT NULL,
  `Id_Serie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiene`
--

CREATE TABLE `tiene` (
  `Id_Contenido` int(11) NOT NULL,
  `Id_Genero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_dispositivo`
--

CREATE TABLE `tipo_dispositivo` (
  `Id_Tipo` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre_Usuario` varchar(20) UNIQUE DEFAULT NULL,
  `Email` varchar(30) NOT NULL,
  `Contraseña` varchar(15) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `Edad` int(11) NOT NULL,
  `Sexo` varchar(5) NOT NULL,
  `id_Ciudad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visualiza`
--

CREATE TABLE `visualiza` (
  `Id_Perfil` int(11) NOT NULL,
  `Id_Contenido` int(11) NOT NULL,
  `Calificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actua`
--
ALTER TABLE `actua`
  ADD PRIMARY KEY (`Id_Contenido`,`Id_Persona_Cont`),
  ADD KEY `Id_Persona_Cont` (`Id_Persona_Cont`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`Id_Ciudad`),
  ADD KEY `Id_Pais` (`Id_Pais`);

--
-- Indices de la tabla `clasificacionedad`
--
ALTER TABLE `clasificacionedad`
  ADD PRIMARY KEY (`Id_Edad`);

--
-- Indices de la tabla `conecta`
--
ALTER TABLE `conecta`
  ADD PRIMARY KEY (`Id_Perfil`,`Id_Dispositivo`),
  ADD KEY `Id_Dispositivo` (`Id_Dispositivo`);

--
-- Indices de la tabla `contenido`
--
ALTER TABLE `contenido`
  ADD PRIMARY KEY (`id_Contenido`),
  ADD KEY `Fk_Idioma` (`Id_idioma`),
  ADD KEY `Fk_Edad` (`Id_Edad`);

--
-- Indices de la tabla `contrata`
--
ALTER TABLE `contrata`
  ADD PRIMARY KEY (`Id_Usuario`,`Id_Suscripcion`,`Id_Tarjeta`),
  ADD KEY `Id_Suscripcion` (`Id_Suscripcion`),
  ADD KEY `Id_Tarjeta` (`Id_Tarjeta`);

--
-- Indices de la tabla `dirige`
--
ALTER TABLE `dirige`
  ADD PRIMARY KEY (`Id_Contenido`,`Id_Persona_Cont`),
  ADD KEY `Id_Persona_Cont` (`Id_Persona_Cont`);

--
-- Indices de la tabla `dispositivo`
--
ALTER TABLE `dispositivo`
  ADD PRIMARY KEY (`Id_Dispositivo`),
  ADD KEY `Id_Tipo` (`Id_Tipo`);

--
-- Indices de la tabla `episodio`
--
ALTER TABLE `episodio`
  ADD PRIMARY KEY (`Id_Episodio`),
  ADD KEY `Id_Temporada` (`Id_Temporada`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`Id_Genero`);

--
-- Indices de la tabla `idioma`
--
ALTER TABLE `idioma`
  ADD PRIMARY KEY (`Id_Idioma`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`Id_Pais`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`Id_Pelicula`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`Id_Perfil`),
  ADD KEY `Id_Usuario` (`Id_Usuario`);

--
-- Indices de la tabla `persona_contenido`
--
ALTER TABLE `persona_contenido`
  ADD PRIMARY KEY (`Id_Persona_Cont`);

--
-- Indices de la tabla `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`Id_Plan`);

--
-- Indices de la tabla `premio`
--
ALTER TABLE `premio`
  ADD PRIMARY KEY (`Id_Premio`),
  ADD KEY `Fk_Pelicula` (`Id_Pelicula_Ganadora`);

--
-- Indices de la tabla `recomendada`
--
ALTER TABLE `recomendada`
  ADD PRIMARY KEY (`Id_Pelicula`,`Id_Perfil`),
  ADD KEY `Id_Perfil` (`Id_Perfil`);

--
-- Indices de la tabla `requiere`
--
ALTER TABLE `requiere`
  ADD PRIMARY KEY (`Id_Contenido`,`Id_Suscripcion`),
  ADD KEY `Id_Suscripcion` (`Id_Suscripcion`);

--
-- Indices de la tabla `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`Id_Serie`);

--
-- Indices de la tabla `suscripcion`
--
ALTER TABLE `suscripcion`
  ADD PRIMARY KEY (`Id_Suscripcion`),
  ADD KEY `Id_Plan` (`Id_Plan`);

--
-- Indices de la tabla `tarjeta_credito`
--
ALTER TABLE `tarjeta_credito`
  ADD PRIMARY KEY (`Id_Tarjeta`);

--
-- Indices de la tabla `temporada`
--
ALTER TABLE `temporada`
  ADD PRIMARY KEY (`Id_Temporada`),
  ADD KEY `Id_Serie` (`Id_Serie`);

--
-- Indices de la tabla `tiene`
--
ALTER TABLE `tiene`
  ADD PRIMARY KEY (`Id_Contenido`,`Id_Genero`),
  ADD KEY `Id_Genero` (`Id_Genero`);

--
-- Indices de la tabla `tipo_dispositivo`
--
ALTER TABLE `tipo_dispositivo`
  ADD PRIMARY KEY (`Id_Tipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD KEY `fk_Ciudad` (`id_Ciudad`);

--
-- Indices de la tabla `visualiza`
--
ALTER TABLE `visualiza`
  ADD PRIMARY KEY (`Id_Perfil`,`Id_Contenido`),
  ADD KEY `Id_Contenido` (`Id_Contenido`),
  ADD KEY `Id_Perfil` (`Id_Perfil`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `Id_Ciudad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clasificacionedad`
--
ALTER TABLE `clasificacionedad`
  MODIFY `Id_Edad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contenido`
--
ALTER TABLE `contenido`
  MODIFY `id_Contenido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dispositivo`
--
ALTER TABLE `dispositivo`
  MODIFY `Id_Dispositivo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `episodio`
--
ALTER TABLE `episodio`
  MODIFY `Id_Episodio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `Id_Genero` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `idioma`
--
ALTER TABLE `idioma`
  MODIFY `Id_Idioma` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `Id_Pais` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `Id_Pelicula` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `Id_Perfil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `persona_contenido`
--
ALTER TABLE `persona_contenido`
  MODIFY `Id_Persona_Cont` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plan`
--
ALTER TABLE `plan`
  MODIFY `Id_Plan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `premio`
--
ALTER TABLE `premio`
  MODIFY `Id_Premio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `suscripcion`
--
ALTER TABLE `suscripcion`
  MODIFY `Id_Suscripcion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `temporada`
--
ALTER TABLE `temporada`
  MODIFY `Id_Temporada` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_dispositivo`
--
ALTER TABLE `tipo_dispositivo`
  MODIFY `Id_Tipo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `actua`
--
ALTER TABLE `actua`
  ADD CONSTRAINT `FK_Conte` FOREIGN KEY (`Id_Contenido`) REFERENCES `contenido` (`id_Contenido`),
  ADD CONSTRAINT `FK_Contenido` FOREIGN KEY (`Id_Contenido`) REFERENCES `contenido` (`id_Contenido`),
  ADD CONSTRAINT `actua_ibfk_1` FOREIGN KEY (`Id_Contenido`) REFERENCES `contenido` (`id_Contenido`),
  ADD CONSTRAINT `actua_ibfk_2` FOREIGN KEY (`Id_Persona_Cont`) REFERENCES `persona_contenido` (`Id_Persona_Cont`);

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`Id_Pais`) REFERENCES `pais` (`Id_Pais`);

--
-- Filtros para la tabla `conecta`
--
ALTER TABLE `conecta`
  ADD CONSTRAINT `Fk_Perf` FOREIGN KEY (`Id_Perfil`) REFERENCES `perfil` (`Id_Perfil`),
  ADD CONSTRAINT `conecta_ibfk_1` FOREIGN KEY (`Id_Perfil`) REFERENCES `perfil` (`Id_Perfil`),
  ADD CONSTRAINT `conecta_ibfk_2` FOREIGN KEY (`Id_Dispositivo`) REFERENCES `dispositivo` (`Id_Dispositivo`);

--
-- Filtros para la tabla `contenido`
--
ALTER TABLE `contenido`
  ADD CONSTRAINT `Fk_Edad` FOREIGN KEY (`Id_Edad`) REFERENCES `clasificacionedad` (`Id_Edad`),
  ADD CONSTRAINT `Fk_Idioma` FOREIGN KEY (`Id_idioma`) REFERENCES `idioma` (`Id_Idioma`);

--
-- Filtros para la tabla `contrata`
--
ALTER TABLE `contrata`
  ADD CONSTRAINT `contrata_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`),
  ADD CONSTRAINT `contrata_ibfk_2` FOREIGN KEY (`Id_Suscripcion`) REFERENCES `suscripcion` (`Id_Suscripcion`),
  ADD CONSTRAINT `contrata_ibfk_3` FOREIGN KEY (`Id_Tarjeta`) REFERENCES `tarjeta_credito` (`Id_Tarjeta`);

--
-- Filtros para la tabla `dirige`
--
ALTER TABLE `dirige`
  ADD CONSTRAINT `dirige_ibfk_1` FOREIGN KEY (`Id_Contenido`) REFERENCES `contenido` (`id_Contenido`),
  ADD CONSTRAINT `dirige_ibfk_2` FOREIGN KEY (`Id_Persona_Cont`) REFERENCES `persona_contenido` (`Id_Persona_Cont`);

--
-- Filtros para la tabla `dispositivo`
--
ALTER TABLE `dispositivo`
  ADD CONSTRAINT `dispositivo_ibfk_1` FOREIGN KEY (`Id_Tipo`) REFERENCES `tipo_dispositivo` (`Id_Tipo`);

--
-- Filtros para la tabla `episodio`
--
ALTER TABLE `episodio`
  ADD CONSTRAINT `episodio_ibfk_1` FOREIGN KEY (`Id_Temporada`) REFERENCES `temporada` (`Id_Temporada`);

--
-- Filtros para la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD CONSTRAINT `pelicula_ibfk_1` FOREIGN KEY (`Id_Pelicula`) REFERENCES `contenido` (`id_Contenido`);

--
-- Filtros para la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD CONSTRAINT `perfil_ibfk_1` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`);

--
-- Filtros para la tabla `premio`
--
ALTER TABLE `premio`
  ADD CONSTRAINT `Fk_Pelicula` FOREIGN KEY (`Id_Pelicula_Ganadora`) REFERENCES `pelicula` (`Id_Pelicula`);

--
-- Filtros para la tabla `recomendada`
--
ALTER TABLE `recomendada`
  ADD CONSTRAINT `recomendada_ibfk_1` FOREIGN KEY (`Id_Pelicula`) REFERENCES `pelicula` (`Id_Pelicula`),
  ADD CONSTRAINT `recomendada_ibfk_2` FOREIGN KEY (`Id_Perfil`) REFERENCES `perfil` (`Id_Perfil`);

--
-- Filtros para la tabla `requiere`
--
ALTER TABLE `requiere`
  ADD CONSTRAINT `requiere_ibfk_1` FOREIGN KEY (`Id_Contenido`) REFERENCES `contenido` (`id_Contenido`),
  ADD CONSTRAINT `requiere_ibfk_2` FOREIGN KEY (`Id_Suscripcion`) REFERENCES `suscripcion` (`Id_Suscripcion`);

--
-- Filtros para la tabla `serie`
--
ALTER TABLE `serie`
  ADD CONSTRAINT `serie_ibfk_1` FOREIGN KEY (`Id_Serie`) REFERENCES `contenido` (`id_Contenido`);

--
-- Filtros para la tabla `suscripcion`
--
ALTER TABLE `suscripcion`
  ADD CONSTRAINT `suscripcion_ibfk_1` FOREIGN KEY (`Id_Plan`) REFERENCES `plan` (`Id_Plan`);

--
-- Filtros para la tabla `temporada`
--
ALTER TABLE `temporada`
  ADD CONSTRAINT `temporada_ibfk_1` FOREIGN KEY (`Id_Serie`) REFERENCES `serie` (`Id_Serie`);

--
-- Filtros para la tabla `tiene`
--
ALTER TABLE `tiene`
  ADD CONSTRAINT `tiene_ibfk_1` FOREIGN KEY (`Id_Contenido`) REFERENCES `contenido` (`id_Contenido`),
  ADD CONSTRAINT `tiene_ibfk_2` FOREIGN KEY (`Id_Genero`) REFERENCES `genero` (`Id_Genero`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_Ciudad` FOREIGN KEY (`id_Ciudad`) REFERENCES `ciudad` (`Id_Ciudad`);

--
-- Filtros para la tabla `visualiza`
--
ALTER TABLE `visualiza`
  ADD CONSTRAINT `visualiza_ibfk_1` FOREIGN KEY (`Id_Perfil`) REFERENCES `perfil` (`Id_Perfil`),
  ADD CONSTRAINT `visualiza_ibfk_2` FOREIGN KEY (`Id_Contenido`) REFERENCES `contenido` (`id_Contenido`);
COMMIT;

ALTER TABLE `usuario`
	ADD CONSTRAINT edad_mayor_zero CHECK (edad > 0),
	ADD CONSTRAINT check_sexo CHECK (sexo = 'M' OR sexo='F' OR sexo='N/A');

ALTER TABLE `visualiza` 
	ADD CONSTRAINT calif_check CHECK (Calificacion > 0 AND Calificacion < 6 );

ALTER TABLE `persona_contenido`
	ADD CONSTRAINT check_sexo_act CHECK (Sexo_Trab = 'M' OR Sexo_Trab='F' OR Sexo_Trab ='N/A'),
	ADD CONSTRAINT check_experiencia CHECK (Año_Experiencia > 0);

ALTER TABLE `tarjeta_credito`
	ADD CONSTRAINT check_numero CHECK (Id_Tarjeta > 0 AND Cvv > 0);
ALTER TABLE `suscripcion`
	ADD CONSTRAINT check_tarifa CHECK (Tarifa > 0);
ALTER TABLE `contenido` 
	ADD CONSTRAINT check_lanzamiento CHECK (Año_Lanzamiento > 1900);
ALTER TABLE `episodio`
	ADD CONSTRAINT check_episodio CHECK (Numero > 0);
ALTER TABLE `pelicula`
	ADD CONSTRAINT check_minutos CHECK (Mins_Duracion > 0);
ALTER TABLE `premio`
	ADD CONSTRAINT check_premio CHECK (Año_Fue_Ganadora > 1900);
ALTER TABLE `temporada`
	ADD CONSTRAINT check_temporada CHECK (Numero > 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
