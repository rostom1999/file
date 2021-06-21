-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2021 at 10:37 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databasephp`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `idA` int(11) NOT NULL,
  `titre` varchar(120) NOT NULL,
  `nomAuteur` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `dateA` date NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`idA`, `titre`, `nomAuteur`, `description`, `dateA`, `image`) VALUES
(89, 'Collectionneur d’Art : 6 profils types', 'Agnès Foissac', 'LSpéculateur glacé ou accumulateur compulsif, découvreur de talents génial ou mécène providentiel : le Collectionneur d’art contemporain ne laisse personne indifférent ! Mais qui est-il vraiment ? Le bazar culturel dresse un portrait de 6 profils de Collectionneurs aussi passionnants les uns que les autres. Et vous, quel type de Collectionneur d’Art êtes-vous ? >Pour Cyril Mercier*, auteur d’une thèse sur les Collectionneurs d’Art contemporain, certains fonctionnent en effet sur un mode.', '2021-05-04', 'blog2.jpg'),
(90, 'L’Œuvre à la loupe:«La Nuit étoilée»de Van Gogh', 'Cécile Martet', 'Le 30 mars 1853 naissait Vincent Van Gogh aux Pays-Bas. Plus d’un siècle et demi plus tard, Le bazar culturel rend hommage à l’un des plus grands peintres néerlandais dans un nouveau numéro de L’Œuvre à la loupe ! Lumière sur l’histoire et la symbolique de l’une des…', '2021-05-06', 'blog1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `id` int(10) NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`id`, `name`) VALUES
(55, 'bb king'),
(123, 'eric clapt'),
(852, 'pink floyd');

-- --------------------------------------------------------

--
-- Table structure for table `attente`
--

CREATE TABLE `attente` (
  `REFERENCE` int(11) NOT NULL,
  `NOM` varchar(50) NOT NULL,
  `PRIX` int(11) NOT NULL,
  `IMAGE` varchar(150) NOT NULL,
  `DATE` date NOT NULL,
  `QTE` int(11) NOT NULL,
  `DESC` varchar(150) NOT NULL,
  `CATEGORIE` varchar(30) NOT NULL,
  `USER` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `attentea`
--

CREATE TABLE `attentea` (
  `idA` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `nomAuteur` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `dateA` date NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CODE` int(12) NOT NULL,
  `NOM` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CODE`, `NOM`) VALUES
(10, 'Livres'),
(11, 'Instruments'),
(12, 'ART'),
(13, ' celine');

-- --------------------------------------------------------

--
-- Table structure for table `commentaire`
--

CREATE TABLE `commentaire` (
  `idCom` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `message` varchar(150) NOT NULL,
  `idA` int(11) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `event2`
--

CREATE TABLE `event2` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` varchar(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event2`
--

INSERT INTO `event2` (`id`, `name`, `location`, `start_date`, `end_date`, `description`, `image`, `id_user`, `price`) VALUES
(43, 'celine', 'nabeul', '2021-05-16', '2021-05-22', ' kkkkkkkkkkkkkkkkkkkkk', 'blog2.jpg', 0, 250);

-- --------------------------------------------------------

--
-- Table structure for table `favoris`
--

CREATE TABLE `favoris` (
  `id` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `date` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favoris`
--

INSERT INTO `favoris` (`id`, `id_produit`, `date`, `id_user`) VALUES
(33, 3, '2021-05-05', 52),
(34, 3, '2021-05-11', 52),
(35, 14, '2021-05-19', 63),
(36, 11, '2021-05-12', 63),
(37, 8, '2021-05-18', 63),
(38, 12, '2021-05-18', 63),
(39, 7, '2021-05-18', 63),
(40, 9, '2021-05-19', 63);

-- --------------------------------------------------------

--
-- Table structure for table `ftt`
--

CREATE TABLE `ftt` (
  `first` varchar(20) NOT NULL,
  `last` varchar(20) NOT NULL,
  `msg` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ftt`
--

INSERT INTO `ftt` (`first`, `last`, `msg`) VALUES
('1', '1', '1'),
('1', '2', '3'),
('1', '2', '3'),
('', '', ''),
('s', 't', ''),
('s', '2', 't'),
('<optimized out>', '', ''),
('G', 'O', 'D'),
('BABA', 'ROSTOM', '20/06/2021'),
('', '', ''),
('', '', ''),
('1', '1', ''),
('ross', 'ross', 'ross');

-- --------------------------------------------------------

--
-- Table structure for table `link_artist`
--

CREATE TABLE `link_artist` (
  `id` int(10) NOT NULL,
  `id_event` int(10) NOT NULL,
  `id_artist` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `link_artist`
--

INSERT INTO `link_artist` (`id`, `id_event`, `id_artist`) VALUES
(1, 87, 123),
(2, 87, 852),
(3, 87, 55),
(4, 22, 55),
(5, 22, 852),
(6, 22, 123),
(7, 80, 55),
(8, 80, 123),
(9, 80, 852),
(10, 56, 55),
(11, 56, 123),
(12, 56, 852),
(13, 96, 55),
(14, 96, 123),
(15, 96, 852),
(16, 54, 55),
(17, 54, 123),
(18, 54, 852),
(19, 47, 123),
(20, 47, 852),
(21, 47, 55),
(22, 58, 123),
(23, 58, 852),
(24, 58, 55),
(25, 43, 55),
(26, 43, 123),
(27, 43, 852);

-- --------------------------------------------------------

--
-- Table structure for table `link_sponsor`
--

CREATE TABLE `link_sponsor` (
  `id` int(10) NOT NULL,
  `id_event` int(20) NOT NULL,
  `id_spons` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `link_sponsor`
--

INSERT INTO `link_sponsor` (`id`, `id_event`, `id_spons`) VALUES
(49, 17, 8),
(50, 17, 52),
(51, 17, 265),
(52, 87, 7),
(53, 87, 1),
(54, 87, 8),
(55, 22, 7),
(56, 22, 8),
(57, 22, 9),
(58, 80, 7),
(59, 80, 8),
(60, 80, 9),
(61, 56, 7),
(62, 56, 8),
(63, 56, 9),
(64, 96, 7),
(65, 96, 8),
(66, 96, 9),
(67, 54, 7),
(68, 54, 8),
(69, 54, 9),
(70, 47, 1),
(71, 47, 7),
(72, 47, 8),
(73, 58, 1),
(74, 58, 7),
(75, 58, 8),
(76, 43, 1),
(77, 43, 7),
(78, 43, 8);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `mail` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`mail`, `pass`) VALUES
('ross', 'ross');

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE `msg` (
  `id_m` int(11) NOT NULL,
  `id_s` int(11) NOT NULL,
  `id_r` int(11) NOT NULL,
  `date` date NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notif`
--

CREATE TABLE `notif` (
  `id` int(11) NOT NULL,
  `id_h` int(11) NOT NULL,
  `id_v` int(11) NOT NULL,
  `date` varchar(40) NOT NULL,
  `msg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prix` int(11) NOT NULL,
  `date` date NOT NULL,
  `qte` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `desc` varchar(40) NOT NULL,
  `categorie` varchar(40) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produit`
--

INSERT INTO `produit` (`id`, `nom`, `prix`, `date`, `qte`, `img`, `desc`, `categorie`, `user`) VALUES
(3, 'aze', 77, '2021-05-04', 2, 'dhia.png', '5453', '545', 52),
(6, 'zae', 45, '2021-05-20', 2, 'images/1.jpg', '246', '554', 63),
(7, '878', 8787, '2021-05-19', 54, 'images/2.jpg', '2', '2', 63),
(8, '87', 78, '2021-05-12', 87, 'images/3.jpg', '54', '54', 63),
(9, '6556', 665, '2021-05-11', 465, 'images/4.jpg', '546', '654', 63),
(10, '7987', 544, '2021-05-13', 5454, 'images/5.jpg', '8787', '54', 63),
(11, '65', 98, '2021-05-19', 54, 'images/6.jpg', '645', '645', 63),
(12, '544', 54, '0000-00-00', 54, 'images/7.jpg', '87', '87', 63),
(13, '8787', 878, '2021-05-20', 45, 'images/8.jpg', '556', '664', 63),
(14, '65', 656, '2021-05-12', 6565, 'images/9.jpg', '54', '54', 63);

-- --------------------------------------------------------

--
-- Table structure for table `produits`
--

CREATE TABLE `produits` (
  `REFERENCE` int(12) NOT NULL,
  `NOM` varchar(150) NOT NULL,
  `PRIX` float NOT NULL,
  `DATE` date NOT NULL,
  `QTE` int(11) NOT NULL,
  `IMAGE` varchar(250) NOT NULL,
  `DESCP` varchar(250) NOT NULL,
  `CATEGORIE` int(11) NOT NULL,
  `USER` int(11) NOT NULL,
  `STATUE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produits`
--

INSERT INTO `produits` (`REFERENCE`, `NOM`, `PRIX`, `DATE`, `QTE`, `IMAGE`, `DESCP`, `CATEGORIE`, `USER`, `STATUE`) VALUES
(94, 'benbrahim', 500, '2021-05-16', 5, 'aaaa.png', ' ooooooo', 10, 52, 1);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `idPromo` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `dateD` date NOT NULL,
  `dateF` date NOT NULL,
  `pourcentage` int(11) NOT NULL,
  `idProduit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

CREATE TABLE `sponsor` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sponsor`
--

INSERT INTO `sponsor` (`id`, `name`, `description`, `image`) VALUES
(1, 'gggoiiizzz', 'kkkiiikkkkkzzz  ', 'logo-coca-cola.png'),
(7, 'fanta', 'azeazeazeabhzerf', 'eventt.jpg'),
(8, 'sprite', 'azeazegebdedfghegh', 'eventt.jpg'),
(9, 'mercedes', 'debhtbhrtgbrb', 'eventt.jpg'),
(10, 'volkswagen', 'azeebhrgtbhertb', 'eventt.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `star`
--

CREATE TABLE `star` (
  `id` int(11) NOT NULL,
  `id_h` int(11) NOT NULL,
  `id_v` int(11) NOT NULL,
  `valeur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `star`
--

INSERT INTO `star` (`id`, `id_h`, `id_v`, `valeur`) VALUES
(234, 63, 51, 5),
(246, 63, 63, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `NOM` varchar(20) NOT NULL,
  `TEL` int(11) NOT NULL,
  `ADRESSE` varchar(50) NOT NULL,
  `EMAIL` varchar(40) NOT NULL,
  `PASSE` varchar(40) NOT NULL,
  `SEX` varchar(10) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `DESCRIPTION` varchar(100) DEFAULT NULL,
  `IMG` varchar(100) NOT NULL,
  `BLOQUER` int(11) NOT NULL,
  `star` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `NOM`, `TEL`, `ADRESSE`, `EMAIL`, `PASSE`, `SEX`, `TYPE`, `DESCRIPTION`, `IMG`, `BLOQUER`, `star`) VALUES
(51, 'fire ', 3, 'klsqdlk', 'ros@gmail.com', 'd', 'male', 'Buyer', 'Buyer', 'dhia.png', 1, 0),
(52, '4', 1, '1    ', '2@gmail.com', '1    ', 'female', '1', 'TUNISIA', '1', 0, 0),
(63, 'rostom', 7, '7    ', 'rostom.charni@gmail.com', 'nourhen19    ', 'male', 'Buyer', '“Everything you can imagine is real.”\r\n  ', 'rostom.png', 0, 1),
(64, '7', 7, '7', '7@gmail.com', '7', 'female', 'Buyer', NULL, 'dhia.png', 0, 0),
(65, 'admin', 87, 'admin', 'admin@gmail.com', 'admin', 'male', '', NULL, 'dhia.png', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`idA`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attente`
--
ALTER TABLE `attente`
  ADD PRIMARY KEY (`REFERENCE`);

--
-- Indexes for table `attentea`
--
ALTER TABLE `attentea`
  ADD PRIMARY KEY (`idA`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CODE`);

--
-- Indexes for table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`idCom`),
  ADD KEY `idA` (`idA`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `event2`
--
ALTER TABLE `event2`
  ADD PRIMARY KEY (`id`,`start_date`,`end_date`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `favoris`
--
ALTER TABLE `favoris`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idp_idf` (`id_produit`),
  ADD KEY `fk_idu_idf` (`id_user`);

--
-- Indexes for table `link_artist`
--
ALTER TABLE `link_artist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link_sponsor`
--
ALTER TABLE `link_sponsor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_event` (`id_event`);

--
-- Indexes for table `msg`
--
ALTER TABLE `msg`
  ADD PRIMARY KEY (`id_m`),
  ADD KEY `fk_idu_ids` (`id_s`),
  ADD KEY `fk_idu_idr` (`id_r`);

--
-- Indexes for table `notif`
--
ALTER TABLE `notif`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idu_idh` (`id_h`),
  ADD KEY `idu_idv` (`id_v`);

--
-- Indexes for table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_idu_user` (`user`);

--
-- Indexes for table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`REFERENCE`),
  ADD KEY `USER` (`USER`),
  ADD KEY `CATEGORIE` (`CATEGORIE`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`idPromo`),
  ADD KEY `celine1` (`idProduit`);

--
-- Indexes for table `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`id`,`name`);

--
-- Indexes for table `star`
--
ALTER TABLE `star`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idu_idh` (`id_h`),
  ADD KEY `idu_idv` (`id_v`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favoris`
--
ALTER TABLE `favoris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `msg`
--
ALTER TABLE `msg`
  MODIFY `id_m` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT for table `notif`
--
ALTER TABLE `notif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `star`
--
ALTER TABLE `star`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favoris`
--
ALTER TABLE `favoris`
  ADD CONSTRAINT `favoris_ibfk_1` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id`),
  ADD CONSTRAINT `favoris_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`ID`);

--
-- Constraints for table `msg`
--
ALTER TABLE `msg`
  ADD CONSTRAINT `msg_ibfk_1` FOREIGN KEY (`id_r`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `msg_ibfk_2` FOREIGN KEY (`id_s`) REFERENCES `user` (`ID`);

--
-- Constraints for table `notif`
--
ALTER TABLE `notif`
  ADD CONSTRAINT `notif_ibfk_1` FOREIGN KEY (`id_h`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `notif_ibfk_2` FOREIGN KEY (`id_v`) REFERENCES `user` (`ID`);

--
-- Constraints for table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`ID`);

--
-- Constraints for table `star`
--
ALTER TABLE `star`
  ADD CONSTRAINT `star_ibfk_1` FOREIGN KEY (`id_h`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `star_ibfk_2` FOREIGN KEY (`id_v`) REFERENCES `user` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
