<?php
/**
 * 文件上传插件,需要jquery、uploadify的配合
 * 'method'=>'tmp'表示上传的文件是临时文件，使用过后会删除。
 * 'app'=>'Sys','module'=>'UploadFile' 可以不填写
 * 例子
 * {:W('UploadFile',array('method'=>'tmp','app'=>'Sys','module'=>'UploadFile','html_name'=>'myfile'))}
 * =============================
 * 2013-05-02更新
 * 原来的SWF上传的方式 因为需要FLASH插件，有部分人不会使用，使用回传统的默认的方式进行上传,旧的方法需要加上tpl=swf才能使用,如下
 * {:W('UploadFile',array('method'=>'tmp','app'=>'Sys','module'=>'UploadFile','html_name'=>'myfile','tpl'='swf'))}
 * =============================
 */
class UploadFileWidget extends Widget{
	public function render($data){
		if ($data['tpl']=='swf'){
			$var['method']=$data['method']?$data['method']:'index';
			switch ($var['method']){
				case 'tmp':
					$var['filetypeexts']=$data['filetypeexts']?$data['filetypeexts']:'*.jpg;*.png;*.gif;*.doc;*.docx;*.xls;*.xlsx;*.txt;*.csv';
					$var['fileSizeLimit']=$data['fileSizeLimit']?$data['fileSizeLimit']:'20MB';
				case 'index':
					$var['filetypeexts']=$data['filetypeexts']?$data['filetypeexts']:'*.jpg;*.png;*.gif;*.doc;*.docx;*.xls;*.xlsx;*.txt;*.csv';
					$var['fileSizeLimit']=$data['fileSizeLimit']?$data['fileSizeLimit']:'20MB';
				break;
			}
			$var['html_name']=$data['html_name']?$data['html_name']:'file';
			$var['app']=$data['app']?$data['app']:'Sys';
			$var['module']=$data['module']?$data['module']:'UploadFile';
			$tpl_field='index';
			$content = $this->renderFile($tpl_field,$var);
			return '<div class="uploadfile">'.$content.'</div>';
		}else {
			$var['html_name']=$data['html_name']?$data['html_name']:'file';
			$var['filetypeexts']=$data['filetypeexts']?$data['filetypeexts']:'jpg,png,gif,doc,docx,xls,xlsx,txt,csv';
			$var['fileSizeLimit']=$data['fileSizeLimit']?$data['fileSizeLimit']:'20MB';
			$html=<<<EOF
				<input type="file" name="file_path" id="file_path" class="file_path" />
				<input name="file_max_size" id="file_max_size" type="hidden" value="{$var['fileSizeLimit']}" />
				<input name="file_ext" id="file_ext" type="hidden" value="{$var['filetypeexts']}" />
				<input name="file_dir" id="file_dir" type="hidden" value="tmp" />
EOF;
			return $html;
		}
	}
}

?>