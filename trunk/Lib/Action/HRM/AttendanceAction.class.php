<?php 
/**
 * 考勤管理
 * 
 * @author 黄建文
 * @version 1.0
 * @date 2013-01-12
 *
 */
class AttendanceAction extends CommonAction {
	public function __construct(){
		$this->db_name='hrm_attendance_month';
		parent::__construct();
	}

	public function _before_index(){
		$day_type=array(1=>'上班',2=>'加班',3=>'事假',4=>'病假',5=>'公休',6=>'补休',10=>'其它');
		$this->assign('day_type',$day_type);
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