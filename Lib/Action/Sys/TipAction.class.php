<?php

class TipAction extends CommonAction {
	
	/**
	 * 右下角信息提示
	 *
	 */
	public function dialog_tip_msg(){
		$db_tip=M('tip');
		$list=$db_tip->where("(to_user_id='{$_SESSION[C('USER_AUTH_KEY')]}') AND status=1")->select();
		if ($list){
			$this->assign('list',$list);
			$this->display();
		}
	}
	/**
	 * Enter description here...
	 *
	 */
	public function not_tip(){
		$db_tip=D('Tip');
		$rs=$db_tip->set_tip(array('content'=>'测试set_tip方法','role_id'=>array('2'),'user_id'=>array('10')));
		var_dump($rs);
	}
}