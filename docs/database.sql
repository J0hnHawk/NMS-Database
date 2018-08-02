-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 02. Aug 2018 um 15:12
-- Server-Version: 10.1.30-MariaDB
-- PHP-Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `nomanssky`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `biomes`
--

CREATE TABLE `biomes` (
  `id` int(11) NOT NULL,
  `name` varchar(42) COLLATE utf8_bin NOT NULL,
  `german` varchar(42) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(42) COLLATE utf8_bin NOT NULL,
  `german` varchar(42) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `commodities`
--

CREATE TABLE `commodities` (
  `id` int(11) NOT NULL,
  `name` varchar(42) COLLATE utf8_bin NOT NULL,
  `german` varchar(42) COLLATE utf8_bin DEFAULT NULL,
  `categoryId` int(11) NOT NULL,
  `baseValue` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `conflict_level`
--

CREATE TABLE `conflict_level` (
  `id` int(11) NOT NULL,
  `name` varchar(42) COLLATE utf8_bin NOT NULL,
  `german` varchar(42) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `economy`
--

CREATE TABLE `economy` (
  `id` int(11) NOT NULL,
  `name` varchar(42) COLLATE utf8_bin NOT NULL,
  `german` varchar(42) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(42) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `galaxies`
--

CREATE TABLE `galaxies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lifeform`
--

CREATE TABLE `lifeform` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `planet-resource`
--

CREATE TABLE `planet-resource` (
  `id` int(11) NOT NULL,
  `planetId` int(11) NOT NULL,
  `commodityId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `planets`
--

CREATE TABLE `planets` (
  `id` int(11) NOT NULL,
  `name` varchar(42) COLLATE utf8_bin NOT NULL,
  `systemId` int(11) NOT NULL,
  `planetMoonId` int(11) DEFAULT NULL,
  `portalCode` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `galacticAdress` varchar(19) COLLATE utf8_bin DEFAULT NULL,
  `biomeId` int(11) DEFAULT NULL,
  `weatherId` int(11) DEFAULT NULL,
  `sentinelId` int(11) DEFAULT NULL,
  `floraId` int(11) DEFAULT NULL,
  `faunaId` int(11) DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `refinery`
--

CREATE TABLE `refinery` (
  `id` int(11) NOT NULL,
  `input1` int(11) NOT NULL,
  `quantity1` int(11) NOT NULL,
  `input2` int(11) DEFAULT NULL,
  `quantity2` int(11) DEFAULT NULL,
  `input3` int(11) DEFAULT NULL,
  `quantity3` int(11) DEFAULT NULL,
  `output` int(11) NOT NULL,
  `outputQuantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `storage`
--

CREATE TABLE `storage` (
  `id` int(11) NOT NULL,
  `storage` int(11) NOT NULL,
  `commodityId` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `systems`
--

CREATE TABLE `systems` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `galaxyId` int(11) NOT NULL,
  `lifeformId` int(11) NOT NULL,
  `economyId` int(11) NOT NULL,
  `wealthId` int(11) NOT NULL,
  `conflictId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wealth`
--

CREATE TABLE `wealth` (
  `id` int(11) NOT NULL,
  `name` varchar(42) COLLATE utf8_bin NOT NULL,
  `german` varchar(42) COLLATE utf8_bin DEFAULT NULL,
  `wealth` enum('low','medium','high','') COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `weather`
--

CREATE TABLE `weather` (
  `id` int(11) NOT NULL,
  `name` varchar(42) COLLATE utf8_bin NOT NULL,
  `german` varchar(42) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `biomes`
--
ALTER TABLE `biomes`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `commodities`
--
ALTER TABLE `commodities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`categoryId`) USING BTREE;

--
-- Indizes für die Tabelle `conflict_level`
--
ALTER TABLE `conflict_level`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `economy`
--
ALTER TABLE `economy`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `galaxies`
--
ALTER TABLE `galaxies`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `lifeform`
--
ALTER TABLE `lifeform`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `planet-resource`
--
ALTER TABLE `planet-resource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `planetId` (`planetId`),
  ADD KEY `commodityId` (`commodityId`) USING BTREE;

--
-- Indizes für die Tabelle `planets`
--
ALTER TABLE `planets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `planetMoonId` (`planetMoonId`) USING BTREE,
  ADD KEY `biomeId` (`biomeId`) USING BTREE,
  ADD KEY `systemId` (`systemId`) USING BTREE;

--
-- Indizes für die Tabelle `refinery`
--
ALTER TABLE `refinery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `input2` (`input2`),
  ADD KEY `output` (`output`) USING BTREE,
  ADD KEY `input1` (`input1`) USING BTREE,
  ADD KEY `input3` (`input3`) USING BTREE;

--
-- Indizes für die Tabelle `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commodityId` (`commodityId`) USING BTREE;

--
-- Indizes für die Tabelle `systems`
--
ALTER TABLE `systems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galaxyId` (`galaxyId`) USING BTREE,
  ADD KEY `lifeformId` (`lifeformId`) USING BTREE,
  ADD KEY `economyId` (`economyId`) USING BTREE,
  ADD KEY `wealthId` (`wealthId`) USING BTREE,
  ADD KEY `conflictId` (`conflictId`) USING BTREE;

--
-- Indizes für die Tabelle `wealth`
--
ALTER TABLE `wealth`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `weather`
--
ALTER TABLE `weather`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `biomes`
--
ALTER TABLE `biomes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `commodities`
--
ALTER TABLE `commodities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `conflict_level`
--
ALTER TABLE `conflict_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `economy`
--
ALTER TABLE `economy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `galaxies`
--
ALTER TABLE `galaxies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `lifeform`
--
ALTER TABLE `lifeform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `planet-resource`
--
ALTER TABLE `planet-resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `planets`
--
ALTER TABLE `planets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `refinery`
--
ALTER TABLE `refinery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `storage`
--
ALTER TABLE `storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `systems`
--
ALTER TABLE `systems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `wealth`
--
ALTER TABLE `wealth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `weather`
--
ALTER TABLE `weather`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `commodities`
--
ALTER TABLE `commodities`
  ADD CONSTRAINT `commodities_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`);

--
-- Constraints der Tabelle `planet-resource`
--
ALTER TABLE `planet-resource`
  ADD CONSTRAINT `planet-resource_ibfk_1` FOREIGN KEY (`planetId`) REFERENCES `planets` (`id`),
  ADD CONSTRAINT `planet-resource_ibfk_2` FOREIGN KEY (`commodityId`) REFERENCES `commodities` (`id`);

--
-- Constraints der Tabelle `planets`
--
ALTER TABLE `planets`
  ADD CONSTRAINT `planets_ibfk_1` FOREIGN KEY (`planetMoonId`) REFERENCES `planets` (`id`),
  ADD CONSTRAINT `planets_ibfk_2` FOREIGN KEY (`systemId`) REFERENCES `systems` (`id`),
  ADD CONSTRAINT `planets_ibfk_3` FOREIGN KEY (`biomeId`) REFERENCES `biomes` (`id`);

--
-- Constraints der Tabelle `refinery`
--
ALTER TABLE `refinery`
  ADD CONSTRAINT `refinery_ibfk_1` FOREIGN KEY (`output`) REFERENCES `commodities` (`id`),
  ADD CONSTRAINT `refinery_ibfk_2` FOREIGN KEY (`input1`) REFERENCES `commodities` (`id`),
  ADD CONSTRAINT `refinery_ibfk_3` FOREIGN KEY (`input2`) REFERENCES `commodities` (`id`),
  ADD CONSTRAINT `refinery_ibfk_4` FOREIGN KEY (`input3`) REFERENCES `commodities` (`id`);

--
-- Constraints der Tabelle `storage`
--
ALTER TABLE `storage`
  ADD CONSTRAINT `storage_ibfk_1` FOREIGN KEY (`commodityId`) REFERENCES `commodities` (`id`);

--
-- Constraints der Tabelle `systems`
--
ALTER TABLE `systems`
  ADD CONSTRAINT `systems_ibfk_1` FOREIGN KEY (`galaxyId`) REFERENCES `galaxies` (`id`),
  ADD CONSTRAINT `systems_ibfk_2` FOREIGN KEY (`lifeformId`) REFERENCES `lifeform` (`id`),
  ADD CONSTRAINT `systems_ibfk_3` FOREIGN KEY (`economyId`) REFERENCES `economy` (`id`),
  ADD CONSTRAINT `systems_ibfk_4` FOREIGN KEY (`wealthId`) REFERENCES `wealth` (`id`),
  ADD CONSTRAINT `systems_ibfk_5` FOREIGN KEY (`conflictId`) REFERENCES `conflict_level` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
