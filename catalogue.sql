-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Dez-2018 às 20:28
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 7.1.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

 
module.exports = {selectCustomers}
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catalogue`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `catalogue_post_form`
--

CREATE TABLE `catalogue_post_form` (
  `id` int(11) NOT NULL,
  `nomeA` varchar(255) NOT NULL,
  `nomeA2` varchar(255) NOT NULL,
  `nomeA3` varchar(255) NOT NULL,
  `nomeC` varchar(255) NOT NULL,
  `nomeO` varchar(255) NOT NULL,
  `genCoor` varchar(255) NOT NULL,
  `genOrient` varchar(255) NOT NULL,
  `curso` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `ano` int(4) NOT NULL,
  `pag` int(10) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `assunto` varchar(140) NOT NULL,
  `datahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ilustracao` varchar(10) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `arquivo` varchar(255) NOT NULL,
  `cutter` varchar(10) NOT NULL,
  `CDU` varchar(20) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `atualizacao` tinyint(1) NOT NULL,
  `negacao` tinyint(1) NOT NULL,
  `motivo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `catalogue_usuario`
--

CREATE TABLE `catalogue_usuario` (
  `id` int(11) NOT NULL,
  `mat` varchar(20) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `vinculo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalogue_post_form`
--
ALTER TABLE `catalogue_post_form`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id_fk` (`usuario_id`);

--
-- Indexes for table `catalogue_usuario`
--
ALTER TABLE `catalogue_usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalogue_post_form`
--
ALTER TABLE `catalogue_post_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `catalogue_usuario`
--
ALTER TABLE `catalogue_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `catalogue_post_form`
--
ALTER TABLE `catalogue_post_form`
  ADD CONSTRAINT `catalogue_post_form_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `catalogue_usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
