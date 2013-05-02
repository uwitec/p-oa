<?php
/**
 * 工资视图模型
 *
 */
class HRM_SalaryViewModel extends EmtViewModel {
	public $viewFields = array(
		'hrm_salary'=>array('*','_type'=>'LEFT'),
	//	'user'=>array('nickname'=>'admin_name','_on'=>'user.id=jxc_storage.admin_id','_type'=>'LEFT'),
	);
	/**
	 * * 根据薪酬体系计算出工资
     * @param int $pay_system_id
     * @param string $belong_money=201212
     * @param int $employe_id
     * @return array('should_wages'=>array('基本工资'=>'1000'),'should_debit'=>array('个税'=>'100'),'real_wages'=>123456);
	 */
	public function calculation_salary($pay_system_id,$belong_money,$employe_number){
		$db_hrm_salary_set=M('hrm_salary_set');
    	$info_formulam=$db_hrm_salary_set->where("id='{$pay_system_id}'")->find();
    	//should_wages中只有加法
    	$should_wages=explode('+',$info_formulam['should_wages']);
    	foreach ($should_wages as $val){
    		$info=explode(':',$val);
    		if (strstr($info[1],'[￥')){
    			$salary['should_wages'][$info[0]]=$this->calculation($info[1],$belong_money,$employe_number);
    		}else {
    			$salary['should_wages'][$info[0]]=$info[1];
    		}
    		if (!strstr($salary['should_wages'][$info[0]],'[￥')){
    			$count_should_wages+=$salary['should_wages'][$info[0]];
    		}
    	}
    	$should_debit=explode('-',$info_formulam['should_debit']);
    	foreach ($should_debit as $val){
    		$info=explode(':',$val);
    		if (strstr($info[1],'[￥')){
    			$salary['should_debit'][$info[0]]=$this->calculation($info[1],$belong_money,$employe_number);
    		}else {
    			$salary['should_debit'][$info[0]]=$info[1];
    		}
    		if (!strstr($salary['should_debit'][$info[0]],'[￥')){
    			$count_should_debit+=$salary['should_debit'][$info[0]];
    		}
    	}
    	//计算个税或者按劳务税计算
    	foreach ($salary['should_debit'] as $key=>$val){
    		switch (true) {
    			case $val==='[￥个人所得税]':
    				$salary['should_debit'][$key]=person_tax($count_should_wages,$count_should_debit,1);
    				$other_debit+=$salary['should_debit'][$key];
    			break;
    			case $val==='[￥劳务税]':
    				$salary['should_debit'][$key]=person_tax($count_should_wages,$count_should_debit,2);
    				$other_debit+=$salary['should_debit'][$key];
    			break;
    		}
    	}
    	$salary['real_wages']=$count_should_wages-$count_should_debit-$other_debit;
    	
    	return $salary;
	}
	/**
	 * 计算
	 *
	 * @param unknown_type $formulam='1.5*[￥事假天数]/[￥月天数]'
	 * @param unknown_type $belong_money
	 * @param unknown_type $employe_id
	 */
	private function calculation($formulam,$belong_money,$employe_number){
		$salary_variable=$this->salary_variable();
		$db_hrm_attendance=D('HRM_attendance');
		foreach ($salary_variable as $val){
			switch ($val) {
				case '[￥本月天数]':
					$replace=date('t');
				break;
				case '[￥事假天数]':
					$replace=$db_hrm_attendance->count_day_type('4',$belong_money,$employe_number);
				break;
				case '[￥病假天数]':
					$replace=$db_hrm_attendance->count_day_type('3',$belong_money,$employe_number);
				break;
				
				default:
					$replace=$val;
				break;
			}
			
			$formulam=str_replace($val,$replace,$formulam);
		}
		if(!strstr($formulam,'[￥')){
			eval('$value='.$formulam.';');
		}else {
			$value=$formulam;
		}
		return number_format($value,2);
	}
	/**
	 * 找出工资计算的变量
	 *
	 */
	private function salary_variable(){
		$variable=array('[￥本月天数]','[￥事假天数]','[￥病假天数]');
		return $variable;
	}
}