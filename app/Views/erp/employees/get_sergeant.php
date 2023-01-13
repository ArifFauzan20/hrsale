<?php
use App\Models\SergeantModel;
use App\Models\SystemModel;
use App\Models\UsersModel;

$SergeantModel = new SergeantModel();
$UsersModel = new UsersModel();

$session = \Config\Services::session();
$usession = $session->get('sup_username');

$user_info = $UsersModel->where('user_id', $usession['sup_user_id'])->first();
if($user_info['user_type'] == 'staff'){
	$sergeants = $SergeantModel
  ->where('company_id',$user_info['company_id'])
  ->where('department_id',$department_id)
  ->where('designation_id',$Designation_id)
  ->orderBy('sergeant_id', 'ASC')->findAll();
} else {
	$sergeants = $SergeantModel
  ->where('company_id',$usession['sup_user_id'])
  ->where('department_id',$department_id)
  ->where('designation_id',$Designation_id)
  ->orderBy('sergeant_id', 'ASC')->findAll();
}
?>

<div class="form-group" id="sergeant_ajax">
  <label class="form-label">
    <?= lang('Dashboard.left_sergeant');?>
  </label>
  <span class="text-danger">*</span>
  <select class="form-control"
   name="sergeant_id" 
   data-plugin="select_hrm" 
   data-placeholder="<?= lang('Dashboard.left_sergeant');?>">
    <option value="">
    <?= lang('Dashboard.left_sergeant');?>
    </option>
    <?php foreach($sergeants as $isergean) {?>
    <option value="<?= $isergean['sergeant_id']?>">
    <?= $isergean['sergeant_name']?>
    </option>
    <?php } ?>
  </select>
</div>
<script type="text/javascript">
$(document).ready(function(){	
	$('[data-plugin="select_hrm"]').select2($(this).attr('data-options'));
	$('[data-plugin="select_hrm"]').select2({ width:'100%' });
});
</script>