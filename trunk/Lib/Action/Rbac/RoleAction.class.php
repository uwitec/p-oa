<?php
// 角色模块
class RoleAction extends CommonAction {
    function _filter(&$map){
        if(!empty($_POST['name'])) {
        $map['title'] = array('like',"%".$_POST['name']."%");
        }
    }
    /**
     * 角色列表
     *
     */
    public function _before_index(){
    	$db_role_user=M('role_user');
    	$user_count=$db_role_user->group('role_id')->getField("role_id,COUNT(user_id) as num");
    	
    	$this->assign('user_count',$user_count);
    }

    public function setApp() {
        $id     = $_POST['groupAppId'];
        $groupId	=	$_POST['groupId'];
        $group    =   D('Role');
        $group->delGroupApp($groupId);
        $result = $group->setGroupApps($groupId,$id);

        if($result===false) {
            $this->error('项目授权失败！');
        }else {
            $this->success('项目授权成功！');
        }
    }

    public function app() {
        //读取系统的项目列表
        $node    =  D("Node");
        $list_app	=	$node->where('level=1')->field('id,name,title,remark')->select();
        

        //读取系统组列表
        $db_role =  D('Role');
        $list_role=  $db_role->field('id,name')->select();
        $this->assign("list_role",$list_role);

        //获取当前用户组项目权限信息
        $role_id =  isset($_GET['role_id'])?$_GET['role_id']:'';
        $list_role_app = array();
        if(!empty($role_id)) {
            $this->assign("selectGroupId",$role_id);
            //获取当前角色的操作权限列表
            $list	=	$db_role->getGroupAppList($role_id);
            foreach ($list as $vo){
                $list_role_app[$vo['id']]	=	$vo['id'];
            }
        }
        $this->assign('list_role_app',$list_role_app);
        $this->assign('list_app',$list_app);
        $this->display();

        return;
    }
    /**
     * 修改应用
     *
     */
    public function app_edit(){
    	$this->db_name='node';
    	$this->edit();
    }

    public function setModule() {
        $id     = $_POST['groupModuleId'];
        $groupId	=	$_POST['groupId'];
        $appId	=	$_POST['appId'];
        $group    =   D("Role");
        $group->delGroupModule($groupId,$appId);
        $result = $group->setGroupModules($groupId,$id);

        if($result===false) {
            $this->error('模块授权失败！');
        }else {
            $this->success('模块授权成功！');
        }
    }

    public function module() {
        $role_id = $this->_get('role_id');
        $pid  = $this->_get('pid');

        $db_node    =  D("Node");
		$where['level']=2;
		$where['pid']=$pid;
		$list_module=$db_node->where($where)->select();

        //获取当前项目的授权模块信息
        $group=D('Role');
        $list_role_module = array();
        if ($role_id&&$pid){
	        $grouplist	=	$group->getGroupModuleList($role_id,$pid);
	        foreach ($grouplist as $vo){
	            $list_role_module[$vo['id']]	=	$vo['id'];
	        }
        }

        $this->assign('list_role_module',$list_role_module);
        $this->assign('list_module',$list_module);

        $this->display();

        return;
    }

    public function setAction() {
        $id     = $_POST['groupActionId'];
        $groupId	=	$_POST['groupId'];
        $moduleId	=	$_POST['moduleId'];
        $group    =   D("Role");
        $group->delGroupAction($groupId,$moduleId);
        $result = $group->setGroupActions($groupId,$id);

        if($result===false) {
            $this->error('操作授权失败！');
        }else {
            $this->success('操作授权成功！');
        }
    }

    public function action() {
        $role_id =  $this->_get('role_id');
        $pid  = $this->_get('pid');
        $db_node =  D("Node");
        
        $map['level']=3;
        $map['pid']=$pid;
        $list_action	=	$db_node->where($map)->select();
        
        //获取当前用户组操作权限信息
        $list_role_action = array();
        $group=D('Role');
        if($role_id && $pid) {
            //获取当前组的操作权限列表
            $list	=	$group->getGroupActionList($role_id,$pid);
            foreach ($list as $vo){
                $list_role_action[$vo['id']]	=	$vo['id'];
            }
        }

        $this->assign('list_role_action',$list_role_action);
        //$actionList = array_diff_key($actionList,$groupActionList);
        $this->assign('list_action',$list_action);

        $this->display();

        return;
    }

    public function setUser() {
        $id     = $_POST['groupUserId'];
        $groupId	=	$_POST['groupId'];
        $group    =   D("Role");
        $group->delGroupUser($groupId);
        $result = $group->setGroupUsers($groupId,$id);
        if($result===false) {
            $this->error('授权失败！');
        }else {
            $this->success('授权成功！');
        }
    }

    public function user() {
        //读取系统的用户列表
        $user    =   D("User");
        $list2=$user->field('id,account,nickname')->select();
        //echo $user->getlastsql();
        //dump(	$user);
        foreach ($list2 as $vo){
            $userList[$vo['id']]	=	$vo['account'].' '.$vo['nickname'];
        }

        $group    =   D("Role");
        $list=$group->field('id,name')->select();
        foreach ($list as $vo){
            $groupList[$vo['id']]	=	$vo['name'];
        }
        $this->assign("groupList",$groupList);

        //获取当前用户组信息
        $groupId =  isset($_GET['id'])?$_GET['id']:'';
        $groupUserList = array();
        if(!empty($groupId)) {
            $this->assign("selectGroupId",$groupId);
            //获取当前组的用户列表
            $list	=	$group->getGroupUserList($groupId);
            foreach ($list as $vo){
                $groupUserList[$vo['id']]	=	$vo['id'];
            }

        }
        $this->assign('groupUserList',$groupUserList);
        $this->assign('userList',$userList);
        $this->display();

        return;
    }

    public function _before_edit(){
       $Group = D('Role');
        //查找满足条件的列表数据
        $list     = $Group->field('id,name')->select();
        $this->assign('list',$list);

    }

    /**
     * 添加角色并且把框架节点授权
     *
     * @param unknown_type $insert_id
     */
    public function _man_add($insert_id){
       $db_node=M('node');
       $db_access=M('access');
       $app_id=$db_node->where("name='Index' AND level=1")->getField('id');
       $db_access->data(array('role_id'=>$insert_id,'node_id'=>$app_id,'level'=>1,'pid'=>0))->add();
       $module_id=$db_node->where("name='Index' AND pid='{$app_id}'")->getField('id');
       $db_access->data(array('role_id'=>$insert_id,'node_id'=>$module_id,'level'=>2,'pid'=>$app_id))->add();
       $action_id_arr=$db_node->field('id')->where("pid='{$module_id}'")->select();
       foreach ($action_id_arr as $val){
       		$db_access->data(array('role_id'=>$insert_id,'node_id'=>$val['id'],'level'=>3,'pid'=>$module_id))->add();
       }
    }
    //=====================黄建文2012-09-14开始=========================================
    /**
     * 应用授权
     * 先把$role_id的node_id全部删除，然后再重新付权，所影响的子模块下面不变，以保存以后重新赋权后可以默认一些权限。
     *
     */
    public function app_access_edit(){
    	$app_access=$this->_post('app');
    	$role_id=$this->_post('role_id');
    	$db_access=D('access');
    	//==========================删除没有授权的节点开始=============================
    	//查出对应app_access以外的应用节点
    	$where_app['role_id']=$role_id;
    	$where_app['level']=1;
    	$where_app['node_id']=array('NOT IN',$app_access);
    	$delete_app_access=$db_access->where($where_app)->select();//echo '查出要删除的节点：'.$db_access->getLastSql();
    	if ($delete_app_access){//有要删除的节点时
	    	foreach ($delete_app_access as $val){
	    		$app_nodel_id_arr[]=$val['node_id'];
	    	}
	    	$delete_app_node_ids=implode("','",$app_nodel_id_arr);
	    	$db_access->where("role_id='$role_id' AND node_id IN('$delete_app_node_ids')")->delete();//echo '<br>应用：'.$db_access->getLastSql();
	    	//查找对应$delete_app_node_ids模块的节点
	    	$delete_module_access=$db_access->where("role_id='$role_id' AND pid IN('$delete_app_node_ids')")->select();//echo '<br>查出要删除的节点：'.$db_access->getLastSql();
	    	if ($delete_module_access){
		    	foreach ($delete_module_access as $val){
		    		$module_nodel_id_arr[]=$val['node_id'];
		    	}
		    	$delete_module_node_ids=implode("','",$module_nodel_id_arr);//要删除的模块的节点
		    	$db_access->where("role_id='$role_id' AND node_id IN('$delete_module_node_ids')")->delete();//echo '<br>模块：'.$db_access->getLastSql();
		    	//查找对应$delete_module_node_ids操作的节点
		    	$delete_action_access=$db_access->where("role_id='$role_id' AND pid IN('$delete_module_node_ids')")->select();//echo '<br>查出要删除的节点：'.$db_access->getLastSql();
		    	if ($delete_action_access){
			    	foreach ($delete_action_access as $val){
			    		$action_nodel_id_arr[]=$val['node_id'];
			    	}
			    	$delete_action_node_ids=implode("','",$action_nodel_id_arr);//要删除的模块的节点
			    	$db_access->where("role_id='$role_id' AND node_id IN('$delete_action_node_ids')")->delete();//echo '<br>操作：'.$db_access->getLastSql();
		    	}//end if ($delete_action_access){
	    	}//end if ($delete_module_access){
    	}//end if ($delete_app_access){
    	//============================删除没有授权的节点结束=====================================
    	foreach ($app_access as $node_id){
    		$rs=$db_access->where("role_id={$role_id} AND node_id=$node_id")->find();
    		if (!$rs){
	    		$info['role_id']=$role_id;
	    		$info['node_id']=$node_id;
	    		$info['level']=1;
	    		$info['pid']=0;
	    		$db_access->data($info)->add();//echo $db_access->getLastSql().'<br>';
    		}
    	}
    	$this->success('操作成功');
    }
    /**
     * 模块授权
     * 
     *
     */
    public function module_access_edit(){
    	$module_access=$this->_post('module');
    	$role_id=$this->_post('role_id');
    	$pid=$this->_post('pid');
    	$db_access=D('access');
    	//==========================删除没有授权的节点开始=============================
    	//查出对应app_access以外的应用节点
    	$where_module['role_id']=$role_id;
    	$where_module['level']=2;
    	$where_module['pid']=$pid;
    	$where_module['node_id']=array('NOT IN',$module_access);
    	$delete_module_access=$db_access->where($where_module)->select();//echo '查出要删除的节点：'.$db_access->getLastSql();
    	if ($delete_module_access){//有要删除的节点时
	    	foreach ($delete_module_access as $val){
	    		$app_nodel_id_arr[]=$val['node_id'];
	    	}
	    	$delete_module_node_ids=implode("','",$app_nodel_id_arr);
	    	$db_access->where("role_id='$role_id' AND node_id IN('$delete_module_node_ids')")->delete();//echo '<br>应用：'.$db_access->getLastSql();
	    	//查找对应$delete_module_node_ids操作的节点
	    	$delete_action_access=$db_access->where("role_id='$role_id' AND pid IN('$delete_module_node_ids')")->select();//echo '<br>查出要删除的节点：'.$db_access->getLastSql();
	    	if ($delete_action_access){
		    	foreach ($delete_action_access as $val){
		    		$action_nodel_id_arr[]=$val['node_id'];
		    	}
		    	$delete_action_node_ids=implode("','",$action_nodel_id_arr);//要删除的模块的节点
		    	$db_access->where("role_id='$role_id' AND node_id IN('$delete_action_node_ids')")->delete();//echo '<br>模块：'.$db_access->getLastSql();
	    	}//end if ($delete_module_access){
    	}//end if ($delete_app_access){
    	//============================删除没有授权的节点结束=====================================
    	foreach ($module_access as $node_id){
    		$rs=$db_access->where("role_id={$role_id} AND node_id=$node_id")->find();
    		//echo $db_access->getLastSql().'===============<br>';
    		if (!$rs){
	    		$info['role_id']=$role_id;
	    		$info['node_id']=$node_id;
	    		$info['level']=2;
	    		$info['pid']=$pid;
	    		$db_access->data($info)->add();//echo $db_access->getLastSql().'<br>';
    		}
    	}
    	$this->success('操作成功');
    }
    /**
     * 修改操作
     *
     */
    public function action_access_edit(){
    	$action_access=$this->_post('action');
    	$role_id=$this->_post('role_id');
    	$pid=$this->_post('pid');
    	$db_access=D('access');
    	$db_access->where("role_id='$role_id' AND pid='$pid'")->delete();
    	foreach ($action_access as $node_id){
	    	$info['role_id']=$role_id;
	    	$info['node_id']=$node_id;
	    	$info['level']=3;
	    	$info['pid']=$pid;
	    	$db_access->data($info)->add();//echo $db_access->getLastSql().'<br>';
    	}
    	$this->success('操作成功');
    }
}