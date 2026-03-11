<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class PortfolioMigration extends Migration
{
    public function up()
    {
        // 1. categoriesbloc1
        $this->forge->addField([
            'id'          => ['type' => 'INT', 'auto_increment' => true],
            'appellation' => ['type' => 'TEXT'],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('categoriesbloc1');

        // 2. justification
        $this->forge->addField([
            'id'            => ['type' => 'INT', 'auto_increment' => true],
            'justification' => ['type' => 'TEXT'],
            'imgUrl'        => ['type' => 'VARCHAR', 'constraint' => 100, 'null' => true],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('justification');

        // 3. competencesacocher (avec clés étrangères)
        $this->forge->addField([
            'id'              => ['type' => 'INT', 'auto_increment' => true],
            'idCategorie'     => ['type' => 'INT'],
            'libelle'         => ['type' => 'TEXT'],
            'idJustification' => ['type' => 'INT', 'null' => true],
            'vu'              => ['type' => 'ENUM', 'constraint' => ['0', '1'], 'default' => '0'],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->addForeignKey('idCategorie', 'categoriesbloc1', 'id', 'CASCADE', 'CASCADE');
        $this->forge->addForeignKey('idJustification', 'justification', 'id', 'SET NULL', 'CASCADE');
        $this->forge->createTable('competencesacocher');

        // 4. competences
        $this->forge->addField([
            'id'          => ['type' => 'INT', 'auto_increment' => true],
            'idPersonne'  => ['type' => 'INT', 'default' => 1],
            'nom'         => ['type' => 'VARCHAR', 'constraint' => 100],
            'pourcentage' => ['type' => 'INT'],
            'type'        => ['type' => 'ENUM', 'constraint' => ['professionnel', 'personnel']],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('competences');

        // 5. contact
        $this->forge->addField([
            'id'       => ['type' => 'INT', 'auto_increment' => true],
            'adressIp' => ['type' => 'VARCHAR', 'constraint' => 15],
            'date'     => ['type' => 'DATE'],
            'sexe'     => ['type' => 'INT'],
            'nom'      => ['type' => 'VARCHAR', 'constraint' => 50],
            'prenom'   => ['type' => 'VARCHAR', 'constraint' => 20],
            'mail'     => ['type' => 'VARCHAR', 'constraint' => 50],
            'message'  => ['type' => 'TEXT'],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('contact');

        // 6. exppro
        $this->forge->addField([
            'id'            => ['type' => 'INT', 'auto_increment' => true],
            'idPersonne'    => ['type' => 'INT', 'default' => 1],
            'Libelle'       => ['type' => 'VARCHAR', 'constraint' => 30],
            'NomEntreprise' => ['type' => 'VARCHAR', 'constraint' => 100],
            'Periode'       => ['type' => 'VARCHAR', 'constraint' => 50],
            'Description'   => ['type' => 'TEXT'],
            'cheminImg'     => ['type' => 'VARCHAR', 'constraint' => 100],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('exppro');

        // 7. formation
        $this->forge->addField([
            'id'               => ['type' => 'INT', 'auto_increment' => true],
            'idPersonne'       => ['type' => 'INT', 'default' => 1],
            'NomEtablissement' => ['type' => 'VARCHAR', 'constraint' => 100],
            'Periode'          => ['type' => 'VARCHAR', 'constraint' => 11],
            'Description'      => ['type' => 'TEXT'],
            'CheminImg'        => ['type' => 'VARCHAR', 'constraint' => 100, 'default' => './images/ecole.png'],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('formation');

        // 8. infocontact
        $this->forge->addField([
            'id'        => ['type' => 'INT', 'auto_increment' => true],
            'Nom'       => ['type' => 'VARCHAR', 'constraint' => 100],
            'Adresse'   => ['type' => 'VARCHAR', 'constraint' => 100],
            'Telephone' => ['type' => 'VARCHAR', 'constraint' => 13],
            'Mail'      => ['type' => 'VARCHAR', 'constraint' => 100],
            'Permis'    => ['type' => 'ENUM', 'constraint' => ['Oui', 'Non'], 'null' => true],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('infocontact');

        // 9. lienexternes
        $this->forge->addField([
            'idLien'  => ['type' => 'INT', 'auto_increment' => true],
            'libelle' => ['type' => 'VARCHAR', 'constraint' => 100],
            'url'     => ['type' => 'VARCHAR', 'constraint' => 100],
        ]);
        $this->forge->addKey('idLien', true);
        $this->forge->createTable('lienexternes');

        // 10. loisirs
        $this->forge->addField([
            'idLoisir' => ['type' => 'INT', 'auto_increment' => true],
            'libelle'  => ['type' => 'VARCHAR', 'constraint' => 100],
            'urlImage' => ['type' => 'VARCHAR', 'constraint' => 100],
        ]);
        $this->forge->addKey('idLoisir', true);
        $this->forge->createTable('loisirs');

        // 11. personnelle
        $this->forge->addField([
            'idPersonne'      => ['type' => 'INT', 'auto_increment' => true],
            'urlPdp'          => ['type' => 'VARCHAR', 'constraint' => 100],
            'nom'             => ['type' => 'VARCHAR', 'constraint' => 30],
            'prenom'          => ['type' => 'VARCHAR', 'constraint' => 20],
            'etudes'          => ['type' => 'VARCHAR', 'constraint' => 100],
            'dateDeNaissance' => ['type' => 'DATE'],
            'localisation'    => ['type' => 'VARCHAR', 'constraint' => 100],
            'meConcernant'    => ['type' => 'TEXT'],
        ]);
        $this->forge->addKey('idPersonne', true);
        $this->forge->createTable('personnelle');

        // 12. projets
        $this->forge->addField([
            'id'                => ['type' => 'INT', 'auto_increment' => true],
            'libelleProjet'     => ['type' => 'VARCHAR', 'constraint' => 100],
            'descriptionProjet' => ['type' => 'TEXT'],
            'urlProjet'         => ['type' => 'TEXT'],
            'dateRealisation'   => ['type' => 'DATE'],
        ]);
        $this->forge->addKey('id', true);
        $this->forge->createTable('projets');

        // 13. themes
        $this->forge->addField([
            'varName'  => ['type' => 'VARCHAR', 'constraint' => 50],
            'varValue' => ['type' => 'VARCHAR', 'constraint' => 70],
        ]);
        $this->forge->addKey('varName', true);
        $this->forge->createTable('themes');
    }

    public function down()
    {
        $this->forge->dropTable('themes');
        $this->forge->dropTable('projets');
        $this->forge->dropTable('personnelle');
        $this->forge->dropTable('loisirs');
        $this->forge->dropTable('lienexternes');
        $this->forge->dropTable('infocontact');
        $this->forge->dropTable('formation');
        $this->forge->dropTable('exppro');
        $this->forge->dropTable('contact');
        $this->forge->dropTable('competences');
        $this->forge->dropTable('competencesacocher');
        $this->forge->dropTable('justification');
        $this->forge->dropTable('categoriesbloc1');
    }
}