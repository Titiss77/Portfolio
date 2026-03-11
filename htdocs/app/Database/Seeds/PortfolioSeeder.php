<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class PortfolioSeeder extends Seeder
{
    public function run()
    {
        // 1. categoriesbloc1
        $this->db->table('categoriesbloc1')->insertBatch([
            ['id' => 1, 'appellation' => "1.1 Gérer le patrimoine informatique"],
            ['id' => 2, 'appellation' => "1.2 Répondre aux incidents et aux demandes d'assistance et d'évolution"],
            ['id' => 3, 'appellation' => "1.3 Développer la présence en ligne de l'organisation"],
            ['id' => 4, 'appellation' => "1.4 Travailler en mode projet"],
            ['id' => 5, 'appellation' => "1.5 Mettre à disposition des utilisateurs un service informatique"],
            ['id' => 6, 'appellation' => "1.6 Organiser son développement professionnel"],
        ]);

        // 2. justification
        $this->db->table('justification')->insertBatch([
            ['id' => 1, 'justification' => "Ne vous inquiétez pas, la justification est en cours de développement.", 'imgUrl' => ""],
            ['id' => 2, 'justification' => "Identifier les postes, logiciels ou autres ressources utilisées en TP ou en projet, structuré un inventaire de ressources (Excel, GLPI, ou autre outil), ce qui nécessite de recenser, classer et organiser les éléments matériels et logiciels.", 'imgUrl' => "./images/11-1.png"],
            ['id' => 3, 'justification' => "Relève de « Gérer le patrimoine informatique » : Utilisation d’outils comme phpMyAdmin, export/import SQL = gestion des sauvegardes, mise en pratique de notions de continuité de service (sauvegarde = sécurité des données).", 'imgUrl' => "./images/11-4.png"],
            ['id' => 4, 'justification' => "« Répondre aux demandes » si le site répondait à une commande ou des consignes du club, met en œuvre la « mise à disposition d’un service » (site fonctionnel, accessible en ligne).", 'imgUrl' => "./images/12-3.png"],
            ['id' => 5, 'justification' => "J’ai installé et configuré mon environnement de développement (éditeur de code, serveur local type XAMPP, navigateur avec outils développeur) pour travailler efficacement sur le site.", 'imgUrl' => "./images/16-1.png"],
            ['id' => 6, 'justification' => "Mise en place d'un compte LinkedIn :\r\n\r\nhttps://www.linkedin.com/in/mathis-frances-lavillauroy-83890a330/", 'imgUrl' => "./images/16-2.png"],
            ['id' => 7, 'justification' => "Justification : Ce stage m’a permis de confirmer mon intérêt pour le développement web et de mieux comprendre le métier en conditions réelles, ce qui contribue à affiner mon projet professionnel.", 'imgUrl' => ""],
            ['id' => 8, 'justification' => "« Développer la présence en ligne » : création d’un site avec WordPress = valorisation numérique, implique « Travailler en mode projet » : recueil des besoins, découpage du travail", 'imgUrl' => "./images/13-1.png"],
            ['id' => 9, 'justification' => "Veille active = autonomie et apprentissage continu.\r\n\r\nhttps://app.flus.fr/collections/1822044671563061756\r\n\r\n", 'imgUrl' => "./images/16-4.png"],
            ['id' => 10, 'justification' => "Malheureusement, pas de responsable du VBCQ n'est venu.", 'imgUrl' => null],
            ['id' => 11, 'justification' => "Utilisation de Trello, assez mal géré et peu utilisé à mon avis mais utilisation quand même.", 'imgUrl' => null],
        ]);

        // 3. competencesacocher
        // Note: Les valeurs 'vu' vides ('') du SQL ont été converties en '0' car la colonne est ENUM('0','1')
        $this->db->table('competencesacocher')->insertBatch([
            ['id' => 1, 'idCategorie' => 1, 'libelle' => "1. Recenser et identifier les ressources numériques", 'idJustification' => 2, 'vu' => '1'],
            ['id' => 2, 'idCategorie' => 1, 'libelle' => "2. Mettre en place et vérifier les niveaux d'habilitation associés à un service", 'idJustification' => 1, 'vu' => '0'],
            ['id' => 3, 'idCategorie' => 1, 'libelle' => "3. Exploiter des référentiels, normes et standards adoptés par le prestataire informatique", 'idJustification' => 1, 'vu' => '0'],
            ['id' => 4, 'idCategorie' => 1, 'libelle' => "4. Gérer des sauvegardes", 'idJustification' => 3, 'vu' => '1'],
            ['id' => 5, 'idCategorie' => 1, 'libelle' => "5. Vérifier les conditions de la continuité d'un service informatique", 'idJustification' => 1, 'vu' => '0'],
            ['id' => 6, 'idCategorie' => 1, 'libelle' => "6. Vérifier le respect des règles d'utilisation des ressources numériques", 'idJustification' => 1, 'vu' => '0'],
            ['id' => 7, 'idCategorie' => 2, 'libelle' => "1. Traiter des demandes concernant les services réseau et système, applicatifs", 'idJustification' => 1, 'vu' => '0'],
            ['id' => 8, 'idCategorie' => 2, 'libelle' => "2. Traiter des demandes concernant les applications", 'idJustification' => 1, 'vu' => '0'],
            ['id' => 9, 'idCategorie' => 2, 'libelle' => "3. Collecter, suivre et orienter des demandes", 'idJustification' => 4, 'vu' => '1'],
            ['id' => 10, 'idCategorie' => 3, 'libelle' => "1. Participer à l'évolution d'un site Web exploitant les données de l'organisation.", 'idJustification' => 8, 'vu' => '1'],
            ['id' => 11, 'idCategorie' => 3, 'libelle' => "2. Référencer les services en ligne de l'organisation et mesurer leur visibilité.", 'idJustification' => 1, 'vu' => '0'],
            ['id' => 12, 'idCategorie' => 3, 'libelle' => "3. Participer à la valorisation de l'image de l'organisation sur les médias numériques en tenant compte du cadre juridique et des enjeux économiques", 'idJustification' => 1, 'vu' => '0'],
            ['id' => 13, 'idCategorie' => 4, 'libelle' => "1. Analyser les objectifs et les modalités d'organisation d'un projet", 'idJustification' => 1, 'vu' => '0'],
            ['id' => 14, 'idCategorie' => 4, 'libelle' => "2. Évaluer les indicateurs de suivi d'un projet et analyser les écarts", 'idJustification' => 1, 'vu' => '0'],
            ['id' => 15, 'idCategorie' => 4, 'libelle' => "3. Planifier les activités", 'idJustification' => 11, 'vu' => '1'],
            ['id' => 16, 'idCategorie' => 5, 'libelle' => "1. Déployer un service", 'idJustification' => 10, 'vu' => '1'],
            ['id' => 17, 'idCategorie' => 5, 'libelle' => "2. Réaliser les tests d'intégration et d'acceptation d'un service.", 'idJustification' => 1, 'vu' => '0'],
            ['id' => 18, 'idCategorie' => 5, 'libelle' => "3. Accompagner les utilisateurs dans la mise en place d'un service", 'idJustification' => 10, 'vu' => '1'],
            ['id' => 19, 'idCategorie' => 6, 'libelle' => "1. Mettre en place son environnement d'apprentissage personnel", 'idJustification' => 5, 'vu' => '1'],
            ['id' => 20, 'idCategorie' => 6, 'libelle' => "2. Gérer son identité professionnelle", 'idJustification' => 6, 'vu' => '1'],
            ['id' => 21, 'idCategorie' => 6, 'libelle' => "3. Développer son projet professionnel", 'idJustification' => 7, 'vu' => '1'],
            ['id' => 22, 'idCategorie' => 6, 'libelle' => "4. Mettre en œuvre des outils et stratégies de veille informationnelle", 'idJustification' => 9, 'vu' => '1'],
        ]);

        // 4. personnelle
        $this->db->table('personnelle')->insertBatch([
            [
                'idPersonne'      => 1,
                'urlPdp'          => 'images/me.png',
                'nom'             => 'FRANCES--LAVILLAUROY',
                'prenom'          => 'Mathis',
                'etudes'          => 'Étudiant en BTS SIO, option SLAM',
                'dateDeNaissance' => '2006-07-02',
                'localisation'    => 'Quimper, Finistère, France',
                'meConcernant'    => "Bonjour,\r\n\r\nJe m'appel Mathis FRANCES--LAVILLAUROY, je suis actuellement en BTS SIO 2ème année."
            ]
        ]);

        // 5. lienexternes
        $this->db->table('lienexternes')->insertBatch([
            ['idLien' => 1, 'libelle' => 'LinkedIn', 'url' => 'https://www.linkedin.com/in/mathis-frances-lavillauroy-83890a330/'],
            ['idLien' => 2, 'libelle' => 'CV en ligne', 'url' => 'mathisfcslav-cv.22web.org'],
        ]);

        // 6. loisirs
        $this->db->table('loisirs')->insertBatch([
            ['idLoisir' => 1, 'libelle' => 'Natation', 'urlImage' => 'images/natation.png'],
            ['idLoisir' => 2, 'libelle' => 'Coder', 'urlImage' => 'images/coder.png'],
            ['idLoisir' => 3, 'libelle' => 'Jeux Vidéo', 'urlImage' => 'images/gaming.png'],
        ]);

        // 7. projets
        $this->db->table('projets')->insertBatch([
            [
                'id'                => 1,
                'libelleProjet'     => 'Site de sommaire',
                'descriptionProjet' => "Un projet perso qui me suis depuis mes débuts dans le développement web, en constante évolution avec mon évolution en cours.",
                'urlProjet'         => 'https://summury.22web.org/',
                'dateRealisation'   => '2025-10-07'
            ],
            [
                'id'                => 8,
                'libelleProjet'     => 'Mon CV',
                'descriptionProjet' => "Mon CV est entièrement fait avec php et une base de données.",
                'urlProjet'         => 'https://github.com/Titiss77/CV',
                'dateRealisation'   => '2025-10-07'
            ],
            [
                'id'                => 9,
                'libelleProjet'     => 'Gestionnaire de ticket',
                'descriptionProjet' => "J'ai recréé de A à Z un gestionnaire de ticket pour mon club de natation parce que l'hébergement gratuit ne supporte pas GLPI.",
                'urlProjet'         => 'https://github.com/Titiss77/ticketsPec',
                'dateRealisation'   => '2025-10-22'
            ]
        ]);

        // 8. competences
        $this->db->table('competences')->insertBatch([
            ['id' => 1, 'idPersonne' => 1, 'nom' => 'HTML / CSS', 'pourcentage' => 100, 'type' => 'professionnel'],
            ['id' => 2, 'idPersonne' => 1, 'nom' => 'MySQL', 'pourcentage' => 100, 'type' => 'professionnel'],
            ['id' => 3, 'idPersonne' => 1, 'nom' => 'JavaScript', 'pourcentage' => 70, 'type' => 'professionnel'],
            ['id' => 4, 'idPersonne' => 1, 'nom' => 'Python', 'pourcentage' => 100, 'type' => 'professionnel'],
            ['id' => 5, 'idPersonne' => 1, 'nom' => 'Créativité', 'pourcentage' => 90, 'type' => 'personnel'],
            ['id' => 6, 'idPersonne' => 1, 'nom' => 'Adaptation', 'pourcentage' => 90, 'type' => 'personnel'],
            ['id' => 7, 'idPersonne' => 1, 'nom' => 'Sérieux', 'pourcentage' => 95, 'type' => 'personnel'],
            ['id' => 8, 'idPersonne' => 1, 'nom' => 'Pédagogie', 'pourcentage' => 95, 'type' => 'personnel'],
        ]);

        // 9. contact
        $this->db->table('contact')->insertBatch([
            ['id' => 1, 'adressIp' => '127.0.0.1', 'date' => '2025-05-15', 'sexe' => 1, 'nom' => 'Mathis', 'prenom' => 'fdgdfg', 'mail' => 'mathisfrances11@gmail.com', 'message' => 'ggrtrt'],
            ['id' => 2, 'adressIp' => '127.0.0.1', 'date' => '2025-05-15', 'sexe' => 1, 'nom' => 'Mathis', 'prenom' => 'fdgdfg', 'mail' => 'mathisfrances11@gmail.com', 'message' => 'ggrtrt'],
            ['id' => 3, 'adressIp' => '127.0.0.1', 'date' => '2025-05-15', 'sexe' => 1, 'nom' => 'Mathis', 'prenom' => 'fdgdfg', 'mail' => 'mathisfrances11@gmail.com', 'message' => 'trgg'],
        ]);

        // 10. exppro
        $this->db->table('exppro')->insertBatch([
            ['id' => 1, 'idPersonne' => 1, 'Libelle' => 'Agriculture', 'NomEntreprise' => "Partag'emploi", 'Periode' => 'Juillet 2021', 'Description' => "Arrachage des échalottes", 'cheminImg' => './images/partage_emploi.png'],
            ['id' => 2, 'idPersonne' => 1, 'Libelle' => 'Agriculture', 'NomEntreprise' => "Partag'emploi", 'Periode' => 'Fevrier 2022', 'Description' => "Mise en terre des échalottes", 'cheminImg' => './images/partage_emploi.png'],
            ['id' => 3, 'idPersonne' => 1, 'Libelle' => 'Stage de 2nd', 'NomEntreprise' => "Imprimerie", 'Periode' => 'Avril 2022', 'Description' => "Stage de seconde.", 'cheminImg' => './images/imprimante.png'],
            ['id' => 4, 'idPersonne' => 1, 'Libelle' => 'SNU', 'NomEntreprise' => "", 'Periode' => 'Juin 2022', 'Description' => "Service National Universel", 'cheminImg' => './images/snu.png'],
            ['id' => 5, 'idPersonne' => 1, 'Libelle' => 'CER France', 'NomEntreprise' => "CER France", 'Periode' => 'Août 2023', 'Description' => "Stage dans le secteur du Développemnt Web et la Cybersécurité", 'cheminImg' => './images/cerfrance.png'],
        ]);

        // 11. formation
        $this->db->table('formation')->insertBatch([
            ['id' => 1, 'idPersonne' => 0, 'NomEtablissement' => 'Collège Auguste Brizeux', 'Periode' => '2016 - 2020', 'Description' => 'Obtention du Brevet des Collèges', 'CheminImg' => './images/ecole.png'],
            ['id' => 2, 'idPersonne' => 1, 'NomEtablissement' => 'Lycée Auguste Brizeux', 'Periode' => '2020 - 2024', 'Description' => 'Obtention du Baccalauréat Général mention assez bien', 'CheminImg' => './images/ecole.png'],
            ['id' => 3, 'idPersonne' => 1, 'NomEtablissement' => 'Lycée Jean Chaptal', 'Periode' => '2024 - ...', 'Description' => 'Etudes supérieurs', 'CheminImg' => './images/ecole.png'],
        ]);

        // 12. infocontact
        $this->db->table('infocontact')->insertBatch([
            ['id' => 1, 'Nom' => 'FRANCES--LAVILLAUROY Mathis', 'Adresse' => '27 Cité de la Ruche - 29000 Quimper', 'Telephone' => '+33680357193', 'Mail' => 'mathisfrances11@gmail.com', 'Permis' => 'Oui'],
        ]);

        // 13. themes
        $this->db->table('themes')->insertBatch([
            ['varName' => '--bg-body', 'varValue' => '#e0e0e0'],
            ['varName' => '--bg-h-f', 'varValue' => '#d4d4d4'],
            ['varName' => '--color-text', 'varValue' => '#4d4d4d'],
            ['varName' => '--color-border', 'varValue' => 'none'],
            ['varName' => '--couleur-font-anime', 'varValue' => '#00f7ff00'],
            ['varName' => '--couleur-false', 'varValue' => '#a02121'],
            ['varName' => '--couleur-btn-anime', 'varValue' => '#6c93d2'],
            ['varName' => '--couleur-btn-film', 'varValue' => 'rgb(37, 115, 66)'],
            ['varName' => '--couleur-btn-serie', 'varValue' => 'rgb(109, 67, 152);'],
            ['varName' => '--couleur-btn-scan', 'varValue' => '#626874'],
            ['varName' => '--couleur-btn-all', 'varValue' => 'rgb(145, 60, 63)'],
            ['varName' => '--box-shadow', 'varValue' => '2px 2px 20px 0px #555555'],
            ['varName' => '--box-shadow-hover', 'varValue' => '7px 7px 7px 0px #00000069'],
            ['varName' => '--border-radius', 'varValue' => '1rem'],
        ]);
    }
}