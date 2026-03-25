SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
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
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
INSERT INTO `personnelle` (
    `idPersonne`,
    `urlPdp`,
    `nom`,
    `prenom`,
    `etudes`,
    `dateDeNaissance`,
    `localisation`,
    `meConcernant`
  )
VALUES (
    1,
    'images/me.png',
    'FRANCES--LAVILLAUROY',
    'Mathis',
    'Étudiant en BTS SIO, option SLAM',
    '2006-07-02',
    'Quimper, Finistère, France',
    'Bonjour,\r\n\r\nJe m\'appelle Mathis FRANCES--LAVILLAUROY, je suis actuellement en BTS SIO 2ème année.'
  );
-- --------------------------------------------------------
-- Structure et données de la table `categoriesbloc1`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `categoriesbloc1`;
CREATE TABLE IF NOT EXISTS `categoriesbloc1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appellation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
INSERT INTO `categoriesbloc1` (`id`, `appellation`)
VALUES (1, '1.1 Gérer le patrimoine informatique'),
  (
    2,
    '1.2 Répondre aux incidents et aux demandes d\'assistance et d\'évolution'
  ),
  (
    3,
    '1.3 Développer la présence en ligne de l\'organisation'
  ),
  (4, '1.4 Travailler en mode projet'),
  (
    5,
    '1.5 Mettre à disposition des utilisateurs un service informatique'
  ),
  (
    6,
    '1.6 Organiser son développement professionnel'
  );
-- --------------------------------------------------------
-- Structure et données de la table `competences`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `competences`;
CREATE TABLE IF NOT EXISTS `competences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idPersonne` int(11) NOT NULL DEFAULT 1,
  `nom` varchar(100) NOT NULL,
  `pourcentage` int(11) NOT NULL,
  `type` enum('professionnel', 'personnel') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_competences_personne` (`idPersonne`),
  CONSTRAINT `fk_competences_personne` FOREIGN KEY (`idPersonne`) REFERENCES `personnelle` (`idPersonne`) ON DELETE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
INSERT INTO `competences` (`id`, `idPersonne`, `nom`, `pourcentage`, `type`)
VALUES (1, 1, 'HTML / CSS', 100, 'professionnel'),
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
) ENGINE = InnoDB AUTO_INCREMENT = 12 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
INSERT INTO `justification` (`id`, `justification`, `imgUrl`)
VALUES (
    1,
    'Ne vous inquiétez pas, la justification est en cours de développement.',
    ''
  ),
  (
    2,
    'Identifier les postes, logiciels ou autres ressources utilisées en TP ou en projet, structuré un inventaire de ressources (Excel, GLPI, ou autre outil), ce qui nécessite de recenser, classer et organiser les éléments matériels et logiciels.',
    './images/11-1.png'
  ),
  (
    3,
    'Relève de « Gérer le patrimoine informatique » : Utilisation d’outils comme phpMyAdmin, export/import SQL = gestion des sauvegardes, mise en pratique de notions de continuité de service (sauvegarde = sécurité des données).',
    './images/11-4.png'
  ),
  (
    4,
    '« Répondre aux demandes » si le site répondait à une commande ou des consignes du club, met en œuvre la « mise à disposition d’un service » (site fonctionnel, accessible en ligne).',
    './images/12-3.png'
  ),
  (
    5,
    'J’ai installé et configuré mon environnement de développement (éditeur de code, serveur local type XAMPP, navigateur avec outils développeur) pour travailler efficacement sur le site.',
    './images/16-1.png'
  ),
  (
    6,
    'Mise en place d\'un compte LinkedIn :\r\n\r\nhttps://www.linkedin.com/in/mathis-frances-lavillauroy-83890a330/',
    './images/16-2.png'
  ),
  (
    7,
    'Justification : Ce stage m’a permis de confirmer mon intérêt pour le développement web et de mieux comprendre le métier en conditions réelles, ce qui contribue à affiner mon projet professionnel.',
    ''
  ),
  (
    8,
    '« Développer la présence en ligne » : création d’un site avec WordPress = valorisation numérique, implique « Travailler en mode projet » : recueil des besoins, découpage du travail',
    './images/13-1.png'
  ),
  (
    9,
    'Veille active = autonomie et apprentissage continu.\r\n\r\nhttps://app.flus.fr/collections/1822044671563061756\r\n\r\n',
    './images/16-4.png'
  ),
  (
    10,
    'Malheureusement, pas de responsable du VBCQ n\'est venu.',
    NULL
  ),
  (
    11,
    'Utilisation de Trello, assez mal géré et peu utilisé à mon avis mais utilisation quand même.',
    NULL
  );
-- --------------------------------------------------------
-- Structure et données de la table `competencesacocher`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `competencesacocher`;
CREATE TABLE IF NOT EXISTS `competencesacocher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idCategorie` int(11) NOT NULL,
  `libelle` text NOT NULL,
  `idJustification` int(11) DEFAULT NULL,
  `vu` enum('0', '1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idCategorie` (`idCategorie`),
  KEY `idJustification` (`idJustification`),
  CONSTRAINT `fk_competencesacocher_categorie` FOREIGN KEY (`idCategorie`) REFERENCES `categoriesbloc1` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_competencesacocher_justification` FOREIGN KEY (`idJustification`) REFERENCES `justification` (`id`) ON DELETE
  SET NULL
) ENGINE = InnoDB AUTO_INCREMENT = 23 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
-- Note: Les valeurs `vu` = '' (vides) du dump original ont été corrigées par '0' pour respecter le type Enum strict.
INSERT INTO `competencesacocher` (
    `id`,
    `idCategorie`,
    `libelle`,
    `idJustification`,
    `vu`
  )
VALUES (
    1,
    1,
    '1. Recenser et identifier les ressources numériques',
    2,
    '1'
  ),
  (
    2,
    1,
    '2. Mettre en place et vérifier les niveaux d\'habilitation associés à un service',
    1,
    '0'
  ),
  (
    3,
    1,
    '3. Exploiter des référentiels, normes et standards adoptés par le prestataire informatique',
    1,
    '0'
  ),
  (4, 1, '4. Gérer des sauvegardes', 3, '1'),
  (
    5,
    1,
    '5. Vérifier les conditions de la continuité d\'un service informatique',
    1,
    '0'
  ),
  (
    6,
    1,
    '6. Vérifier le respect des règles d\'utilisation des ressources numériques',
    1,
    '0'
  ),
  (
    7,
    2,
    '1. Traiter des demandes concernant les services réseau et système, applicatifs',
    1,
    '0'
  ),
  (
    8,
    2,
    '2. Traiter des demandes concernant les applications',
    1,
    '0'
  ),
  (
    9,
    2,
    '3. Collecter, suivre et orienter des demandes',
    4,
    '1'
  ),
  (
    10,
    3,
    '1. Participer à l\'évolution d\'un site Web exploitant les données de l\'organisation.',
    8,
    '1'
  ),
  (
    11,
    3,
    '2. Référencer les services en ligne de l\'organisation et mesurer leur visibilité.',
    1,
    '0'
  ),
  (
    12,
    3,
    '3. Participer à la valorisation de l\'image de l\'organisation sur les médias numériques en tenant compte du cadre juridique et des enjeux économiques',
    1,
    '0'
  ),
  (
    13,
    4,
    '1. Analyser les objectifs et les modalités d\'organisation d\'un projet',
    1,
    '0'
  ),
  (
    14,
    4,
    '2. Évaluer les indicateurs de suivi d\'un projet et analyser les écarts',
    1,
    '0'
  ),
  (15, 4, '3. Planifier les activités', 11, '1'),
  (16, 5, '1. Déployer un service', 10, '1'),
  (
    17,
    5,
    '2. Réaliser les tests d\'intégration et d\'acceptation d\'un service.',
    1,
    '0'
  ),
  (
    18,
    5,
    '3. Accompagner les utilisateurs dans la mise en place d\'un service',
    10,
    '1'
  ),
  (
    19,
    6,
    '1. Mettre en place son environnement d\'apprentissage personnel',
    5,
    '1'
  ),
  (
    20,
    6,
    '2. Gérer son identité professionnelle',
    6,
    '1'
  ),
  (
    21,
    6,
    '3. Développer son projet professionnel',
    7,
    '1'
  ),
  (
    22,
    6,
    '4. Mettre en œuvre des outils et stratégies de veille informationnelle',
    9,
    '1'
  );
-- --------------------------------------------------------
-- Structure et données de la table `contact`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adressIp` varchar(45) NOT NULL,
  -- Augmenté à VARCHAR(45) pour supporter les IPv6
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  -- Transformé en datetime pour la précision de l'heure
  `sexe` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
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
) ENGINE = InnoDB AUTO_INCREMENT = 6 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
INSERT INTO `exppro` (
    `id`,
    `idPersonne`,
    `Libelle`,
    `NomEntreprise`,
    `Periode`,
    `Description`,
    `cheminImg`
  )
VALUES (
    1,
    1,
    'Agriculture',
    'Partag\'emploi',
    'Juillet 2021',
    'Arrachage des échalottes',
    './images/cv/partage_emploi.png'
  ),
  (
    2,
    1,
    'Agriculture',
    'Partag\'emploi',
    'Fevrier 2022',
    'Mise en terre des échalottes',
    './images/cv/partage_emploi.png'
  ),
  (
    3,
    1,
    'Stage de 2nd',
    'Imprimerie',
    'Avril 2022',
    'Stage de seconde.',
    './images/cv/imprimante.png'
  ),
  (
    4,
    1,
    'SNU',
    '',
    'Juin 2022',
    'Service National Universel',
    './images/cv/snu.png'
  ),
  (
    5,
    1,
    'CER France',
    'CER France',
    'Août 2023',
    'Stage dans le secteur du Développemnt Web et la Cybersécurité',
    './images/cv/cerfrance.png'
  );
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
) ENGINE = InnoDB AUTO_INCREMENT = 4 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
-- Note: idPersonne est corrigé de 0 vers 1 pour permettre la clé étrangère de la première ligne.
INSERT INTO `formation` (
    `id`,
    `idPersonne`,
    `NomEtablissement`,
    `Periode`,
    `Description`,
    `CheminImg`
  )
VALUES (
    1,
    1,
    'Collège Auguste Brizeux',
    '2016 - 2020',
    'Obtention du Brevet des Collèges',
    './images/cv/ecole.png'
  ),
  (
    2,
    1,
    'Lycée Auguste Brizeux',
    '2020 - 2024',
    'Obtention du Baccalauréat Général mention assez bien',
    './images/cv/ecole.png'
  ),
  (
    3,
    1,
    'Lycée Jean Chaptal',
    '2024 - ...',
    'Etudes supérieurs',
    './images/cv/ecole.png'
  );
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
  `Permis` enum('Oui', 'Non') DEFAULT 'Non',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 2 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
INSERT INTO `infocontact` (
    `id`,
    `Nom`,
    `Adresse`,
    `Telephone`,
    `Mail`,
    `Permis`
  )
VALUES (
    1,
    'FRANCES--LAVILLAUROY Mathis',
    '27 Cité de la Ruche - 29000 Quimper',
    '+33680357193',
    'mathisfrances11@gmail.com',
    'Oui'
  );
-- --------------------------------------------------------
-- Structure et données de la table `lienexternes`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `lienexternes`;
CREATE TABLE IF NOT EXISTS `lienexternes` (
  `idLien` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`idLien`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
INSERT INTO `lienexternes` (`idLien`, `libelle`, `url`)
VALUES (
    1,
    'LinkedIn',
    'https://www.linkedin.com/in/mathis-frances-lavillauroy-83890a330/'
  ),
  (2, 'CV en ligne', 'cv/');
-- --------------------------------------------------------
-- Structure et données de la table `loisirs`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `loisirs`;
CREATE TABLE IF NOT EXISTS `loisirs` (
  `idLoisir` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) NOT NULL,
  `urlImage` varchar(255) NOT NULL,
  PRIMARY KEY (`idLoisir`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
INSERT INTO `loisirs` (`idLoisir`, `libelle`, `urlImage`)
VALUES (1, 'Natation', 'images/natation.png'),
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
) ENGINE = InnoDB AUTO_INCREMENT = 10 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
INSERT INTO `projets` (
    `id`,
    `libelleProjet`,
    `descriptionProjet`,
    `urlProjet`,
    `dateRealisation`
  )
VALUES (
    1,
    'Site de sommaire',
    'Un projet qui me suis depuis mes débuts dans le développement web, que j\'améliore petit à petit au fur et à mesure que j\'acquiert des compétences, ce projet montre l\'évolutions de mes compétences. Ce projet est toujours en cours.',
    'https://summury.22web.org/',
    '2025-10-07'
  ),
  (
    8,
    'Mon CV',
    'Mon CV est entièrement fait avec php et une base de données.',
    'https://github.com/Titiss77/CV',
    '2025-10-07'
  ),
  (
    9,
    'Gestionnaire de ticket',
    'J\'ai recréé de A à Z un gestionnaire de ticket pour mon club de natation parce que l\'hébergement gratuit ne supporte pas GLPI.',
    'https://github.com/Titiss77/ticketsPec',
    '2025-10-22'
  );
-- --------------------------------------------------------
-- Structure et données de la table `themes`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `themes`;
CREATE TABLE IF NOT EXISTS `themes` (
  `varName` varchar(50) NOT NULL,
  `varValue` varchar(70) NOT NULL,
  PRIMARY KEY (`varName`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
INSERT INTO `themes` (`varName`, `varValue`)
VALUES ('--bg-body', '#e0e0e0'),
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
  (
    '--box-shadow-hover',
    '7px 7px 7px 0px #00000069'
  ),
  ('--border-radius', '1rem');
SET FOREIGN_KEY_CHECKS = 1;
DROP TABLE IF EXISTS `articles`;
CREATE TABLE articles (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  link VARCHAR(255) NOT NULL UNIQUE,
  description TEXT,
  pub_date DATETIME,
  source VARCHAR(100)
);
INSERT INTO `articles` (
    `id`,
    `title`,
    `link`,
    `description`,
    `pub_date`,
    `source`
  )
VALUES (
    1,
    'Aqara Smart Lock U400 - CSA-IOT',
    'https://csa-iot.org/fr/produit_csa/serrure-intelligente-aqara-u400-3/',
    'The Aqara Smart Lock U400 offers ultimate hands-free unlocking with Ultra-Wideband (UWB). It also integrates Apple home keys, Matter, and Aliro…',
    '2026-03-25 07:04:18',
    'Google Alerts - Internet of Things'
  ),
  (
    2,
    'PROJET FRANCE 2030 – DEPLOIEMENT DE CAPTEURS IOT SATELLITAIRES - Valabre',
    'https://www.valabre.com/actualites/projet-france-2030-deploiement-de-capteurs-iot-satellitaires',
    '(IOT : Internet Of Things, Internet des objets). Dans le cadre du programme national France 2030, l\'Entente pour la forêt méditerranéenne et la ...',
    '2026-03-24 20:17:17',
    'Google Alerts - Internet of Things'
  ),
  (
    3,
    'Move & Connect s\'associe à KORE pour offrir une connectivité IdO paneuropéenne fluide ...',
    'https://www.prnewswire.com/news-releases/move--connect-sassocie-a-kore-pour-offrir-une-connectivite-ido-paneuropeenne-fluide-aux-industries-critiques-302723846.html',
    'Move & Connect se asocia con KORE para ofrecer conectividad IoT. KORE Group Holdings, Inc. (NYSE: KORE), el proveedor global de soluciones de Internet ...',
    '2026-03-24 18:48:23',
    'Google Alerts - Internet of Things'
  ),
  (
    4,
    'Interrupteur mural intelligent LG (3 boutons) - CSA-IOT',
    'https://csa-iot.org/fr/produit_csa/Interrupteur-mural-intelligent-LG-3-boutons-3/',
    'La commande vocale est également disponible, pour une gestion encore plus pratique de votre éclairage. L\'interrupteur intelligent peut être installé ...',
    '2026-03-24 15:04:49',
    'Google Alerts - Internet of Things'
  ),
  (
    5,
    'MSI met à l\'honneur le cloud, l\'IA et les plateformes de serveurs d\'entreprise au CloudFest 2026',
    'https://www.prnewswire.com/news-releases/msi-met-a-lhonneur-le-cloud-lia-et-les-plateformes-de-serveurs-dentreprise-au-cloudfest-2026-302722404.html',
    'Cloud Computing/Internet of Things · Artificial Intelligence.',
    '2026-03-24 14:01:52',
    'Google Alerts - Internet of Things'
  ),
  (
    6,
    'IDEMIA Secure Transactions au cœur du déploiement national des balises d\'urgence ...',
    'https://www.prnewswire.com/news-releases/idemia-secure-transactions-au-cur-du-deploiement-national-des-balises-durgence-connectees-en-espagne-302722429.html',
    'Forts de notre technologie NB-IoT et grâce au déploiement de dispositifs entièrement certifiés dans notre laboratoire accrédité, nous garantissons une ...',
    '2026-03-24 13:01:58',
    'Google Alerts - Internet of Things'
  ),
  (
    7,
    'Catalogue en ligne Bibliothèque universitaire MI - PMB',
    'https://pmb.univ-batna2.dz/opac_css/index.php?lvl=categ_see&id=7176&page=9&nbr_lignes=1870&l_typdoc=&nb_per_page_custom=50',
    '... internet of things (IoT) et UML. Etude de cas : surveillance de véhicules d\'une entreprise pharmaceutique / Nedjma DJEZZAR · Permalink. détail ...',
    '2026-03-24 12:33:24',
    'Google Alerts - Internet of Things'
  ),
  (
    8,
    'ALTERNANCE - Assistant Chef de Produit Objets Connectés - Apple | Hermès (H/F)',
    'https://hi-interns.com/internships/alternance-assistant-chef-de-produit-objets-connectes-apple-or-hermes-hf',
    'Merchandising / Product managementInternet of Things (IoT) / Connected DevicesLuxury Goods / Fashion. Publié il y a environ 16 heures. Alternance.',
    '2026-03-24 12:32:29',
    'Google Alerts - Internet of Things'
  ),
  (
    9,
    '13/03/2026 : Document d\'enregistrement universel 2025 - PDF (10 393 Ko) - xHTML',
    'https://www.zonebourse.com/actualite-bourse/13-03-2026-document-da-enregistrement-universel-2025-pdf-10-393-ko-xhtml-ce7e5eddd189f525',
    '... internet. https://www.soprasteria.com. Présentation intégrée de ... 1_ IA : Intelligence artificielle 2_ IoT : Internet of Things. Pour en ...',
    '2026-03-24 11:50:49',
    'Google Alerts - Internet of Things'
  ),
  (
    10,
    'Armis Centrix™ désignée « Meilleure solution » pour la gestion de l\'exposition aux ...',
    'https://www.businesswire.com/news/home/20260323943166/fr',
    'IOT (Internet of Things) · Security · Armis Logo. Armis. Details. Headquarters: San Francisco, San ...',
    '2026-03-24 10:41:06',
    'Google Alerts - Internet of Things'
  ),
  (
    11,
    'Test Engineer Senior Projet PLE - Politecnico federale di Losanna, EPFL - portale lavoro',
    'https://www.myscience.ch/it/jobs/id69519-test_engineer_senior_projet_ple-swiss_federal_institute_of_technology_lausanne_epfl',
    'Seul·es les candidat·e·s ayant postulé via le site internet de l\'EPFL ... » Connecting Artificial Intelligence (AI) to Internet of Things (IoT) ...',
    '2026-03-24 08:12:41',
    'Google Alerts - Internet of Things'
  ),
  (
    12,
    'eero Pro 7 - CSA-IOT',
    'https://csa-iot.org/fr/produit_csa/eero-pro-7/',
    'eeroPro 7. By Amazon Lab126. Amazon eero Pro 7 tri-band mesh Wi-Fi 7 router – Supports internet plans up to 5 Gbps, ...',
    '2026-03-24 07:05:27',
    'Google Alerts - Internet of Things'
  ),
  (
    14,
    'Ce secret que gardent les fans de bons plans TV : 3 pépites impensables à découvrir sur ... - BFM',
    'https://www.bfmtv.com/tech/bons-plans/ce-secret-que-gardent-les-fans-de-bons-plans-tv-3-pepites-impensables-a-decouvrir-sur-electro-depot_AB-202603250023.html',
    'Le Wi-Fi et le Bluetooth facilitent la connexion aux accessoires, smartphone, tablette ou ordinateurs. Le son reste en 2x10 W, suffisant pour un usage ...',
    '2026-03-25 05:42:07',
    'Google Alerts - objets connectés'
  ),
  (
    15,
    'Le porte-avions français Charles-de-Gaulle a été localisé en mer, à cause de l\'application Strava ...',
    'https://www.facebook.com/lereporterindependant/posts/-le-porte-avions-fran%C3%A7ais-charles-de-gaulle-a-%C3%A9t%C3%A9-localis%C3%A9-en-mer-%C3%A0-cause-de-lap/957957463413431/',
    '... objets connectés est encadré et annonce des mesures pour éviter ce type de fuite, en insistant sur la « discipline numérique » des militaires. D ...',
    '2026-03-25 05:05:19',
    'Google Alerts - objets connectés'
  ),
  (
    16,
    'Ce récent VTC électrique de Nakamura profite d\'une grosse réduction de 600 € - Numerama',
    'https://www.numerama.com/vroom/2216917-ce-recent-vtc-electrique-de-nakamura-profite-dune-grosse-reduction-de-600-e.html',
    'objets connectés · p2p · smartphone · télécoms · tv & hi-fi · web · société · culture ... Niveau accessoires, vous trouverez un porte-bagages arrière d\' ...',
    '2026-03-25 05:01:27',
    'Google Alerts - objets connectés'
  ),
  (
    17,
    'Test Nuki Keypad 2 NFC : La révolution Aliro et Apple Wallet s\'invite sur votre porte',
    'https://www.domo-blog.fr/test-nuki-keypad-2-nfc-la-revolution-aliro-et-apple-wallet-sinvite-sur-votre-porte/',
    'Tests objets connectés. Test Nuki Keypad 2 NFC : La révolution Aliro et Apple Wallet s\'invite sur votre porte ! 24 mars 2026. Aurélien Brunet. 5 min ...',
    '2026-03-25 05:01:04',
    'Google Alerts - objets connectés'
  ),
  (
    18,
    'Oura Ring 5 : Première fuite majeure sur le design et les nouveaux coloris - BlogNT',
    'https://www.blog-nouvelles-technologies.fr/363045/oura-ring-5-fuites-design-date-sortie-capteurs-2027/',
    'La bague connectée n\'est plus un gadget étrange ; c\'est un objet wearable qui cherche désormais l\'élégance, la discrétion et la précision. Oura semble ...',
    '2026-03-25 01:23:01',
    'Google Alerts - objets connectés'
  ),
  (
    19,
    'L\'Echo Show 8 (Modèle 2026) est arrivé chez WiFi Algérie ! ​Plus qu\'un simple écran, c ...',
    'https://www.instagram.com/p/DWSb2SFDad4/',
    '... appareils connectés. ✓ Hub Matter & Thread : Centralisez tous vos objets connectés sans passerelles supplémentaires. ✓ Nouvelle IA Alexa+ : Des ...',
    '2026-03-25 00:55:45',
    'Google Alerts - objets connectés'
  ),
  (
    20,
    'Près de la moitié de la capacité Internet internationale désormais exploitée - Tic Maroc',
    'https://www.tic-maroc.com/2026/03/pres-de-la-moitie-de-la-capacite.html',
    '... objets connectés...) qui se répercutent progressivement sur la demande de capacité internationale. A mesure que le réseau évoluera vers une ...',
    '2026-03-25 00:28:38',
    'Google Alerts - objets connectés'
  ),
  (
    21,
    'Google Messages : la disparition de cette option de connexion va bientôt compliquer la vie ...',
    'https://www.phonandroid.com/google-messages-la-disparition-de-cette-option-de-connexion-va-bientot-compliquer-la-vie-des-utilisateurs-sur-pc.html',
    'Le site est une véritable mine d\'or autour des produits Android et bien plus ! Vous cherchez un téléphone ou souhaitez maîtriser parfaitement le votre ...',
    '2026-03-24 23:13:45',
    'Google Alerts - objets connectés'
  ),
  (
    22,
    'Edenred Mobilité déploie sa stratégie d\'acquisition digitale - La Revue du Digital',
    'https://www.larevuedudigital.com/edenred-mobilite-deploie-sa-strategie-dacquisition-digitale/',
    '... Objets connectés · impression 3D · Réalité hybride. Management. Uberisation ... Objets connectés · Big Data · Social. Informatique. DSI · Sécurité · IT ...',
    '2026-03-24 22:39:23',
    'Google Alerts - objets connectés'
  ),
  (
    23,
    'Galaxy watch d\'occasion - Téléphones & Objets connectés - leboncoin - page 3',
    'https://www.leboncoin.fr/ck/telephones_objets_connectes/galaxy-watch/p-3?ref_id=37fadb94-fcfc-430a-bdb0-7332848389b2',
    'Consultez nos annonces de galaxy watch d\'occasion. Trouvez toutes nos annonces de Téléphones & Objets connectés sur leboncoin - page 3.',
    '2026-03-24 22:33:29',
    'Google Alerts - objets connectés'
  ),
  (
    24,
    'Wall Street minée par le rebond du pétrole - TradingView',
    'https://fr.tradingview.com/news/afp:d53e110df1a88:0/',
    'Les routeurs sont les boîtiers dans chaque foyer qui connectent ordinateurs, téléphones et objets connectés à internet. ... Plus de produits.',
    '2026-03-24 22:28:02',
    'Google Alerts - objets connectés'
  ),
  (
    25,
    'Voici les bains d\'oiseaux connectés les mieux notés par les clients, mais un détail peut tout gâcher',
    'https://monjardinmamaison.maison-travaux.fr/mon-jardin-ma-maison/voici-les-bains-doiseaux-connectes-les-mieux-notes-par-les-clients-mais-un-detail-peut-tout-gacher-530266.html',
    'Nouvelles plantes, nouveaux produits ou objets de jardinage, vous suivez toute l\'actualité jardin et déco. Dedans, dehors, un même esprit, parce ...',
    '2026-03-24 22:02:14',
    'Google Alerts - objets connectés'
  ),
  (
    26,
    '[#BonPlan] Les promos High-Tech du 25 mars - KultureGeek',
    'https://kulturegeek.fr/news-349605/bonplan-promos-high-tech-25-mars-2026',
    '— Smartphones, accessoires et Objets connectés —. Pour un ... ➡️ Accessoires / objets connectés : Chargeur UGREEN Nexode – 65W, 3 ...',
    '2026-03-24 22:02:01',
    'Google Alerts - objets connectés'
  ),
  (
    27,
    'Delta met fin à la procédure accélérée au Congrès pour la TSA alors que la crise du ... - VisaHQ',
    'https://www.visahq.com/fr/news/2026-03-24/us/delta-ends-congressional-fast-track-at-tsa-as-dhs-shutdown-turmoil-grows/',
    '... Les fouilles électroniques par la CBP augmentent de 17 % ; les objets connectés désormais concernés. mars 24 ...',
    '2026-03-24 21:19:50',
    'Google Alerts - objets connectés'
  ),
  (
    28,
    'Amazon prépare un smartphone boosté à l\'IA   \"Le moment est bien choisi, car on parle de ...',
    'https://x.com/bfmbusiness/status/2036526075258233154',
    '... plus en plus d\'objets connectés grâce à l\'IA. Pour Amazon, ce futur appareil va permettre d\'accéder à tous ses services à partir d\'un même objet \"',
    '2026-03-24 21:10:39',
    'Google Alerts - objets connectés'
  ),
  (
    29,
    'Moyen-Orient: Wall Street reste sur la défensive - La Gazette France',
    'https://www.lagazettefrance.fr/article/moyen-orient-wall-street-reste-sur-la-defensive',
    'Les routeurs sont les boîtiers dans chaque foyer qui connectent ordinateurs, téléphones et objets connectés à internet. Le géant américain des ...',
    '2026-03-24 20:54:12',
    'Google Alerts - objets connectés'
  ),
  (
    30,
    'Page 143 - Smartphones et Objets connectés pas cher en Livraison et Drive - Carrefour',
    'https://www.carrefour.fr/r/smartphones-objets-connectes?filters%5Bfacet_price%5D%5Bgte%5D=7800&sort=offers.prices.effective_price&page=143',
    'Smartphones et Objets connectés · Protection Pour Écran Ksix Plotter · Protection Pour Écran Ksix Plotter · Honor X7 128 Go Argent · Motorola Moto E13 2 ...',
    '2026-03-24 20:38:44',
    'Google Alerts - objets connectés'
  ),
  (
    31,
    'Perplexity Health débarque aux USA ! Vos données de santé, objets connectés inclus ...',
    'https://x.com/Clubic/status/2036506406535197095',
    'Clubic (@Clubic). 387 views. Perplexity Health débarque aux USA ! Vos données de santé, objets connectés inclus, centralisées pour des analyses ...',
    '2026-03-24 20:26:29',
    'Google Alerts - objets connectés'
  ),
  (
    32,
    '\"Nous avons atteint l\'IA générale\": le patron de Nvidia est persuadé que les agents ...',
    'https://www.bfmtv.com/tech/intelligence-artificielle/nous-avons-atteint-l-ia-generale-le-patron-de-nvidia-est-persuade-que-les-agents-intelligents-peuvent-diriger-une-entreprise-mais-pas-la-sienne_AV-202603240832.html',
    '... intelligent que les humains, mais d\'un système capable de diriger ... Objets connectés · Console de jeux · TV & HiFi · Ordinateur · Son · Photo & Vidéo.',
    '2026-03-24 20:17:38',
    'Google Alerts - objets connectés'
  ),
  (
    33,
    'Tous les cours - Master en Ingénierie des Systèmes d\'Information et Services Connectés',
    'https://foad-master.univ-dschang.org/course/index.php?categoryid=30',
    '... Connectés, option Ingénierie des Services et Objets Connectes (ISOC), Master (M1) en Ingénierie des Systèmes d\'Information et Services Connectés ...',
    '2026-03-24 20:04:40',
    'Google Alerts - objets connectés'
  ),
  (
    34,
    'Sensibilisation et responsabilité lors de l\'utilisation de l\'IA - Vietnam.vn',
    'https://www.vietnam.vn/fr/y-thuc-trach-nhiem-khi-su-dung-ai',
    '... IoT et IA. (Photo : THANH VU). L\'intelligence artificielle (IA) transforme en profondeur l\'enseignement supérieur. Grâce à des plateformes comme ...',
    '2026-03-25 01:12:21',
    'Google Alerts - IoT'
  ),
  (
    35,
    'Synaptics étend Astra Edge AI avec les nouvelles séries SR80 et SRW1500 pour l\'audio ...',
    'https://www.ecinews.fr/fr/synaptics-etend-astra-edge-ai-avec-les-nouvelles-series-sr80-et-srw1500-pour-laudio-premium-et-lintelligence-distribuee/',
    'De nouveaux microcontrôleurs IA natifs pour l\'audio haut de gamme et les réseaux IoT intelligents Synaptics renforce sa position de leader dans ...',
    '2026-03-24 22:59:58',
    'Google Alerts - IoT'
  ),
  (
    36,
    'Satellites IoT : le chinois Geely vise le marché marocain',
    'https://fr.hespress.com/465310-satellites-iot-le-chinois-geely-vise-le-marche-marocain.html',
    'Le groupe chinois Zhejiang Geely Holding Group accélère son expansion dans les technologies spatiales en ciblant le Maroc.',
    '2026-03-24 22:23:56',
    'Google Alerts - IoT'
  ),
  (
    37,
    'Identiv signe un accord pour des étiquettes BLE avec IFCO - WIoT Group',
    'https://wiot-group.com/think/fr/actualites/identiv-conclut-un-accord-pour-des-etiquettes-ble-avec-ifco/',
    'Pour le marché de l\'IoT sans fil, ce partenariat montre que les étiquettes intelligentes BLE gagnent du terrain dans les déploiements à grande échelle ...',
    '2026-03-24 21:59:44',
    'Google Alerts - IoT'
  ),
  (
    38,
    'Ingénieur conception électronique expérimenté - Domaine de l\'IoT - Silkhom - Cholet, Maine-et-Loire',
    'https://fr.jooble.org/jdp/-2960196422902259477',
    'Postuler à l\'offre d\'emploi \"Ingénieur conception électronique expérimenté - Domaine de l\'IoT\". Voir toutes les offres d\'emploi similaires sur ...',
    '2026-03-24 19:54:36',
    'Google Alerts - IoT'
  ),
  (
    39,
    'Le recyclage des déchets - L\'économie circulaire et l\'IoT - MyStudies',
    'https://www.mystudies.com/fr-be/business-comptabilite-gestion-management/achats/presentation/comment-ameliorer-processus-dechets-grace-integration-augmenter-taux-recyclage-695502.html',
    'Etude de Cas des Entreprises Engagées • Centres de tri utilisant des capteurs IoT pour analyser les flux de déchets en temps réel. • Valorisation ...',
    '2026-03-24 19:44:29',
    'Google Alerts - IoT'
  ),
  (
    40,
    'Offre Emploi CDI Ingénieur Chargé d\'Affaires Contrôle-Commande & Iot Bois-Colombes (92)',
    'https://www.hellowork.com/fr-fr/emplois/77211905.html',
    'Decouvrez l\'offre d\'Emploi Ingénieur Chargé d\'Affaires Contrôle-Commande & Iot Bois-Colombes (92) en CDI pour AZUO Recrutement.',
    '2026-03-24 19:26:21',
    'Google Alerts - IoT'
  ),
  (
    41,
    'Chatgot vs ChatGPT : avis et fonctionnalités clés - Application IoT',
    'https://www.application-iot.fr/chatgot-avis-fonctionnalites/',
    'Découvrez notre avis sur Chatgot, ses fonctionnalités clés et ses différences essentielles avec ChatGPT pour bien choisir votre assistant IA.',
    '2026-03-24 19:21:45',
    'Google Alerts - IoT'
  ),
  (
    42,
    'Byouro 1440 : Moscou déploie son « Starlink - Aerospatium',
    'https://www.aerospatium.info/byouro-1440-moscou-deploie-son-starlink/',
    'Constellations · Dmitri Ougnivenko · IoT · Laser · MegaFon · Moscou · Nénétsie · OneWeb · Petchatniki · Plessetsk · Russie · Sanctions · Soyouz 2.1b ...',
    '2026-03-24 19:12:26',
    'Google Alerts - IoT'
  ),
  (
    43,
    'la Linux Foundation confie les clés de Yocto LTS à l\'expertise Smile',
    'https://smile.eu/fr/realisations/securiser-l-avenir-de-l-embarque-et-l-iot-industriel-la-linux-foundation-confie-les',
    'Son objectif est de fournir des outils standardisés pour créer des distributions Linux sur mesure, un standard incontournable pour l\'embarqué et l\'IoT ...',
    '2026-03-24 19:08:44',
    'Google Alerts - IoT'
  ),
  (
    44,
    'Cyberattaques : les 14 incidents majeurs du 24 mars 2026',
    'https://dcod.ch/2026/03/24/cyberattaques-les-14-incidents-majeurs-du-24-mars-2026/',
    'Les derniers articles. Représentation graphique d\'une attaque DDoS par botnets IoT montrant un écran ciblé par un · Botnets IoT : le DoJ démantèle ...',
    '2026-03-24 19:01:15',
    'Google Alerts - IoT'
  ),
  (
    45,
    'Authorities Disrupts IoT Botnet Infrastructure Behind Record-Breaking 30 Tbps DDoS Attacks',
    'https://actucyber.fr/news/authorities-disrupts-iot-botnet-infrastructure-behind-record-breaking-30-tbps-ddos-attacks',
    'Les autorites ont demantelé l\'infrastructure C2 de quatre botnets IoT (Aisuru, KimWolf, JackSkid, Mossad) qui ont infecte plus de 3 millions ...',
    '2026-03-24 18:47:18',
    'Google Alerts - IoT'
  ),
  (
    46,
    'Acheter RT-AX50 Go | WiFi-6 | Networking-IoT-Servers | ASUS eShop France',
    'https://estore.asus.com/fr/90ig09t0-mo0b00-rt-ax50-go.html',
    'Connectivité triple mode pour les voyages, le travail et la maison avec partage de connexion mobile 4G/5G, point d\'accès privé via le Wi-Fi public ...',
    '2026-03-24 18:04:39',
    'Google Alerts - IoT'
  ),
  (
    47,
    '2025 Annual Report Publication — TradingView News',
    'https://www.tradingview.com/news/eqs:cacb30dc3094b:0-2025-annual-report-publication/',
    'The Kudelski Group (SIX: KUD.S) is a world leader in core digital security technologies and solutions for media, cybersecurity and IoT. The Group ...',
    '2026-03-24 17:59:44',
    'Google Alerts - IoT'
  ),
  (
    48,
    'Post de TETRADIS - LinkedIn',
    'https://fr.linkedin.com/posts/tetradis-mobilityconnect_t%C3%A9l%C3%A9communications-photovolta%C3%AFque-irve-activity-7442125476648763392-rb10',
    '... IoT et aux systèmes de management de l\'énergie. Pequay Bertrand, Guillaume Jullien de Pommerol, Robert ARRIGHI, Sébastien PORRET, yassine safer et ...',
    '2026-03-24 17:52:49',
    'Google Alerts - IoT'
  ),
  (
    49,
    'Le groupe Kudelski publie son rapport annuel 2025 - WebDisclosure',
    'https://www.webdisclosure.com/article/kudelski-group-etr-le-groupe-kudelski-publie-son-rapport-annuel-2025-q6DnncnqCsX',
    'Iot Cybersécurité Sécurité Numérique Groupe Kudelski Rapport Annuel 2025 · Click here to consult the press release on which this article is based.',
    '2026-03-24 16:51:58',
    'Google Alerts - IoT'
  ),
  (
    50,
    'La solution iOT indispensable en 2026 : sécurité, supervision et performance des ...',
    'https://larevuetech.fr/la-solution-iot-indispensable-en-2026-securite-supervision-et-performance-des-infrastructures-connectees/',
    'L\'hyperviseur IoT est un logiciel de supervision centralisée permettant la gestion automatisée des objets connectés, optimisant la sécurité des ...',
    '2026-03-24 16:08:50',
    'Google Alerts - IoT'
  ),
  (
    51,
    'De l\'iot aux champs agricoles : pourquoi la carte sim m2m est devenue indispensable en ...',
    'https://larevuetech.fr/de-l-iot-aux-champs-agricoles-pourquoi-la-carte-sim-m2m-est-devenue-indispensable-en-agriculture-moderne/',
    'L\'agriculture ne joue plus à l\'ancienne. Oubliez le carnet froissé et le crayon mâchouillé, place à l\'intelligence connectée. Avec l\'iot en ...',
    '2026-03-24 16:08:47',
    'Google Alerts - IoT'
  );
COMMIT;