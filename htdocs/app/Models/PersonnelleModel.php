<?php
namespace App\Models;

use CodeIgniter\Model;

class PersonnelleModel extends Model
{
    protected $table = 'infos_generales';
    protected $primaryKey = 'id_personne';
    protected $allowedFields = ['photo_de_profil', 'nom', 'prenom', 'etudes', 'dateDeNaissance', 'localisation', 'meConcernant'];
}
