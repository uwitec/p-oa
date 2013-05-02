<?php 
/**
 * 操作列表
 * 
 * @author 管理员
 * @version 1.0
 * @date 2012-10-25
 *
 */
class ActionAction extends CommonAction {
	public function __construct(){
		$this->db_name='node';
		parent::__construct();
	}

	public function add(){
		if ($this->_post('act')=='todo'){
	        //保存当前数据对象
	        $db_node=M('node');
	        $info=$this->_post();
	        $info['pid']=$info['pid']?$info['pid']:$info['module_id'];
	        $where="name='{$info['name']}' AND pid='{$info['pid']}'";
    		$rs=$db_node->where($where)->find();
			if ($rs){
    			$this->error('已存在相同的操作！');
    			return false;
    		}
	        $insert_id= $db_node->data($info)->add();
	        if ($insert_id) { //保存成功
	        	//创建菜单
	        	$this->create_menu($info);
	        	$info['id']=$insert_id;
	            $this->success('新增成功!',Cookie::get('_currentUrl_'),$info);
	        } else {
	            $this->error('新增失败!');
	        }
    	}else {
    		$db_role=M('role');
    		$list_role=$db_role->select();
    		$list_app=M('node')->where('level=1')->select();
    		//查出对应的菜单的ID
    		$db_menu=M('menu');
    		foreach ($list_app as $key=>$val){
    			$list_app[$key]['menu_id']=$db_menu->where("app='{$val['name']}' AND module='' AND action=''")->getField('id');
    		}
    		//检查表是否有设置字段
    		$db_field=M('field');
    		$rs=$db_field->where("table_name='{$_REQUEST['table_name']}'")->count();
    		if (empty($rs)){
    			$this->error("需要对表设置字段才能进行生成操作");	
    		}
    		$this->assign('list_app',$list_app);
    		$this->assign('list_role',$list_role);
        	$this->display();
    	}
	}
	/**
	 * 批量添加,从模块和应用创建的时候会有这样的操作
	 *
	 */
	public function add_batch(){
		if ($this->_request('act')=='todo'){
	        //保存当前数据对象
	        $db_node=M('node');
	        $info=$this->_request();
			//找到此模块对应的group_id
			if ($_REQUEST['menu_group_id']){
			  	$group_id=$_REQUEST['menu_group_id'];
			}else {
				$group_id=$db_node->where("id='{$info['app_id']}'")->getField('group_id');;	
			}
	        foreach ($info['create_data'] as $val){
	        	$info_action=$_REQUEST[$val];
	        	$info_action['status']=1;
	        	$info_action['level']=3;
	        	$info_action['group_id']=$group_id;
	        	$info_action['pid']=$info['module_id'];
	        	//检查是否存在相同的操作
		        $where="name='{$info_action['name']}' AND pid='{$info_action['pid']}'";
	    		$rs=$db_node->where($where)->find();
				if (empty($rs)){
	        		$insert_id[]=$info_action['id']=$db_node->data($info_action)->add();
	        		//为Action添加操作方法
	        		$this->action_create_code($info_action,$info_action['table_name'],$val);
	        		//生成TPL文件
	        		$this->create_action($info_action,$info_action['tpl'],$_REQUEST['app_name'],$_REQUEST['module_name'],$info_action['table_name']);
					//生成菜单
					if ($info_action['menu']){
						$db_menu=M('menu');
						$info_menu['parent_id']=$info_action['menu'];
						$info_menu['title']=$info_action['title'];
						$info_menu['position']=$info_action['menu_position'];
						$info_menu['target']=$info_action['menu_target'];
						if ($info_action['menu_url']=='￥url'){
							$info_menu['url']=U("{$this->_request('app_name')}/{$this->_request('module_name')}/{$info_action['name']}");
						}else {
							$info_menu['url']=$info_action['menu_url'];
						}
						$info_menu['app']=$this->_request('app_name');
						$info_menu['module']=$this->_request('module_name');
						//设置菜单显示到不同的区域
						$have_pre=strstr($info_action['name'],'_');
						if ($have_pre){
							$arr=explode('_',$info_action['name']);
							$pre=str_replace($arr[count($arr)-1],'',$info_action['name']);
							$info_menu['action']=$pre.'list';
						}else {
							$info_menu['action']='index';
						}
						$info_menu['role_id']=$this->_request('menu_role_ids');
						$info_menu['node_id']=$info_action['id'];//增加写入对应的node_id，为下次再生成作准备或者为与node节点关联作准备
						$info_menu['access_node']=$info_action['id'];//标记菜单需要授权的节点
						$info_menu['group_id']=$group_id?$group_id:'1';//标记菜单所属于的分组，此时才可以按分组读取对应的菜单,暂时只先把他标记为1分组的
						if ($info_action['menu_status']){
							$info_menu['status']=$info_action['menu_status'];
						}else{
							$info_menu['status']=0;
						}
						$db_menu->data($info_menu)->add();						
					}
				}
	        }
	        if (count($insert_id)) { //保存成功
	        	$insert_ids['ids']=implode(',',$insert_id);
	            $this->success('新增成功!',Cookie::get('_currentUrl_'),$insert_ids);
	        } else {
	            $this->error('新增失败!',Cookie::get('_currentUrl_'));
	        }
    	}else {
    		$db_role=M('role');
    		$list_role=$db_role->select();
    		
    		$this->assign('list_role',$list_role);
        	$this->display();
    	}
	}
/**
	 * 添加访问的权限
	 *
	 */
	public function add_access(){
		$role_arr=$this->_request('role_id');
		$db_access=M('access');
		foreach ($role_arr as $role_id ){
			$info['role_id']=$role_id;
			$action_id_arr=explode(',',$this->_request('action_ids'));
			foreach ($action_id_arr as $action_id){
				$info['node_id']=$action_id;
				$info['level']=3;
				$info['pid']=$this->_request('module_id');
				$db_access->data($info)->add();
			}
		}
		$this->success("访问权限添加成功",Cookie::get('_currentUrl_'),array('url'=>Cookie::get('_currentUrl_')));
	}
	/**
	 * 检查当前操作
	 *
	 */
	public function check_action(){
		$db_node=M('node');
		$module_id=$_REQUEST['module_id'];
		$action_name=$_REQUEST['action_name'];
		$where="name='{$action_name}' AND pid='{$module_id}'";
	    $rs=$db_node->where($where)->find();
	    if ($rs){
	    	$this->error('已存在操作'.$action_name);
	    }else{
	    	$this->success('可以添加操作'.$action_name);
	    }
	}
	/**
	 * 创建操作
	 *
	 * @param unknown_type $action_info
	 */
	private function create_action($action_info,$tpl,$app_name,$module_name,$table_name){
		import("@.ORG.file");
		$file=new file();
		//创建Tpl下相应模块的文件夹和默认操作HTML文件
    	$file->create_folder("/Tpl/",$app_name);
		$this->create_html($app_name,$module_name,$action_info['name'],$tpl,$table_name);
		return true;
	}
	/**
	 * 在LIB对应的php文件中创建方法
	 *
	 * @param unknown_type $action_info
	 * @param unknown_type $table_name
	 * @param unknown_type $demo_type
	 * @return unknown
	 */
	private function action_create_code($action_info,$table_name,$demo_type='index'){
		switch ($action_info['name']) {
    		case 'index':
    		case 'add':
    		case 'edit':
    		case 'show':
    		case 'export':
    		case 'delete':
    		case 'foreverdelete':
    			return true;
    		break;
    	}
    	
    	//找出模块
    	$db_node=M('node');
    	$module_info=$db_node->where("id='{$action_info['pid']}'")->find();
    	//找出应用
    	$app_info=$db_node->where("id='{$module_info['pid']}'")->find();
    	$lib_file="/Lib/Action/{$app_info['name']}/{$module_info['name']}Action.class.php";
    	if (!file_exists($_SERVER['DOCUMENT_ROOT'].$lib_file)){
    		echo '不存在此模块';
    		return false;
    	}
    	import("@.ORG.file");
    	$file=new file();
    	$content=$file->read_file($lib_file);
    	//删除代码的最后一个字符，然后连接在一起
    	$content=ereg_replace("}[^a-z0-9|}]*$",'',$content);
    	$date=date('Y-m-d');
    	$function=<<<EOF
	/**
	 * {$action_info['title']}
	 * {$action_info['remark']}
	 * @author {$_SESSION['nickname']}
	 * @date  {$date}
	 */

EOF;
    	switch ($demo_type) {
    		case 'index':
    		$function.=<<<EOF
    public function {$action_info['name']}(){
        \$this->db_name='{$table_name}';
        \$this->index();
    }
}
EOF;
    		break;
    		case 'add':
    		$function.=<<<EOF
    public function {$action_info['name']}(){
    	\$this->db_name='{$table_name}';
        \$this->add();
    }
}
EOF;
    		break;
    		case 'edit':
    		$function.=<<<EOF
    public function {$action_info['name']}(){
    	\$this->db_name='{$table_name}';
    	\$this->edit();
    }
}
EOF;
    		break;
    		case 'delete':
    		$function.=<<<EOF
    public function {$action_info['name']}(){
    	\$this->db_name='{$table_name}';
    	\$this->delete();
    }
}
EOF;
    		break;
    		case 'foreverdelete':
    		$function.=<<<EOF
    public function {$action_info['name']}(){
    	\$this->db_name='{$table_name}';
    	\$this->foreverdelete();
    }
}
EOF;
    		break;
    		case 'show':
    		$function.=<<<EOF
    public function {$action_info['name']}(){
    	\$this->db_name='{$table_name}';
    	\$this->show();
    }
}
EOF;
    		break;
    		case 'export':
    		$function.=<<<EOF
    public function {$action_info['name']}(){
    	\$this->db_name='{$table_name}';
    	\$this->export();
    }
}
EOF;
    		break;
    		case 'import':
    			if ($action_info['name']=='import'){
    		$function.=<<<EOF
    public function _man_import(\$info){
    	return \$info;
    }
}
EOF;
    			}else {
    		$function.=<<<EOF
    public function {$action_info['name']}(\$info){
    	\$this->db_name='{$table_name}';
    	\$this->import();
    }
}
EOF;
    			}
    		break;
    	}
    	
    	
		$content=$content.$function;
		$rs=$file->write_file($lib_file,$content,true);
		if (!$rs){
			echo '函数写入LIB文件出错';
			return false;
		}
		return true;
    }
	/**
     * 创建代码
     *
     */
    private function create_html($app_name,$module_name,$action_name,$demo_type,$table_name){
    	import("@.ORG.file");
    	$file=new file();
    	$db_field=M('field');
    	$field_list=$db_field->where("table_name='{$table_name}'")->order('listorder ASC ,id ASC')->select();
    	$content=$file->read_file("/Tpl/Public/Demo-{$demo_type}.html");
    	switch ($demo_type) {
    		case 'index':
    			$textarea_height=0;
    			foreach ($field_list as $val){
		    		$name_th.='<th><a href="?_order='.$val['field'].'&_sort={$sort}">'.$val['name'].'</a><if condition="$order eq \''.$val['field'].'\'"><img src="__PUBLIC__/images/{$sortImg}.gif" width="9px" height="9px" alt="{$sortAlt}" /></if></th>';
		    		$field_td.='<td>{$info['.$val['field'].']}</td>';
		    		if ($val['formtype']=='textarea'){//当是多行文本时要增加多2行的高度
		    			$textarea_height=$textarea_height+40;
		    		}
		    		if ($val['issearch']){
		    			switch ($val['formtype']) {
		    				case 'select':
		    				case 'radio':
		    				case 'checkbox':
		    					eval('$setting='.$val['setting'].';');
		    					$search_form.="<select name='{$val['field']}'><option value='-1'>请选择{$val['name']}</option>";
		    					foreach ($setting as $v){
		    						$search_form.="<option value='{$v['value']}' <if condition=\"\$_REQUEST['{$val['field']}'] eq '{$v['value']}'\">selected=\"selected\"</if>\">{$v['name']}</option>\n";
		    					}
								$search_form.="</select>\n";
		    				break;
		    				default:
		    					$search_form.="{$val['name']}：<input name='{$val['field']}' type='text' value='{\$Think.request.{$val['field']}}' />\n";
		    				break;
		    			}
		    		}
		    	}
		    	if ($search_form){
		    		$search_form='<div class="form-div">
					  <form name="searchForm" action="">
					    <img width="26" height="22" border="0" alt="SEARCH" src="__PUBLIC__/images/icon_search.gif">
					    '.$search_form.'
					    <input type="submit" class="button" value=" 搜索 ">
					  </form>
					</div>';
		    	}
		    	$field_num=count($field_list);
		    	//计算出话框的宽和高
		    	$column_num=$field_num<12?2:($field_num%3==0?3:4);//可以根据字段的数量来决定有多少列
		    	$row_num=ceil($field_num/$column_num);
		    	$dialog_width=120*$column_num*2;//因为每一个字段要占2列数据界面
		    	$dialog_height=100+25*$row_num+$textarea_height;
		    	//设置添加、修改的对话框URL参数,只要同一个list的action的curd操作都是和list的前缀一样时有效
		    	if (strstr($action_name,'list')){
		    		$action_pre=str_replace('list','',$action_name);
		    	}else {
		    		$action_pre='';	
		    	}
		    	
		    	$select=array('[￥name]','[￥field]','[￥search]','[￥dialog_width]','[￥dialog_height]','[￥action_pre]');
		    	$content=str_replace($select,array($name_th,$field_td,$search_form,$dialog_width,$dialog_height,$action_pre),$content);
		    	$file->write_file("/Tpl/{$app_name}/{$module_name}-{$action_name}.html",$content);
    		case 'export':
		    	foreach ($field_list as $val){
		    		$name_th.=','.$val['name'];
		    		$field_td.=',{$info['.$val['field'].']}';
		    	}
		    	$select=array('[￥name]','[￥field]');
		    	$content=str_replace($select,array($name_th,$field_td),$content);
		    	$file->write_file("/Tpl/{$app_name}/{$module_name}-{$action_name}.html",$content);
    		break;
    		case 'import':
		    	foreach ($field_list as $val){
		    		$field_key.="<input name=\"field_key[{$val['name']}]\" type=\"hidden\" value=\"{$val['field']}\" />";
		    	}
		    	$content=str_replace('[￥field_key]',$field_key,$content);
		    	$file->write_file("/Tpl/{$app_name}/{$module_name}-{$action_name}.html",$content);
    		break;
    		case 'add':
    			$field_num=count($field_list);
				$column_num=$field_num<12?2:($field_num%3==0?3:4);//可以根据字段的数量来决定有多少列
				$tr=1;
		    	foreach ($field_list as $val){
		    		$formtype='';
		    		switch ($val['formtype']) {
		    			case 'text':
		    				$formtype="<input name='{$val['field']}' type='text' class='{$val['field']}'>{$val['tips']}";
		    			break;
		    			case 'password':
		    				$formtype="<input name='{$val['field']}' type='password' class='{$val['field']}'>{$val['tips']}";
		    			break;
		    			case 'textarea':
		    				$formtype="<textarea name='{$val['field']}' class='{$val['field']}'></textarea>{$val['tips']}";
		    			break;
		    			case 'select':
		    				$formtype='<select name="'.$val['field'].'" class="'.$val['field'].'">';
		    				eval('$select_list='.$val['setting'].';');
		    				foreach ($select_list as $v){
								$formtype.='<option value="'.$v['value'].'" >'.$v['name'].'</option>';
		    				}
		    				$formtype.='</select>'.$val['tips'];
		    			break;
		    			case 'checkbox':
		    				eval('$checkbox_list='.$val['setting'].';');
		    				foreach ($checkbox_list as $v){
								$formtype.='<input type="checkbox" name="'.$val['field'].'[]" class="'.$val['field'].'" value="'.$v['value'].'" />'.$v['name'];
		    				}
		    			break;
		    			case 'radio':
		    				eval('$radio_list='.$val['setting'].';');
		    				foreach ($radio_list as $v){
								$formtype.='<input type="radio" name="'.$val['field'].'[]" class="'.$val['field'].'" value="'.$v['value'].'" />'.$v['name'];
		    				}
		    			break;
		    			case 'date':
					    	$formtype="<input name='{$val['field']}' type='text' class='{$val['field']} date'>{$val['tips']}";
					    	$replace_date="$('.date').datepicker();\n";
					    break;
					    case 'date_time':
					    	$formtype="<input name='{$val['field']}' type='text' class='{$val['field']} date_time'>{$val['tips']}";
					    	$replace_time="$('.date_time').datetimepicker();\n";
					    break;
		    			default:
		    				$formtype="<input name='{$val['field']}' type='text' class='{$val['field']}'>{$val['tips']}";
		    			break;
		    		}
		    		if ($i++%$column_num==0&&$tr==1){
		    			$html.="<tr>";
		    		}
		    		$html.="<th>{$val['name']}</th><td>$formtype</td>";
		    		if ($i%$column_num==0&&$tr==$column_num){
		    			$html.="</tr>\n";	
		    			$tr=0;
		    		}
		    		$tr++;
		    		
		    	}
		    	//当列数不够时要补全
		    	$row_num=ceil($field_num/$column_num);
		    	for($i=0;$i<$column_num*$row_num-$field_num;$i++){
		    		$html.="<th>&nbsp;</th><td>&nbsp;</td>";
		    	}
		    	if ($column_num*$row_num==$field_num){
		    		$html.="</tr>\n";
		    	}
		    	
		    	$content=str_replace('[￥html]',$html,$content);
		    	//替换日期
		    	if ($replace_date){
		    		$content=str_replace('<!--[￥date]-->',$replace_date.$replace_time,$content);
		    	}
		    	
		    	$file->write_file("/Tpl/{$app_name}/{$module_name}-{$action_name}.html",$content);
    		break;
    		case 'edit':
    			$field_num=count($field_list);
				$column_num=$field_num<12?2:($field_num%3==0?3:4);//可以根据字段的数量来决定有多少列
				$tr=1;
		    	foreach ($field_list as $val){
		    		$formtype='';
		    		switch ($val['formtype']) {
		    			case 'text':
		    				$formtype="<input name='{$val['field']}' type='text' class='{$val['field']}' value='".'{$info['.$val['field'].']}'."'>{$val['tips']}";
		    			break;
		    			case 'password':
		    				$formtype="<input name='{$val['field']}' type='password' class='{$val['field']}'>{$val['tips']}";
		    			break;
		    			case 'textarea':
		    				$formtype="<textarea name='{$val['field']}' class='{$val['field']}'>".'{$info['.$val['field'].']}'."</textarea>{$val['tips']}";
		    			break;
		    			case 'select':
		    				$formtype='<select name="'.$val['field'].'" class="'.$val['field'].'">';
		    				eval('$select_list='.$val['setting'].';');
		    				foreach ($select_list as $v){
								$formtype.='<option value="'.$v['value'].'" <if condition="$info['.$val['field'].'] eq \''.$v['value'].'\'">selected</if>>'.$v['name'].'</option>';
		    				}
		    				$formtype.='</select>'.$val['tips'];
		    			break;
		    			case 'checkbox':
		    				eval('$checkbox_list='.$val['setting'].';');
		    				foreach ($checkbox_list as $v){
								$formtype.='<input type="checkbox" name="'.$val['field'].'[]" id="'.$val['field'].'" value="'.$v['value'].'" <if condition="$info['.$val['field'].'] eq \''.$v['value'].'\'">checked="checked"</if> />'.$v['name'];
		    				}
		    			break;
		    			case 'radio':
		    				eval('$radio_list='.$val['setting'].';');
		    				foreach ($radio_list as $v){
								$formtype.='<input type="radio" name="'.$val['field'].'" class="'.$val['field'].'" value="'.$v['value'].'" <if condition="$info['.$val['field'].'] eq \''.$v['value'].'\'">checked="checked"</if>/>'.$v['name'];
		    				}
		    			break;
		    			case 'date':
					    	$formtype="<input name='{$val['field']}' type='text' class='{$val['field']} date'  value='".'{$info['.$val['field'].']}'."'>{$val['tips']}";
					    	$replace_date="$('.date').datepicker();\n";
					    break;
					    case 'date_time':
					    	$formtype="<input name='{$val['field']}' type='text' class='{$val['field']} date_time' value='".'{$info['.$val['field'].']}'."'>{$val['tips']}";
					    	$replace_time="$('.date_time').datetimepicker();\n";
					    break;
		    			default:
		    				$formtype="<input name='{$val['field']}' type='text' class='{$val['field']}' value='".'{$info['.$val['field'].']}'."'>{$val['tips']}";
		    			break;
		    		}
		    		if ($i++%$column_num==0&&$tr==1){//加个tr标记
		    			$html.="<tr>";
		    		}
		    		$html.="<th>{$val['name']}</th><td>$formtype</td>";
		    		if ($i%$column_num==0&&$tr==$column_num){//关闭tr标记
		    			$html.="</tr>\n";	
		    			$tr=0;
		    		}
		    		$tr++;
		    	}
    			//当列数不够时要补全
    			$row_num=ceil($field_num/$column_num);
		    	for($i=0;$i<$column_num*$row_num-$field_num;$i++){
		    		$html.="<th>&nbsp;</th><td>&nbsp;</td>";
		    	}
    			if ($column_num*$row_num==$field_num){
		    		$html.="</tr>\n";
		    	}
		    	$content=str_replace('[￥html]',$html,$content);
    			//替换日期
		    	if ($replace_date){
		    		$content=str_replace('<!--[￥date]-->',$replace_date.$replace_time,$content);
		    	}
		    	$file->write_file("/Tpl/{$app_name}/{$module_name}-{$action_name}.html",$content);
    		break;
    		case 'show':
    			$field_num=count($field_list);
				$column_num=$field_num<12?1:($field_num%3==0?3:4);//可以根据字段的数量来决定有多少列
				$tr=1;
				foreach ($field_list as $val){
		    		if ($i++%$column_num==0&&$tr==1){
		    			$html.="<tr>";
		    		}
		    		$html.='<th width="10%">'.$val['name'].'</th><td>{$info['.$val['field'].']}</td>';
		    		if ($i%$column_num==0&&$tr==$column_num){
		    			$html.="</tr>\n";	
		    			$tr=0;
		    		}
		    		$tr++;
				}
    			//当列数不够时要补全
    			$row_num=ceil($field_num/$column_num);
		    	for($i=0;$i<$column_num*$row_num-$field_num;$i++){
		    		$html.="<th>&nbsp;</th><td>&nbsp;</td>";
		    	}
    			if ($column_num*$row_num==$field_num){
		    		$html.="</tr>\n";
		    	}
		    	$content=str_replace('[￥html]',$html,$content);
		    	$file->write_file("/Tpl/{$app_name}/{$module_name}-{$action_name}.html",$content);
    		break;
    	}
    }
}