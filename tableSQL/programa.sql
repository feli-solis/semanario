-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2014 at 08:42 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `semanauniversitaria`
--

-- --------------------------------------------------------

--
-- Table structure for table `programa`
--

CREATE TABLE IF NOT EXISTS `programa` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` varchar(32) NOT NULL,
  `evento` varchar(128) NOT NULL,
  `ponente` varchar(64) NOT NULL,
  `lugar` varchar(32) NOT NULL,
  `imagen` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `programa`
--

INSERT INTO `programa` (`id`, `fecha`, `hora`, `evento`, `ponente`, `lugar`, `imagen`) VALUES
(1, '2014-05-19', '8:00 -12:00', 'Presentación de Proyectos de Inglés.', 'Por Alumnos de Preparatoria.', 'Sala de Duela', 'duela.svg'),
(2, '2014-05-19', '12:00-12:30', 'Ceremonia de Inauguración.\r\n', '', 'Patio Principal', 'patio.svg'),
(3, '2014-05-19', '', 'Presentación del Coro del Instituto Sanmiguelense.', '', 'Patio Principal', 'patio.svg'),
(4, '2014-05-19', '14:00-15:00', 'Conferencia Magistral "Energías Renovables y Desarrollo\r\nSustentable: Fuente de Oportunidades Para el Ecosistema Emprendedor".', 'Por la Dra. Delia Simental.', 'Sala de Duela', 'duela.svg'),
(5, '2014-05-19', '15:00-16:00', 'Exposición de los Posters Pre y Post Guerra.', 'de Martin Rossenberg.', 'Arcos y Corredores', 'arcos.svg'),
(6, '2014-05-20', '8:00-11:00', 'Exposición Academica de Química y Física.', '', 'Sala de Duela', 'duela.svg'),
(7, '2014-05-20', '9:00-13:00', 'Olimpiada Regional de Matemáticas.', '', 'Salon de Usos Multiples', ''),
(8, '2014-05-20', '12:00-13:00', 'Conferencia Magistral "Emprendurismo".', 'Por la Dra. Sofia Ayala.', 'Sala de Duela', 'duela.svg'),
(9, '2014-05-20', '15:00-16:00', 'Charla "¿Nini ó Creativo?".', 'Por Benshorts.', 'Patio Principal', 'patio.svg'),
(10, '2014-05-21', '8:00-10:00', 'Conferencia "La Realidad de las Ideas".', 'Por el Ing. Fernando Balderas López.', 'Sala de Duela', 'duela.svg'),
(11, '2014-05-21', '10:00-13:00', 'Talleres de Risoterapia.', 'Para Alumnos de Preparatoria.', 'Prados', 'mapa.svg'),
(12, '2014-05-21', '13:00-14', 'Conferencia Magistral "La Imagen".', 'Por el Maestro Adolfo Falcón Garza.', 'Sala de Duela', 'duela.svg'),
(13, '2014-05-21', '18:00-19:00', 'Presentación del Libro "Remolino", Libro Interactivo de Análisis Político.', 'Por el Dr. Sergio Aguayo.', 'Patio Principal', 'patio.svg'),
(14, '2014-05-22', '18:00', 'Premiación de Ganadores de las Diferentes Competencias.', '', 'Patio Principal', 'patio.svg'),
(15, '2014-05-22', '10:00-11:30', 'Conferencia Magistral "Vive, Desarróllate, Viste y Actúa Como Todo un Líder".', 'Por el Mtro.Raúl Sadoc Ríos Ortega.', 'Sala de Duela', 'duela.svg'),
(16, '2014-05-22', '12:00-13:00', 'Exhibición  de Natación  por Integrantes del Equipo Olímpico Nacional.', '', 'Alberca', 'alberca.svg'),
(18, '2014-05-22', '8:00-18:00', 'Evento Deportivo y de Convivencia de la Comunidad Sanmiguelense.', '', 'Escuela', 'mapa.svg'),
(19, '2014-05-23', '10:00 - 11:00', 'Presentacion de la Plataforma de Software "Redes San Miguel"', 'Por Lic. José Alfredo Gutiérres Falcón', 'Sala de Duela', 'duela.svg'),
(20, '2014-05-23', '11:00 - 2:00', 'Taller de Risoterapia.', 'Para Alumnos de Licenciatura.', 'Prados', 'mapa.svg'),
(21, '2014-05-23', '17:00', 'Ceremonia Académica de Graduación y Clausura Oficial de la Semana de X Aniversario.', '', 'Patio Principal', 'patio.svg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
