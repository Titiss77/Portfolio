-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 08 oct. 2025 à 10:31
-- Version du serveur : 8.0.39
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `b13_39213320_portfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `categoriesbloc1`
--

CREATE TABLE `categoriesbloc1` (
  `id` int NOT NULL,
  `appellation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
  `id` int NOT NULL,
  `idPersonne` int NOT NULL DEFAULT '1',
  `nom` varchar(100) NOT NULL,
  `pourcentage` int NOT NULL,
  `type` enum('professionnel','personnel') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `competences`
--

INSERT INTO `competences` (`id`, `idPersonne`, `nom`, `pourcentage`, `type`) VALUES
(1, 1, 'HTML / CSS', 100, 'professionnel'),
(2, 1, 'MySQL', 100, 'professionnel'),
(3, 1, 'JavaScript', 70, 'professionnel'),
(4, 1, 'Python', 100, 'professionnel'),
(5, 1, 'Créativité', 90, 'personnel'),
(6, 1, 'Adaptation', 90, 'personnel'),
(7, 1, 'Sérieux', 95, 'personnel'),
(8, 1, 'Pédagogie', 95, 'personnel');

-- --------------------------------------------------------

--
-- Structure de la table `competencesacocher`
--

CREATE TABLE `competencesacocher` (
  `id` int NOT NULL,
  `idCategorie` int NOT NULL,
  `libelle` text NOT NULL,
  `idJustification` int DEFAULT NULL,
  `vu` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `competencesacocher`
--

INSERT INTO `competencesacocher` (`id`, `idCategorie`, `libelle`, `idJustification`, `vu`) VALUES
(1, 1, '1. Recenser et identifier les ressources numériques', 2, '1'),
(2, 1, '2. Mettre en place et vérifier les niveaux d\'habilitation associés à un service', 1, '0'),
(3, 1, '3. Exploiter des référentiels, normes et standards adoptés par le prestataire informatique', 1, '0'),
(4, 1, '4. Gérer des sauvegardes', 3, '1'),
(5, 1, '5. Vérifier les conditions de la continuité d\'un service informatique', 1, ''),
(6, 1, '6. Vérifier le respect des règles d\'utilisation des ressources numériques', 1, ''),
(7, 2, '1. Traiter des demandes concernant les services réseau et système, applicatifs', 1, ''),
(8, 2, '2. Traiter des demandes concernant les applications', 1, ''),
(9, 2, '3. Collecter, suivre et orienter des demandes', 4, '1'),
(10, 3, '1. Participer à l\'évolution d\'un site Web exploitant les données de l\'organisation.', 8, '1'),
(11, 3, '2. Référencer les services en ligne de l\'organisation et mesurer leur visibilité.', 1, ''),
(12, 3, '3. Participer à la valorisation de l\'image de l\'organisation sur les médias numériques en tenant compte du cadre juridique et des enjeux économiques', 1, ''),
(13, 4, '1. Analyser les objectifs et les modalités d\'organisation d\'un projet', 1, ''),
(14, 4, '2. Évaluer les indicateurs de suivi d\'un projet et analyser les écarts', 1, ''),
(15, 4, '3. Planifier les activités', 11, '1'),
(16, 5, '1. Déployer un service', 10, '1'),
(17, 5, '2. Réaliser les tests d\'intégration et d\'acceptation d\'un service.', 1, ''),
(18, 5, '3. Accompagner les utilisateurs dans la mise en place d\'un service', 10, '1'),
(19, 6, '1. Mettre en place son environnement d\'apprentissage personnel', 5, '1'),
(20, 6, '2. Gérer son identité professionnelle', 6, '1'),
(21, 6, '3. Développer son projet professionnel', 7, '1'),
(22, 6, '4. Mettre en œuvre des outils et stratégies de veille informationnelle', 9, '1');

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `adressIp` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `sexe` int NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `adressIp`, `date`, `sexe`, `nom`, `prenom`, `mail`, `message`) VALUES
(1, '127.0.0.1', '2025-05-15', 1, 'Mathis', 'fdgdfg', 'mathisfrances11@gmail.com', 'ggrtrt'),
(2, '127.0.0.1', '2025-05-15', 1, 'Mathis', 'fdgdfg', 'mathisfrances11@gmail.com', 'ggrtrt'),
(3, '127.0.0.1', '2025-05-15', 1, 'Mathis', 'fdgdfg', 'mathisfrances11@gmail.com', 'trgg');

-- --------------------------------------------------------

--
-- Structure de la table `exppro`
--

CREATE TABLE `exppro` (
  `id` int NOT NULL,
  `idPersonne` int NOT NULL DEFAULT '1',
  `Libelle` varchar(30) NOT NULL,
  `NomEntreprise` varchar(100) NOT NULL,
  `Periode` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `cheminImg` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `exppro`
--

INSERT INTO `exppro` (`id`, `idPersonne`, `Libelle`, `NomEntreprise`, `Periode`, `Description`, `cheminImg`) VALUES
(1, 1, 'Agriculture', 'Partag\'emploi', 'Juillet 2021', 'Arrachage des échalottes', './images/partage_emploi.png'),
(2, 1, 'Agriculture', 'Partag\'emploi', 'Fevrier 2022', 'Mise en terre des échalottes', './images/partage_emploi.png'),
(3, 1, 'Stage de 2nd', 'Imprimerie', 'Avril 2022', 'Stage de seconde.', './images/imprimante.png'),
(4, 1, 'SNU', '', 'Juin 2022', 'Service National Universel', './images/snu.png'),
(5, 1, 'CER France', 'CER France', 'Août 2023', 'Stage dans le secteur du Développemnt Web et la Cybersécurité', './images/cerfrance.png');

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `id` int NOT NULL,
  `idPersonne` int NOT NULL DEFAULT '1',
  `NomEtablissement` varchar(100) NOT NULL,
  `Periode` varchar(11) NOT NULL,
  `Description` text NOT NULL,
  `CheminImg` varchar(100) NOT NULL DEFAULT './images/ecole.png'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id`, `idPersonne`, `NomEtablissement`, `Periode`, `Description`, `CheminImg`) VALUES
(1, 0, 'Collège Auguste Brizeux', '2016 - 2020', 'Obtention du Brevet des Collèges', './images/ecole.png'),
(2, 1, 'Lycée Auguste Brizeux', '2020 - 2024', 'Obtention du Baccalauréat Général mention assez bien', './images/ecole.png'),
(3, 1, 'Lycée Jean Chaptal', '2024 - ...', 'Etudes supérieurs', './images/ecole.png');

-- --------------------------------------------------------

--
-- Structure de la table `infocontact`
--

CREATE TABLE `infocontact` (
  `id` int NOT NULL,
  `Nom` varchar(100) NOT NULL,
  `Adresse` varchar(100) NOT NULL,
  `Telephone` varchar(13) NOT NULL,
  `Mail` varchar(100) NOT NULL,
  `Permis` enum('Oui','Non') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `infocontact`
--

INSERT INTO `infocontact` (`id`, `Nom`, `Adresse`, `Telephone`, `Mail`, `Permis`) VALUES
(1, 'FRANCES--LAVILLAUROY Mathis', '27 Cité de la Ruche - 29000 Quimper', '+33680357193', 'mathisfrances11@gmail.com', 'Oui');

-- --------------------------------------------------------

--
-- Structure de la table `justification`
--

CREATE TABLE `justification` (
  `id` int NOT NULL,
  `justification` text NOT NULL,
  `imgUrl` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `justification`
--

INSERT INTO `justification` (`id`, `justification`, `imgUrl`) VALUES
(1, 'Ne vous inquiétez pas, la justification est en cours de développement.', ''),
(2, 'Identifier les postes, logiciels ou autres ressources utilisées en TP ou en projet, structuré un inventaire de ressources (Excel, GLPI, ou autre outil), ce qui nécessite de recenser, classer et organiser les éléments matériels et logiciels.', './images/11-1.png'),
(3, 'Relève de « Gérer le patrimoine informatique » : Utilisation d’outils comme phpMyAdmin, export/import SQL = gestion des sauvegardes, mise en pratique de notions de continuité de service (sauvegarde = sécurité des données).', './images/11-4.png'),
(4, '« Répondre aux demandes » si le site répondait à une commande ou des consignes du club, met en œuvre la « mise à disposition d’un service » (site fonctionnel, accessible en ligne).', './images/12-3.png'),
(5, 'J’ai installé et configuré mon environnement de développement (éditeur de code, serveur local type XAMPP, navigateur avec outils développeur) pour travailler efficacement sur le site.', './images/16-1.png'),
(6, 'Mise en place d\'un compte LinkedIn :\r\n\r\nhttps://www.linkedin.com/in/mathis-frances-lavillauroy-83890a330/', './images/16-2.png'),
(7, 'Justification : Ce stage m’a permis de confirmer mon intérêt pour le développement web et de mieux comprendre le métier en conditions réelles, ce qui contribue à affiner mon projet professionnel.', ''),
(8, '« Développer la présence en ligne » : création d’un site avec WordPress = valorisation numérique, implique « Travailler en mode projet » : recueil des besoins, découpage du travail', './images/13-1.png'),
(9, 'Veille active = autonomie et apprentissage continu.\r\n\r\nhttps://app.flus.fr/collections/1822044671563061756\r\n\r\n', './images/16-4.png'),
(10, 'Malheureusement, pas de responsable du VBCQ n\'est venu.', NULL),
(11, 'Utilisation de Trello, assez mal géré et peu utilisé à mon avis mais utilisation quand même.', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `lienexternes`
--

CREATE TABLE `lienexternes` (
  `idLien` int NOT NULL,
  `libelle` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `lienexternes`
--

INSERT INTO `lienexternes` (`idLien`, `libelle`, `url`) VALUES
(1, 'LinkedIn', 'https://www.linkedin.com/in/mathis-frances-lavillauroy-83890a330/'),
(2, 'CV en ligne', './CV/cv_num/index.php');

-- --------------------------------------------------------

--
-- Structure de la table `loisirs`
--

CREATE TABLE `loisirs` (
  `idLoisir` int NOT NULL,
  `libelle` varchar(100) NOT NULL,
  `urlImage` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `loisirs`
--

INSERT INTO `loisirs` (`idLoisir`, `libelle`, `urlImage`) VALUES
(1, 'Natation', 'CV/cv_num/images/natation.png'),
(2, 'Coder', 'CV/cv_num/images/coder.png'),
(3, 'Jeux Vidéo', 'CV/cv_num/images/gaming.png');

-- --------------------------------------------------------

--
-- Structure de la table `personnelle`
--

CREATE TABLE `personnelle` (
  `idPersonne` int NOT NULL,
  `urlPdp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nom` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `prenom` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `etudes` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dateDeNaissance` date NOT NULL,
  `localisation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `meConcernant` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personnelle`
--

INSERT INTO `personnelle` (`idPersonne`, `urlPdp`, `nom`, `prenom`, `etudes`, `dateDeNaissance`, `localisation`, `meConcernant`) VALUES
(1, './CV/cv_num/images/me.png', 'FRANCES--LAVILLAUROY', 'Mathis', 'Étudiant en BTS SIO, option SLAM', '2006-07-02', 'Quimper, Finistère, France', 'Bonjour,\r\n\r\nJe m\'appel Mathis FRANCES--LAVILLAUROY, je suis actuellement en BTS SIO 2ème année.');

-- --------------------------------------------------------

--
-- Structure de la table `themes`
--

CREATE TABLE `themes` (
  `varName` varchar(50) NOT NULL,
  `varValue` varchar(70) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `themes`
--

INSERT INTO `themes` (`varName`, `varValue`) VALUES
('--bg-body', '#e0e0e0'),
('--bg-h-f', '#d4d4d4'),
('--color-text', '#4d4d4d'),
('--color-border', 'none'),
('--couleur-font-anime', '#00f7ff00'),
('--couleur-false', '#a02121'),
('--couleur-btn-anime', '#6c93d2'),
('--couleur-btn-film', 'rgb(37, 115, 66)'),
('--couleur-btn-serie', 'rgb(109, 67, 152);'),
('--couleur-btn-scan', '#626874'),
('--couleur-btn-all', 'rgb(145, 60, 63)'),
('--box-shadow', '2px 2px 20px 0px #555555'),
('--box-shadow-hover', '7px 7px 7px 0px #00000069'),
('--border-radius', '1rem');

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
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `competencesacocher`
--
ALTER TABLE `competencesacocher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCategorie` (`idCategorie`),
  ADD KEY `idJustification` (`idJustification`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `exppro`
--
ALTER TABLE `exppro`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `infocontact`
--
ALTER TABLE `infocontact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `justification`
--
ALTER TABLE `justification`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lienexternes`
--
ALTER TABLE `lienexternes`
  ADD PRIMARY KEY (`idLien`);

--
-- Index pour la table `loisirs`
--
ALTER TABLE `loisirs`
  ADD PRIMARY KEY (`idLoisir`);

--
-- Index pour la table `personnelle`
--
ALTER TABLE `personnelle`
  ADD PRIMARY KEY (`idPersonne`);

--
-- Index pour la table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`varName`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categoriesbloc1`
--
ALTER TABLE `categoriesbloc1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `competences`
--
ALTER TABLE `competences`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `competencesacocher`
--
ALTER TABLE `competencesacocher`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `exppro`
--
ALTER TABLE `exppro`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `formation`
--
ALTER TABLE `formation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `infocontact`
--
ALTER TABLE `infocontact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `justification`
--
ALTER TABLE `justification`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `lienexternes`
--
ALTER TABLE `lienexternes`
  MODIFY `idLien` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `loisirs`
--
ALTER TABLE `loisirs`
  MODIFY `idLoisir` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `personnelle`
--
ALTER TABLE `personnelle`
  MODIFY `idPersonne` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `competencesacocher`
--
ALTER TABLE `competencesacocher`
  ADD CONSTRAINT `idCategorie` FOREIGN KEY (`idCategorie`) REFERENCES `categoriesbloc1` (`id`),
  ADD CONSTRAINT `idJustification` FOREIGN KEY (`idJustification`) REFERENCES `justification` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
