<?php 
/**
 * 组织架构
 * 组织架构的管理
 * @author 管理员
 * @version 1.0
 * @date 2012-12-31
 *
 */
class OrganizationalAction extends CommonAction {
	public function __construct(){
		$this->db_name='hrm_organizational';
		parent::__construct();
	}

	public function index(){
		$html_tree.=$this->next_organizational(0);		
		$this->assign('html_tree',$html_tree);
		Cookie::set('_currentUrl_', __SELF__);
		$this->display();
	}
/**
	 * 下级组织架
	 *
	 */
	private function next_organizational($parent_id){
		$db_organizational=M('hrm_organizational');
		$employe_table=C('DB_PREFIX').'hrm_employe';
		$organizational_table=C('DB_PREFIX')."hrm_organizational";
		$sql_real_number="SELECT COUNT(*) FROM $employe_table WHERE department_id=$organizational_table.id AND status=1";
		$list=$db_organizational->field("$organizational_table.*,($sql_real_number) AS real_number,name")->join("{$employe_table} ON {$employe_table}.id=department_heads_id")->where("parent_id='{$parent_id}' and ".C('DB_PREFIX')."hrm_organizational.status='1'")->select();
		
		if (is_array($list)){
			$html='<ul>';
			foreach($list as $val){
				$nickname=$val['name']?$val['name']:'未定';
				$html.="<li><strong title='{$val['description']}'>{$val['department_name']}({$nickname}) 计划编制({$val['plan_number']})人，实际在编({$val['real_number']})人</strong>
				 <a href=\"javascript:dialog_add('parent_id={$val['id']}');\">添加下级</a>
				 | <a href=\"javascript:dialog_edit('id={$val['id']}');\">修改</a>
				 | <a href=\"javascript:confirm_delete('{$val['id']}');\">删除</a>{$this->next_organizational($val['id'])}
				 </li>";
			}
			$html.='</ul>';
			return $html;
		}else {
			return false;
		}
	}
	public function _before_add(){
		if (!$_REQUEST['act']){
			$db_employe=M('hrm_employe');
			$list_employe=$db_employe->where("status=1")->select();
			$this->assign('list_employe',$list_employe);
		}
		
	}
	public function _before_edit(){
		
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