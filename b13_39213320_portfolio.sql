SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `pub_date` datetime DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

TRUNCATE TABLE `articles`;
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
(16, '[#BonPlan] Les promos High-Tech du 25 mars - KultureGeek', 'https://kulturegeek.fr/news-349605/bonplan-promos-high-tech-25-mars-2026', '— Smartphones, accessoires et Objets connectés —. Pour un ... ?? Accessoires / objets connectés : Chargeur UGREEN Nexode – 65W, 3 ...', '2026-03-24 22:02:01', 'Google Alerts - objets connectés'),
(17, 'Delta met fin à la procédure accélérée au Congrès pour la TSA alors que la crise du ... - VisaHQ', 'https://www.visahq.com/fr/news/2026-03-24/us/delta-ends-congressional-fast-track-at-tsa-as-dhs-shutdown-turmoil-grows/', '... Les fouilles électroniques par la CBP augmentent de 17 % ; les objets connectés désormais concernés. mars 24 ...', '2026-03-24 21:19:50', 'Google Alerts - objets connectés'),
(18, 'Moyen-Orient: Wall Street reste sur la défensive - La Gazette France', 'https://www.lagazettefrance.fr/article/moyen-orient-wall-street-reste-sur-la-defensive', 'Les routeurs sont les boîtiers dans chaque foyer qui connectent ordinateurs, téléphones et objets connectés à internet. Le géant américain des ...', '2026-03-24 20:54:12', 'Google Alerts - objets connectés'),
(19, 'Microsoft Defender : l\'astuce simple pour le rendre aussi puissant qu\'un antivirus payant', 'https://www.jeuxvideo.com/news/2071151/microsoft-defender-l-astuce-simple-pour-le-rendre-aussi-puissant-qu-un-antivirus-payant.htm', '... objets connectés, les smartphones, les périphériques gaming, les jeux ... Pour aller encore plus loin, rendez-vous dans Sécurité des appareils ...', '2026-03-24 19:32:33', 'Google Alerts - objets connectés'),
(20, 'DELLA Vario Series 12000 BTU : l\'air conditionné connecté qui vise l\'efficacité énergétique -', 'https://www.planet-sansfil.com/wi-fi/della-vario-series-12000-btu/', 'Un choix cohérent pour les logements sans système centralisé. D\'autres produits de la marque : Aucun produit trouvé. Retrouver tous les articles de ...', '2026-03-24 19:24:35', 'Google Alerts - objets connectés'),
(21, 'Move & Connect s\'associe à KORE pour offrir une connectivité IdO paneuropéenne fluide ...', 'https://www.lelezard.com/communique-22162173.html', 'KORE Group Holdings, Inc. , l\'hyperscaler mondial de l\'internet des objets (« IdO ») et l\'un des principaux fournisseurs de connectivité IdO, ...', '2026-03-24 19:11:39', 'Google Alerts - objets connectés'),
(22, 'De smartphone à géant industriel : Xiaomi change d\'échelle - Servicesmobiles.fr', 'https://www.servicesmobiles.fr/de-smartphone-a-geant-industriel-xiaomi-change-dechelle-111042', 'L\'IA et les véhicules électriques boostent la croissance. Succès mondial pour smartphones, IoT et nouveaux segments. Une année de records pour Xiaomi ...', '2026-03-25 11:02:09', 'Google Alerts - IoT'),
(23, 'INTERA et Radiant Semiconductors s\'allient pour accélérer l\'IA embarquée et les semi-conducteurs', 'https://www.thd.tn/intera-et-radiant-semiconductors-sallient-pour-accelerer-lia-embarquee-et-les-semi-conducteurs/', '... IoT, l\'edge computing et l\'accélération de l\'IA. Annoncée le 23 mars 2026 à Barcelone, cette collaboration vise à combiner les expertises des deux ...', '2026-03-25 09:54:05', 'Google Alerts - IoT'),
(24, 'Investissements publics et priorités numériques à Hong Kong - Team France Export', 'https://www.teamfrance-export.fr/infos-sectorielles/40408/40408-investissements-publics-et-priorites-numeriques-a-hong-kong', '... IoT représentent un levier central pour la modernisation des infrastructures et des services publics. Dans le cadre du budget 2026?2027, les ...', '2026-03-25 08:38:25', 'Google Alerts - IoT'),
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
(44, 'Adsp Mtcs remporte l\'appel d\'offres pour le développement de l\'infrastructure DAS 5G - La Milano', 'https://lamilano.it/fr/par-les-m%C3%A9dias/ADSP-MTCS-remporte-l%27appel-d%27offres-pour-le-d%C3%A9veloppement-de-l%27infrastructure-DAS-5G/', '... Internet des objets (IoT) et à la gestion intelligente des flux. Le choix technologique retenu assure également la grande résilience de l ...', '2026-03-24 11:07:55', 'Google Alerts - internet des objets'),
(45, 'CYBERSÉCURITÉ : ARRÊTONS DE NOUS RACONTER DES HISTOIRES', 'https://www.solutions-numeriques.com/communiques/cybersecurite-arretons-de-nous-raconter-des-histoires/', 'Les infrastructures débordent désormais vers les prestataires, les partenaires, les objets connectés, les systèmes industriels. Mais nos réflexes ...', '2026-03-30 12:35:15', 'Google Alerts - objets connectés'),
(46, 'Messages chiffrés, appels vidéos : quelles nouveautés sur le RCS 4.0 ?', 'https://leclaireur.fnac.com/article/665082-messages-chiffres-appels-videos-quelles-nouveautes-sur-le-rcs-4-0/', 'Smartphones & Objets connectés · Photos, Caméras, Tirages Photo · Son ... Périphériques, accessoires et composants. •. 12H50. Le prix de la RAM ...', '2026-03-30 11:31:57', 'Google Alerts - objets connectés'),
(47, 'Euro-Office, cette nouvelle alternative à Microsoft Office - L\'Informaticien', 'https://www.linformaticien.com/magazine/biz-it/64659-euro-office-cette-nouvelle-alternative-a-microsoft-office-2.html', 'CRA : la chasse aux vulnérabilités des objets connectés est ouverte ... compatible, alternative à Microsoft Office, avec laquelle elle reste compatible.', '2026-03-30 11:15:29', 'Google Alerts - objets connectés'),
(48, 'Meta préparerait des lunettes connectées intégrant la correction de la vue - Begeek', 'https://www.begeek.fr/meta-preparerait-des-lunettes-connectees-integrant-la-correction-de-la-vue-430212', 'Selon des documents repérés par The Verge auprès de la Federal Communications Commission (FCC), ces deux produits, nommés en interne Scriber et Blazer ...', '2026-03-30 10:03:31', 'Google Alerts - objets connectés'),
(49, 'Ce pack Arlo avec 2 caméras 2K et une Floodlight 2K avec projecteurs chute sous les 250', 'https://www.frandroid.com/bons-plans/3040113_ce-pack-arlo-avec-2-cameras-2k-et-une-floodlight-2k-avec-projecteurs-chute-sous-les-250-e', 'Vous pourrez donc contrôler les appareils à la voix via une enceinte connectée compatible. Enfin, si vous avez souscrit l\'abonnement Secure IA pour la ...', '2026-03-30 09:49:53', 'Google Alerts - objets connectés'),
(50, 'Neuralink : un patient a réussi à jouer à World of Warcraft par la pensée - PaperGeek', 'https://www.papergeek.fr/neuralink-un-patient-a-reussi-a-jouer-a-world-of-warcraft-par-la-pensee-2471272/amp', 'Publié dans Jeux video, Objets connectés. L\'implant cérébral de Neuralink, qui permet une interface cerveau-ordinateur, est capable de bien des ...', '2026-03-30 07:53:54', 'Google Alerts - objets connectés'),
(51, 'HUAWEI WATCH GT Runner 2 : bien plus qu\'une montre de running - PhonAndroid', 'https://www.phonandroid.com/huawei-watch-gt-runner-2-bien-plus-quune-montre-de-running.html', 'Objets connectés · Smartphone · Télévision · Tutos · VPN · Cybersécurité · High ... Sous le capot, c\'est une antenne flottante 3D couplée à un ...', '2026-03-30 07:04:16', 'Google Alerts - objets connectés'),
(52, 'Désolé pour ceux qui l\'ont acheté au prix fort, le prix de cet iPhone 16 bat des records chez ...', 'https://www.bfmtv.com/tech/bons-plans/desole-pour-ceux-qui-l-ont-achete-au-prix-fort-le-prix-de-cet-i-phone-16-bat-des-records-chez-boulanger_AB-202603300008.html', 'Produits · Tests · Guides d ... Les technologies Bluetooth 5.3 et Wi-Fi 7 vous garantissent des liaisons stables et rapides avec les objets connectés ...', '2026-03-30 06:14:16', 'Google Alerts - objets connectés'),
(53, 'Apple prépare 2 nouvelles apps sur iPhone : un Siri façon chatbot pourrait arriver dès 2026', 'https://www.menow.fr/apple-prepare-2-nouvelles-apps-sur-iphone-un-siri-facon-chatbot-pourrait-arriver-des-2026/', '... Connect. Apple chercherait ainsi à regrouper ses briques professionnelles ... Smartphones, intelligence artificielle, logiciels, objets connectés ...', '2026-03-30 06:03:45', 'Google Alerts - objets connectés'),
(54, 'Les personnes qui utilisent l\'IA depuis des mois ont une caractéristique commune : elles sont', 'https://www.jeuxvideo.com/news/2072404/les-personnes-qui-utilisent-l-ia-depuis-des-mois-ont-une-caracteristique-commune-elles-sont-neurodivergentes-selon-cette-experte.htm', '... objets connectés, les smartphones, les périphériques gaming, les jeux de société et les LEGO. Autant dire que les journées sont chargées ! Si l ...', '2026-03-30 05:52:53', 'Google Alerts - objets connectés'),
(55, 'Paiement mobile et IA : la révolution des transactions financières - s2pmag', 'https://s2pmag.ch/paiement-mobile-et-ia-la-revolution-des-transactions-financieres/', 'L\'essor des objets connectés dans les transactions. Les objets connectés, tels que les montres intelligentes, participent également à cette révolution ...', '2026-03-30 05:23:25', 'Google Alerts - objets connectés'),
(56, 'Une conférence sur « Petit Pierre » - La République du Centre', 'https://www.larep.fr/saint-jean-de-la-ruelle-45140/loisirs/une-conference-sur-petit-pierre_14945573/', 'Curieux de nombreux sujets, de l\'intelligence artificielle aux objets connectés, il propose une douzaine de conférences, accompagnées d\'expositions, ...', '2026-03-30 05:04:06', 'Google Alerts - objets connectés'),
(57, 'Litter Robot 4 : la litière connectée qui promet la tranquillité… mais votre chat sera-t-il d\'accord', 'https://www.maison-et-domotique.com/168612-litter-robot-4-la-litiere-connectee-qui-promet-la-tranquillite-mais-votre-chat-sera-t-il-daccord/', 'La Litter Robot 4 fait partie de ces produits qui intriguent immédiatement. Une litière connectée, autonettoyante, capable de suivre la santé du chat ...', '2026-03-30 04:16:52', 'Google Alerts - objets connectés'),
(58, 'Il était une fois... ces drôles d\'objets Saison 1 - Episode 6 - CesoirTV', 'https://www.cesoirtv.com/programme/1102840346/il-etait-une-fois-ces-droles-d-objets.php', 'Mais les livres papier connaissent aujourd\'hui une autre menace : ils sont mis en péril par les tablettes et autres objets de lecture connectés...', '2026-03-29 22:24:44', 'Google Alerts - objets connectés'),
(59, 'Les DSI cherchent encore le bon équilibre entre accélération de la GenAI et maîtrise des risques', 'https://www.objetconnecte.com/les-dsi-cherchent-encore-le-bon-equilibre-entre-acceleration-de-la-genai-et-maitrise-des-risques/', 'Comment l\'IA booste la création de business d\'objets connectés ? Comment l\'IA booste la création de business autour des objets connectés ? L ...', '2026-03-29 20:35:32', 'Google Alerts - objets connectés'),
(60, 'Numerama, le média de référence sur la société numérique et l\'innovation technologique', 'https://www.numerama.com/video-item/revenir-sur-la-lune-na-jamais-ete-aussi-risque/page/2876/', 'tech objets connectés · Google a un projet d\'objet connecté qu\'il préfère ne pas confier à Nest. 25.03.2016 20:58.', '2026-03-29 20:28:19', 'Google Alerts - objets connectés'),
(61, 'Nuki Keypad 2 NFC : le sans contact appliqué à l\'habitat - objetconnecte.com', 'https://www.objetconnecte.com/nuki-keypad-2-nfc-serrure-connectee/', 'Compatible avec Matter et désormais avec la norme Aliro, il s\'intègre dans un écosystème plus large d\'objets connectés. Nuki fait ainsi le pari ...', '2026-03-29 20:24:33', 'Google Alerts - objets connectés'),
(62, 'Samsung a trouvé sa prochaine innovation pour concurrencer l\'iPhone Fold ? | MCETV', 'https://mcetv.ouest-france.fr/2026/samsung-a-trouve-sa-prochaine-innovation-pour-concurrencer-liphone-fold-2026/', 'Samsung: comment commander les objets connectés de sa maison depuis sa voiture ? · 25/03/2026 ; Samsung Galaxy A37 et A57: la date de lancement enfin ...', '2026-03-29 17:15:29', 'Google Alerts - objets connectés'),
(63, 'Ce kit de démarrage Philips Hue perd presque la moitié de son prix - Numerama', 'https://www.numerama.com/tech/2220691-ce-kit-de-demarrage-philips-hue-perd-presque-la-moitie-de-son-prix.html', 'Objets connectés · Maison connectée. Ce kit de démarrage Philips Hue perd presque la moitié de son prix. Un prix qui annonce la couleur.', '2026-03-29 15:57:06', 'Google Alerts - objets connectés'),
(64, 'Freebox Server : une mise à jour 4.9.18 qui améliore enfin l\'affichage des boîtiers', 'https://www.journaldufreenaute.fr/freebox-server-une-mise-a-jour-4-9-18-qui-ameliore-enfin-laffichage-des-boitiers/', 'Un mode veille protège enfin les afficheurs des Freebox; Une meilleure gestion des appareils connectés apparaît; Des bugs anciens sont corrigés, mais ...', '2026-03-29 15:03:25', 'Google Alerts - objets connectés'),
(65, 'Bisatel Telecom : Devenez opérateur marque blanche : SIM, eSIM et IoT en 24 heures', 'https://www.news-eco.com/communique/devenez-operateur-marque-blanche-sim-esim-et-iot-en-24-heures/', 'SIM classique, eSIM dématérialisée, connectivité IoT pour les objets industriels : l\'ensemble de la chaîne technique est désormais accessible sous ...', '2026-03-30 08:52:48', 'Google Alerts - IoT'),
(66, 'Mise en œuvre d\'applications IoT dans les transports intelligents en lien avec la planification ...', 'https://www.vietnam.vn/fr/trien-khai-ung-dung-iot-trong-giao-thong-thong-minh-gan-voi-quy-hoach-ha-tang-do-thi', 'L\'application de l\'Internet des objets (IoT) dans le secteur des transports est identifiée comme une plateforme d\'infrastructure intelligente ...', '2026-03-30 01:10:58', 'Google Alerts - IoT'),
(67, 'Applications d\'IA et d\'IoT pour aider les élèves atteints de TDAH - Vietnam.vn', 'https://www.vietnam.vn/fr/ung-dung-ai-va-iot-ho-tro-hoc-sinh-adhd-ky-vong-gop-phan-ren-luyen-thoi-quen-hoc-tap', '... (IoT). Le système fonctionne selon le principe du biofeedback combiné à l\'intelligence artificielle (IA) pour une analyse en temps réel. Il ...', '2026-03-29 12:07:58', 'Google Alerts - IoT'),
(68, 't42 IoT Tracking Solutions PLC - Investing.com', 'https://fr.investing.com/pro/AIM:TRAC/compare/TSX:IMP,TASE:ALAR,TASE:NICE,NASDAQCM:MYSZ,NASDAQCM:BMR,NASDAQGS:RDWR', 'Comprenez rapidement comment les performances financières de t42 IoT Tracking Solutions PLC se comparent à celles d\'autres entreprises ayant des ...', '2026-03-28 19:17:51', 'Google Alerts - IoT'),
(69, 'Lancement réussi du satellite IOD-2 pour préparer la navigation du futur - Petites Affiches', 'https://www.petitesaffiches.fr/politique,104/lancement-reussi-du-satellite-iod,41577.html', 'Parmi eux figurent les véhicules autonomes, l\'Internet des objets, les systèmes aériens et maritimes sans pilote, ou encore la synchronisation des ...', '2026-03-30 07:47:18', 'Google Alerts - internet des objets'),
(70, 'Réalité Augmentée : Un Retour sur Expérience pour des étudiants en Bachelor Universitaire ...', 'https://sti.eduscol.education.fr/si-ens-paris-saclay/ressources_pedagogiques/realite-augmentee-retour-sur-experience-pour-etudiants-bachelor-universitaire-de-technologie-geii', '... Informatique Industrielle), dans le cadre d\'une pédagogie par projet. ... Internet des objets, permettant aux étudiants de confronter leurs ...', '2026-03-30 07:34:10', 'Google Alerts - internet des objets'),
(71, 'Bouygues Telecom Business et Google s\'associent pour propulser les entreprises dans l\'ère ...', 'https://www.corporate.bouyguestelecom.fr/archives-communique-presse/bouygues-telecom-business-et-google-sassocient-pour-propulser-les-entreprises-dans-lere-de-la-data-5g-securisee/', '... IoT (Internet des Objets). L\'alliance du savoir-faire réseau de Bouygues Telecom, associé à l\'offre de smartphones Pixel de Google, permet aux ...', '2026-03-30 06:51:51', 'Google Alerts - internet des objets'),
(72, 'Le numérique, un levier de transformation durable - Horizons', 'https://www.horizons.dz/2026/03/le-numerique-un-levier-de-transformation-durable/', '... IoT ou l\'internet des objets et l\'éthique», détaille-t-il. Ainsi, il estime que dans un pays comme le nôtre, «les Salons IT ne sont pas de simples ...', '2026-03-29 22:55:13', 'Google Alerts - internet des objets'),
(73, 'Claude Mythos : inquiétudes en cyber sécurité dues au modèle d\'IA le plus avancé d\'Anthropic', 'https://www.larevuedudigital.com/claude-mythos-inquietudes-en-cyber-securite-dues-au-modele-dia-le-plus-avance-danthropic/', '... Objets connectés · Big Data · Social. Informatique. DSI · Sécurité · IT · Internet des objets · Intelligence artificielle · Big Data · Projet Agilité ...', '2026-03-29 19:08:39', 'Google Alerts - internet des objets'),
(74, 'Schneider Electric rejoint le conseil d\'administration du Thread Group - Business Wire', 'https://www.businesswire.com/news/home/20260331077001/fr', '... IoT, les terminaux mobiles et Internet. Basé sur le protocole IP ... IOT (Internet of Things) · Residential Building & Real Estate · Thread ...', '2026-03-31 17:45:54', 'Google Alerts - Internet of Things'),
(75, 'Acquisition d\'objets connectés agricoles, de dispositif anti-inondation et destruction de nids ...', 'https://www.lavenir.net/regions/wallonie-picarde/pecq/2026/04/01/acquisition-dobjets-connectes-agricoles-de-dispositif-anti-inondation-et-destruction-de-nids-de-frelons-les-nouvelles-primes-pour-les-pecquois-PQ4C4BYJJ5E7PPGBLC76QV44I4/', 'Objets connectés pour l\'agriculture. La première concerne les agriculteurs. Elle sera octroyée à ceux qui font le choix d\'investir dans des objets ...', '2026-04-01 06:03:40', 'Google Alerts - objets connectés'),
(76, 'WhatsApp arrive enfin sur l\'écran de votre voiture, et ça change beaucoup plus que prévu', 'https://www.automobile-magazine.fr/toute-l-actualite/article/51492-whatsapp-arrive-enfin-sur-lecran-de-votre-voiture-et-ca-change-beaucoup-plus-que-prevu', '... objets connectés, avec notamment une application pour Garmin et un support renforcé sur d\'autres appareils Apple comme l\'iPad ou l\'Apple Watch. Le ...', '2026-04-01 04:56:54', 'Google Alerts - objets connectés'),
(77, 'Home Assistant 2026.4 : Tout ce qu\'il faut savoir sur la mise à jour d\'avril - Domo-blog.fr', 'https://www.domo-blog.fr/home-assistant-2026-4-tout-ce-quil-faut-savoir-sur-la-mise-a-jour-davril/', 'La bonne nouvelle, c\'est qu\'il est possible de rendre tous ces appareils intelligents en exploitant le canal infrarouge. C\'est là que la magie de la ...', '2026-04-01 04:00:57', 'Google Alerts - objets connectés'),
(78, 'Choice Day AliExpress : les offres à ne pas rater en avril 2026 - PhonAndroid', 'https://www.phonandroid.com/choice-day-aliexpress-offres-pas-rater.html', 'C\'est le moment idéal pour réaliser d\'importantes économies sur vos achats. Smartphones, tablettes, objets connectés… les promotions affluent dans de ...', '2026-04-01 00:54:15', 'Google Alerts - objets connectés'),
(79, 'Garmin Enduro 3 : la boussole de l\'endurance perd 150 € de son prix aujourd\'hui', 'https://www.frandroid.com/bons-plans/2935199_garmin-enduro-3-la-boussole-de-lendurance-perd-150-euros-de-son-prix-aujourdhui', 'Le meilleur des Bons plans objets connectés · Garmin Enduro 3 : la boussole de ...', '2026-03-31 21:50:24', 'Google Alerts - objets connectés'),
(80, 'Le Dr Tr?n V?n Xuân et sa quête pour comprendre le cerveau humain - Tatler Asia', 'https://www.tatlerasia.com/power-purpose/innovation/interview-with-dr-tran-van-xuan-fr', 'Les appareils connectés intelligents à coût raisonnable comme ceux de Brain-Life devraient contribuer à accélérer le processus de numérisation de la ...', '2026-03-31 20:28:15', 'Google Alerts - objets connectés'),
(81, 'Comment l\'IA a permis de démasquer un informaticien nord-coréen malveillant | LeMagIT', 'https://www.lemagit.fr/actualites/366640863/Comment-lIA-a-permis-de-demasquer-un-informaticien-nord-coreen-malveillant', 'Correctifs : les (mauvaises) raisons de leur non-application · Contourner l\'EDR ? Miser sur des objets connectés non supervisés · Fortinet : ...', '2026-03-31 18:34:56', 'Google Alerts - objets connectés'),
(82, 'AT&T lance un abonnement unique pour le mobile et l\'internet fixe - Investing.com', 'https://fr.investing.com/news/company-news/att-lance-un-abonnement-unique-pour-le-mobile-et-linternet-fixe-93CH-3339950', '... objets connectés avec l\'internet fibre domestique via un seul abonnement. Les clients peuvent connecter plusieurs appareils pour un tarif ...', '2026-03-31 18:03:05', 'Google Alerts - objets connectés'),
(83, 'un an après son lancement en France, comment Tiktok Shop a bouleversé l\'e-commerce - BFM', 'https://www.bfmtv.com/tech/actualites/reseaux-sociaux/on-n-est-plus-dans-un-commerce-de-recherche-mais-dans-un-commerce-de-decouverte-un-an-apres-son-lancement-en-france-comment-tiktok-shop-a-bouleverse-l-e-commerce_AV-202603310635.html', 'Produits. Toute l\'actu Produits · Tests produits · Nouveautés produits · Smartphone · Objets connectés · Console de jeux · TV & HiFi · Ordinateur ...', '2026-03-31 17:57:56', 'Google Alerts - objets connectés'),
(84, 'PS5 Slim, Garmin Enduro 3 et vidéoprojecteur 4K : voici les meilleures promos high?tech du jour', 'https://www.frandroid.com/bons-plans/3047573_garmin-enduro-3-ps5-slim-et-videoprojecteur-4k-optoma-les-meilleures-promos-high-tech-du-jour', 'Pour aller plus loin. Si vous cherchez d\'autres produits haut?de?gamme à prix cassé, consultez aussi nos bons plans objets connectés pour les montres ...', '2026-03-31 17:04:12', 'Google Alerts - objets connectés'),
(85, 'Une IA physique décentralisée et autonome « ??sans le cloud » ? Avec SiMa.ai - Xpert.Digital', 'https://xpert.digital/fr/ia-physique-autonome-mnetle5y/', 'En ce qui concerne les moteurs de croissance, on peut distinguer trois forces principales : premièrement, la prolifération rapide des objets connectés ...', '2026-03-31 17:00:28', 'Google Alerts - objets connectés'),
(86, 'Toutes les IA échouent à ce test d\'humanité - Numerama', 'https://www.numerama.com/tech/2222071-toutes-les-ia-echouent-a-ce-test-dhumanite.html', 'tech objets connectés maison connectée · Ce kit de démarrage Philips Hue perd presque la moitié de son prix. 29.03.2026 17:53. Ne plus voir cette pub.', '2026-03-31 16:56:46', 'Google Alerts - objets connectés'),
(87, 'Verres correcteurs, monture plus fine : Ray-Ban lance de nouvelles lunettes Meta ...', 'https://www.presse-citron.net/verres-correcteurs-monture-plus-fine-ray-ban-lance-de-nouvelles-lunettes-meta-connectees-a-499/', 'Objets connectés. Verres correcteurs, monture plus fine : Ray-Ban lance de nouvelles lunettes Meta connectées à 499 $. Meta lance des versions plus ...', '2026-03-31 16:55:54', 'Google Alerts - objets connectés'),
(88, 'PayPal est désormais disponible sur SNCF Connect à partir de 30 € - La Revue du Digital', 'https://www.larevuedudigital.com/paypal-est-desormais-disponible-sur-sncf-connect-a-partir-de-30-e/', '... objets · Objets connectés · impression 3D · Réalité hybride. Management ... Lancé en janvier 2022, SNCF Connect évolue notamment avec la communauté ...', '2026-03-31 16:47:18', 'Google Alerts - objets connectés'),
(89, 'La batterie externe UGREEN Nexode 145W Qi2 de 20000mAh passe à prix cassé !', 'https://www.phonandroid.com/la-batterie-externe-ugreen-nexode-145w-qi2-de-20000mah-passe-a-prix-casse.html', 'Objets connectés · Smartphone · Télévision · Tutos · VPN · Cybersécurité · High ... Avec une puissance totale allant jusqu\'à 145W, vous avez la ...', '2026-03-31 16:09:00', 'Google Alerts - objets connectés'),
(90, '6G : ce que villes et services numériques vont devoir changer - Equinox Magazine', 'https://www.equinoxmagazine.fr/2026/03/31/6g-et-villes-connectees-ce-que-le-prochain-reseau-va-vraiment-transformer/', 'Les standards d\'interface, les protocoles de communication entre objets connectés et les modèles de traitement des données se décident maintenant.', '2026-03-31 15:57:28', 'Google Alerts - objets connectés'),
(91, 'La médecine 4.0, révolution silencieuse du soin par le numérique', 'https://www.lecourrierdelatlas.com/medecine-4-0-sante-numerique-intelligence-artificielle/', 'Du bloc opératoire robotisé aux objets connectés, la médecine 4.0, portée par la santé numérique et l\'intelligence artificielle en santé, bouleverse ...', '2026-03-31 15:36:06', 'Google Alerts - objets connectés'),
(92, 'Alcyconie prépare aux crises cyber - L\'1FO Tech par L\'Informaticien - L\'Informaticien', 'https://www.linformaticien.com/magazine/cybersecurite/64672-alcyconie-prepare-aux-crises-cyber.html', '... objets connectés est ouverte · Quand les deepfakes piratent la confiance · Ransomware : les jours d\'après · Cybersécurité · Alcyconie prépare aux ...', '2026-03-31 15:16:52', 'Google Alerts - objets connectés'),
(93, 'Ce lot de 4 traceurs d\'objet à moins de 20 € met Apple et ses AirTag hors jeu - MacPlus', 'https://www.macplus.net/depeche-263671-bon-plan-4-traceurs-objet-moins-20-euros', 'Que vaut ce traceur ? Les Smart Air Tag d\'Aowoka sont de petits traceurs d\'objet connectés qui permettent de géolocaliser facilement les objets qui ...', '2026-03-31 15:10:47', 'Google Alerts - objets connectés'),
(94, 'Engwe Zip : ce vélo électrique urbain pliant va faire mal à la concurrence', 'https://www.commentcamarche.net/maison/objets-connectes/36935-engwe-zip/', 'Plus étonnant encore, elle dispose d\'une prise USB-C compatible avec la norme PowerDelivery 3.0 pour alimenter des appareils externes en cas de besoin ...', '2026-03-31 14:37:51', 'Google Alerts - objets connectés'),
(95, 'La commune de Blaincourt-sur-Aube déploie le réseau LoRa pour faciliter les transmissions ...', 'https://www.lest-eclair.fr/id797599/article/2026-04-01/la-commune-de-blaincourt-sur-aube-deploie-le-reseau-lora-pour-faciliter-les', 'LoRa est un système de communication sans fil dédiée à l\'Internet des objets (IoT). Il permettra notamment de relever automatiquement les ...', '2026-04-01 06:43:26', 'Google Alerts - IoT'),
(96, 'La Türkiye lance son deuxième satellite LUNA pour les services IoT spatiaux - AZERTAC', 'https://azertag.az/fr/xeber/la_turkiye_lance_son_deuxieme_satellite_luna_pour_les_services_iot_spatiaux-4097539', '... (IoT) basé dans l\'espace. Dans un communiqué publié sur la plateforme américaine X, l\'entreprise a indiqué poursuivre le renforcement de sa ...', '2026-04-01 01:47:57', 'Google Alerts - IoT'),
(97, 'Meet the Inventor, Episode 1: IDEMIA Sphere HSM - Aerocontact.com', 'https://www.aerocontact.com/videos/147073-meet-the-inventor-episode-1-idemia-sphere-hsm', 'LES AUTRES VIDEOS IDEMIA. langue fr. MWC Las ...', '2026-03-31 22:58:32', 'Google Alerts - IoT'),
(98, 'TOUFIK HANTABLI, DG D\'ALGÉRIE TÉLÉCOM SATELLITE À HORIZONS', 'https://www.horizons.dz/2026/03/toufik-hantabli-dg-dalgerie-telecom-satellite-a-horizons/', 'Toufik Hantabli, DG d\'Algérie Télécom Satellite, affirme que «l\'usine IoT SAT, un apport pour notre souveraineté numérique».', '2026-03-31 18:44:25', 'Google Alerts - IoT'),
(99, 'La Türkiye lance son deuxième satellite LUNA pour les services IoT spatiaux', 'https://www.aa.com.tr/fr/monde/la-turkiye-lance-son-deuxi%C3%A8me-satellite-luna-pour-les-services-iot-spatiaux/3885913', 'Le lancement d\'Aselsan marque une nouvelle étape dans le programme IoT spatial de l\'entreprise, après la mise en orbite du premier satellite LUNA ...', '2026-03-31 18:01:02', 'Google Alerts - IoT'),
(100, 'Il ne paie aucun impôt sur la succession en faisant un don de 80 000 euros à son fils', 'https://www.journaldunet.com/patrimoine/finances-personnelles/1549111-hf1-impot-heritage-compte-titre/', 'Notre investisseur a donc réalisé une plus-value de 60 000 euros. S\'il décide de vendre ses titres, il devra payer la flat tax. Cet impôt correspond à ...', '2026-03-31 18:00:39', 'Google Alerts - IoT'),
(101, 'L\'INSEE dévoile le taux d\'inflation en France - AZERTAC', 'https://azertag.az/fr/xeber/linsee_devoile_le_taux_d_039inflation_en_france-4097003', '... IoT spatiaux. 31.03.2026 [14:39]. La Türkiye lance son deuxième satellite LUNA pour les services IoT spatiaux · Succès du vol inaugural du drone ...', '2026-03-31 13:40:30', 'Google Alerts - IoT'),
(102, 'Mavenir reçoit le Prix d\'honneur du président lors des Satellite Mobile Innovation Awards ...', 'https://www.ledevoir.com/communiques-de-presse/968180/mavenir-recoit-prix-honneur-president-lors-satellite-mobile-innovation-awards-2026-msua', 'L\'entreprise s\'est imposée comme un acteur de premier plan dans ce domaine en réalisant avec succès le premier appel voix sur NB-IoT via une ...', '2026-03-31 13:10:13', 'Google Alerts - IoT'),
(103, 'Statut du bailleur privé : comprendre le nouveau mécanisme fiscal issu du dispositif jeanbrun', 'https://www.europe-infos.fr/actualites/8423/statut-du-bailleur-prive-comprendre-le-nouveau-mecanisme-fiscal-issu-du-dispositif-jeanbrun/', '5.2 En quoi l\'amortissement fiscal diffère-t-il d\'une réduction d\'impôt classique ? 5.3 Peut-on revendre son bien avant la fin de la période d\' ...', '2026-03-31 07:40:54', 'Google Alerts - IoT'),
(104, 'Espace : lancement de cinq microsatellites grecs supplémentaires - Yahoo Actualités', 'https://fr.news.yahoo.com/espace-lancement-cinq-microsatellites-grecs-113119033.html', '... Internet des objets (IoT) depuis l\'espace. Publicité. Publicité ... Ces derniers se concentrent sur la connectivité optique sécurisée par satellite et ...', '2026-03-31 11:58:32', 'Google Alerts - internet des objets'),
(105, 'Espace : lancement de cinq microsatellites grecs supplémentaires - Euronews.com', 'https://fr.euronews.com/2026/03/31/espace-lancement-de-cinq-microsatellites-grecs-supplementaires', '... Internet des objets (IoT) depuis l\'espace. Parallèlement, le même lancement incluait trois autres cubesatters expérimentaux, ERMIS-3, PeakSat et ...', '2026-03-31 11:31:51', 'Google Alerts - internet des objets'),
(106, 'Atos se dote d\'un pôle de renseignement sur les cybermenaces | Zonebourse Suisse', 'https://ch.zonebourse.com/actualite-bourse/atos-se-dote-d-un-pole-de-renseignement-sur-les-cybermenaces-ce7e51dedb80f320', '... articles · Actualités les plus lues · Actualités qui impactent · Business ... Internet des objets · Affreux, Sales et Méchants · Métavers · Palmarès.', '2026-03-31 11:23:58', 'Google Alerts - internet des objets'),
(107, 'Free Mobile promet la “révolution” ce mardi 31 mars : à quoi s\'attendre ? - Les Numériques', 'https://www.lesnumeriques.com/telephone-portable/free-mobile-promet-la-revolution-ce-mardi-31-mars-suivez-le-live-en-direct-n253718.html', '... Internet des objets. Available: 336x280, 300x250, 300x600, 320x480, 160x600, 120x600. 300x600. La piste satellitaire, séduisante sur le papier ...', '2026-03-31 10:01:58', 'Google Alerts - internet des objets'),
(108, 'La Türkiye renforce son indépendance spatiale grâce à de nouveaux lancements de satellites', 'https://www.trtfrancais.com/article/e89cce810e1c/amp', '... Internet des objets (IoT) spatial. Le satellite est conçu pour assurer ... L\'entreprise a indiqué que le lancement de LUNA-2 devrait renforcer ses ...', '2026-03-31 09:06:42', 'Google Alerts - internet des objets'),
(109, 'Free mobile lance le roaming illimité : faut-il craquer ? - Les Smart Grids', 'https://les-smartgrids.fr/free-mobile-lance-le-roaming-illimite-faut-il-craquer/', 'Objets connectés · Claude Mythos fuite avant son lancement, pourquoi ... Objets connectés · Netflix : la hausse des prix aux États-Unis arrive-t ...', '2026-04-01 07:20:16', 'Google Alerts - objets connectés'),
(110, 'Fin du réseau 2G en France : quels départements concernés en 2026 ? - Selectra', 'https://selectra.info/telecom/actualites/marche/recapitulatif-departements-concernes-arret-reseau-2g-en-2026', '... objets connectés. La technologie 2G est progressivement abandonnée au profit de réseaux plus récents et performants (4G/5G). En 2026, les ...', '2026-04-01 06:45:25', 'Google Alerts - objets connectés'),
(111, 'IA & Cybersécurité : les 9 actus clés du 1 avr 2026', 'https://dcod.ch/2026/04/01/ia-cybersecurite-les-9-actus-cles-du-1-avr-2026/', 'En Chine, des lunettes connectées Rokid intégrant de l\'intelligence ... objets connectés dopés à l\'IA. Un incident de configuration dans le ...', '2026-04-01 06:02:20', 'Google Alerts - objets connectés'),
(112, 'Adieu la 2G : Orange commence son grand ménage, voici ce qu\'il faut savoir - Frandroid', 'https://www.frandroid.com/telecom/3048039_adieu-la-2g-orange-commence-son-grand-menage-voici-ce-quil-faut-savoir', 'C\'est la colonne vertébrale de millions d\'objets connectés qui gèrent notre quotidien. On parle des ascenseurs, des alarmes de maison, des ...', '2026-04-01 04:20:58', 'Google Alerts - objets connectés'),
(113, 'L\'Etat se tourne résolument vers le Cloud - L\'INFORMATICIEN & L\'INFO CYBER-RISQUES', 'https://www.linformaticien.com/magazine/cloud/64673-l-etat-se-tourne-resolument-vers-le-cloud.html', '... objets connectés est ouverte · Quand les deepfakes piratent la confiance · Ransomware : les jours d\'après · Cloud · L\'Etat se tourne résolument vers ...', '2026-03-31 21:37:05', 'Google Alerts - objets connectés'),
(114, 'Xiaomi lance un nouveau chauffe-eau électrique intelligent d\'une capacité de 60 litres', 'https://www.notebookcheck.biz/Xiaomi-lance-un-nouveau-chauffe-eau-electrique-intelligent-d-une-capacite-de-60-litres.1285099.0.html', 'Smart Home Internet of Things (IoT). loading failed! 4. loading failed! Critiques. ? exclude selected types. ? exclude selected tags. Le chauffe-eau ...', '2026-04-29 13:04:26', 'Google Alerts - Internet of Things'),
(115, 'Dreame lance un nouveau climatiseur portable intelligent - NotebookCheck.biz News', 'https://www.notebookcheck.biz/Dreame-lance-un-nouveau-climatiseur-portable-intelligent.1285115.0.html', 'Smart Home Internet of Things (IoT). loading failed! 4. loading failed! Critiques. ? exclude selected types. ? exclude selected tags. Dreame a ...', '2026-04-29 13:03:50', 'Google Alerts - Internet of Things'),
(116, 'Elle fabrique déjà pour Exotrail ou Luniwave : avec son usine reconfigurable, la start-up ...', 'https://www.usinenouvelle.com/auvergne-rhone-alpes/elle-fabrique-deja-pour-exotrail-ou-luniwave-avec-son-usine-reconfigurable-la-start-up-faactopi-sadapte-aux-produits-de-ses-clients-en-trois-mois.4U3EC7VITNAR7LYDU4ALQYKSSI.html', 'Elle a déjà des clients dans le spatial et les objets connectés. Stéphane Frachet. Publié le 29 avril 2026 à 07h30. Partager.', '2026-04-30 07:02:46', 'Google Alerts - objets connectés'),
(117, 'French Days : Amazon lance une sélection d\'offres XXL sur ces incontournables high tech', 'https://www.bfmtv.com/tech/bons-plans/french-days-amazon-lance-une-selection-d-offres-xxl-sur-ces-incontournables-high-tech_AB-202604300011.html', 'Objets connectés · Console de jeux · TV & HiFi · Ordinateur · Son · Photo & Vidéo ... objets connectés ou encore appareils photo ; tout y passe ! Vous ...', '2026-04-30 06:25:14', 'Google Alerts - objets connectés'),
(118, 'L\'edito Hebdo du jeudi 30 avril 2026 - TICpharma', 'https://www.ticpharma.com/Edito?id=3232', 'Le magazine 60 millions de consommateurs s\'est penché, dans son numéro de mai, sur les promesses faites par les fabricants d\'objets connectés aux 17 ...', '2026-04-30 06:07:19', 'Google Alerts - objets connectés'),
(119, 'Une première mondiale à Disneyland Paris : découvrez les secrets technologiques derrière Olaf', 'https://www.rtl.be/people/rtl-inside/documentaires/une-premiere-mondiale-disneyland-paris-decouvrez-les-secrets-technologiques/2026-04-30/article/787300', 'Dans les coulisses de Disney Adventure World, la magie ne doit rien au hasard. Robots, intelligence artificielle et objets connectés : pour donner ...', '2026-04-30 05:32:33', 'Google Alerts - objets connectés'),
(120, 'Marre de payer trop cher votre box ? Bouygues Telecom casse les prix avec sa B&YOU ... - Ariase', 'https://www.ariase.com/box/actualite/marre-de-payer-trop-cher-votre-box-bouygues-telecom-casse-les-prix-avec-sa-b-you-pure-fibre-plus-a-seulement-25-99', '... appareils qui s\'y connectent. Dans un foyer avec 10, 15 ou 20 appareils connectés simultanément (smartphones, tablettes, Smart TV, objets connectés ...', '2026-04-29 21:00:52', 'Google Alerts - objets connectés'),
(121, 'IA dans la santé : et si le vrai défi était l\'organisation des soins - lebigdata.fr', 'https://www.lebigdata.fr/ia-dans-la-sante-et-si-le-vrai-defi-etait-lorganisation-des-soins', 'Des bornes de check-up en pharmacie ou des objets connectés du quotidien permettent aussi de relever en temps réel des données essentielles comme ...', '2026-04-29 20:35:19', 'Google Alerts - objets connectés');
INSERT INTO `articles` (`id`, `title`, `link`, `description`, `pub_date`, `source`) VALUES
(122, 'Withings Sleep Analyzer : -20% sur le capteur de sommeil chez Fnac et Darty - Frandroid', 'https://www.frandroid.com/bons-plans/3080529_pour-les-french-days-2026-lanalyseur-de-sommeil-withings-se-retrouve-en-promo-a-20-pour-surveiller-vos-nuits', 'Vous pouvez retrouver une petite présentation du Withings Sleep Analyzer et d\'autres objets connectés et applications pour mieux dormir dans notre ...', '2026-04-29 19:19:18', 'Google Alerts - objets connectés'),
(123, 'ChatGPT s\'amuse à dire qu\'il a résolu une énigme sur laquelle il passait pour un idiot - Numerama', 'https://www.numerama.com/tech/2243197-chatgpt-samuse-a-dire-quil-a-resolu-une-enigme-sur-laquelle-il-passait-pour-un-idiot.html', 'tech objets connectés maison connectée · La promotion sur ce ventilateur de Rowenta arrive en même temps que la chaleur. 27.04.2026 16:55. Ne plus ...', '2026-04-29 18:16:35', 'Google Alerts - objets connectés'),
(124, 'French Days Dreame : jusqu\'à 300 € de remise sur les robots aspirateurs, les Air Fryer et les ...', 'https://www.tomsguide.fr/french-days-dreame-jusqua-300-e-de-remise-sur-les-robots-aspirateurs-les-air-fryer-et-les-robots-tondeuses/', 'À l\'occasion des French Days 2026, Dreame, l\'un des leaders mondiaux des appareils intelligents pour la maison, lance une sélection de promotions ...', '2026-04-29 16:33:35', 'Google Alerts - objets connectés'),
(125, 'Verimatrix : Mise à disposition du document d\'enregistrement universel 2025', 'https://fr.finance.yahoo.com/actualites/verimatrix-mise-%C3%A0-disposition-document-154500553.html', 'Verimatrix (Euronext Paris : VMX) contribue à rendre plus sûr le monde connecté ... Verimatrix protège les contenus, les applications et les objets ...', '2026-04-29 16:05:26', 'Google Alerts - objets connectés'),
(126, '4 manières dont l\'IA a modifié notre usage d\'Internet - Rotek', 'https://rotek.fr/4-manieres-dont-lia-a-modifie-notre-usage-dinternet/', 'Les objets connectés bardés d\'IA ont envahi nos habitats à la vitesse ... appareils connectés et mise en place d\'un routeur VPN. Ce dernier a ...', '2026-04-29 15:59:39', 'Google Alerts - objets connectés'),
(127, 'Verimatrix : Mise à disposition du document d\'enregistrement universel 2025', 'https://www.businesswire.com/news/home/20260429355490/fr', 'Verimatrix protège les contenus, les applications et les objets connectés ... connecté plus sûr, publie le chiffre d\'affaires du premier ...', '2026-04-29 15:48:05', 'Google Alerts - objets connectés'),
(128, 'Watch Fit 5 Pro : Huawei glisse du titane et du saphir sous les 300 € - Winkco', 'https://www.winkco.news/style/montres/montres-connectees-huawei-watch-fit-5-pro-prix-france-2026/', 'La marque chinoise, chassée du marché des smartphones européens par les sanctions américaines, s\'est réfugiée dans les objets connectés et elle est ...', '2026-04-29 14:48:19', 'Google Alerts - objets connectés'),
(129, 'La Garmin Forerunner 265 à -19 % : l\'écran AMOLED et le GPS double fréquence à moins ...', 'https://www.futura-sciences.com/conso/bons-plans/guides-objets-connectes-garmin-forerunner-265-19-ecran-amoled-gps-double-frequence-moins-280-cest-affaire-9866/', 'Découvrez les comparatifs et guides d\'achats objets connectés · Les meilleures montres connectées 2026 · Les meilleures montres GPS 2026 · Les meilleurs ...', '2026-04-29 14:24:26', 'Google Alerts - objets connectés'),
(130, 'Près de la moitié des produits Shein, Temu et AliExpress jugés \"dangereux\", 100 000 objets ...', 'https://actu.orange.fr/france/pres-de-la-moitie-des-produits-shein-temu-et-aliexpress-juges-dangereux-100-000-objets-retires-de-la-vente-magic-CNT000002oWJa7.html', 'Orange TV sur les écrans connectés · Orange TV sur mobiles et tablettes · Rendre votre matériel. Les objets connectés et fixes. Objets connectés ...', '2026-04-29 13:58:22', 'Google Alerts - objets connectés'),
(131, 'Google Gemini a deux nouvelles armes en France pour piquer les utilisateurs de ChatGPT', 'https://www.numerama.com/tech/2243125-google-gemini-a-deux-nouvelles-armes-en-france-pour-piquer-les-utilisateurs-de-chatgpt.html', 'tech objets connectés maison connectée · La promotion sur ce ventilateur de Rowenta arrive en même temps que la chaleur. 27.04.2026 16:55. La revanche ...', '2026-04-29 13:42:49', 'Google Alerts - objets connectés'),
(132, 'French Tech : Faactopi, la start-up qui construit une usine modulable - Les Echos', 'https://www.lesechos.fr/start-up/deals/french-tech-faactopi-la-start-up-qui-construit-une-usine-modulable-2229209', '... a déjà trouvé des clients dans le spatial et les objets connectés.', '2026-04-29 13:37:20', 'Google Alerts - objets connectés'),
(133, 'Le futur patron d\'Apple promet de \"changer le monde\", voici comment - La Libre - LaLibre.be', 'https://www.lalibre.be/economie/entreprises-startup/2026/04/29/le-futur-patron-dapple-promet-de-changer-le-monde-voici-comment-KMFPMOZNOZE43BRWZFYSJVNK4U/', 'iPhone pliable, objets connectés, intelligence artificielle… John Ternus, qui prendra ses fonctions en septembre, dévoile les premières pistes de ...', '2026-04-29 13:37:18', 'Google Alerts - objets connectés'),
(134, 'Une faille des puces Qualcomm permet de pirater votre smartphone en quelques minutes ...', 'https://www.01net.com/actualites/faille-puces-qualcomm-permet-pirater-smartphone-quelques-minutes-etes-vous-touche.html', 'Quels smartphones sont vulnérables ? Les puces sont en fait omniprésentes dans les smartphones, tablettes, objets connectés ou encore dans certains ...', '2026-04-29 12:37:33', 'Google Alerts - objets connectés'),
(135, 'IFTTT : les nouveautés d\'avril 2026 misent sur l\'automatisation du quotidien et la ...', 'https://www.planet-sansfil.com/wi-fi/ifttt-les-nouveautes-davril-2026-misent-sur-lautomatisation-du-quotidien-et-la-productivite-connectee/', 'C\'est une plateforme permettant de connecter des applications et objets via des automatisations simples appelées Applets. Les nouveautés d\'avril 2026 ...', '2026-04-29 11:18:39', 'Google Alerts - objets connectés'),
(136, 'Alcatel-Lucent Enterprise transforme le câblage cuivre en support des communications IP et ...', 'https://itsocial.fr/cloud-infrastructure-it/cloud-infrastructure-it-actualites/alcatel-lucent-enterprise-transforme-le-cablage-cuivre-en-support-des-communications-ip-et-de-liot-sans-recablage/', 'Convergence IT/OT et connectivité IoT sans infrastructure dédiée. Au-delà de la voix et de la mobilité DECT, ALE positionne le SPE comme un vecteur d\' ...', '2026-04-30 07:02:21', 'Google Alerts - IoT'),
(137, 'Un nouvel écran domestique intelligent avec microphone et haut-parleur prend en charge Matter', 'https://www.notebookcheck.biz/Un-nouvel-ecran-domestique-intelligent-avec-microphone-et-haut-parleur-prend-en-charge-Matter.1286165.0.html', 'Smart Home Launch Internet of Things (IoT). loading failed! 4. loading failed! Critiques. ? exclude selected types. ? exclude selected tags. Le ...', '2026-04-29 23:46:48', 'Google Alerts - IoT'),
(138, 'Avec Alcatel, le cuivre refuse de disparaître - ITRnews', 'https://itrnews.com/articles/209629/avec-alcatel-le-cuivre-refuse-de-disparaitre.html', 'Nos clients peuvent désormais étendre l\'expérience complète OmniPCX Enterprise Purple et la connectivité IoT à tous les sites critiques, à leur rythme ...', '2026-04-29 14:24:23', 'Google Alerts - IoT'),
(139, 'Avec Alcatel, le cuivre refuse de disparaître - ITRmobiles', 'https://itrmobiles.com/articles/209629/avec-alcatel-le-cuivre-refuse-de-disparaitre.html', 'Un capteur IoT s\'installe sans repenser toute l\'architecture. Ce n\'est pas spectaculaire. C\'est décisif. Les cycles d\'investissement racontent le ...', '2026-04-29 14:12:59', 'Google Alerts - IoT'),
(140, 'Les innovations IT et la connectivité mobile avec des cartes embedded SIM - Infos-IT', 'https://infos-it.fr/nouvelles/9119/les-innovations-it-et-la-connectivite-mobile-avec-des-cartes-embedded-sim/', 'L\'IoT repose sur la capacité de milliards d\'objets à communiquer entre eux et avec des plateformes cloud. L\'eSIM est parfaitement adaptée à cet ...', '2026-04-29 13:42:25', 'Google Alerts - IoT'),
(141, 'Hô Chi Minh-Ville accélère le renforcement de ses capacités en science et innovation', 'https://lecourrier.vn/ho-chi-minh-ville-accelere-le-renforcement-de-ses-capacites-en-science-et-innovation/1346477.html', '... (IoT), ainsi que les robots industriels et autonomes. Les recherches portent également sur les équipements sans pilote, la logistique intelligente ...', '2026-04-29 10:38:34', 'Google Alerts - IoT'),
(142, 'Cloud, IA, fintech, Agritech : Maroc Telecom muscle son offre digitale - LesEco.ma', 'https://leseco.ma/business/cloud-ia-fintech-agritech-maroc-telecom-muscle-son-offre-digitale.html', 'Cloud souverain, IoT, intelligence artificielle, fintech, 5G, Agritech ou encore cybersécurité composent désormais un portefeuille qui traduit une ...', '2026-04-29 09:44:01', 'Google Alerts - IoT'),
(143, 'Arduino Nesso N1 : un kit de développement IoT compact et polyvalent', 'https://www.ecinews.fr/fr/arduino-nesso-n1-un-kit-de-developpement-iot-compact-et-polyvalent/', 'Mouser Electronics annonce la disponibilité du nouveau kit de développement IoT Nesso N1 d\'Arduino, une plateforme compacte et prête à l\'emploi...', '2026-04-29 08:19:50', 'Google Alerts - IoT'),
(144, 'Du prototype au terrain : Arduino Nesso N1 simplifie le développement IoT et Edge', 'https://www.elektormagazine.fr/news/du-prototype-au-terrain-arduino-nesso-n1-simplifie-le-developpement-iot-et-edge', 'Dans l\'IoT moderne, les projets doivent être rapides à prototyper, simples à connecter et suffisamment puissants pour évoluer vers des ...', '2026-04-29 08:04:57', 'Google Alerts - IoT'),
(145, 'Truist relève l\'objectif de cours de NXP Semiconductors à 310$ en raison de son exposition ...', 'https://fr.investing.com/news/analyst-ratings/truist-releve-lobjectif-de-cours-de-nxp-semiconductors-a-310-en-raison-de-son-exposition-a-lia-93CH-3383974', '... Internet des objets industriel, de l\'automobile et des infrastructures de communications. ... Internet des objets industriel. Ces ajustements ...', '2026-04-29 17:13:22', 'Google Alerts - internet des objets'),
(146, 'Cybersécurité : un nouveau bac pro à Chambéry | RCF Savoie', 'https://www.rcf.fr/articles/actualite/cybersecurite-un-nouveau-bac-pro-a-chambery', 'Sommes-nous sans défense face aux failles de sécurité informatique ? ... Internet des objets, etc. © Le Journal Local (RCF Savoie-Mont-Blanc).', '2026-04-29 14:00:57', 'Google Alerts - internet des objets'),
(147, 'Samsung a laissé fuiter ses lunettes connectées : voici ce qu\'elles promettent face aux Ray-Ban Meta', 'https://www.futura-sciences.com/tech/actualites/samsung-samsung-laisse-fuiter-lunettes-connectees-voici-ce-quelles-promettent-face-ray-ban-meta-134119/', '[EN VIDÉO] De plus en plus, l\'internet des objets envahit notre quotidien. Les objets connectés nous facilitent la vie dans le domaine médical, ...', '2026-04-29 10:38:49', 'Google Alerts - internet des objets'),
(148, 'Deutsche Beteiligungs investit dans Bug Bounty Switzerland - Bourse', 'https://ch.zonebourse.com/actualite-bourse/deutsche-beteiligungs-investit-dans-bug-bounty-switzerland-ce7f59d3df89f121', '... articles · Actualités les plus lues · Actualités qui impactent · Business ... Internet des objets · L\'Industrie du Cannabis · Smart City · Les Fintechs.', '2026-04-29 08:40:26', 'Google Alerts - internet des objets'),
(149, 'Rang Dong annonce une nouvelle identité de marque et se positionne comme une ... - Vietnam.vn', 'https://www.vietnam.vn/fr/rang-dong-cong-bo-nhan-dien-thuong-hieu-moi-dinh-vi-doanh-nghiep-cong-nghe-tien-phong', '... Internet des objets (IoT) et le contrôle intelligent. Le modèle économique a évolué : de la vente physique à la vente numérique multicanale, de l ...', '2026-04-29 08:24:46', 'Google Alerts - internet des objets'),
(150, 'Kerlink redresse son activité en 2025 et mise sur l\'innovation - Le Journal des Entreprises', 'https://www.lejournaldesentreprises.com/breve/kerlink-redresse-son-activite-en-2025-et-mise-sur-linnovation-2141984', 'La PME bretillienne Kerlink (70 salariés), fournisseur mondial de solutions dédiées à l\'Internet des Objets (IoT), signe un net redressement en ...', '2026-04-29 07:52:32', 'Google Alerts - internet des objets'),
(151, 'Yessine Friaa prend la tête de la Poste tunisienne - Business News', 'https://businessnews.com.tn/2026/04/28/yassine-faria-prend-la-tete-de-la-poste-tunisienne/1399045/', 'Il est spécialisé dans l\'intelligence artificielle, l\'Internet des objets (IoT) et les systèmes d\'information, et participe au pilotage de ...', '2026-04-29 06:58:48', 'Google Alerts - internet des objets'),
(152, 'Homebridge 2.0 : tous les objets connectés compatibles Matter, Apple et Google Home - Numerama', 'https://www.numerama.com/tech/2246279-homebridge-2-0-est-disponible-et-permet-de-creer-des-faux-ponts-matter-pour-tromper-apple-home-et-google-home.html', 'Internet haut débit par satellite : voici une alternative française qui défie les géants étrangers Humanoid Native. sponso. L\'essentiel maison ...', '2026-05-04 21:04:53', 'Google Alerts - Internet of Things'),
(153, 'Clear Blue Technologies Provides Corporate Update on Growth Opportunities', 'https://www.newsfilecorp.com/release/295680/Clear-Blue-Technologies-Provides-Corporate-Update-on-Growth-Opportunities?lang=fr', 'Working with another European satellite communication services provider to develop Internet of Things (IoT) enabled products. Creating partnership ...', '2026-05-04 11:14:53', 'Google Alerts - Internet of Things'),
(154, 'Craintes de coupures de courant : l\'UE supprime les subventions pour les projets solaires ...', 'https://www.epochtimes.fr/craintes-de-coupures-de-courant-lue-supprime-les-subventions-pour-les-projets-solaires-utilisant-des-technologies-chinoises-3251311.html', 'Les appareils modernes sont en outre connectés à Internet. Les informations sont stockées dans le cloud, ils reçoivent des mises à jour et un accès à ...', '2026-05-05 09:33:10', 'Google Alerts - objets connectés'),
(155, 'La reine des montres Garmin perd 180 euros durant les French Days', 'https://www.frandroid.com/bons-plans/3087093_la-reine-des-montres-garmin-perd-180-euros-durant-les-french-days', 'Le meilleur des Bons plans objets connectés · French Days smartwatch : Le top 7 des offres sur les montres connectées Apple, Samsung et Garmin · La ...', '2026-05-05 06:33:46', 'Google Alerts - objets connectés'),
(156, 'Ethernet sur votre TV : pourquoi ça coince et comment y remédier | Android MT', 'https://android-mt.ouest-france.fr/news/connexions-et-reseaux/ethernet-sur-votre-tv-pourquoi-ca-coince-et-comment-y-remedier/200798/', '... appareils — ordinateurs portables, tablettes, objets connectés. Dans un foyer bien équipé, c\'est loin d\'être anecdotique. Reste que les fabricants ...', '2026-05-05 06:28:31', 'Google Alerts - objets connectés'),
(157, 'Volkswagen ID. Buzz 2026 : mise à jour technologique et arrivée d\'une version à ...', 'https://www.planet-sansfil.com/automobile/volkswagen-id-buzz-2026-mise-a-jour-technologique-et-arrivee-dune-version-a-transmission-integrale/', 'Aiper, Objets connectés dédiés à la domotique, pour la maison. Produits sans fil destiné à la maison., Tests, Wi-Fi · Test : Aiper scuba v3 ...', '2026-05-05 06:23:12', 'Google Alerts - objets connectés'),
(158, 'Comment une simple carte postale et cinq euros ont permis de suivre une frégate de l\'Otan ...', 'https://www.science-et-vie.com/technos-et-futur/defense/comment-une-simple-carte-postale-et-cinq-euros-ont-permis-de-suivre-une-fregate-de-lotan-en-pleine-mission-en-mediterranee-237982.html', 'La chaîne postale militaire reste néanmoins le maillon faible de la discrétion opérationnelle, faute de contrôle systématique des objets connectés.', '2026-05-05 05:17:39', 'Google Alerts - objets connectés'),
(159, '« Je vais rayer ta bagnole » : cette étude révèle que l\'IA peut briser son code pour vous ...', 'https://www.jeuxvideo.com/news/2079541/je-vais-rayer-ta-bagnole-cette-etude-revele-que-l-ia-peut-briser-son-code-pour-vous-insulter-et-vous-menacer.htm', '... objets connectés, les smartphones, les périphériques gaming, les jeux de société et les LEGO. Autant dire que les journées sont chargées ! Parler ...', '2026-05-05 04:41:47', 'Google Alerts - objets connectés'),
(160, 'Cdiscount dévoile une méga promo sur le Google Pixel 9a uniquement pour vous faire plaisir - BFM', 'https://www.bfmtv.com/tech/bons-plans/cdiscount-devoile-une-mega-promo-sur-le-google-pixel-9a-uniquement-pour-vous-faire-plaisir_AB-202605050005.html', 'Produits. Toute l\'actu Produits · Tests produits · Nouveautés produits · Smartphone · Objets connectés · Console de jeux · TV & HiFi · Ordinateur ...', '2026-05-05 04:32:56', 'Google Alerts - objets connectés'),
(161, 'IA dans l\'armée : les Etats-Unis utiliseront d\'autres services qu\'Anthropic - Les Smart Grids', 'https://les-smartgrids.fr/ia-armee-etats-unis-autres-services-anthropic/', 'Objets connectés. IA dans l\'armée : les Etats-Unis utiliseront d\'autres ... Objets connectés · Le cinéma drive-in réinventé par la Chine.', '2026-05-05 01:48:34', 'Google Alerts - objets connectés'),
(162, 'Palo Alto veut acquérir Portkey - L\'INFORMATICIEN & L\'INFO CYBER-RISQUES', 'https://www.linformaticien.com/magazine/biz-it/64801-palo-alto-veut-acquerir-portkey.html', 'CRA : la chasse aux vulnérabilités des objets connectés est ouverte · Quand les deepfakes piratent la confiance · Ransomware : les jours d\'après · Biz ...', '2026-05-04 21:37:26', 'Google Alerts - objets connectés'),
(163, 'Un mineur interpellé dans le cadre de la fuite de données à l\'ANTS - L\'Informaticien', 'https://www.linformaticien.com/magazine/cybersecurite/64797-un-mineur-interpelle-dans-le-cadre-de-la-fuite-de-donnees-a-l-ants.html', '... objets connectés est ouverte · Quand les deepfakes piratent la confiance ... connexion, aux données d\'identification professionnelle (raison ...', '2026-05-04 20:45:38', 'Google Alerts - objets connectés'),
(164, 'Les French Days se terminent chez Boulanger : derniers jours pour profiter des meilleures offres', 'https://www.phonandroid.com/french-days-terminent-boulanger-derniers-jours-profiter-meilleures-offres.html', 'Objets connectés · Smartphone · Télévision · Tutos · VPN · Cybersécurité · eSIM ... Objets connectés. 04/05/2026. Partager Partager.', '2026-05-04 20:02:44', 'Google Alerts - objets connectés'),
(165, 'ST commercialise des capteurs d\'image “toujours actifs” ultra sobres - VIPress.net', 'https://vipress.net/st-commercialise-des-capteurs-dimage-toujours-actifs-ultra-sobres/', 'Ces capteurs ciblent les objets connectés, les wearables et les dispositifs embarqués. STMicroelectronics dévoile une nouvelle génération de capteurs ...', '2026-05-04 15:57:19', 'Google Alerts - objets connectés'),
(166, 'Une bourse européenne de 4,9 M€ pour former 15 doctorants et réinventer l\'alimentation ...', 'https://www.inc.cnrs.fr/fr/cnrsinfo/une-bourse-europeenne-de-49-meu-pour-former-15-doctorants-et-reinventer-lalimentation-des', 'Son ambition : développer des technologies capables d\'alimenter les objets connectés sans recourir aux batteries conventionnelles, souvent polluantes ...', '2026-05-04 15:55:56', 'Google Alerts - objets connectés'),
(167, 'French Days smartwatch : Le top 7 des offres sur les montres connectées Apple, Samsung et Garmin', 'https://www.frandroid.com/bons-plans/3083429_french-days-smartwatch-le-top-7-des-offres-sur-les-montres-connectees-apple-samsung-et-garmin', 'Du 29 avril au 5 mai 2026, ce sont les French Days. Plusieurs catégories de produits tech sont ainsi mises à l\'honneur avec de belles promotions.', '2026-05-04 15:48:07', 'Google Alerts - objets connectés'),
(168, 'Yubico devient partenaire d\'OpenAI - L\'INFORMATICIEN & L\'INFO CYBER-RISQUES', 'https://www.linformaticien.com/magazine/cybersecurite/64802-yubico-devient-partenaire-d-openai.html', 'CRA : la chasse aux vulnérabilités des objets connectés est ouverte ... connexion sécurisée. Les YubiKey C NFC - OpenAI et YubiKey C Nano ...', '2026-05-04 15:46:35', 'Google Alerts - objets connectés'),
(169, '75% : c\'est l\'offre imbattable affichée par NordVPN pendant quelques jours seulement - BFM', 'https://www.bfmtv.com/tech/bons-plans/vpn/75-c-est-l-offre-imbattable-affichee-par-nord-vpn-pendant-quelques-jours-seulement_AB-202605040032.html', 'Ainsi, en souscrivant chez cet acteur de référence dans le domaine, vous allez pouvoir protéger jusqu\'à 10 de vos appareils connectés à internet sur ...', '2026-05-04 14:30:19', 'Google Alerts - objets connectés'),
(170, 'Selon ce futurologue, les humains seront bientôt capables de gagner de la vie comme dans ...', 'https://www.jeuxvideo.com/news/2079460/selon-ce-futurologue-les-humains-seront-bientot-capables-de-gagner-de-la-vie-comme-dans-un-jeu-video.htm', '... objets connectés, les smartphones, les périphériques gaming, les jeux de société et les LEGO. Autant dire que les journées sont chargées ! Et s\'il ...', '2026-05-04 13:47:57', 'Google Alerts - objets connectés'),
(171, 'Les lunettes connectées Meta Ray-Ban perdent presque 100 € durant les French Days', 'https://www.frandroid.com/bons-plans/3086817_les-lunettes-connectees-meta-ray-ban-perdent-presque-100-e-durant-les-french-days', 'Le meilleur des Bons plans objets connectés · Ce pack Nothing Phone (3) avec une CMF Watch 3 Pro et d\'autres accessoires ...', '2026-05-04 13:20:51', 'Google Alerts - objets connectés'),
(172, 'Kenya : licenciement de 1100 employés chez Sama suite à l\'affaire Ray-Ban', 'https://www.realite-virtuelle.com/kenya-licenciement-de-1100-employes-chez-sama-suite-a-laffaire-ray-ban/', 'Les travailleurs devaient analyser des images pour entraîner l\'intelligence artificielle des objets connectés. ... connectées d\'Apple pourraient ...', '2026-05-04 13:11:41', 'Google Alerts - objets connectés'),
(173, 'Telefónica et Sateliot unissent leurs forces pour apporter la connectivité 5G par satellite aux ...', 'https://www.thd.tn/telefonica-et-sateliot-unissent-leurs-forces-pour-apporter-la-connectivite-5g-par-satellite-aux-secteurs-strategiques/', '... IoT, pour déployer la technologie 5G NR (New Radio) dans l\'espace. Ce déploiement permettra d\'étendre la couverture aux zones reculées, maritimes ...', '2026-05-05 11:00:50', 'Google Alerts - IoT'),
(174, 'Télérelève : GAIA localise les fuites et réduit les pertes d\'eau | Diehl Metering', 'https://www.diehl.com/metering/fr/actualite-et-evenements/lactualite-diehl-metering/actualites/telereleve-gaia-localise-fuites-reduit-les-pertes-eau/', 'Le déploiement de 70 000 compteurs intelligents HYDRUS, associé à la technologie mioty®, offre une connectivité IoT robuste et une remontée de données ...', '2026-05-05 09:06:32', 'Google Alerts - IoT'),
(175, 'OpenAI affirme avoir déjà sécurisé la puissance de calcul de Stargate - objetconnecte.com', 'https://www.objetconnecte.com/openai-affirme-avoir-deja-securise-la-puissance-de-calcul-de-stargate/', '... IoT et de l\'infrastructure numérique. Les enjeux économiques et financiers de Stargate face à la demande explosive. Le développement rapide de ...', '2026-05-05 08:42:18', 'Google Alerts - IoT'),
(176, 'Un détecteur portable repère l\'usurpation GPS en temps réel sur les véhicules', 'https://www.objetconnecte.com/un-detecteur-portable-repere-lusurpation-gps-en-temps-reel-sur-les-vehicules/', 'Innovation IoT · Technologies IoT · Ecosystème IoT · Composants · Multimédia ... La Newsletter IoT et Smart City. Découvrez les technologies qui ...', '2026-05-05 08:21:03', 'Google Alerts - IoT'),
(177, 'Le robot de tennis de table de Sony AI bat des joueurs de haut niveau - objetconnecte.com', 'https://www.objetconnecte.com/le-robot-de-tennis-de-table-de-sony-ai-bat-des-joueurs-de-haut-niveau/', 'Innovation IoT · Technologies IoT · Ecosystème IoT · Composants · Multimédia · Blockchain & Crypto · Paiement connecté · Digital · Robotique ...', '2026-05-04 10:41:49', 'Google Alerts - IoT'),
(178, 'Le groupe INTERA annonce son lancement public | THD - Tunisie Haut Debit', 'https://www.thd.tn/le-groupe-intera-annonce-son-lancement-public/', '... performantes dans le domaine des semi-conducteurs basés sur l\'IA et de l\'Internet des objets (IoT), afin.', '2026-05-05 12:06:11', 'Google Alerts - internet des objets'),
(179, 'Le cours de NXP Semiconductors a bondi de 20% - Test-Achats', 'https://www.test-achats.be/invest/investir/actions/articles/2026/05/nxp-semiconductors-hausse-cours', 'Cela confirme que la demande repart dans ses deux principaux marchés : l\'automobile (56% du chiffre d\'affaires) et l\'industrie / internet des objets ( ...', '2026-05-05 11:49:51', 'Google Alerts - internet des objets'),
(180, 'Arrow Electronics unifie ses services avec une plateforme en ligne omnicanale - VIPress.net', 'https://vipress.net/arrow-electronics-unifie-ses-services-avec-une-plateforme-en-ligne-omnicanale/', '... Internet des objets (IoT) en produits commerciaux, et d\'accroître ainsi le rythme d\'innovation des entrepreneurs de l\'IoT. Aujourd\'hui, le ...', '2026-05-04 15:30:41', 'Google Alerts - internet des objets'),
(181, '[Colloque transfrontalier]La technologie à l\'heure des choix - Magazine en-direct', 'https://endirect.univ-fcomte.fr/publication/colloque-transfrontalierla-technologie-a-lheure-des-choix/', 'La High-tech regroupe les techniques les plus avancées et parle nanomatériaux, internet des objets ou intelligence artificielle ; elle s\'applique à ...', '2026-05-04 12:08:40', 'Google Alerts - internet des objets'),
(182, 'Chine déploie la police robotique pendant les vacances du travail, l\'IA surveille le trafic', 'https://voi.id/fr/amp/573657', 'A Ordos, en Mongolie intérieure, deux robots policiers sont en service depuis le 1er mai. Avec la technologie Internet des objets et l\'IA, les deux ...', '2026-05-04 11:14:11', 'Google Alerts - internet des objets'),
(184, 'Le magasin : nouveau centre de décision du retail', 'https://www.journaldunet.com/retail/1550077-le-magasin-nouveau-centre-de-decision-du-retail/', 'Une transformation profonde est déjà à l\'œuvre. L\'intelligence artificielle, l\'Internet des objets et la computer vision permettent désormais de ...', '2026-05-05 14:42:15', 'Google Alerts - internet des objets'),
(185, 'Départs à la retraite : comment l\'intelligence artificielle peut éviter la perte d\'expertise en entreprise', 'https://www.lelezard.com/communique-22213391.html', '... Internet des objets (IoT) et l\'infonuagique pour créer des applications à fort impact. SOURCE Vooban. Ces communiqués peuvent vous intéresser aussi ...', '2026-05-05 11:48:39', 'Google Alerts - internet des objets');

DROP TABLE IF EXISTS `categories_bloc_1`;
CREATE TABLE `categories_bloc_1` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE TABLE `categories_bloc_1`;
INSERT INTO `categories_bloc_1` (`id`, `libelle`) VALUES
(1, '1.1 Gérer le patrimoine informatique'),
(2, '1.2 Répondre aux incidents et aux demandes d\'assistance et d\'évolution'),
(3, '1.3 Développer la présence en ligne de l\'organisation'),
(4, '1.4 Travailler en mode projet'),
(5, '1.5 Mettre à disposition des utilisateurs un service informatique'),
(6, '1.6 Organiser son développement professionnel');

DROP TABLE IF EXISTS `competences`;
CREATE TABLE `competences` (
  `id` int(11) NOT NULL,
  `id_personne` int(11) NOT NULL DEFAULT 1,
  `nom` varchar(100) NOT NULL,
  `pourcentage` int(11) NOT NULL,
  `type` enum('professionnel','personnel') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE TABLE `competences`;
INSERT INTO `competences` (`id`, `id_personne`, `nom`, `pourcentage`, `type`) VALUES
(1, 1, 'HTML / CSS', 100, 'professionnel'),
(2, 1, 'MySQL', 100, 'professionnel'),
(3, 1, 'JavaScript', 70, 'professionnel'),
(4, 1, 'Python', 100, 'professionnel'),
(5, 1, 'Créativité', 90, 'personnel'),
(6, 1, 'Adaptation', 90, 'personnel'),
(7, 1, 'Sérieux', 95, 'personnel'),
(8, 1, 'Pédagogie', 95, 'personnel');

DROP TABLE IF EXISTS `competences_a_cocher`;
CREATE TABLE `competences_a_cocher` (
  `id` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `libelle` text NOT NULL,
  `id_justification` int(11) DEFAULT NULL,
  `vu` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE TABLE `competences_a_cocher`;
INSERT INTO `competences_a_cocher` (`id`, `id_categorie`, `libelle`, `id_justification`, `vu`) VALUES
(1, 1, '1. Recenser et identifier les ressources numériques', 2, '1'),
(2, 1, '2. Mettre en place et vérifier les niveaux d\'habilitation associés à un service', NULL, '0'),
(3, 1, '3. Exploiter des référentiels, normes et standards adoptés par le prestataire informatique', NULL, '0'),
(4, 1, '4. Gérer des sauvegardes', 3, '1'),
(5, 1, '5. Vérifier les conditions de la continuité d\'un service informatique', NULL, '0'),
(6, 1, '6. Vérifier le respect des règles d\'utilisation des ressources numériques', NULL, '0'),
(7, 2, '1. Traiter des demandes concernant les services réseau et système, applicatifs', NULL, '0'),
(8, 2, '2. Traiter des demandes concernant les applications', NULL, '0'),
(9, 2, '3. Collecter, suivre et orienter des demandes', 4, '1'),
(10, 3, '1. Participer à l\'évolution d\'un site Web exploitant les données de l\'organisation.', 8, '1'),
(11, 3, '2. Référencer les services en ligne de l\'organisation et mesurer leur visibilité.', NULL, '0'),
(12, 3, '3. Participer à la valorisation de l\'image de l\'organisation sur les médias numériques en tenant compte du cadre juridique et des enjeux économiques', NULL, '0'),
(13, 4, '1. Analyser les objectifs et les modalités d\'organisation d\'un projet', NULL, '0'),
(14, 4, '2. Évaluer les indicateurs de suivi d\'un projet et analyser les écarts', NULL, '0'),
(15, 4, '3. Planifier les activités', 11, '1'),
(16, 5, '1. Déployer un service', 10, '1'),
(17, 5, '2. Réaliser les tests d\'intégration et d\'acceptation d\'un service.', NULL, '0'),
(18, 5, '3. Accompagner les utilisateurs dans la mise en place d\'un service', 10, '1'),
(19, 6, '1. Mettre en place son environnement d\'apprentissage personnel', 5, '1'),
(20, 6, '2. Gérer son identité professionnelle', 6, '1'),
(21, 6, '3. Développer son projet professionnel', 7, '1'),
(22, 6, '4. Mettre en œuvre des outils et stratégies de veille informationnelle', 9, '1');

DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `adresse_ip` varchar(45) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `sexe` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE TABLE `contact`;
DROP TABLE IF EXISTS `experience_pro`;
CREATE TABLE `experience_pro` (
  `id` int(11) NOT NULL,
  `id_personne` int(11) NOT NULL DEFAULT 1,
  `libelle` varchar(100) NOT NULL,
  `nom_entreprise` varchar(100) NOT NULL,
  `periode` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `chemin_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE TABLE `experience_pro`;
INSERT INTO `experience_pro` (`id`, `id_personne`, `libelle`, `nom_entreprise`, `periode`, `description`, `chemin_image`) VALUES
(1, 1, 'Agriculture', 'Partag\'emploi', 'Juillet 2021', 'Arrachage des échalottes', './images/cv/partage_emploi.png'),
(2, 1, 'Agriculture', 'Partag\'emploi', 'Fevrier 2022', 'Mise en terre des échalottes', './images/cv/partage_emploi.png'),
(3, 1, 'Stage de 2nd', 'Imprimerie', 'Avril 2022', 'Stage de seconde.', './images/cv/imprimante.png'),
(4, 1, 'SNU', '', 'Juin 2022', 'Service National Universel', './images/cv/snu.png'),
(5, 1, 'CER France', 'CER France', 'Août 2023', 'Stage dans le secteur du Développemnt Web et la Cybersécurité', './images/cv/cerfrance.png'),
(6, 1, 'Stage en développenment web', 'VBCQ', 'Mai - Juin 2025', 'Stage ayant servit à réaliser un site vitrine pour le club de Volley : VBCQ', './images/cv/vbcq.png'),
(7, 1, 'Stage en développenment web', 'Palmes en Cornouailles', 'Janvier - Février 2026', 'Stage ayant servit à réaliser un site vitrine pour le club de Palmes en Cornouailles.', './images/cv/pec.png');

DROP TABLE IF EXISTS `formation`;
CREATE TABLE `formation` (
  `id` int(11) NOT NULL,
  `id_personne` int(11) NOT NULL DEFAULT 1,
  `nom_etablissement` varchar(100) NOT NULL,
  `periode` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `chemin_image` varchar(255) NOT NULL DEFAULT './images/ecole.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE TABLE `formation`;
INSERT INTO `formation` (`id`, `id_personne`, `nom_etablissement`, `periode`, `description`, `chemin_image`) VALUES
(1, 1, 'Collège Auguste Brizeux', '2016 - 2020', 'Obtention du Brevet des Collèges', './images/cv/ecole.png'),
(2, 1, 'Lycée Auguste Brizeux', '2020 - 2024', 'Obtention du Baccalauréat Général mention assez bien', './images/cv/ecole.png'),
(3, 1, 'Lycée Jean Chaptal', '2024 - 2026', 'Etudes supérieurs', './images/cv/ecole.png');

DROP TABLE IF EXISTS `infos_contacts`;
CREATE TABLE `infos_contacts` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `permis` enum('Oui','Non') DEFAULT 'Non'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE TABLE `infos_contacts`;
INSERT INTO `infos_contacts` (`id`, `nom`, `adresse`, `tel`, `email`, `permis`) VALUES
(1, 'FRANCES--LAVILLAUROY Mathis', '27 Cité de la Ruche - 29000 Quimper', '+33680357193', 'mathisfrances11@gmail.com', 'Oui');

DROP TABLE IF EXISTS `infos_generales`;
CREATE TABLE `infos_generales` (
  `id_personne` int(11) NOT NULL,
  `photo_de_profil` varchar(100) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `etudes` varchar(100) NOT NULL,
  `date_de_naissance` date NOT NULL,
  `localisation` varchar(100) NOT NULL,
  `me_concernant` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE TABLE `infos_generales`;
INSERT INTO `infos_generales` (`id_personne`, `photo_de_profil`, `nom`, `prenom`, `etudes`, `date_de_naissance`, `localisation`, `me_concernant`) VALUES
(1, 'favicon.ico', 'FRANCES--LAVILLAUROY', 'Mathis', 'Étudiant en BTS SIO, option SLAM', '2006-07-02', 'Quimper, Finistère, France', 'Passionné par l\'informatique et la création de solutions numériques, je suis actuellement en deuxième année de BTS SIO (Services Informatiques aux Organisations), spécialité SLAM (Solutions Logicielles et Applications Métiers) à Quimper.\r\n\r\n   Au cours de ma formation et de mes expériences pratiques, j\'ai développé une réelle appétence pour le développement web et la gestion des bases de données (PHP, MySQL). J\'aime concevoir des projets de A à Z : de l\'analyse du cahier des charges et la modélisation, jusqu\'au déploiement et la sécurisation de l\'application. Mes projets, comme la réalisation de sites sous WordPress pour des clients réels ou le développement d\'outils automatisés pour ma veille technologique, m\'ont appris à travailler en autonomie tout en respectant les contraintes professionnelles.\r\n\r\n   Curieux et rigoureux, j\'accorde une grande importance aux bonnes pratiques de code et à la sécurité des systèmes d\'information. Je suis toujours à la recherche de nouveaux défis techniques pour continuer à monter en compétences et apporter des solutions concrètes aux besoins des utilisateurs.');

DROP TABLE IF EXISTS `justification`;
CREATE TABLE `justification` (
  `id` int(11) NOT NULL,
  `justification` text NOT NULL,
  `urlDrive` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE TABLE `justification`;
INSERT INTO `justification` (`id`, `justification`, `urlDrive`) VALUES
(2, 'Déploiement et utilisation d\'une solution de gestion de parc informatique et de tickets (type GLPI). Recensement exhaustif du matériel, de l\'architecture réseau et des logiciels utilisés.', 'https://drive.google.com/file/d/1cGNiKiDIZinUnk8b2bVHoDPod-5RsdYB/view?usp=drive_link'),
(3, 'Mise en œuvre de stratégies de sauvegarde et de restauration de bases de données (export/import via phpMyAdmin et scripts SQL). Compréhension des enjeux liés à la sécurité, à l\'intégrité des données et à la continuité de service.', 'https://drive.google.com/file/d/12FWyaa1u1sx0fCuKqy_AChK3ZDeILTH4/view?usp=drive_link'),
(4, 'Prise en charge d\'un besoin client réel (Club VBCQ). Analyse de la demande, recueil des besoins, et mise en production d\'un service web fonctionnel répondant au cahier des charges.', 'https://drive.google.com/file/d/1r8CM4BJjubLa0JUkOu6SrRu4t6V2Bf5q/view?usp=drive_link'),
(5, 'Installation, configuration et maintien d\'un environnement de développement local complet (IDE, serveur web Apache/Nginx, paramétrage PHP/MySQL via XAMPP) pour assurer la production de projets web.', 'https://drive.google.com/file/d/1OhMjHpnN4SbJcq_EVUogSE38sQA5sjO1/view?usp=drive_link'),
(6, 'Création et optimisation d\'un profil professionnel LinkedIn. Mise en valeur des compétences techniques acquises en BTS SIO et développement d\'un réseau pour faciliter l\'insertion professionnelle.', 'https://www.linkedin.com/in/mathis-frances-lavillauroy-83890a330/'),
(7, 'Immersion en milieu professionnel lors des stages. Application pratique des compétences techniques, découverte des processus de l\'entreprise et confirmation de mon projet professionnel.', NULL),
(8, 'Développement de la présence numérique via la conception d\'un site web sous le CMS WordPress. Gestion de projet incluant l\'intégration graphique, la configuration technique et la réponse aux besoins de l\'organisation.', 'https://drive.google.com/file/d/1r8CM4BJjubLa0JUkOu6SrRu4t6V2Bf5q/view?usp=drive_link'),
(9, 'Mise en œuvre d\'une veille technologique et informationnelle active (via les alertes google). Suivi continu des innovations, des tendances de L\'IoT.', NULL),
(10, 'Préparation du déploiement du site VBCQ. Élaboration d\'un protocole de mise en ligne, réalisation de tests d\'intégration et conception d\'une documentation destinée à accompagner les utilisateurs finaux.', NULL),
(11, 'Découverte et utilisation d\'outils de gestion de projet (type Kanban avec Trello). Apprentissage de la planification des tâches, du suivi des livrables et des enjeux de la collaboration en équipe.', NULL);

DROP TABLE IF EXISTS `liens_externes`;
CREATE TABLE `liens_externes` (
  `id_lien` int(11) NOT NULL,
  `libelle` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE TABLE `liens_externes`;
INSERT INTO `liens_externes` (`id_lien`, `libelle`, `url`) VALUES
(1, 'LinkedIn', 'https://www.linkedin.com/in/mathis-frances-lavillauroy-83890a330/'),
(2, 'CV en ligne', 'cv/');

DROP TABLE IF EXISTS `loisirs`;
CREATE TABLE `loisirs` (
  `idLoisir` int(11) NOT NULL,
  `libelle` varchar(100) NOT NULL,
  `chemin_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE TABLE `loisirs`;
INSERT INTO `loisirs` (`idLoisir`, `libelle`, `chemin_image`) VALUES
(1, 'Natation', 'images/natation.png'),
(2, 'Coder', 'images/coder.png'),
(3, 'Jeux Vidéo', 'images/gaming.png');

DROP TABLE IF EXISTS `projets`;
CREATE TABLE `projets` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `lien` varchar(255) NOT NULL,
  `date_realisation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE TABLE `projets`;
INSERT INTO `projets` (`id`, `libelle`, `description`, `lien`, `date_realisation`) VALUES
(8, 'Mon CV', 'Mon CV est entièrement fait avec php et une base de données.', 'https://mathisfrances.22web.org/public/cv', '2025-10-07'),
(10, 'Palmes en Cornouailles', 'Site vitrine du club de Palmes en Cornouaille réalisé lors de mon stage de 2ème année de BTS SIO.', 'https://palmes-en-cornouailles.22web.org\r\n', '2026-01-11'),
(11, 'Affichage des temps pour le pec', 'Récupération des temps de tous les nageurs du club dans la saison grâce à un scrapping du site de la fédération.', 'https://intranap-pec.22web.org', '2026-03-20');

DROP TABLE IF EXISTS `themes`;
CREATE TABLE `themes` (
  `varName` varchar(50) NOT NULL,
  `varValue` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE TABLE `themes`;
INSERT INTO `themes` (`varName`, `varValue`) VALUES
('--bg-body', '#e0e0e0'),
('--bg-h-f', '#d4d4d4'),
('--border-radius', '1rem'),
('--box-shadow', '2px 2px 20px 0px #555555'),
('--box-shadow-hover', '7px 7px 7px 0px #00000069'),
('--color-border', 'none'),
('--color-text', '#4d4d4d'),
('--couleur-btn-all', 'rgb(145, 60, 63)'),
('--couleur-btn-anime', '#6c93d2'),
('--couleur-btn-film', 'rgb(37, 115, 66)'),
('--couleur-btn-scan', '#626874'),
('--couleur-btn-serie', 'rgb(109, 67, 152);'),
('--couleur-false', '#a02121'),
('--couleur-font-anime', '#00f7ff00');

DROP TABLE IF EXISTS `veille_synthese`;
CREATE TABLE `veille_synthese` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `date_mise_a_jour` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

TRUNCATE TABLE `veille_synthese`;
INSERT INTO `veille_synthese` (`id`, `titre`, `contenu`, `date_mise_a_jour`) VALUES
(1, 'Synthèse Globale de la Veille IoT', 'L\'actualité récente de l\'Internet des Objets (IoT) met en évidence quatre grandes tendances de fond :\n\n• L\'essor de la connectivité hybride et satellitaire (5G spatiale, LoRa) pour anticiper la fin de la 2G.\n• La convergence avec l\'Intelligence Artificielle (AIoT) en local (Edge Computing) pour des objets autonomes.\n• La démocratisation de la Smart Home (Matter) et des Wearables (bagues, lunettes connectées).\n• L\'urgence de la cybersécurité face aux attaques massives par botnets IoT.', '2026-05-05 17:00:00');


ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `link` (`link`);

ALTER TABLE `categories_bloc_1`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `competences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_competences_personne` (`id_personne`);

ALTER TABLE `competences_a_cocher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categorie` (`id_categorie`),
  ADD KEY `id_justification` (`id_justification`);

ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `experience_pro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_experience_pro_personne` (`id_personne`);

ALTER TABLE `formation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_formation_personne` (`id_personne`);

ALTER TABLE `infos_contacts`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `infos_generales`
  ADD PRIMARY KEY (`id_personne`);

ALTER TABLE `justification`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `liens_externes`
  ADD PRIMARY KEY (`id_lien`);

ALTER TABLE `loisirs`
  ADD PRIMARY KEY (`idLoisir`);

ALTER TABLE `projets`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `themes`
  ADD PRIMARY KEY (`varName`);

ALTER TABLE `veille_synthese`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

ALTER TABLE `categories_bloc_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `competences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `competences_a_cocher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `experience_pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `formation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

ALTER TABLE `infos_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `infos_generales`
  MODIFY `id_personne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `justification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `liens_externes`
  MODIFY `id_lien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `loisirs`
  MODIFY `idLoisir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `projets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `veille_synthese`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `competences`
  ADD CONSTRAINT `fk_competences_personne` FOREIGN KEY (`id_personne`) REFERENCES `infos_generales` (`id_personne`) ON DELETE CASCADE;

ALTER TABLE `competences_a_cocher`
  ADD CONSTRAINT `fk_competences_a_cocher_categorie` FOREIGN KEY (`id_categorie`) REFERENCES `categories_bloc_1` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_competences_a_cocher_justification` FOREIGN KEY (`id_justification`) REFERENCES `justification` (`id`) ON DELETE SET NULL;

ALTER TABLE `experience_pro`
  ADD CONSTRAINT `fk_experience_pro_personne` FOREIGN KEY (`id_personne`) REFERENCES `infos_generales` (`id_personne`) ON DELETE CASCADE;

ALTER TABLE `formation`
  ADD CONSTRAINT `fk_formation_personne` FOREIGN KEY (`id_personne`) REFERENCES `infos_generales` (`id_personne`) ON DELETE CASCADE;
COMMIT;
