<?php
/**
 * 产品查询图模型
 *
 */
class ProductViewModel extends EmtViewModel {
	public $viewFields = array(
		'jxc_product'=>array('*','_type'=>'LEFT'),
		'jxc_product_cat'=>array('title'=>'cat_name','_on'=>'jxc_product_cat.id=jxc_product.cat_id','_type'=>'LEFT'),
		'jxc_supplier'=>array('name'=>'supplier_name','_on'=>'jxc_supplier.id=jxc_product.supplier_id','_type'=>'LEFT')
	);
}