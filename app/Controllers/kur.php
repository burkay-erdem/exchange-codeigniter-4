<?php 
namespace App\Controllers;

use CodeIgniter\Config\BaseConfig;
use Teknomavi\Tcmb\Doviz;
class kur extends BaseController{

    public function get_kur(){

        $doviz = new Doviz();
        echo " USD Alış:" . $doviz->kurAlis("USD");
        echo " USD Satış:" . $doviz->kurSatis("USD");
        echo " EURO Efektif Alış:" . $doviz->kurAlis("EUR", Doviz::TYPE_EFEKTIFALIS);
        echo " EURO Efektif Satış:" . $doviz->kurSatis("EUR", Doviz::TYPE_EFEKTIFSATIS);

    }


}

?>