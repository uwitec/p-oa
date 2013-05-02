<?php
/**
 * 蜘蛛侠工具要实现通过AJAX方面把数据取回来。在用户没有此权限时，生成的HTML要提示用户没有此权限，要去赋权。
 * {:W('Spiderman',array('function_name'=>'get_zbzl','app'=>'Product','module'=>'product_type','action'=>'ajax_test','set_data'=>'zlzbxx|zlmx'))}
 * tpl是通过AJAX取回来后要生成的数据样式，不填写就默认input
 * function_name 调用这个AJAX时的函数名,在HTML中调用时要加上Spiderman_function_name
 * value是要取回哪个字段的值
 * $data['set_data']这个参数据数据型式有以下3种方式，用来填写数据的
 * 1、$data['set_data']='#aa|aa_file,#bb|bb_file';//表示返回的aa_file值和bb_file的值填充到#aa和#bb中
 * 2、$data['set_data']='#aa|aa_file';
 * 3、$data['set_data']='#cc';//表示返回的数据填充到id为cc的HTML中
 * 注意：当$data['set_data']='#cc'时，如果$data['data_type']是json则要使#cc不是表单，因为他是通过$("#cc").html();来实现的
 *
 */
class SpidermanWidget extends Widget{
	public function render($data){
		if ($data['auto']) {//自动填写
			$content=$this->auto($data);
		}else {
			$content=$this->ajax($data);
		}
		
		return $content;
	}
	/**
	 * ajax的方式,通用的
	 *
	 */
	private function ajax($data){
		$tpl_var['function_name']=$data['function_name']?'_'.$data['function_name']:'';
		$tpl_var['app']=$data['app']?$data['app']:GROUP_NAME;
		$tpl_var['module']=$data['module']?$data['module']:MODULE_NAME;
		if ($data['action']){
			$tpl_var['action']=$data['action'];
		}else {
			$tpl_var['action']=$data['function_name']?'Spiderman_'.$data['function_name']:'Spiderman';
		}
		$tpl_var['data_type']=$data['data_type']?$data['data_type']:'html';
		//回调函数
		if ($data['call_back']){
			$tpl_var['call_back']=$data['call_back'].'(rs);';
		}
		//分解要设置的数据
		$tpl_var['set_data']=$this->set_data($data['set_data'],$tpl_var['data_type']);
		$tpl_var['param']=$this->set_param($tpl_var['app'],$tpl_var['module'],$tpl_var['action'],$data['param']);
		$content = $this->renderFile('index',$tpl_var);
		return $content;
	}
	/**
	 * 下拉自动填充
	 * 对应的action编写例子
	  public function Spiderman_auto(){
	  	$term=$this->_get('term');
	  	$list=array(array('id'=>'1','label'=>'名称'),array('id'=>'2','label'=>'名称2'));
		echo json_encode($list);
	  }
	 *
	 */
	private function auto($data){
		if (empty($data['auto'])) echo '请填写auto参数';
		if (empty($data['action'])) echo '请填写action参数';
		$tpl_var['function_name']=$data['function_name']?'_'.$data['function_name']:'';
		$tpl_var['app']=$data['app']?$data['app']:GROUP_NAME;
		$tpl_var['module']=$data['module']?$data['module']:MODULE_NAME;
		$tpl_var['action']='Spiderman_'.$data['action'];
		
		//分解要设置的数据
		$tpl_var['set_data']=$this->auto_set_data($data['set_data']);
		$param=$this->set_param($tpl_var['app'],$tpl_var['module'],$tpl_var['action'],$data['param']);
		$param=str_replace('\'','',$param);
		$tpl_var['url']='"'.U("Sys/Spiderman/get_data?$param").'"';
		$tpl_var['auto']=$data['auto'];
		if ($data['call_back']){
			$tpl_var['call_back']=$data['call_back'].'(ui.item);';
		}
		$content = $this->renderFile('auto',$tpl_var);
		return $content;		
	}
	private function auto_set_data($set_data){
		if (count($set_data)){
			$one=explode(',',$set_data);
			$set_data='';
			foreach ($one as $val){
				$tow=explode('|',$val);
				$set_data.="$(\"{$tow[0]}\").val(ui.item.{$tow[1]});\n";
			}
		}
		return $set_data;
	}
	/**
	 * 设置正确的数据插入
	 *
	 */
	private function set_data($set_data,$data_type){
		if (empty($set_data)){
			return '';
		}
		$one=explode(',',$set_data);
		$set_data='';
		if (empty($one[1])){//说明只有一个参数
			$tow=explode('|',$one[0]);
			if (empty($tow[1])){
				if ($data_type=='html'){
					$set_data="$(\"{$tow[0]}\").html(rs);\n";
				}else {
					$set_data="$(\"{$tow[0]}\").val(rs.data);\n";
				}
			}else{
				$set_data="$(\"{$tow[0]}\").val(rs.data['{$tow[1]}']);\n";
			}
		}else {
			foreach ($one as $val){
				$tow=explode('|',$val);
				$set_data.="$(\"{$tow[0]}\").val(rs.data['{$tow[1]}']);\n";
			}
		}
		return $set_data;
	}
	/**
	 * 设置要传过去的参数
	 * @param $param='bxlb|$(".bxlb").val(),aa|aa_value';
	 *
	 */
	private function set_param($app,$module,$action,$param){
		$rs_param="app={$app}&module={$module}&action={$action}";
		if (empty($param)){
			return "'$rs_param'";
		}
		$one=explode(',',$param);
		$is_js=0;
		foreach ($one as $val){
			$tow=explode('|',$val);
			if (!(strpos($tow[1],'$(')===false)){//说明是一个JS
				if ($is_js){
					$rs_param.="+'&{$tow[0]}='+{$tow[1]}";
				}else {
					$rs_param.="&{$tow[0]}='+{$tow[1]}";
				}
				$is_js=1;
			}else {
				if ($is_js){
					$rs_param.="+'&{$tow[0]}={$tow[1]}";
				}else {
					$rs_param.="&{$tow[0]}={$tow[1]}";
				}
				$is_js=0;
			}
		}
		if ($is_js){
			$rs_param="'{$rs_param}";
		}else {
			$rs_param="'{$rs_param}'";
		}
		return $rs_param;
	}
}

?>