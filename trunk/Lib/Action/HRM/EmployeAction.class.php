<?php 
/**
 * 员工管理
 * 员工管理
 * @author 管理员
 * @version 1.0
 * @date 2012-12-17
 *
 */
class EmployeAction extends CommonAction {
	public function __construct(){
		$this->db_name='hrm_employe';
		parent::__construct();
	}

	public function _before_index(){
		$department=M('hrm_organizational')->getField('id,department_name');
		$this->assign('department',$department);
		$pay_system=M('hrm_salary_set')->getField('id,name');
		$this->assign('pay_system',$pay_system);
		$post=M('hrm_post')->getField('id,name');
		$this->assign('post',$post);
	}
	public function _before_add(){
		if ($_REQUEST['act']=='todo'){
			if ($_REQUEST['talent_id']){
				M('hrm_talent')->data(array('status'=>2))->where("id='{$_REQUEST['talent_id']}'")->save();
			}
		}else {
			$db_salary_set=M('hrm_salary_set');
			$list_salary_set=$db_salary_set->where("status=1")->select();
			$this->assign('list_salary_set',$list_salary_set);
		}
	}
	/**
	 * 生成工资
	 * 
	 * @author 黄建文
	 * @date  2012-12-22
	 */
    public function create_salary(){
    	if ($_REQUEST['act']=='todo'){
    		$info=$_REQUEST;
    		$info['should_wages']=serialize($_REQUEST['salary']);
    		$info['should_debit']=serialize($_REQUEST['salary_del']);
    		$db_salary=M('hrm_salary');
    		$rs=$db_salary->data($info)->add();
    		if ($rs){
    			$this->success('操作成功！');
    		}else {
    			$this->error('操作失败!');
    		}
    	}else {
    		$db_employe=M('hrm_employe');
    		$info=$db_employe->where("id='{$_REQUEST['id']}'")->find();
    		$info['belongs_month']=date('Ym',strtotime(date('Y-m-01 00:00:00'))-3600);
    		$db_attendance=D('HRM_attendance');
    		$info['actual_attendance_days']=$db_attendance->count_day_type(array('1','2'),$info['belongs_month'],$info['employee_number']);
    		$info['need_attendance_days']=$db_attendance->count_day_type(0,$info['belongs_month'],$info['employee_number']);;
    		$this->assign('info',$info);
    		
    		$salary=D('HRM_SalaryView');
    		$info_salary=$salary->calculation_salary($info['pay_system'],$info['belongs_month'],$info['employee_number']);
    		$this->assign('info_salary',$info_salary);
    		$this->display();
    	}   
    }
}