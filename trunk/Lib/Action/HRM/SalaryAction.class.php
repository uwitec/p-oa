<?php 
/**
 * 薪酬管理
 * 薪酬管理
 * @author 管理员
 * @version 1.0
 * @date 2012-12-17
 *
 */
class SalaryAction extends CommonAction {
	public function __construct(){
		$this->db_name='hrm_salary';
		parent::__construct();
	}

	public function _before_index(){
		$pay_system=M('hrm_salary_set')->where('status=1')->getField('id,name');
		$this->assign('pay_system',$pay_system);
	}
	public function _man_index($list){
		foreach ($list as $key=>$val){
			$list[$key]['should_wages']=unserialize($val['should_wages']);
			$list[$key]['should_debit']=unserialize($val['should_debit']);
		}
		return $list;
	}
	public function _before_add(){
		//$this->db_name='数据表名';
	}
	public function _before_edit(){
		//$this->db_name='数据表名';
	}
	public function _before_show(){
		//$this->db_name='数据表名';
	}
	public function _before_explort(){
		//$this->db_name='数据表名';
	}
	public function _before_delete(){
		//$this->db_name='数据表名';
	}
	/**
	 * 导入数据
	 * 对数据表进行批量导入
	 * @author 管理员
	 * @date  2012-12-17
	 */
    public function _man_import($info){
    	return $info;
    }
}