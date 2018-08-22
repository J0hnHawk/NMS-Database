-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 22. Aug 2018 um 15:18
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

--
-- Daten für Tabelle `biomes`
--

INSERT INTO `biomes` (`id`, `name`, `german`) VALUES
(1, 'Lush', ''),
(2, 'Barren', ''),
(3, 'Dead', ''),
(4, 'Exotic', ''),
(5, 'Scorched', ''),
(6, 'Frozen', ''),
(7, 'Toxic', ''),
(8, 'Irradiated', ''),
(9, 'Airless', ''),
(10, 'Mega Exotic', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(42) COLLATE utf8_bin NOT NULL,
  `german` varchar(42) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `categories`
--

INSERT INTO `categories` (`id`, `name`, `german`) VALUES
(1, 'Resource', ''),
(2, 'Component', ''),
(3, 'Technologie', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `commodities`
--

CREATE TABLE `commodities` (
  `id` int(11) NOT NULL,
  `name` varchar(42) COLLATE utf8_bin NOT NULL,
  `german` varchar(42) COLLATE utf8_bin DEFAULT NULL,
  `categoryId` int(11) NOT NULL,
  `getableOnPlanet` tinyint(4) DEFAULT NULL,
  `baseValue` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `commodities`
--

INSERT INTO `commodities` (`id`, `name`, `german`, `categoryId`, `getableOnPlanet`, `baseValue`) VALUES
(1, 'Carbon', 'Kohlenstoff', 1, 1, 0),
(2, 'Condensed Carbon', 'Verdichteter Kohlenstoff', 1, 1, 0),
(3, 'Oxygen', 'Sauerstoff', 1, 1, 0),
(4, 'Di-hydrogen', 'Diawasserstoff', 1, 1, 0),
(5, 'Deuterium', 'Deuterium', 1, 1, 0),
(6, 'Tritium', 'Tritium', 1, NULL, 0),
(7, 'Ferrite Dust', 'Ferritstaub', 1, 1, 0),
(8, 'Pure Ferrit', 'Reines Ferrit', 1, 1, 0),
(9, 'Magnetised Ferrite', 'Magnetisiertes Ferrit', 1, NULL, 0),
(10, 'Sodium', 'Natrium', 1, 1, 0),
(11, 'Sodium Nitrate', 'Natriumnitrat', 1, 1, 0),
(12, 'Cobalt', 'Kobalt', 1, 1, 0),
(13, 'Ionised Cobalt', 'Ionisiertes Kobale', 1, NULL, 0),
(14, 'Salt', 'Salz', 1, 1, 0),
(15, 'Chlorine', 'Chlor', 1, NULL, 0),
(16, 'Copper', 'Kupfer', 1, 1, 0),
(17, 'Cadmium', 'Cadmium', 1, 1, 0),
(18, 'Emeril', 'Emeril', 1, 1, 0),
(19, 'Indium', 'Indium', 1, 1, 0),
(20, 'Chromatic Metal', 'Chromatisches Metall', 1, NULL, 0),
(21, 'Nanithaufen', 'Nanithaufen', 1, NULL, 0),
(22, 'Paraffinium', 'Paraffinium', 1, 1, 0),
(23, 'Pyrite', 'Pyrit', 1, 1, 0),
(24, 'Ammonia', 'Ammoniak', 1, 1, 0),
(25, 'Uranium', 'Uran', 1, 1, 0),
(26, 'Dioxite', 'Dioxit', 1, 1, 0),
(27, 'Phoshorus', NULL, 1, 1, 0),
(28, 'Mordite', 'Mordit', 1, NULL, 0),
(29, 'Pugneum', 'Pugneum', 1, NULL, 0),
(30, 'Silver', 'Silber', 1, 1, 0),
(31, 'Gold', 'Gold', 1, 1, 0),
(32, 'Platinum', 'Platin', 1, NULL, 0),
(33, 'Sulphurine', 'Schwefelin', 1, NULL, 0),
(34, 'Radon', 'Radon', 1, NULL, 0),
(35, 'Nitrogen', 'Stickstoff', 1, NULL, 0),
(36, 'Activated Copper', NULL, 1, 1, 0),
(37, 'Activated Cadmium', 'Aktiviertes Cadmium', 1, NULL, 0),
(38, 'Activated Emeril', NULL, 1, NULL, 0),
(39, 'Activated Indium', NULL, 1, NULL, 0),
(40, 'Fungal Mould', 'Pilzschimmel', 1, 1, 0),
(41, 'Frost Crystal', 'Frostkristall', 1, 1, 0),
(42, 'Gamma Root', 'Gammawurz', 1, 1, 0),
(43, 'Cactus Flesh', 'Kaktusfleisch', 1, 1, 0),
(44, 'Solanium', 'Solanium', 1, 1, 0),
(45, 'Star Bulb', 'Sternknolle', 1, 1, 0),
(46, 'Marrow Bulb', 'Kürbisknolle', 1, NULL, 0),
(47, 'Kelp Sac', 'Kelpbeutel', 1, 1, 0),
(48, 'Corprite', 'Corprit', 1, NULL, 0),
(49, 'Residual Goop', 'Restsubstanz', 1, NULL, 0),
(50, 'Runaway Mould', 'Unkontrollierter Schimmel', 1, NULL, 0),
(51, 'Rusted Metal', 'Verrostetes Metall', 1, NULL, 0),
(52, 'Living Slime', 'Lebendiger Schleim', 1, NULL, 0),
(53, 'Viscous Fluids', 'Zähe Flüssigkeiten', 1, NULL, 0),
(54, 'Metal Plating', 'Metallplatten', 2, NULL, 0),
(55, 'Carbon Nanotubes', 'Kohlenstoff-Nanorohr', 2, NULL, 0),
(56, 'Hermetic Seal', 'Hermetisches Siegel', 2, NULL, 0),
(57, 'Microprocessor', 'Microprocessor', 2, NULL, 0),
(58, 'Oxygen Capsule', 'Sauerstoffkapsel', 2, NULL, 0),
(59, 'Life Support Gel', 'Lebenserhaltungsgel', 2, NULL, 0),
(60, 'Ion Battery', 'Ionenakku', 2, NULL, 0),
(61, 'Advanced Ion Battery', NULL, 2, NULL, 0),
(62, 'Di-hydrogen Jelly', 'Diwasserstoff-Gelee', 2, NULL, 0),
(63, 'Launch Fuel', 'Raumschiffstart-Treibstoff', 2, NULL, 0),
(64, 'Unstable Plasma', NULL, 2, NULL, NULL),
(65, 'Projectile Ammunition', NULL, 2, NULL, NULL),
(66, 'Antimatter Housing', NULL, 2, NULL, NULL),
(67, 'Antimatter', NULL, 2, NULL, NULL),
(68, 'Warp Cell', NULL, 2, NULL, NULL),
(69, 'Oxygen Filter', NULL, 2, NULL, NULL),
(70, 'Salt Refactor', NULL, 2, NULL, NULL),
(71, 'Cobalt Mirror', NULL, 2, NULL, NULL),
(72, 'Sodium Diode', NULL, 2, NULL, NULL),
(73, 'unknown 20', NULL, 2, NULL, NULL),
(74, 'unknown 21', NULL, 2, NULL, NULL),
(75, 'Technology Module', NULL, 2, NULL, NULL),
(76, 'Carbon Crystal', NULL, 2, NULL, NULL),
(77, 'Rare Metal Element', NULL, 2, NULL, NULL),
(78, 'TetraCobalt', NULL, 2, NULL, NULL),
(79, 'Chloride Lattice', NULL, 2, NULL, NULL),
(80, 'unknown 37', NULL, 2, NULL, NULL),
(81, 'Superoxide Crystal', NULL, 2, NULL, NULL),
(82, 'Sac Venom', NULL, 2, NULL, NULL),
(83, 'Graviton Ball', NULL, 2, NULL, NULL),
(84, 'Albumen Pearl', 'Eiweißperle', 2, 1, NULL),
(85, 'Vortex Cube', NULL, 2, NULL, NULL),
(86, 'Aronium', NULL, 2, NULL, NULL),
(87, 'Dirty Bronze', NULL, 2, NULL, NULL),
(88, 'Herox', NULL, 2, NULL, NULL),
(89, 'Lemmium', NULL, 2, NULL, NULL),
(90, 'Magno-Gold', NULL, 2, NULL, NULL),
(91, 'Grantine', NULL, 2, NULL, NULL),
(92, 'Geodesite', NULL, 2, NULL, NULL),
(93, 'Iridesite', NULL, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `conflict`
--

CREATE TABLE `conflict` (
  `id` int(11) NOT NULL,
  `name` varchar(42) COLLATE utf8_bin NOT NULL,
  `german` varchar(42) COLLATE utf8_bin DEFAULT NULL,
  `tier` enum('Low','Medium','High','') COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `conflict`
--

INSERT INTO `conflict` (`id`, `name`, `german`, `tier`) VALUES
(1, 'Gentle', 'Sanft', 'Low'),
(2, 'Low', 'Niedrig', 'Low'),
(3, 'Mild', '', 'Low'),
(4, 'Peaceful', 'Friedlich', 'Low'),
(5, 'Relaxed', 'Entspannt', 'Low'),
(6, 'Stable', 'Stabil', 'Low'),
(7, 'Tranquil', 'Ruhig', 'Low'),
(8, 'Trival', 'Belanglos', 'Low'),
(9, 'Unthreatening', 'Nicht bedrohlich', 'Low'),
(10, 'Untroubled', 'Ungestört', 'Low'),
(11, 'Belligerent', '', 'Medium'),
(12, 'Boisterous', 'Ungestüm', 'Medium'),
(13, 'Fractious', 'Reizbar', 'Medium'),
(14, 'Intermittent', 'Unregelmäßig', 'Medium'),
(15, 'Medium', 'Mittel', 'Medium'),
(16, 'Rowdy', 'Gewalttätig', 'Medium'),
(17, 'Sporadic', 'Sporadisch', 'Medium'),
(18, 'Testy', 'Gereizt', 'Medium'),
(19, 'Unruly', 'Unbändig', 'Medium'),
(20, 'Unstable', '', 'Medium'),
(21, 'Aggressive', 'Aggressiv', 'High'),
(22, 'Alarming', 'Beängstigend', 'High'),
(23, 'At War', 'Im Krieg', 'High'),
(24, 'Critical', 'Kritisch', 'High'),
(25, 'Dangerous', 'Gefährlich', 'High'),
(26, 'Destructive', 'Zerstörerisch', 'High'),
(27, 'Formidable', 'Gewaltig', 'High'),
(28, 'High', 'Hoch', 'High'),
(29, 'Lawless', 'Gesetzlos', 'High'),
(30, 'Perilous', 'Riskant', 'High'),
(31, '- Data Unavailable -', '- Daten nicht verfügbar -', '');

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

--
-- Daten für Tabelle `economy`
--

INSERT INTO `economy` (`id`, `name`, `german`, `type`) VALUES
(1, 'Mercantile', 'Handel', 'Trading'),
(2, 'Trading', 'Händler', 'Trading'),
(3, 'Shipping', 'Versand', 'Trading'),
(4, 'Commercial', 'Kommerziell', 'Trading'),
(5, 'Material Fusion', 'Materialfusion', 'Advanced Materials'),
(6, 'Alchemical', 'Alchemie', 'Advanced Materials'),
(7, 'Metal Processing', 'Metallverarbeitung', 'Advanced Materials'),
(8, 'Ore Processing', 'Erzverarbeitung', 'Advanced Materials'),
(9, 'Research', 'Forschung', 'Scientific'),
(10, 'Scientific', 'Wissenschaft', 'Scientific'),
(11, 'Experimental', 'Experimentell', 'Scientific'),
(12, 'Mathematical', '', 'Scientific'),
(13, 'Mining', 'Bergbau', 'Mining'),
(14, 'Minerals', 'Mineralien', 'Mining'),
(15, 'Ore Extraction', 'Erzabbau', 'Mining'),
(16, 'Prospecting', 'Prospektion', 'Mining'),
(17, 'Manufacturing', 'Herstellung', 'Manufacturing'),
(18, 'Industrial', 'Industrie', 'Manufacturing'),
(19, 'Construction', 'Konstruktion', 'Manufacturing'),
(20, 'Mass Production', 'Massenproduktion', 'Manufacturing'),
(21, 'High Tech', 'Hightech', 'Technology'),
(22, 'Technology', 'Technologie', 'Technology'),
(23, 'Nano-construction', 'Nanokonstruktion', 'Technology'),
(24, 'Engineering', 'Maschinenbau', 'Technology'),
(25, 'Power Generation', 'Stromerzeugung', 'Power Generation'),
(26, 'Energy Supply', '', 'Power Generation'),
(27, 'Fuel Generation', 'Treibstofferzeugung', 'Power Generation'),
(28, 'High Voltage', 'Hochspannung', 'Power Generation'),
(29, '- Data Unavailable -', '- Daten nicht verfügbar -', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fauna`
--

CREATE TABLE `fauna` (
  `id` int(11) NOT NULL,
  `name` varchar(42) COLLATE utf8_bin NOT NULL,
  `german` varchar(42) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `fauna`
--

INSERT INTO `fauna` (`id`, `name`, `german`) VALUES
(1, 'Rich', 'Abundant'),
(2, 'Ordinary', 'Alltäglich'),
(3, 'Generous', 'Großzügig'),
(4, 'Full', 'Umfassend'),
(5, 'Abundant', 'Ergibig'),
(6, 'Devoid', 'Nichtexistent'),
(7, 'High', 'Viel'),
(8, 'Average', 'Durchschnittlich'),
(9, 'Bountiful', 'Reichhaltig'),
(10, 'Moderate', 'Moderat'),
(11, 'Ample', 'Reichlich'),
(12, 'Copious', 'Massenhaft'),
(13, 'Lacking', 'Mangelnd'),
(14, 'Numerous', 'Zahlreich'),
(15, 'Undetected', 'Unentdeckt'),
(16, 'Common', 'Gewöhnlich'),
(17, 'Deficient', 'Unzureichend'),
(18, 'Not Present', 'Nicht vorhanden'),
(19, 'Empty', 'Leer'),
(20, 'Fair', 'Ordentlich'),
(21, 'Frequent', 'Häufig'),
(22, 'None', 'Nichts'),
(23, 'Typical', 'Typisch'),
(24, 'Nonexistent', 'Nicht existent');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `flora`
--

CREATE TABLE `flora` (
  `id` int(11) NOT NULL,
  `name` varchar(42) COLLATE utf8_bin NOT NULL,
  `german` varchar(42) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `flora`
--

INSERT INTO `flora` (`id`, `name`, `german`) VALUES
(1, 'Rich', 'Abundant'),
(2, 'Ordinary', 'Üppig'),
(3, 'Generous', 'Großzügig'),
(4, 'Full', 'Umfassend'),
(5, 'Abundant', 'Üppig'),
(6, 'Devoid', 'Nichtexistent'),
(7, 'High', 'Viel'),
(8, 'Average', NULL),
(9, 'Bountiful', 'Reichhaltig'),
(10, 'Moderate', NULL),
(11, 'Ample', 'Reichlich'),
(12, 'Copious', 'Massenhaft'),
(13, 'Lacking', 'Mangelnd'),
(14, 'Numerous', NULL),
(15, 'Undetected', 'Unentdeckt'),
(16, 'Common', NULL),
(17, 'Deficient', NULL),
(18, 'Not Present', NULL),
(19, 'Empty', 'Leer'),
(20, 'Fair', NULL),
(21, 'Frequent', 'Häufig'),
(22, 'None', 'Nichts'),
(23, 'Typical', NULL),
(24, 'Nonexistent', 'Nicht existent');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `galaxies`
--

CREATE TABLE `galaxies` (
  `id` int(11) NOT NULL,
  `name` varchar(42) COLLATE utf8_bin NOT NULL,
  `german` varchar(42) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `galaxies`
--

INSERT INTO `galaxies` (`id`, `name`, `german`) VALUES
(1, 'Euklid', NULL),
(2, 'Hilbert Dimension', NULL),
(3, 'Cylypso', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lifeform`
--

CREATE TABLE `lifeform` (
  `id` int(11) NOT NULL,
  `name` varchar(42) COLLATE utf8_bin NOT NULL,
  `german` varchar(42) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `lifeform`
--

INSERT INTO `lifeform` (`id`, `name`, `german`) VALUES
(1, 'Gek', 'Gek'),
(2, 'Vy\'keen', 'Vy\'keen'),
(3, 'Korvax', 'Korvax'),
(4, 'Uncharted', 'Unerforscht');

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
  `resourcesId` int(11) DEFAULT NULL,
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

--
-- Daten für Tabelle `refinery`
--

INSERT INTO `refinery` (`id`, `input1`, `quantity1`, `input2`, `quantity2`, `input3`, `quantity3`, `output`, `outputQuantity`) VALUES
(1, 1, 2, NULL, NULL, NULL, NULL, 2, 1),
(2, 2, 1, NULL, NULL, NULL, NULL, 1, 2),
(3, 3, 1, NULL, NULL, NULL, NULL, 1, 1),
(4, 4, 30, NULL, NULL, NULL, NULL, 62, 1),
(8, 6, 5, NULL, NULL, NULL, NULL, 32, 1),
(9, 7, 1, NULL, NULL, NULL, NULL, 8, 1),
(10, 8, 2, NULL, NULL, NULL, NULL, 9, 1),
(11, 9, 1, NULL, NULL, NULL, NULL, 8, 2),
(12, 10, 2, NULL, NULL, NULL, NULL, 11, 1),
(13, 12, 2, NULL, NULL, NULL, NULL, 13, 1),
(14, 13, 1, NULL, NULL, NULL, NULL, 12, 2),
(15, 14, 2, NULL, NULL, NULL, NULL, 15, 1),
(16, 16, 2, NULL, NULL, NULL, NULL, 20, 1),
(17, 17, 1, NULL, NULL, NULL, NULL, 20, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `name` varchar(42) COLLATE utf8_bin NOT NULL,
  `german` varchar(42) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `resources`
--

INSERT INTO `resources` (`id`, `name`, `german`) VALUES
(1, 'Fair', ''),
(2, 'Intermittent', 'Unregelmäßig'),
(3, 'Moderate', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sentinel`
--

CREATE TABLE `sentinel` (
  `id` int(11) NOT NULL,
  `name` varchar(42) COLLATE utf8_bin NOT NULL,
  `german` varchar(42) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `sentinel`
--

INSERT INTO `sentinel` (`id`, `name`, `german`) VALUES
(1, 'Aggressive', 'Aggressiv'),
(2, 'Average', 'Durchschnittllich'),
(3, 'Frenzied', 'Wütend'),
(4, 'High Security', 'Hohe Alarmstufe'),
(5, 'Hostile', 'Feindlich'),
(6, 'Limited', 'Verhalten'),
(7, 'Low', 'Niedrig'),
(8, 'Low Security', 'Geringe Alarmstufe'),
(9, 'Minimal', 'Minimal'),
(10, 'Passive', 'Passiv'),
(11, 'Regular', 'Normal'),
(12, 'Relaxed', 'Entspannt'),
(13, 'Standard', 'Standard'),
(14, 'Threatening', 'Bedrohlich'),
(15, 'Typical', 'Typisch');

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
  `name` varchar(42) COLLATE utf8_bin NOT NULL,
  `galaxticAdress` varchar(19) COLLATE utf8_bin DEFAULT NULL,
  `isFavourite` int(11) DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `galaxyId` int(11) NOT NULL,
  `lifeformId` int(11) DEFAULT NULL,
  `economyId` int(11) DEFAULT NULL,
  `wealthId` int(11) DEFAULT NULL,
  `conflictId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wealth`
--

CREATE TABLE `wealth` (
  `id` int(11) NOT NULL,
  `name` varchar(42) COLLATE utf8_bin NOT NULL,
  `german` varchar(42) COLLATE utf8_bin DEFAULT NULL,
  `wealth` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `wealth`
--

INSERT INTO `wealth` (`id`, `name`, `german`, `wealth`) VALUES
(1, 'Declining', 'Abnehmend', 1),
(2, 'Destitute', 'Mittellos', 1),
(3, 'Failing', 'Scheiternd', 1),
(4, 'Fledgling', 'Unerfahren', 1),
(5, 'Low supply', 'Geringe Versorgung', 1),
(6, 'Struggling', 'Mühevoll', 1),
(7, 'Unsuccessful', 'Erfolglos', 1),
(8, 'Unpromising', 'Aussichtslos', 1),
(9, 'Adequate', 'Angemessen', 2),
(10, 'Balanced', 'Ausgeglichen', 2),
(11, 'Comfortable', 'Komfortabel', 2),
(12, 'Developing', 'In Entwicklung', 2),
(13, 'Medium Supply', 'Mittlere Versorgung', 2),
(14, 'Promising', 'Erfolgversprechend', 2),
(15, 'Satisfactory', 'Zufriedenstellend', 2),
(16, 'Sustainable', 'Nachhaltig', 2),
(17, 'Advanced', '', 3),
(18, 'Affluent', 'Reich', 3),
(19, 'Booming', 'Boomend', 3),
(20, 'Flourishing', 'Florierend', 3),
(21, 'High Supply', '', 3),
(22, 'Opulent', '', 3),
(23, 'Prosperous', 'Gedeihend', 3),
(24, 'Wealthy', 'Wohlhabend', 3);

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
-- Daten für Tabelle `weather`
--

INSERT INTO `weather` (`id`, `name`, `german`) VALUES
(1, 'REDACTED', NULL),
(2, 'Absent', NULL),
(3, 'Acid Rain', NULL),
(4, 'Acidic Deluges', NULL),
(5, 'Acidic Dust', NULL),
(6, 'Acidic Dust Pockets', NULL),
(7, 'Airless', NULL),
(8, 'Alkaline Cloudbursts', NULL),
(9, 'Alkaline Rain', NULL),
(10, 'Alkaline Storms', NULL),
(11, 'Anomalous', NULL),
(12, 'Arid', NULL),
(13, 'Atmospheric Corruption', NULL),
(14, 'Atmospheric Heat Instabilities', NULL),
(15, 'Baked', NULL),
(16, 'Balmy', NULL),
(17, 'Beautiful', NULL),
(18, 'Billowing Dust Storms', NULL),
(19, 'Blasted Atmosphere', NULL),
(20, 'Blazed', NULL),
(21, 'Blissful', NULL),
(22, 'Blistering Damp', NULL),
(23, 'Blistering Floods', NULL),
(24, 'Blizzard', NULL),
(25, 'Boiling Monsoons', NULL),
(26, 'Boiling Puddles', NULL),
(27, 'Boiling Superstorms', NULL),
(28, 'Bone-Stripping Acid Storms', NULL),
(29, 'Broiling Humidity', NULL),
(30, 'Burning', NULL),
(31, 'Burning Air', NULL),
(32, 'Burning Gas Clouds', NULL),
(33, 'Caustic Dust', NULL),
(34, 'Caustic Floods', NULL),
(35, 'Caustic Moisture', NULL),
(36, 'Caustic Winds', NULL),
(37, 'Ceaseless Drought', NULL),
(38, 'Choking Clouds', NULL),
(39, 'Choking Humidity', NULL),
(40, 'Choking Sandstorms', NULL),
(41, 'Clear', NULL),
(42, 'Cold', NULL),
(43, 'Combustible Dust', NULL),
(44, 'Contaminated', NULL),
(45, 'Contaminated Puddles', NULL),
(46, 'Contaminated Squalls', NULL),
(47, 'Corrosive Cyclones', NULL),
(48, 'Corrosive Damp', NULL),
(49, 'Corrosive Rainstorms', NULL),
(50, 'Corrosive Sleet Storms', NULL),
(51, 'Corrosive Storms', NULL),
(52, 'Crimson Heat', NULL),
(53, 'Crisp', NULL),
(54, 'Damp', NULL),
(55, 'Dangerously Hot', NULL),
(56, 'Dangerously Hot Fog', NULL),
(57, 'Dangerously Toxic Rain', NULL),
(58, 'Dead Wastes', NULL),
(59, 'Deep Freeze', NULL),
(60, 'Dehydrated', NULL),
(61, 'Deluge', NULL),
(62, 'Desolate', NULL),
(63, 'Desiccated', NULL),
(64, 'Direct Sunlight', NULL),
(65, 'Downpours', NULL),
(66, 'Drifting Snowstorms', NULL),
(67, 'Drizzle', NULL),
(68, 'Droughty', NULL),
(69, 'Dry Gusts', NULL),
(70, 'Dust-Choked Winds', NULL),
(71, 'Eerily Calm', NULL),
(72, 'Elevated Radioactivity', NULL),
(73, 'Emollient', NULL),
(74, 'Energetic Storms', NULL),
(75, 'Enormous Nuclear Storms', NULL),
(76, 'Extreme Acidity', NULL),
(77, 'Extreme Atmospheric Decay', NULL),
(78, 'Extreme Cold', NULL),
(79, 'Extreme Contamination', NULL),
(80, 'Extreme Heat', NULL),
(81, 'Extreme Nuclear Decay', NULL),
(82, 'Extreme Radioactivity', NULL),
(83, 'Extreme Thermonuclear Fog', NULL),
(84, 'Extreme Toxicity', NULL),
(85, 'Extreme Wind Blasting', NULL),
(86, 'Extreme Winds', NULL),
(87, 'Fair', NULL),
(88, 'Fine', NULL),
(89, 'Firestorms', NULL),
(90, 'Freezing', NULL),
(91, 'Freezing Night Winds', NULL),
(92, 'Freezing Rain', NULL),
(93, 'Frequent Blizzards', NULL),
(94, 'Frequent Particle Eruptions', NULL),
(95, 'Frequent Toxic Floods', NULL),
(96, 'Frigid', NULL),
(97, 'Frost', NULL),
(98, 'Frozen', NULL),
(99, 'Frozen Clouds', NULL),
(100, 'Gamma Cyclones', NULL),
(101, 'Gamma Dust', NULL),
(102, 'Gas Clouds', NULL),
(103, 'Gelid', NULL),
(104, 'Glacial', NULL),
(105, 'Harmful Rain', NULL),
(106, 'Harsh Winds', NULL),
(107, 'Harsh, Icy Winds', NULL),
(108, 'Haunted Frost', NULL),
(109, 'Hazardous Temperature Extremes', NULL),
(110, 'Hazardous Whiteouts', NULL),
(111, 'Heated', NULL),
(112, 'Heated Atmosphere', NULL),
(113, 'Heavily Toxic Rain', NULL),
(114, 'Heavy Rain', NULL),
(115, 'Highly Variable Temperatures', NULL),
(116, 'Hot', NULL),
(117, 'Howling Blizzards', NULL),
(118, 'Howling Gales', NULL),
(119, 'Humid', 'Feucht'),
(120, 'Humid', NULL),
(121, 'Ice Storms', NULL),
(122, 'Icebound', NULL),
(123, 'Icy', NULL),
(124, 'Icy Blasts', NULL),
(125, 'Icy Nights', NULL),
(126, 'Icy Tempests', NULL),
(127, 'Incendiary Dust', NULL),
(128, 'Indetectable Burning', NULL),
(129, 'Inert', NULL),
(130, 'Inferno', NULL),
(131, 'Inferno Winds', NULL),
(132, 'Infrequent Blizzards', NULL),
(133, 'Infrequent Dust Storms', NULL),
(134, 'Infrequent Heat Storms', NULL),
(135, 'Infrequent Toxic Drizzle', NULL),
(136, 'Intense Cold', NULL),
(137, 'Intense Dust', NULL),
(138, 'Intense Heat', NULL),
(139, 'Intense Heatbursts', NULL),
(140, 'Intense Rainfall', NULL),
(141, 'Intermittent Wind Blasting', NULL),
(142, 'Internal Rain', NULL),
(143, 'Invisible Mist', NULL),
(144, 'Irradiated', NULL),
(145, 'Irradiated Downpours', NULL),
(146, 'Irradiated Storms', NULL),
(147, 'Irradiated Thunderstorms', NULL),
(148, 'Irradiated Winds', NULL),
(149, 'Lethal Atmosphere', NULL),
(150, 'Lethal Humidity Outbreaks', NULL),
(151, 'Light Showers', NULL),
(152, 'Lost Clouds', NULL),
(153, 'Lung-Burning Night Wind', NULL),
(154, 'Mellow', NULL),
(155, 'Memories of Frost', NULL),
(156, 'Migratory Blizzards', NULL),
(157, 'Mild', NULL),
(158, 'Mild Rain', NULL),
(159, 'Moderate', NULL),
(160, 'Moistureless', NULL),
(161, 'Monsoon', NULL),
(162, 'Mostly Calm', NULL),
(163, 'No Atmosphere', NULL),
(164, 'Noxious Gas Storms', NULL),
(165, 'Noxious Gases', NULL),
(166, 'Nuclear Emission', NULL),
(167, 'Nuclidic Atmosphere', NULL),
(168, 'Obsidian Heat', NULL),
(169, 'Occasional Acid Storms', NULL),
(170, 'Occasional Ash Storms', NULL),
(171, 'Occasional Radiation Outbursts', NULL),
(172, 'Occasional Sandstorms', NULL),
(173, 'Occasional Scalding Cloudbursts', NULL),
(174, 'Occasional Snowfall', NULL),
(175, 'Outbreaks of Frozen Rain', NULL),
(176, 'Overly Warm', NULL),
(177, 'Painfully Hot Rain', NULL),
(178, 'Parched', NULL),
(179, 'Parched Sands', NULL),
(180, 'Particulate Winds', NULL),
(181, 'Passing Toxic Fronts', NULL),
(182, 'Peaceful', NULL),
(183, 'Peaceful Climate', NULL),
(184, 'Perfectly Clear', NULL),
(185, 'Permafrost', NULL),
(186, 'Planet-Wide Radiation Storms', NULL),
(187, 'Planetwide Desiccation', NULL),
(188, 'Pleasant', NULL),
(189, 'Poison Flurries', NULL),
(190, 'Poison Rain', NULL),
(191, 'Poisonous Dust', NULL),
(192, 'Poisonous Gas', NULL),
(193, 'Pouring Rain', NULL),
(194, 'Pouring Toxic Rain', NULL),
(195, 'Powder Snow', NULL),
(196, 'Radioactive', NULL),
(197, 'Radioactive Damp', NULL),
(198, 'Radioactive Decay', NULL),
(199, 'Radioactive Dust Storms', NULL),
(200, 'Radioactive Humidity', NULL),
(201, 'Radioactive Storms', NULL),
(202, 'Radioactivity', NULL),
(203, 'Raging Snowstorms', NULL),
(204, 'Rainstorms', NULL),
(205, 'Rare Firestorms', NULL),
(206, 'Reactive', NULL),
(207, 'Reactive Dust', NULL),
(208, 'Reactive Rain', NULL),
(209, 'Refreshing Breeze', NULL),
(210, 'Roaring Ice Storms', NULL),
(211, 'Roaring Nuclear Wind', NULL),
(212, 'Sand Blizzards', NULL),
(213, 'Sandstorms', NULL),
(214, 'Scalding Heat', NULL),
(215, 'Scaling Rainstorms', NULL),
(216, 'Scorched', NULL),
(217, 'Self-Igniting Storms', NULL),
(218, 'Silent', NULL),
(219, 'Smouldering', NULL),
(220, 'Snow', NULL),
(221, 'Snowfall', NULL),
(222, 'Snowstorms', NULL),
(223, 'Snowy', NULL),
(224, 'Sporadic Grit Storms', NULL),
(225, 'Sterile', NULL),
(226, 'Stinging Atmosphere', NULL),
(227, 'Stinging Puddles', NULL),
(228, 'Sunny', NULL),
(229, 'Supercooled Storms', NULL),
(230, 'Superheated Air', NULL),
(231, 'Superheated Drizzle', NULL),
(232, 'Superheated Gas Pockets', NULL),
(233, 'Superheated Rain', NULL),
(234, 'Sweltering', NULL),
(235, 'Sweltering Damp', NULL),
(236, 'Temperate', NULL),
(237, 'Tempered', NULL),
(238, 'Thirsty Clouds', NULL),
(239, 'Torrential Acid', NULL),
(240, 'Torrential Heat', NULL),
(241, 'Torrential Rain', NULL),
(242, 'Torrid Deluges', NULL),
(243, 'Toxic Clouds', NULL),
(244, 'Toxic Damp', NULL),
(245, 'Toxic Dust', NULL),
(246, 'Toxic Monsoons', NULL),
(247, 'Toxic Outbreaks', NULL),
(248, 'Toxic Rain', NULL),
(249, 'Toxic Superstorms', NULL),
(250, 'Tropical Storms', NULL),
(251, 'Unclouded Skies', NULL),
(252, 'Unending Sunlight', NULL),
(253, 'Unstable', NULL),
(254, 'Unstable Atmosphere', NULL),
(255, 'Unstable Fog', NULL),
(256, 'Unusually Mild', NULL),
(257, 'Usually Mild', NULL),
(258, 'Utterly Still', NULL),
(259, 'Volatile', NULL),
(260, 'Volatile Dust Storms', NULL),
(261, 'Volatile Storms', NULL),
(262, 'Volatile Winds', NULL),
(263, 'Volatile Windstorms', NULL),
(264, 'Wandering Frosts', NULL),
(265, 'Wandering Hot Spots', NULL),
(266, 'Warm', NULL),
(267, 'Wet', NULL),
(268, 'Whiteout', NULL),
(269, 'Wind', NULL),
(270, 'Winds of Glass', NULL),
(271, 'Wintry', NULL),
(272, 'Withered', NULL);

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
-- Indizes für die Tabelle `conflict`
--
ALTER TABLE `conflict`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `economy`
--
ALTER TABLE `economy`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `fauna`
--
ALTER TABLE `fauna`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `flora`
--
ALTER TABLE `flora`
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
  ADD KEY `systemId` (`systemId`) USING BTREE,
  ADD KEY `weatherId` (`weatherId`),
  ADD KEY `sentinelId` (`sentinelId`),
  ADD KEY `faunaId` (`faunaId`),
  ADD KEY `floraId` (`floraId`),
  ADD KEY `resourcesId` (`resourcesId`);

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
-- Indizes für die Tabelle `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `sentinel`
--
ALTER TABLE `sentinel`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `commodities`
--
ALTER TABLE `commodities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT für Tabelle `conflict`
--
ALTER TABLE `conflict`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT für Tabelle `economy`
--
ALTER TABLE `economy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT für Tabelle `fauna`
--
ALTER TABLE `fauna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT für Tabelle `flora`
--
ALTER TABLE `flora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT für Tabelle `galaxies`
--
ALTER TABLE `galaxies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `lifeform`
--
ALTER TABLE `lifeform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `planet-resource`
--
ALTER TABLE `planet-resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=496;

--
-- AUTO_INCREMENT für Tabelle `planets`
--
ALTER TABLE `planets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT für Tabelle `refinery`
--
ALTER TABLE `refinery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT für Tabelle `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `sentinel`
--
ALTER TABLE `sentinel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT für Tabelle `storage`
--
ALTER TABLE `storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `systems`
--
ALTER TABLE `systems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT für Tabelle `wealth`
--
ALTER TABLE `wealth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT für Tabelle `weather`
--
ALTER TABLE `weather`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

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
  ADD CONSTRAINT `planets_ibfk_3` FOREIGN KEY (`biomeId`) REFERENCES `biomes` (`id`),
  ADD CONSTRAINT `planets_ibfk_4` FOREIGN KEY (`weatherId`) REFERENCES `weather` (`id`),
  ADD CONSTRAINT `planets_ibfk_5` FOREIGN KEY (`sentinelId`) REFERENCES `sentinel` (`id`),
  ADD CONSTRAINT `planets_ibfk_6` FOREIGN KEY (`faunaId`) REFERENCES `fauna` (`id`),
  ADD CONSTRAINT `planets_ibfk_7` FOREIGN KEY (`floraId`) REFERENCES `flora` (`id`),
  ADD CONSTRAINT `planets_ibfk_8` FOREIGN KEY (`resourcesId`) REFERENCES `resources` (`id`);

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
  ADD CONSTRAINT `systems_ibfk_5` FOREIGN KEY (`conflictId`) REFERENCES `conflict` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
