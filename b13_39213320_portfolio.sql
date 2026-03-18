SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `b32_41412376_portfolio` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `b32_41412376_portfolio`;

-- Désactivation temporaire des vérifications de clés étrangères pour pouvoir écraser et recréer les tables proprement
SET FOREIGN_KEY_CHECKS = 0;

-- --------------------------------------------------------
-- Structure et données de la table `personnelle`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `personnelle`;
CREATE TABLE IF NOT EXISTS `personnelle` (
  `idPersonne` int(11) NOT NULL AUTO_INCREMENT,
  `urlPdp` varchar(100) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `etudes` varchar(100) NOT NULL,
  `dateDeNaissance` date NOT NULL,
  `localisation` varchar(100) NOT NULL,
  `meConcernant` text NOT NULL,
  PRIMARY KEY (`idPersonne`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `personnelle` (`idPersonne`, `urlPdp`, `nom`, `prenom`, `etudes`, `dateDeNaissance`, `localisation`, `meConcernant`) VALUES
(1, 'images/me.png', 'FRANCES--LAVILLAUROY', 'Mathis', 'Étudiant en BTS SIO, option SLAM', '2006-07-02', 'Quimper, Finistère, France', 'Bonjour,\r\n\r\nJe m\'appelle Mathis FRANCES--LAVILLAUROY, je suis actuellement en BTS SIO 2ème année.');

-- --------------------------------------------------------
-- Structure et données de la table `categoriesbloc1`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `categoriesbloc1`;
CREATE TABLE IF NOT EXISTS `categoriesbloc1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appellation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categoriesbloc1` (`id`, `appellation`) VALUES
(1, '1.1 Gérer le patrimoine informatique'),
(2, '1.2 Répondre aux incidents et aux demandes d\'assistance et d\'évolution'),
(3, '1.3 Développer la présence en ligne de l\'organisation'),
(4, '1.4 Travailler en mode projet'),
(5, '1.5 Mettre à disposition des utilisateurs un service informatique'),
(6, '1.6 Organiser son développement professionnel');

-- --------------------------------------------------------
-- Structure et données de la table `competences`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `competences`;
CREATE TABLE IF NOT EXISTS `competences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idPersonne` int(11) NOT NULL DEFAULT 1,
  `nom` varchar(100) NOT NULL,
  `pourcentage` int(11) NOT NULL,
  `type` enum('professionnel','personnel') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_competences_personne` (`idPersonne`),
  CONSTRAINT `fk_competences_personne` FOREIGN KEY (`idPersonne`) REFERENCES `personnelle` (`idPersonne`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Structure et données de la table `justification`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `justification`;
CREATE TABLE IF NOT EXISTS `justification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `justification` text NOT NULL,
  `imgUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Structure et données de la table `competencesacocher`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `competencesacocher`;
CREATE TABLE IF NOT EXISTS `competencesacocher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idCategorie` int(11) NOT NULL,
  `libelle` text NOT NULL,
  `idJustification` int(11) DEFAULT NULL,
  `vu` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idCategorie` (`idCategorie`),
  KEY `idJustification` (`idJustification`),
  CONSTRAINT `fk_competencesacocher_categorie` FOREIGN KEY (`idCategorie`) REFERENCES `categoriesbloc1` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_competencesacocher_justification` FOREIGN KEY (`idJustification`) REFERENCES `justification` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Note: Les valeurs `vu` = '' (vides) du dump original ont été corrigées par '0' pour respecter le type Enum strict.
INSERT INTO `competencesacocher` (`id`, `idCategorie`, `libelle`, `idJustification`, `vu`) VALUES
(1, 1, '1. Recenser et identifier les ressources numériques', 2, '1'),
(2, 1, '2. Mettre en place et vérifier les niveaux d\'habilitation associés à un service', 1, '0'),
(3, 1, '3. Exploiter des référentiels, normes et standards adoptés par le prestataire informatique', 1, '0'),
(4, 1, '4. Gérer des sauvegardes', 3, '1'),
(5, 1, '5. Vérifier les conditions de la continuité d\'un service informatique', 1, '0'),
(6, 1, '6. Vérifier le respect des règles d\'utilisation des ressources numériques', 1, '0'),
(7, 2, '1. Traiter des demandes concernant les services réseau et système, applicatifs', 1, '0'),
(8, 2, '2. Traiter des demandes concernant les applications', 1, '0'),
(9, 2, '3. Collecter, suivre et orienter des demandes', 4, '1'),
(10, 3, '1. Participer à l\'évolution d\'un site Web exploitant les données de l\'organisation.', 8, '1'),
(11, 3, '2. Référencer les services en ligne de l\'organisation et mesurer leur visibilité.', 1, '0'),
(12, 3, '3. Participer à la valorisation de l\'image de l\'organisation sur les médias numériques en tenant compte du cadre juridique et des enjeux économiques', 1, '0'),
(13, 4, '1. Analyser les objectifs et les modalités d\'organisation d\'un projet', 1, '0'),
(14, 4, '2. Évaluer les indicateurs de suivi d\'un projet et analyser les écarts', 1, '0'),
(15, 4, '3. Planifier les activités', 11, '1'),
(16, 5, '1. Déployer un service', 10, '1'),
(17, 5, '2. Réaliser les tests d\'intégration et d\'acceptation d\'un service.', 1, '0'),
(18, 5, '3. Accompagner les utilisateurs dans la mise en place d\'un service', 10, '1'),
(19, 6, '1. Mettre en place son environnement d\'apprentissage personnel', 5, '1'),
(20, 6, '2. Gérer son identité professionnelle', 6, '1'),
(21, 6, '3. Développer son projet professionnel', 7, '1'),
(22, 6, '4. Mettre en œuvre des outils et stratégies de veille informationnelle', 9, '1');

-- --------------------------------------------------------
-- Structure et données de la table `contact`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adressIp` varchar(45) NOT NULL, -- Augmenté à VARCHAR(45) pour supporter les IPv6
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP, -- Transformé en datetime pour la précision de l'heure
  `sexe` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
-- Structure et données de la table `exppro`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `exppro`;
CREATE TABLE IF NOT EXISTS `exppro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idPersonne` int(11) NOT NULL DEFAULT 1,
  `Libelle` varchar(100) NOT NULL,
  `NomEntreprise` varchar(100) NOT NULL,
  `Periode` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `cheminImg` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_exppro_personne` (`idPersonne`),
  CONSTRAINT `fk_exppro_personne` FOREIGN KEY (`idPersonne`) REFERENCES `personnelle` (`idPersonne`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `exppro` (`id`, `idPersonne`, `Libelle`, `NomEntreprise`, `Periode`, `Description`, `cheminImg`) VALUES
(1, 1, 'Agriculture', 'Partag\'emploi', 'Juillet 2021', 'Arrachage des échalottes', './images/partage_emploi.png'),
(2, 1, 'Agriculture', 'Partag\'emploi', 'Fevrier 2022', 'Mise en terre des échalottes', './images/partage_emploi.png'),
(3, 1, 'Stage de 2nd', 'Imprimerie', 'Avril 2022', 'Stage de seconde.', './images/imprimante.png'),
(4, 1, 'SNU', '', 'Juin 2022', 'Service National Universel', './images/snu.png'),
(5, 1, 'CER France', 'CER France', 'Août 2023', 'Stage dans le secteur du Développemnt Web et la Cybersécurité', './images/cerfrance.png');

-- --------------------------------------------------------
-- Structure et données de la table `formation`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idPersonne` int(11) NOT NULL DEFAULT 1,
  `NomEtablissement` varchar(100) NOT NULL,
  `Periode` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `CheminImg` varchar(255) NOT NULL DEFAULT './images/ecole.png',
  PRIMARY KEY (`id`),
  KEY `fk_formation_personne` (`idPersonne`),
  CONSTRAINT `fk_formation_personne` FOREIGN KEY (`idPersonne`) REFERENCES `personnelle` (`idPersonne`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Note: idPersonne est corrigé de 0 vers 1 pour permettre la clé étrangère de la première ligne.
INSERT INTO `formation` (`id`, `idPersonne`, `NomEtablissement`, `Periode`, `Description`, `CheminImg`) VALUES
(1, 1, 'Collège Auguste Brizeux', '2016 - 2020', 'Obtention du Brevet des Collèges', './images/ecole.png'),
(2, 1, 'Lycée Auguste Brizeux', '2020 - 2024', 'Obtention du Baccalauréat Général mention assez bien', './images/ecole.png'),
(3, 1, 'Lycée Jean Chaptal', '2024 - ...', 'Etudes supérieurs', './images/ecole.png');

-- --------------------------------------------------------
-- Structure et données de la table `infocontact`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `infocontact`;
CREATE TABLE IF NOT EXISTS `infocontact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(100) NOT NULL,
  `Adresse` varchar(255) NOT NULL,
  `Telephone` varchar(20) NOT NULL,
  `Mail` varchar(100) NOT NULL,
  `Permis` enum('Oui','Non') DEFAULT 'Non',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `infocontact` (`id`, `Nom`, `Adresse`, `Telephone`, `Mail`, `Permis`) VALUES
(1, 'FRANCES--LAVILLAUROY Mathis', '27 Cité de la Ruche - 29000 Quimper', '+33680357193', 'mathisfrances11@gmail.com', 'Oui');

-- --------------------------------------------------------
-- Structure et données de la table `lienexternes`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `lienexternes`;
CREATE TABLE IF NOT EXISTS `lienexternes` (
  `idLien` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`idLien`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `lienexternes` (`idLien`, `libelle`, `url`) VALUES
(1, 'LinkedIn', 'https://www.linkedin.com/in/mathis-frances-lavillauroy-83890a330/'),
(2, 'CV en ligne', 'https://mathisfcslav-cv.22web.org');

-- --------------------------------------------------------
-- Structure et données de la table `loisirs`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `loisirs`;
CREATE TABLE IF NOT EXISTS `loisirs` (
  `idLoisir` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) NOT NULL,
  `urlImage` varchar(255) NOT NULL,
  PRIMARY KEY (`idLoisir`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `loisirs` (`idLoisir`, `libelle`, `urlImage`) VALUES
(1, 'Natation', 'images/natation.png'),
(2, 'Coder', 'images/coder.png'),
(3, 'Jeux Vidéo', 'images/gaming.png');

-- --------------------------------------------------------
-- Structure et données de la table `projets`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `projets`;
CREATE TABLE IF NOT EXISTS `projets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelleProjet` varchar(255) NOT NULL,
  `descriptionProjet` text NOT NULL,
  `urlProjet` varchar(255) NOT NULL,
  `dateRealisation` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `projets` (`id`, `libelleProjet`, `descriptionProjet`, `urlProjet`, `dateRealisation`) VALUES
(1, 'Site de sommaire', 'Un projet qui me suis depuis mes débuts dans le développement web, que j\'améliore petit à petit au fur et à mesure que j\'acquiert des compétences, ce projet montre l\'évolutions de mes compétences. Ce projet est toujours en cours.', 'https://summury.22web.org/', '2025-10-07'),
(8, 'Mon CV', 'Mon CV est entièrement fait avec php et une base de données.', 'https://github.com/Titiss77/CV', '2025-10-07'),
(9, 'Gestionnaire de ticket', 'J\'ai recréé de A à Z un gestionnaire de ticket pour mon club de natation parce que l\'hébergement gratuit ne supporte pas GLPI.', 'https://github.com/Titiss77/ticketsPec', '2025-10-22');

-- --------------------------------------------------------
-- Structure et données de la table `themes`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `themes`;
CREATE TABLE IF NOT EXISTS `themes` (
  `varName` varchar(50) NOT NULL,
  `varValue` varchar(70) NOT NULL,
  PRIMARY KEY (`varName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

SET FOREIGN_KEY_CHECKS = 1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;