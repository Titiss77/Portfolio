<?php
namespace App\Models;
use CodeIgniter\Model;

class ContactModel extends Model {
    protected $table = 'contact';
    protected $primaryKey = 'id';
    protected $allowedFields = ['adressIp', 'date', 'sexe', 'nom', 'prenom', 'mail', 'message'];
    protected $useTimestamps = false; // Car nous gérons 'date' manuellement ou via MySQL (NOW())
}