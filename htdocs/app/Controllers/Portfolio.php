<?php
namespace App\Controllers;
use App\Models\PortfolioModel;

class Portfolio extends BaseController {
    
    public function index() {
        helper('age'); // Charge notre fonction age()
        $model = new PortfolioModel();

        $data = [
            'title' => 'Accueil - Portfolio',
            'personne' => $model->getPersonne(),
            'lienExternes' => $model->getLiens(),
            'loisirs' => $model->getLoisirs()
        ];

        return view('templates/header', $data)
             . view('portfolio/index', $data)
             . view('templates/footer');
    }

    public function projets() {
        $model = new PortfolioModel();
        $data = [
            'title' => 'Mes Projets - Portfolio',
            'projets' => $model->getProjets()
        ];

        return view('templates/header', $data)
             . view('portfolio/projets', $data)
             . view('templates/footer');
    }

    public function tableau() {
        // Logique complexe extraite de votre fichier tableau.php
        $db = \Config\Database::connect();
        
        $categories = $db->table('categoriesbloc1')->get()->getResultArray();
        foreach ($categories as &$cat) {
            $cat['competences'] = $db->table('competencesacocher')
                                     ->where('idCategorie', $cat['id'])
                                     ->orderBy('id', 'ASC')
                                     ->get()->getResultArray();
                                     
            // Récupérer les justifications si "vu" = 1
            foreach ($cat['competences'] as &$comp) {
                if ($comp['vu']) {
                    $comp['justification_data'] = $db->table('justification')
                                                     ->where('id', $comp['idJustification'])
                                                     ->get()->getRowArray();
                }
            }
        }

        $data = [
            'title' => 'Compétences - Portfolio',
            'categories' => $categories
        ];

        return view('templates/header', $data)
             . view('portfolio/tableau', $data)
             . view('templates/footer');
    }
}