-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 27 okt 2016 om 17:54
-- Serverversie: 5.6.25
-- PHP-versie: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--
CREATE DATABASE IF NOT EXISTS `portfolio` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `portfolio`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `portfolio_item`
--

CREATE TABLE IF NOT EXISTS `portfolio_item` (
  `item_id` int(11) NOT NULL,
  `item_titel` varchar(50) NOT NULL,
  `item_lead` varchar(300) NOT NULL,
  `item_paragraph` text NOT NULL,
  `item_image` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `portfolio_item`
--

INSERT INTO `portfolio_item` (`item_id`, `item_titel`, `item_lead`, `item_paragraph`, `item_image`) VALUES
(1, 'Content Management Systeem v0.5', 'Een Content Management Systeem (CMS) wordt veel toegepast en daarom ben ik naast de lessen opschool een eigen CMS gaan ontwikkelen.', 'Mijn CMS onderscheidt zich van andere door de eenvoud voor de gebruiker. Het heeft geen ingewikkelde mogelijkheden die je in verwarring kunnen brengen. Ik ben dit CMS begonnen in de eerste klas van de opleiding Mediadeveloper op het Grafisch Lyceum Utrecht. Ik wil voor mijn stage nog een ander CMS ontwikkelen. ', 'cms0.5.png'),
(2, 'Portfolio CMS', 'Met een eigen portfolio kan ik toekomstige werkgevers laten zien wat ik de afgelopen jaren heb gemaakt. Omdat het CMS achter dit portfolio nog in ontwikkeling is, kan het er nog anders uit gaan zien en betere informatie gaan geven.', 'In de eerste opzet van mijn portfolio CMS heb ik er voor gezorgd dat ik een admin in kan loggen en nieuw werk kan toevoegen. Als eerste idee wilde ik mijn portfolio niet publiek toegankelijk maken. Een bedrijf wilde ik eerst inloggegevens sturen voordat zij mijn werk konden zien. Het idee was dat ik eem selectie kon maken van het werk dat voor dat bedrijf van toepassing was. Later ben ik daar van afgestapt. Het voordeel van dit portfolio is dat ik niet allerlei HTML en CSS hoef aan te passen als ik nieuw werk wil toevoegen. Het bijwerken via een editor is voldoende.', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_password` varchar(64) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='			';

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`user_id`, `user_email`, `user_password`) VALUES
(1, 'pbijker@glu.nl', 'addb0f5e7826c857d7376d1bd9bc33c0c544790a2eac96144a8af22b1298c940'),
(2, 'mark@regering.nl', '2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b'),
(3, 'samson@regering.nl', '2bb80d537b1da3e38bd30361aa855686bde0eacd7162fef6a25fe97bf527a25b');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `portfolio_item`
--
ALTER TABLE `portfolio_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `portfolio_item`
--
ALTER TABLE `portfolio_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
