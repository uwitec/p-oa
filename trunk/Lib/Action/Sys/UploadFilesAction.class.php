<?php
/**
 * 文件上传功能
 * 规范文件的上传，上传数据进行统一的管理，以防上传漏洞。
 * 要考虑分布式系统时，文件的读取问题
 * 当数据库、文件和程序分开存放在不同的服务器时的问题
 * 
 * 上传的文件目前和有种类型，
 * 一种是常规性的普通用户自己上传的文件；
 * 一种是特殊的特别大的文件要上传，这个要有一定的权限才行；
 * 一种是临时性的文件，可传后使用完可以删除的；
 * 一种是系统管理员指定目录的如一些公告等文件,提供给其它的用户使用的,有时候要替换的
 *
 */
class UploadFilesAction extends Action{
	
	/**
	 * 文件上传,常用的上传方式
	 *
	 */
	public function index(){
		import("@.ORG.UploadFile");
		$upload=new UploadFile();
		$upload->maxSize  = 20971520 ;// 设置附件上传大小,最大为20MB
		$upload->allowExts  = array('jpg', 'gif', 'png', 'jpeg','txt','doc','docx','csv','xlsx','xls');// 设置附件上传类型
		if ($_POST['app']){
			$dir="{$_POST['app']}/";
		}
		if ($_POST['module']){
			$dir.="{$_POST['module']}/";
		}
		$dir.=date('Ym');
		$upload->savePath =$_SERVER['DOCUMENT_ROOT']."/Public/uploads/{$dir}/";// 设置附件上传目录
		$upload->saveRule='time';
		//创建目录
		mk_dir($upload->savePath);
		if(!$upload->upload()) {// 上传错误提示错误信息
			echo '0';
		}else{// 上传成功 获取上传文件信息
			$info=$upload->getUploadFileInfo();
			// 保存上传的数据信息到数据库
			$db_uploadfile=M('uploadfile');
			$data['app']=$_POST['app']?$_POST['app']:'Sys';
			$data['module']=$_POST['module']?$_POST['module']:'UploadFile';
			$data['add_user_id']=$_SESSION[C('USER_AUTH_KEY')]?$_SESSION[C('USER_AUTH_KEY')]:$_POST['add_user_id'];
			$data['add_time']=date('Y-m-d H:i:s');
			$data['file_path']="/Public/uploads/{$dir}/".$info[0]['savename'];
			$db_uploadfile->data($data)->add();
			echo $data['file_path'];
		}
		
	}
	/**
	 * 临时上传的文件，用过后系统过一定的时间会自动删除的
	 *
	 */
	public function tmp(){
		import("@.ORG.UploadFile");
		$upload=new UploadFile();
		$upload->maxSize  = 20971520 ;// 设置附件上传大小,最大为20MB
		$upload->allowExts  = array('jpg', 'gif', 'png', 'jpeg','txt','doc','docx','csv','xlsx','xls');// 设置附件上传类型
		$upload->savePath =$_SERVER['DOCUMENT_ROOT']."/Public/uploads/tmp/";// 设置附件上传目录
		$upload->saveRule='time';
		if(!$upload->upload()) {// 上传错误提示错误信息
			echo '0';
		}else{// 上传成功 获取上传文件信息
			$info=$upload->getUploadFileInfo();
			echo "/Public/uploads/tmp/".$info[0]['savename'];
		}
	}
	/**
	 * 公告性质上传的文件，指定路径后同文件可以替换的。
	 *
	 */
	public function replace(){
		
	}
	/**
	 * 自己指定的,这个的权限基本上要管理员对应的人员才有权限
	 *
	 */
	public function super(){
		
	}
	/**
	 * 删除文件
	 *
	 */
	public function delete(){
		$file_path=$this->_post('file_path');
		$db_uploadfile=M('uploadfile');
		$db_uploadfile->where("file_path='{$file_path}'")->delete();
		import('@.ORG.file');
		$file=new file();
		$file->delete_file($file_path);
	}
}

?>