<?php 
/**
 * 模块列表
 * 
 * @author 管理员
 * @version 1.0
 * @date 2012-10-25
 *
 */
class ModuleAction extends CommonAction {
	public function __construct(){
		$this->db_name='node';
		parent::__construct();
	}

	public function _before_index(){
		//$this->db_name='数据表名';
	}
	public function add(){
		if ($this->_request('act')=='todo'){
	        //保存当前数据对象
	        $db_node=M('node');
	        $info=$this->_request();
	        //找到此模块对应的group_id
	        if ($_REQUEST['menu_group_id']){
	        	$group_id=$_REQUEST['menu_group_id'];
	        }else {
	        	$group_id=$db_node->where("id='{$info['app_id']}'")->getField('group_id');;	
	        }
	        
	        $info['pid']=$info['pid']?$info['pid']:$info['app_id'];
			$rs=$db_node->where("pid='{$info['pid']}' AND name='{$info['name']}'")->find();
    		if ($rs){
    			$this->error('已存在相同的模块！');
    			return false;
    		}
    		$info['level']=2;
    		$info['group_id']=$group_id;
	        $insert_id= $db_node->data($info)->add();
	        if ($insert_id) { //保存成功
	        	//创建应用的操作
	        	$this->create_module($info,$this->_request('table_name'),$this->_request('app_name'));
	        	//创建菜单
	        	$info['id']=$insert_id;
	        	$info['app_name']=$this->_request('app_name');
	        	$info['menu_id']=$this->create_menu($info,$this->_request('menu_role_ids'),$group_id?$group_id:'1',$this->_request('menu_status'));
	            $this->success('新增成功!',Cookie::get('_currentUrl_'),$info);
	        } else {
	            $this->error('新增失败!',Cookie::get('_currentUrl_'));
	        }
    	}else {
    		$db_role=M('role');
    		$list_role=$db_role->select();
    		$list_app=M('node')->where('level=1')->select();
    		//查出对应的菜单的ID
    		$db_menu=M('menu');
    		foreach ($list_app as $key=>$val){
    			$list_app[$key]['menu_id']=$db_menu->where("app='{$val['name']}' AND module='' AND action=''")->getField('id');
    		}
    		$this->assign('list_app',$list_app);
    		$this->assign('list_role',$list_role);
        	$this->display();
    	}
	}
	/**
	 * 创建模块
	 *
	 * @param unknown_type $module_info
	 */
	private function create_module($module_info,$table_name='demo',$app_name=''){
		import("@.ORG.file");
		$file=new file();
    	if ($app_name==''){
    		$db_node=M('node');
    		$app_name=$db_node->where("id='{$module_info['pid']}'")->getField('name');
    	}
    	//创建模块的文件
    	$content=$file->read_file("/Lib/Action/DemoAction.class.php");
    	$content=str_replace('[应用名称]',$module_info['title'],$content);
    	$content=str_replace('[描述]',$module_info['remark'],$content);
    	$content=str_replace('[demo]',$_SESSION['nickname'],$content);
    	$content=str_replace('[日期]',date('Y-m-d'),$content);
    	$content=str_replace('[数据表名]',$table_name,$content);
    	$content=str_replace('class DemoAction extends',"class {$module_info['name']}Action extends",$content);
    	$file->write_file("/Lib/Action/{$app_name}/{$module_info['name']}Action.class.php",$content);
		return $module_info;
	}
	/**
	 * 创建模块菜单
	 * 理论上我创建的模块不一定表现在菜单上，因为我也不知道他有没有index的操作，因此这一块放到操作里生成
	 * @param unknown_type $module_info
	 */
	private function create_menu($module_info,$menu_role,$group_id='1',$is_show=1){
		$db_menu=M('menu');
		$info['parent_id']=$db_menu->where("node_id='{$module_info['app_id']}'")->getField('id');
		$info['title']=$module_info['title'];
		$info['position']='menu';
		$info['target']='main-frame';
		$info['url']=U("{$module_info['app_name']}/{$module_info['name']}/index");
		$info['app']=$module_info['app_name'];
		$info['module']=$module_info['name'];
		$info['node_id']=$module_info['id'];
		$info['access_node']=$module_info['id'];
		$info['group_id']=$group_id;
		$info['role_id']=$menu_role;
		$info['status']=$is_show;
		
		$rs=$db_menu->data($info)->add();
		return $rs;
	}
	/**
	 * 添加访问的权限
	 *
	 */
	public function add_access(){
		$role_arr=$this->_request('role_id');
		$db_access=M('access');
		foreach ($role_arr as $role_id ){
			$info['role_id']=$role_id;
			//模块的
			$info['node_id']=$this->_request('module_id');
			$info['level']=2;
			$info['pid']=$this->_request('app_id');//好像是不对的，应对应access里的id不是传过来的app_id
			$insert_id=$db_access->data($info)->add();
			//操作的
			$action_id_arr=explode(',',$this->_request('action_ids'));
			foreach ($action_id_arr as $action_id){
				$info['node_id']=$action_id;
				$info['level']=3;
				$info['pid']=$insert_id;
				$db_access->data($info)->add();
			}
		}
		$this->success("访问权限添加成功",Cookie::get('_currentUrl_'),array('url'=>Cookie::get('_currentUrl_')));
	}
	/**
	 * 单选时的操作列表，主要用于添加操作信息时用
	 *
	 */
	public function radio_list(){
		$ap_id=$_REQUEST['app_id'];
		$list_node=M($this->db_name)->where("pid='{$ap_id}'")->select();
		$db_menu=M('menu');
		foreach ($list_node as $module){
			$menu_id=$db_menu->where("node_id='{$module['id']}'")->getField('id');
			$html.="<div style=\"float:left; width:33%\">
				<input type=\"radio\" name=\"module_info\" class=\"module_info\" value=\"{$module[name]}\" menu_id='{$menu_id}' module_id='{$module[id]}' onclick=\"select_module(this)\" />
				<a href=\"javascript:alert('{$module[remark]}');\" title=\"{$module[remark]}\">{$module[name]}【{$module[title]}】</a></div>";
		}
		echo $html;
	}
}