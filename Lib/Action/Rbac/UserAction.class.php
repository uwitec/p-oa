<?php
// 后台用户模块
class UserAction extends CommonAction {
    function _filter(&$map){
        $map['id'] = array('egt',2);
        if(!empty($_POST['account'])) {
            $map['account'] = array('like',"%".$_POST['account']."%");
        }
    }

    // 检查帐号
    public function checkAccount() {
        if(!preg_match('/^[a-z]\w{4,}$/i',$_POST['account'])) {
            $this->error( '用户名必须是字母，且5位以上！');
        }
        $User = M("User");
        // 检测用户名是否冲突
        $name  =  $_REQUEST['account'];
        $result  =  $User->getByAccount($name);
        if($result) {
            $this->error('该用户名已经存在！');
        }else {
            $this->success('该用户名可以使用！');
        }
    }

    // 插入数据
    public function add() {
    	if ($this->_post('act')=='todo'){
	    	// 创建数据对象
	        $User	 =	 D("User");
	        if(!$User->create()) {
	            $this->error($User->getError());
	        }else{
	            // 写入帐号数据
	            if($user_id=$User->add()) {
	                $this->add_role($user_id,$this->_post('role_arr'));
	                $this->success('用户添加成功！');
	            }else{
	                $this->error('用户添加失败！');
	            }
	        }
    	}else {
    		$this->display();
    	}
    }
    /**
     * 修改用户信息
     *
     */
    public function edit(){
    	$db_user=M('user');
    	$db_role_user=M('role_user');
    	if ($this->_post('act')=='todo'){
    		$user_id=$this->_post('id');
    		$db_role_user->where("user_id='$user_id'")->delete();
    		foreach ($this->_post('role_arr') as $role_id){
    			$role_user_info['role_id']=$role_id;
    			$role_user_info['user_id']=$user_id;
    			$rs1=$db_role_user->data($role_user_info)->add();
    		}
    		$info=$this->_post();
    		if ($info['new_password']){
    			$info['password']=pwdHash($info['new_password']);
    		}
    		$rs=$db_user->data($info)->save();
    		if ($rs||$rs1){
    			$this->success("操作成功");
    		}else {
    			$this->error("操作失败");
    		}
    	}else{
    		$user_id=$this->_get('id');
    		$info=$db_user->where("id='{$user_id}'")->find();
    		$role_user=$db_role_user->where("user_id='{$user_id}'")->getField("role_id,user_id");
    		
    		$this->assign('role_user',$role_user);
    		$this->assign('info',$info);
    		$this->display();
    	}
    }
    /**
     * 修改自己的密码和其它信息
     *
     */
    public function edit_self(){
    	$db_user=M('user');
    	$info=$this->_param();
    	$info['id']=$_SESSION[C('USER_AUTH_KEY')];
    	if ($info['act']=='todo'){
    		if ($info['old_password']){
    			if ($info['old_password']==$info['new_password']) $this->error('新密码与旧密码不能相同，请更换！');
    			$password=pwdHash($info['old_password']);
    			$rs=$db_user->where("id='{$info['id']}' AND password='{$password}'")->count();
    			if (!$rs) $this->error('原密码不正确！不能修改信息');
    			$info['password']=pwdHash($info['new_password']);
    		}
    		$rs=$db_user->data($info)->save();
    		if ($rs){
    			$this->success('修改成功！');
    		}else {
    			$this->error('操作失败！');
    		}
    	}else{
    		$info=$db_user->where("id='{$_SESSION[C('USER_AUTH_KEY')]}'")->find();
    		$db_role_user=M('role_user');
    		$pre=C('DB_PREFIX');
    		$list_role=$db_role_user->join("{$pre}role ON {$pre}role.id={$pre}role_user.role_id")->where("user_id='{$_SESSION[C('USER_AUTH_KEY')]}'")->select();
    		
    		$this->assign('list_role',$list_role);
    		$this->assign('info',$info);
    		$this->display();
    	}
    }

    /**
     * 添加用户角色
     *
     * @param unknown_type $user_id
     * @param unknown_type $role_id_arr
     * @return unknown
     */
    protected function add_role($user_id,$role_id_arr) {
    	$db_role_user=M('role_user');
        foreach ($role_id_arr as $role_id){
			$info['user_id']=$user_id;
			$info['role_id']=$role_id;
			$db_role_user->data($info)->add();
        }
        return true;
    }

    //重置密码
    public function resetPwd() {
        $id  =  $_POST['id'];
        $password = $_POST['password'];
        if(''== trim($password)) {
            $this->error('密码不能为空！');
        }
        $User = M('User');
        $User->password	=	md5($password);
        $User->id			=	$id;
        $result	=	$User->save();
        if(false !== $result) {
            $this->success("密码修改为$password");
        }else {
            $this->error('重置密码失败！');
        }
    }
}