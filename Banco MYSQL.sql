-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--

drop table currículos;
drop table vagas;

CREATE TABLE `curriculos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `datanasc` date NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `linguagens` varchar(200) NOT NULL,
  `diferenciais` varchar(150) DEFAULT NULL,
  `git` varchar(50) NOT NULL,
  `experiencias` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vagas`
--

CREATE TABLE `vagas` (
  `id` int(11) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `local` varchar(500) NOT NULL,
  `valor` int(11) NOT NULL,
  `beneficios` varchar(200) NOT NULL,
  `nome_empresa` varchar(100) NOT NULL,
  `contatos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
--
ALTER TABLE `vagas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabela `vagas`
--
ALTER TABLE `vagas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;
