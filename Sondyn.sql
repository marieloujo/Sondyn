-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : sam. 05 déc. 2020 à 15:58
-- Version du serveur :  10.4.16-MariaDB
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Sondyn`
--

-- --------------------------------------------------------

--
-- Structure de la table `answers`
--

CREATE TABLE `answers` (
  `id` int(5) NOT NULL,
  `libelle` text NOT NULL,
  `idQuiz` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `answers`
--

INSERT INTO `answers` (`id`, `libelle`, `idQuiz`) VALUES
(1, 'Oui', 1),
(2, 'Non', 1);

-- --------------------------------------------------------

--
-- Structure de la table `participer`
--

CREATE TABLE `participer` (
  `id` int(5) NOT NULL,
  `idSondage` int(5) NOT NULL,
  `idUser` int(5) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `Questionnaire`
--

CREATE TABLE `Questionnaire` (
  `id` int(5) NOT NULL,
  `idSondage` int(5) NOT NULL,
  `libelle` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Questionnaire`
--

INSERT INTO `Questionnaire` (`id`, `idSondage`, `libelle`) VALUES
(1, 1, 'Aimez-vous les boissons sucrées ? '),
(2, 1, ' Lorem ipsum dolor sit amet, consectetur adipisicing elit.');

-- --------------------------------------------------------

--
-- Structure de la table `Sondage`
--

CREATE TABLE `Sondage` (
  `id` int(5) NOT NULL,
  `libelle` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `openDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `closeDate` timestamp NULL DEFAULT NULL,
  `tailleEchantillon` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Sondage`
--

INSERT INTO `Sondage` (`id`, `libelle`, `description`, `openDate`, `closeDate`, `tailleEchantillon`) VALUES
(1, NULL, NULL, '2020-12-05 10:40:43', '2020-12-31 10:40:43', 100);

-- --------------------------------------------------------

--
-- Structure de la table `Users`
--

CREATE TABLE `Users` (
  `id` int(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int(5) DEFAULT NULL,
  `sexe` varchar(10) DEFAULT NULL,
  `email` text NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Users`
--

INSERT INTO `Users` (`id`, `name`, `age`, `sexe`, `email`, `password`) VALUES
(1, 'Joan', NULL, NULL, 'detchenoujoan@gmail.com', 'joJO'),
(2, 'Choupi', NULL, NULL, 'choupinan@gmail.com', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_foreign_quiz` (`idQuiz`);

--
-- Index pour la table `participer`
--
ALTER TABLE `participer`
  ADD PRIMARY KEY (`id`,`idSondage`,`idUser`),
  ADD KEY `fk_foreign_key_participer_sondage` (`idSondage`),
  ADD KEY `fk_foreign_key_user` (`idUser`);

--
-- Index pour la table `Questionnaire`
--
ALTER TABLE `Questionnaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_foreign_sondage` (`idSondage`);

--
-- Index pour la table `Sondage`
--
ALTER TABLE `Sondage`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `participer`
--
ALTER TABLE `participer`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Questionnaire`
--
ALTER TABLE `Questionnaire`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `Sondage`
--
ALTER TABLE `Sondage`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `fk_foreign_quiz` FOREIGN KEY (`idQuiz`) REFERENCES `Questionnaire` (`id`);

--
-- Contraintes pour la table `participer`
--
ALTER TABLE `participer`
  ADD CONSTRAINT `fk_foreign_key_participer_sondage` FOREIGN KEY (`idSondage`) REFERENCES `Sondage` (`id`),
  ADD CONSTRAINT `fk_foreign_key_user` FOREIGN KEY (`idUser`) REFERENCES `Users` (`id`);

--
-- Contraintes pour la table `Questionnaire`
--
ALTER TABLE `Questionnaire`
  ADD CONSTRAINT `fk_foreign_sondage` FOREIGN KEY (`idSondage`) REFERENCES `Sondage` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
