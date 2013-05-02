<?php 
/**
 * 菜单设置
 * 用于给角色和单独用户设置菜单导航的
 * @author 管理员
 * @version 1.0
 * @date 2012-09-14
 *
 */
class MenuAction extends CommonAction {
	public function _filter(&$map){
        if(!empty($_GET['role_id'])) {
            $map['role_id'] = array('like',"%[{$_GET['role_id']}]%");
            $map['user_id'] = '0';
        }
        if ($this->_get('parent_id')){
        	$map['parent_id']=$this->_get('parent_id');
        }else {
        	$map['parent_id']='0';
        }
        
    }

	public function index(){
		import("@.ORG.Util.Page");
		$db_menu=M('menu');
		$group_id=$_REQUEST['group_id']?$_REQUEST['group_id']:'1';
		$where="status>=0 AND parent_id=0 AND position='menu' AND group_id='$group_id'";
		$count=$db_menu->where($where)->count();
		$page=new Page($count,1);
		$lists=$db_menu->where($where)->limit($page->firstRow.','.$page->listRows)->select();
		foreach ($lists as $key=>$val){
			$lists[$key]['son_list']=$db_menu->where("status>=0 AND parent_id={$val['id']} AND position='menu' AND group_id='$group_id'")->select();
			foreach ($lists[$key]['son_list'] as $k=>$v){
				$lists[$key]['son_list'][$k]['grandson_list']=$db_menu->where("status>=0 AND parent_id={$v['id']} AND group_id='$group_id'")->select();
			}
		}
		//查出所有的应用
		$db_group=M('group');
		$list_group=$db_group->where("status=1")->select();
		$this->assign('list_group',$list_group);
		//查出所有的角色
		$db_role=M('role');
		$list_role=$db_role->where("status=1")->getField('id,name');
		$this->assign('list_role',$list_role);
		
		$this->assign('pages',$page->show());
		$this->assign('list',$lists);
		Cookie::set('_currentUrl_', __SELF__);
		$this->display();
	}
	/**
	 * 显示应用，模块和操作的列表
	 *
	 */
	public function iframe(){
		$_REQUEST ['_sort']='1';
        $map = $this->_search();
        if (method_exists($this, '_filter')) {
            $this->_filter($map);
        }
        $name = $this->db_name;
        $model = D($name);
        if (!empty($model)) {
            $this->_list($model, $map);
        }
        switch ($this->_get('from_iframe')) {
        	case 'module_iframe':
        		$iframe_name='action_iframe';
        	break;
        	case 'action_iframe':
        		$iframe_name='action_iframe';
        	break;
        	default:
        		$iframe_name='module_iframe';;
        	break;
        }
        $this->assign('iframe_name',$iframe_name);
		$this->display();
	}
	public function add(){
		$db_menu=M('menu');
		if ($this->_post('act')=='todo'){
			$info=$this->_post();
			$info['role_id']='[1][2]';
			$rs=$db_menu->data($info)->add();
			if ($rs){
				$this->success('操作成功！');
			}else {
				$this->error('操作失败！');
			}
		}else {
			$db_role=M('role');
			$list_role=$db_role->where("status=1")->select();
			$info=$db_menu->where("id='{$this->_get('parent_id')}'")->find();
			//显示出应用，供选择
			$db_node=M('node');
			$list_control_app=$db_node->where("status=1 AND level=1")->select();
			$this->assign('list_control_app',$list_control_app);

			$this->assign('info',$info);
			$this->assign('list_role',$list_role);
			parent::add();
		}
	}
	public function _before_edit(){
		if ($this->_post('act')=='todo'){
			//要同时去修改对应node表中，与这个节点相关的名称，否则日后很难对应
			$db_node=M('node');
			$db_node->data(array('id'=>$this->_post('node_id'),'title'=>$this->_post('title')))->save();
		}else {
			$db_menu=M('menu');
			$db_role=M('role');
			$list_role=$db_role->where("status=1")->select();
			//一级菜单
			$where="parent_id=0 AND position='menu'";
			if ($this->_get('role_id')){
				$where.="AND role_id LIKE '%[{$this->_get('role_id')}]%' ";
			}
			if ($this->_get('user_id')){
				$where.="AND user_id='{$this->_get('user_id')}' ";
			}
			$parent_menu=$db_menu->where($where)->select();
			$this->assign('parent_menu',$parent_menu);			
			$this->assign('list_role',$list_role);
		}
	}
	/**
	 * 菜单排序
	 *
	 */
	public function sequence(){
		$db_menu=M('menu');
		foreach ($this->_post('listorder') as $id=>$listorder){
			$db_menu->data(array('id'=>$id,'listorder'=>$listorder))->save();
		}
		$this->success('操作成功');
	}
	/**
	 * 设置菜单的显示和不显示状态
	 *
	 */
	public function set_status(){
		$info['id']=$this->_param('id');
		$info['status']=$this->_param('status');
		$db_menu=M('menu');
		$rs=$db_menu->data($info)->save();
		if ($rs){
			$this->success('操作成功');
		}else {
			$this->error('操作失败');
		}
	}
	/**
	 * 根据上级ID取得下级的节点列表
	 *
	 */
	public function Spiderman_get_node(){
		$db_node=M('node');
		$where="pid='{$_REQUEST['pid']}'";
		$name=$_REQUEST['name']?$_REQUEST['name']:'title';
		$value=$_REQUEST['value']?$_REQUEST['value']:'id';
		$list_node=$db_node->where($where)->select();
		$html="<option value=\"\">请选择模块</option>";
		foreach ($list_node as $node){
			$html.="<option value=\"{$node[$value]}\" node_id='{$node['id']}'>{$node[$name]}</option>";
		}
		echo $html;
	}
	/**
	 * 为角色设置菜单的权限
	 *
	 */
	public function set_power(){
		$db_menu=M('menu');
		if ($this->_param('act')=='todo'){
			$menu_ids=$this->_param('menu_ids');
			$role_id=$this->_request('role_id');
			$db_access=M('access');
			$db_node=M('node');
			foreach ($menu_ids as $menu_id=>$act){
				$menu_info=$db_menu->field('id,role_id,access_node')->where("id='$menu_id'")->find();
				$role_ids=$menu_info['role_id'];
				$list_access_node=explode(',',$menu_info['access_node']);
				//查一下这个菜单中有没有添加过这个角色
				$already_have=strstr($role_ids,"[{$role_id}]");
				if ($act=='add'){
					if (!$already_have){//之前已经添加过
						$role_ids.="[$role_id]";
						$db_menu->data(array('id'=>$menu_id,'role_id'=>$role_ids))->save();
						//去access表中查一下这个角色在这个菜单中控制的节点里是否已存在，不存在就添加进去
						foreach ($list_access_node as $val){
							$have_access=$db_access->where("role_id='{$role_id}' AND node_id='{$val}'")->find();
							$info_node=$db_node->where("id='{$val}'")->find();
							if (!$have_access){
								$info_access['role_id']=$role_id;
								$info_access['node_id']=$val;
								$info_access['level']=$info_node['level'];
								$info_access['pid']=$info_node['pid'];
								$db_access->data($info_access)->add();
							}
						}
					}
				}elseif ($act=='delete') {
					if ($already_have){//要删除此控制，必定要先存在此控制节点
						//如果要删除要先去这个role_id中查看一下是否存在其它菜单需要控制这个节点，如果是需要的话就不能删除
						foreach ($list_access_node as $val){
							$where_access=" access_node='$val' 
										OR  access_node LIKE '%,{$val}' 
										OR  access_node LIKE '{$val},%' 
										OR  access_node LIKE '%,{$val},%'";
							$have_control=$db_menu->where("role_id LIKE '%[$role_id]%' AND ($where_access)")->count();
							if ($have_control==1){//只有他自己在控制，就删除
								$db_access->where("role_id='{$role_id}' AND node_id='{$val}'")->delete();
							}
						}
						$role_ids=str_replace("[$role_id]",'',$role_ids);
						$db_menu->data(array('id'=>$menu_id,'role_id'=>$role_ids))->save();						
					}					
				}
			}
			$this->assign('jumpUrl', Cookie::get('_currentUrl_'));
			$this->success("操作成功");
		}else {
			import("@.ORG.Util.Page");
			$db_menu=M('menu');
			$group_id=$_REQUEST['group_id']?$_REQUEST['group_id']:'1';
			$where="status>=0 AND parent_id=0 AND position='menu' AND group_id='$group_id'";
			$count=$db_menu->where($where)->count();
			$page=new Page($count,1);
			$lists=$db_menu->where($where)->limit($page->firstRow.','.$page->listRows)->select();
			foreach ($lists as $key=>$val){
				$lists[$key]['son_list']=$db_menu->where("status>=0 AND parent_id={$val['id']} AND position='menu' AND group_id='$group_id'")->select();
				foreach ($lists[$key]['son_list'] as $k=>$v){
					$lists[$key]['son_list'][$k]['grandson_list']=$db_menu->where("status>=0 AND parent_id={$v['id']} AND group_id='$group_id'")->select();
					//echo $db_menu->getLastSql().'<br>';
				}
			}
			//查出所有的应用
			$db_group=M('group');
			$list_group=$db_group->where("status=1")->select();
			//查出所有的角色 
			$list_role=M('role')->where("status=1")->getField('id,name');
			$this->assign('pages',$page->show());
			$this->assign('list_role',$list_role);
			$this->assign('list_group',$list_group);
			$this->assign('list',$lists);
			Cookie::set('_currentUrl_', __SELF__);
			$this->display();
		}
	}
	/**
	 * 设置菜单控制的节点
	 *
	 */
	public function control_node(){
		$db_node=M('node');
		if ($_REQUEST['act']=='todo'){
			$db_menu=M('menu');
			$db_access=M('access');
			$menu_id=$_REQUEST['menu_id'];
			$node_id_arr=$_REQUEST['node_ids'];
			foreach ($node_id_arr as $node_id=>$status){
				$where="id='{$menu_id}'";
				$info_menu=$db_menu->where($where)->find();
				$already_have=in_array($node_id,explode(',',$info_menu['access_node']));//看看这个菜单之前是否已设置过这个节点
				if ($status=='add'){
					if (!$already_have){
						$info_menu['access_node'].=",$node_id";
						$db_menu->data($info_menu)->save();
						//然后更新一下access的权限列表
						$role_id_arr=explode('][',substr($info_menu['role_id'],1,-1));
						$info_node=$db_node->where("id='{$node_id}'")->find();
						foreach ($role_id_arr as $role_id){
							$info_access['role_id']=$role_id;
							$info_access['node_id']=$node_id;
							$info_access['level']=$info_node['level'];
							$info_access['pid']=$info_node['pid'];
							$rs=$db_access->where("role_id='{$role_id}' AND node_id='{$node_id}'")->find();
							if (!$rs){
								$db_access->data($info_access)->add();//已经存在的节点是插不进的
							}
						}
					}
				}elseif ($status=='delete') {
					if ($already_have){//已经有了这个节点，就要把有这个节点的角色的权限全删除,但要先查一下其它菜单同一角色有没有这个节点的控制权
						$role_id_arr=explode('][',substr($info_menu['role_id'],1,-1));
						foreach ($role_id_arr as $role_id){
							$where_access=" access_node='$node_id' 
										OR  access_node LIKE '%,{$node_id}' 
										OR  access_node LIKE '{$node_id},%' 
										OR  access_node LIKE '%,{$node_id},%'";
							$have_control=$db_menu->where("role_id LIKE '%[$role_id]%' AND ($where_access)")->count();
							if ($have_control==1){//只有他自己在控制，就删除
								$db_access->where("role_id='{$role_id}' AND node_id='{$node_id}'")->delete();
							}
						}
						$info_menu['access_node']=str_replace(',','][',$info_menu['access_node']);
						$access_node=str_replace("[$node_id]",'',"[{$info_menu['access_node']}]");//这里估计错了
						$access_node=substr(str_replace('][',',',$access_node),1,-1);
						$db_menu->data(array('id'=>$menu_id,'access_node'=>$access_node))->save();
					}
				}
			}
			$this->assign('jumpUrl', Cookie::get('_currentUrl_'));
			$this->success('操作成功');
			
		}else {
			import("@.ORG.Util.Page");	
			$access_node_arr=explode(',',$_REQUEST['access_node']);
			$group_id=str_replace(']','',str_replace('[','',$_REQUEST['group_id']));//因为之前没有规划好，菜单是保存[1]这样的group_ids的，所以要去掉
			$group_id=$_REQUEST['group_id']?$_REQUEST['group_id']:'1';
			$where="status>=0 AND pid=0 AND group_id='$group_id'";
			$count=$db_node->where($where)->count();
			$page=new Page($count,1);
			$lists=$db_node->where($where)->limit($page->firstRow.','.$page->listRows)->select();
			foreach ($lists as $key=>$val){
				$lists[$key]['son_list']=$db_node->where("status>=0 AND pid={$val['id']} AND group_id='$group_id'")->select();
				foreach ($lists[$key]['son_list'] as $k=>$v){
					$lists[$key]['son_list'][$k]['grandson_list']=$db_node->where("status>=0 AND pid={$v['id']} AND group_id='$group_id'")->select();
				}
			}
			$role_id_arr=explode('][',substr($_REQUEST['role_ids'],1,-1));
			//查出所有的应用
			$db_group=M('group');
			$list_group=$db_group->where("status=1")->select();
			$this->assign('list_group',$list_group);
			//查出所有的角色 
			$list_role=M('role')->where("status=1")->getField('id,name');
			$this->assign('list_role',$list_role);
			
			$this->assign('menu_id',$_REQUEST['menu_id']);
			$this->assign('role_id_arr',$role_id_arr);
			$this->assign('access_node_arr',$access_node_arr);
			$this->assign('pages',$page->show());
			$this->assign('list',$lists);
			$this->display();
		}
	}
	/**
	 * 移动菜单
	 *
	 */
	public function move(){
		$id=$_REQUEST['id'];
		$db_menu=M('menu');
		$info['parent_id']=$_REQUEST['parent_id'];
		$rs=$db_menu->where("id='{$id}'")->data($info)->save();
		if ($rs) {
			$this->success("操作成功");
		}else{
			$this->error("操作失败");
		}
		
	}
}