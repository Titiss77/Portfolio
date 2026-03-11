<?php
namespace App\Controllers;
use App\Models\ContactModel;

class Contact extends BaseController {
    
    public function index() {
        $data = ['title' => 'Contacts'];
        return view('templates/header', $data)
             . view('contact/index')
             . view('templates/footer');
    }

    public function reponse() {
        $contactModel = new ContactModel();
        $request = \Config\Services::request();

        // Sécurisation et récupération
        $nom = trim($request->getPost('nom'));
        $prenom = trim($request->getPost('prenom'));
        $mail = filter_var(trim($request->getPost('mail')), FILTER_VALIDATE_EMAIL);
        $texte = trim($request->getPost('texte'));
        $sexe = $request->getPost('sexe') ?? 1;

        if ($mail) {
            $contactModel->insert([
                'adressIp' => $request->getIPAddress(),
                'date' => date('Y-m-d H:i:s'),
                'sexe' => $sexe,
                'nom' => $nom,
                'prenom' => $prenom,
                'mail' => $mail,
                'message' => $texte
            ]);
        }

        $data = [
            'title' => 'Réponse',
            'nom' => $nom,
            'prenom' => $prenom,
            'mail' => $mail,
            'texte' => $texte,
            'sexe' => $sexe,
            'valide' => $mail !== false
        ];

        return view('templates/header', $data)
             . view('contact/reponse', $data)
             . view('templates/footer');
    }
}