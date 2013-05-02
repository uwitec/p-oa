<?php 
/**
 * 财务管理
 * 实现对进销存的财务管理
 * @author 管理员
 * @version 1.0
 * @date 2012-12-03
 *
 */
class CaiwuguanliAction extends CommonAction {
	public function __construct(){
		$this->db_name='jxc_finances';
		parent::__construct();
	}

	public function _before_index(){
		//$this->db_name='数据表名';
	}
	public function _before_add(){
		//$this->db_name='数据表名';
	}
	public function _before_edit(){
		//$this->db_name='数据表名';
	}
	public function _before_show(){
		//$this->db_name='数据表名';
	}
	public function _before_explort(){
		//$this->db_name='数据表名';
	}
	public function _before_delete(){
		//$this->db_name='数据表名';
	}
	/**
	 * 科目设置
	 * 
	 * @author 管理员
	 * @date  2012-12-04
	 */
    public function kmsz_list(){
    	$finances_cat_tree=$this->finances_cat_tree(0);
        $this->assign('finances_cat_tree',$finances_cat_tree);
        Cookie::set('_currentUrl_', __SELF__);
        $this->display();
    }
    /**
     * 财务科目目录树
     *
     */
    private function finances_cat_tree($pid){
    	$db_finances_cat=M('jxc_finances_cat');
		$list=$db_finances_cat->field('id,title,pid')->where("pid='$pid' AND status=1")->select();
		if ($list){
			foreach ($list as $val){
				$next_html=$this->finances_cat_tree($val['id']);
				if ($next_html){
					$html.="<li><span>{$val['title']}</span>
					<b style=\"margin:0px 5px;\" ><a href=\"javascript:dialog_add('{$val['id']}');\">添加</a></b>
					<b style=\"margin:0px 5px;\" ><a href=\"javascript:dialog_edit('{$val['id']}');\">修改</a></b>
					<b style=\"margin:0px 5px;\" ><a href=\"javascript:confirm_delete('{$val['id']}');\">删除</a></b>
					<!--<b style=\"margin:0px 5px;\" ><a href=\"javascript:dialog_move('{$val['id']}');\">移动</a></b>-->
					<ul>{$next_html}</ul></li>";
				}else {
					$html.="<li><span>{$val['title']}</span>
					<b style=\"margin:0px 5px;\" ><a href=\"javascript:dialog_add('{$val['id']}');\">添加</a></b>
					<b style=\"margin:0px 5px;\" ><a href=\"javascript:dialog_edit('{$val['id']}');\">修改</a></b>
					<b style=\"margin:0px 5px;\" ><a href=\"javascript:confirm_delete('{$val['id']}');\">删除</a></b>
					<!--<b style=\"margin:0px 5px;\" ><a href=\"javascript:dialog_move('{$val['id']}');\">移动</a></b>--></li>";
				}
			}
		}
		return $html;
    }
	/**
	 * 添加科目
	 * 
	 * @author 管理员
	 * @date  2012-12-04
	 */
    public function kmsz_add(){
    	$this->db_name='jxc_finances_cat';
        $this->add();
    }
	/**
	 * 修改
	 * 
	 * @author 管理员
	 * @date  2012-12-04
	 */
    public function kmsz_edit(){
    	$this->db_name='jxc_finances_cat';
    	$this->edit();
    }
	/**
	 * 禁用
	 * 此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能
	 * @author 管理员
	 * @date  2012-12-04
	 */
    public function kmsz_delete(){
    	$this->db_name='jxc_finances_cat';
    	$this->delete();
    }
	/**
	 * 删除
	 * 彻底在数据库中删除，不可以找回来
	 * @author 管理员
	 * @date  2012-12-04
	 */
    public function kmsz_foreverdelete(){
    	$this->db_name='jxc_finances_cat';
    	$this->foreverdelete();
    }
	/**
	 * 银行卡管理
	 * 
	 * @author 管理员
	 * @date  2012-12-04
	 */
    public function bank_list(){
        $this->db_name='jxc_bank';
        $this->index();
    }
	/**
	 * 添加
	 * 
	 * @author 管理员
	 * @date  2012-12-04
	 */
    public function bank_add(){
    	$this->db_name='jxc_bank';
        $this->add();
    }
	/**
	 * 修改
	 * 
	 * @author 管理员
	 * @date  2012-12-04
	 */
    public function bank_edit(){
    	$this->db_name='jxc_bank';
    	$this->edit();
    }
	/**
	 * 禁用
	 * 此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能
	 * @author 管理员
	 * @date  2012-12-04
	 */
    public function bank_delete(){
    	$this->db_name='jxc_bank';
    	$this->delete();
    }
	/**
	 * 删除
	 * 彻底在数据库中删除，不可以找回来
	 * @author 管理员
	 * @date  2012-12-04
	 */
    public function bank_foreverdelete(){
    	$this->db_name='jxc_bank';
    	$this->foreverdelete();
    }
}