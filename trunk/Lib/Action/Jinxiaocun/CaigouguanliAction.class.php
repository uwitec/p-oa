<?php 
/**
 * 采购管理
 * 作为应用的第一个模块
 * @author 管理员
 * @version 1.0
 * @date 2012-12-01
 *
 */
class CaigouguanliAction extends CommonAction {
	public function __construct(){
		$this->db_name='jxc_procure';
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
	 * 退货记录
	 * 
	 * @author 管理员
	 * @date  2012-12-01
	 */
    public function return_index(){
        $this->db_name='jxc_procure_return';
        $this->index();
    }
	/**
	 * 添加
	 * 
	 * @author 管理员
	 * @date  2012-12-01
	 */
    public function return_add(){
    	$this->db_name='jxc_procure_return';
        $this->add();
    }
	/**
	 * 修改
	 * 
	 * @author 管理员
	 * @date  2012-12-01
	 */
    public function return_edit(){
    	$this->db_name='jxc_procure_return';
    	$this->edit();
    }
	/**
	 * 禁用
	 * 此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能
	 * @author 管理员
	 * @date  2012-12-01
	 */
    public function return_delete(){
    	$this->db_name='jxc_procure_return';
    	$this->delete();
    }
	/**
	 * 删除
	 * 彻底在数据库中删除，不可以找回来
	 * @author 管理员
	 * @date  2012-12-01
	 */
    public function return_foreverdelete(){
    	$this->db_name='jxc_procure_return';
    	$this->foreverdelete();
    }
}