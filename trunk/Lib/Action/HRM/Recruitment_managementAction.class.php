<?php 
/**
 * 招聘管理
 * 招聘管理 包括人才和简历的管理
 * @author 管理员
 * @version 1.0
 * @date 2012-12-31
 *
 */
class Recruitment_managementAction extends CommonAction {
	public function __construct(){
		$this->db_name='hrm_resume';
		parent::__construct();
	}

	public function _before_index(){
		//$this->db_name='数据表名';
	}
	public function _before_add(){
		$_POST['resume_code']='EMT'.date('ymdHis');
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
}