<?php
/**
 * 库存查询图模型
 *
 */
class InventoryViewModel extends EmtViewModel {
	public $viewFields = array(
		'jxc_inventory'=>array('id','storage_id','code','number','update_date','remark','status','_type'=>'LEFT'),
		'jxc_product'=>array('name'=>'product_name','specification'=>'specification','_on'=>'jxc_product.code=jxc_inventory.code','_type'=>'LEFT'),
		'jxc_storage'=>array('name'=>'storage','_on'=>'jxc_storage.id=jxc_inventory.storage_id'),
	);
}