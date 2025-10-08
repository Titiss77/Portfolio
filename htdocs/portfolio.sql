-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 15 mai 2025 à 17:09
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `categoriesbloc1`
--

CREATE TABLE `categoriesbloc1` (
  `id` int(6) NOT NULL,
  `appellation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `categoriesbloc1`
--

INSERT INTO `categoriesbloc1` (`id`, `appellation`) VALUES
(1, '1.1 Gérer le patrimoine informatique'),
(2, '1.2 Répondre aux incidents et aux demandes d\'assistance et d\'évolution'),
(3, '1.3 Développer la présence en ligne de l\'organisation'),
(4, '1.4 Travailler en mode projet'),
(5, '1.5 Mettre à disposition des utilisateurs un service informatique'),
(6, '1.6 Organiser son développement professionnel');

-- --------------------------------------------------------

--
-- Structure de la table `competences`
--

CREATE TABLE `competences` (
  `id` int(6) NOT NULL,
  `idCategorie` int(6) NOT NULL,
  `libelle` text NOT NULL,
  `idJustification` int(6) DEFAULT NULL,
  `vu` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `competences`
--

INSERT INTO `competences` (`id`, `idCategorie`, `libelle`, `idJustification`, `vu`) VALUES
(1, 1, '1. Recenser et identifier les ressources numériques', 1, 1),
(2, 1, '2. Mettre en place et vérifier les niveaux d\'habilitation associés à un service', 1, 0),
(3, 1, '3. Exploiter des référentiels, normes et standards adoptés par le prestataire informatique', 1, 0),
(4, 1, '4. Gérer des sauvegardes', 1, 1),
(5, 1, '5. Vérifier les conditions de la continuité d\'un service informatique', 1, 0),
(6, 1, '6. Vérifier le respect des règles d\'utilisation des ressources numériques', 1, 0),
(7, 2, '1. Traiter des demandes concernant les services réseau et système, applicatifs', 1, 0),
(8, 2, '2. Traiter des demandes concernant les applications', 1, 0),
(9, 2, '3. Collecter, suivre et orienter des demandes', 1, 1),
(10, 3, '1. Participer à l\'évolution d\'un site Web exploitant les données de l\'organisation.', 1, 0),
(11, 3, '2. Référencer les services en ligne de l\'organisation et mesurer leur visibilité.', 1, 0),
(12, 3, '3. Participer à la valorisation de l\'image de l\'organisation sur les médias numériques en tenant compte du cadre juridique et des enjeux économiques', 1, 0),
(13, 4, '1. Analyser les objectifs et les modalités d\'organisation d\'un projet', 1, 0),
(14, 4, '2. Évaluer les indicateurs de suivi d\'un projet et analyser les écarts', 1, 0),
(15, 4, '3. Planifier les activités', 1, 0),
(16, 5, '1. Déployer un service', 1, 0),
(17, 5, '2. Réaliser les tests d\'intégration et d\'acceptation d\'un service.', 1, 0),
(18, 5, '3. Accompagner les utilisateurs dans la mise en place d\'un service', 1, 0),
(19, 6, '1. Mettre en place son environnement d\'apprentissage personnel', 1, 1),
(20, 6, '2. Gérer son identité professionnelle', 1, 1),
(21, 6, '3. Développer son projet professionnel', 1, 1),
(22, 6, '4. Mettre en œuvre des outils et stratégies de veille informationnelle', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(6) NOT NULL,
  `adressIp` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `sexe` int(1) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `adressIp`, `date`, `sexe`, `nom`, `prenom`, `mail`, `message`) VALUES
(1, '127.0.0.1', '2025-05-15', 1, 'Mathis', 'fdgdfg', 'mathisfrances11@gmail.com', 'ggrtrt'),
(2, '127.0.0.1', '2025-05-15', 1, 'Mathis', 'fdgdfg', 'mathisfrances11@gmail.com', 'ggrtrt'),
(3, '127.0.0.1', '2025-05-15', 1, 'Mathis', 'fdgdfg', 'mathisfrances11@gmail.com', 'trgg');

-- --------------------------------------------------------

--
-- Structure de la table `justification`
--

CREATE TABLE `justification` (
  `id` int(6) NOT NULL,
  `justification` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `justification`
--

INSERT INTO `justification` (`id`, `justification`) VALUES
(1, 'Ne vous inquiétez pas, la justification est en cours de développement.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categoriesbloc1`
--
ALTER TABLE `categoriesbloc1`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `competences`
--
ALTER TABLE `competences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCategorie` (`idCategorie`),
  ADD KEY `idJustification` (`idJustification`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `justification`
--
ALTER TABLE `justification`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categoriesbloc1`
--
ALTER TABLE `categoriesbloc1`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `competences`
--
ALTER TABLE `competences`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `justification`
--
ALTER TABLE `justification`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `competences`
--
ALTER TABLE `competences`
  ADD CONSTRAINT `idCategorie` FOREIGN KEY (`idCategorie`) REFERENCES `categoriesbloc1` (`id`),
  ADD CONSTRAINT `idJustification` FOREIGN KEY (`idJustification`) REFERENCES `justification` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
