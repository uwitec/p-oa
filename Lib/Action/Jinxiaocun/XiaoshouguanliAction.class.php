<?php 
/**
 * 销售管理
 * 销售人员使用的模块
 * @author 管理员
 * @version 1.0
 * @date 2012-12-01
 *
 */
class XiaoshouguanliAction extends CommonAction {
	public function __construct(){
		$this->db_name='jxc_product';
		parent::__construct();
	}

	public function _before_index(){
		$this->db_name='ProductView';
	}
	public function _man_index($list){
		$db_inventory=M('jxc_inventory');
		foreach($list as $key=>$val){
			$list[$key]['number']=$db_inventory->where("code='{$val['code']}'")->sum('number');			
		}
		return $list;
	}
	public function add(){
		if ($_REQUEST['act']=='todo'){
			$info_sell=$_REQUEST['sell'];
			$db_jxc_sales_slip=M('jxc_sales_slip');
			$info_sell['belong_date']=date('Ym');
			$info_sell['add_user_id']=$_SESSION[C('USER_AUTH_KEY')];
			$info_sell['add_time']=time();
			$db_jxc_sales_slip->data($info_sell)->add();//echo $db_jxc_sales_slip->getLastSql().'<br>';
			//插入财务记录
			if ($info_sell['bank_account']){
				$db_finances=M('jxc_finances');
				$info_finances['bank_account']=$info_sell['bank_account'];
				$info_finances['cat_id']=0;
				$info_finances['in_money']=$info_sell['total_amount'];
				$info_finances['remark']="需要收取出单单号：{$info_sell['out_number']}的款项";
				$info_finances['add_user_id']=$info_sell['add_user_id'];
				$info_finances['add_time']=$info_sell['add_time'];
				$db_finances->data($info_finances)->add();//echo $db_finances->getLastSql().'<br>';
			}
			//插入销售单的产品
			$db_jxc_sales_slip_product=M('jxc_sales_slip_product');
			$list_sell_product=$_REQUEST['list_sell_product'];
			$db_jxc_inventory=M('jxc_inventory');
			foreach ($list_sell_product as $val){
				$val['out_number']=$info_sell['out_number'];
				$val['add_user_id']=$info_sell['add_user_id'];
				$val['add_time']=$info_sell['add_time'];
				$rs=$db_jxc_sales_slip_product->data($val)->add();//echo $db_jxc_sales_slip_product->getLastSql().'<br>';
				//产品从库存里出库
				if ($rs){
					$now_number=$db_jxc_inventory->where("storage_id='{$val['storage_id']}' AND code='{$val['code']}'")->getField('number');
					$info_inventory['number']=$now_number-$val['number'];
					$info_inventory['add_user_id']=$info_sell['add_user_id'];
					$info_inventory['add_time']=$info_sell['add_time'];
					$db_jxc_inventory->data($info_inventory)->where("storage_id='{$val['storage_id']}' AND code='{$val['code']}'")->save();
					//echo $db_jxc_inventory->getLastSql().'<br>';
				}
			}
			if ($rs){
				$this->success("操作成功！");
			}else {
				$this->error("操作失败！");
			}
		}else {
			$db_user=M('user');
			$list_user=$db_user->where("status=1")->select();
			$this->assign('list_user',$list_user);
			//银行帐号
			$list_bank_account=M("jxc_bank")->where("status=1")->select();
			$this->assign('list_bank_account',$list_bank_account);
			//客户列表
			$list_customer=M('jxc_customer')->where("status=1")->select();
			$this->assign('list_customer',$list_customer);
			
			$this->display();
		}
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
	 * 销售对象
	 * 
	 * @author 管理员
	 * @date  2012-12-01
	 */
    public function price_index(){
        $this->db_name='jxc_product_price';
        $this->index();
    }
	/**
	 * 添加销售对象
	 * 
	 * @author 管理员
	 * @date  2012-12-01
	 */
    public function price_add(){
    	$this->db_name='jxc_product_price';
        $this->add();
    }
	/**
	 * 修改
	 * 
	 * @author 管理员
	 * @date  2012-12-01
	 */
    public function price_edit(){
    	$this->db_name='jxc_product_price';
    	$this->edit();
    }
	/**
	 * 禁用
	 * 此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能
	 * @author 管理员
	 * @date  2012-12-01
	 */
    public function price_delete(){
    	$this->db_name='jxc_product_price';
    	$this->delete();
    }
	/**
	 * 删除
	 * 彻底在数据库中删除，不可以找回来
	 * @author 管理员
	 * @date  2012-12-01
	 */
    public function price_foreverdelete(){
    	$this->db_name='jxc_product_price';
    	$this->foreverdelete();
    }
	/**
	 * 销售记录
	 * 
	 * @author 管理员
	 * @date  2012-12-01
	 */
    public function sales_index(){
        $this->db_name='SalesSlipView';
        $this->index();
    }
	/**
	 * 添加
	 * 
	 * @author 管理员
	 * @date  2012-12-01
	 */
    public function sales_add(){
    	$this->db_name='jxc_sales_slip';
        $this->add();
    }
	/**
	 * 修改
	 * 
	 * @author 管理员
	 * @date  2012-12-01
	 */
    public function sales_edit(){
    	if ($_REQUEST['act']=='todo'){
    		$this->db_name='jxc_sales_slip';
    	}else {
    		$this->db_name='SalesSlipView';
    	}
    	$this->edit();
    }
	/**
	 * 禁用
	 * 此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能
	 * @author 管理员
	 * @date  2012-12-01
	 */
    public function sales_delete(){
    	$this->db_name='jxc_sales_slip';
    	$this->delete();
    }
	/**
	 * 删除
	 * 彻底在数据库中删除，不可以找回来
	 * @author 管理员
	 * @date  2012-12-01
	 */
    public function sales_foreverdelete(){
    	$this->db_name='jxc_sales_slip';
    	$this->foreverdelete();
    }
	/**
	 * 退货记录
	 * 
	 * @author 管理员
	 * @date  2012-12-01
	 */
    public function return_index(){
        $this->db_name='jxc_sales_return';
        $this->index();
    }
	/**
	 * 添加
	 * 
	 * @author 管理员
	 * @date  2012-12-01
	 */
    public function return_add(){
    	$this->db_name='jxc_sales_return';
        $this->add();
    }
	/**
	 * 修改
	 * 
	 * @author 管理员
	 * @date  2012-12-01
	 */
    public function return_edit(){
    	$this->db_name='jxc_sales_return';
    	$this->edit();
    }
	/**
	 * 禁用
	 * 此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能
	 * @author 管理员
	 * @date  2012-12-01
	 */
    public function return_delete(){
    	$this->db_name='jxc_sales_return';
    	$this->delete();
    }
	/**
	 * 删除
	 * 彻底在数据库中删除，不可以找回来
	 * @author 管理员
	 * @date  2012-12-01
	 */
    public function return_foreverdelete(){
    	$this->db_name='jxc_sales_return';
    	$this->foreverdelete();
    }
	/**
	 * 审核
	 * 
	 * @author 管理员
	 * @date  2012-12-13
	 */
    public function audit(){
    	$id=$_REQUEST['id'];
    	$db_jxc_sales_slip=M('jxc_sales_slip');
    	$info['audit_date']=date('Y-m-d');
    	$info['auditor_id']=$_SESSION[C('USER_AUTH_KEY')];
    	$rs=$db_jxc_sales_slip->data($info)->where("id='{$id}'")->save();
    	if ($rs){
    		$this->success("操作成功！");
    	}else {
    		$this->error("操作失败！");
    	}
    }
	/**
	 * 明细
	 * 选定的单个数据的详细信息
	 * @author 管理员
	 * @date  2012-12-13
	 */
    public function sales_show(){
    	$this->db_name='jxc_sales_slip_product';
    	$this->index();
    }
}