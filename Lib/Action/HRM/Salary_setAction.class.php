<?php 
/**
 * 薪酬设置
 * 应用公式设置薪酬
 * @author 管理员
 * @version 1.0
 * @date 2012-12-20
 *
 */
class Salary_setAction extends CommonAction {
	public function __construct(){
		$this->db_name='hrm_salary_set';
		parent::__construct();
	}

	public function _before_index(){
		//$this->db_name='数据表名';
	}
	public function add(){
		if ($_REQUEST['act']=='todo'){
			$this->insert();
		}else {
			$this->display();
		}
	}
	/**
	 * 把公式转为HTML
	 *
	 */
	private function formula_html($formula){
		$html="";
		
		return $html;
	}
}