<?php

namespace App\Models;

use CodeIgniter\Model;

class orgu_model extends Model
{
    protected $table      = 'orgu';
    protected $primaryKey = 'id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';
    protected $useSoftDeletes = true;

    protected $allowedFields = ['orgu_cesit','orgu_orguhane','orgu_fire','orgu_birimfiyat','orgu_kur'];

    protected $useTimestamps = false;
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';

    protected $validationRules    = [];
    protected $validationMessages = [];
    protected $skipValidation     = false;
}