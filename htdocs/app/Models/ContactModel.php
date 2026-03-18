<?php
namespace App\Models;
use CodeIgniter\Model;

class ContactModel extends Model
{
    protected $table = 'contact';
    protected $primaryKey = 'id';
    // allowedFields protège contre l'injection de données indésirables
    protected $allowedFields = ['adressIp', 'date', 'sexe', 'nom', 'prenom', 'mail', 'message'];
}