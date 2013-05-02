<?php

class CommonAction extends Action {
	protected $db_name='',$insert_id,$debug=false,$tpl='';
	protected $_count;//统计字段，有array $_count[field]和string $_count[group]2个组织

    function _initialize() {
        import('@.ORG.Util.Cookie');
        // 用户权限检查
        if (C('USER_AUTH_ON') && !in_array(MODULE_NAME, explode(',', C('NOT_AUTH_MODULE')))) {
            import('@.ORG.Util.RBAC');
            $rbac_app_name=strtoupper(GROUP_NAME);
            if (!RBAC::AccessDecision($rbac_app_name)) {
                //检查认证识别号
                if (!$_SESSION [C('USER_AUTH_KEY')]) {
                    //跳转到认证网关
                    redirect(PHP_FILE . C('USER_AUTH_GATEWAY'));
                }
                // 没有权限 抛出错误
                if (C('RBAC_ERROR_PAGE')) {
                    // 定义权限错误页面
                    redirect(C('RBAC_ERROR_PAGE'));
                } else {
                    if (C('GUEST_AUTH_ON')) {
                        $this->assign('jumpUrl', PHP_FILE . C('USER_AUTH_GATEWAY'));
                    }
                    // 提示错误信息
                    $this->error(L('_VALID_ACCESS_'));
                }
            }
        }
        $this->db_name=$this->db_name?$this->db_name:$this->getActionName();
        //查询系统main框架中的主导航菜单
        $url=$this->_get('_URL_');
        $action=$url[2]?$url[2]:'index';
        $list_main_menu=get_menu($_SESSION[C('USER_AUTH_KEY')],$_SESSION['roles'],array('position'=>'main','app'=>$url[0],'module'=>$url[1],'action'=>array('IN',array('',$action))));
        $this->assign('list_main_menu',$list_main_menu);
        //查出基本的导航
        $db_node=M('node');
        $current_operation['g']=$db_node->where("level=1 AND name='{$url[0]}'")->find();
        $current_operation['m']=$db_node->where("pid='{$current_operation['g']['id']}' AND name='{$url[1]}'")->find();
        $current_operation['a']=$db_node->where("pid='{$current_operation['m']['id']}' AND name='{$url[2]}'")->find();
        $this->assign('current_operation',$current_operation);
    }

    public function index() {
        //列表过滤器，生成查询Map对象
        $map = $this->_search();
        $model = D($this->db_name);
        if (!empty($model)) {
            $this->_list($model, $map);
        }
        $this->display($this->tpl);
        return;
    }

    /**
      +----------------------------------------------------------
     * 取得操作成功后要返回的URL地址
     * 默认返回当前模块的默认操作
     * 可以在action控制器中重载
      +----------------------------------------------------------
     * @access public
      +----------------------------------------------------------
     * @return string
      +----------------------------------------------------------
     * @throws ThinkExecption
      +----------------------------------------------------------
     */
    function getReturnUrl() {
        return __URL__ . '?' . C('VAR_MODULE') . '=' . MODULE_NAME . '&' . C('VAR_ACTION') . '=' . C('DEFAULT_ACTION');
    }

    /**
      +----------------------------------------------------------
     * 根据表单生成查询条件
     * 进行列表过滤
      +----------------------------------------------------------
     * @access protected
      +----------------------------------------------------------
     * @param string $name 数据对象名称
      +----------------------------------------------------------
     * @return HashMap
      +----------------------------------------------------------
     * @throws ThinkExecption
      +----------------------------------------------------------
     */
    protected function _search($name='') {
        //生成查询条件
        $name = $this->db_name;
        $model = D($name);
        $map = array();
        if (is_a($model,'ViewModel')){//当这个模型是实图模型时
        	$field_arr=$model->getDbViewFields();
        }else {
        	$field_arr=$model->getDbFields();
        }
        foreach ($field_arr as $val) {
        	if (isset($_REQUEST [$val]) && $_REQUEST [$val] != ''&&$_REQUEST['_filter'][$val]=='like'){
        		$map[$val]=array('LIKE',"%{$_REQUEST [$val]}%");
        	}elseif (isset($_REQUEST [$val]) && $_REQUEST [$val] != ''&&in_array($_REQUEST['_filter'][$val],array('gt','egt','lt','elt','eq','neq','in'))){
        		$map[$val]=array($_REQUEST['_filter'][$val],"{$_REQUEST[$val]}");
        	}elseif (count($_REQUEST['_filter'][$val])==2){
        		$between=array_keys($_REQUEST['_filter'][$val]);
        		if (($_REQUEST['_filter'][$val][$between[0]]=='between'&&$_REQUEST['_filter'][$val][$between[1]]=='between')&&($_REQUEST[$between[0]]&&$_REQUEST[$between[1]])){
        			if ($_REQUEST[$between[0]]<$_REQUEST[$between[1]]){
        				$map[$val]=array('between',array($_REQUEST[$between[0]],$_REQUEST[$between[1]]));
        			}else {
        				$map[$val]=array('between',array($_REQUEST[$between[1]],$_REQUEST[$between[0]]));
        			}
        		}
        	}elseif (isset($_REQUEST [$val]) && $_REQUEST [$val] != '') {
        		$map [$val] = array('IN',$_REQUEST [$val]);
        	}elseif ($val=='status'){//默认列表是显示状态为1的数据
        		$map['status']=1;
        	}
        	
        }
        //自定义的过滤条件
    	$action_method=$_REQUEST['_URL_'][2]==''?'':'_'.$_REQUEST['_URL_'][2];
        $filter='_filter'.$action_method;
    	if (method_exists($this,'_filter')) {
        	 $this->_filter($map);
        }
        if (method_exists($this,$filter)) {
            $this->$filter($map);
        }
        return $map;
    }

    /**
      +----------------------------------------------------------
     * 根据表单生成查询条件
     * 进行列表过滤
      +----------------------------------------------------------
     * @access protected
      +----------------------------------------------------------
     * @param Model $model 数据对象
     * @param HashMap $map 过滤条件
     * @param string $sortBy 排序
     * @param boolean $asc 是否正序
      +----------------------------------------------------------
     * @return void
      +----------------------------------------------------------
     * @throws ThinkExecption
      +----------------------------------------------------------
     */
    protected function _list($model,$map,$field='*', $sortBy = '', $asc = false) {
        //排序字段 默认为主键名
        if (isset($_REQUEST ['_order'])) {
            $order = $_REQUEST ['_order'];
        }elseif (method_exists($model,'_order')){
        	$order=$model->_order();
        } else {
            $order = !empty($sortBy) ? $sortBy : $model->getPk();
        }
        //排序方式默认按照倒序排列
        //接受 sost参数 0 表示倒序 非0都 表示正序
        if (isset($_REQUEST ['_sort'])) {
            $sort = $_REQUEST ['_sort'] ? 'asc' : 'desc';
        } else {
            $sort = $asc ? 'asc' : 'desc';
        }
        //取得满足条件的记录数
        $count = $model->where($map)->count(); 
        if ($this->debug){
        	echo $model->getLastSql().'<br>';
        }
        if ($count > 0) {
        	//统计列表汇总数据
        	$this->_count($map);
            import("@.ORG.Util.Page");
            //创建分页对象
            if (!empty($_REQUEST ['listRows'])) {
                $listRows = $_REQUEST ['listRows'];
            } else {
                $listRows = '';
            }
            $p = new Page($count, $listRows);
            //分页查询数据
            $voList = $model->field($field)->where($map)->order("`" . $order . "` " . $sort)->limit($p->firstRow . ',' . $p->listRows)->select();
            if ($this->debug){
            	echo $model->getlastsql().'<br>';
            }
            $action_method=($_REQUEST['_URL_'][2]==''||$_REQUEST['_URL_'][2]=='index')?'index':$_REQUEST['_URL_'][2];
            $_man_method='_man_'.$action_method;
	        if (method_exists($this,$_man_method)) {
	            $voList=$this->$_man_method($voList);
	        }
            //分页显示
            $page = $p->show();
            //列表排序显示
            $sortImg = $sort; //排序图标
            $sortAlt = $sort == 'desc' ? '升序排列' : '倒序排列'; //排序提示
            $sort = $sort == 'desc' ? 1 : 0; //排序方式
            //模板赋值显示
            $this->assign('list', $voList);
            $this->assign('sort', $sort);
            $this->assign('order', $order);
            $this->assign('sortImg', $sortImg);
            $this->assign('sortType', $sortAlt);
            $this->assign("page", $page);
        }
        Cookie::set('_currentUrl_', __SELF__);
        return $voList;
    }
    /**
     * 对LIST页面的汇总
     *
     */
	private function _count($where){
		$action_method=($_REQUEST['_URL_'][2]==''||$_REQUEST['_URL_'][2]=='index')?'index':$_REQUEST['_URL_'][2];
		$_count_method='_count_'.$action_method;
		if (method_exists($this,$_count_method)){
			$_count_list_=$this->$_count_method($where);
		}elseif ($this->_count['field']) {
			foreach ($this->_count['field'] as $key=>$val){
				if ($val=='sum'){
					$fields.=",SUM($key) AS sum_$key";
				}elseif ($val=='count'){
					$fields.=",COUNT($key) AS count_$key";
				}				
			}
			$fields=substr($fields,1);
			$db=D($this->db_name);
			if ($this->_count['group']){
				foreach ($this->_count['group'] as $key=>$val){
					$fields.=','.$key;
					$group.=",$key $val";
				}
				$group=substr($group,1);
				$_count_list_=$db->where($where)->field($fields)->group("$group")->select();
			}else{
				$_count_list_=$db->where($where)->field($fields)->find();
			}
		}
		$this->assign('_count_list_',$_count_list_);
		return $_count_list_;
	}
    /**
     * 添加数据
     *
     */
    function insert() {
        $name = $this->db_name;
        $model = D($name);
        $_POST['add_user_id']=$_SESSION[C('USER_AUTH_KEY')];
        $_POST['add_time']=time();
        $this->upload_file();//有文件域时会自动上传
        if (false === $model->create()) {
            $this->error($model->getError());
        }
        //保存当前数据对象
        $list = $model->add();
        if ($list !== false) { //保存成功
        	$this->insert_id=$list;
            $_man_method='_man_'.$_REQUEST['_URL_'][2];
        	if (method_exists($this,$_man_method)) {
	            $this->$_man_method ($list);
	        }
            $this->assign('jumpUrl', Cookie::get('_currentUrl_'));
            $this->success('新增成功!');
        } else {
            //失败提示
            $this->error('新增失败!');
        }
    }
    /**
     * 上传文件,可以实现多文件同时上传，并且可写入数据库中，文件域name需要对应相应的字段
     * @param int $_POST['file_max_size']  最大的文件大小，以K为单位
     * @param string $_POST['file_ext]='jpg,gif'  文件后缀
     * @param string $_POST['file_dir']   文件保存的目录 ，临时文件保存在tmp中
     */
    protected function upload_file(){
    	foreach ($_FILES as $val){
    		if ($val['size']>0){
    			$upload=true;
    			break;
    		}else {
    			$upload=false;
    		}
    	}
    	if (empty($upload)) return false;//当没有上传文件时
        import("@.ORG.UploadFile");
		$upload=new UploadFile();
		$upload->maxSize=$_POST['max_size']?$_POST['max_size']*1024:20971520 ;// 设置附件上传大小,最大为20MB
		$upload->allowExts=$_POST['ext']?explode(',',$_POST['ext']):array('jpg', 'gif', 'png', 'jpeg','txt','doc','docx','csv','xlsx','xls');// 设置附件上传类型
    	$dir=$_POST['dir']?$_POST['dir']:$_REQUEST['_URL_'][0].'/'.$_REQUEST['_URL_'][1].'/'.date('Ym');
		$upload->savePath =$_SERVER['DOCUMENT_ROOT']."/Public/uploads/{$dir}/";// 设置附件上传目录
		$upload->saveRule='time';
		mk_dir($upload->savePath);
		if($upload->upload()) {
			$file_list=$upload->getUploadFileInfo();
			foreach ($file_list as $file){
				$file_path[$file['key']]['file_path']=$_POST[$file['key']]="/Public/uploads/{$dir}/".$file['savename'];
				$file_path[$file['key']]['ext']=$file['extension'];
			}
		}
		return $file_path;
    }
    /**
     * 显示添加数据表单
     *
     */
    public function add() {
    	if ($_REQUEST['act']=='todo'){
    		$this->insert();
    	}else {
        	$this->display($this->tpl);
    	}
    }
    /**
     * 修改数据,显示出表单信息
     *
     */
    function edit() {
    	if ($_REQUEST['act']=='todo'){
    		$this->update();
    	}else {
	        $model = D($this->db_name);
	        $id =$_REQUEST[$model->getPk()];
	        $info = $model->getById($id);
	        if ($this->debug){
	        	echo $model->getLastSql().'<br>';
	        }
	        $this->assign('info', $info);
	        $this->display($this->tpl);
    	}
    }
	/**
     * 确认修改数据
     *
     */
    function update() {
        $name = $this->db_name;
        $model = D($name);
        $this->upload_file();//有文件域时会自动上传
        if (false === $model->create()) {
            $this->error($model->getError());
        }
        // 更新数据
        $list = $model->save();
        if (false !== $list) {
            //成功提示
            $this->assign('jumpUrl', Cookie::get('_currentUrl_'));
            $this->success('编辑成功!');
        } else {
            //错误提示
            $this->error('编辑失败!');
        }
    }

    /**
      +----------------------------------------------------------
     * 默认删除操作
      +----------------------------------------------------------
     * @access public
      +----------------------------------------------------------
     * @return string
      +----------------------------------------------------------
     * @throws ThinkExecption
      +----------------------------------------------------------
     */
    public function delete() {
        //删除指定记录
        $name = $this->db_name;
        $model = M($name);
        if (!empty($model)) {
            $pk = $model->getPk();
            $id = $_REQUEST [$pk];
            if (isset($id)) {
            	if (is_array($id)){
            		$condition = array($pk => array('in',$id));
            	}else {
                	$condition = array($pk => array('in', explode(',', $id)));
            	}
                $list = $model->where($condition)->setField('status',-1);
                if ($list !== false) {
                    $this->success('删除成功！');
                } else {
                    $this->error('删除失败！');
                }
            } else {
                $this->error('非法操作');
            }
        }
    }

    public function foreverdelete() {
        //删除指定记录
        $name = $this->db_name;
        $model = D($name);
        if (!empty($model)) {
            $pk = $model->getPk();
            $id = $_REQUEST [$pk];
            if (isset($id)) {
            	if (is_array($id)){
            		$condition = array($pk => array('in',$id));
            	}else {
                	$condition = array($pk => array('in', explode(',', $id)));
            	}
                if (false !== $model->where($condition)->delete()) {
                 	$_man_method='_man_'.$_REQUEST['_URL_'][2];
		        	if (method_exists($this,$_man_method)) {
			            $this->$_man_method ($id);
			        }
                    $this->success('删除成功！');
                } else {
                    $this->error('删除失败！');
                }
            } else {
                $this->error('非法操作');
            }
        }
    }

    public function clear() {
        //删除指定记录
        $name = $this->db_name();
        $model = D($name);
        if (!empty($model)) {
            if (false !== $model->where('status=1')->delete()) {
                $this->assign("jumpUrl", $this->getReturnUrl());
                $this->success(L('_DELETE_SUCCESS_'));
            } else {
                $this->error(L('_DELETE_FAIL_'));
            }
        }
    }

    /**
      +----------------------------------------------------------
     * 默认禁用操作
     *
      +----------------------------------------------------------
     * @access public
      +----------------------------------------------------------
     * @return string
      +----------------------------------------------------------
     * @throws FcsException
      +----------------------------------------------------------
     */
    public function forbid() {
        $name = $this->db_name;
        $model = D($name);
        $pk = $model->getPk();
        $id = $_REQUEST [$pk];
        $condition = array($pk => array('in', $id));
        $list = $model->forbid($condition);
        if ($list !== false) {
            $this->assign("jumpUrl", $this->getReturnUrl());
            $this->success('状态禁用成功');
        } else {
            $this->error('状态禁用失败！');
        }
    }

    public function checkPass() {
        $name = $this->db_name;
        $model = D($name);
        $pk = $model->getPk();
        $id = $_GET [$pk];
        $condition = array($pk => array('in', $id));
        if (false !== $model->checkPass($condition)) {
            $this->assign("jumpUrl", $this->getReturnUrl());
            $this->success('状态批准成功！');
        } else {
            $this->error('状态批准失败！');
        }
    }

    public function recycle() {
        $name = $this->db_name;
        $model = D($name);
        $pk = $model->getPk();
        $id = $_GET [$pk];
        $condition = array($pk => array('in', $id));
        if (false !== $model->recycle($condition)) {

            $this->assign("jumpUrl", $this->getReturnUrl());
            $this->success('状态还原成功！');
        } else {
            $this->error('状态还原失败！');
        }
    }

    public function recycleBin() {
        $map = $this->_search();
        $map ['status'] = - 1;
        $name = $this->db_name;
        $model = D($name);
        if (!empty($model)) {
            $this->_list($model, $map);
        }
        $this->display();
    }

    /**
      +----------------------------------------------------------
     * 默认恢复操作
     *
      +----------------------------------------------------------
     * @access public
      +----------------------------------------------------------
     * @return string
      +----------------------------------------------------------
     * @throws FcsException
      +----------------------------------------------------------
     */
    function resume() {
        //恢复指定记录
        $name = $this->db_name;
        $model = D($name);
        $pk = $model->getPk();
        $id = $_GET [$pk];
        $condition = array($pk => array('in', $id));
        if (false !== $model->resume($condition)) {
            $this->assign("jumpUrl", $this->getReturnUrl());
            $this->success('状态恢复成功！');
        } else {
            $this->error('状态恢复失败！');
        }
    }

    function saveSort() {
        $seqNoList = $_POST ['seqNoList'];
        if (!empty($seqNoList)) {
            //更新数据对象
            $name = $this->db_name;
            $model = D($name);
            $col = explode(',', $seqNoList);
            //启动事务
            $model->startTrans();
            foreach ($col as $val) {
                $val = explode(':', $val);
                $model->id = $val [0];
                $model->sort = $val [1];
                $result = $model->save();
                if (!$result) {
                    break;
                }
            }
            //提交事务
            $model->commit();
            if ($result !== false) {
                //采用普通方式跳转刷新页面
                $this->success('更新成功');
            } else {
                $this->error($model->getError());
            }
        }
    }
    /**
     * 显示详细信息
     *
     */
    public function show(){
    	$name = $this->db_name;
	    $model = D($name);
	    $id = $this->_get($model->getPk());
	    if ($id){
	    	$info = $model->getById($id);
	    }else {
	    	foreach ($_GET as $key=>$val){
	    		if ($key<>'_URL_'){
	    			$where[$key]=$val;
	    		}
	    	}
	    	$info=$model->where($where)->find();
	    }
	    $this->assign('info', $info);
	    $this->display($this->tpl);
    }
    /**
     * 导入数据,目前只支持CSV按（，）逗号分开的处理
     * 文件上传需要使用{:W('UploadFile',array('method'=>'tmp','app'=>'Sys','module'=>'UploadFile','html_name'=>'myfile'))}对文件统一上传
     * 因此此函数不处理数据上传的功能。
     */
    public function import(){
    	if (is_array($_FILES)){
    		$this->import_v2();//新的导入功能,新导入功能处理数据上传的功能
    		exit;
    	}
    	import('@.ORG.BatchOperation');
    	$BatchOperation=new BatchOperation();
    	if ($this->_request('act')){
	    	$db=M($this->db_name);
	    	//找出这个数据表中对应的字断$sql="SHOW COLUMNS FROM $full_table_name";
	    	if (!$this->_post('field_key')){
		    	$full_table_name=C('DB_PREFIX').$this->db_name;
		    	$field_list=$db->query("SHOW COLUMNS FROM $full_table_name");
	    		foreach ($field_list as $field){
					$field_key[$field['Field']]=$field['Field'];
				}
	    	}else {
	    		$field_key=$this->_post('field_key');
	    	}
    		$handle = @fopen($_SERVER['DOCUMENT_ROOT'].$this->_post('file_path'), "r");
			if ($handle) {
				$row=0;
			    while (!feof($handle)) {
			        $buffer = fgets($handle, 4096);
			        $buffer=iconv('GBK','UTF-8',$buffer);
			        $data=explode(',',$buffer);
			        if (!trim($data[0])) break;//当第一列的值是空的时候表示根后面没有数据了
			        if ($row==0){
				        foreach ($data as $key=>$val){
				        	if ($field_key[trim($val)]){
				        		$key_arr[$key]=$field_key[trim($val)];
				        	}
				        }
				    }else {
						foreach ($data as $key=>$val){
					       	if ($key_arr[$key]){
					       		$info[$key_arr[$key]]=trim($val);
					       	}
					    }
				    	$action_method=($_REQUEST['_URL_'][2]==''||$_REQUEST['_URL_'][2]=='index')?'index':$_REQUEST['_URL_'][2];
			            $_man_method='_man_'.$action_method;
				        if (method_exists($this,$_man_method)) {
				            $info=$this->$_man_method($info,$BatchOperation);
				        }
				     	//当没有任何数据时不添加进去
					    if (is_array($info)){
							$info['add_user_id']=$_SESSION[C('USER_AUTH_KEY')];
					    	$info['add_time']=time();
					    	$db->data($info)->add();
					    }
				    }
			        $row++;
			    }
			    fclose($handle);
			    if ($this->debug==false){
				    if ($BatchOperation->have_error){
				    	$BatchOperation->export_error("部分信息导入失败，请导出再试");
				    }else {
				    	$this->success('导入成功');
				    }
			    }
			}else {
				$this->error('导入失败！');
			}
			
    	}else {
    		$this->display();
    	}
    }
    /**
     * 数据导入功能2.0版，实现<input type="file" />上传的文件并导入数据,目前只支持一个文件的导入
     * 系统BUG：上传XLS文件时，所有设置了非文本格式的数据需要在前面加',否则显示不正确，因为EXCEL传过来的数据是格式化的
     *
     */
    public function import_v2(){
    	if ($_REQUEST['act']){
    		import('@.ORG.BatchOperation');
    		$BatchOperation=new BatchOperation();//作用是对每一个导入的数据进行设置
    		$file_info_arr=$this->upload_file();
    		$db=M($this->db_name);
	    	//找出这个数据表中对应的字断$sql="SHOW COLUMNS FROM $full_table_name";
	    	if (!$this->_post('field_key')){
		    	$full_table_name=C('DB_PREFIX').$this->db_name;
		    	$field_list=$db->query("SHOW COLUMNS FROM $full_table_name");
	    		foreach ($field_list as $field){
					$field_key[$field['Field']]=$field['Field'];
				}
	    	}else {
	    		$field_key=$this->_post('field_key');
	    	}
    		foreach ($file_info_arr as $file_info){//暂时系统只支持一个文件域的上传
    			if ($file_info['ext']=='xls'){
    				import("@.ORG.Excel.PHPExcel");
					//$objPHPExcel = new PHPExcel();
					$objPHPExcel = PHPExcel_IOFactory::load($_SERVER['DOCUMENT_ROOT'].$file_info['file_path']);
					foreach ($objPHPExcel->getActiveSheet()->getRowIterator() as $row){
						$info=array();
						$row_num++;//行数
						$cellIterator=$row->getCellIterator();
						if ($row_num==1){//第一行设置对应的字段
							foreach ($cellIterator as $cell) {
								$cell_value=trim($cell->getValue());
								if ($cell_value){
									$key_arr[]=$field_key[$cell_value];
								}
							}
						}else {//第二行开始写数据入数据库
							$cell_num=0;//列数，从第0列开始
					        foreach ($cellIterator as $cell) {
					        	$cell_value=trim($cell->getValue());
					        	if (substr($cell_value,0,1)=="'") $cell_value=substr($cell_value,1); //去掉第一个 '
					        	$info[$key_arr[$cell_num++]]=$cell_value;
							}
							if ($info[$key_arr[0]]==''){//第0列为空要退出
								break;
							}
							$action_method=($_REQUEST['_URL_'][2]==''||$_REQUEST['_URL_'][2]=='index')?'index':$_REQUEST['_URL_'][2];
					        $_man_method='_man_'.$action_method;
						    if (method_exists($this,$_man_method)) {
						    	$info=$this->$_man_method($info,$BatchOperation);
						    }
							//当没有任何数据时不添加进去
						    if (is_array($info)){
								$info['add_user_id']=$_SESSION[C('USER_AUTH_KEY')];
						    	$info['add_time']=time();
						    	$db->data($info)->add();
						    }
						}
					}
    			}elseif ($file_info['ext']=='csv'){
    				$handle = @fopen($_SERVER['DOCUMENT_ROOT'].$file_info['file_path'], "r");
	    			$row=0;
				    while (!feof($handle)) {
				        $buffer = fgets($handle, 4096);
				        $buffer=iconv('GBK','UTF-8',$buffer);
				        $data=explode(',',$buffer);
				        if (!trim($data[0])) break;//当第一列的值是空的时候表示根后面没有数据了
				        if ($row==0){
					        foreach ($data as $key=>$val){
					        	if ($field_key[trim($val)]){
					        		$key_arr[$key]=$field_key[trim($val)];
					        	}
					        }
					    }else {
							foreach ($data as $key=>$val){
						       	if ($key_arr[$key]){
						       		$info[$key_arr[$key]]=trim($val);
						       	}
						    }
					    	$action_method=($_REQUEST['_URL_'][2]==''||$_REQUEST['_URL_'][2]=='index')?'index':$_REQUEST['_URL_'][2];
				            $_man_method='_man_'.$action_method;
					        if (method_exists($this,$_man_method)) {
					            $info=$this->$_man_method($info,$BatchOperation);
					        }
					     	//当没有任何数据时不添加进去
						    if (is_array($info)){
								$info['add_user_id']=$_SESSION[C('USER_AUTH_KEY')];
						    	$info['add_time']=time();
						    	$db->data($info)->add();
						    }
					    }
				        $row++;
				    }
				    fclose($handle);
    			}else {
    				$this->error('系统只支持CSV格式');
    			}
    		}
    		if ($this->debug==false){
			    if ($BatchOperation->have_error){
			    	$BatchOperation->export_error("部分信息导入失败，请导出再试");
			    }else {
			    	$this->success('导入成功');
			    }
			}
    	}else {
    		$this->display();
    	}
    	
    }
    /**
     * 导出数据,可以选择导出xls或者CSV格式
     * 2012-09-18现在是未做的
     */
    public function export(){
    	//列表过滤器，生成查询Map对象
        $map = $this->_search();
        $model = D($this->db_name);
        $out_type=$_REQUEST['out_type']?$_REQUEST['out_type']:'csv';
        if ($out_type=='csv'){
        	//取得满足条件的记录数
        	$count = $model->where($map)->count();
        	if ($this->debug) echo $model->getLastSql().'<br>';
	        if ($count > 0) {
	            import("@.ORG.Util.Page");
	            $list_rows=$_REQUEST['list_rows']?$_REQUEST['list_rows']:400;
	            $p = new Page($count,$list_rows);
	            $total_page=ceil($count/$list_rows);//总页数
	            if ($_GET[C('VAR_PAGE')]>$total_page){//最后的数据要返回
	            	$this->assign('end',true);
	            	$file_url='http://'.$_SERVER['HTTP_HOST'].'/Public/uploads/tmp/'.$_REQUEST['filename'].".$out_type";
	        		$this->ajaxReturn($file_url,'数据处理完成，请下载<a href="'.$file_url.'" style="color:red"  target="_blank">【数据】</a>',2);
	        		return;
	            }
		        //排序字段 默认为主键名
		        $order = $_REQUEST ['_order']?$_REQUEST ['_order']:$model->getPk();
		        //排序方式默认按照倒序排列
		        //接受 sost参数 0 表示倒序 非0都 表示正序
		        $sort = $_REQUEST ['_sort'] ? 'asc' : 'desc';
	            //分页查询数据
	            $voList = $model->where($map)->limit($p->firstRow . ',' . $p->listRows)->order("`" . $order . "` " . $sort)->select();
	            if ($this->debug) echo $model->getLastSql().'<br>';
	            $action_method='_man_'.$_REQUEST['_URL_'][2];
		        if (method_exists($this,$action_method)) {
		            $voList=$this->$action_method($voList);
		        }
	            //AJAX回传的时候保证查询条件
	            $url_param=$_SERVER['REQUEST_URI'];
	        	//设置保存的文件名
		        if (empty($_REQUEST['filename'])){
		        	$filename=time();
		        	$url_param.='&filename='.$filename;
		        }else {
		        	$filename=$_REQUEST['filename'];
		        }
		        if ($_GET[C('VAR_PAGE')]){
		        	$p=C('VAR_PAGE');
		        	$p_value=$_GET[C('VAR_PAGE')];
		        	$next_p_value=$p_value+1;
	            	$url_param=str_replace($p.'='.$p_value,$p.'='.$next_p_value,$url_param);
		        }else {
		        	$url_param.='&'.C('VAR_PAGE').'=2';
		        }
	            $url_param='http://'.$_SERVER['HTTP_HOST'].$url_param;
	           
	            //模板赋值显示
	            $this->assign('list', $voList);
	            C('SHOW_PAGE_TRACE',false);
		        ob_start();
		        $this->display();
		        $html=ob_get_contents();
		        ob_end_clean();
		        $html=str_replace('<!--[￥换行]-->',"\n",$html);
		        $html=auto_charset($html,'','GB2312');
		        $html=file_get_contents($_SERVER['DOCUMENT_ROOT'].'/Public/uploads/tmp/'.$filename.".$out_type").$html;
		        file_put_contents($_SERVER['DOCUMENT_ROOT'].'/Public/uploads/tmp/'.$filename.".$out_type",$html);
		        $this->ajaxReturn(array('url'=>$url_param,'total_page'=>$total_page,'now_page'=>$_GET['p'],'complete_percent'=>($_GET[C('VAR_PAGE')])/$total_page*100),'数据处理中，请稍候...',1);
	        }elseif ($count<1&&empty($_GET[C('VAR_PAGE')])) {//没有数据时
	        	$this->ajaxReturn(array('url'=>$url_param,'total_page'=>$total_page,'now_page'=>$_GET['p'],'complete_percent'=>($_GET[C('VAR_PAGE')])/$total_page*100),'没有任何数据可以导出',2);
	        }
        }elseif ($out_type=='xls'){
        	import("@.ORG.Excel.PHPExcel");
			$objPHPExcel = new PHPExcel();
			$objPHPExcel->getProperties()->setCreator($_SESSION['nickname'])
										 ->setLastModifiedBy($_SESSION['nickname'])
										 ->setTitle("qq:38738862")
										 ->setSubject("程序开发请联系QQ:38738862")
										 ->setDescription("文档由{$_SESSION['nickname']}通过盘古信息化管理平台创建，技术支持QQ：38738862")
										 ->setKeywords("http://www.emtit.net")
										 ->setCategory("http://www.emtit.net");
			$excel_field_arr=explode(',',$_REQUEST['excel_field']);//设置要导出的excel字段           =         标题|field1,标题2|field2
			foreach ($excel_field_arr as $val){
				$excel_field=explode('|',$val);
				$title_arr[]=$excel_field[0];
				$fieldstr.=",$excel_field[1]";
			}		
			$title_arr=array($title_arr);
			$fieldstr=substr($fieldstr,1);
			$objPHPExcel->getActiveSheet()->fromArray($title_arr, NULL, 'A1');
			$list=$model->field($fieldstr)->where($map)->select();
			$objPHPExcel->getActiveSheet()->fromArray($list, NULL, 'A2');
			$title=$_REQUEST['title']?$_REQUEST['title']:'盘古平台数据';
			$objPHPExcel->getActiveSheet()->setTitle($title);			
			//设置为第一个工作簿
			$objPHPExcel->setActiveSheetIndex(0);
			$date=date('Y-m-d');
			header('Content-Type: application/vnd.ms-excel');
			header('Content-Disposition: attachment;filename="'.$date.'.xls"');
			header('Cache-Control: max-age=0');
			$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
			$objWriter->save('php://output');
			exit;
        }
        return;
    }

}

?>