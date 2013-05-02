<?php
/**
 * 系统后台框架
 *
 */
class IndexAction extends CommonAction {
	public function index(){
    	$this->display();
	}
	public function menu(){
		
			$parent_id=$_REQUEST['parent_id']?$_REQUEST['parent_id']:0;
			$group_id=$_REQUEST['group_id']?"{$_REQUEST['group_id']}":'';
			$tree=menu_tree($parent_id,$group_id);
			$tree='<ul id="browser" class="filetree">'.$tree.'</ul>';
			
			$this->assign('menu_tree',$tree);
		
		$this->display();
	}
	public function main(){
		$ip= isset($_SERVER['SERVER_ADDR']) ? $_SERVER['SERVER_ADDR'] : (isset($_SERVER['HTTP_HOST']) ? $_SERVER['HTTP_HOST'] : '');		
		$server_name=$_SERVER['SERVER_NAME'];		
		$server_port=$_SERVER['SERVER_PORT'];		
		$version=C('VERSION');
		$install_date=C('INSTALL_DATE');
		$sn=C('SN');
		$url="http://www.emtit.net/oa/notice.php?version={$version}&ip={$ip}&sn={$sn}&server_port={$server_port}&install_date={$install_date}&server_name={$server_name}";
		$content=file_get_contents($url);
		$content=mb_convert_encoding($content,'UTF-8');
		$notice_arr=unserialize($content);
		foreach ($notice_arr as $val){
			if ($val['roles']){
				$role_arr=explode(',',$val['roles']);
				foreach ($role_arr as $role){
					if(in_array($role,$_SESSION['roles'])){
						$notice.='<li style="border: 1px solid #CC0000; background: #FFFFCC; padding: 10px; margin-bottom: 5px;">'.$val['content'].'</li>';
						break;
					}
				}
			}else {
				$notice.='<li style="border: 1px solid #CC0000; background: #FFFFCC; padding: 10px; margin-bottom: 5px;">'.$val['content'].'</li>';
			}
		}
		
		$this->assign('notice',$notice);
		$this->display();
	}
	public function top(){
		$list_top1=get_menu($_SESSION[C('USER_AUTH_KEY')],$_SESSION['roles'],array('position'=>'top1'));
		$db_group=M('group');
		$list_fast_menu=$db_group->where("status=1 AND is_show=1")->select();
		$db_menu=M('menu');
		foreach ($list_fast_menu as $key=>$val){
			$list_fast_menu[$key]['menu_id']=$db_menu->where("group_id={$val['id']} AND parent_id='0'")->getField('id');//echo $db_node->getLastSql().'<br>';
		}
		$this->assign('list_top1',$list_top1);
		$this->assign('list_fast_menu',$list_fast_menu);
		$this->display();
	}
	public function drag(){
		$this->display();
	}
}