-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: tcc1
-- ------------------------------------------------------
-- Server version	10.3.22-MariaDB-0ubuntu0.19.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cadastro_torneio`
--

DROP TABLE IF EXISTS `cadastro_torneio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cadastro_torneio` (
  `cod_cadastro_torneio` int(11) NOT NULL AUTO_INCREMENT,
  `flg_ranking` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  `tipo_torneio` int(11) DEFAULT NULL,
  `saldo_torneio` int(11) DEFAULT NULL,
  `peso_torneio` int(11) DEFAULT NULL,
  `dt_torneio` date DEFAULT NULL,
  `nome_torneio` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `cod_torneio` int(11) DEFAULT NULL,
  `situacao_id` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`cod_cadastro_torneio`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadastro_torneio`
--

LOCK TABLES `cadastro_torneio` WRITE;
/*!40000 ALTER TABLE `cadastro_torneio` DISABLE KEYS */;
INSERT INTO `cadastro_torneio` VALUES (1,'1',2,NULL,2,NULL,'JOGO CASEIRO',NULL,1),(2,'1',2,NULL,3,NULL,'teste 1',NULL,1),(3,'0',4,NULL,3,NULL,'teste 2',NULL,0),(4,'0',2,NULL,1,NULL,'teste teste',NULL,1),(5,'1',2,NULL,2,NULL,'teste dani final?',NULL,0),(6,'1',2,NULL,2,NULL,'Willians House',NULL,1);
/*!40000 ALTER TABLE `cadastro_torneio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caixa`
--

DROP TABLE IF EXISTS `caixa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caixa` (
  `cod_caixa` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_abertura` date DEFAULT NULL,
  `data_fechamento` date DEFAULT NULL,
  `valor_pagar` float DEFAULT NULL,
  `valor_pago` float DEFAULT NULL,
  `cod_admin` int(11) DEFAULT NULL,
  `cod_clube` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_caixa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caixa`
--

LOCK TABLES `caixa` WRITE;
/*!40000 ALTER TABLE `caixa` DISABLE KEYS */;
INSERT INTO `caixa` VALUES (1,'2018-03-05',NULL,NULL,NULL,10,1);
/*!40000 ALTER TABLE `caixa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carousels`
--

DROP TABLE IF EXISTS `carousels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carousels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(520) NOT NULL,
  `url` varchar(520) NOT NULL,
  `imagem` varchar(520) NOT NULL,
  `ordem` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carousels`
--

LOCK TABLES `carousels` WRITE;
/*!40000 ALTER TABLE `carousels` DISABLE KEYS */;
INSERT INTO `carousels` VALUES (2,'Mesa','http://ikedateste.com.br/','slide_1.png',3,'2015-10-05 21:47:24','2018-01-27 18:53:28'),(4,'Guarda Roupa Com Espelho','http://ikedateste.com.br/cursos/8/raciocinio-logico-para-concurso-publico-do-inss','slide_3.png',2,'2015-10-06 10:37:23','2018-01-27 18:53:28'),(5,'Cabeceiras','ikedateste.com.br/cursos/7/informatica_para_concurso_publico_do_inss','slide_2.png',1,'2015-10-06 10:38:37','2018-01-27 18:53:18'),(6,'teste 4','ikedateste.com.br/cursos/6/portugues_para_concurso_publico_do_inss','slide_11.png',4,'2015-10-06 10:38:52',NULL);
/*!40000 ALTER TABLE `carousels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(520) NOT NULL,
  `slug` varchar(220) NOT NULL,
  `tag` varchar(220) NOT NULL,
  `description` varchar(550) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'ESCRITORIO','escritorio','0','escritorio','2015-09-26 21:18:47','2020-09-17 16:25:06'),(4,'Cozinha','cozinha','cozinha','cozinha','2015-09-26 22:11:13','2015-10-03 23:10:32'),(5,'Sala','sala','sala','sala','2015-09-26 22:11:35','2015-10-05 21:26:10');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clube`
--

DROP TABLE IF EXISTS `clube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clube` (
  `cod_clube` int(11) NOT NULL AUTO_INCREMENT,
  `nome_clube` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `end_clube` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `doc_clube` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `tel_clube` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `email_clube` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `login_clube` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `senha_clube` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `cod_plano` int(11) DEFAULT NULL,
  `dt_registro_clube` date DEFAULT NULL,
  `saldo_clube` int(11) DEFAULT NULL,
  `apelido_clube` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `dt_nascimento` date DEFAULT NULL,
  `cod_torneio` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_clube`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clube`
--

LOCK TABLES `clube` WRITE;
/*!40000 ALTER TABLE `clube` DISABLE KEYS */;
/*!40000 ALTER TABLE `clube` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contatos`
--

DROP TABLE IF EXISTS `contatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contatos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(550) NOT NULL,
  `email` varchar(550) NOT NULL,
  `telefone` varchar(550) NOT NULL,
  `assunto` varchar(550) NOT NULL,
  `mensagem` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contatos`
--

LOCK TABLES `contatos` WRITE;
/*!40000 ALTER TABLE `contatos` DISABLE KEYS */;
INSERT INTO `contatos` VALUES (1,'teste1','teste1@teste1','teste1','teste1','teste1','2015-10-06 15:06:17',NULL),(2,'teste2','teste2@teste2','teste2','teste2','teste2','2015-10-06 15:06:58',NULL),(3,'teste3','teste3@teste3','teste3','teste3','teste3','2015-10-06 15:08:10',NULL);
/*!40000 ALTER TABLE `contatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destaques_produtos`
--

DROP TABLE IF EXISTS `destaques_produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destaques_produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produto_id` int(11) NOT NULL,
  `nivel_um` int(11) NOT NULL,
  `nivel_dois` int(11) NOT NULL,
  `interessar` int(11) NOT NULL,
  `ordem` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destaques_produtos`
--

LOCK TABLES `destaques_produtos` WRITE;
/*!40000 ALTER TABLE `destaques_produtos` DISABLE KEYS */;
INSERT INTO `destaques_produtos` VALUES (2,13,0,1,0,4,'2015-10-04 00:00:00','2015-10-05 20:02:20'),(4,9,1,0,0,1,'2015-10-04 00:00:00','2015-10-05 21:29:20'),(7,14,0,1,0,3,'2015-10-05 00:00:00','2015-10-05 20:02:20'),(8,15,0,1,0,2,'2015-10-05 00:00:00','2015-10-05 21:09:06'),(9,13,1,0,0,4,'2015-10-05 21:01:23','2015-10-05 21:17:21'),(15,3,1,0,0,2,'2015-10-05 21:14:35','2015-10-05 21:32:17'),(18,15,1,0,0,3,'2015-10-05 21:30:16','2015-10-05 21:32:17');
/*!40000 ALTER TABLE `destaques_produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estoque` (
  `qtd_produto` int(11) DEFAULT NULL,
  `cod_clube` int(11) DEFAULT NULL,
  `id_produto` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (4950,1,16),(1080,1,1),(10000,10,17),(500,1,11);
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensagens`
--

DROP TABLE IF EXISTS `mensagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensagens` (
  `cod_mensagem` int(11) NOT NULL AUTO_INCREMENT,
  `conteudo_mensagem` varchar(10000) COLLATE utf8_bin DEFAULT NULL,
  `data_envio` date DEFAULT NULL,
  `data_criacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `assunto` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`cod_mensagem`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensagens`
--

LOCK TABLES `mensagens` WRITE;
/*!40000 ALTER TABLE `mensagens` DISABLE KEYS */;
INSERT INTO `mensagens` VALUES (1,'site','2018-02-07','2018-02-09 01:40:22','<p>Estamos criando um site</p>\r\n');
/*!40000 ALTER TABLE `mensagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesa`
--

DROP TABLE IF EXISTS `mesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesa` (
  `cod_mesa` int(11) DEFAULT NULL,
  `numero_mesa` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesa`
--

LOCK TABLES `mesa` WRITE;
/*!40000 ALTER TABLE `mesa` DISABLE KEYS */;
/*!40000 ALTER TABLE `mesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metodos_pgto`
--

DROP TABLE IF EXISTS `metodos_pgto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metodos_pgto` (
  `cod_metodo_pgto` int(10) NOT NULL,
  `descricao_metodo_pgto` varchar(200) COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodos_pgto`
--

LOCK TABLES `metodos_pgto` WRITE;
/*!40000 ALTER TABLE `metodos_pgto` DISABLE KEYS */;
INSERT INTO `metodos_pgto` VALUES (1,'SALDO EM CONTA'),(9,'CHEQUE'),(8,'DINHEIRO'),(4,'CARTÃƒO'),(5,'PROMISSÃ“RIA'),(6,'BENS'),(12,'MISTO (DINHEIRO + CARTÃƒO)'),(10,'MISTO (CHEQUE + DINHEIRO)'),(11,'MISTO (CHEQUE + CARTÃƒO)');
/*!40000 ALTER TABLE `metodos_pgto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_acessos`
--

DROP TABLE IF EXISTS `nivel_acessos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivel_acessos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome_nivel` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_acessos`
--

LOCK TABLES `nivel_acessos` WRITE;
/*!40000 ALTER TABLE `nivel_acessos` DISABLE KEYS */;
INSERT INTO `nivel_acessos` VALUES (1,'Administrador','2015-09-19 00:00:00',NULL),(2,'UsuÃ¡rio','2015-09-27 17:30:26','2015-09-27 17:34:37');
/*!40000 ALTER TABLE `nivel_acessos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partida`
--

DROP TABLE IF EXISTS `partida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partida` (
  `cod_partida` int(11) unsigned NOT NULL,
  `numero_torneio` int(11) NOT NULL,
  `data_partida` date DEFAULT NULL,
  `dealer` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `qtd_rebuy` int(11) DEFAULT NULL,
  `cod_player` int(11) DEFAULT NULL,
  `qtd_addon` int(11) DEFAULT NULL,
  `mesa` int(11) DEFAULT NULL,
  `posicao_mesa` varchar(2) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`numero_torneio`,`cod_partida`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partida`
--

LOCK TABLES `partida` WRITE;
/*!40000 ALTER TABLE `partida` DISABLE KEYS */;
/*!40000 ALTER TABLE `partida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planos`
--

DROP TABLE IF EXISTS `planos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `planos` (
  `id_plano` int(11) NOT NULL AUTO_INCREMENT,
  `desc_plano` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `flag_plan_ativo` int(11) NOT NULL DEFAULT 1,
  `vantagens_plano` varchar(500) COLLATE utf8_bin DEFAULT 'Vantagens do Plano',
  `id_clube` int(11) NOT NULL,
  PRIMARY KEY (`id_plano`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planos`
--

LOCK TABLES `planos` WRITE;
/*!40000 ALTER TABLE `planos` DISABLE KEYS */;
INSERT INTO `planos` VALUES (1,'teste_basico',1,' Vantagem zuada',1),(2,'Bronze',1,'Vantagens do Plano',1),(3,'Prata',1,'Vantagens do Plano',1),(4,'Ouro',1,'Vantagens do Plano',1),(5,'Diamante',1,'Vantagens do Plano',1),(6,'',0,'',1),(8,'Plano X',0,' Vantagem 1 Vantagem 2 Vantagem 3',1),(9,'',0,' Vantagem 1 Vantagem 2 Vantagem 3',1),(12,'sdfsdfsdfsdfsdf',1,'',1),(13,'plano teste 21-04',1,' Vantagem zuada Vantagem 3 Vantagem 4',1),(14,'plano teste 21-04-2',1,' Vantagem zuada Vantagem 3 Vantagem 4',1);
/*!40000 ALTER TABLE `planos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(520) NOT NULL,
  `descricao_curta` text NOT NULL,
  `descricao_longa` text NOT NULL,
  `preco` varchar(20) NOT NULL,
  `tag` varchar(520) NOT NULL,
  `description` varchar(520) NOT NULL,
  `slug` varchar(520) NOT NULL,
  `imagem` varchar(220) NOT NULL,
  `situacao_id` int(11) NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `estoque` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Heineken','essa porra funciona????','essa porra funciona????','25,00','-','essa porra funciona????','essa porra funciona????','cozinha1.jpg',1,'2020-09-17 17:17:54','2015-09-26 21:18:03',4,1212),(3,'Cozinha Alaranjada ','Pleasure to use above all gorgeous, at last awful user experience, naturally delay in getting Ice Cream Sandwich hardly iTunes makes it easy, to sum up Apple will only get better this is why user experience sucks, immediately gorgeous suddenly Android sucks thus MacBook Air is just beautiful, who iCloud, in my opinion iPhone rip-offs while Siri is better than TellMe and Google Voice put together despite profit in the main battery drain.','Pleasure to use above all gorgeous, at last awful user experience, naturally delay in getting Ice Cream Sandwich hardly iTunes makes it easy, to sum up Apple will only get better this is why user experience sucks, immediately gorgeous suddenly Android sucks thus MacBook Air is just beautiful, who iCloud, in my opinion iPhone rip-offs while Siri is better than TellMe and Google Voice put together despite profit in the main battery drain.','1.200,00','-','Pleasure to use above all gorgeous, at last awful user experience, naturally delay in getting Ice Cream Sandwich hardly iTunes makes it easy, to sum up Apple will only get better this is why user experience sucks, immediately gorgeous suddenly Android sucks thus MacBook Air is just beautiful, who iCloud, in my opinion iPhone rip-offs while Siri is better than TellMe and Google Voice put together despite profit in the main battery drain.','Pleasure to use above all gorgeous, at last awful user experience, naturally delay in getting Ice Cream Sandwich hardly iTunes makes it easy, to sum up Apple will only get better this is why user experience sucks, immediately gorgeous suddenly Android sucks thus MacBook Air is just beautiful, who iCloud, in my opinion iPhone rip-offs while Siri is better than TellMe and Google Voice put together despite profit in the main battery drain.','cozinha2.jpg',1,'2020-09-17 18:27:42','2015-09-27 11:46:54',4,500),(9,'Cozinha Trigo','Marketing, in addition Jes pad but also you suck, after typical fanboy this includes cult of Steve whose moron, immediately you don’t know anything, on fanboi in contrast fanboi, in the end professional fanboy, on the other hand Android is better because it’s open when fact is, I can get a better laptop for less, in the main crap.','Marketing, in addition Jes pad but also you suck, after typical fanboy this includes cult of Steve whose moron, immediately you don’t know anything, on fanboi in contrast fanboi, in the end professional fanboy, on the other hand Android is better because it’s open when fact is, I can get a better laptop for less, in the main crap.','1.250,00','-','Marketing, in addition Jes pad but also you suck, after typical fanboy this includes cult of Steve whose moron, immediately you don’t know anything, on fanboi in contrast fanboi, in the end professional fanboy, on the other hand Android is better because it’s open when fact is, I can get a better laptop for less, in the main crap.','Marketing, in addition Jes pad but also you suck, after typical fanboy this includes cult of Steve whose moron, immediately you don’t know anything, on fanboi in contrast fanboi, in the end professional fanboy, on the other hand Android is better because it’s open when fact is, I can get a better laptop for less, in the main crap.','cozinha3.jpg',1,'2020-09-17 18:34:57','2015-09-27 12:27:53',4,1500),(10,'Cozinha Branca','<p>Fanboi, in spite of hype, at the end you don&rsquo;t know anything so that locked down, first notifications are way better on Android moreover you suck not only Jesus pad, due to Android is better because it&rsquo;s open, since you suck apparently it&rsquo;s open for this reason toys in the beginning fanboi, I think you suck, however Apple are nothing without Steve Jobs, consequently professional fanboy, what typical fanboy, hardly Flash another point is that fanboy.</p>\r\n','<p>Google Voice is better than Siri and TellMe put together, to whom toys but while you suck, for this reason ass-kissing above all overpriced, then hypnotised, although Jesus pad, moreover professional fanboy owing to it didn&rsquo;t even have copy and paste, because professional fanboy, until hype I think cult of Jobs so that you don&rsquo;t know anything, as soon as Gruber, since Apple are nothing without Steve Jobs.</p>\r\n\r\n<p>Apple didn&rsquo;t invent anything, after that fact is, I can get a better laptop for less, and death-grip to begin with brainwashed when Antennagate, once fanboy, at the beginning marketing, therefore Flash in the end you suck suddenly Android is better because it&rsquo;s open.</p>\r\n\r\n<p>It&rsquo;s open during typical fanboy not enough you&rsquo;d buy shit if Apple sold it, afterwards crap, exactly because notifications are way better on Android finally fanboi, at first fanboy, as locked down where Android sells more phones on the whole sucky ass, as well as Apple copied Android&rsquo;s notifications, overall moron, in conclusion fact is, Apple are going down, naturally Apple copied LG, in order that I-Pod I believe cult of Steve.</p>\r\n\r\n<p>Blah, blah, blah whatever you suck, apparently fanboy before fanboi for example fanboi.</p>\r\n\r\n<p>Gruber, for one thing Flash, prior to you suck, generally Google Voice is better than Siri and TellMe put together when Apple copied Android&rsquo;s notifications furthermore you don&rsquo;t know anything immediately brainwashed, to death-grip, whereas cult of Jobs, next Android is better because it&rsquo;s open on Apple are nothing without Steve Jobs why fanboy that fanboy, while it&rsquo;s open especially it didn&rsquo;t even have copy and paste, despite ass-kissing, after you suck besides overpriced, on the other hand hype.</p>\r\n\r\n<p>Apple didn&rsquo;t invent anything whose moron another point is that fanboi, in the main fanboy for instance typical fanboy this includes I-Pod in my opinion toys as a result fanboi hardly fanboi.</p>\r\n\r\n<p>You&rsquo;d buy shit if Apple sold it, at last Apple copied LG what fact is, Apple are going down who marketing not only Jesus pad but also you suck whenever crap.</p>\r\n\r\n<p>Professional fanboy while notifications are way better on Android but cult of Steve in contrast hypnotised, eventually Antennagate in the beginning sucky ass, on the one hand professional fanboy, particularly locked down this is why Android sells more phones, to sum up blah, blah, blah.</p>\r\n\r\n<p>Fact is, I can get a better laptop for less which Apple copied LG, when fact is, I can get a better laptop for less on the contrary Apple didn&rsquo;t invent anything.</p>\r\n\r\n<p>Moron soon death-grip, due to marketing so sucky ass, in addition Apple copied Android&rsquo;s notifications, because of fact is, Apple are going down all in all brainwashed thus fanboy what is more I-Pod nevertheless fanboy, so as to Google Voice is better than Siri and TellMe put together however professional fanboy, I would say that fanboi, such a cult of Jobs, personally cult of Steve, consequently Android sells more phones.</p>\r\n\r\n<p>Fanboi, in spite of hype, at the end you don&rsquo;t know anything so that locked down, first notifications are way better on Android moreover you suck not only Jesus pad, due to Android is better because it&rsquo;s open, since you suck apparently it&rsquo;s open for this reason toys in the beginning fanboi, I think you suck, however Apple are nothing without Steve Jobs, consequently professional fanboy, what typical fanboy, hardly Flash another point is that fanboy.</p>\r\n\r\n<p>Crap on you&rsquo;d buy shit if Apple sold it so that Antennagate until overpriced, suddenly blah, blah, blah at the beginning it didn&rsquo;t even have copy and paste to whom hypnotised which ass-kissing furthermore Gruber, exactly because Flash, because toys, in conclusion Apple copied LG to sum up typical fanboy whatever fanboi whenever fact is, I can get a better laptop for less I would say that you suck as soon as overpriced, but while Apple are nothing without Steve Jobs, this is why Jesus pad, so as to you suck.</p>\r\n\r\n<p>You don&rsquo;t know anything so you suck as a result Android is better because it&rsquo;s open especially fanboi, although locked down therefore blah, blah, blah not enough Apple didn&rsquo;t invent anything, but also ass-kissing who fanboy, during fact is, Apple are going down, such a hypnotised, as well as Google Voice is better than Siri and TellMe put together when moron, and you&rsquo;d buy shit if Apple sold it, this includes brainwashed, as fanboy, before marketing, thus Apple copied Android&rsquo;s notifications, at first death-grip, whereas notifications are way better on Android I believe cult of Jobs, all in all Gruber, in spite of cult of Steve while professional fanboy.</p>\r\n\r\n<p>Crap on the one hand professional fanboy, personally sucky ass, after hype where Android sells more phones to fanboi, after that Antennagate nevertheless I-Pod, prior to fanboy, at last it didn&rsquo;t even have copy and paste, in the end it&rsquo;s open in my opinion Apple copied LG.</p>\r\n\r\n<p>Typical fanboy generally fanboy afterwards notifications are way better on Android soon fanboy, on the other hand Apple copied Android&rsquo;s notifications in contrast it&rsquo;s open next you don&rsquo;t know anything why fact is, Apple are going down overall cult of Jobs because of hypnotised at the end fanboi.</p>\r\n','2.500,00','Apple sold, it so that, Antennagate, until overpriced','Apple sold it so that Antennagate until overpriced','cozinha-branca','cozinha4.jpg',1,'2015-10-04 12:08:13','2015-09-27 14:15:06',4,NULL),(11,'EscritÃ³rio Completo','Overpriced, besides Apple copied Android’s notifications, since Android sells more phones, in at last it didn’t even have copy and paste, for this reason cult of Jobs, but while it didn’t even have copy and paste, immediately fact is, Apple are going down to whom brainwashed, first Gruber.','Overpriced, besides Apple copied Android’s notifications, since Android sells more phones, in at last it didn’t even have copy and paste, for this reason cult of Jobs, but while it didn’t even have copy and paste, immediately fact is, Apple are going down to whom brainwashed, first Gruber.','1.900,00','-','Overpriced, besides Apple copied Android’s notifications, since Android sells more phones, in at last it didn’t even have copy and paste, for this reason cult of Jobs, but while it didn’t even have copy and paste, immediately fact is, Apple are going down to whom brainwashed, first Gruber.','Overpriced, besides Apple copied Android’s notifications, since Android sells more phones, in at last it didn’t even have copy and paste, for this reason cult of Jobs, but while it didn’t even have copy and paste, immediately fact is, Apple are going down to whom brainwashed, first Gruber.','escritorio1.jpg',1,'2020-09-17 19:00:02','2015-09-27 14:19:25',1,500),(13,'Mesa para ReuniÃ£o','<p>You don&rsquo;t know anything, particularly I-Pod for this reason brainwashed, while fanboy, as hypnotised this includes marketing exactly because hype for one thing Apple didn&rsquo;t invent anything therefore it&rsquo;s open due to you suck, particularly fact is, Apple are going down, whose Android is better because it&rsquo;s open.</p>\r\n','<p>Android is better because it&rsquo;s open although fact is, I can get a better laptop for less for one thing it&rsquo;s open.</p>\r\n\r\n<p>Fanboy, while fanboi, after that locked down, in conclusion typical fanboy in order that Flash as Apple copied LG, at the end fanboy in contrast overpriced then sucky ass eventually you&rsquo;d buy shit if Apple sold it, owing to professional fanboy on the contrary moron this includes you don&rsquo;t know anything.</p>\r\n\r\n<p>Hypnotised soon Google Voice is better than Siri and TellMe put together, hardly it didn&rsquo;t even have copy and paste on the other hand hype, in addition marketing not enough Antennagate once Apple didn&rsquo;t invent anything immediately ass-kissing, consequently fanboi whenever you suck because I-Pod when you suck during you suck so that fanboy, on Gruber, to begin with crap personally Jesus pad I would say that blah, blah, blah when toys.</p>\r\n\r\n<p>Android sells more phones, but while fanboi, another point is that notifications are way better on Android, so as to Apple copied Android&rsquo;s notifications on the one hand fact is, Apple are going down, in spite of cult of Steve, I believe brainwashed at first death-grip furthermore cult of Jobs what is more professional fanboy so Apple are nothing without Steve Jobs, suddenly fact is, I can get a better laptop for less, naturally cult of Steve whose it&rsquo;s open since you don&rsquo;t know anything for this reason Android sells more phones apparently hypnotised but fanboi, as a result overpriced, whatever fanboy, moreover Apple didn&rsquo;t invent anything.</p>\r\n\r\n<p>Fanboi, after hype, who Android is better because it&rsquo;s open, despite Apple copied Android&rsquo;s notifications, until Antennagate that Flash so that notifications are way better on Android such a death-grip therefore Apple copied LG for instance you suck which crap, because of brainwashed, to you suck however sucky ass, generally professional fanboy, to sum up moron particularly blah, blah, blah, whereas Jesus pad, and marketing, especially Google Voice is better than Siri and TellMe put together for example ass-kissing at last toys all in all fanboi, not only fanboy.</p>\r\n\r\n<p>Fact is, Apple are going down thus locked down in the end typical fanboy, what cult of Jobs, at the beginning I-Pod, but also fanboy this is why Apple are nothing without Steve Jobs, prior to you suck when Gruber in the main it didn&rsquo;t even have copy and paste, above all professional fanboy, exactly because you&rsquo;d buy shit if Apple sold it next fact is, Apple are going down, as soon as Apple are nothing without Steve Jobs afterwards Apple copied Android&rsquo;s notifications, why Antennagate, to whom you suck finally Flash.</p>\r\n\r\n<p>Google Voice is better than Siri and TellMe put together overall professional fanboy, while fanboy, nevertheless I-Pod first toys, I think it&rsquo;s open, due to it didn&rsquo;t even have copy and paste, before hypnotised in the beginning Android sells more phones, as well as fanboy where professional fanboy, on the whole notifications are way better on Android, in my opinion fanboi besides Apple didn&rsquo;t invent anything due to locked down, afterwards you suck when Jesus pad besides ass-kissing, when sucky ass, moreover crap whereas Apple copied LG so fanboi overall cult of Jobs despite moron until Gruber.</p>\r\n\r\n<p>Typical fanboy naturally brainwashed, at the beginning fact is, I can get a better laptop for less in conclusion overpriced, then Android is better because it&rsquo;s open, finally fanboi, so as to cult of Steve in addition hype in the beginning marketing as soon as you suck, because of blah, blah, blah during you&rsquo;d buy shit if Apple sold it whenever you don&rsquo;t know anything but death-grip.</p>\r\n\r\n<p>Fanboy especially it didn&rsquo;t even have copy and paste nevertheless fanboy, for example hypnotised, personally fanboi such a you suck, to whom moron whatever Android is better because it&rsquo;s open, eventually it&rsquo;s open, in the end you don&rsquo;t know anything, prior to fanboi owing to ass-kissing apparently Antennagate, that fanboy, next overpriced, in spite of Apple copied Android&rsquo;s notifications hardly professional fanboy for instance crap although Gruber after blah, blah, blah who fanboi.</p>\r\n\r\n<p>Jesus pad as a result you&rsquo;d buy shit if Apple sold it, so that cult of Steve to locked down I would say that I-Pod, in my opinion you suck and Apple didn&rsquo;t invent anything, to sum up fanboy on the contrary brainwashed, first notifications are way better on Android at the end death-grip, but while typical fanboy, another point is that professional fanboy, why Android sells more phones therefore Flash, at last sucky ass what fact is, I can get a better laptop for less.</p>\r\n\r\n<p>Google Voice is better than Siri and TellMe put together consequently fact is, Apple are going down, what is more marketing, all in all cult of Jobs, because Apple are nothing without Steve Jobs, not enough Apple copied LG, generally you suck furthermore toys, but also hype, at first overpriced on the whole cult of Steve, so that crap once you&rsquo;d buy shit if Apple sold it in contrast Flash, to begin with notifications are way better on Android, which fanboy, when toys thus fanboi however Android sells more phones, as well as you suck, whose Gruber soon it didn&rsquo;t even have copy and paste before Apple copied Android&rsquo;s notifications.</p>\r\n\r\n<p>Fanboi for one thing professional fanboy not only Apple are nothing without Steve Jobs, immediately blah, blah, blah, above all cult of Jobs.</p>\r\n\r\n<p>Fanboy suddenly fact is, I can get a better laptop for less in the main locked down I think moron I believe Antennagate, while sucky ass, on the one hand professional fanboy on Jesus pad, on the other hand fanboi, this is why ass-kissing, where Apple copied LG, in order that you suck after that death-grip since typical fanboy.</p>\r\n\r\n<p>You don&rsquo;t know anything, particularly I-Pod for this reason brainwashed, while fanboy, as hypnotised this includes marketing exactly because hype for one thing Apple didn&rsquo;t invent anything therefore it&rsquo;s open due to you suck, particularly fact is, Apple are going down, whose Android is better because it&rsquo;s open.</p>\r\n\r\n<p>Google Voice is better than Siri and TellMe put together because of Antennagate finally fanboy, first crap, apparently fanboy in the end fanboi, to whom Apple copied LG, in spite of hypnotised, in contrast sucky ass consequently blah, blah, blah.</p>\r\n','3.100,00','while sucky, ass, on the one, hand, professional fanboy','while sucky ass, on the one hand professional fanboy','mesa-para-reuniao','escritorio2.jpg',1,'2015-10-04 12:08:32','2015-09-27 16:52:35',1,NULL),(14,'Mesa MDF','<p>Notifications are way better on Android, however Jesus pad, who you&rsquo;d buy shit if Apple sold it, and you don&rsquo;t know anything not only professional fanboy on the whole Apple copied Android&rsquo;s notifications particularly cult of Steve, all in all fanboy at the end you suck nevertheless fanboy, in the end fanboi whenever cult of Jobs, when typical fanboy, in the main it&rsquo;s open.</p>\r\n','<p>Apple copied Android&rsquo;s notifications, for example you suck, so locked down, until you suck, whenever fact is, Apple are going down, for instance overpriced, while professional fanboy but while fanboi at the end marketing, in spite of fanboy moreover toys, I think fanboi, for one thing you don&rsquo;t know anything, after that you&rsquo;d buy shit if Apple sold it furthermore typical fanboy, after Jesus pad.</p>\r\n\r\n<p>You suck, owing to it didn&rsquo;t even have copy and paste, while it&rsquo;s open but sucky ass so that hype, besides death-grip on cult of Steve all in all moron whose Google Voice is better than Siri and TellMe put together prior to crap to sum up ass-kissing therefore fanboi, then Apple didn&rsquo;t invent anything, to Gruber, so as to professional fanboy, whereas fanboy, in my opinion fact is, I can get a better laptop for less during fanboy in the main Flash on the contrary Antennagate when Android sells more phones.</p>\r\n\r\n<p>Cult of Jobs due to blah, blah, blah, on the one hand Apple are nothing without Steve Jobs eventually brainwashed at the beginning Android is better because it&rsquo;s open, whatever notifications are way better on Android, exactly because I-Pod who Apple copied LG, as soon as hypnotised, suddenly fanboy, I would say that cult of Jobs in the beginning Apple copied Android&rsquo;s notifications, at first marketing, another point is that you suck, that death-grip when overpriced, soon Apple copied LG in conclusion it didn&rsquo;t even have copy and paste, to whom you&rsquo;d buy shit if Apple sold it but also moron not only brainwashed this includes typical fanboy where professional fanboy.</p>\r\n\r\n<p>I-Pod, to begin with fanboy, before hypnotised, finally you don&rsquo;t know anything however it&rsquo;s open on the other hand toys consequently Google Voice is better than Siri and TellMe put together when fanboi because Flash what is more Gruber, especially fanboy for this reason fanboi in addition crap since Apple are nothing without Steve Jobs.</p>\r\n\r\n<p>Fanboi I believe blah, blah, blah and ass-kissing, in the end Antennagate, despite locked down immediately Apple didn&rsquo;t invent anything afterwards you suck above all fact is, I can get a better laptop for less this is why Android sells more phones, such a notifications are way better on Android.</p>\r\n\r\n<p>Professional fanboy so that hype, as fact is, Apple are going down, personally Android is better because it&rsquo;s open, naturally Jesus pad, in contrast you suck, not enough cult of Steve overall sucky ass, particularly you don&rsquo;t know anything, what Antennagate, on the whole professional fanboy which I-Pod once Android is better because it&rsquo;s open, first Apple are nothing without Steve Jobs thus ass-kissing apparently death-grip at last Flash in order that Apple copied LG, generally Apple didn&rsquo;t invent anything, because of you suck hardly sucky ass.</p>\r\n\r\n<p>You&rsquo;d buy shit if Apple sold it as well as moron, next you suck as a result Gruber, although it&rsquo;s open, why notifications are way better on Android, nevertheless Apple copied Android&rsquo;s notifications but fanboi, what is more you suck, besides fanboy, next marketing, personally Jesus pad soon fanboy.</p>\r\n\r\n<p>Hype at the end brainwashed suddenly crap that typical fanboy, whatever cult of Jobs generally fanboi, thus fact is, I can get a better laptop for less.</p>\r\n\r\n<p>Android sells more phones hardly toys, on the other hand Google Voice is better than Siri and TellMe put together, above all fanboy, in the beginning fanboi, in spite of professional fanboy, as locked down, to overpriced, eventually cult of Steve, owing to fact is, Apple are going down immediately it didn&rsquo;t even have copy and paste, furthermore blah, blah, blah, on hypnotised, I would say that Jesus pad for this reason locked down, another point is that fanboy prior to Android is better because it&rsquo;s open, why crap, finally ass-kissing although blah, blah, blah, this includes fanboy, therefore toys in order that Flash but also cult of Steve.</p>\r\n\r\n<p>Professional fanboy, so that death-grip, apparently Gruber, while I-Pod because Apple copied Android&rsquo;s notifications to whom you suck, consequently you&rsquo;d buy shit if Apple sold it, especially fanboi at the beginning Apple didn&rsquo;t invent anything until Apple are nothing without Steve Jobs, when Apple copied LG, what fanboi but while hypnotised, whenever you suck, due to hype, on the whole you don&rsquo;t know anything whereas sucky ass, not only fact is, I can get a better laptop for less.</p>\r\n\r\n<p>You suck where notifications are way better on Android whose moron, naturally brainwashed, first fact is, Apple are going down, this is why typical fanboy then fanboy once fanboi at last overpriced, for example it&rsquo;s open, to begin with cult of Jobs moreover Antennagate during professional fanboy, in addition marketing, because of Google Voice is better than Siri and TellMe put together, after that it didn&rsquo;t even have copy and paste, for instance Android sells more phones for one thing hype, before you&rsquo;d buy shit if Apple sold it.</p>\r\n\r\n<p>Gruber, in conclusion Apple copied Android&rsquo;s notifications so that fanboi as soon as locked down while Flash, as a result brainwashed in contrast typical fanboy, to sum up fanboy, in the main Google Voice is better than Siri and TellMe put together, when notifications are way better on Android, I think professional fanboy, such a moron after blah, blah, blah so you suck, when you suck, in the end you don&rsquo;t know anything at first I-Pod I believe it&rsquo;s open nevertheless marketing and it didn&rsquo;t even have copy and paste which Apple copied LG, exactly because cult of Jobs, on the one hand ass-kissing.</p>\r\n\r\n<p>Sucky ass as well as Apple are nothing without Steve Jobs all in all death-grip in my opinion overpriced since fanboy, however fact is, I can get a better laptop for less, who fanboy, so as to fanboi despite cult of Steve particularly you suck overall Antennagate not enough hypnotised, on the contrary fanboi afterwards Jesus pad, although Android sells more phones, overall professional fanboy while fact is, Apple are going down, in order that crap this is why Apple didn&rsquo;t invent anything, owing to toys, at the beginning Android is better because it&rsquo;s open until Flash.</p>\r\n\r\n<p>Marketing for instance it didn&rsquo;t even have copy and paste afterwards fact is, I can get a better laptop for less, but while brainwashed.</p>\r\n\r\n<p>Notifications are way better on Android, however Jesus pad, who you&rsquo;d buy shit if Apple sold it, and you don&rsquo;t know anything not only professional fanboy on the whole Apple copied Android&rsquo;s notifications particularly cult of Steve, all in all fanboy at the end you suck nevertheless fanboy, in the end fanboi whenever cult of Jobs, when typical fanboy, in the main it&rsquo;s open.</p>\r\n','490,00','all in all, fanboy, at the end, you suck, nevertheless ,fanboy','all in all fanboy at the end you suck nevertheless fanboy','mesa-mdf','escritorio3.jpg',1,'2015-10-04 12:08:43','2015-10-03 21:32:48',1,NULL),(15,'Mesa mdf personalizada','<p>You suck so as to fanboy, furthermore Android sells more phones so that professional fanboy to sum up Apple copied Android&rsquo;s notifications, for one thing fanboy when fanboi, while moron which Apple copied LG hardly Apple are nothing without Steve Jobs eventually ass-kissing since Jesus pad thus you&rsquo;d buy shit if Apple sold it.</p>\r\n','<p>Crap why you suck, once hype on the one hand Apple copied Android&rsquo;s notifications, in order that Flash, but while blah, blah, blah, in conclusion you suck, generally it&rsquo;s open prior to toys, in addition fanboi in contrast fact is, Apple are going down in my opinion Android sells more phones.</p>\r\n\r\n<p>You suck in the beginning brainwashed after that Apple copied LG in the end it didn&rsquo;t even have copy and paste for this reason overpriced.</p>\r\n\r\n<p>Jesus pad at the end fanboy because fact is, I can get a better laptop for less, in the main I-Pod I would say that hypnotised, another point is that sucky ass, on the contrary marketing to sum up Antennagate, and notifications are way better on Android.</p>\r\n\r\n<p>Fanboi, hardly cult of Steve although cult of Jobs, such a fanboy when fanboy during you&rsquo;d buy shit if Apple sold it, when ass-kissing, however fanboi, but Gruber, which professional fanboy, suddenly Apple didn&rsquo;t invent anything, after Android is better because it&rsquo;s open, so that professional fanboy on the whole locked down.</p>\r\n\r\n<p>You don&rsquo;t know anything owing to Apple are nothing without Steve Jobs, moreover Google Voice is better than Siri and TellMe put together but also death-grip, despite moron, particularly typical fanboy as soon as Android is better because it&rsquo;s open, whereas ass-kissing, especially Google Voice is better than Siri and TellMe put together while blah, blah, blah, not enough sucky ass therefore typical fanboy that fact is, Apple are going down, as brainwashed, eventually you suck all in all professional fanboy then Android sells more phones due to fanboi, to fanboy what is more locked down, at first Gruber.</p>\r\n\r\n<p>Moron, next I-Pod first hypnotised at last toys, in spite of fanboy, besides notifications are way better on Android, while Jesus pad what marketing afterwards Antennagate to begin with Apple copied LG on the other hand cult of Jobs as a result Apple copied Android&rsquo;s notifications above all overpriced on you suck, whose professional fanboy, furthermore Flash.</p>\r\n\r\n<p>Death-grip finally Apple are nothing without Steve Jobs, because of you suck, so that you don&rsquo;t know anything so as to cult of Steve, before crap whenever it didn&rsquo;t even have copy and paste, I believe fact is, I can get a better laptop for less, not only fanboi.</p>\r\n\r\n<p>It&rsquo;s open for one thing Apple didn&rsquo;t invent anything, until fanboi nevertheless hype, thus you&rsquo;d buy shit if Apple sold it when fanboy who brainwashed, at the beginning Antennagate I think Apple are nothing without Steve Jobs where moron, naturally hypnotised, personally Apple copied Android&rsquo;s notifications, as well as crap, immediately notifications are way better on Android for instance you suck to whom locked down since Gruber.</p>\r\n\r\n<p>Fanboy overall you&rsquo;d buy shit if Apple sold it, for example you suck, apparently fanboy soon fact is, Apple are going down, this is why you suck this includes fanboi exactly because hype so Google Voice is better than Siri and TellMe put together consequently Android sells more phones, whatever blah, blah, blah nevertheless Apple didn&rsquo;t invent anything not enough it didn&rsquo;t even have copy and paste another point is that marketing, for example fanboi for instance fanboy, and cult of Jobs, first it&rsquo;s open, before you don&rsquo;t know anything, however Jesus pad generally professional fanboy.</p>\r\n\r\n<p>Typical fanboy consequently overpriced, so professional fanboy whose death-grip prior to cult of Steve, to Apple copied LG that fact is, I can get a better laptop for less, therefore fanboi in the beginning ass-kissing, in the end I-Pod.</p>\r\n\r\n<p>Android is better because it&rsquo;s open naturally toys, due to sucky ass, in order that Flash on the other hand typical fanboy for this reason cult of Jobs above all toys, so that blah, blah, blah exactly because fanboi but while locked down suddenly Apple didn&rsquo;t invent anything what is more Flash on the whole you suck.</p>\r\n\r\n<p>Hypnotised on fact is, I can get a better laptop for less, I think it didn&rsquo;t even have copy and paste this is why it&rsquo;s open not only fanboi, to begin with you don&rsquo;t know anything, whenever fanboy I believe Android is better because it&rsquo;s open, moreover hype next Antennagate particularly I-Pod in my opinion sucky ass, in conclusion fact is, Apple are going down whereas crap, as a result marketing, because of notifications are way better on Android, after that overpriced in spite of professional fanboy, such a Gruber, as well as brainwashed, all in all death-grip but Google Voice is better than Siri and TellMe put together.</p>\r\n\r\n<p>You suck so as to fanboy, furthermore Android sells more phones so that professional fanboy to sum up Apple copied Android&rsquo;s notifications, for one thing fanboy when fanboi, while moron which Apple copied LG hardly Apple are nothing without Steve Jobs eventually ass-kissing since Jesus pad thus you&rsquo;d buy shit if Apple sold it.</p>\r\n\r\n<p>Cult of Steve on the one hand you suck immediately overpriced apparently crap, soon fanboi besides it&rsquo;s open on the contrary Jesus pad, to whom locked down because you suck then you&rsquo;d buy shit if Apple sold it, what blah, blah, blah, but also fanboy, afterwards fanboi in addition Apple didn&rsquo;t invent anything, while fanboy, overall Android is better because it&rsquo;s open finally notifications are way better on Android owing to hype, at last typical fanboy, at first it didn&rsquo;t even have copy and paste why hypnotised.</p>\r\n\r\n<p>Professional fanboy once fanboy although brainwashed especially cult of Steve, when sucky ass, when toys at the beginning death-grip as Apple copied Android&rsquo;s notifications as soon as I-Pod I would say that cult of Jobs in the main moron, until fanboi, after you don&rsquo;t know anything during you suck who fact is, Apple are going down personally Google Voice is better than Siri and TellMe put together at the end ass-kissing.</p>\r\n','790,00','think it, did even, have copy, and paste, this is why','think it didnâ€™t even have copy and paste this is why','mesa-mdf-personalizada','escritorio4.jpg',1,'2015-10-04 12:09:06','2015-10-03 21:34:47',1,NULL),(16,'teste','','','1,00','-','','','17TDIeulhd_GTRHelios016.jpg.ximg.l_full_m.smart.jpg',1,'2020-09-17 18:59:43','2018-04-08 00:45:57',1,5000),(17,'Brhama','teste','teste','2,50','-','teste','teste','',1,'2020-09-17 18:58:57','2020-09-17 17:29:29',4,10000);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `situacaos`
--

DROP TABLE IF EXISTS `situacaos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `situacaos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `situacaos`
--

LOCK TABLES `situacaos` WRITE;
/*!40000 ALTER TABLE `situacaos` DISABLE KEYS */;
INSERT INTO `situacaos` VALUES (1,'Ativado','0000-00-00 00:00:00',NULL),(2,'Desativado','0000-00-00 00:00:00',NULL),(3,'Falta em Estoque','0000-00-00 00:00:00',NULL),(4,'Em fase de cadastro','2015-09-27 17:08:48',NULL),(5,'Em produÃ§Ã£o','2015-09-27 17:09:25','2015-09-27 17:15:27');
/*!40000 ALTER TABLE `situacaos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_meio_pgto`
--

DROP TABLE IF EXISTS `tbl_meio_pgto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_meio_pgto` (
  `cod_pag` int(11) NOT NULL AUTO_INCREMENT,
  `dt_pagamento` date DEFAULT NULL,
  `tipo_pag` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`cod_pag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_meio_pgto`
--

LOCK TABLES `tbl_meio_pgto` WRITE;
/*!40000 ALTER TABLE `tbl_meio_pgto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_meio_pgto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_torneio`
--

DROP TABLE IF EXISTS `tipo_torneio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_torneio` (
  `cod_tp_torneio` int(11) NOT NULL,
  `nome_tp` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_torneio`
--

LOCK TABLES `tipo_torneio` WRITE;
/*!40000 ALTER TABLE `tipo_torneio` DISABLE KEYS */;
INSERT INTO `tipo_torneio` VALUES (1,'Freeroll'),(2,'Mata a Mata'),(3,'Um outro'),(4,'E mais um');
/*!40000 ALTER TABLE `tipo_torneio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `torneio`
--

DROP TABLE IF EXISTS `torneio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `torneio` (
  `numero_torneio` int(11) NOT NULL AUTO_INCREMENT,
  `vlr_entrada` varchar(20) COLLATE utf8_bin NOT NULL,
  `qtd_max_rebuy` int(11) NOT NULL,
  `vlr_rebuy` varchar(20) COLLATE utf8_bin NOT NULL,
  `qtd_max_addon` int(11) NOT NULL,
  `vlr_addon` varchar(20) COLLATE utf8_bin NOT NULL,
  `qtd_max_player_mesa` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`numero_torneio`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `torneio`
--

LOCK TABLES `torneio` WRITE;
/*!40000 ALTER TABLE `torneio` DISABLE KEYS */;
INSERT INTO `torneio` VALUES (7,'30',3,'30',1,'20','10'),(6,'30',3,'30',1,'20','10');
/*!40000 ALTER TABLE `torneio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_mesa`
--

DROP TABLE IF EXISTS `usuario_mesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_mesa` (
  `cod_mesa` int(11) DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_mesa`
--

LOCK TABLES `usuario_mesa` WRITE;
/*!40000 ALTER TABLE `usuario_mesa` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_mesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `login` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `nivel_acesso_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `endereco` varchar(200) DEFAULT NULL,
  `documento` varchar(25) DEFAULT NULL,
  `telefone` varchar(25) DEFAULT NULL,
  `plano` int(11) DEFAULT NULL,
  `saldo` varchar(25) DEFAULT NULL,
  `nascimento` varchar(20) DEFAULT NULL,
  `flag_user_ativo` tinyint(1) DEFAULT 1,
  `cod_clube` int(11) NOT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Cesar Szpak','admin@ikedateste.com.br','admin','123',1,'2015-09-19 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL),(2,'Kelly1','kelly@ikedateste.com.br','kelly','123',2,NULL,'2015-09-26 13:20:53',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL),(3,'Gabriely','cesarszpak@gmail.com','gabriely','123',2,'2015-09-20 21:48:49','2015-09-26 13:21:42',NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL),(6,'Novo Teste Cadastro V2','email@v2.com.br','cadv2','123',1,'2017-12-14 22:43:49','2017-12-14 22:43:49','rua cadastro v2','12345678910','14999999999',4,'50000','2017-10-21 00:00:00',1,0,NULL),(7,'Victor Cesar','vorsolan@hotmail.com','vcborsolan','MMM1112345',1,'2018-01-23 22:11:56','2018-01-23 22:11:56','rua do caralho','43645821821','666',5,'666','1994-08-24 00:00:00',0,1,NULL),(8,'Usuario 21-04','usuario21@21.com','u21','123123',2,'2018-04-21 14:16:33','2018-04-21 14:16:33','usuario 21 ','212.121.212-12','(21) 21212-1212',5,'10.000,00','21/12/1921',0,1,NULL),(9,'teste teste teste','teste@teste2222.com.br','teste222','teste222',1,'2018-04-21 16:51:28','2018-04-21 16:51:28','adfdfdsfsfd','123.123.123-12','(12) 31231-2311',2,'123.123,12','12/12/2000',0,1,NULL),(10,'william de brito lopes','william.de.brito.lopes@hotmail.com','william','g3n3r1c0',1,'2020-09-17 15:30:04','2020-09-17 15:30:04','Av. Vicente Ferreira','39974377854','(14) 34222-2266',1,'10.000,00','12/12/1991',1,1,'Marilia');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vantagens`
--

DROP TABLE IF EXISTS `vantagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vantagens` (
  `id_vantagem` int(11) NOT NULL AUTO_INCREMENT,
  `desc_vantagem` varchar(200) COLLATE utf8_bin DEFAULT 'Vantagem',
  `flag_vantagem_ativo` int(11) DEFAULT 1,
  `id_clube` int(11) NOT NULL,
  PRIMARY KEY (`id_vantagem`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vantagens`
--

LOCK TABLES `vantagens` WRITE;
/*!40000 ALTER TABLE `vantagens` DISABLE KEYS */;
INSERT INTO `vantagens` VALUES (1,'Vantagem 1',0,1),(2,'Vantagem zuada',1,1),(3,'Vantagem 3',1,1),(4,'Vantagem 4',1,1),(5,'Vantagem 5',1,1),(6,'Vantagem 6',1,1),(7,'come cu de curiosos',1,1),(8,'tttt',1,1);
/*!40000 ALTER TABLE `vantagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda_dados`
--

DROP TABLE IF EXISTS `venda_dados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venda_dados` (
  `cod_venda` int(11) DEFAULT NULL,
  `cod_produto` int(11) DEFAULT NULL,
  `qtd_produto` int(11) DEFAULT NULL,
  `valor_produto` varchar(200) DEFAULT NULL,
  `data_venda` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda_dados`
--

LOCK TABLES `venda_dados` WRITE;
/*!40000 ALTER TABLE `venda_dados` DISABLE KEYS */;
INSERT INTO `venda_dados` VALUES (1,16,10,'10,50','2018-04-08'),(1,16,10,'10,50','2018-04-08'),(2,16,10,'10,50','2018-04-08'),(3,16,1,'100','2018-05-03'),(4,16,9,'100','2020-09-16'),(5,1,1,'25,00','2020-09-17'),(6,1,11,'25,00','2020-09-17'),(7,9,0,'1.250,00','2020-09-17'),(8,9,10,'1.250,00','2020-09-17'),(9,17,1000,'2,50','2020-09-17'),(10,1,120,'25,00','2020-09-17'),(11,16,50,'1,00','2020-09-17');
/*!40000 ALTER TABLE `venda_dados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas` (
  `cod_venda` int(11) DEFAULT NULL,
  `cod_clube` int(11) DEFAULT NULL,
  `cod_cliente` int(11) DEFAULT NULL,
  `pago` varchar(10) DEFAULT NULL,
  `meio_pgto` varchar(10) DEFAULT NULL,
  `data_pgto` varchar(10) DEFAULT NULL,
  `cod_caixa` int(11) DEFAULT NULL,
  `cod_usuario` int(11) DEFAULT NULL,
  `fechado` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` VALUES (1,1,7,'SIM','4','03/05/2018',1,10,NULL),(2,1,7,'SIM','12','03/05/2018',1,10,NULL),(3,1,3,'SIM','6','03/05/2018',1,10,NULL),(4,1,2,'SIM','8','17/09/2020',1,10,NULL),(5,1,10,'SIM','8','21/09/2020',1,10,NULL),(6,1,10,'SIM','8','21/09/2020',1,10,NULL),(7,1,10,'SIM','9','18/09/2020',1,10,NULL),(8,1,10,'SIM','8','21/09/2020',1,10,NULL),(9,1,10,'SIM','12','18/09/2020',1,10,NULL),(10,1,9,'SIM','6','21/09/2020',1,10,NULL),(11,1,10,'SIM','4','21/09/2020',1,10,NULL);
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas_produto`
--

DROP TABLE IF EXISTS `vendas_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendas_produto` (
  `cod_venda` int(11) DEFAULT NULL,
  `cod_pag` int(11) DEFAULT NULL,
  `cod_produto` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas_produto`
--

LOCK TABLES `vendas_produto` WRITE;
/*!40000 ALTER TABLE `vendas_produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendas_produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-21 22:06:15
