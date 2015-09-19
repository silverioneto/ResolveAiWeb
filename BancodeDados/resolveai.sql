-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19-Set-2015 às 21:50
-- Versão do servidor: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resolveai`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agenda`
--

CREATE TABLE IF NOT EXISTS `agenda` (
  `_id` int(11) NOT NULL,
  `periodo_agenda` varchar(20) NOT NULL,
  `data_agenda` date NOT NULL,
  `ordem_servico_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `funcionario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `_id` int(11) NOT NULL,
  `cpf_cliente` varchar(11) DEFAULT NULL,
  `cnpj_cliente` varchar(14) DEFAULT NULL,
  `tel_cliente` varchar(20) DEFAULT NULL,
  `cel_cliente` varchar(20) DEFAULT NULL,
  `endereco_cliente` varchar(50) DEFAULT NULL,
  `users_uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE IF NOT EXISTS `funcionario` (
  `_id` int(11) NOT NULL,
  `nome_func` varchar(40) DEFAULT NULL,
  `login_func` varchar(20) NOT NULL,
  `encrypted_password` varchar(80) NOT NULL,
  `acesso_total` char(1) DEFAULT NULL,
  `email_func` varchar(30) DEFAULT NULL,
  `ultimo_acesso` timestamp NULL DEFAULT NULL,
  `salt` varchar(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`_id`, `nome_func`, `login_func`, `encrypted_password`, `acesso_total`, `email_func`, `ultimo_acesso`, `salt`) VALUES
(1, 'Silvério Neto', 'netores', 'H44IsUJpXo0rwHeFFlyA92DqZLE1MDRjNDBkNGU5', '1', 'netores1@gmail.com', NULL, '504c40d4e9');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordem_servico`
--

CREATE TABLE IF NOT EXISTS `ordem_servico` (
  `_id` int(11) NOT NULL,
  `id_func` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `tipo_equip_os` varchar(30) DEFAULT NULL,
  `ident_equip_os` varchar(50) NOT NULL,
  `descri_equip_os` varchar(50) NOT NULL,
  `defeito_equip_os` varchar(50) NOT NULL,
  `solucao_equip_os` varchar(50) NOT NULL,
  `data_entrada_os` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data_saida_os` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `situacao_os` varchar(50) NOT NULL,
  `previsao_os` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `valor_total_os` decimal(10,2) NOT NULL,
  `status_os` varchar(20) NOT NULL,
  `descri_serv_os` varchar(30) NOT NULL,
  `valor_serv_os` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ticket`
--

CREATE TABLE IF NOT EXISTS `ticket` (
  `_id` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_func` int(11) DEFAULT NULL,
  `assunto` varchar(20) DEFAULT NULL,
  `mensagem` varchar(100) DEFAULT NULL,
  `data` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(11) NOT NULL,
  `unique_id` varchar(23) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `encrypted_password` varchar(80) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`uid`, `unique_id`, `name`, `email`, `encrypted_password`, `salt`, `created_at`, `updated_at`) VALUES
(1, '55ef34e7cdb300.58163370', 'Silverio', 'neto', '1K/2d1fyYAJenCvyAMruUq+++qc4MGNmZjUxYmI0', '80cff51bb4', '2015-09-08 16:20:07', NULL),
(2, '55f1d5ca19c906.17192194', 'Silverio', 'netores', 'BXt6dhQdVjeHgzW9Sd6yUyEwiuA1ODAwMGI4ZjVk', '58000b8f5d', '2015-09-10 16:11:06', NULL),
(3, '55f32e92bcf489.23641376', 'Silverio Neto', 'netores1@gmail.com', 'H44IsUJpXo0rwHeFFlyA92DqZLE1MDRjNDBkNGU5', '504c40d4e9', '2015-09-11 16:42:10', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `Agenda_cliente` (`cliente_id`),
  ADD KEY `Agenda_funcionario` (`funcionario_id`),
  ADD KEY `Agenda_ordem_servico` (`ordem_servico_id`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `cliente_users` (`users_uid`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `ordem_servico`
--
ALTER TABLE `ordem_servico`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `fk_fk_funcionario_os` (`id_func`),
  ADD KEY `fk_os_cliente` (`id_cliente`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `fk_cliente_ticket` (`id_cliente`),
  ADD KEY `fk_funcionario_ticket` (`id_func`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `unique_id` (`unique_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `agenda`
--
ALTER TABLE `agenda`
  ADD CONSTRAINT `Agenda_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`_id`),
  ADD CONSTRAINT `Agenda_funcionario` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionario` (`_id`),
  ADD CONSTRAINT `Agenda_ordem_servico` FOREIGN KEY (`ordem_servico_id`) REFERENCES `ordem_servico` (`_id`);

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_users` FOREIGN KEY (`users_uid`) REFERENCES `users` (`uid`);

--
-- Limitadores para a tabela `ordem_servico`
--
ALTER TABLE `ordem_servico`
  ADD CONSTRAINT `fk_fk_funcionario_os` FOREIGN KEY (`id_func`) REFERENCES `funcionario` (`_id`),
  ADD CONSTRAINT `fk_os_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`_id`);

--
-- Limitadores para a tabela `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `fk_cliente_ticket` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`_id`),
  ADD CONSTRAINT `fk_funcionario_ticket` FOREIGN KEY (`id_func`) REFERENCES `funcionario` (`_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
