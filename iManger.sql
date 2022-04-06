-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 06 avr. 2022 à 09:50
-- Version du serveur : 5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `iManger`
--

-- --------------------------------------------------------

--
-- Structure de la table `Aliments`
--

CREATE TABLE `Aliments` (
  `ID_aliment` int(200) NOT NULL,
  `nom` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Calorie` varchar(10) NOT NULL,
  `Lipide` varchar(10) NOT NULL,
  `Glucide` varchar(10) NOT NULL,
  `Fibre` varchar(10) NOT NULL,
  `Proteine` varchar(10) NOT NULL,
  `ID_granularité` int(200) DEFAULT NULL,
  `ID_type` int(200) DEFAULT NULL,
  `ID_rep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Aliments`
--

INSERT INTO `Aliments` (`ID_aliment`, `nom`, `Calorie`, `Lipide`, `Glucide`, `Fibre`, `Proteine`, `ID_granularité`, `ID_type`, `ID_rep`) VALUES
(1, 'carotte', '0', '0', '0', '0', '0', NULL, 2, 0),
(11, 'banane', '10', '10', '10', '10', '', NULL, NULL, 0),
(12, '', '', '', '', '', '', NULL, NULL, 0),
(13, 'Tajine', '76', '76', '98', '34', '', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `composer`
--

CREATE TABLE `composer` (
  `ID_compo` int(11) NOT NULL,
  `ID_recette` int(200) NOT NULL,
  `ID_repas` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Consommer`
--

CREATE TABLE `Consommer` (
  `ID_personne` int(200) NOT NULL,
  `ID_aliment` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Granularite`
--

CREATE TABLE `Granularite` (
  `ID_granularité` int(200) NOT NULL,
  `libellé` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Granularite`
--

INSERT INTO `Granularite` (`ID_granularité`, `libellé`) VALUES
(1, 'Calorie'),
(2, 'Lipide'),
(3, 'Glucide'),
(4, 'Fibre'),
(6, 'Proteine');

-- --------------------------------------------------------

--
-- Structure de la table `Niveau_pratique_sportive`
--

CREATE TABLE `Niveau_pratique_sportive` (
  `ID_sport` int(200) NOT NULL,
  `libellé` varchar(15) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Niveau_pratique_sportive`
--

INSERT INTO `Niveau_pratique_sportive` (`ID_sport`, `libellé`) VALUES
(1, 'Novice '),
(2, 'Intermédiaire'),
(3, 'Expert');

-- --------------------------------------------------------

--
-- Structure de la table `Recette`
--

CREATE TABLE `Recette` (
  `ID_recette` int(200) NOT NULL,
  `Libellé` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ratio` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Repas`
--

CREATE TABLE `Repas` (
  `ID_repas` int(200) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `heure` time NOT NULL,
  `quantite` int(10) NOT NULL,
  `ID_personne` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Type_aliments`
--

CREATE TABLE `Type_aliments` (
  `ID_type` int(200) NOT NULL,
  `libellé` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Type_aliments`
--

INSERT INTO `Type_aliments` (`ID_type`, `libellé`) VALUES
(1, 'Fruit'),
(2, 'Légume'),
(3, 'Produit_transformé'),
(4, 'Viande'),
(5, 'Poisson');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `ID_personne` int(200) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `mail` text NOT NULL,
  `gender` varchar(10) NOT NULL,
  `lastName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `firstName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `age` int(3) NOT NULL,
  `niveau_sport` varchar(10) NOT NULL,
  `ID_sport` int(4) DEFAULT NULL,
  `ID_sexe` int(2) DEFAULT NULL,
  `ID_repas` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`ID_personne`, `username`, `password`, `mail`, `gender`, `lastName`, `firstName`, `age`, `niveau_sport`, `ID_sport`, `ID_sexe`, `ID_repas`) VALUES
(33, 'sa', 'c12e01f2a13ff5587e1e9e4aedb8242d', '', 'Homme', 'l', 'ok', 21, 'bas', NULL, NULL, NULL),
(34, 'sa', 'c12e01f2a13ff5587e1e9e4aedb8242d', '', 'Homme', 'l', 'ok', 21, 'bas', NULL, NULL, NULL),
(35, 'sa', 'c12e01f2a13ff5587e1e9e4aedb8242d', '', 'Homme', 'l', 'ok', 21, 'bas', NULL, NULL, NULL),
(36, 'lucasarib', '1a6bbd5fff497545cca0cbbb436bb7df', '', 'Homme', 'arib', 'lucaq', 21, 'bas', NULL, NULL, NULL),
(38, 'Hawski', '25d55ad283aa400af464c76d713c07ad', 'haha@gmail.com', 'Homme', 'HEBBOUL', 'Hatim', 24, 'moyen', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Utiliser`
--

CREATE TABLE `Utiliser` (
  `ID_aliment` int(200) NOT NULL,
  `ID_recette` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Aliments`
--
ALTER TABLE `Aliments`
  ADD PRIMARY KEY (`ID_aliment`),
  ADD KEY `Spécifier` (`ID_type`),
  ADD KEY `ID_granularité` (`ID_granularité`),
  ADD KEY `ID_aliment` (`ID_aliment`,`ID_granularité`,`ID_type`);

--
-- Index pour la table `composer`
--
ALTER TABLE `composer`
  ADD PRIMARY KEY (`ID_compo`),
  ADD KEY `Composer` (`ID_repas`),
  ADD KEY `Composer1` (`ID_recette`);

--
-- Index pour la table `Consommer`
--
ALTER TABLE `Consommer`
  ADD KEY `Consommer` (`ID_personne`),
  ADD KEY `Consommer1` (`ID_aliment`);

--
-- Index pour la table `Granularite`
--
ALTER TABLE `Granularite`
  ADD PRIMARY KEY (`ID_granularité`);

--
-- Index pour la table `Niveau_pratique_sportive`
--
ALTER TABLE `Niveau_pratique_sportive`
  ADD PRIMARY KEY (`ID_sport`);

--
-- Index pour la table `Recette`
--
ALTER TABLE `Recette`
  ADD PRIMARY KEY (`ID_recette`);

--
-- Index pour la table `Repas`
--
ALTER TABLE `Repas`
  ADD PRIMARY KEY (`ID_repas`),
  ADD KEY `Manger` (`ID_personne`);

--
-- Index pour la table `Type_aliments`
--
ALTER TABLE `Type_aliments`
  ADD PRIMARY KEY (`ID_type`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID_personne`),
  ADD KEY `Manger` (`ID_repas`);

--
-- Index pour la table `Utiliser`
--
ALTER TABLE `Utiliser`
  ADD KEY `Utiliser` (`ID_aliment`),
  ADD KEY `Utiliser1` (`ID_recette`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Aliments`
--
ALTER TABLE `Aliments`
  MODIFY `ID_aliment` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `composer`
--
ALTER TABLE `composer`
  MODIFY `ID_compo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Granularite`
--
ALTER TABLE `Granularite`
  MODIFY `ID_granularité` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `Niveau_pratique_sportive`
--
ALTER TABLE `Niveau_pratique_sportive`
  MODIFY `ID_sport` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Recette`
--
ALTER TABLE `Recette`
  MODIFY `ID_recette` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Repas`
--
ALTER TABLE `Repas`
  MODIFY `ID_repas` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Type_aliments`
--
ALTER TABLE `Type_aliments`
  MODIFY `ID_type` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `ID_personne` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `composer`
--
ALTER TABLE `composer`
  ADD CONSTRAINT `Composer` FOREIGN KEY (`ID_repas`) REFERENCES `Repas` (`ID_repas`),
  ADD CONSTRAINT `Composer1` FOREIGN KEY (`ID_recette`) REFERENCES `Recette` (`ID_recette`);

--
-- Contraintes pour la table `Consommer`
--
ALTER TABLE `Consommer`
  ADD CONSTRAINT `Consommer` FOREIGN KEY (`ID_personne`) REFERENCES `user` (`ID_personne`),
  ADD CONSTRAINT `Consommer1` FOREIGN KEY (`ID_aliment`) REFERENCES `Aliments` (`ID_aliment`);

--
-- Contraintes pour la table `Utiliser`
--
ALTER TABLE `Utiliser`
  ADD CONSTRAINT `Utiliser` FOREIGN KEY (`ID_aliment`) REFERENCES `Aliments` (`ID_aliment`),
  ADD CONSTRAINT `Utiliser1` FOREIGN KEY (`ID_recette`) REFERENCES `Recette` (`ID_recette`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
