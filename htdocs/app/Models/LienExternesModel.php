<?php
namespace App\Models;

use CodeIgniter\Model;

class LienExternesModel extends Model
{
    protected $table = 'liens_externes';
    protected $primaryKey = 'idLien';

    function getOneLink($id)
    {
        return $this->where('idLien', $id)->first();
    }
}
