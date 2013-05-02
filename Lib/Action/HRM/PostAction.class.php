<?php 
/**
 * 职位管理
 * 职位管理
 * @author 管理员
 * @version 1.0
 * @date 2012-12-31
 *
 */
class PostAction extends CommonAction {
	public function __construct(){
		$this->db_name='hrm_post';
		parent::__construct();
	}

	public function _man_index($list){
		$db_employe=M('hrm_employe');
		foreach($list as $key=>$val){
			$list[$key]['real_number']=$db_employe->where("post_id='{$val['id']}'")->count();
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
}