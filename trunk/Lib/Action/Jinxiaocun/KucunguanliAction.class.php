<?php 
/**
 * 库存管理
 * 库存管理模块实现对仓库的分类，库存情况查询及库存调拨等管理
 * @author 管理员
 * @version 1.0
 * @date 2012-12-02
 *
 */
class KucunguanliAction extends CommonAction {
	public function __construct(){
		$this->db_name='jxc_inventory';
		parent::__construct();
	}

	public function _before_index(){
		$this->db_name='InventoryView';
		$db_storage=M('jxc_storage');
		$storage=$db_storage->where("status=1")->getField('id,name');
		$this->assign('storage',$storage);
	}
	public function add(){
		if ($_REQUEST['act']=='todo'){
			//采购单
			$db_jxc_procure=M('jxc_procure');
			$info_procure=$_REQUEST['procure'];
			$info_procure['belong_month']=date('Ym');
			$rs=$db_jxc_procure->data($info_procure)->add();
			//把采购单信息送到财务
			$db_finances=M('jxc_finances');
			$info_finances['bank_account']=$info_procure['bank_account'];
			$info_finances['cat_id']=2;
			$info_finances['out_money']=$info_procure['total_amount'];
			$info_finances['remark']="支付采购单：{$info_procure['procure_num']}的款项";
			$info_finances['add_user_id']=$_SESSION[C('USER_AUTH_KEY')];
			$info_finances['add_time']=time();
			$db_finances->data($info_finances)->add();
			//采购单对应的产品
			$db_jxc_product=M('jxc_product');
			$db_jxc_procure_product=M('jxc_procure_product');
			$list_procure_product=$_REQUEST['list_procure_product'];
			foreach ($list_procure_product as $procure_product){
				$procure_product['procure_num']=$info_procure['procure_num'];
				$procure_product['add_user_id']=$_SESSION[C('USER_AUTH_KEY')];
				$procure_product['add_time']=time();
				$db_jxc_procure_product->data($procure_product)->add();
				//选找到产品表中是否有这个产品，如果没有就添加进去
				$product_id=$db_jxc_product->where("code='{$procure_product['code']}'")->getField('id');
				if (!$product_id){
					$info_product=$procure_product;
					$db_jxc_product->data($info_product)->add();
				}
				//把产品添加进仓库
				$db_jxc_inventory=M('jxc_inventory');
				$info_inventory['update_date']=date('Y-m-d');
				$inventory=$db_jxc_inventory->field('storage_id,code,number')->where("storage_id='{$procure_product['storage_id']}' AND code='{$procure_product['code']}'")->find();
				if ($inventory){
					$info_inventory['number']=$procure_product['number']+$inventory['number'];
					$db_jxc_inventory->where("storage_id='{$procure_product['storage_id']}' AND code='{$procure_product['code']}'")->data($info_inventory)->save();
				}else {
					$info_inventory['storage_id']=$procure_product['storage_id'];
					$info_inventory['code']=$procure_product['code'];
					$info_inventory['number']=$procure_product['number'];
					$info_inventory['add_user_id']=$_SESSION[C('USER_AUTH_KEY')];
					$info_inventory['add_time']=time();
					$db_jxc_inventory->data($info_inventory)->add();
				}
			}
			if ($rs){
				$this->success("操作成功");
			}else {
				$this->error("操作失败");
			}
		}else {
			$product_cat_option=product_cat_select(0);
			$this->assign('product_cat_option',$product_cat_option);
			$storage_option=storage_select(0);
			$this->assign('storage_option',$storage_option);
			//供应商
			$db_supplier=M('jxc_supplier');
			$list_supplier=$db_supplier->where("status=1")->select();
			$this->assign('list_supplier',$list_supplier);
			//银行帐户
			$db_bank=M('jxc_bank');
			$list_bank_account=$db_bank->where("status=1")->select();
			$this->assign('list_bank_account',$list_bank_account);
			//采购员
			$db_user=M('user');
			$list_user=$db_user->where("status=1")->select();
			$this->assign('list_user',$list_user);
			
			$this->display();
		}
	}
	public function bscp_list(){
		$this->db_name='jxc_damage';
		$this->index();
	}
	public function bscp_add(){
		$this->db_name='jxc_damage';
		if ($_REQUEST['act']=='todo'){
			$this->insert();
		}else {
			$id=$_REQUEST['id'];
			$db_inventory=D('InventoryView');
			$inventory_info=$db_inventory->where("jxc_inventory.id='{$id}'")->find();
			
			$this->assign('inventory_info',$inventory_info);
			$this->display();
		}		
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
	 * 仓库管理
	 * 仓库管理，无限级显示
	 * @author 管理员
	 * @date  2012-12-02
	 */
    public function storage_list(){
        $this->db_name='JXC_StorageView';
        $this->index();
    }
	/**
	 * 添加
	 * 
	 * @author 管理员
	 * @date  2012-12-02
	 */
    public function storage_add(){
    	$this->db_name='jxc_storage';
        $this->add();
    }
	/**
	 * 修改
	 * 
	 * @author 管理员
	 * @date  2012-12-02
	 */
    public function storage_edit(){
    	$this->db_name='jxc_storage';
    	$this->edit();
    }
	/**
	 * 禁用
	 * 仓库中有数据不能删除不能禁用
	 * @author 管理员
	 * @date  2012-12-02
	 */
    public function storage_delete(){
    	$this->db_name='jxc_storage';
    	$this->delete();
    }
	/**
	 * 删除
	 * 仓库中有数据不能删除，需要对产品数据进行调拨清完后才能做。
	 * @author 管理员
	 * @date  2012-12-02
	 */
    public function storage_foreverdelete(){
    	$this->db_name='jxc_storage';
    	$this->foreverdelete();
    }
	/**
	 * 仓库调拨
	 * 列表仓库的调拨记录
	 * @author 管理员
	 * @date  2012-12-02
	 */
    public function transfer_list(){
        $this->db_name='jxc_storage_transfer';
        $this->index();
    }
	/**
	 * 添加调拨记录
	 * 
	 * @author 管理员
	 * @date  2012-12-02
	 */
    public function transfer_add(){
    	$this->db_name='jxc_storage_transfer';
        $this->add();
    }
	/**
	 * 修改
	 * 
	 * @author 管理员
	 * @date  2012-12-02
	 */
    public function transfer_edit(){
    	$this->db_name='jxc_storage_transfer';
    	$this->edit();
    }
	/**
	 * 禁用
	 * 此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能
	 * @author 管理员
	 * @date  2012-12-02
	 */
    public function transfer_delete(){
    	$this->db_name='jxc_storage_transfer';
    	$this->delete();
    }
	/**
	 * 删除
	 * 彻底在数据库中删除，不可以找回来
	 * @author 管理员
	 * @date  2012-12-02
	 */
    public function transfer_foreverdelete(){
    	$this->db_name='jxc_storage_transfer';
    	$this->foreverdelete();
    }
}