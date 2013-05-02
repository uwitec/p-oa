<?php 
/**
 * 数据表管理
 * 为自动生成模块添加数据表和字段
 * @author 
 * @version 1.0
 * @date 2012-09-17
 *
 */
class FieldAction extends CommonAction {

	public function _before_index(){
		//$this->db_name='数据表名';
	}
	public function _before_add(){
		if ($this->_post('act')=='todo'){
			$setting_str=$this->_post('setting');
			$setting_arr=explode("\n",$setting_str);
			foreach ($setting_arr as $key=>$val){
				$arr=explode("|",$val);
				$setting[$key]['name']=trim($arr[0]);
				$setting[$key]['value']=trim($arr[1])?trim($arr[1]):trim($arr[0]);
			}
			$_POST['setting']=var_export($setting,true);
			cookie('table_name',$this->_post('table_name'),3600);
			//判断表和表中字段是否存在
			$this->create_file($this->_post());
		}
	}
	public function _before_edit(){
		if ($_REQUEST['act']=='todo'){
			$new_field=$_REQUEST['field'];
			$old_field=$_REQUEST['old_field'];
			$table_name=C('DB_PREFIX').$_REQUEST['table_name'];
			switch ($_REQUEST['formtype']){
				case 'text':
					$data_type="VARCHAR({$_REQUEST['maxlength']})";
				break;
				case 'number':
					$data_type="INT({$_REQUEST['maxlength']})";
				break;
				case 'password':
				case 'select':
				case 'radio':
				case 'checkbox':
					$data_type="VARCHAR({$_REQUEST['maxlength']})";
				break;
				case 'textarea':
					$data_type="VARCHAR({$_REQUEST['maxlength']})";
				break;
				case 'date':
					$data_type="DATE";
				break;
				case 'date_time':
					$data_type="DATETIME";
				break;
				case 'money':
					$data_type="DECIMAL( 10, 2 )";
				break;
				default:
					$data_type="VARCHAR({$_REQUEST['maxlength']})";
			}
			$remark=$_REQUEST['name'];
			if ($table_name&&$new_field&&$old_field&&$data_type){
				$db=new Model();
				$sql=" ALTER TABLE `{$table_name}` CHANGE `{$old_field}` `{$new_field}` $data_type  NOT NULL COMMENT '{$remark}' ";
				$db->query($sql);
			}
		}
	}
	public function _before_show(){
		//$this->db_name='数据表名';
	}
	public function _before_explort(){
		//$this->db_name='数据表名';
	}
	public function _before_foreverdelete(){
		$table_name=C('DB_PREFIX').$_REQUEST['table_name'];
		$field=$_REQUEST['field'];
		$db=M();
		$sql="ALTER TABLE `{$table_name}` DROP `$field`";
		$db->query($sql);
	}
	/**
	 * 添加字段,如果表已存在直接在表中添加相应的字段，此时要检查表是否已存在此字段，存在时不会再在此表中添加此字段
	 *
	 */
	private function create_file($post){
		$db=new Model();
		$sql="show tables";
		$table_list=$db->query($sql);
		$info=$post;
		$have_table=0;
		foreach ($table_list as $val){
			foreach ($val as $v){
				$table_name=str_replace(C('DB_PREFIX'),'',$v);
			}
			if ($info['table_name']==$table_name){
				$have_table=1;
				break;
			}else {
				$have_table=0;
			}
		}
		$full_table_name=C('DB_PREFIX').$info['table_name'];
		switch ($info['formtype']){
			case 'text':
				$data_type="VARCHAR({$info['maxlength']})";
			break;
			case 'number':
				$data_type="INT({$info['maxlength']})";
			break;
			case 'password':
			case 'select':
			case 'radio':
			case 'checkbox':
				$data_type="VARCHAR({$info['maxlength']})";
			break;
			case 'textarea':
				$data_type="VARCHAR({$info['maxlength']})";
			break;
			case 'date':
				$data_type="DATE";
			break;
			case 'date_time':
				$data_type="DATETIME";
			break;
			case 'money':
				$data_type="DECIMAL( 10, 2 )";
			break;
			default:
				$data_type="VARCHAR({$info['maxlength']})";
		}
		if ($have_table==1){//存在此数据表,就在此表中增加字段
			$have_field=0;
			$sql="SHOW COLUMNS FROM $full_table_name";
			$field_list=$db->query($sql);
			foreach ($field_list as $field){
				if ($field['Field']==$info['field']){
					$have_field=1;
					break;
				}
			}
			if(empty($have_field)){
				$after_field=$field_list[count($field_list)-4]['Field'];//倒数第4个就是在STATUS之前啦
				$sql="ALTER TABLE `$full_table_name` ADD `{$info['field']}` $data_type NOT NULL COMMENT '{$info['name']}' AFTER `{$after_field}` ";
				$db->query($sql);
			}
		}else {//不存在时要增加此表并且加入此字段
			 $sql="CREATE TABLE `$full_table_name` (
					`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
					`{$info['field']}` $data_type NOT NULL COMMENT '{$info['name']}',
					`status` TINYINT NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
					`add_user_id` INT NOT NULL COMMENT '添加人ID',
					`add_time` INT NOT NULL COMMENT '添加时间'
					) ENGINE = MYISAM CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT = '{$info['table_bak']}'";
			$db->query($sql);
		}
	}
	/**
	 * 中文转拼音或者英文
	 *
	 */
	public function zh2pinyin(){
		import("@.ORG.pinyin");
		$pinyin=new pinyin();
		if ($_REQUEST['type']=='pinyin'){
			echo $pinyin->zh($_REQUEST['text']);
		}elseif ($_REQUEST['type']=='pinyin_first_letter') {
			echo $pinyin->first_letter($_REQUEST['text']);
		}else {
			import("@.ORG.GoogleTranslate");
			$GoogleTranslate=new GoogleTranslate();
			echo $GoogleTranslate->code($_REQUEST['text']);
		}
	}
	/**
	 * 检查是否存在此字段
	 *
	 */
	public function check_field(){
		$table_name=$this->_get('table_name');
		$field=$this->_get('field');
		$db=M($table_name);
		$table_fields=$db->getDbFields();
		if (in_array($field,$table_fields)){
			$this->ajaxReturn('',"{$table_name}表中存在{$field}字段，添加此字段也不会改变已存在的表信息",1);
		}else {
			$this->ajaxReturn('',"",0);
		}
		
	}
	/**
	 * 取得字段
	 *
	 */
	public function get_field(){
		$table_name=$this->_get('table_name');
		$db_field=M('field');
		$list=$db_field->where("table_name='{$table_name}'")->select();
		
		$this->assign('list',$list);
		$this->display();
	}
}