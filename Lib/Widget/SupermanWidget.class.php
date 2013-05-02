<?php
/**
 * 超人工具类可以运行SQL语句，自动生成各中HTML，也可以自定义模板
 * html_name是可选参数，当不设置时会用value的字段代替
 * default是默认选定值，可用，号分开表示选择多个默认值
{:W('Superman',array('tpl'=>'checkbox','html_name'=>'user_id','table_name'=>'user','name'=>'nickname','value'=>'id'))}
{:W('Superman',array('tpl'=>'radio','html_name'=>'user_id','table_name'=>'user','name'=>'nickname','value'=>'id'))}
{:W('Superman',array('tpl'=>'select','html_name'=>'user_id','table_name'=>'user','name'=>'nickname','value'=>'id'))}
 *
 */
class SupermanWidget extends Widget{
	public function render($data){
		
		if ($data['table_name']&&$data['name']&&$data['value']){//当设置了table_name时，sql是不起作用的
			$db=M($data['table_name']);
			if ($data['where']){
				$where="{$data['where']}";
			}else{
				$where="1";
			}
			if ($data['limit']){
				$limit=$data['limit'];
			}else{
				$limit="100";
			}
			$list=$db->where($where)->limit($limit)->select();
		}elseif ($data['sql']&&substr($data['sql'],0,6)=='select'&&$data['name']&&$data['value']){//超人可以运行SQL语句，但只能查询
			$db=new Model();
			$list=$db->query($data['sql']);
		}
		//设置显示的模板
		if ($data['tpl']){
			$tpl_field ="{$data['tpl']}";
		}else {
			$tpl_field ='checkbox';
		}
		//默认值处理，多个默认值用项文逗号分开
		if ($data['default']){
			$tpl_var['default']=explode(',',$data['default']);
		}
		
		$tpl_var['list']=$list;//列表
		$tpl_var['name']=$data['name'];
		$tpl_var['value']=$data['value'];
		$tpl_var['html_name']=$data['html_name']?$data['html_name']:$data['value'];
		$tpl_var['data']=$data;
		$content = $this->renderFile($tpl_field,$tpl_var);
		return '<span class="superman">'.$content.'</span>';
	}
}

?>