-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Máquina: 127.0.0.1
-- Data de Criação: 24-Maio-2014 às 02:53
-- Versão do servidor: 5.5.32
-- versão do PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `nobel`
--
CREATE DATABASE IF NOT EXISTS `nobel` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `nobel`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `isbn` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `name` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `author` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `edition` int(3) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `publishing` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `books`
--

INSERT INTO `books` (`isbn`, `created`, `modified`, `name`, `author`, `edition`, `year`, `publishing`) VALUES
(1, '2014-04-10 03:17:33', '2014-04-10 03:17:33', 'Teste', 'Teste', 1, 1991, 'Teste'),
(12331, '2014-04-18 14:35:50', '2014-04-18 14:35:50', 'Nem sei 2', 'TambÃ©m', 1, 2312, 'AAAA'),
(111123, '2014-04-18 14:32:33', '2014-04-18 14:32:33', 'Nem sei', 'TambÃ©m', 1, 2222, 'AAAA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `tel` bigint(20) DEFAULT NULL,
  `cel` bigint(20) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `number` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `district` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `clients`
--

INSERT INTO `clients` (`name`, `created`, `modified`, `tel`, `cel`, `birth`, `email`, `address`, `number`, `district`, `city`) VALUES
('Daniela Kanno Vieira', '2014-03-08 04:17:47', '2014-03-08 04:17:47', NULL, NULL, '2014-03-08', '', '', NULL, NULL, NULL),
('Daniela Vieira', '2014-03-13 04:26:43', '2014-03-13 04:26:43', NULL, NULL, '2014-03-13', '', '', NULL, NULL, NULL),
('Euclides', '2014-03-13 04:25:45', '2014-03-13 04:25:45', 111111111111, 111111111, '2014-03-13', '', '', NULL, NULL, NULL),
('Fabiane Sabrine Correa Ribeiro', '2014-03-02 02:39:09', '2014-03-02 02:39:09', NULL, NULL, '2014-03-02', '', '', NULL, NULL, NULL),
('Messias Vieira Pinto', '2014-02-20 02:25:19', '2014-02-20 02:25:19', 1231252815, 12988209233, '2014-02-20', 'danutti@terra.com.br', 'Rua Tte Francisco Moreira Santos, 195, Beira Rio I, GuaratinguetÃ¡', NULL, NULL, NULL),
('Selma', '2014-03-19 22:42:47', '2014-03-19 22:42:47', NULL, NULL, NULL, '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `book_isbn` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `book_isbn` (`book_isbn`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `items`
--

INSERT INTO `items` (`id`, `created`, `modified`, `order_id`, `book_isbn`, `amount`, `price`) VALUES
(2, '2014-04-13 05:42:16', '2014-04-13 05:42:16', 2, NULL, 1, 69.9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `arrival_date` datetime DEFAULT NULL,
  `delivered` datetime DEFAULT NULL,
  `client_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `supplier_name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `amount_charged` float NOT NULL,
  `amount_paid_cash` float NOT NULL DEFAULT '0',
  `amount_paid_card` float NOT NULL DEFAULT '0',
  `amount_paid_check` float NOT NULL DEFAULT '0',
  `status` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `discount` float NOT NULL DEFAULT '0',
  `observation` text COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  KEY `client_name` (`client_name`),
  KEY `supplier_name` (`supplier_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `orders`
--

INSERT INTO `orders` (`id`, `created`, `modified`, `arrival_date`, `delivered`, `client_name`, `supplier_name`, `amount_charged`, `amount_paid_cash`, `amount_paid_card`, `amount_paid_check`, `status`, `discount`, `observation`) VALUES
(2, '2014-04-13 05:42:15', '2014-04-13 05:42:15', NULL, NULL, 'Fabiane Sabrine Correa Ribeiro', NULL, 69.9, 44, 0, 0, '', 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `cnpj` int(11) DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `tel` int(11) DEFAULT NULL,
  `automatic_email` tinyint(1) NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `cnpj` (`cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`username`, `password`, `created`, `modified`) VALUES
('Paulo', '9d9e0d37748b2b2cdf208c854831e7a4bcecca6effce9ce23d4214e7e2477199', '2014-01-30 22:13:53', '2014-01-30 22:13:53');

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `items_ibfk_2` FOREIGN KEY (`book_isbn`) REFERENCES `books` (`isbn`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Limitadores para a tabela `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`supplier_name`) REFERENCES `suppliers` (`name`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
