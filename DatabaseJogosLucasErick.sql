-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema jogoslucaserick
--

CREATE DATABASE IF NOT EXISTS jogoslucaserick;
USE jogoslucaserick;

--
-- Definition of table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NomeUsuario` varchar(45) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Celular` varchar(45) NOT NULL,
  `Senha` varchar(45) NOT NULL,
  `JogosFavoritos` varchar(255) NOT NULL,
  `PreferenciaGenero` varchar(100) NOT NULL,
  `JogosJogados` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clientes`
--

/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;


--
-- Definition of table `desenvolvedora`
--

DROP TABLE IF EXISTS `desenvolvedora`;
CREATE TABLE `desenvolvedora` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NomeDesenvolvedora` varchar(45) NOT NULL,
  `PaisOrigem` varchar(45) NOT NULL,
  `Afiliadas` varchar(100) NOT NULL,
  `PrincipaisDesenvolvimentos` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `desenvolvedora`
--

/*!40000 ALTER TABLE `desenvolvedora` DISABLE KEYS */;
/*!40000 ALTER TABLE `desenvolvedora` ENABLE KEYS */;


--
-- Definition of table `genero`
--

DROP TABLE IF EXISTS `genero`;
CREATE TABLE `genero` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Genero` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genero`
--

/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;


--
-- Definition of table `jogos`
--

DROP TABLE IF EXISTS `jogos`;
CREATE TABLE `jogos` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IDCliente` int(10) unsigned NOT NULL,
  `TituloJogo` varchar(45) NOT NULL,
  `IDGenero` int(10) unsigned NOT NULL,
  `IDDesenvolvedora` int(10) unsigned NOT NULL,
  `IDPublicadora` int(10) unsigned NOT NULL,
  `DataLancamento` date NOT NULL,
  `DataUltimaUpdate` datetime NOT NULL,
  `Categoria` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ClassificacaoIndicativa` int(10) unsigned DEFAULT NULL,
  `Preco` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jogos`
--

/*!40000 ALTER TABLE `jogos` DISABLE KEYS */;
/*!40000 ALTER TABLE `jogos` ENABLE KEYS */;


--
-- Definition of table `publicadora`
--

DROP TABLE IF EXISTS `publicadora`;
CREATE TABLE `publicadora` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NomePublicadora` varchar(45) NOT NULL,
  `PaisOrigem` varchar(45) NOT NULL,
  `QtdeJogosPublicados` int(10) unsigned NOT NULL,
  `PrincipaisPublicacoes` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publicadora`
--

/*!40000 ALTER TABLE `publicadora` DISABLE KEYS */;
/*!40000 ALTER TABLE `publicadora` ENABLE KEYS */;


--
-- Definition of procedure `InserirDesenvolvedoras`
--

DROP PROCEDURE IF EXISTS `InserirDesenvolvedoras`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `InserirDesenvolvedoras`(
   IN p_NomeDesenvolvedora VARCHAR(45),
   IN p_PaisOrigem VARCHAR(45),
   IN Afiliadas VARCHAR(100),
   IN PrincipaisDesenvolvimentos VARCHAR(100)
)
BEGIN
   INSERT INTO desenvolvedora (NomeDesenvolvedora, PaisOrigem, Afiliadas, PrincipaisDesenvolvimentos) VALUES
   (p_NomeDesenvolvedora, p_PaisOrigem, Afiliadas, PrincipaisDesenvolvimentos);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `InserirJogos`
--

DROP PROCEDURE IF EXISTS `InserirJogos`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `InserirJogos`(
      IN p_IDCliente INT,
      IN p_TituloJogo VARCHAR(45),
      IN p_IDGenero INT,
      IN p_IDDensevolvedoura INT,
      IN p_IDPublicadora INT,
      IN p_DataCriacao DATE,
      IN p_DataUltimaUpdate DATETIME,
      IN p_Categoria VARCHAR(45),
      IN p_ClassificacaoIndicativa INT,
      IN p_Preco FLOAT
)
BEGIN
  INSERT INTO jogos (
       IDCliente, TituloJogo, IDGenero,
       IDDesenvolvedora, IDPublicadora, DataCriacao, DataUltimaUpdate,
       Categoria, ClassificacaoIndicativa, Preco
  ) VALUES (
       p_IDCliente, p_TituloJogo, p_IDGenero, p_IDDensevolvedoura,
       p_IDPublicadora, p_DataCriacao, p_DataUltimaUpdate, p_Categoria,
       p_ClassificacaoIndicativa, p_Preco
  );
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `SelecionarTodosOsJogos`
--

DROP PROCEDURE IF EXISTS `SelecionarTodosOsJogos`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `SelecionarTodosOsJogos`()
BEGIN
    SELECT
       j.TituloJogo                 AS `Título do jogo`,
       j.Categoria,
       g.Genero                     AS `Gênero`,
       j.Preco                      AS `Preço (R$)`,
       j.DataLancamento             AS `Data de Lançamento`,
       j.DataUltimaUpdate           AS `Data da última Update`,
       j.ClassificacaoIndicativa    AS `Classificação Indicativa`,
       d.NomeDesenvolvedora         AS `Nome da Desenvolvedora`,
       d.PrincipaisDesenvolvimentos AS `Principais Desenvolvimentos`,
       p.NomePublicadora            AS `Nome da Publicadora`,
       p.PrincipaisPublicacoes      AS `Principais Publicações`

    FROM jogos j
    LEFT JOIN genero g         ON g.ID = j.IDGenero
    LEFT JOIN desenvolvedora d ON d.ID = j.IDDesenvolvedora
    LEFT JOIN publicadora p    ON p.ID = j.IDPublicadora;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
