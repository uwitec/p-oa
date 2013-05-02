<?php
/**
 * @author 黄建文
 * @version 1.0
 * @date 2012-12-08
 * 数据通过EXCEL或者	CSV格式进行批量的导入和导出
 * 
 *
 */
class BatchOperation {
	public $have_error=false;
	public $data_type='csv';
	private $error_file,$file_path;
	
	public function __construct($data_type='csv'){
		$this->data_type=$data_type;
		$this->error_file=date('Ymdhis').'.'.$this->data_type;
		$this->file_path=$_SERVER['DOCUMENT_ROOT'].'/Public/uploads/tmp/';
	}
	/**
	 * 批量导入数据信息
	 *
	 */
	public function import(){
		
	}
	/**
	 * 批量导出数据信息
	 *
	 */
	public function export(){
		
	}
	/**
	 * 把每一条导入或者导出的数据进行重新的整理
	 *
	 * @param unknown_type $info
	 */
	public function man($info){
		
	}
	/**
	 * 设置错误信息
	 *
	 * @param array $info
	 * @param string $error_msg
	 */
	public function set_error($info,$error_msg){
		$this->have_error=true;
		$info['error_msg']=$error_msg;
		$add_content=implode(',',$info)."\n";
		$full_error_file=$this->file_path.$this->error_file;
		if ($this->data_type=='xls'){
			
		}else {
			$content=file_get_contents($full_error_file);
			if ($content){
				file_put_contents($full_error_file,$content.$add_content);
			}else {
				file_put_contents($full_error_file,$add_content);
			}
		}
	}
	/**
	 * 导出错误信息
	 *
	 */
	public function export_error($msg){
		if ($this->data_type=='xls'){
			echo "{$msg}<div>请下载错误文件：<a href=\"/Public/uploads/tmp/{$this->error_file}\">{$this->error_file}</a></div>";
		}else {
			Header("Content-type:application/force-download"); 
			Header("Accept-Ranges:bytes");  
			header("Content-Type: application/msexcel");
			Header("Accept-Length:".filesize('/Public/uploads/tmp/'.$this->error_file));  
			Header("Content-Disposition:attachment;filename=".$this->error_file);
			
			echo iconv('utf-8','gb2312',file_get_contents($this->file_path.$this->error_file));
			//echo "{$msg}<div>请下载错误文件：<a href=\"/Public/uploads/tmp/{$this->error_file}\">{$this->error_file}</a></div>";
		}
	}
	
}

?>