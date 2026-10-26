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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `desenvolvedora`
--

/*!40000 ALTER TABLE `desenvolvedora` DISABLE KEYS */;
INSERT INTO `desenvolvedora` (`ID`,`NomeDesenvolvedora`,`PaisOrigem`,`Afiliadas`,`PrincipaisDesenvolvimentos`) VALUES 
 (1,'Nintendo EPD','Japão','Nintendo','The Legend of Zelda, Super Mario'),
 (2,'Santa Monica Studio','Estados Unidos','Sony Interactive Entertainment','God of War'),
 (3,'EA Vancouver','Canadá','Electronic Arts','EA Sports FC, NHL'),
 (4,'Ubisoft Montreal','Canadá','Ubisoft','Assassin\'s Creed, Far Cry'),
 (5,'Rockstar North','Escócia','Rockstar Games','Grand Theft Auto, Red Dead Redemption'),
 (6,'Capcom Production Studio 1','Japão','Capcom','Resident Evil, Devil May Cry'),
 (7,'Square Enix Creative Business Unit I','Japão','Square Enix','Final Fantasy, Kingdom Hearts'),
 (8,'341 Industries','Estados Unidos','Xbox Game Studios','Halo'),
 (9,'FromSoftware','Japão','Kadokawa Corporation / Bandai Namco','Elden Ring, Dark Souls'),
 (10,'Sonic Team','Japão','Sega','Sonic the Hedgehog'),
 (11,'Naughty Dog','Estados Unidos','Sony Interactive Entertainment','The Last of Us, Uncharted');
/*!40000 ALTER TABLE `desenvolvedora` ENABLE KEYS */;


--
-- Definition of table `genero`
--

DROP TABLE IF EXISTS `genero`;
CREATE TABLE `genero` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Genero` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genero`
--

/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` (`ID`,`Genero`) VALUES 
 (1,'Ação'),
 (2,'Comédia'),
 (3,'Drama'),
 (4,'Ficção Científica'),
 (5,'Romance'),
 (6,'Terror'),
 (7,'Suspense'),
 (8,'Animação'),
 (9,'Documentário'),
 (10,'Fantasia');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;


--
-- Definition of table `jogos`
--

DROP TABLE IF EXISTS `jogos`;
CREATE TABLE `jogos` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TituloJogo` varchar(45) NOT NULL,
  `IDGenero` int(10) unsigned NOT NULL,
  `IDDesenvolvedora` int(10) unsigned NOT NULL,
  `IDPublicadora` int(10) unsigned NOT NULL,
  `DataLancamento` date NOT NULL,
  `DataUltimaUpdate` datetime NOT NULL,
  `Categoria` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `ClassificacaoIndicativa` varchar(5) DEFAULT NULL,
  `Preco` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jogos`
--

/*!40000 ALTER TABLE `jogos` DISABLE KEYS */;
INSERT INTO `jogos` (`ID`,`TituloJogo`,`IDGenero`,`IDDesenvolvedora`,`IDPublicadora`,`DataLancamento`,`DataUltimaUpdate`,`Categoria`,`ClassificacaoIndicativa`,`Preco`) VALUES 
 (1,'The Legend of Zelda: Breath of the Wild',1,1,1,'2017-03-03','2022-05-10 00:00:00',0x53696E676C652D706C61796572,'0',299),
 (2,'God of War Ragnarök',1,2,2,'2022-11-09','2024-02-15 00:00:00',0x53696E676C652D706C61796572,'18',349.9),
 (3,'Grand Theft Auto V',1,5,5,'2013-09-17','2024-01-20 00:00:00',0x4D756C7469706C61796572,'18',149),
 (4,'Elden Ring',10,9,9,'2022-02-25','2024-06-21 00:00:00',0x53696E676C652F4D756C7469706C61796572,'16',249.5),
 (5,'Resident Evil 4 Remake',6,6,6,'2023-03-24','2023-12-01 00:00:00',0x53696E676C652D706C61796572,'18',199.9),
 (6,'Assassin\'s Creed Valhalla',1,4,4,'2020-11-10','2023-02-28 00:00:00',0x53696E676C652D706C61796572,'18',279.99),
 (7,'EA Sports FC 24',2,3,3,'2023-09-29','2024-05-12 00:00:00',0x4D756C7469706C61796572,'0',359),
 (8,'Final Fantasy VII Rebirth',10,7,7,'2024-02-29','2024-04-18 00:00:00',0x53696E676C652D706C61796572,'14',349.9),
 (9,'Sonic Frontiers',8,10,10,'2022-11-08','2023-11-15 00:00:00',0x53696E676C652D706C61796572,'0',199),
 (10,'Halo Infinite',4,8,8,'2021-12-08','2024-03-05 00:00:00',0x4D756C7469706C61796572,'14',249),
 (11,'The Legend of Zelda: Breath of the Wild',1,1,1,'2017-03-03','2022-05-10 00:00:00',0x53696E676C652D706C61796572,'Livre',299),
 (12,'God of War Ragnarök',1,2,2,'2022-11-09','2024-02-15 00:00:00',0x53696E676C652D706C61796572,'18+',349.9),
 (14,'Elden Ring',10,9,9,'2022-02-25','2024-06-21 00:00:00',0x53696E676C652F4D756C7469706C61796572,'16+',249.5),
 (15,'Resident Evil 4 Remake',6,6,6,'2023-03-24','2023-12-01 00:00:00',0x53696E676C652D706C61796572,'18+',199.9),
 (16,'Assassin\'s Creed Valhalla',1,4,4,'2020-11-10','2023-02-28 00:00:00',0x53696E676C652D706C61796572,'18+',279.99),
 (17,'EA Sports FC 24',2,3,3,'2023-09-29','2024-05-12 00:00:00',0x4D756C7469706C61796572,'Livre',359),
 (18,'Final Fantasy VII Rebirth',10,7,7,'2024-02-29','2024-04-18 00:00:00',0x53696E676C652D706C61796572,'14+',349.9),
 (19,'Sonic Frontiers',8,10,10,'2022-11-08','2023-11-15 00:00:00',0x53696E676C652D706C61796572,'Livre',199),
 (20,'Halo Infinite',4,8,8,'2021-12-08','2024-03-05 00:00:00',0x4D756C7469706C61796572,'14+',249),
 (21,'The Last of Us Part I',1,11,2,'2022-09-02','2026-03-15 14:30:00',0x53696E676C652D706C61796572,'18',249.9);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publicadora`
--

/*!40000 ALTER TABLE `publicadora` DISABLE KEYS */;
INSERT INTO `publicadora` (`ID`,`NomePublicadora`,`PaisOrigem`,`QtdeJogosPublicados`,`PrincipaisPublicacoes`) VALUES 
 (1,'Nintendo','Japão',1200,'Super Mario, The Legend of Zelda'),
 (2,'Sony Interactive Entertainment','Japão',850,'God of War, Uncharted, The Last of Us'),
 (3,'Electronic Arts','Estados Unidos',1500,'FIFA/EA Sports FC, Battlefield, The Sims'),
 (4,'Ubisoft','França',900,'Assassin\'s Creed, Far Cry, Rainbow Six'),
 (5,'Rockstar Games','Estados Unidos',250,'Grand Theft Auto, Red Dead Redemption'),
 (6,'Capcom','Japão',600,'Resident Evil, Street Fighter, Monster Hunter'),
 (7,'Square Enix','Japão',750,'Final Fantasy, Kingdom Hearts'),
 (8,'Microsoft Gaming','Estados Unidos',500,'Halo, Gears of War, Forza'),
 (9,'Bandai Namco','Japão',800,'Elden Ring, Tekken, Pac-Man'),
 (10,'Sega','Japão',1100,'Sonic the Hedgehog, Yakuza/Like a Dragon');
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
      IN p_TituloJogo VARCHAR(45),
      IN p_IDGenero INT,
      IN p_IDDensevolvedora INT,
      IN p_IDPublicadora INT,
      IN p_DataLancamento DATE,
      IN p_DataUltimaUpdate DATETIME,
      IN p_Categoria VARCHAR(45),
      IN p_ClassificacaoIndicativa INT,
      IN p_Preco FLOAT
)
BEGIN
  INSERT INTO jogos (
       TituloJogo, IDGenero,
       IDDesenvolvedora, IDPublicadora, DataLancamento, DataUltimaUpdate,
       Categoria, ClassificacaoIndicativa, Preco
  ) VALUES (
       p_TituloJogo, p_IDGenero, p_IDDensevolvedora,
       p_IDPublicadora, p_DataLancamento, p_DataUltimaUpdate, p_Categoria,
       p_ClassificacaoIndicativa, p_Preco
  );
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `SelecionarJogosJaponeses`
--

DROP PROCEDURE IF EXISTS `SelecionarJogosJaponeses`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `SelecionarJogosJaponeses`()
BEGIN
SELECT
        j.TituloJogo AS Jogo,
        p.NomePublicadora AS Publicadora,
        p.PaisOrigem AS PaisDaPublicadora,
        j.Preco AS Preco
    FROM jogos j
    INNER JOIN publicadora p ON j.IDPublicadora = p.ID
    WHERE p.PaisOrigem = 'Japão'
    ORDER BY j.TituloJogo ASC;

END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `SelecionarJogosPraAdultos`
--

DROP PROCEDURE IF EXISTS `SelecionarJogosPraAdultos`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `SelecionarJogosPraAdultos`()
BEGIN
SELECT
        j.ID,
        j.TituloJogo,
        j.ClassificacaoIndicativa,
        j.Categoria,
        j.Preco
    FROM 
        jogos j
    WHERE 
        j.ClassificacaoIndicativa = '18+'
    ORDER BY 
        j.TituloJogo ASC;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `SelecionarJogosRecentementeAtualizados`
--

DROP PROCEDURE IF EXISTS `SelecionarJogosRecentementeAtualizados`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `SelecionarJogosRecentementeAtualizados`()
BEGIN
SELECT
        j.TituloJogo AS Jogo,
        j.DataLancamento AS DataLancamento,
        j.DataUltimaUpdate AS UltimaAtualizacao
    FROM jogos j
    ORDER BY j.DataUltimaUpdate DESC;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `SelecionarJogosSinglePlayer`
--

DROP PROCEDURE IF EXISTS `SelecionarJogosSinglePlayer`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `SelecionarJogosSinglePlayer`()
BEGIN
SELECT
        j.ID,
        j.TituloJogo,
        j.DataLancamento,
        j.Preco,
        j.ClassificacaoIndicativa
    FROM 
        jogos j
    WHERE 
        j.Categoria = 'Single-player';
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `SelecionarJogosVelhos`
--

DROP PROCEDURE IF EXISTS `SelecionarJogosVelhos`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `SelecionarJogosVelhos`(IN ano_limite INT)
BEGIN
 SELECT
        j.ID,
        j.TituloJogo,
        YEAR(j.DataLancamento) AS AnoLancamento,
        j.Categoria,
        j.Preco
    FROM 
        jogos j
    WHERE 
        YEAR(j.DataLancamento) <= ano_limite
    ORDER BY 
        j.DataLancamento ASC;
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;

--
-- Definition of procedure `SelecionarPorGenero`
--

DROP PROCEDURE IF EXISTS `SelecionarPorGenero`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `SelecionarPorGenero`(IN nome_genero VARCHAR(100))
BEGIN
SELECT
        j.TituloJogo AS Jogo,
        g.Genero AS Genero,
        j.Preco AS Preco
    FROM jogos j
    INNER JOIN genero g ON j.IDGenero = g.ID
    WHERE g.Genero LIKE CONCAT('%', nome_genero, '%')
    ORDER BY j.Preco DESC;
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

--
-- Definition of procedure `TopJogosMaisCaros`
--

DROP PROCEDURE IF EXISTS `TopJogosMaisCaros`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `TopJogosMaisCaros`()
BEGIN
SELECT
        j.TituloJogo AS Jogo,
        p.NomePublicadora AS Publicadora,
        j.Preco AS Preco
    FROM jogos j
    INNER JOIN publicadora p ON j.IDPublicadora = p.ID
    ORDER BY j.Preco DESC
    LIMIT 3;
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
