<?php
namespace App\Models;
use CodeIgniter\Model;

class PortfolioModel extends Model {
    public function getPersonne() {
        return $this->db->table('personnelle')->get()->getRowArray();
    }

    public function getLiens() {
        return $this->db->table('lienexternes')->get()->getResultArray();
    }

    public function getLoisirs() {
        return $this->db->table('loisirs')->get()->getResultArray();
    }
    
    public function getProjets() {
        return $this->db->table('projets')->orderBy('id', 'DESC')->get()->getResultArray();
    }
}