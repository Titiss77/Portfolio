SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
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
-- Structure et données de la table `categories_bloc_1`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `categories_bloc_1`;
CREATE TABLE IF NOT EXISTS `categories_bloc_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appellation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 7 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
INSERT INTO `categories_bloc_1` (`id`, `appellation`)
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
  CONSTRAINT `fk_competencesacocher_categorie` FOREIGN KEY (`idCategorie`) REFERENCES `categories_bloc_1` (`id`) ON DELETE CASCADE,
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
DROP TABLE IF EXISTS `articles`;
CREATE TABLE articles (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  link VARCHAR(255) NOT NULL UNIQUE,
  description TEXT,
  pub_date DATETIME,
  source VARCHAR(100)
);

INSERT INTO `articles` (`id`, `title`, `link`, `description`, `pub_date`, `source`) VALUES
(1, 'Move & Connect s\'associe à KORE pour offrir une connectivité IdO paneuropéenne fluide ...', 'https://www.prnewswire.com/news-releases/move--connect-sassocie-a-kore-pour-offrir-une-connectivite-ido-paneuropeenne-fluide-aux-industries-critiques-302723846.html', 'Move & Connect se asocia con KORE para ofrecer conectividad IoT. KORE Group Holdings, Inc. (NYSE: KORE), el proveedor global de soluciones de Internet ...', '2026-03-24 18:48:23', 'Google Alerts - Internet of Things'),
(2, 'OpenAI débranche Sora, son outil de génération de vidéos par IA - L\'Éclaireur Fnac', 'https://leclaireur.fnac.com/article/664161-pourquoi-openai-supprime-t-il-sora-son-outil-de-generation-de-videos-par-ia/', 'À lire aussi. Actu. Objets connectés. •. 23 fév. 2026. Le premier appareil connecté d\'OpenAI pourrait prendre la forme d\'une enceinte intelligente.', '2026-03-25 11:57:51', 'Google Alerts - objets connectés'),
(3, 'Fractus et Verizon parviennent à un accord dans leur litige en matière de brevets.', 'https://www.webdisclosure.com/article/fractus-etr-fractus-et-verizon-parviennent-a-un-accord-dans-leur-litige-en-matiere-de-brevets-ykWoP5aGfC0', '... objets connectés. Ces solutions technologiques permettent aux appareils ... Fractus continue de défendre l\'importance de ses inventions dans l\'évolution ...', '2026-03-25 11:14:42', 'Google Alerts - objets connectés'),
(4, 'Journal La Terrasse', 'https://www.journal-laterrasse.fr/90421-2/', '... objets connectés… De quoi nourrir – si on le veut ! – une pensée critique, voire politique. Découvrir un art qui renouvelle l\'expérience de ...', '2026-03-25 09:35:34', 'Google Alerts - objets connectés'),
(5, 'Une bague de paiement pour tous les Français ? Le groupement des cartes bancaires teste ...', 'https://www.clubic.com/actualite-606061-une-bague-de-paiement-pour-tous-les-francais-le-groupement-des-cartes-bancaires-teste-et-approuve-l-idee.html', 'Les résultats, dévoilés ce mercredi 25 mars, confirment une adoption massive et ouvrent la voie à une nouvelle génération d\'objets connectés de ...', '2026-03-25 09:32:37', 'Google Alerts - objets connectés'),
(6, 'Fibre : le 1 Gb/s devient le nouveau minimum des box internet', 'https://www.freenews.fr/freebox/freebox-ultra/debit-fibre-1-gbps-standard-internet', '... objets connectés. Dans de nombreux foyers, plusieurs appareils consomment simultanément de la bande passante. Téléviseurs, ordinateurs ...', '2026-03-25 09:02:29', 'Google Alerts - objets connectés'),
(7, 'CB expérimente le paiement sans contact par bague : 75 % des testeurs prêts à l\'adopter', 'https://finyear.com/cb-experimente-le-paiement-sans-contact-par-bague-75-des-testeurs-prets-a-ladopter/', '... objet. Certains testeurs ont même détourné la bague en porte-clés, ouvrant la réflexion sur une gamme plus large d\'objets connectés de paiement.', '2026-03-25 08:42:57', 'Google Alerts - objets connectés'),
(8, 'Et si votre maison produisait et stockait toute son énergie ? La solution SolarVault 3 arrive', 'https://www.maison-et-domotique.com/168376-jackery-lance-solarvault-3/', 'Jusqu\'à quatre prises connectées peuvent être intégrées pour piloter directement certains appareils énergivores. connexion jackery. Bonne nouvelle ...', '2026-03-25 08:21:57', 'Google Alerts - objets connectés'),
(9, 'Meilleure vente de Pâques : une licence Office 2021 Pro pour seulement 30 € ! Offre ...', 'https://www.phonandroid.com/meilleure-vente-de-paques-une-licence-office-2021-pro-pour-seulement-30-e-offre-speciale-sur-windows-11-pro-a-12-e.html', 'Objets connectés · Smartphone · Télévision · Tutos · VPN · Cybersécurité · High ... Office 2021 continue ensuite de recevoir les mises à jour de ...', '2026-03-25 08:02:21', 'Google Alerts - objets connectés'),
(10, 'Un jour LoRa... connectera les flux de télérelève - PressReader', 'https://www.pressreader.com/france/le-regional-de-cosne/20260325/281990384055614', 'En termes simples, il s\'agit de « passerelles pour connecter des objets ». ... objets connectés au stade. L\'une des autorisations sollicitées pour ...', '2026-03-25 06:36:32', 'Google Alerts - objets connectés'),
(11, 'Ce secret que gardent les fans de bons plans TV : 3 pépites impensables à découvrir sur ... - BFM', 'https://www.bfmtv.com/tech/bons-plans/ce-secret-que-gardent-les-fans-de-bons-plans-tv-3-pepites-impensables-a-decouvrir-sur-electro-depot_AB-202603250023.html', 'Le Wi-Fi et le Bluetooth facilitent la connexion aux accessoires, smartphone, tablette ou ordinateurs. Le son reste en 2x10 W, suffisant pour un usage ...', '2026-03-25 05:42:07', 'Google Alerts - objets connectés'),
(12, 'Test Nuki Keypad 2 NFC : La révolution Aliro et Apple Wallet s\'invite sur votre porte', 'https://www.domo-blog.fr/test-nuki-keypad-2-nfc-la-revolution-aliro-et-apple-wallet-sinvite-sur-votre-porte/', 'Tests objets connectés. Test Nuki Keypad 2 NFC : La révolution Aliro et Apple Wallet s\'invite sur votre porte ! 24 mars 2026. Aurélien Brunet. 5 min ...', '2026-03-25 05:01:04', 'Google Alerts - objets connectés'),
(13, 'Oura Ring 5 : Première fuite majeure sur le design et les nouveaux coloris - BlogNT', 'https://www.blog-nouvelles-technologies.fr/363045/oura-ring-5-fuites-design-date-sortie-capteurs-2027/', 'La bague connectée n\'est plus un gadget étrange ; c\'est un objet wearable qui cherche désormais l\'élégance, la discrétion et la précision. Oura semble ...', '2026-03-25 01:23:01', 'Google Alerts - objets connectés'),
(14, 'Près de la moitié de la capacité Internet internationale désormais exploitée - Tic Maroc', 'https://www.tic-maroc.com/2026/03/pres-de-la-moitie-de-la-capacite.html', '... objets connectés...) qui se répercutent progressivement sur la demande de capacité internationale. A mesure que le réseau évoluera vers une ...', '2026-03-25 00:28:38', 'Google Alerts - objets connectés'),
(15, 'Wall Street minée par le rebond du pétrole - TradingView', 'https://fr.tradingview.com/news/afp:d53e110df1a88:0/', 'Les routeurs sont les boîtiers dans chaque foyer qui connectent ordinateurs, téléphones et objets connectés à internet. ... Plus de produits.', '2026-03-24 22:28:02', 'Google Alerts - objets connectés'),
(16, '[#BonPlan] Les promos High-Tech du 25 mars - KultureGeek', 'https://kulturegeek.fr/news-349605/bonplan-promos-high-tech-25-mars-2026', '— Smartphones, accessoires et Objets connectés —. Pour un ... ➡️ Accessoires / objets connectés : Chargeur UGREEN Nexode – 65W, 3 ...', '2026-03-24 22:02:01', 'Google Alerts - objets connectés'),
(17, 'Delta met fin à la procédure accélérée au Congrès pour la TSA alors que la crise du ... - VisaHQ', 'https://www.visahq.com/fr/news/2026-03-24/us/delta-ends-congressional-fast-track-at-tsa-as-dhs-shutdown-turmoil-grows/', '... Les fouilles électroniques par la CBP augmentent de 17 % ; les objets connectés désormais concernés. mars 24 ...', '2026-03-24 21:19:50', 'Google Alerts - objets connectés'),
(18, 'Moyen-Orient: Wall Street reste sur la défensive - La Gazette France', 'https://www.lagazettefrance.fr/article/moyen-orient-wall-street-reste-sur-la-defensive', 'Les routeurs sont les boîtiers dans chaque foyer qui connectent ordinateurs, téléphones et objets connectés à internet. Le géant américain des ...', '2026-03-24 20:54:12', 'Google Alerts - objets connectés'),
(19, 'Microsoft Defender : l\'astuce simple pour le rendre aussi puissant qu\'un antivirus payant', 'https://www.jeuxvideo.com/news/2071151/microsoft-defender-l-astuce-simple-pour-le-rendre-aussi-puissant-qu-un-antivirus-payant.htm', '... objets connectés, les smartphones, les périphériques gaming, les jeux ... Pour aller encore plus loin, rendez-vous dans Sécurité des appareils ...', '2026-03-24 19:32:33', 'Google Alerts - objets connectés'),
(20, 'DELLA Vario Series 12000 BTU : l\'air conditionné connecté qui vise l\'efficacité énergétique -', 'https://www.planet-sansfil.com/wi-fi/della-vario-series-12000-btu/', 'Un choix cohérent pour les logements sans système centralisé. D\'autres produits de la marque : Aucun produit trouvé. Retrouver tous les articles de ...', '2026-03-24 19:24:35', 'Google Alerts - objets connectés'),
(21, 'Move & Connect s\'associe à KORE pour offrir une connectivité IdO paneuropéenne fluide ...', 'https://www.lelezard.com/communique-22162173.html', 'KORE Group Holdings, Inc. , l\'hyperscaler mondial de l\'internet des objets (« IdO ») et l\'un des principaux fournisseurs de connectivité IdO, ...', '2026-03-24 19:11:39', 'Google Alerts - objets connectés'),
(22, 'De smartphone à géant industriel : Xiaomi change d\'échelle - Servicesmobiles.fr', 'https://www.servicesmobiles.fr/de-smartphone-a-geant-industriel-xiaomi-change-dechelle-111042', 'L\'IA et les véhicules électriques boostent la croissance. Succès mondial pour smartphones, IoT et nouveaux segments. Une année de records pour Xiaomi ...', '2026-03-25 11:02:09', 'Google Alerts - IoT'),
(23, 'INTERA et Radiant Semiconductors s\'allient pour accélérer l\'IA embarquée et les semi-conducteurs', 'https://www.thd.tn/intera-et-radiant-semiconductors-sallient-pour-accelerer-lia-embarquee-et-les-semi-conducteurs/', '... IoT, l\'edge computing et l\'accélération de l\'IA. Annoncée le 23 mars 2026 à Barcelone, cette collaboration vise à combiner les expertises des deux ...', '2026-03-25 09:54:05', 'Google Alerts - IoT'),
(24, 'Investissements publics et priorités numériques à Hong Kong - Team France Export', 'https://www.teamfrance-export.fr/infos-sectorielles/40408/40408-investissements-publics-et-priorites-numeriques-a-hong-kong', '... IoT représentent un levier central pour la modernisation des infrastructures et des services publics. Dans le cadre du budget 2026‑2027, les ...', '2026-03-25 08:38:25', 'Google Alerts - IoT'),
(25, 'Synaptics étend Astra Edge AI avec les nouvelles séries SR80 et SRW1500 pour l\'audio ...', 'https://www.ecinews.fr/fr/synaptics-etend-astra-edge-ai-avec-les-nouvelles-series-sr80-et-srw1500-pour-laudio-premium-et-lintelligence-distribuee/', 'De nouveaux microcontrôleurs IA natifs pour l\'audio haut de gamme et les réseaux IoT intelligents Synaptics renforce sa position de leader dans ...', '2026-03-24 22:59:58', 'Google Alerts - IoT'),
(26, 'Satellites IoT : le chinois Geely vise le marché marocain', 'https://fr.hespress.com/465310-satellites-iot-le-chinois-geely-vise-le-marche-marocain.html', 'Le groupe chinois Zhejiang Geely Holding Group accélère son expansion dans les technologies spatiales en ciblant le Maroc.', '2026-03-24 22:23:56', 'Google Alerts - IoT'),
(27, 'Identiv signe un accord pour des étiquettes BLE avec IFCO - WIoT Group', 'https://wiot-group.com/think/fr/actualites/identiv-conclut-un-accord-pour-des-etiquettes-ble-avec-ifco/', 'Pour le marché de l\'IoT sans fil, ce partenariat montre que les étiquettes intelligentes BLE gagnent du terrain dans les déploiements à grande échelle ...', '2026-03-24 21:59:44', 'Google Alerts - IoT'),
(28, 'Cyberattaques : les 14 incidents majeurs du 24 mars 2026', 'https://dcod.ch/2026/03/24/cyberattaques-les-14-incidents-majeurs-du-24-mars-2026/', 'Les derniers articles. Représentation graphique d\'une attaque DDoS par botnets IoT montrant un écran ciblé par un · Botnets IoT : le DoJ démantèle ...', '2026-03-24 19:01:15', 'Google Alerts - IoT'),
(29, '2025 Annual Report Publication — TradingView News', 'https://www.tradingview.com/news/eqs:cacb30dc3094b:0-2025-annual-report-publication/', 'The Kudelski Group (SIX: KUD.S) is a world leader in core digital security technologies and solutions for media, cybersecurity and IoT. The Group ...', '2026-03-24 17:59:44', 'Google Alerts - IoT'),
(30, 'La solution iOT indispensable en 2026 : sécurité, supervision et performance des ...', 'https://larevuetech.fr/la-solution-iot-indispensable-en-2026-securite-supervision-et-performance-des-infrastructures-connectees/', 'L\'hyperviseur IoT est un logiciel de supervision centralisée permettant la gestion automatisée des objets connectés, optimisant la sécurité des ...', '2026-03-24 16:08:50', 'Google Alerts - IoT'),
(31, 'De l\'iot aux champs agricoles : pourquoi la carte sim m2m est devenue indispensable en ...', 'https://larevuetech.fr/de-l-iot-aux-champs-agricoles-pourquoi-la-carte-sim-m2m-est-devenue-indispensable-en-agriculture-moderne/', 'L\'agriculture ne joue plus à l\'ancienne. Oubliez le carnet froissé et le crayon mâchouillé, place à l\'intelligence connectée. Avec l\'iot en ...', '2026-03-24 16:08:47', 'Google Alerts - IoT'),
(32, 'Botnets IoT : le DoJ démantèle quatre réseaux derrière des DDoS records', 'https://dcod.ch/2026/03/24/doj-botnets-iot-ddos-records/', 'Le DOJ neutralise l\'infrastructure de trois millions d\'objets connectés piratés pour lancer des cyberattaques par DDoS atteignant les 30 terabits ...', '2026-03-24 16:06:17', 'Google Alerts - IoT'),
(33, 'Vieillissement de la population : la technologie peut-elle sauver notre modèle social ?', 'https://www.journaldunet.com/iot/1548893-vieillissement-de-la-population-la-technologie-peut-elle-sauver-notre-modele-social/', 'Face au vieillissement démographique, la téléassistance et l\'IoT s\'imposent comme des leviers clés. Mais la France reste à la traîne.', '2026-03-24 15:16:47', 'Google Alerts - IoT'),
(34, 'Électricité : l\'heure d\'une nouvelle ère tarifaire pour redonner du pouvoir aux consommateurs', 'https://www.journaldunet.com/iot/1548831-electricite-l-heure-d-une-nouvelle-ere-tarifaire-pour-redonner-du-pouvoir-aux-consommateurs/', 'IoT. Électricité : l\'heure d\'une nouvelle ère tarifaire pour redonner du pouvoir aux consommateurs. Willy Thao · Chronique de Willy Thao. Frank ...', '2026-03-24 15:16:44', 'Google Alerts - IoT'),
(35, 'Dictionnaire de l\'IoT', 'https://www.journaldunet.com/web-tech/dictionnaire-de-l-iot/', 'Botnet : Mirai, DDoS… quelles sont les attaques contre l\'IoT ? ... Domotique : quel rôle dans la maison ? Drone : à quel prix et pour quels besoins en ...', '2026-03-24 11:21:27', 'Google Alerts - IoT'),
(36, 'Fractus et Verizon parviennent à un accord dans leur litige en matière de brevets.', 'http://www.webdisclosure.com/article/fractus-etr-fractus-et-verizon-parviennent-a-un-accord-dans-leur-litige-en-matiere-de-brevets-ykWoP5aGfC0', 'Le litige portait essentiellement sur la technologie d\'antennes brevetée de Fractus, essentielle à la connectivité de l\'Internet des objets (IoT) ...', '2026-03-25 11:14:42', 'Google Alerts - internet des objets'),
(37, 'Une infrastructure moderne pour une école traditionnelle - Huawei', 'https://www.huawei.com/ch-fr/news/2026/3/ecolint', '... Internet des objets, etc.) ainsi que des appareils privés. Les défis et la recherche d\'un partenaire. En 2016, l\'Ecolint a entrepris de trouver une ...', '2026-03-25 11:02:12', 'Google Alerts - internet des objets'),
(38, 'PARIS : Supply Chain - 85 % des entreprises investissent dans la technologie pour leurs clients', 'https://presseagence.fr/paris-supply-chain-85-des-entreprises-investissent-dans-la-technologie-pour-leurs-clients/', '... Internet des objets (IoT) ou la robotisation (RPA) s\'ancrent durablement dans les stratégies. « Les organisations ne sont ni dans l\'enthousiasme ...', '2026-03-25 10:47:23', 'Google Alerts - internet des objets'),
(39, 'L\'UE avertit le Vietnam que les liens commerciaux entre Huawei et ZTE dans le domaine de ...', 'https://www.cryptopolitan.com/fr/eu-vietnam-huawei-zte-business-ties-for-5g/', 'Cette croissance est due à une augmentation de l\'utilisation des smartphones, des voitures, de l\'Internet des objets industriels et des systèmes de ...', '2026-03-24 22:46:34', 'Google Alerts - internet des objets'),
(40, 'Le groupe Adeo fait confiance à TCS et sa solution OmniStore™ pour réinventer l ...', 'https://www.tcs.com/fr-fr/qui-sommes-nous/newsroom/le-groupe-adeo-fait-confiance-a-tcs-et-sa-solution-omnistore--po', 'Internet des Objets (IoT) · Intelligence Artificielle · TCS Customer Intelligence & Insights™ · TCS ERP Cloud · ignio™ · TCS OmniStore™ · TCS Pace ...', '2026-03-24 22:10:49', 'Google Alerts - internet des objets'),
(41, 'Le groupe EPM choisit la plateforme SaaS de gestion des services sur le terrain d\'OverIT ...', 'https://www.lelezard.com/communique-22161345.html', ', l\'hyperscaler mondial de l\'internet des objets (« IdO ») et l\'un des principaux fournisseurs de connectivité IdO, annonce aujourd\'hui une ...', '2026-03-24 19:07:44', 'Google Alerts - internet des objets'),
(42, 'Le groupe Kudelski publie son rapport annuel 2025 - WebDisclosure', 'https://www.webdisclosure.com/article/kudelski-group-etr-le-groupe-kudelski-publie-son-rapport-annuel-2025-q6DnncnqCsX', 'Reconnu pour son expertise dans les médias, la cybersécurité et l\'Internet des objets ... You\'ll have access to summary articles written by us and ...', '2026-03-24 16:51:58', 'Google Alerts - internet des objets'),
(43, 'KORE Group Holdings, Inc. et Move & Connect scellent une alliance stratégique pour la ... - Bourse', 'https://ch.zonebourse.com/actualite-bourse/kore-group-holdings-inc-et-move-connect-scellent-une-alliance-strategique-pour-la-connectivite-i-ce7e5eddd088fe24', '... IoT spécialisé dans la connectivité gérée... -Le 24 mars 2026 à 13 ... Internet des objets. Palmarès. Palmarès Cotations. Variations Court Terme ...', '2026-03-24 13:08:42', 'Google Alerts - internet des objets'),
(44, 'Adsp Mtcs remporte l\'appel d\'offres pour le développement de l\'infrastructure DAS 5G - La Milano', 'https://lamilano.it/fr/par-les-m%C3%A9dias/ADSP-MTCS-remporte-l%27appel-d%27offres-pour-le-d%C3%A9veloppement-de-l%27infrastructure-DAS-5G/', '... Internet des objets (IoT) et à la gestion intelligente des flux. Le choix technologique retenu assure également la grande résilience de l ...', '2026-03-24 11:07:55', 'Google Alerts - internet des objets');
COMMIT;