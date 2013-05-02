<?php
/**
 * demo是主表
 * demo1中的demo_id与demo中的id唯一对应
 *
 */
class DemoRelationModel extends RelationModel {
	protected $tableName="demo";
	
	protected $_link=array(
		//Demo1是另一个模型
		'Demo1'=>array(
			'mapping_type'=>BELONGS_TO,
			'foreign_key'=>'id', //关联的外键名称,这个很重要,id是demo表中的一个字段
			'class_name'=>'Demo1',//要关联的模型类名,可选
			'mapping_name'=>'Demo1',//可选
			'condition'=>'',//关联条件
			'mapping_fields'=>'',//一般都不设置
			'as_fields'=>'file001,file002:file002_demo1',//加上这个可以使他们2个表列为同一数据，但是要注意与demo表的字段冲突。
		)
	);
}
?>