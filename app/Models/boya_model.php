<?php

namespace App\Models;

use CodeIgniter\Model;

class boya_model extends Model
{
    protected $table      = 'boya';
    protected $primaryKey = 'id';

    protected $useAutoIncrement = true;

    protected $returnType     = 'array';
    protected $useSoftDeletes = true;

    protected $allowedFields = [
        'boya_cesit',
        'boya_boyahane',
        'boya_fire',
        'boya_birimfiyat',
        'boya_kur',
        
    ];

    protected $useTimestamps = false;
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';

    protected $validationRules    = [];
    protected $validationMessages = [];
    protected $skipValidation     = false;
}