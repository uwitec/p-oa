<?php 
/**
 * 客户管理
 * 实现客户的CURD和预付款信息的CURD操作
 * @author 管理员
 * @version 1.0
 * @date 2012-12-05
 *
 */
class CustomerAction extends CommonAction {
	public function __construct(){
		$this->db_name='jxc_customer';
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
	 * 客户分组
	 * 
	 * @author 管理员
	 * @date  2012-12-05
	 */
    public function cat_list(){
        $this->db_name='jxc_customer_cat';
        $this->index();
    }
	/**
	 * 添加
	 * 
	 * @author 管理员
	 * @date  2012-12-05
	 */
    public function cat_add(){
    	$this->db_name='jxc_customer_cat';
        $this->add();
    }
	/**
	 * 修改
	 * 
	 * @author 管理员
	 * @date  2012-12-05
	 */
    public function cat_edit(){
    	$this->db_name='jxc_customer_cat';
    	$this->edit();
    }
	/**
	 * 禁用
	 * 此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能
	 * @author 管理员
	 * @date  2012-12-05
	 */
    public function cat_delete(){
    	$this->db_name='jxc_customer_cat';
    	$this->delete();
    }
	/**
	 * 删除
	 * 彻底在数据库中删除，不可以找回来
	 * @author 管理员
	 * @date  2012-12-05
	 */
    public function cat_foreverdelete(){
    	$this->db_name='jxc_customer_cat';
    	$this->foreverdelete();
    }
	/**
	 * 客户资金记录
	 * 
	 * @author 管理员
	 * @date  2012-12-05
	 */
    public function money_list(){
        $this->db_name='jxc_customer_money';
        $this->index();
    }
	/**
	 * 添加
	 * 
	 * @author 管理员
	 * @date  2012-12-05
	 */
    public function money_add(){
    	$this->db_name='jxc_customer_money';
        $this->add();
    }
	/**
	 * 修改
	 * 
	 * @author 管理员
	 * @date  2012-12-05
	 */
    public function money_edit(){
    	$this->db_name='jxc_customer_money';
    	$this->edit();
    }
	/**
	 * 禁用
	 * 此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能
	 * @author 管理员
	 * @date  2012-12-05
	 */
    public function money_delete(){
    	$this->db_name='jxc_customer_money';
    	$this->delete();
    }
	/**
	 * 删除
	 * 彻底在数据库中删除，不可以找回来
	 * @author 管理员
	 * @date  2012-12-05
	 */
    public function money_foreverdelete(){
    	$this->db_name='jxc_customer_money';
    	$this->foreverdelete();
    }
}