<?php

namespace App\Models;

use CodeIgniter\Model;

class ip_model extends Model
{
    protected $table      = 'ip';
    protected $primaryKey = 'id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';
    protected $useSoftDeletes = true;

    protected $allowedFields = [
        'ip_adi',
        'ip_imalat',
        'ip_birim_fiyat',
        'ip_kur',
        
    ];

    protected $useTimestamps = false;
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';

    protected $validationRules    = [];
    protected $validationMessages = [];
    protected $skipValidation     = false;
}