<?php
namespace App\Controllers;

use App\Models\PersonnelleModel;
use App\Models\LienExternesModel;
use App\Models\LoisirsModel;

class Home extends BaseController
{
    public function index()
    {
        // Chargement du helper pour l'âge
        helper('age');

        // Initialisation des modèles
        $personnelleModel = new PersonnelleModel();
        $lienExternesModel = new LienExternesModel();
        $loisirsModel = new LoisirsModel();

        // Récupération des données (équivalent de fetch() et fetchAll())
        $data = [
            'title'        => 'Accueil - Portfolio',
            'personne'     => $personnelleModel->first(),
            'lienExternes' => $lienExternesModel->findAll(),
            'loisirs'      => $loisirsModel->findAll()
        ];

        // Appel des vues dans l'ordre (header, puis contenu, puis footer)
        return view('templates/header', $data)
             . view('home/index', $data)
             . view('templates/footer');
    }
}