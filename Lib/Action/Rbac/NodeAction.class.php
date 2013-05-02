<?php
class NodeAction extends CommonAction {
    public function _filter(&$map){
        if(!empty($_GET['group_id'])) {
            $map['group_id'] =  $_GET['group_id'];
            $this->assign('nodeName','分组');
        }elseif(empty($_POST['search']) && !isset($map['pid']) ) {
            $map['pid']	=	0;
        }
        if($_GET['pid']!=''){
            $map['pid']=$_GET['pid'];
        }
        $_SESSION['currentNodeId']	=	$map['pid'];
        //获取上级节点
        $node  = M("Node");
        if(isset($map['pid'])) {
            if($node->getById($map['pid'])) {
                $this->assign('level',$node->level+1);
                $this->assign('nodeName',$node->name);
            }else {
                $this->assign('level',1);
            }
        }
    }

    public function _before_index() {
        $model	=	M("Group");
        $list	=	$model->where('status=1')->getField('id,title');
        $this->assign('groupList',$list);
    }

    // 获取配置类型
    public function _before_add() {
        $model	=	M("Group");
        $list	=	$model->where('status=1')->select();
        $this->assign('list',$list);
        $node	=	M("Node");
        $node->getById($_SESSION['currentNodeId']);
        $this->assign('pid',$node->id);
        $this->assign('level',$node->level+1);
    }

    public function _before_patch() {
        $model	=	M("Group");
        $list	=	$model->where('status=1')->select();
        $this->assign('list',$list);
        $node	=	M("Node");
        $node->getById($_SESSION['currentNodeId']);
        $this->assign('pid',$node->id);
        $this->assign('level',$node->level+1);
    }
    public function _before_edit() {
        $model	=	M("Group");
        $list	=	$model->where('status=1')->select();
        $this->assign('list',$list);
    }

    /**
     +----------------------------------------------------------
     * 默认排序操作
     +----------------------------------------------------------
     * @access public
     +----------------------------------------------------------
     * @return void
     +----------------------------------------------------------
     */
    public function sort()
    {
        $node = M('Node');
        if(!empty($_GET['sortId'])) {
            $map = array();
            $map['status'] = 1;
            $map['id']   = array('in',$_GET['sortId']);
            $sortList   =   $node->where($map)->order('sort asc')->select();
        }else{
            if(!empty($_GET['pid'])) {
                $pid  = $_GET['pid'];
            }else {
                $pid  = $_SESSION['currentNodeId'];
            }
            if($node->getById($pid)) {
                $level   =  $node->level+1;
            }else {
                $level   =  1;
            }
            $this->assign('level',$level);
            $sortList   =   $node->where('status=1 and pid='.$pid.' and level='.$level)->order('sort asc')->select();
        }
        $this->assign("sortList",$sortList);
        $this->display();
        return ;
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
			    //在数据库中生成默认模块
			    $node_module_index['name']='Index';
			    $node_module_index['title']='默认模块';
			    $node_module_index['status']=1;
			    $node_module_index['remark']='系统自动生成的默认模块。';
			    $node_module_index['pid']=$app_id;
			    $node_module_index['level']=2;
			    $module_id=$db_node->data($node_module_index)->add();
			    //在数据库中生成默认的5个操作，index,add,edit,show,export
			    $node_action['status']=1;
			    $node_action['pid']=$module_id;
			    $node_action['level']=3;
			    //列表
			    $node_action['name']='index';
			    $node_action['title']='数据列表';			    
			    $node_action['remark']='系统自动生成的默认操作列表';   
			    $db_node->data($node_action)->add();
			    //添加
			    $node_action['name']='add';
			    $node_action['title']='添加信息';
			    $node_action['remark']='系统自动生成的默认添加操作';
			    $db_node->data($node_action)->add();
			    //修改
			    $node_action['name']='edit';
			    $node_action['title']='修改信息';
			    $node_action['remark']='系统自动生成的默认修改操作';
			    $db_node->data($node_action)->add();
			    //显示
			    $node_action['name']='show';
			    $node_action['title']='显示信息';
			    $node_action['remark']='系统自动生成的默认添回操作';
			    $db_node->data($node_action)->add();
			    //导出
			    $node_action['name']='export';
			    $node_action['title']='导出列表';
			    $node_action['remark']='系统自动生成的默认导出列表的所有信息';
			    $db_node->data($node_action)->add();
			    //在配置文件中要自动加入这个应用
			    import("@.ORG.file");
    			$file=new file();
    			$content=$file->read_file('/Conf/sys_app_group_list.php');
    			$content=str_replace('";',",{$app_info['name']}\";",$content);
    			$file->write_file('/Conf/sys_app_group_list.php',$content);
			    //生成代码,会同时生成里面的默认模块和默认操作
			    $app_info['id']=$app_id;
    			$this->app_create_code($app_info); 
    			$this->success('操作成功!');   			
    		}else {
    			$this->error('此应用已存在');
    		}    		
    	}else {
    		$this->display();
    	}
    }
    /**
     * 检查是否已存在本应用
     *
     */
    private function node_check($name,$pid,$level){
    	$db_node=M('node');
    	$where="name='{$name}' AND pid='{$pid}' AND level='{$level}'";
    	$rs=$db_node->where($where)->find();
    	if ($rs){
    		return true;
    	}else{
    		return false;
    	}
    }
    /**
     * 生成应用的代码
     *
     */
    private function app_create_code($app_info){
    	import("@.ORG.file");
    	$file=new file();
    	//建立Action里的应用文件夹
    	$rs=$file->create_folder("/Lib/Action/",$app_info['name']);
    	if (!$rs){ return false; }
    	//创建默认模块的文件
    	$file->copy_file('/Lib/Action/','DemoAction.class.php',"/Lib/Action/{$app_info['name']}/",'IndexAction.class.php');
    	$content=$file->read_file("/Lib/Action/{$app_info['name']}/IndexAction.class.php");
    	$content=str_replace('[应用名称]',$app_info['title'],$content);
    	$content=str_replace('[描述]',$app_info['remark'],$content);
    	$content=str_replace('[demo]',$_SESSION['nickname'],$content);
    	$content=str_replace('[日期]',date('Y-m-d'),$content);
    	$content=str_replace('[数据表名]',$app_info['table_name'],$content);
    	$content=str_replace('class DemoAction extends',"class IndexAction extends",$content);
    	$file->write_file("/Lib/Action/{$app_info['name']}/IndexAction.class.php",$content);
    	//创建Tpl下相应模块的文件夹和默认操作HTML文件
    	$rs=$file->create_folder("/Tpl/",$app_info['name']);
    	if (!$rs){	return false; 	}
    	$table_name=$this->_post('table_name')?$this->_post('table_name'):'';
    	$this->create_html($app_info['name'],'Index','index','index',$table_name);
    	$this->create_html($app_info['name'],'Index','add','add',$table_name);
    	$this->create_html($app_info['name'],'Index','edit','edit',$table_name);
    	$this->create_html($app_info['name'],'Index','show','show',$table_name);
    	$this->create_html($app_info['name'],'Index','export','export',$table_name);
    	return true;
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
    		$module_id=$db_node->data($module_info)->add();
    		//添加默认操作
    		if ($module_id){
    			$node_action['status']=1;
			    $node_action['pid']=$module_id;
			    $node_action['level']=3;
			    //列表
			    $node_action['name']='index';
			    $node_action['title']='数据列表';			    
			    $node_action['remark']='系统自动生成的默认操作列表';   
			    $db_node->data($node_action)->add();
			    //添加
			    $node_action['name']='add';
			    $node_action['title']='添加信息';
			    $node_action['remark']='系统自动生成的默认添加操作';
			    $db_node->data($node_action)->add();
			    //修改
			    $node_action['name']='edit';
			    $node_action['title']='修改信息';
			    $node_action['remark']='系统自动生成的默认修改操作';
			    $db_node->data($node_action)->add();
			    //显示
			    $node_action['name']='show';
			    $node_action['title']='显示信息';
			    $node_action['remark']='系统自动生成的默认添回操作';
			    $db_node->data($node_action)->add();
			    //导出
			    $node_action['name']='export';
			    $node_action['title']='导出列表';
			    $node_action['remark']='系统自动生成的默认导出列表的所有信息';
			    $db_node->data($node_action)->add();
    		}
    		//生成代码
    		$module_info['id']=$module_id;
    		$table_name=$this->_post('table_name')?$this->_post('table_name'):$module_info['name'];
    		$this->module_create_code($module_info,$table_name);
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
		    				$formtype="<input name='{$val['field']}' type='text' id='{$val['field']}'>{$val['tips']}";
		    			break;
		    			case 'password':
		    				$formtype="<input name='{$val['field']}' type='password' id='{$val['field']}'>{$val['tips']}";
		    			break;
		    			case 'select':
		    				$formtype='<select name="'.$val['field'].'" id="'.$val['field'].'">';
		    				eval('$select_list='.$val['setting'].';');
		    				foreach ($select_list as $v){
								$formtype.='<option value="'.$v['value'].'" >'.$v['name'].'</option>';
		    				}
		    				$formtype.='</select>'.$val['tips'];
		    			break;
		    			case 'checkbox':
		    				eval('$checkbox_list='.$val['setting'].';');
		    				foreach ($checkbox_list as $v){
								$formtype.='<input type="checkbox" name="'.$val['field'].'" id="'.$val['field'].'" value="'.$v['value'].'" />'.$v['name'];
		    				}
		    			break;
		    			case 'radio':
		    				eval('$radio_list='.$val['setting'].';');
		    				foreach ($radio_list as $v){
								$formtype.='<input type="radio" name="'.$val['field'].'" id="'.$val['field'].'" value="'.$v['value'].'" />'.$v['name'];
		    				}
		    			break;
		    			default:
		    				$formtype="<input name='{$val['field']}' type='text' id='{$val['field']}'>{$val['tips']}";
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
		    				$formtype="<input name='{$val['field']}' type='text' id='{$val['field']}' value='".'{$info['.$val['field'].']}'."'>{$val['tips']}";
		    			break;
		    			case 'password':
		    				$formtype="<input name='{$val['field']}' type='password' id='{$val['field']}' value='".'{$info['.$val['field'].']}'."'>{$val['tips']}";
		    			break;
		    			case 'select':
		    				$formtype='<select name="'.$val['field'].'" id="'.$val['field'].'">';
		    				eval('$select_list='.$val['setting'].';');
		    				foreach ($select_list as $v){
								$formtype.='<option value="'.$v['value'].'" <if condition="info['.$val['field'].'] eq \''.$v['value'].'\'">selected</if>>'.$v['name'].'</option>';
		    				}
		    				$formtype.='</select>'.$val['tips'];
		    			break;
		    			case 'checkbox':
		    				eval('$checkbox_list='.$val['setting'].';');
		    				foreach ($checkbox_list as $v){
								$formtype.='<input type="checkbox" name="'.$val['field'].'" id="'.$val['field'].'" value="'.$v['value'].'" <if condition="$info['.$val['field'].'] eq \''.$v['value'].'\'">checked="checked"</if> />'.$v['name'];
		    				}
		    			break;
		    			case 'radio':
		    				eval('$radio_list='.$val['setting'].';');
		    				foreach ($radio_list as $v){
								$formtype.='<input type="radio" name="'.$val['field'].'" id="'.$val['field'].'" value="'.$v['value'].'" <if condition="$info['.$val['field'].'] eq \''.$v['value'].'\'">checked="checked"</if>/>'.$v['name'];
		    				}
		    			break;
		    			default:
		    				$formtype="<input name='{$val['field']}' type='text' id='{$val['field']}'>{$val['tips']}";
		    			break;
		    		}
		    		$html.="	<tr><th>{$val['name']}</th><td>$formtype</td></tr>\n";
		    	}
		    	$content=str_replace('[￥html]',$html,$content);
		    	$file->write_file("/Tpl/{$app_name}/{$module_name}-{$action_name}.html",$content);
    		break;
    		case 'show':
    			foreach ($field_list as $val){
		    		$html.='<tr><th>'.$val['name'].'</th><td>{$info['.$val['field'].']}</td></tr>'."\n";
		    	}
		    	$content=str_replace('[￥html]',$html,$content);
		    	$file->write_file("/Tpl/{$app_name}/{$module_name}-{$action_name}.html",$content);
    		break;
    	}
    	
    	
    	
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
    				$this->success();
    			}else {
    				$this->error();
    			}
    		}else{
    			$this->error();
    		}
    		
    	}else {
    		$this->assign('pid',$this->_get('pid'));
    		$this->display();
    	}
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
    	$content=substr($content,0,-1);
    	$date=date('Y-m-d');
    	$function=<<<EOF
    /**
     * {$action_info['title']}
     * {$action_info['remark']}
     * @author {$_SESSION['loginUserName']}
     * @date  {$date}
     */
    public function {$action_info['name']}(){
    
    }
}
EOF;
		$content=$content.$function;
		$rs=$file->write_file($lib_file,$content);
		if (!$rs){
			return false;
		}
		//HTML文件写入
		$table_name=$table_name?$table_name:$module_info['name'];
		$this->create_html($app_info['name'],$module_info['name'],$action_info['name'],$demo_type,$table_name);
		return true;
    }
/**
     * 是否存在子节点
     *
     */
    public function check_son(){
    	$id=$this->_get('id');
    	$db_node=M('node');
    	$count=$db_node->where("pid='{$id}'")->count();
    	echo $count;
	}
}