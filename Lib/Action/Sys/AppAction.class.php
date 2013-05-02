<?php 
/**
 * 应用列表
 * 应用列表的管理
 * @author 管理员
 * @version 1.0
 * @date 2012-10-25
 *
 */
class AppAction extends CommonAction {
	public function __construct(){
		$this->db_name='node';
		parent::__construct();
	}

	public function _before_index(){
		//$this->db_name='数据表名';
	}
	public function add(){
		if ($this->_post('act')=='todo'){
	        //保存当前数据对象
	        $db_node=M('node');
	        $info=$this->_post();
	        //创建一个分组，写到group表里
	        $db_group=M('group');
	        $info_group['name']=$info['name'];
	        $info_group['title']=$info['title'];
	        $info_group['create_time']=time();
	        $info_group['status']=1;
	        $info_group['is_show']=1;
	        $gorup_id=$db_group->data($info_group)->add();
	        $group_id=$_REQUEST['menu_group_id']?$_REQUEST['menu_group_id']:$gorup_id;
	        //写入节点
	        $info['level']=1;
	        $info['group_id']=$group_id;
	        $insert_id= $db_node->data($info)->add();
	        if ($insert_id) { //保存成功
	        	//创建应用的操作
	        	$this->create_app($info);
	        	//创建菜单
	        	$info['id']=$insert_id;
	        	$info['menu_id']=$this->create_menu($info,$this->_post('menu_role_ids'),$group_id?$group_id:'1',$this->_post('menu_status'));
	            $this->success('新增成功!',Cookie::get('_currentUrl_'),$info);
	        } else {
	            $this->error('新增失败!');
	        }
    	}else {
    		$db_role=M('role');
    		$list_role=$db_role->select();
    		
    		$this->assign('list_role',$list_role);
        	$this->display();
    	}
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
			//应用的
			$info['node_id']=$this->_request('app_id');
			$info['level']=1;
			$info['pid']=0;
			$insert_id=$db_access->data($info)->add();
			//模块的
			$info['node_id']=$this->_request('module_id');
			$info['level']=2;
			$info['pid']=$insert_id;
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
	 * 创建应用的各个文件
	 */
	private function create_app($app_info){
		import("@.ORG.file");
		$file=new file();
		//建立Action里的应用文件夹
		$file->create_folder("/Lib/Action/",$app_info['name']);
		//创建Tpl下相应模块的文件夹和默认操作HTML文件
    	$file->create_folder("/Tpl/",$app_info['name']);
    	//在配置文件中要自动加入这个应用
		$content=$file->read_file('/Conf/sys_app_group_list.php');
		$content=str_replace('";',",{$app_info['name']}\";",$content);
		$file->write_file('/Conf/sys_app_group_list.php',$content,true);
		return true;
	}
	/**
	 * 创建菜单
	 *
	 * @param unknown_type $app_info
	 */
	private function create_menu($app_info,$menu_role_ids,$group_id='1',$status='1'){
		$db_menu=M('menu');
		$info['parent_id']=0;
		$info['title']=$app_info['title'];
		$info['position']='menu';
		$info['target']='_self';
		$info['url']='#';
		$info['app']=$app_info['name'];
		$info['node_id']=$app_info['id'];
		$info['role_id']=$menu_role_ids;
		$info['access_node']=$app_info['id'];
		$info['group_id']=$group_id;
		$info['status']=$status;
		$rs=$db_menu->data($info)->add();
		return $rs;
	}
}