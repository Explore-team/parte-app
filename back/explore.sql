-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2018 at 09:37 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `explore`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternativa_ponto_turistico`
--

CREATE TABLE `alternativa_ponto_turistico` (
  `cd_alternativa_ponto_turistico` int(11) NOT NULL,
  `nm_alternativa_ponto_turistico` text,
  `ic_alternativa_correta` tinyint(1) DEFAULT NULL,
  `cd_questao_ponto_turistico` int(11) NOT NULL,
  `cd_ponto_turistico` int(11) NOT NULL,
  `cd_escolaridade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternativa_ponto_turistico`
--

INSERT INTO `alternativa_ponto_turistico` (`cd_alternativa_ponto_turistico`, `nm_alternativa_ponto_turistico`, `ic_alternativa_correta`, `cd_questao_ponto_turistico`, `cd_ponto_turistico`, `cd_escolaridade`) VALUES
(10, 'qwertyuiop', 1, 11, 11, 11);

-- --------------------------------------------------------

--
-- Table structure for table `conquista`
--

CREATE TABLE `conquista` (
  `cd_conquista` int(11) NOT NULL,
  `nm_conquista` varchar(45) DEFAULT NULL,
  `qt_pontos_conquista` int(11) DEFAULT NULL,
  `qt_moedas_conquista` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conquista`
--

INSERT INTO `conquista` (`cd_conquista`, `nm_conquista`, `qt_pontos_conquista`, `qt_moedas_conquista`) VALUES
(10, 'Foda', 10, 10),
(11, 'master', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `escola`
--

CREATE TABLE `escola` (
  `cd_escola` int(11) NOT NULL,
  `nm_escola` varchar(100) DEFAULT NULL,
  `qt_pontos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `escola`
--

INSERT INTO `escola` (`cd_escola`, `nm_escola`, `qt_pontos`) VALUES
(10, 'Escolinha do Professor Raymundo', 20),
(11, 'Escolinha do Barulho', 10),
(12, 'Escola do Professor Girafales', 15);

-- --------------------------------------------------------

--
-- Table structure for table `escolaridade`
--

CREATE TABLE `escolaridade` (
  `cd_escolaridade` int(11) NOT NULL,
  `nm_escolaridade` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `escolaridade`
--

INSERT INTO `escolaridade` (`cd_escolaridade`, `nm_escolaridade`) VALUES
(1, 'fundamental'),
(2, 'Medio'),
(3, 'Superior'),
(11, 'medio');

-- --------------------------------------------------------

--
-- Table structure for table `ponto_turistico`
--

CREATE TABLE `ponto_turistico` (
  `cd_ponto_turistico` int(11) NOT NULL,
  `nm_ponto_turistico` varchar(45) DEFAULT NULL,
  `ds_ponto_turistico` longtext,
  `ds_linha_fina_ponto_turistico` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ponto_turistico`
--

INSERT INTO `ponto_turistico` (`cd_ponto_turistico`, `nm_ponto_turistico`, `ds_ponto_turistico`, `ds_linha_fina_ponto_turistico`) VALUES
(11, 'Narnia', 'qwertyui asdfghjklç zxcvbnm, lkjhgfds poiuytrew annd ewhfygfhioas ehfuaojffdap hfioakofdahfao hfueiajdiaihfua aeifhaeoiefheuaw eaohefua ', 'cvbnm dfghjk rtyuio rtyuio fghjkl cvbnm ');

-- --------------------------------------------------------

--
-- Table structure for table `produto_loja`
--

CREATE TABLE `produto_loja` (
  `cd_produto_loja` int(11) NOT NULL,
  `nm_produto_loja` varchar(45) DEFAULT NULL,
  `vl_produto_loja` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produto_loja`
--

INSERT INTO `produto_loja` (`cd_produto_loja`, `nm_produto_loja`, `vl_produto_loja`) VALUES
(11, 'Luva', '1');

-- --------------------------------------------------------

--
-- Table structure for table `questao_ponto_turistico`
--

CREATE TABLE `questao_ponto_turistico` (
  `cd_questao_ponto_turistico` int(11) NOT NULL,
  `nm_questao_ponto_turistico` text,
  `cd_ponto_turistico` int(11) NOT NULL,
  `cd_escolaridade` int(11) NOT NULL,
  `qt_pontos_questao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questao_ponto_turistico`
--

INSERT INTO `questao_ponto_turistico` (`cd_questao_ponto_turistico`, `nm_questao_ponto_turistico`, `cd_ponto_turistico`, `cd_escolaridade`, `qt_pontos_questao`) VALUES
(11, 'Questão x', 11, 11, 10);

-- --------------------------------------------------------

--
-- Table structure for table `resposta_usuario`
--

CREATE TABLE `resposta_usuario` (
  `cd_resposta_usuario` int(11) NOT NULL,
  `cd_usuario_login` varchar(100) NOT NULL,
  `cd_escolaridade` int(11) NOT NULL,
  `cd_escola` int(11) NOT NULL,
  `cd_alternativa_ponto_turistico` int(11) NOT NULL,
  `cd_questao_ponto_turistico` int(11) NOT NULL,
  `cd_ponto_turistico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `cd_tipo_usuario` int(11) NOT NULL,
  `nm_tipo_usuario` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`cd_tipo_usuario`, `nm_tipo_usuario`) VALUES
(11, 'Estudante');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `cd_usuario_login` varchar(100) NOT NULL,
  `nm_usuario` varchar(45) DEFAULT NULL,
  `cd_senha_usuario` varchar(32) DEFAULT NULL,
  `dt_nascimento_usuario` date DEFAULT NULL,
  `cd_email_usuario` varchar(50) DEFAULT NULL,
  `cd_escolaridade` int(11) DEFAULT NULL,
  `cd_escola` int(11) DEFAULT NULL,
  `cd_tipo_usuario` int(11) DEFAULT NULL,
  `qt_moeda_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`cd_usuario_login`, `nm_usuario`, `cd_senha_usuario`, `dt_nascimento_usuario`, `cd_email_usuario`, `cd_escolaridade`, `cd_escola`, `cd_tipo_usuario`, `qt_moeda_usuario`) VALUES
('01', 'felipe', '202cb962ac59075b964b07152d234b70', '2018-10-01', 'felipe@teste.com', 11, 11, 11, 12),
('13', 'pedro', '202cb962ac59075b964b07152d234b70', '2018-10-01', 'pedro@teste.com', 11, 11, 11, 1),
('exe', 'exe exe', '123', '2003-07-08', 'exe@teste.com', 1, 10, 11, 1),
('jÃ£o', 'JoÃ£o da Silva', '123', '2018-01-01', 'joao@teste.com', 3, 12, 11, 1),
('Jhonny', 'jonathas', '202cb962ac59075b964b07152d234b70', '2018-10-01', 'jon@teste.com', 11, 11, 11, 100),
('qwe', 'zxcvbnm', '123', '2018-01-01', 'qwe@qwe.qwe', 2, 11, 11, 1),
('will', 'will', '202cb962ac59075b964b07152d234b70', '2018-10-01', 'will@teste.com', 11, 11, 11, 20);

-- --------------------------------------------------------

--
-- Table structure for table `usuario_conquista`
--

CREATE TABLE `usuario_conquista` (
  `cd_usuario_login` varchar(100) NOT NULL,
  `cd_escolaridade` int(11) NOT NULL,
  `cd_escola` int(11) NOT NULL,
  `cd_tipo_usuario` int(11) NOT NULL,
  `cd_conquista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario_conquista`
--

INSERT INTO `usuario_conquista` (`cd_usuario_login`, `cd_escolaridade`, `cd_escola`, `cd_tipo_usuario`, `cd_conquista`) VALUES
('Jhonny', 11, 11, 11, 10);

-- --------------------------------------------------------

--
-- Table structure for table `usuario_ponto_turistico`
--

CREATE TABLE `usuario_ponto_turistico` (
  `cd_usuario_login` varchar(100) NOT NULL,
  `cd_escolaridade` int(11) NOT NULL,
  `cd_escola` int(11) NOT NULL,
  `cd_tipo_usuario` int(11) NOT NULL,
  `cd_ponto_turistico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario_ponto_turistico`
--

INSERT INTO `usuario_ponto_turistico` (`cd_usuario_login`, `cd_escolaridade`, `cd_escola`, `cd_tipo_usuario`, `cd_ponto_turistico`) VALUES
('Jhonny', 11, 11, 11, 11);

-- --------------------------------------------------------

--
-- Table structure for table `usuario_produto`
--

CREATE TABLE `usuario_produto` (
  `cd_usuario_login` varchar(100) NOT NULL,
  `cd_escolaridade` int(11) NOT NULL,
  `cd_escola` int(11) NOT NULL,
  `cd_tipo_usuario` int(11) NOT NULL,
  `cd_produto_loja` int(11) NOT NULL,
  `ic_ativado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario_produto`
--

INSERT INTO `usuario_produto` (`cd_usuario_login`, `cd_escolaridade`, `cd_escola`, `cd_tipo_usuario`, `cd_produto_loja`, `ic_ativado`) VALUES
('Jhonny', 11, 11, 11, 11, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternativa_ponto_turistico`
--
ALTER TABLE `alternativa_ponto_turistico`
  ADD PRIMARY KEY (`cd_alternativa_ponto_turistico`,`cd_questao_ponto_turistico`,`cd_escolaridade`,`cd_ponto_turistico`),
  ADD KEY `fk_alternativa_ponto_turistico_escolaridade` (`cd_escolaridade`),
  ADD KEY `fk_alternativa_ponto_turistico_ponto_turistico` (`cd_ponto_turistico`),
  ADD KEY `fk_alternativa_ponto_turistico_questao_ponto_turistico` (`cd_questao_ponto_turistico`);

--
-- Indexes for table `conquista`
--
ALTER TABLE `conquista`
  ADD PRIMARY KEY (`cd_conquista`);

--
-- Indexes for table `escola`
--
ALTER TABLE `escola`
  ADD PRIMARY KEY (`cd_escola`);

--
-- Indexes for table `escolaridade`
--
ALTER TABLE `escolaridade`
  ADD PRIMARY KEY (`cd_escolaridade`);

--
-- Indexes for table `ponto_turistico`
--
ALTER TABLE `ponto_turistico`
  ADD PRIMARY KEY (`cd_ponto_turistico`);

--
-- Indexes for table `produto_loja`
--
ALTER TABLE `produto_loja`
  ADD PRIMARY KEY (`cd_produto_loja`);

--
-- Indexes for table `questao_ponto_turistico`
--
ALTER TABLE `questao_ponto_turistico`
  ADD PRIMARY KEY (`cd_questao_ponto_turistico`,`cd_ponto_turistico`,`cd_escolaridade`),
  ADD KEY `pk_questao_ponto_turistico_ponto_turistico` (`cd_ponto_turistico`),
  ADD KEY `pk_questao_ponto_turistico_escolaridade` (`cd_escolaridade`);

--
-- Indexes for table `resposta_usuario`
--
ALTER TABLE `resposta_usuario`
  ADD PRIMARY KEY (`cd_resposta_usuario`,`cd_usuario_login`,`cd_escolaridade`,`cd_escola`,`cd_alternativa_ponto_turistico`,`cd_questao_ponto_turistico`,`cd_ponto_turistico`),
  ADD KEY `fk_resposta_usuario_escola` (`cd_escola`),
  ADD KEY `fk_resposta_usuario_escolaridade` (`cd_escolaridade`),
  ADD KEY `fk_resposta_usuario_usuario` (`cd_usuario_login`),
  ADD KEY `fk_resposta_usuario_alternativa` (`cd_alternativa_ponto_turistico`),
  ADD KEY `fk_resposta_usuario_questao` (`cd_questao_ponto_turistico`),
  ADD KEY `fk_resposta_usuario_ponto_turistico` (`cd_ponto_turistico`);

--
-- Indexes for table `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`cd_tipo_usuario`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cd_usuario_login`),
  ADD KEY `fk_escola_usuario` (`cd_escola`),
  ADD KEY `fk_tipo_usuario` (`cd_tipo_usuario`),
  ADD KEY `fk_escolaridade_usuario` (`cd_escolaridade`);

--
-- Indexes for table `usuario_conquista`
--
ALTER TABLE `usuario_conquista`
  ADD PRIMARY KEY (`cd_usuario_login`,`cd_escolaridade`,`cd_escola`,`cd_tipo_usuario`,`cd_conquista`),
  ADD KEY `fk_usuario_conquista_escolaridade` (`cd_escolaridade`),
  ADD KEY `fk_usuario_conquista_escola` (`cd_escola`),
  ADD KEY `fk_usuario_conquista_tipo_usuario` (`cd_tipo_usuario`),
  ADD KEY `fk_usuario_conquista_conquista` (`cd_conquista`);

--
-- Indexes for table `usuario_ponto_turistico`
--
ALTER TABLE `usuario_ponto_turistico`
  ADD PRIMARY KEY (`cd_usuario_login`,`cd_escolaridade`,`cd_escola`,`cd_ponto_turistico`,`cd_tipo_usuario`),
  ADD KEY `fk_usuario_ponto_turistico_escolaridade` (`cd_escolaridade`),
  ADD KEY `fk_usuario_ponto_turistico_escola` (`cd_escola`),
  ADD KEY `fk_usuario_ponto_turistico_tipo_usuario` (`cd_tipo_usuario`),
  ADD KEY `fk_usuario_ponto_turistico_ponto_turistico` (`cd_ponto_turistico`);

--
-- Indexes for table `usuario_produto`
--
ALTER TABLE `usuario_produto`
  ADD PRIMARY KEY (`cd_produto_loja`,`cd_usuario_login`,`cd_escola`,`cd_escolaridade`,`cd_tipo_usuario`),
  ADD KEY `fk_usuario_produto_usuario` (`cd_usuario_login`),
  ADD KEY `fk_usuario_produto_escola` (`cd_escola`),
  ADD KEY `fk_usuario_produto_tipo_usuario` (`cd_tipo_usuario`),
  ADD KEY `fk_usuario_produto_escolaridade` (`cd_escolaridade`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alternativa_ponto_turistico`
--
ALTER TABLE `alternativa_ponto_turistico`
  ADD CONSTRAINT `fk_alternativa_ponto_turistico_escolaridade` FOREIGN KEY (`cd_escolaridade`) REFERENCES `questao_ponto_turistico` (`cd_escolaridade`),
  ADD CONSTRAINT `fk_alternativa_ponto_turistico_ponto_turistico` FOREIGN KEY (`cd_ponto_turistico`) REFERENCES `questao_ponto_turistico` (`cd_ponto_turistico`),
  ADD CONSTRAINT `fk_alternativa_ponto_turistico_questao_ponto_turistico` FOREIGN KEY (`cd_questao_ponto_turistico`) REFERENCES `questao_ponto_turistico` (`cd_questao_ponto_turistico`);

--
-- Constraints for table `questao_ponto_turistico`
--
ALTER TABLE `questao_ponto_turistico`
  ADD CONSTRAINT `pk_questao_ponto_turistico_escolaridade` FOREIGN KEY (`cd_escolaridade`) REFERENCES `escolaridade` (`cd_escolaridade`),
  ADD CONSTRAINT `pk_questao_ponto_turistico_ponto_turistico` FOREIGN KEY (`cd_ponto_turistico`) REFERENCES `ponto_turistico` (`cd_ponto_turistico`);

--
-- Constraints for table `resposta_usuario`
--
ALTER TABLE `resposta_usuario`
  ADD CONSTRAINT `fk_resposta_usuario_alternativa` FOREIGN KEY (`cd_alternativa_ponto_turistico`) REFERENCES `alternativa_ponto_turistico` (`cd_alternativa_ponto_turistico`),
  ADD CONSTRAINT `fk_resposta_usuario_escola` FOREIGN KEY (`cd_escola`) REFERENCES `usuario` (`cd_escola`),
  ADD CONSTRAINT `fk_resposta_usuario_escolaridade` FOREIGN KEY (`cd_escolaridade`) REFERENCES `usuario` (`cd_escolaridade`),
  ADD CONSTRAINT `fk_resposta_usuario_ponto_turistico` FOREIGN KEY (`cd_ponto_turistico`) REFERENCES `alternativa_ponto_turistico` (`cd_ponto_turistico`),
  ADD CONSTRAINT `fk_resposta_usuario_questao` FOREIGN KEY (`cd_questao_ponto_turistico`) REFERENCES `alternativa_ponto_turistico` (`cd_questao_ponto_turistico`),
  ADD CONSTRAINT `fk_resposta_usuario_usuario` FOREIGN KEY (`cd_usuario_login`) REFERENCES `usuario` (`cd_usuario_login`);

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_escola_usuario` FOREIGN KEY (`cd_escola`) REFERENCES `escola` (`cd_escola`),
  ADD CONSTRAINT `fk_escolaridade_usuario` FOREIGN KEY (`cd_escolaridade`) REFERENCES `escolaridade` (`cd_escolaridade`),
  ADD CONSTRAINT `fk_tipo_usuario` FOREIGN KEY (`cd_tipo_usuario`) REFERENCES `tipo_usuario` (`cd_tipo_usuario`);

--
-- Constraints for table `usuario_conquista`
--
ALTER TABLE `usuario_conquista`
  ADD CONSTRAINT `fk_usuario_conquista_conquista` FOREIGN KEY (`cd_conquista`) REFERENCES `conquista` (`cd_conquista`),
  ADD CONSTRAINT `fk_usuario_conquista_escola` FOREIGN KEY (`cd_escola`) REFERENCES `usuario` (`cd_escola`),
  ADD CONSTRAINT `fk_usuario_conquista_escolaridade` FOREIGN KEY (`cd_escolaridade`) REFERENCES `usuario` (`cd_escolaridade`),
  ADD CONSTRAINT `fk_usuario_conquista_tipo_usuario` FOREIGN KEY (`cd_tipo_usuario`) REFERENCES `usuario` (`cd_tipo_usuario`),
  ADD CONSTRAINT `fk_usuario_conquista_usuario` FOREIGN KEY (`cd_usuario_login`) REFERENCES `usuario` (`cd_usuario_login`);

--
-- Constraints for table `usuario_ponto_turistico`
--
ALTER TABLE `usuario_ponto_turistico`
  ADD CONSTRAINT `fk_usuario_ponto_turistico_escola` FOREIGN KEY (`cd_escola`) REFERENCES `usuario` (`cd_escola`),
  ADD CONSTRAINT `fk_usuario_ponto_turistico_escolaridade` FOREIGN KEY (`cd_escolaridade`) REFERENCES `usuario` (`cd_escolaridade`),
  ADD CONSTRAINT `fk_usuario_ponto_turistico_ponto_turistico` FOREIGN KEY (`cd_ponto_turistico`) REFERENCES `ponto_turistico` (`cd_ponto_turistico`),
  ADD CONSTRAINT `fk_usuario_ponto_turistico_tipo_usuario` FOREIGN KEY (`cd_tipo_usuario`) REFERENCES `usuario` (`cd_tipo_usuario`),
  ADD CONSTRAINT `fk_usuario_ponto_turistico_usuario` FOREIGN KEY (`cd_usuario_login`) REFERENCES `usuario` (`cd_usuario_login`);

--
-- Constraints for table `usuario_produto`
--
ALTER TABLE `usuario_produto`
  ADD CONSTRAINT `fk_usuario_produto_escola` FOREIGN KEY (`cd_escola`) REFERENCES `usuario` (`cd_escola`),
  ADD CONSTRAINT `fk_usuario_produto_escolaridade` FOREIGN KEY (`cd_escolaridade`) REFERENCES `usuario` (`cd_escolaridade`),
  ADD CONSTRAINT `fk_usuario_produto_produto` FOREIGN KEY (`cd_produto_loja`) REFERENCES `produto_loja` (`cd_produto_loja`),
  ADD CONSTRAINT `fk_usuario_produto_tipo_usuario` FOREIGN KEY (`cd_tipo_usuario`) REFERENCES `usuario` (`cd_tipo_usuario`),
  ADD CONSTRAINT `fk_usuario_produto_usuario` FOREIGN KEY (`cd_usuario_login`) REFERENCES `usuario` (`cd_usuario_login`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
