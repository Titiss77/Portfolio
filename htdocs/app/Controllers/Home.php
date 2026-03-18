<?php
namespace App\Controllers;

use App\Models\PersonnelleModel;
use App\Models\LienExternesModel;
use App\Models\LoisirsModel;
use App\Models\CompetenceModel;
use App\Models\ProjetModel;
use App\Models\ContactModel;
use App\Models\CategoriesBloc1Model;
use App\Models\CompetencesAcocherModel;
use App\Models\JustificationModel;

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

    public function tableau()
    {
        $catModel = new CategoriesBloc1Model();
        $compModel = new CompetencesAcocherModel();
        $justifModel = new JustificationModel();

        // On récupère les catégories
        $categoriesBrutes = $catModel->findAll();
        $categories = [];

        // On construit un tableau complet pour la vue (Catégories -> Compétences -> Justifications)
        foreach ($categoriesBrutes as $cat) {
            $competences = $compModel->where('idCategorie', $cat['id'])->orderBy('id', 'ASC')->findAll();
            
            // Pour chaque compétence, on cherche sa justification si elle a été vue
            foreach ($competences as &$comp) {
                if ($comp['vu'] === '1' && !empty($comp['idJustification'])) {
                    $comp['justification_data'] = $justifModel->find($comp['idJustification']);
                } else {
                    $comp['justification_data'] = null;
                }
            }
            $cat['competences'] = $competences;
            $categories[] = $cat;
        }

        $data = [
            'title'      => 'Compétences - Portfolio',
            'categories' => $categories
        ];
        
        return view('templates/header', $data)
             . view('home/tableau', $data)
             . view('templates/footer');
    }

    public function projets()
    {
        $projetModel = new ProjetModel();
        $data = [
            'title'   => 'Mes Projets - Portfolio',
            'projets' => $projetModel->orderBy('id', 'DESC')->findAll()
        ];
        
        return view('templates/header', $data)
             . view('home/projets', $data)
             . view('templates/footer');
    }

    public function contact()
    {
        helper('form');
        $data = ['title' => 'Contacts - Portfolio'];
        
        return view('templates/header', $data)
             . view('home/contact', $data)
             . view('templates/footer');
    }

    public function submitContact()
    {
        helper('form');
        
        // Validation basique
        $rules = [
            'nom'    => 'required|min_length[2]',
            'prenom' => 'required|min_length[2]',
            'mail'   => 'required|valid_email',
            'texte'  => 'required|min_length[5]'
        ];

        if (!$this->validate($rules)) {
            return redirect()->back()->withInput()->with('errors', $this->validator->getErrors());
        }

        // Sauvegarde en base de données
        $contactModel = new ContactModel();
        $contactModel->save([
            'adressIp' => $this->request->getIPAddress(),
            'date'     => date('Y-m-d H:i:s'),
            'sexe'     => $this->request->getPost('sexe'),
            'nom'      => $this->request->getPost('nom'),
            'prenom'   => $this->request->getPost('prenom'),
            'mail'     => $this->request->getPost('mail'),
            'message'  => $this->request->getPost('texte') // 'texte' vient du formulaire, 'message' va dans la BDD
        ]);

        return redirect()->to('contact')->with('success', 'Votre message a bien été envoyé !');
    }
}