-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/06/2024 às 02:46
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `senai`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `login_adm`
--

CREATE TABLE `login_adm` (
  `ra` int(15) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `curso` varchar(150) NOT NULL,
  `senha` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `login_adm`
--

INSERT INTO `login_adm` (`ra`, `nome`, `curso`, `senha`) VALUES
(197958632, 'prof de teste', 'medicina', 'admin.00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `login_alu`
--

CREATE TABLE `login_alu` (
  `ra` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `senha` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `login_alu`
--

INSERT INTO `login_alu` (`ra`, `nome`, `senha`) VALUES
(254976, 'aluno teste', 'admin.01');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `login_adm`
--
ALTER TABLE `login_adm`
  ADD PRIMARY KEY (`ra`);

--
-- Índices de tabela `login_alu`
--
ALTER TABLE `login_alu`
  ADD PRIMARY KEY (`ra`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
