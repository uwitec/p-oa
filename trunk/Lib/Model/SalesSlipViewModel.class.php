<?php
/**
 * 产品查询图模型
 *
 */
class SalesSlipViewModel extends EmtViewModel {
	public $viewFields = array(
		'jxc_sales_slip'=>array('*','_type'=>'LEFT'),
		'user'=>array('nickname'=>'salesman_name','_on'=>'user.id=jxc_sales_slip.salesman_id','_type'=>'LEFT'),
		'user_auditor'=>array('_table'=>'bx_user','nickname'=>'auditor_name','_on'=>'user_auditor.id=jxc_sales_slip.auditor_id','_type'=>'LEFT'),
		'jxc_customer'=>array('name'=>'customer_name','_on'=>'jxc_customer.id=jxc_sales_slip.customer_id','_type'=>'LEFT')
	);
}