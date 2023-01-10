<?php
namespace App\Models;

use CodeIgniter\Model;

class SergeantModel extends Model {
 
    protected $table = 'ci_sergeant';

    protected $primaryKey = 'sergeant_id';
    
	// get all fields of table
    protected $allowedFields = ['sergeant_id','department_id','company_id','designation_id','sergeant_name','description','created_at'];
	
	protected $validationRules = [];
	protected $validationMessages = [];
	protected $skipValidation = false;
	
}
?>