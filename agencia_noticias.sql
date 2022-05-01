SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

DROP TABLE IF EXISTS `noticia`;

CREATE TABLE IF NOT EXISTS `noticia` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(120) NOT NULL,
  `texto` longtext NOT NULL,
  `horario` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO `noticia` (`titulo`, `texto`, `horario`) 
VALUES
('Relembre negócios bilionários envolvendo empresas de tecnologia', 
'A compra do Twitter pelo empresário Elon Musk marca mais um capítulo de negócios bilionários envolvendo o setor de tecnologia.', 
'2022-04-30 9:00'),
('Samsung, Porto e mais empresas oferecem capacitação grátis em tecnologia', 
'Programas de capacitação trazem oportunidades para quem deseja se aprofundar em tecnologia; USP vai abrir inscrições para mestrado.', 
'2022-05-01 18:30'),
('Tecnologia é novo horizonte do trabalho no campo e na cidade', 
'Dia do Trabalho serve de reflexão para as transformações do mercado do trabalho para as próximas décadas no Brasil.', 
'2022-05-02 7:30'),
('À prova de balas: entenda a tecnologia por trás do carro-forte', 
'Mas você sabe quais são as tecnologias usadas para que os carros-fortes realizem o seu trabalho com segurança? Confira em detalhes a seguir.', 
'2022-05-02 8:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
