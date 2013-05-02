<?php
/**
 * 信息提示模型
 *
 */
class TipModel extends CommonModel {
	
	/**
	 * 设置提示信息
	 *
	 * @param string $param['content']
	 * @param array $param['role_id']
	 * @param array $param['user_id']
	 */
	public function set_tip($param){
		$content=trim($param['content']);
		$param['callback_url']=$param['callback_url']?$param['callback_url']:'';
		if ($content&&(is_array($param['role_id'])||is_array($param['user_id']))){
			//启动事务
			$this->startTrans();
			$time=time();
			if (is_array($param['role_id'])){
				$role_ids=implode("','",$param['role_id']);
				$db_role_user=M('role_user');
				$list_user=$db_role_user->where("role_id IN('$role_ids')")->getField('user_id,role_id');
				$user_arr=array_keys($list_user);
				foreach ($user_arr as $val){
					$this->data(array('content'=>$content,'to_user_id'=>$val,'callback_url'=>$param['callback_url'],'status'=>1,'add_user_id'=>$_SESSION[C('USER_AUTH_KEY')],'add_time'=>$time))->add();
				}
			}
			foreach ($param['user_id'] as $val){
				$this->data(array('content'=>$content,'to_user_id'=>$val,'callback_url'=>$param['callback_url'],'status'=>1,'add_user_id'=>$_SESSION[C('USER_AUTH_KEY')],'add_time'=>$time))->add();
			}
			//提交事务
			$this->commit();
			return true;
		}else {
			return false;
		}
	}
}

?>