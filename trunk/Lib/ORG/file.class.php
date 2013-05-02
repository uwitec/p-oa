<?php
/**
 * 文件操作类
 *
 */
class file {
	public $msg="";//错误 信息输出
	private $document_root;//默认设置相对于系统的根目录
	
	public function __construct() {
		$this->document_root=$_SERVER['DOCUMENT_ROOT'];	
	}
	/**
	 * 创建文件
	 * @param string $dir="/var/www/";//最后要有“/”
	 *
	 */
	public function create_file($dir,$file){
		$file_name=$this->document_root.$dir.$file;
		if (file_exists($file_name)){
			$this->msg="文件已存在！";
			return false;
		}
		if (!file_exists($dir)){
			$this->msg="不存在文件夹{$dir}！";
			return false;
		}
		touch($file);
		rename($file,$file_name);
		return true;
	}
	/**
	 * 移动文件
	 *
	 */
	public function move_file(){
		
	}
	/**
	 * 复制文件 ,$target_name为空时直接用$source_name
	 *
	 * @param string $source_dir
	 * @param string $source_name
	 * @param string $target_dir
	 * @param string $target_name
	 * @param string $cover 是否覆盖已有文件
	 */
	public function copy_file($source_dir,$source_name,$target_dir,$target_name='',$cover=false){
		$full_source_dir=$this->document_root.$source_dir;
		if (!file_exists($full_source_dir)){
			$this->msg="源文件夹不存在";
			return false;
		}
		$full_target_dir=$this->document_root.$target_dir;
		if (!file_exists($full_target_dir)){
			$this->msg="目标文件夹不存在";
			return false;
		}
		if ($target_name==''){
			$target_name=$source_name;
		}
		if (!$cover&&file_exists($full_target_dir.$target_name)){
			$this->msg="已存在此文件";
			return false;
			
		}
		copy($full_source_dir.$source_name,$full_target_dir.$target_name);
		if (!file_exists($full_target_dir.$target_name)){
			$this->msg="文件复制失败！";
			return false;
		}
		return true;
	}
	/**
	 * 删除文件
	 *
	 * @param string $file_path   相于于网站的根目录
	 */
	public function delete_file($file_path){
		$full_path=$this->document_root.$file_path;
		echo $full_path;
		return unlink($full_path);
	}
	/**
	 * 重命名文件
	 *
	 */
	public function rename_file($file_path,$new_name){
		$file_arr=explode('/',$file_path);
		$old_name=$file_arr[count($file_arr)-1];
		$new_full_path=$this->document_root.str_replace($old_name,$new_name,$file_path);
		return copy($this->document_root.$file_path,$new_full_path);
	}
	/**
	 * 读取文件
	 * @param unknown_type $dir
	 * @return unknown
	 */
	public function read_file($dir){
		$full_dir=$this->document_root.$dir;
		$contents=file_get_contents($full_dir);
		
		return $contents;
	}
	/**
	 * 写入数据到文件中
	 *
	 * @param unknown_type $file
	 * @param unknown_type $content
	 */
	public function write_file($file_name,$content,$replace=false){
		$full_file_name=$this->document_root.$file_name;
		if (!$replace&&file_exists($full_file_name)){
			$this->msg="已存在此文件";
			return false;
		}
		$rs=file_put_contents($full_file_name,$content);
		if ($rs) {
			return true;
		}else {
			return false;
		}
		
	}
	/**
	 * 创建文件夹，可以批量创建和递归目录创建
	 * 文件夹是以根目录为起点开始创建的,同时创建多个目录用“，”号分隔开
	 * $dir='/app/aa,/app/bb'
	 *
	 * @param string $dir
	 * @param string $folder_name 文件夹名
	 */
	public function create_folder($dir,$folder_name,$replace=false){
		$full_path=$this->document_root.$dir;
		if (!file_exists($full_path)){
			$this->msg="不存在此目录";
			return false;
		}
		if (!$replace&&file_exists($full_path.$folder_name)){
			$this->msg="已存在此文件夹！";
			return false;
		}
		mkdir($full_path.$folder_name);
		return true;
	}
	/**
	 * 移动文件夹
	 *
	 * @param unknown_type $from
	 * @param unknown_type $to
	 */
	public function move_folder(){
		
	}
	/**
	 * 复制文件夹
	 *
	 */
	public function copy_folder(){
		
	}
	/**
	 * 删除文件夹
	 *
	 */
	public function delete_folder(){
		
	}
	/**
	 * 重命名文件夹
	 *
	 */
	public function rename_folder(){
		
	}
	/**
	 * 读取文件夹中的信息,可以按扩展名来读取
	 *
	 * @param string $folder_path  
	 */
	public function read_folder($folder_path,$ext_type=''){
		$full_folder_path=$this->document_root.$folder_path;
		if (is_dir($full_folder_path)) {
			$dh=opendir($full_folder_path);
			if ($dh) {
				while (($file = readdir($dh)) !== false) {
					if ($file!= "."&&$file!= "..") {
						$extend = pathinfo($full_folder_path.$file);
						$filetype = strtolower($extend["extension"]);
						if ($filetype==''){//当是目录时是没有$extend["extension"]的
							$filetype='dir';
						}
						if (is_array($ext_type)){//当设置了要读取的扩展名时
							if (in_array($filetype,$ext_type)){
								$extend = pathinfo($full_folder_path.$file);  
								$filetype = strtolower($extend["extension"]);
								$arr[]=array('filename'=>$file,'filetype'=>$filetype);
							}
						}else {
							$extend = pathinfo($full_folder_path.$file);  
							$filetype = strtolower($extend["extension"]);
							$arr[]=array('filename'=>$file,'filetype'=>$filetype);
						}
					}
				}
				closedir($dh);
			}
			return $arr;
		}else {
			return false;
		}
	}
}

?>