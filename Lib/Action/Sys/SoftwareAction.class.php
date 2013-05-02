<?php 
/**
 * 软件仓库
 * 所有可以用的软件都会显示在这里
 * @author 管理员
 * @version 1.0
 * @date 2012-11-05
 *
 */
class SoftwareAction extends CommonAction {
	public function __construct(){
		$this->db_name='software';
		parent::__construct();
	}

	public function index(){
		$url="http://www.emtit.net/oa/software.php?type={$_REQUEST['type']}";
		$list_str=file_get_contents($url);
		$list=unserialize($list_str);
		//查出当前分类的软件列表
		$db_software=M('software');
		if ($_REQUEST['type']){
			$where="type='{$_REQUEST['type']}'";
		}
		$list_software=$db_software->where($where)->select();
		foreach ($list_software as $val){
			$list_db[$val['name']]=$val;
		}
		foreach ($list as $key=>$val){
			if (empty($val['img'])){
				$list[$key]['img']='/Public/images/no_picture.gif';
			}
			$list[$key]['down_time']=$list_db[$val['name']]['down_time']?date('Y-m-d h:i',$list_db[$val['name']]['down_time']):'';
			$list[$key]['install_time']=$list_db[$val['name']]['install_time']?date('Y-m-d h:i',$list_db[$val['name']]['install_time']):'';
			$list[$key]['register_time']=$list_db[$val['name']]['register_time']?date('Y-m-d h:i',$list_db[$val['name']]['register_time']):'';
			if ($list_db[$val['name']]['install_time']){
				$list[$key]['sn']=$list_db[$val['name']]['sn']?$list_db[$val['name']]['sn']:'<a href="#" onclick="javascript:dialog_sn(\''.$list_db[$val['name']]['id'].'\')">请输入注册码</a>';
			}
		}
		
		$this->assign("list",$list);
		$this->display();
	}
	/**
	 * 如果此软件没有下载就先去下载再安装
	 *
	 */
	public function install(){
		echo '暂时不提供在线安装，请联系服务供应商QQ:38738862; 网址：<a href="">http://www.emtit.net</a>';
	}
	/**
	 * 如果是已经安装好了，就只是删除软件的连接。
	 *
	 */
	public function uninstall(){
		echo '暂时不提供在线卸载，请联系服务供应商QQ:38738862; 网址：<a href="">http://www.emtit.net</a>';
	}
	/**
	 * 输入注册信息
	 *
	 */
	public function register(){
		echo '暂时不提供在线注册功能，请联系服务供应商QQ:38738862; 网址：<a href="">http://www.emtit.net</a>';
	}
}