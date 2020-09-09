-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2020 at 02:23 PM
-- Server version: 8.0.20-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wallets`
--

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int NOT NULL,
  `owner` varchar(99) NOT NULL,
  `repo` varchar(99) NOT NULL,
  `tag` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `owner`, `repo`, `tag`) VALUES
(1, 'PIVX-Project', 'PIVX', 'v4.1.1'),
(3, 'altbet', 'abet', 'v3.4.1.0'),
(5, 'ALQO-Universe', 'ALQO', 'v6.4.0.0-7d5f56499'),
(6, 'axelnetwork', 'AXEL', 'v1.2.3'),
(7, 'beaconcrypto', 'beacon', '6054d89'),
(8, 'birake', 'birakecoin', 'v3.0.0'),
(9, 'bitgreen', 'bitgreen', 'v1.5.0.1'),
(10, 'blocknodetech', 'blocknode', 'v1.5.2'),
(11, 'BITC2', 'bitcoin2', '2.2.3'),
(13, 'CCYofficial', 'CCY', '1.2.1.0'),
(14, 'Centexio', 'Centex', 'v1.0.2'),
(15, 'ColossusCoinXT', 'ColossusCoinXT', 'v1.2.4'),
(16, 'Crowndev', 'crown-core', 'v0.14.0.1-Emerald'),
(17, 'DAPSCoin', 'bDAPSCoin', '1.0.6.6'),
(18, 'DashDiamond', 'DASHD', 'Mac-V1'),
(19, 'DashGreenCoin', 'dashgreen', 'v1.0'),
(20, 'Deviantcoin', 'Source', '4.0.0.0'),
(21, 'Krekeler', 'documentchain', 'v0.12.15.0'),
(22, 'duality-solutions', 'Dynamic', 'v2.4.4.1'),
(23, 'BlockchainFor', 'ESBC2', '2.1.0.2'),
(24, 'EVOS-DEV', 'evos-core', 'v1.1.5'),
(25, 'NewCapital', 'FIX-Core', 'fix_v3.3.8.1'),
(26, 'Function-Coin', 'FUNC', 'v1.0.4'),
(27, 'Fydcoin', 'FYDCoin', 'V2.0.0'),
(28, 'Galilel-Project', 'galilel', 'v3.4.0'),
(30, 'gobytecoin', 'gobyte', 'v0.12.2.4'),
(31, 'GiantPay', 'GiantCore', '1.4.1'),
(32, 'GIN-coin', 'gincoin-core', 'v1.3.0.0'),
(33, 'genterium-project', 'gentarium-2.0', 'v2.3.0'),
(34, 'IndexChain', 'Index', 'v0.13.10.6'),
(35, 'KnoxFS', 'kfx-wallet', '3.2.0'),
(36, 'kalkulusteam', 'kks', 'v2.8.0'),
(37, 'klimatas', 'klimatas-core', '1.3.4'),
(38, 'livenodescoin', 'livenodes', 'v3.3.5'),
(39, 'scryptachain', 'scrypta', 'v1.1.0'),
(40, 'MerakiCore', 'meraki', '1.2.3'),
(41, 'mikeifomin', 'midas_coin', 'v1.3.0'),
(42, 'MONKEYPROJECT', 'MonkeyV2', 'v2.3.1'),
(43, 'Master-Win', 'MasterWin', 'v2.0'),
(44, 'NetboxGlobal', 'Netbox.Wallet', 'v3.4.0.3'),
(45, 'News24coin', 'news24coin', '1.2'),
(46, '99Masternodes', 'NMN', 'v1.2.0.0'),
(47, 'northern-community', 'Northern', '3.3.1'),
(48, 'zealiumcoin', 'Zealium', 'v1.0.1.2'),
(49, 'oneexbit', 'onex-core', 'v2.2.1'),
(50, 'OneWorldCoin', 'OneWorld', 'v3.0.0'),
(51, 'PACGlobalOfficial', 'PAC', 'v0.15-da839021c'),
(52, 'phoreproject', 'Phore', 'v1.6.4'),
(53, 'PeonyTeam', 'peony', 'v3.0.2'),
(54, 'polispay', 'polis', 'v1.6.3'),
(55, 'quishtv', 'QUISH', '1.0.0.0'),
(56, 'QuotationCoin', 'QUOT-Coin', 'v.1.2-rev2'),
(57, 'reecore-coin', 'Reex', 'v1.4.2.2'),
(58, 'sappcoin-com', 'SAPP', '1.3.2'),
(59, 'SafeCapital', 'scap-coin', 'v1.0.0.5'),
(60, 'stakecube', 'StakeCubeCoin', 'v1.3.1.0'),
(61, 'simulacrum-trade', 'simulacrum', 'v1.2.0'),
(62, 'SocialSend', 'SocialSend', '1.2.0.5'),
(63, 'SkyHuBs', 'skyhub', 'v1.1'),
(64, 'SafeInsure', 'sins-coin', 'v1.0.0.11'),
(65, 'SmartCash', 'Core-Smart', 'v1.2.8'),
(66, 'Stipend-Developer', 'stipend', '5.1.0.1'),
(67, 'SPDR-Core', 'spdr', '1.2.0.0'),
(68, 'sparkspay', 'sparks', 'v0.12.4.3'),
(69, 'StreamitCoin', 'StreamitCoin', 'v1.0.1.0'),
(70, 'syscoin', 'syscoin', 'v4.1.3'),
(71, 'phoenixkonsole', 'transcendence', '2.1.0.0b'),
(72, 'tensor-services', 'TensorCoin', '1.0.0'),
(73, 'TRBO-Coin', 'Wallet', 'v1.2'),
(74, 'RavenProject', 'Ravencoin', 'v4.1.0'),
(75, 'trendo-dev', 'trendo', '1.2.0'),
(76, 'NewCapital', 'TWINS-Core', 'twins_v3.3.8.2'),
(77, 'wagerr', 'wagerr', 'v3.1.0'),
(78, 'ZENZO-Ecosystem', 'ZENZO-Core', 'v1.3.0'),
(79, 'XBIncognito', 'xbi-4.3.2.1', '4.4.0'),
(80, 'axanthics', 'xcz', 'v1.0.0'),
(81, 'DigitalNoteXDN', 'DigitalNote-2', 'v1.0.2.5'),
(82, 'XDNA-Core', 'XDNA', 'v2.1.0.0'),
(83, 'genesis-x', 'genesis-x', '1.4.0'),
(84, 'experience-points-development', 'eXperience-Points', 'v3.4.0.3'),
(85, 'myceworld', 'myce', 'v3.0.2.0'),
(86, 'zelcash', 'zelcash', 'v4.0.1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
