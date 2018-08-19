-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 19. Aug 2018 um 20:57
-- Server-Version: 10.0.34-MariaDB
-- PHP-Version: 5.6.36

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

--
-- Daten für Tabelle `planet-resource`
--

INSERT INTO `planet-resource` (`id`, `planetId`, `commodityId`) VALUES
(31, 1, 44),
(32, 1, 8),
(33, 1, 27),
(34, 1, 16),
(75, 11, 43),
(76, 11, 8),
(77, 11, 23),
(78, 11, 16),
(83, 12, 40),
(84, 12, 10),
(85, 12, 24),
(86, 12, 16),
(119, 18, 42),
(120, 18, 14),
(121, 18, 25),
(122, 18, 19),
(123, 25, 84),
(124, 25, 45),
(125, 25, 8),
(126, 25, 22),
(127, 25, 16),
(128, 24, 40),
(129, 24, 10),
(130, 24, 24),
(131, 24, 19),
(132, 26, 43),
(133, 26, 8),
(134, 26, 23),
(135, 26, 16),
(136, 27, 42),
(137, 27, 8),
(138, 27, 25),
(139, 27, 16),
(140, 31, 43),
(141, 31, 10),
(142, 31, 23),
(143, 31, 18),
(144, 37, 84),
(145, 37, 45),
(146, 37, 8),
(147, 37, 22),
(148, 37, 16),
(159, 124, 42),
(160, 124, 30),
(161, 124, 25),
(162, 124, 18),
(163, 198, 40),
(164, 198, 8),
(165, 198, 24),
(166, 198, 16),
(167, 194, 42),
(168, 194, 8),
(169, 194, 25),
(170, 194, 16),
(171, 195, 10),
(172, 195, 8),
(173, 195, 16),
(174, 196, 14),
(175, 196, 8),
(176, 196, 16),
(177, 197, 44),
(178, 197, 12),
(179, 197, 27),
(180, 197, 16),
(185, 6, 84),
(186, 6, 45),
(187, 6, 12),
(188, 6, 22),
(189, 6, 16),
(190, 46, 84),
(191, 46, 45),
(192, 46, 14),
(193, 46, 22),
(194, 46, 16),
(195, 44, 8),
(196, 44, 8),
(197, 44, 19),
(198, 52, 42),
(199, 52, 8),
(200, 52, 25),
(201, 52, 17),
(202, 53, 43),
(203, 53, 14),
(204, 53, 23),
(205, 53, 17),
(206, 58, 40),
(207, 58, 14),
(208, 58, 24),
(209, 58, 16),
(210, 61, 41),
(211, 61, 12),
(212, 61, 26),
(213, 61, 16),
(214, 62, 84),
(215, 62, 45),
(216, 62, 10),
(217, 62, 22),
(218, 62, 19),
(219, 107, 42),
(220, 107, 8),
(221, 107, 25),
(222, 107, 16),
(223, 111, 8),
(224, 111, 8),
(225, 111, 16),
(226, 112, 41),
(227, 112, 10),
(228, 112, 26),
(229, 112, 16),
(230, 113, 43),
(231, 113, 10),
(232, 113, 23),
(233, 113, 16),
(234, 114, 84),
(235, 114, 45),
(236, 114, 10),
(237, 114, 22),
(238, 114, 16),
(239, 115, 42),
(240, 115, 10),
(241, 115, 25),
(242, 115, 16),
(243, 116, 40),
(244, 116, 12),
(245, 116, 24),
(246, 116, 16),
(247, 10, 84),
(248, 10, 45),
(249, 10, 10),
(250, 10, 22),
(251, 10, 16),
(252, 120, 43),
(253, 120, 30),
(254, 120, 23),
(255, 120, 16),
(256, 121, 41),
(257, 121, 14),
(258, 121, 26),
(259, 121, 16),
(260, 136, 43),
(261, 136, 8),
(262, 136, 23),
(263, 136, 16),
(264, 174, 41),
(265, 174, 12),
(266, 174, 26),
(267, 174, 16),
(268, 175, 84),
(269, 175, 45),
(270, 175, 14),
(271, 175, 22),
(272, 175, 16),
(273, 176, 40),
(274, 176, 12),
(275, 176, 24),
(276, 176, 16),
(277, 182, 84),
(278, 182, 45),
(279, 182, 8),
(280, 182, 22),
(281, 182, 16),
(282, 180, 30),
(283, 180, 8),
(284, 180, 16),
(285, 181, 84),
(286, 181, 45),
(287, 181, 14),
(288, 181, 22),
(289, 181, 16),
(290, 183, 10),
(291, 183, 8),
(292, 183, 17),
(293, 184, 12),
(294, 184, 8),
(295, 184, 17),
(296, 185, 84),
(297, 185, 45),
(298, 185, 30),
(299, 185, 22),
(300, 185, 17),
(301, 186, 30),
(302, 186, 8),
(303, 186, 17),
(304, 187, 84),
(305, 187, 45),
(306, 187, 12),
(307, 187, 22),
(308, 187, 17),
(309, 188, 41),
(310, 188, 30),
(311, 188, 26),
(312, 188, 17),
(313, 189, 42),
(314, 189, 14),
(315, 189, 25),
(316, 189, 16),
(317, 190, 44),
(318, 190, 10),
(319, 190, 27),
(320, 190, 16),
(321, 8, 41),
(322, 8, 12),
(323, 8, 26),
(324, 8, 16),
(325, 9, 84),
(326, 9, 45),
(327, 9, 12),
(328, 9, 22),
(329, 9, 16),
(330, 7, 10),
(331, 7, 8),
(332, 7, 16),
(333, 2, 42),
(334, 2, 12),
(335, 2, 27),
(336, 2, 16),
(337, 3, 84),
(338, 3, 45),
(339, 3, 30),
(340, 3, 22),
(341, 3, 36),
(342, 4, 84),
(343, 4, 45),
(344, 4, 12),
(345, 4, 22),
(346, 4, 16),
(347, 5, 14),
(348, 5, 8),
(349, 5, 16),
(350, 199, 42),
(351, 199, 14),
(352, 199, 25),
(353, 199, 16),
(354, 261, 43),
(355, 261, 8),
(356, 261, 23),
(357, 261, 16),
(358, 207, 84),
(359, 207, 45),
(360, 207, 8),
(361, 207, 22),
(362, 207, 16),
(363, 208, 43),
(364, 208, 10),
(365, 208, 23),
(366, 208, 16),
(367, 204, 41),
(368, 204, 8),
(369, 204, 26),
(370, 204, 16),
(371, 205, 14),
(372, 205, 8),
(373, 205, 16),
(374, 206, 44),
(375, 206, 14),
(376, 206, 27),
(377, 206, 16),
(378, 209, 41),
(379, 209, 10),
(380, 209, 26),
(381, 209, 16),
(382, 210, 40),
(383, 210, 30),
(384, 210, 24),
(385, 210, 16),
(386, 213, 84),
(387, 213, 45),
(388, 213, 8),
(389, 213, 22),
(390, 213, 16),
(391, 214, 84),
(392, 214, 45),
(393, 214, 12),
(394, 214, 22),
(395, 214, 16),
(396, 215, 44),
(397, 215, 8),
(398, 215, 27),
(399, 215, 16),
(400, 216, 10),
(401, 216, 8),
(402, 216, 16),
(403, 217, 41),
(404, 217, 30),
(405, 217, 26),
(406, 217, 16),
(407, 218, 44),
(408, 218, 10),
(409, 218, 27),
(410, 218, 16),
(411, 223, 40),
(412, 223, 10),
(413, 223, 24),
(414, 223, 16),
(415, 224, 40),
(416, 224, 10),
(417, 224, 24),
(418, 224, 16),
(419, 225, 30),
(420, 225, 8),
(421, 225, 16),
(422, 226, 41),
(423, 226, 14),
(424, 226, 26),
(425, 226, 16),
(426, 227, 41),
(427, 227, 30),
(428, 227, 26),
(429, 227, 16),
(430, 228, 40),
(431, 228, 30),
(432, 228, 24),
(433, 228, 16),
(434, 229, 44),
(435, 229, 10),
(436, 229, 27),
(437, 229, 16),
(438, 230, 42),
(439, 230, 14),
(440, 230, 25),
(441, 230, 17),
(442, 234, 8),
(443, 234, 8),
(444, 234, 16),
(445, 235, 40),
(446, 235, 10),
(447, 235, 24),
(448, 235, 16),
(449, 236, 84),
(450, 236, 45),
(451, 236, 12),
(452, 236, 22),
(453, 236, 16),
(454, 237, 40),
(455, 237, 30),
(456, 237, 24),
(457, 237, 16),
(458, 238, 41),
(459, 238, 10),
(460, 238, 26),
(461, 238, 16),
(462, 239, 42),
(463, 239, 12),
(464, 239, 25),
(465, 239, 16),
(466, 240, 44),
(467, 240, 10),
(468, 240, 27),
(469, 240, 16);

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

--
-- Daten für Tabelle `planets`
--

INSERT INTO `planets` (`id`, `name`, `systemId`, `planetMoonId`, `portalCode`, `galacticAdress`, `biomeId`, `weatherId`, `resourcesId`, `sentinelId`, `floraId`, `faunaId`, `notes`) VALUES
(1, 'Sral IV', 1, NULL, NULL, NULL, NULL, 64, NULL, 4, 5, 1, ''),
(2, 'Hulmle Prime', 1, NULL, NULL, NULL, NULL, 176, NULL, 12, 2, 2, ''),
(3, 'Krods', 1, NULL, NULL, NULL, NULL, 242, NULL, 4, 11, 3, ''),
(4, 'Jiki Gamma', 1, NULL, NULL, NULL, NULL, 91, NULL, 7, 5, 4, ''),
(5, 'Pirussa', 1, NULL, NULL, '03B9:007A:0D78:0130', 1, 119, NULL, 8, 12, 5, 'EXIM:'),
(6, 'Sael Soloea', 5, NULL, NULL, NULL, 1, 39, NULL, 13, 1, 11, 'Alte Basis von Daniel'),
(7, 'Amumbway Gamma', 8, NULL, NULL, NULL, NULL, 163, NULL, 15, 15, 6, ''),
(8, 'Juneatre Modat', 8, 7, NULL, NULL, NULL, 25, NULL, 15, 3, 21, ''),
(9, 'Asus Alpha', 8, 7, NULL, NULL, NULL, 99, NULL, 15, 5, 7, ''),
(10, 'Sesa 93/M3', 43, NULL, NULL, NULL, NULL, 256, NULL, 14, 5, 11, ''),
(11, 'Arqeqch Delta', 5, NULL, NULL, NULL, NULL, 125, NULL, 6, 4, 9, ''),
(12, 'Eobushaft Aezaw', 5, NULL, NULL, NULL, NULL, 194, NULL, 8, 12, 7, ''),
(13, 'Unknown Planet', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(14, 'Unknown Planet', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(15, 'Unknown Planet', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(16, 'Unknown Planet', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(17, 'Unknown Planet', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(18, 'Itoya 17/T3', 19, NULL, NULL, NULL, NULL, 45, 3, 6, 12, 4, ''),
(19, 'Unknown Planet', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(20, 'Unknown Planet', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(21, 'Unknown Moon', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(22, 'Unknown Planet', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(23, 'Unknown Planet', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(24, 'Awest', 20, NULL, NULL, NULL, NULL, 181, NULL, 3, 4, 9, ''),
(25, 'Pirusse Enoh', 13, NULL, NULL, NULL, NULL, 150, NULL, 9, 9, 7, ''),
(26, 'Oddessap Beta', 13, NULL, NULL, NULL, NULL, 118, NULL, 14, 3, 5, ''),
(27, 'Etiadus', 13, NULL, NULL, NULL, NULL, 45, NULL, 10, 11, 10, ''),
(28, 'Unknown Planet', 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(29, 'Unknown Planet', 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(30, 'Unknown Planet', 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(31, 'Cravacl Delta', 21, NULL, NULL, NULL, NULL, 115, NULL, 8, 3, 4, ''),
(32, 'Unknown Planet', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(33, 'Unknown Planet', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(34, 'Unknown Planet', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(35, 'Unknown Moon', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(36, 'Unknown Moon', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(37, 'Anna 81/D2', 22, NULL, NULL, NULL, NULL, 22, NULL, 14, 21, 12, ''),
(38, 'Unknown Planet', 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(39, 'Unknown Planet', 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(40, 'Unknown Planet', 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(41, 'Unknown Planet', 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(42, 'Unknown Planet', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(43, 'Unknown Planet', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(44, 'Avre VII', 23, 42, NULL, NULL, NULL, 52, NULL, 10, 3, 13, ''),
(45, 'Unknown Moon', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(46, 'Itiasur', 24, NULL, NULL, NULL, NULL, 39, NULL, 13, 9, 5, ''),
(47, 'Unknown Planet', 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(48, 'Unknown Planet', 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(49, 'Unknown Planet', 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(50, 'Unknown Planet', 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(51, 'Unknown Planet', 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(52, 'Yehilustu', 25, NULL, NULL, NULL, NULL, 45, NULL, 11, 3, 7, ''),
(53, 'Inkircel Tateb', 25, NULL, NULL, NULL, NULL, 212, NULL, 11, 21, 9, ''),
(54, 'Unknown Planet', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(55, 'Unknown Planet', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(56, 'Unknown Planet', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(57, 'Unknown Planet', 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(58, 'Dicephyel P9', 26, NULL, NULL, NULL, NULL, 169, NULL, 10, 9, 4, ''),
(59, 'Unknown Planet', 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(60, 'Unknown Planet', 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(61, 'Banockap', 27, NULL, NULL, NULL, NULL, 185, NULL, 7, 5, 10, ''),
(62, 'Hawest', 28, NULL, NULL, NULL, NULL, 177, NULL, 8, 5, 4, ''),
(63, 'Unknown Planet', 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(64, 'Unknown Planet', 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(65, 'Unknown Planet', 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(66, 'Unknown Planet', 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(67, 'Unknown Planet', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(68, 'Unknown Planet', 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(69, 'Unknown Planet', 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(70, 'Unknown Planet', 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(71, 'Unknown Planet', 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(72, 'Unknown Moon', 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(73, 'Unknown Moon', 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(74, 'Unknown Planet', 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(75, 'Unknown Planet', 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(76, 'Unknown Planet', 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(77, 'Unknown Planet', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(78, 'Unknown Planet', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(79, 'Unknown Planet', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(80, 'Unknown Planet', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(81, 'Unknown Moon', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(82, 'Unknown Moon', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(83, 'Unknown Planet', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(84, 'Unknown Planet', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(85, 'Unknown Moon', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(86, 'Unknown Moon', 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(87, 'Unknown Planet', 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(88, 'Unknown Planet', 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(89, 'Unknown Planet', 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(90, 'Unknown Planet', 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(91, 'Unknown Moon', 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(92, 'Unknown Moon', 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(93, 'Unknown Planet', 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(94, 'Unknown Planet', 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(95, 'Unknown Planet', 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(96, 'Unknown Moon', 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(97, 'Unknown Planet', 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(98, 'Unknown Planet', 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(99, 'Unknown Planet', 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(100, 'Unknown Planet', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(101, 'Unknown Planet', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(102, 'Unknown Planet', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(103, 'Unknown Planet', 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(104, 'Unknown Planet', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(105, 'Unknown Planet', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(106, 'Unknown Planet', 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(107, 'Didonerig', 41, NULL, NULL, NULL, NULL, 45, NULL, 12, 5, 14, ''),
(108, 'Unknown Planet', 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(109, 'Unknown Planet', 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(110, 'Unknown Moon', 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(111, 'Udiushu VII', 42, NULL, NULL, NULL, NULL, 163, NULL, 7, 15, 15, ''),
(112, 'Inos 95/S5', 42, NULL, NULL, NULL, NULL, 110, NULL, 2, 11, 3, ''),
(113, 'Uxtonoec', 42, NULL, NULL, NULL, NULL, 224, NULL, 12, 11, 11, ''),
(114, 'Aisyiphias Kiyo', 42, NULL, NULL, NULL, NULL, 162, NULL, 11, 21, 9, ''),
(115, 'Gazaz Zau', 42, NULL, NULL, NULL, NULL, 255, NULL, 8, 4, 4, ''),
(116, 'Tokeham III', 42, NULL, NULL, NULL, NULL, 192, NULL, 9, 5, 16, ''),
(117, 'Unknown Planet', 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(118, 'Unknown Planet', 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(119, 'Unknown Planet', 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(120, 'Rutwoodbur', 44, NULL, NULL, NULL, NULL, 41, NULL, 6, 24, 15, ''),
(121, 'Paseidi Delta', 45, NULL, NULL, NULL, NULL, 185, NULL, 7, 4, 16, ''),
(122, 'Unknown Planet', 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(123, 'Unknown Planet', 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(124, 'Nagelm', 47, NULL, NULL, NULL, NULL, 45, NULL, 15, 4, 5, ''),
(125, 'Unknown Planet', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(126, 'Unknown Moon', 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(127, 'Unknown Planet', 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(128, 'Unknown Planet', 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(129, 'Unknown Planet', 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(130, 'Unknown Planet', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(131, 'Unknown Planet', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(132, 'Unknown Planet', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(133, 'Unknown Planet', 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(134, 'Unknown Planet', 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(135, 'Unknown Planet', 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(136, 'Hailsud D12', 52, NULL, NULL, NULL, NULL, 153, NULL, 8, 11, 7, ''),
(137, 'Unknown Planet', 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(138, 'Unknown Planet', 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(139, 'Unknown Moon', 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(140, 'Unknown Planet', 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(141, 'Unknown Planet', 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(142, 'Unknown Planet', 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(143, 'Unknown Planet', 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(144, 'Unknown Moon', 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(145, 'Unknown Moon', 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(146, 'Unknown Planet', 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(147, 'Unknown Planet', 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(148, 'Unknown Planet', 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(149, 'Unknown Planet', 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(150, 'Unknown Planet', 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(151, 'Unknown Planet', 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(152, 'Unknown Planet', 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(153, 'Unknown Planet', 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(154, 'Unknown Planet', 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(155, 'Unknown Moon', 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(156, 'Unknown Planet', 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(157, 'Unknown Planet', 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(158, 'Unknown Planet', 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(159, 'Unknown Moon', 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(160, 'Unknown Planet', 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(161, 'Unknown Planet', 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(162, 'Unknown Planet', 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(163, 'Unknown Planet', 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(164, 'Unknown Planet', 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(165, 'Unknown Planet', 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(166, 'Unknown Planet', 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(167, 'Unknown Planet', 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(168, 'Unknown Moon', 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(169, 'Unknown Planet', 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(170, 'Unknown Planet', 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(171, 'Unknown Planet', 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(172, 'Unknown Moon', 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(173, 'Unknown Moon', 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(174, 'Negwol', 60, NULL, NULL, NULL, NULL, 156, NULL, 12, 3, 11, ''),
(175, 'Meph XVI', 60, NULL, NULL, NULL, NULL, 56, NULL, 8, 1, 5, ''),
(176, 'Tano', 60, NULL, NULL, NULL, NULL, 8, NULL, 9, 3, 7, ''),
(177, 'Unknown Planet', 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(178, 'Unknown Moon', 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(179, 'Unknown Moon', 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(180, 'New Ihullend', 61, NULL, NULL, NULL, NULL, 258, NULL, 9, 19, 17, ''),
(181, 'Estan XVI', 61, NULL, NULL, NULL, NULL, 162, NULL, 9, 11, 9, ''),
(182, 'Unwi Tau', 61, NULL, NULL, NULL, NULL, 235, NULL, 9, 7, 1, ''),
(183, 'Hima 32/D6', 62, NULL, NULL, NULL, NULL, 212, NULL, 8, 21, 11, ''),
(184, 'Lopall IX', 62, NULL, NULL, NULL, NULL, 33, NULL, 15, 5, 1, ''),
(185, 'Ibertone III', 62, NULL, NULL, NULL, NULL, 155, NULL, 8, 5, 18, ''),
(186, 'Buerquel', 62, NULL, NULL, NULL, NULL, 128, NULL, 12, 7, 19, ''),
(187, 'Sissour', 62, NULL, NULL, NULL, NULL, 240, NULL, 7, 21, 12, ''),
(188, 'Bukava Sigma', 62, NULL, NULL, NULL, NULL, 185, NULL, 2, 7, 5, ''),
(189, 'Esli', 63, NULL, NULL, NULL, NULL, 45, NULL, 7, 3, 20, ''),
(190, 'Lizabet S37', 64, NULL, NULL, NULL, NULL, 55, NULL, 15, 9, 21, ''),
(191, 'Unknown Planet', 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(192, 'Unknown Planet', 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(193, 'Unknown Planet', 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(194, 'Akryus IV', 65, NULL, NULL, NULL, NULL, 4, NULL, 6, 5, 7, ''),
(195, 'Randy R17', 65, NULL, NULL, NULL, NULL, 129, NULL, 8, 24, 18, ''),
(196, 'Enria 68/X1', 65, NULL, NULL, NULL, NULL, 41, NULL, 8, 22, 19, ''),
(197, 'Rasu 24/T7', 65, NULL, NULL, NULL, NULL, 230, NULL, 11, 4, 7, ''),
(198, 'Axosimor XVI', 65, NULL, NULL, NULL, NULL, 227, NULL, 13, 7, 8, ''),
(199, 'Roxan', 66, NULL, NULL, NULL, NULL, 45, NULL, 11, 11, 14, ''),
(200, 'Unknown Planet', 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(201, 'Unknown Planet', 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(202, 'Unknown Planet', 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(203, 'Unknown Planet', 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(204, 'Kasah 86/19', 67, NULL, NULL, NULL, NULL, 53, NULL, 7, 1, 8, ''),
(205, 'Minin G31', 67, NULL, NULL, NULL, NULL, 41, NULL, 12, 13, 19, ''),
(206, 'Tegea XiX', 67, NULL, NULL, NULL, NULL, 64, NULL, 13, 7, 1, ''),
(207, 'Nayungbir VIII', 67, NULL, NULL, NULL, NULL, 162, NULL, 1, 3, 1, ''),
(208, 'Folke Sigma', 67, NULL, NULL, NULL, NULL, 85, NULL, 11, 11, 1, ''),
(209, 'Vartonic Beta', 68, NULL, NULL, NULL, NULL, 190, NULL, 15, 3, 10, ''),
(210, 'Yalshar Tau', 68, NULL, NULL, NULL, NULL, 247, NULL, 9, 3, 4, ''),
(211, 'Unknown Planet', 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(212, 'Unknown Planet', 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(213, 'Lanoisein Hirak', 69, NULL, NULL, NULL, NULL, 192, NULL, 12, 11, 21, ''),
(214, 'Taha 74/V8', 69, NULL, NULL, NULL, NULL, 139, NULL, 13, 5, 5, ''),
(215, 'Limleig Major', 69, NULL, NULL, NULL, NULL, 234, NULL, 5, 3, 21, ''),
(216, 'Awtryk', 69, NULL, NULL, NULL, NULL, 2, NULL, 11, 6, 22, ''),
(217, 'Heim VI', 70, NULL, NULL, NULL, NULL, 121, NULL, 6, 12, 5, ''),
(218, 'Faelum Prime', 70, NULL, NULL, NULL, NULL, 1, NULL, 11, 7, 3, ''),
(219, 'Unknown Planet', 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(220, 'Unknown Planet', 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(221, 'Unknown Planet', 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(222, 'Unknown Moon', 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(223, 'Rusuanta Omega', 71, NULL, NULL, NULL, NULL, 33, NULL, 12, 5, 2, ''),
(224, 'Tagit', 72, NULL, NULL, NULL, NULL, 226, NULL, 12, 21, 7, ''),
(225, 'Noteinfro', 72, NULL, NULL, NULL, NULL, 184, NULL, 8, 24, 15, ''),
(226, 'Aygeshaxbir Noic', 72, NULL, NULL, NULL, NULL, 97, NULL, 2, 21, 4, ''),
(227, 'Folkeswo VII', 72, NULL, NULL, NULL, NULL, 223, NULL, 15, 9, 21, ''),
(228, 'Apandr', 72, NULL, NULL, NULL, NULL, 47, NULL, 15, 3, 11, ''),
(229, 'Yanai 53/E7', 72, NULL, NULL, NULL, NULL, 112, NULL, 11, 5, 23, ''),
(230, 'Inhamess Suno', 73, NULL, NULL, NULL, NULL, 167, NULL, 6, 11, 20, ''),
(231, 'Unknown Planet', 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(232, 'Unknown Moon', 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(233, 'Unknown Moon', 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(234, 'Onburgar Delta', 74, NULL, NULL, NULL, NULL, 41, NULL, 3, 19, 24, ''),
(235, 'Eotian Prime', 74, NULL, NULL, NULL, NULL, 227, NULL, 1, 9, 7, ''),
(236, 'Emondermou Zuho', 74, NULL, NULL, NULL, NULL, 26, NULL, 13, 1, 5, ''),
(237, 'Sraelet Omega', 74, 237, NULL, NULL, NULL, 34, NULL, 13, 12, 7, ''),
(238, 'New Urmuss', 74, NULL, NULL, NULL, NULL, 223, NULL, 2, 1, 20, ''),
(239, 'Audrei III', 75, NULL, NULL, NULL, NULL, 82, NULL, 6, 21, 5, ''),
(240, 'Atallin III', 76, NULL, NULL, NULL, NULL, 170, NULL, 2, 11, 4, ''),
(241, 'Unknown Planet', 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(242, 'Unknown Planet', 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(243, 'Unknown Planet', 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(244, 'Unknown Planet', 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(245, 'Unknown Planet', 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(246, 'Unknown Planet', 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(247, 'Unknown Planet', 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(248, 'Unknown Moon', 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(249, 'Unknown Planet', 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(250, 'Unknown Planet', 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(251, 'Unknown Planet', 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(252, 'Unknown Planet', 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(253, 'Unknown Planet', 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(254, 'Unknown Moon', 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(255, 'Unknown Planet', 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(256, 'Unknown Planet', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(257, 'Unknown Planet', 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(258, 'Unknown Planet', 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(259, 'Unknown Planet', 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(260, 'Unknown Planet', 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(261, 'Abde', 67, NULL, NULL, NULL, NULL, 172, NULL, 9, 21, 5, '');

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
  `name` varchar(42) NOT NULL,
  `german` varchar(42) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `galaxyId` int(11) NOT NULL,
  `lifeformId` int(11) DEFAULT NULL,
  `economyId` int(11) DEFAULT NULL,
  `wealthId` int(11) DEFAULT NULL,
  `conflictId` int(11) DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Daten für Tabelle `systems`
--

INSERT INTO `systems` (`id`, `name`, `galaxyId`, `lifeformId`, `economyId`, `wealthId`, `conflictId`, `notes`) VALUES
(1, 'Sugino-Hor', 1, 1, 23, 2, 12, NULL),
(5, 'Peporoza', 1, 3, 8, 9, 21, NULL),
(6, 'Dateba-Raysk', 1, 3, 13, 11, 28, NULL),
(8, 'Biazykett XI', 1, 2, 25, 24, 28, NULL),
(13, 'Upadat-Afo', 1, 2, 10, 8, 17, NULL),
(18, 'Misuma X', 1, 2, 22, 14, 29, NULL),
(19, 'Unabea', 1, 3, 4, 16, NULL, NULL),
(20, 'Ezakiz III', 1, 1, 7, 13, 19, NULL),
(21, 'Kitusse-Neyag', 1, 3, 22, 14, 23, NULL),
(22, 'Esingsos VIII', 1, 3, 27, 13, 22, NULL),
(23, 'Pibevatness', 1, 1, 7, 19, 22, NULL),
(24, 'Elmikr-Shvil', 1, 2, 27, 2, 27, NULL),
(25, 'Litraka', 1, 1, 24, 9, 26, NULL),
(26, 'Rohedvi-Let V', 1, 1, 11, 13, 19, NULL),
(27, 'Sthank XIX', 1, 2, 22, 12, 1, NULL),
(28, 'Uralsky-Ioud', 1, 2, 9, 6, NULL, NULL),
(29, 'Ukhlad-Vilh III', 1, 1, 15, 2, 24, NULL),
(30, 'Exeyevo', 1, 2, 22, 12, 13, NULL),
(31, 'Ervoura I', 1, 3, 17, 10, 2, NULL),
(32, 'Ayganinow VIII', 1, 3, 25, 10, 2, NULL),
(33, 'Itsivo', 1, 3, 17, 10, 7, NULL),
(34, 'Zepetu I', 1, 1, 1, 11, 4, NULL),
(35, 'Urgatsiv VII', 1, 4, 29, NULL, 31, NULL),
(36, 'Michinov', 1, 1, 27, 15, 24, NULL),
(37, 'Monovoro', 1, 1, 21, 6, 15, NULL),
(38, 'Kotdoss-Ramen XV', 1, 2, 25, 4, 23, NULL),
(39, 'Ejneraise', 1, 1, 23, 13, 6, NULL),
(40, 'Asennes', 1, 2, 2, 1, 5, NULL),
(41, 'Enbrug', 1, 3, 18, 12, 13, NULL),
(42, 'Ufsluf VIII', 1, 1, 3, 13, 22, NULL),
(43, 'Uutostj-Oyu', 1, 1, 6, 12, 13, NULL),
(44, 'Keyazyva', 1, 3, 11, 15, 12, NULL),
(45, 'Pravits-Esoza VII', 1, 3, 15, 15, 12, NULL),
(46, 'Ergoff-Nuqab XV', 1, 2, 3, 13, 19, NULL),
(47, 'Rudatouso', 1, 2, 5, 10, 15, NULL),
(48, 'Iearkr-Lux', 1, 1, 5, 23, 15, NULL),
(49, 'Cedomi-Gaok', 1, 1, 22, 12, 30, NULL),
(50, 'Erimant', 1, 1, 22, 12, 13, NULL),
(51, 'Veyucha XVI', 1, 2, 19, 2, 27, NULL),
(52, 'Dabash', 1, 1, 4, 16, 18, NULL),
(53, 'Tanssipp XVI', 1, 3, 4, 5, 26, NULL),
(54, 'Arknina', 1, 2, 21, 11, 4, NULL),
(55, 'Miehbo-Les', 1, 1, 11, 2, 12, NULL),
(56, 'Yuzhis-Ufar', 1, 1, 21, 4, 25, NULL),
(57, 'Kurashi-Imeji', 1, 3, 6, 1, 13, NULL),
(58, 'Ouchuo-Kitsu', 1, 3, 18, 14, 17, NULL),
(59, 'Sadennon X', 1, 1, 21, 24, 14, NULL),
(60, 'Aykanaf-Orenc', 1, 3, 14, 12, 13, NULL),
(61, 'Koponen', 1, 2, 21, 9, 16, NULL),
(62, 'Telichu', 1, 4, 29, NULL, 31, NULL),
(63, 'Ideter-Eggyo', 1, 3, 15, 3, 6, NULL),
(64, 'Sispolov', 1, 1, 20, 16, 8, NULL),
(65, 'Voboda', 1, 1, 6, 18, 1, NULL),
(66, 'Nielde-Logang III', 1, 2, 3, 3, 19, NULL),
(67, 'Oblaga XI', 1, 2, 9, 4, 25, NULL),
(68, 'Umuhlau', 1, 2, 23, 19, 19, NULL),
(69, 'Gittelfo VII', 1, 2, 9, 11, 4, NULL),
(70, 'Tezesikoi V', 1, 3, 24, 16, 9, NULL),
(71, 'Bojawa', 1, 1, 27, 2, 8, NULL),
(72, 'Beyther-Eto III', 1, 1, 3, 3, 6, NULL),
(73, 'Erongs-Iri IX', 1, 4, 29, NULL, 31, NULL),
(74, 'Alutov', 1, 1, 16, 9, 21, NULL),
(75, 'Lutwhit-Snoza', 1, 3, 14, 1, 30, NULL),
(76, 'Liaiuts-Kine', 1, 1, 19, 15, 8, NULL),
(77, 'Dihlekka', 1, 3, 8, 7, 26, NULL),
(78, 'Famisfil X', 1, 1, 18, 12, 30, NULL),
(79, 'Hirutada', 1, 1, 1, 11, 28, NULL),
(80, 'Rucest-Daas XII', 1, 1, 28, 16, 9, NULL),
(81, 'Sigileg', 1, 1, 22, 12, 13, NULL);

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

--
-- Daten für Tabelle `wealth`
--

INSERT INTO `wealth` (`id`, `name`, `german`, `wealth`) VALUES
(1, 'Declining', 'Abnehmend', 'low'),
(2, 'Destitute', 'Mittellos', 'low'),
(3, 'Failing', 'Scheiternd', 'low'),
(4, 'Fledgling', 'Unerfahren', 'low'),
(5, 'Low supply', 'Geringe Versorgung', 'low'),
(6, 'Struggling', 'Mühevoll', 'low'),
(7, 'Unsuccessful', 'Erfolglos', 'low'),
(8, 'Unpromising', 'Aussichtslos', 'low'),
(9, 'Adequate', 'Angemessen', 'medium'),
(10, 'Balanced', 'Ausgeglichen', 'medium'),
(11, 'Comfortable', 'Komfortabel', 'medium'),
(12, 'Developing', 'In Entwicklung', 'medium'),
(13, 'Medium Supply', 'Mittlere Versorgung', 'medium'),
(14, 'Promising', 'Erfolgversprechend', 'medium'),
(15, 'Satisfactory', 'Zufriedenstellend', 'medium'),
(16, 'Sustainable', 'Nachhaltig', 'medium'),
(17, 'Advanced', '', 'high'),
(18, 'Affluent', 'Reich', 'high'),
(19, 'Booming', 'Boomend', 'high'),
(20, 'Flourishing', 'Florierend', 'high'),
(21, 'High Supply', '', 'high'),
(22, 'Opulent', '', 'high'),
(23, 'Prosperous', 'Gedeihend', 'high'),
(24, 'Wealthy', 'Wohlhabend', 'high');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=470;

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
