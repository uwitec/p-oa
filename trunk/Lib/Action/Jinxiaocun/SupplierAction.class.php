<?php 
/**
 * 供应商管理
 * 对代应商实现CURD的操作
 * @author 管理员
 * @version 1.0
 * @date 2012-12-05
 *
 */
class SupplierAction extends CommonAction {
	public function __construct(){
		$this->db_name='jxc_supplier';
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
	 * 供应商分组
	 * 
	 * @author 管理员
	 * @date  2012-12-05
	 */
    public function cat_list(){
        $this->db_name='jxc_supplier_cat';
        $this->index();
    }
	/**
	 * 添加
	 * 
	 * @author 管理员
	 * @date  2012-12-05
	 */
    public function cat_add(){
    	$this->db_name='jxc_supplier_cat';
        $this->add();
    }
	/**
	 * 修改
	 * 
	 * @author 管理员
	 * @date  2012-12-05
	 */
    public function cat_edit(){
    	$this->db_name='jxc_supplier_cat';
    	$this->edit();
    }
	/**
	 * 禁用
	 * 此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能
	 * @author 管理员
	 * @date  2012-12-05
	 */
    public function cat_delete(){
    	$this->db_name='jxc_supplier_cat';
    	$this->delete();
    }
	/**
	 * 删除
	 * 彻底在数据库中删除，不可以找回来
	 * @author 管理员
	 * @date  2012-12-05
	 */
    public function cat_foreverdelete(){
    	$this->db_name='jxc_supplier_cat';
    	$this->foreverdelete();
    }
}