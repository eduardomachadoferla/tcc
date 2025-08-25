-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25/07/2025 às 15:18
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sosatraso`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `matricula` varchar(120) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `turma` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`matricula`, `nome`, `turma`) VALUES
('454654656', 'JOÃO VITOR ', 'EM2AM');



-- --------------------------------------------------------

--
-- Estrutura para tabela `sosatraso`
--

CREATE TABLE `sosatraso` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(120) NOT NULL,
  `turma` varchar(15) NOT NULL,
  `motivo` varchar(255) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `sosatraso`
--

INSERT INTO `sosatraso` (`id`, `nome`, `turma`, `motivo`, `data`) VALUES
(1, 'EDUARDO MACHADO FERLA', 'EM3AM', 'Chuva', '2025-04-07 22:31:08'),
(2, 'DAVI FRITZEN SOARES', 'EF7AT', 'Chuva', '2025-06-06 21:23:33'),
(3, 'DANIELY MACHADO FERLA', 'EF8AT', 'Chuva', '2025-06-06 21:23:39'),
(4, 'EDUARDO MACHADO FERLA', 'EM3AM', 'Imprevisto com o meio de transporte', '2025-06-06 21:49:30'),
(5, 'EDUARDO MACHADO FERLA', 'EM3AM', 'Chuva', '2025-06-06 21:49:35'),
(6, 'EDUARDO MACHADO FERLA', 'EM3AM', 'Chuva', '2025-07-01 20:44:09'),
(7, 'EDUARDO MACHADO FERLA', 'EM3AM', 'Chuva', '2025-07-01 20:44:42'),
(8, 'VALENTINA GOMES ARGENTON', 'EF5AM', 'Perdi o horário', '2025-07-01 21:42:33'),
(9, 'EDUARDA FERREIRA LIMA ALVES', 'EF7AT', 'Imprevisto com o meio de transporte', '2025-07-01 21:42:45'),
(10, 'DAVI FRITZEN SOARES', 'EF7AT', 'Chuva', '2025-07-01 21:47:06'),
(11, 'ÁMON PEDROSO LACOVIC', 'EI5AM', 'Perdi o horário', '2025-07-01 21:47:21'),
(12, 'MATHEUS GABRIEL DE SOUZA FERNANDES', 'EM1AM', 'Chuva', '2025-07-01 21:47:34'),
(13, 'DANIELY MACHADO FERLA', 'EF8AT', 'Chuva', '2025-07-01 21:47:56'),
(14, 'DAVI FRITZEN SOARES', 'EF7AT', 'Chuva', '2025-07-01 21:48:38'),
(15, 'DAVI FRITZEN SOARES', 'EF7AT', 'Outro: ska', '2025-07-01 21:48:56'),
(16, 'EDWARD SCHMITZ MAIA', 'EF7AT', 'Imprevisto com o meio de transporte', '2025-07-01 21:49:08'),
(17, 'VICTOR GABRIEL DAMASIO DE ANDRADE', 'EM3AM', 'Perdi o horário', '2025-07-01 21:49:25'),
(18, 'DAVI FRITZEN SOARES', 'EF7AT', 'Chuva', '2025-07-01 21:49:57'),
(19, 'ÁMON PEDROSO LACOVIC', 'EI5AM', 'Perdi o horário', '2025-07-01 21:50:10'),
(20, 'VICTOR GABRIEL DAMASIO DE ANDRADE', 'EM3AM', 'Perdi o horário', '2025-07-01 21:50:22'),
(21, 'MARIA CLARA RIBEIRO DE BRITO', 'EF6AT', 'Chuva', '2025-07-01 21:50:34'),
(22, 'KEVIN HENRIQUE DE SOUZA', 'EF3AM', 'Chuva', '2025-07-01 21:50:47'),
(23, 'EDUARDO MACHADO FERLA', 'EM3AM', 'Perdi o horário', '2025-07-03 22:41:35'),
(24, 'EDUARDO MACHADO FERLA', 'EM3AM', 'Chuva', '2025-07-03 22:46:15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `turmas`
--

CREATE TABLE `turmas` (
  `id` varchar(12) NOT NULL,
  `turma` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turmas`
--

INSERT INTO `turmas` (`id`, `turma`) VALUES
('EF1AT', 'Ensino Fundamental 1'),
('EF2AM', 'Ensino Fundamental 2'),
('EF3AM', 'Ensino Fundamental 3'),
('EF4AM', 'Ensino Fundamental 4'),
('EF5AM', 'Ensino Fundamental 5'),
('EF6AT', 'Ensino Fundamental 6'),
('EF7AT', 'Ensino Fundamental 7'),
('EF8AT', 'Ensino Fundamental 8'),
('EF9AT', 'Ensino Fundamental 9	'),
('EI1AM', 'Ensino Infantil 1'),
('EI2AM', 'Ensino Infantil 2'),
('EI3AM', 'Ensino Infantil 3'),
('EI4AM', 'Ensino Infantil 4'),
('EI5AM', 'Ensino Infantil 5'),
('EM1AM', 'Ensino Médio 1'),
('EM2AM', 'Ensino Médio 2'),
('EM3AM', 'Ensino Médio 3');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `setor` varchar(50) DEFAULT NULL,
  `permissao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `setor`, `permissao`) VALUES
(4, '', '', '$2y$10$5pWhq4EWAI5NYQKTlZF8q.y5jRb3vA9VEfkPBIMWZG/MOyOuDkJza', 'admin', 'admin'),
(25, 'dudu', 'dudyu@gmail.com', '$2y$10$6loPPJOzC8INLJ/QFvpntu3FCIGL6v8ai/yXpGsG8Eq.Sfoz5Om7e', 'educador', 'gerenciar_alunos,ver_relatorios'),
(28, 'duduuuu', 'duuu@gmail.com', '$2y$10$8AmArENL5ZPNTlqeLpIkmuaanHeZKmmGKdkAvrJ7DOwzJ4gESx2L.', 'admin', 'gerenciar_alunos,ver_relatorios,editar_turmas,administrar_usuarios');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`matricula`),
  ADD UNIQUE KEY `matricula` (`matricula`);

--
-- Índices de tabela `sosatraso`
--
ALTER TABLE `sosatraso`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `sosatraso`
--
ALTER TABLE `sosatraso`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
