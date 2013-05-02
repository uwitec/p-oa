<?php 
/**
 * 人力资源管理系统
 * 介绍人力资源管理系统的使用与展示基本信息
 * @author 管理员
 * @version 1.0
 * @date 2012-12-17
 *
 */
class IndexAction extends CommonAction {
	public function __construct(){
		$this->db_name='demo';
		parent::__construct();
	}

	public function _before_index(){
		//$this->db_name='数据表名';
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