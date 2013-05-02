<?php 
/**
 * table
 * 系统表的管理
 * @author 管理员
 * @version 1.0
 * @date 2012-10-31
 *
 */
class TableAction extends CommonAction {
	public function __construct(){
		$this->db_name='table';
		parent::__construct();
	}

	public function _before_index(){
		
	}
	/**
	 * 当数据库中没有此表时要去创建一个数据表
	 *
	 */
	public function _man_add(){
		$db=new Model();
		$sql="show tables";
		$table_list=$db->query($sql);
		$have_table=0;
		$info=$this->_post();
		foreach ($table_list as $val){
			$table_name=str_replace(C('DB_PREFIX'),'',$val['Tables_in_'.C('db_name')]);
			if ($info['name']==$table_name){
				$have_table=1;
				break;
			}
		}
		if ($have_table==0){
			$full_table_name=C('DB_PREFIX').$info['name'];
			$sql="CREATE TABLE `$full_table_name` (
					`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
					`status` TINYINT NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
					`add_user_id` INT NOT NULL COMMENT '添加人ID',
					`add_time` INT NOT NULL COMMENT '添加时间'
					) ENGINE = MYISAM CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT = '{$info['title']}-{$info['remark']}'";
			$db->query($sql);
		}
	}
	public function _before_edit(){
		if ($_REQUEST['act']=='todo'&&$_REQUEST['old_table_name']<>$_REQUEST['name']){
			$old_table_name=C('DB_PREFIX').$_REQUEST['old_table_name'];
			$table_name=C('DB_PREFIX').$_REQUEST['name'];
			$sql=" RENAME TABLE `$old_table_name` TO `$table_name`";
			$db=new Model();
			$db->query($sql);
		}
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