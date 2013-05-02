<?php 
/**
 * 应用管理
 * 管理系统的应用、模块、和操作的各个节点，通过此处添加的应用、模块和操作都会自动生成各种常用的功能，如“添加数据、修改数据、删除数据、显示详细数据信息、数据列表、导出数据”
 * @author 
 * @version 1.0
 * @date 2012-09-19
 *
 */
class IndexAction extends CommonAction {
	public function __construct(){
		$this->db_name='Node';
		parent::__construct();
	}
	public function _before_index(){
		//读取系统的项目列表
        $node    =  D("Node");
        $list_app	=	$node->where('level=1')->field('id,name,title,remark')->select();
        

        //读取系统组列表
        $db_role =  D('Role');
        $list_role=  $db_role->field('id,name')->select();
        $this->assign("list_role",$list_role);

        //获取当前用户组项目权限信息
        $role_id =  isset($_GET['role_id'])?$_GET['role_id']:'';
        $list_role_app = array();
        if(!empty($role_id)) {
            $this->assign("selectGroupId",$role_id);
            //获取当前角色的操作权限列表
            $list	=	$db_role->getGroupAppList($role_id);
            foreach ($list as $vo){
                $list_role_app[$vo['id']]	=	$vo['id'];
            }
        }
        $this->assign('list_role_app',$list_role_app);
        $this->assign('list_app',$list_app);
	}
/**
     * 添加应用，当添加一个应用时，在Lib目录下生成对应的文件夹，并且生成indexAction.class.php的基本类
     *
     */
    public function app_add(){    	
    	if ($this->_post('act')=='todo'){
    		//先检测此应用是否存在。
    		$rs=$this->node_check($this->_post('name'),$this->_post('pid'),$this->_post('level'));
    		if (!$rs){
    			//在数据库中生成应用的节点信息
				$db_node= D('node');
				$app_info=$this->_post();
				if (false === $db_node->create()) {
			        $this->error($db_node->getError());
			    }
			    $app_id=$db_node->add();
			    //建立Action里的应用文件夹
			    import("@.ORG.file");
			    $file=new file();
			    $app_folder=$file->create_folder("/Lib/Action/",$app_info['name']);
			    $param['title']=$app_info['title'];
			    $param['role_id']='[1][2]';
			    $param['app']=$app_info['name'];
			    $menu_id=$this->add_menu($param);//系统管理员\企业管理层添加到一级菜单
			    $app_info['id']=$app_id;
			    if (count($app_info['create_data'])){
			    	$table_name=$this->_post('table_name')?$this->_post('table_name'):'demo';
				    //在数据库中生成默认模块
				    $node_module_index['name']='Index';
				    $node_module_index['title']=$app_info['title'];
				    $node_module_index['status']=1;
				    $node_module_index['remark']=$app_info['remark'];
				    $node_module_index['pid']=$app_id;
				    $node_module_index['level']=2;
				    $node_module_index['id']=$module_id=$db_node->data($node_module_index)->add();
			    	if ($app_folder){
			    		$this->create_module_field($node_module_index,$table_name,$app_info['name']);
			    	}
				    //在数据库中生成默认的5个操作，index,add,edit,show,export
				    $node_action['status']=1;
				    $node_action['pid']=$module_id;
				    $node_action['level']=3;
				    //创建Tpl下相应模块的文件夹和默认操作HTML文件
    				$file->create_folder("/Tpl/",$app_info['name']);
    				foreach ($app_info['create_data'] as $val){
    					switch ($val) {
    						case 'index'://列表
							    $node_action['name']='index';
							    $node_action['title']='数据列表';			    
							    $node_action['remark']='系统自动生成的默认操作列表';   
							    $db_node->data($node_action)->add();
							    $this->create_html($app_info['name'],'Index','index','index',$table_name);
							    //生成列表菜单
							    $url=U("{$app_info['name']}/{$node_module_index['name']}/{$node_action['name']}");
							    $param['title']='数据管理';
							    $param['role_id']='[1][2]';
							    $param['parent_id']=$menu_id;
							    $param['position']='menu';
							    $param['target']='main-frame';
							    $param['url']=$url;
							    $param['app']=$app_info['name'];
							    $param['module']='Index';
			    				$menu_id=$this->add_menu($param);
    						break;
    						case 'add'://添加
							    $node_action['name']='add';
							    $node_action['title']='添加信息';
							    $node_action['remark']='系统自动生成的默认添加操作';
							    $db_node->data($node_action)->add();
							    $this->create_html($app_info['name'],'Index','add','add',$table_name);
							    //生成添加信息菜单
							    $param['title']='添加信息';
							    $param['role_id']='[1][2]';
							    $param['parent_id']=$menu_id;
							    $param['position']='main';
							    $param['target']='_self';
							    $param['url']="javascript:dialog_add();";
							    $param['app']=$app_info['name'];
							    $param['module']='Index';
			    				$this->add_menu($param);
    						break;
    						case 'edit'://修改
							    $node_action['name']='edit';
							    $node_action['title']='修改信息';
							    $node_action['remark']='系统自动生成的默认修改操作';
							    $db_node->data($node_action)->add();
							    $this->create_html($app_info['name'],'Index','edit','edit',$table_name);
    						break;
    						case 'show'://显示
							    $node_action['name']='show';
							    $node_action['title']='显示信息';
							    $node_action['remark']='系统自动生成的默认添回操作';
							    $db_node->data($node_action)->add();
							    $this->create_html($app_info['name'],'Index','show','show',$table_name);
    						break;
    						case 'export'://导出
							    $node_action['name']='export';
							    $node_action['title']='导出列表';
							    $node_action['remark']='系统自动生成的默认导出列表的所有信息';
							    $db_node->data($node_action)->add();
							    $this->create_html($app_info['name'],'Index','export','export',$table_name);
    						break;
    					}//end switch ($val) {
    				}//end foreach ($app_info['create_data'] as $val){
					//在配置文件中要自动加入这个应用
		    		$content=$file->read_file('/Conf/sys_app_group_list.php');
		    		$content=str_replace('";',",{$app_info['name']}\";",$content);
		    		$file->write_file('/Conf/sys_app_group_list.php',$content,true);
			    }//end if (count($app_info['create_data'])){
    			$this->success('操作成功!');   			
    		}else {
    			$this->error('此应用已存在');
    		}    		
    	}else {
    		$this->display();
    	}
    }
    /**
     * 创建LIB中的action文件
     *
     */
    private function create_module_field($module_info,$table_name='demo',$app_name=''){
    	import("@.ORG.file");
		 $file=new file();
    	if ($app_name==''){
    		$db_node=M('node');
    		$app_name=$db_node->where("id='{$module_info['pid']}'")->getField('name');
    	}
    	//创建模块的文件
    	$content=$file->read_file("/Lib/Action/DemoAction.class.php");
    	$content=str_replace('[应用名称]',$module_info['title'],$content);
    	$content=str_replace('[描述]',$module_info['remark'],$content);
    	$content=str_replace('[demo]',$_SESSION['nickname'],$content);
    	$content=str_replace('[日期]',date('Y-m-d'),$content);
    	$content=str_replace('[数据表名]',$table_name,$content);
    	$content=str_replace('class DemoAction extends',"class {$module_info['name']}Action extends",$content);
    	$file->write_file("/Lib/Action/{$app_name}/{$module_info['name']}Action.class.php",$content);
    }
/**
     * 修改应用
     *
     */
    public function app_edit(){
    	$this->db_name='node';
    	$this->edit();
    }
	/**
	 * ajax取回模块列表
	 *
	 */
	public function module() {
        $pid  = $this->_get('pid');

        $db_node    =  D("Node");
		$where['level']=2;
		$where['pid']=$pid;
		$list_module=$db_node->where($where)->select();

        $this->assign('list_module',$list_module);

        $this->display();

        return;
    }
    /**
     * AJAX操作列表
     *
     */
	public function action() {
        $pid  = $this->_get('pid');
        $db_node =  D("Node");
        
        $map['level']=3;
        $map['pid']=$pid;
        $list_action	=	$db_node->where($map)->select();
       
        $this->assign('list_action',$list_action);

        $this->display();

        return;
    }
/**
     * 添加操作
     *
     */
    public function action_add(){
    	if ($this->_post('act')=='todo'){
    		$action_info=$this->_post();
    		$rs=$this->node_check($action_info['name'],$action_info['pid'],$action_info['level']);
    		if ($rs){ $this->error("此操作已存在！");return false;}
    		$db_node=D('node');
    		$action_id=$db_node->data($action_info)->add();
    		if ($action_id){
    			//生成代码
    			$action_info['id']=$action_id;
    			$rs=$this->action_create_code($action_info,$this->_post('table_name'),$this->_post('demo_type'));
    			if ($rs){
    				$this->success('操作成功');
    			}else {
    				$this->error('操作失败');
    			}
    		}else{
    			$this->error();
    		}
    		
    	}else {
    		$this->assign('pid',$this->_get('pid'));
    		$this->display();
    	}
    	return true;
    }
/**
     * 修改操作信息
     *
     */
    public function action_edit(){
    	$this->db_name='node';
    	$this->edit();
    }
/**
     * 生成操作节点为的代码，要在“/Tpl/应用/”中生成“模块-index.html、模块-add.html、模块-edit.html”
     *
     * @param unknown_type $node_info
     */
    private function action_create_code($action_info,$table_name,$demo_type='index'){
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
    public function {$action_info['name']}(){
    
    }
}
EOF;
		$content=$content.$function;
		$rs=$file->write_file($lib_file,$content,true);
		if (!$rs){
			echo '函数写入LIB文件出错';
			return false;
		}
		//HTML文件写入
		$table_name=$table_name?$table_name:$module_info['name'];
		$this->create_html($app_info['name'],$module_info['name'],$action_info['name'],$demo_type,$table_name);
		return true;
    }
/**
     * 检查是否已存在本应用
     *
     */
    private function node_check($name,$pid,$level){
    	if(!ereg("^[0-9a-zA-Z_]*$",$name)){
    		$this->error('应用名必需是字母、数字和下划线.');
    		return true;
    	}
    	$db_node=M('node');
    	$where="name='{$name}' AND pid='{$pid}' AND level='{$level}'";
    	$rs=$db_node->where($where)->find();
    	if ($rs){
    		return true;
    	}else{
    		return false;
    	}
    }

//================模块操作===========================
    /**
     * 添加模块
     *
     */
    public function module_add(){
    	if ($this->_post('act')=='todo'){
    		$module_info=$this->_post();
    		$db_node=D('node');
    		$rs=$db_node->where("pid='{$module_info['pid']}' AND name='{$module_info['name']}'")->find();
    		if ($rs){
    			$this->error('已存在相同的模块！');
    			return false;
    		}
    		$module_info['id']=$module_id=$db_node->data($module_info)->add();
    		$table_name=$this->_post('table_name')?$this->_post('table_name'):'demo';
    		$app_info=$db_node->where("id='{$module_info['pid']}'")->find();
    		$this->create_module_field($module_info,$table_name,$app_info['name']);
    		//添加默认操作
    		if ($module_id){
    			$node_action['status']=1;
			    $node_action['pid']=$module_id;
			    $node_action['level']=3;
    			foreach ($module_info['create_data'] as $val){
    				switch ($val) {
    					case 'index'://列表
						    $node_action['name']='index';
						    $node_action['title']='数据列表';			    
						    $node_action['remark']='系统自动生成的默认操作列表';   
						    $db_node->data($node_action)->add();
						    $this->create_html($app_info['name'],$module_info['name'],'index','index',$table_name);
						    //生成列表菜单
						    $menu_id=M('menu')->where("app='{$app_info['name']}' AND module=''")->order('id ASC')->getField('id');
							$url=U("{$app_info['name']}/{$module_info['name']}/{$node_action['name']}");
							$param['title']=$module_info['title'];
							$param['role_id']='[1][2]';
							$param['parent_id']=$menu_id;
							$param['position']='menu';
							$param['target']='main-frame';
							$param['url']=$url;
							$param['app']=$app_info['name'];
							$param['module']=$module_info['name'];
			    			$menu_id=$this->add_menu($param);
    					break;
    					case 'add'://添加
						    $node_action['name']='add';
						    $node_action['title']='添加信息';
						    $node_action['remark']='系统自动生成的默认添加操作';
						    $db_node->data($node_action)->add();
						    $this->create_html($app_info['name'],$module_info['name'],'add','add',$table_name);
						    //生成添加信息菜单
			    			$param['title']='添加信息';
							$param['role_id']='[1][2]';
							$param['parent_id']=$menu_id;
							$param['position']='main';
							$param['target']='_self';
							$param['url']="javascript:dialog_add();";
							$param['app']=$app_info['name'];
							$param['module']=$module_info['name'];
			    			$this->add_menu($param);
    					break;
    					case 'edit'://修改
						    $node_action['name']='edit';
						    $node_action['title']='修改信息';
						    $node_action['remark']='系统自动生成的默认修改操作';
						    $db_node->data($node_action)->add();
						    $this->create_html($app_info['name'],$module_info['name'],'edit','edit',$table_name);
    					break;
    					case 'show'://显示
					    $node_action['name']='show';
						    $node_action['title']='显示信息';
						    $node_action['remark']='系统自动生成的默认添回操作';
						    $db_node->data($node_action)->add();
						    $this->create_html($app_info['name'],$module_info['name'],'show','show',$table_name);
    					break;
    					case 'export'://导出
						    $node_action['name']='export';
						    $node_action['title']='导出列表';
						    $node_action['remark']='系统自动生成的默认导出列表的所有信息';
						    $db_node->data($node_action)->add();
						    $this->create_html($app_info['name'],$module_info['name'],'export','export',$table_name);
    					break;
    				}//end switch ($val) {
    			}//end foreach ($app_info['create_data'] as $val){
    		}
    		$this->success('操作成功！');
    	}else {
    		$this->assign('pid',$this->_get('pid'));
    		$this->display();
    	}
    }
    /**
     * 修改模块信息
     *
     */
    public function module_edit(){
    	$this->db_name='node';
    	$this->edit();
    }
    /**
     * 生成模块节点的代码，同时要生成TPL下的操作HTML文件
     *
     * @param array $node_info
     */
    private function module_create_code($module_info,$table_name){
    	//查出这个应用的名称，要在此文件夹下创建数据
    	$db_node=M('node');
    	$app_info=$db_node->where("id='{$module_info['pid']}'")->find();
    	if (!file_exists($_SERVER['DOCUMENT_ROOT']."/Lib/Action/{$app_info['name']}")||!file_exists($_SERVER['DOCUMENT_ROOT']."/Tpl/{$app_info['name']}")||empty($app_info)){
    		return false;//不存在说明根本没有这个应用，所以不能添加
    	}
    	import("@.ORG.file");
    	$file=new file();
    	//创建默认模块的文件
    	$content=$file->read_file("/Lib/Action/DemoAction.class.php");
    	$content=str_replace('[应用名称]',$module_info['title'],$content);
    	$content=str_replace('[描述]',$module_info['remark'],$content);
    	$content=str_replace('[demo]',$_SESSION['loginUserName'],$content);
    	$content=str_replace('[日期]',date('Y-m-d'),$content);
    	$content=str_replace('[数据表名]',$app_info['table_name'],$content);
    	$content=str_replace('class DemoAction extends',"class {$module_info['name']}Action extends",$content);
    	$file->write_file("/Lib/Action/{$app_info['name']}/{$module_info['name']}Action.class.php",$content);
    	//复制默认的模块
    	$table_name=$table_name?$table_name:$module_info['name'];
    	$this->create_html($app_info['name'],$module_info['name'],'index','index',$table_name);
    	$this->create_html($app_info['name'],$module_info['name'],'add','add',$table_name);
    	$this->create_html($app_info['name'],$module_info['name'],'edit','edit',$table_name);
    	$this->create_html($app_info['name'],$module_info['name'],'export','export',$table_name);
    	$this->create_html($app_info['name'],$module_info['name'],'show','show',$table_name);
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
    			foreach ($field_list as $val){
		    		$name_th.='<th>'.$val['name'].'</th>';
		    		$field_td.='<td>{$info['.$val['field'].']}</td>';
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
		    	$select=array('[￥name]','[￥field]','[￥search]');
		    	$content=str_replace($select,array($name_th,$field_td,$search_form),$content);
		    	$file->write_file("/Tpl/{$app_name}/{$module_name}-{$action_name}.html",$content);
    		case 'export':
		    	foreach ($field_list as $val){
		    		$name_th.='<th>'.$val['name'].'</th>';
		    		$field_td.='<td>{$info['.$val['field'].']}</td>';
		    	}
		    	$select=array('[￥name]','[￥field]');
		    	$content=str_replace($select,array($name_th,$field_td),$content);
		    	$file->write_file("/Tpl/{$app_name}/{$module_name}-{$action_name}.html",$content);
    		break;
    		case 'add':
		    	foreach ($field_list as $val){
		    		$formtype='';
		    		switch ($val['formtype']) {
		    			case 'text':
		    				$formtype="<input name='{$val['field']}' type='text' class='{$val['field']}'>{$val['tips']}";
		    			break;
		    			case 'password':
		    				$formtype="<input name='{$val['field']}' type='password' class='{$val['field']}'>{$val['tips']}";
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
		    			default:
		    				$formtype="<input name='{$val['field']}' type='text' class='{$val['field']}'>{$val['tips']}";
		    			break;
		    		}
		    		$html.="	<tr><th>{$val['name']}</th><td>$formtype</td></tr>\n";
		    	}
		    	$content=str_replace('[￥html]',$html,$content);
		    	$file->write_file("/Tpl/{$app_name}/{$module_name}-{$action_name}.html",$content);
    		break;
    		case 'edit':
		    	foreach ($field_list as $val){
		    		$formtype='';
		    		switch ($val['formtype']) {
		    			case 'text':
		    				$formtype="<input name='{$val['field']}' type='text' class='{$val['field']}' value='".'{$info['.$val['field'].']}'."'>{$val['tips']}";
		    			break;
		    			case 'password':
		    				$formtype="<input name='{$val['field']}' type='password' class='{$val['field']}' value='".'{$info['.$val['field'].']}'."'>{$val['tips']}";
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
		    			default:
		    				$formtype="<input name='{$val['field']}' type='text' class='{$val['field']}'>{$val['tips']}";
		    			break;
		    		}
		    		$html.="	<tr><th>{$val['name']}</th><td>$formtype</td></tr>\n";
		    	}
		    	$content=str_replace('[￥html]',$html,$content);
		    	$file->write_file("/Tpl/{$app_name}/{$module_name}-{$action_name}.html",$content);
    		break;
    		case 'show':
    			foreach ($field_list as $val){
		    		$html.='<tr><th width="10%">'.$val['name'].'</th><td>{$info['.$val['field'].']}</td></tr>'."\n";
		    	}
		    	$content=str_replace('[￥html]',$html,$content);
		    	$file->write_file("/Tpl/{$app_name}/{$module_name}-{$action_name}.html",$content);
    		break;
    	}
    }
	/**
	 * 添加默认菜单到系统管理员的角色中
	 *
	 * @param unknown_type $role_id
	 * @param unknown_type $title
	 * @param unknown_type $parent_id
	 * @param unknown_type $position
	 * @param unknown_type $target
	 * @param unknown_type $url
	 * @param unknown_type $app
	 * @param unknown_type $module
	 * @param unknown_type $action
	 * @return unknown
	 */
    private function add_menu($param){
    	$db_menu=M('menu');
    	$info['title']=$param['title'];
    	$info['role_id']=$param['role_id']?$param['role_id']:'';
    	$info['user_id']=$param['user_id']?$param['user_id']:0;
    	$info['parent_id']=$param['parent_id']?$param['parent_id']:0;
    	$info['position']=$param['position']?$param['position']:'menu';
    	$info['target']=$param['target']?$param['target']:'_self';
    	$info['url']=$param['url']?$param['url']:'#';
    	$info['app']=$param['app']?$param['app']:'Index';
    	$info['module']=$param['module']?$param['module']:'';
    	$info['action']=$param['action']?$param['action']:'';
    	$menu_id=$db_menu->data($info)->add();//echo $db_menu->getLastSql();
    	return $menu_id;
    }
    /**
     * ajax方式检查应用是否存在，存在就清空并提示，并且中文直接转化为拼音
     *
     */
    public function check_app(){
    	$title=$this->_get('title');
    	$app_name=$this->_get('app_name');
    	if ($_REQUEST['type']=='pinyin'){
	    	import('@.ORG.pinyin');
	    	$pinyin=new pinyin();
	    	if ($title){
	    		$app_name=$pinyin->zh($title);
	    	}else {
	    		$app_name=$pinyin->zh($app_name);
	    	}
    	}else {
    		import('@.ORG.GoogleTranslate');
    		$GoogleTranslate=new GoogleTranslate();
    		if ($title){
    			$app_name=$GoogleTranslate->code($title);
    		}else {
    			$app_name=$GoogleTranslate->code($app_name);
    		}
    	}    	
    	$db_node=M('node');
    	$count=$db_node->where("name='{$app_name}' AND level=1")->count();
    	if ($count<1){
    		$match=eregi("^[A-Za-z][A-Za-z0-9_]+$",$app_name);
    		if ($match){
	    		$app_name=ucfirst($app_name);
	    		$this->ajaxReturn($app_name,'输入正确',1);
    		}else {
    			$this->ajaxReturn('','只能输入字母、数字和_，第一个字符必需是字母。',2);
    		}
    	}else {
    		$this->ajaxReturn('','应用已存在，请重新输入',3);
    	}
    }
    /**
     * ajax方式检查应用是否存在
     *
     */
    public function check_module(){
    	$title=$this->_get('title');
    	$module_name=$this->_get('module_name');
    	if ($_REQUEST['type']=='pinyin'){
	    	import('@.ORG.pinyin');
	    	$pinyin=new pinyin();
	    	if ($title){
	    		$module_name=$pinyin->zh($title);
	    	}else {
	    		$module_name=$pinyin->zh($module_name);
	    	}
    	}else {
    		import('@.ORG.GoogleTranslate');
    		$GoogleTranslate=new GoogleTranslate();
    		if ($title){
    			$module_name=$GoogleTranslate->code($title);
    		}else {
    			$module_name=$GoogleTranslate->code($module_name);
    		}
    	}
    	$db_node=M('node');
    	$count=$db_node->where("name='{$module_name}' AND level=2")->count();
    	if ($count<1){
    		$match=eregi("^[A-Za-z][A-Za-z0-9_]+$",$module_name);
    		if ($match){
	    		$module_name=ucfirst($module_name);
	    		$this->ajaxReturn($module_name,'输入正确',1);
    		}else {
    			$this->ajaxReturn('','只能输入字母、数字和_，第一个字符必需是字母。',2);
    		}
    	}else {
    		$this->ajaxReturn('','应用已存在，请重新输入',3);
    	}
    }
    /**
     * 通过读取LIB中的文件来更新node表中的节点，同时用node中的节点对比把不存在的节点删除
     *
     */
    public function updata_cache(){
    	import("@.ORG.file");
    	$file=new file();
    	$app_arr=$file->read_folder('/Lib/Action/',array('dir'));
    	$db_node=D('node');
    	$node_app=$db_node->where("level=1")->getField("name,id");
    	//添加数据库中不存在的应用
    	foreach ($app_arr as $val){
    		if (!$node_app[$val['filename']]){
    			$info['name']=$val['filename'];
    			$info['title']=$val['filename'].'应用';
    			$info['status']=1;
    			$info['level']=1;
    			$app_id=$db_node->data($info)->add();echo '<br>应用写入'.$db_node->getLastSql();
    		}else {//存在时要把这个应用的id保存起来后面用
    			$app_id=$node_app[$val['filename']];
    		}
    		$app_key_arr[$val['filename']]=1;
    		$app_folder_arr[]=array('folder'=>"/Lib/Action/{$val['filename']}/",'id'=>$app_id);//应用的文件夹
    	}
    	//删除不存在的应用
    	foreach ($node_app as $name=>$id){
    		if (!$app_key_arr[$name]){
    			$db_node->where("name='{$name}' AND level=1")->delete();echo '<br>删除应用：'.$db_node->getLastSql();
    			//同时删除这个应用下面的模块和操作
    			$module_id_arr=$db_node->where("level=2 AND pid='{$id}'")->getField('name,id');
    			$module_id_str=implode("','",$module_id_arr);
    			$db_node->where("id IN('$module_id_str')")->delete();echo '<br>删除模块：'.$db_node->getLastSql();
    			$db_node->where("level=3 AND pid IN('{$module_id_str}')")->delete();echo '<br>删除操作：'.$db_node->getLastSql();
    			
    		}
    	}
    	//==============更新模块========
    	foreach ($app_folder_arr as $app_info){
    		$module_file_arr=$file->read_folder($app_info['folder'],array('php'));//读出此应用中的所有文件
    		$node_module=$db_node->where("level=2 AND pid='{$app_info['id']}'")->getField("name,id");//查出这个数据库中的模块
    		//添加不存在的模块到数据库
    		foreach ($module_file_arr as $val){
    			$name=str_replace('Action.class.php','',$val['filename']);
    			if (!$node_module[$name]){
	    			$file_info=$this->analysis_file($app_info['folder'].$val['filename']);
	    			if ($file_info){
		    			$info['name']=$file_info[0]['name'];
		    			$info['title']=$file_info[0]['title'];
		    			$info['remark']=$file_info[0]['remark'];
		    			$info['status']=1;
		    			$info['level']=2;
		    			$info['pid']=$app_info['id'];
		    			$module_id=$db_node->data($info)->add();echo '<br>添加a模块'.$db_node->getLastSql();
		    			//添加数据库中不存在的操作
		    			$this->add_action_node($module_id,$file_info);echo '<br>添加a操作'.$db_node->getLastSql();
	    			}
	    			$module_key_arr[$name]=$module_id;
	    		}else {
	    			$module_key_arr[$name]=$node_module[$name];
	    		}
    		}
    		//删除不存在的模块
    		foreach ($node_module as $name=>$id){
	    		if (!$module_key_arr[$name]){
	    			$db_node->where("name='{$name}' AND level=2 AND pid='{$app_info['id']}'")->delete();echo '删除模块：'.$db_node->getLastSql();
	    			//同时删除这个模块下面操作
	    			$action_id_arr=$db_node->where("level=3 AND pid='{$id}'")->getField('name,id');
	    			$action_id_str=implode("','",$action_id_arr);
	    			$db_node->where("level=3 AND pid IN('{$action_id_str}')")->delete();echo '<br>删除操作：'.$db_node->getLastSql();
	    		}
    		}
    	}
    	//=============更新操作===========
    	
    }
    /**
     * Enter description here...
     *
     */
    public function test(){
    	$file_info=$this->analysis_file("/Lib/Action/Yewuguanli/IndexAction.class.php");var_dump($file_info);echo '<br>';
    	$this->add_action_node(4,$file_info);
    }
    /**
     * 添加操作的节点
     *
     */
    private function add_action_node($module_id,$node_arr){
    	array_shift($node_arr);//把第一个数组删除，他是模块的节点信息
    	$db_node=M('node');
    	foreach ($node_arr as $val){
    		$node_on=$db_node->where("pid='{$module_id}' AND name='{$val['name']}'")->count();
    		if (!$node_on){
	    		$val['pid']=$module_id;
	    		$val['status']=1;
	    		$db_node->data($val)->add();
    		}
    	}
    }
    /**
     * 分析出类中的说明,和操作的类
     * 第一个是模型 的一些信息
     * @param unknown_type $file
     * @return $arr=array(
     * 					array('level'=>2,'title'=>'在文件中是用[title][/title]包围 的','name'=>'类名','remark'=>'在系统中是用[des][/des]包围的'),
     * 					array('level'=>3,'title'=>'每一个public函数前面的注释用[title][/title]包围的','name'=>'函数名','remark'=>'每一个public函数前面的注释')
     * 				);
     */
    private function analysis_file($file){
    	import("@.ORG.file");
    	$obj_file=new file();
    	$content=$obj_file->read_file($file);
    	$arr=explode('Action extends',$content);
    	$module_str=$arr[0];
    	$action_str=$arr[1];
    	$module_arr=explode('class',$module_str);
    	preg_match("/(\[title\])[^(\[\/title\])]*(\[\/title\])/",$module_str,$title);
    	$title=str_replace('[title]','',str_replace('[/title]','',$title[0]));
    	preg_match("/(\[des\])[^(\[\/des\])]*(\[\/des\])/",$module_str,$des);
    	$des=str_replace('[des]','',str_replace('[/des]','',$des[0]));
    	$title=trim($title)?trim($title).'模块':trim($module_arr[1]);
    	$module_info=array(array('level'=>2,'title'=>$title,'name'=>trim($module_arr[1]),'remark'=>$des));//模块的信息
    	//分析操作的信息
    	preg_match_all("/(public function)\s+\w+/",$action_str,$match_action);
    	$delete_action=array('__construct');
    	foreach ($match_action[0] as $action){
    		$action_name=trim(str_replace('public function','',$action));
    		if (!in_array($action_name,$delete_action)){//排除开一些自动生成的必需的方法
    			$name=trim(str_replace('_before_','',$action_name));
    			$title=$name;
    			$remark=$name;
    			$action_info[]=array('level'=>3,'name'=>$name,'title'=>$title,'remark'=>$remark);
    		}
    	}
    	return array_merge($module_info,$action_info);
    }
    
}