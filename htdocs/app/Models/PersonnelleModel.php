<?php
namespace App\Models;

use CodeIgniter\Model;

class PersonnelleModel extends Model
{
    protected $table = 'infos_generales';
    protected $primaryKey = 'idPersonne';
    protected $allowedFields = ['urlPdp', 'nom', 'prenom', 'etudes', 'dateDeNaissance', 'localisation', 'meConcernant'];
}
