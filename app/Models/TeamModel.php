<?php
namespace App\Models;

use CodeIgniter\Model;

class TeamModel extends Model {
 
    protected $table = 'ci_teams';

    protected $primaryKey = 'team_id';
    
	// get all fields of table
    protected $allowedFields = ['team_id','department_id','company_id','designation_id','sergeant_id','team_name','description','created_at'];
	
	protected $validationRules = [];
	protected $validationMessages = [];
	protected $skipValidation = false;
	
}
?>