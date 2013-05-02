<?php 
/**
 * 人才管理
 * 人才管理
 * @author 管理员
 * @version 1.0
 * @date 2012-12-31
 *
 */
class TalentAction extends CommonAction {
	public function __construct(){
		$this->db_name='hrm_talent';
		parent::__construct();
	}

	public function _before_index(){
		//$this->db_name='数据表名';
	}
	public function add(){
		if ($_REQUEST['act']=='todo'){
			M('hrm_resume')->where("id_card='{$_REQUEST['id_card']}'")->data(array('status'=>2))->save();
			$this->insert();
		}else{
			$info=M('hrm_resume')->where("id_card='{$_REQUEST['id_card']}'")->find();
			$this->assign('info',$info);
			$this->display();
		}
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