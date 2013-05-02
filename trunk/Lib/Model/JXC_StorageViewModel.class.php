<?php
/**
 * 产品查询图模型
 *
 */
class JXC_StorageViewModel extends EmtViewModel {
	public $viewFields = array(
		'jxc_storage'=>array('*','_type'=>'LEFT'),
		'user'=>array('nickname'=>'admin_name','_on'=>'user.id=jxc_storage.admin_id','_type'=>'LEFT'),
	);
}