<?php
use App\Models\SystemModel;
use App\Models\SuperroleModel;
use App\Models\UsersModel;
use App\Models\MembershipModel;
use App\Models\CompanymembershipModel;

$SystemModel = new SystemModel();
$UsersModel = new UsersModel();
$SuperroleModel = new SuperroleModel();
$MembershipModel = new MembershipModel();
$CompanymembershipModel = new CompanymembershipModel();
$session = \Config\Services::session();
$router = service('router');
$usession = $session->get('sup_username');
$user_info = $UsersModel->where('user_id', $usession['sup_user_id'])->first();
$xin_system = $SystemModel->where('setting_id', 1)->first();
?>
<?php $arr_mod = select_module_class($router->controllerName(),$router->methodName()); ?>
<?php 
if($user_info['user_type'] == 'staff'){
	$cmembership = $CompanymembershipModel->where('company_id', $user_info['company_id'])->first();
} else {
	$cmembership = $CompanymembershipModel->where('company_id', $usession['sup_user_id'])->first();
}

//$mem_info = $MembershipModel->where('membership_id', $cmembership['membership_id'])->first();
//$modules_permission = unserialize($mem_info['modules_permission']);
$xin_com_system = erp_company_settings();
$setup_modules = unserialize($xin_com_system['setup_modules']);
?>

<ul class="pc-navbar">
  <li class="pc-item pc-caption">
    <label>
      <?= lang('Dashboard.dashboard_your_company');?>
    </label>
  </li>
  <!-- Dashboard|Home -->
  <li class="pc-item"><a href="<?= site_url('erp/desk');?>" class="pc-link "><span class="pc-micon"><i data-feather="home"></i></span><span class="pc-mtext">
    <?= lang('Dashboard.dashboard_title');?>
    </span></a></li>
  <!-- Employees -->
  <li class="pc-item"><a href="<?= site_url('erp/staff-list');?>" class="pc-link "><span class="pc-micon"><i data-feather="users"></i></span><span class="pc-mtext">
    <?= lang('Dashboard.dashboard_employees');?>
    </span></a></li>
  <!-- CoreHR -->
  <li class="pc-item <?php if(!empty($arr_mod['corehr_open']))echo $arr_mod['corehr_open'];?>"> <a href="#" class="pc-link sidenav-toggle"> <span class="pc-micon"><i data-feather="crosshair"></i></span>
    <?= lang('Dashboard.dashboard_core_hr');?>
    </span><span class="pc-arrow"><i data-feather="chevron-right"></i></span> </a>
    <ul class="pc-submenu" <?php if(!empty($arr_mod['core_style_ul']))echo $arr_mod['core_style_ul'];?>>
      <li class="pc-item <?php if(!empty($arr_mod['department_active']))echo $arr_mod['department_active'];?>"> <a class="pc-link" href="<?= site_url('erp/departments-list');?>" >
        <?= lang('Dashboard.left_department');?>
        </a> </li>
      <li class="pc-item <?php if(!empty($arr_mod['designation_active']))echo $arr_mod['designation_active'];?>"> <a class="pc-link" href="<?= site_url('erp/designation-list');?>" >
        <?= lang('Dashboard.left_designation');?>
        </a> </li>
      <li class="pc-item <?php if(!empty($arr_mod['sergeant_active']))echo $arr_mod['sergeant_active'];?>"> <a class="pc-link" href="<?= site_url('erp/sergeant-list');?>" >
        <?= lang('Dashboard.left_sergeant');?>
        </a> </li>
      <li class="pc-item <?php if(!empty($arr_mod['policies_active']))echo $arr_mod['policies_active'];?>"> <a class="pc-link" href="<?= site_url('erp/policies-list');?>" >
        <?= lang('Dashboard.header_policies');?>
        </a> </li>
      <li class="pc-item <?php if(!empty($arr_mod['announcements_active']))echo $arr_mod['announcements_active'];?>"> <a class="pc-link" href="<?= site_url('erp/news-list');?>" >
        <?= lang('Dashboard.left_announcement_make');?>
        </a> </li>
        <?php if(isset($setup_modules['orgchart'])): if($setup_modules['orgchart']==1):?>
      <li class="pc-item <?php if(!empty($arr_mod['org_chart']))echo $arr_mod['org_chart'];?>"> <a class="pc-link" href="<?= site_url('erp/chart');?>" >
        <?= lang('Dashboard.xin_org_chart_title');?>
        </a> </li>
        <?php endif; endif;?>
    </ul>
  </li>
  <!-- Attendance -->
  <!-- <li class="pc-item pc-hasmenu <?php if(!empty($arr_mod['attendance_open']))echo $arr_mod['attendance_open'];?>"> <a href="#" class="pc-link sidenav-toggle"><span class="pc-micon"><i data-feather="clock"></i></span><span class="pc-mtext">
    <?= lang('Dashboard.left_attendance');?>
    </span><span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
    <ul class="pc-submenu" <?php if(!empty($arr_mod['attendance_style_ul']))echo $arr_mod['attendance_style_ul'];?>>
      <li class="pc-item <?php if(!empty($arr_mod['attnd_active']))echo $arr_mod['attnd_active'];?>"> <a class="pc-link" href="<?= site_url('erp/attendance-list');?>" >
        <?= lang('Dashboard.left_attendance');?>
        </a> </li>
      <li class="pc-item <?php if(!empty($arr_mod['upd_attnd_active']))echo $arr_mod['upd_attnd_active'];?>"> <a class="pc-link" href="<?= site_url('erp/manual-attendance');?>" >
        <?= lang('Dashboard.left_update_attendance');?>
        </a> </li>
      <li class="pc-item <?php if(!empty($arr_mod['timesheet_active']))echo $arr_mod['timesheet_active'];?>"> <a class="pc-link" href="<?= site_url('erp/monthly-attendance');?>" >
        <?= lang('Dashboard.xin_month_timesheet_title');?>
        </a> </li>
      <li class="pc-item <?php if(!empty($arr_mod['timesheet_active']))echo $arr_mod['timesheet_active'];?>"> <a class="pc-link" href="<?= site_url('erp/overtime-request');?>" >
        <?= lang('Dashboard.xin_overtime_request');?>
        </a> </li>
    </ul>
  </li> -->
  <!-- Finance -->
  
  <!-- Payroll -->

  <!-- Projects -->

  <!-- Clients -->
  <!-- <li class="pc-item"><a href="<?= site_url('erp/clients-list');?>" class="pc-link "><span class="pc-micon"><i data-feather="user-check"></i></span><span class="pc-mtext">
    <?= lang('Projects.xin_manage_clients');?>
    </span></a></li> -->
  <!-- Leads -->
  
  <!-- Performance -->
  <!-- <?php if(isset($setup_modules['performance'])): if($setup_modules['performance']==1):?>
  <li class="<?php if(!empty($arr_mod['talent_open']))echo $arr_mod['talent_open'];?> pc-item"> <a href="#" class="pc-link sidenav-toggle"> <span class="pc-micon"><i data-feather="aperture"></i></span>
    <?= lang('Dashboard.left_talent_management');?>
    </span><span class="pc-arrow"><i data-feather="chevron-right"></i></span> </a>
    <ul class="pc-submenu" <?php if(!empty($arr_mod['talent_style_ul']))echo $arr_mod['talent_style_ul'];?>>
      
      <li class="pc-item <?php if(!empty($arr_mod['competencies_active']))echo $arr_mod['competencies_active'];?>"> <a class="pc-link" href="<?= site_url('erp/competencies');?>">
        <?= lang('Performance.xin_competencies');?>
        </a> </li>
      <li class="pc-item <?php if(!empty($arr_mod['goal_track_active']))echo $arr_mod['goal_track_active'];?>"> <a class="pc-link" href="<?= site_url('erp/track-goals');?>" >
        <?= lang('Dashboard.xin_hr_goal_tracking');?>
        </a> </li>
      <li class="pc-item <?php if(!empty($arr_mod['tracking_type_active']))echo $arr_mod['tracking_type_active'];?>"> <a class="pc-link" href="<?= site_url('erp/goal-type');?>" >
        <?= lang('Dashboard.xin_hr_goal_tracking_type');?>
        </a> </li>
      <li class="pc-item <?php if(!empty($arr_mod['goals_calendar_active']))echo $arr_mod['goals_calendar_active'];?>"> <a class="pc-link" href="<?= site_url('erp/goals-calendar');?>" >
        <?= lang('Performance.xin_goals_calendar');?>
        </a> </li>
    </ul>
  </li> -->
  <?php endif; endif;?>
  <?php if(isset($setup_modules['recruitment'])): if($setup_modules['recruitment']==1):?>
  <!-- Recruitment -->
  <!-- <li class="pc-item"> <a href="<?= site_url('erp/jobs-list');?>" class="pc-link"> <span class="pc-micon"><i data-feather="gitlab"></i></span><span class="pc-mtext">
    <?= lang('Recruitment.xin_recruitment_ats');?>
    </span> </a> </li>
  <?php endif; endif;?> -->
  <!-- Tickets -->
  <!-- <li class="pc-item"> <a href="<?= site_url('erp/support-tickets');?>" class="pc-link"> <span class="pc-micon"><i data-feather="help-circle"></i></span><span class="pc-mtext">
    <?= lang('Dashboard.dashboard_helpdesk');?>
    </span> </a> </li> -->
  <!-- Invoices -->

 <!-- Estimates -->
   
  <!-- Leave -->
  <!-- <li class="pc-item"> <a href="<?= site_url('erp/leave-list');?>" class="pc-link"> <span class="pc-micon"><i data-feather="plus-square"></i></span><span class="pc-mtext">
    <?= lang('Leave.left_leave_request');?>
    </span> </a> </li>
    <?php if(isset($setup_modules['training'])): if($setup_modules['training']==1):?> -->
  <!-- Training Session -->
  <!-- <li class="pc-item"> <a href="<?= site_url('erp/training-sessions');?>" class="pc-link"> <span class="pc-micon"><i data-feather="target"></i></span><span class="pc-mtext">
    <?= lang('Dashboard.left_training');?>
    </span> </a> </li>
    <?php endif; endif;?> -->
  <!-- Disciplinary -->
  <li class="pc-item"> <a href="<?= site_url('erp/disciplinary-cases');?>" class="pc-link"> <span class="pc-micon"><i data-feather="alert-circle"></i></span><span class="pc-mtext">
    <?= lang('Dashboard.left_warnings');?>
    </span> </a> </li>
</ul>
