SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

CREATE TABLE IF NOT EXISTS `atividade` (
  `idatividade` int(11) NOT NULL AUTO_INCREMENT,
  `idtipo_acao` int(11) DEFAULT NULL,
  `data_acao` date NOT NULL,
  `hora_acao` time NOT NULL,
  `idcadastro` int(11) NOT NULL,
  PRIMARY KEY (`idatividade`),
  KEY `fk_idcadastro` (`idcadastro`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=13 ;

INSERT INTO `atividade` (`idatividade`, `idtipo_acao`, `data_acao`, `hora_acao`, `idcadastro`) VALUES
(12, 1, '2012-09-28', '11:11:15', 3);

CREATE TABLE IF NOT EXISTS `cadastro` (
  `idcadastro` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `senha` varchar(15) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `bicho` tinyint(1) NOT NULL,
  `bicho_data` date NOT NULL,
  `bicho_hora` time NOT NULL,
  `nome` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `qtd_acesso` int(4) NOT NULL,
  KEY `idcadastro` (`idcadastro`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=36 ;

INSERT INTO `cadastro` (`idcadastro`, `login`, `senha`, `email`, `bicho`, `bicho_data`, `bicho_hora`, `nome`, `qtd_acesso`) VALUES
(1, 'tcccreatif', 'tcc2012', 'marianafonseca28@hotmail.com', 2, '0000-00-00', '00:00:00', 'TCC - PETCOOL', 0),
(4, 'fefe', 'cocodegalo', 'nandapinheiro_l@hotmail.com', 0, '2012-09-28', '13:20:29', 'fernanda', 26),
(33, 'Mini', 'mini', 'mini.camboim@hotmail.com', 2, '0000-00-00', '00:00:00', 'Thay', 1),
(32, '123', '123', '123', 0, '0000-00-00', '00:00:00', '123', 2),
(34, 'Danilo', '123456', 'inf_danilo2@hotmail.com', 0, '0000-00-00', '00:00:00', 'Danilo Pereira Sá', 1),
(35, 'japa', '1234567', 'email do japa', 0, '0000-00-00', '00:00:00', 'japones viado', 0);

CREATE TABLE IF NOT EXISTS `historico_acesso` (
  `id_hist_acess` int(11) NOT NULL AUTO_INCREMENT,
  `idcadastro` int(11) NOT NULL,
  `data_acesso` date NOT NULL,
  `hora_acesso` time NOT NULL,
  PRIMARY KEY (`id_hist_acess`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=45 ;

INSERT INTO `historico_acesso` (`id_hist_acess`, `idcadastro`, `data_acesso`, `hora_acesso`) VALUES
(1, 4, '2012-09-18', '20:46:38'),
(2, 4, '2012-09-18', '21:00:28'),
(3, 4, '2012-09-18', '21:02:10'),
(4, 4, '2012-09-18', '21:05:10'),
(5, 4, '2012-09-18', '21:06:36'),
(6, 32, '2012-09-18', '21:30:35'),
(7, 32, '2012-09-19', '05:19:18'),
(8, 4, '2012-09-19', '13:30:08'),
(9, 33, '2012-09-19', '13:31:58'),
(10, 4, '2012-09-19', '14:34:15'),
(11, 4, '2012-09-19', '16:40:07'),
(12, 4, '2012-09-25', '19:02:03'),
(13, 4, '2012-09-25', '20:14:31'),
(14, 4, '2012-09-25', '20:15:23'),
(15, 4, '2012-09-25', '20:16:52'),
(16, 4, '2012-09-25', '20:17:33'),
(17, 4, '2012-09-25', '20:18:45'),
(18, 4, '2012-09-25', '20:20:38'),
(19, 4, '2012-09-25', '20:21:07'),
(20, 4, '2012-09-25', '20:22:24'),
(21, 4, '2012-09-25', '20:24:02'),
(22, 4, '2012-09-25', '20:24:17'),
(23, 4, '2012-09-25', '20:24:34'),
(24, 4, '2012-09-25', '20:26:42'),
(25, 4, '2012-09-25', '20:27:14'),
(26, 4, '2012-09-25', '20:28:02'),
(27, 34, '2012-09-25', '20:31:01'),
(28, 0, '2012-09-25', '20:32:19'),
(29, 0, '2012-09-25', '20:32:22'),
(30, 4, '2012-09-25', '27:22:43'),
(31, 4, '2012-09-26', '10:25:05'),
(32, 4, '2012-09-26', '10:25:16'),
(33, 4, '2012-09-26', '10:28:02'),
(34, 4, '2012-09-26', '10:28:36'),
(35, 4, '2012-09-26', '10:36:22'),
(36, 0, '2012-09-26', '10:38:52'),
(37, 0, '2012-09-26', '10:45:16'),
(38, 0, '2012-09-26', '10:50:36'),
(39, 0, '2012-09-26', '12:10:35'),
(40, 0, '2012-09-27', '19:13:09'),
(41, 0, '2012-09-28', '10:14:50'),
(42, 0, '2012-09-28', '11:48:48'),
(43, 0, '2012-09-28', '13:40:15'),
(44, 0, '2012-09-28', '13:21:13');

CREATE TABLE IF NOT EXISTS `tipo_acao` (
  `idtipo_acao` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`idtipo_acao`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

INSERT INTO `tipo_acao` (`idtipo_acao`, `descricao`) VALUES
(1, 'Comida'),
(2, 'Banho'),
(3, 'Brincar'),
(4, 'Remédio');