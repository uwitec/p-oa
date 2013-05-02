<?php
/**
 * 产品分类无限级下拉菜单
 * $pid 上级菜单id，
 * $recursive是否无限生成
 * $level 第几层
 */
function product_cat_select($pid=0,$recursive=true,$level=0,$default=''){
	$db_product_cat=M('jxc_product_cat');
	$list=$db_product_cat->field('id,title,pid')->where("pid='$pid' AND status=1")->select();
	if ($list){
		$level_nbsp=str_repeat('&nbsp;',$level*6);
		$level++;
		foreach ($list as $val){
			$selected=$default==$val['id']?"selected":'';
			$html.="<option value=\"{$val['id']}\" pid=\"{$val['pid']}\" $selected >{$level_nbsp}|--{$val['title']}</optin>";
			if ($recursive){//要无限级时
				$next_html=product_cat_select($val['id'],$recursive,$level,$default);
				$html.=$next_html;
			}
		}
	}
	return $html;
}
/**
 * 仓库无限级下拉菜单
 * $pid 上级仓库id，
 * $recursive是否无限生成
 * $level 第几层
 */
function storage_select($pid=0,$recursive=true,$level=0,$default=''){
	$db_storage=M('jxc_storage');
	$list=$db_storage->field('id,name,pid')->where("pid='$pid' AND status=1")->select();
	if ($list){
		$level_nbsp=str_repeat('&nbsp;',$level*6);
		$level++;
		foreach ($list as $val){
			$selected=$default==$val['id']?"selected":'';
			$html.="<option value=\"{$val['id']}\" pid=\"{$val['pid']}\" $selected >{$level_nbsp}|--{$val['name']}</optin>";
			if ($recursive){//要无限级时
				$next_html=storage_select($val['id'],$recursive,$level,$default);
				$html.=$next_html;
			}
		}
	}
	return $html;
}
/**
 * 财务科目无限级下拉菜单
 * $pid 上级科目id，
 * $recursive是否无限生成
 * $level 第几层
 */
function finances_cat_select($pid=0,$recursive=true,$level=0,$default=''){
	$db_finances_cat=M('jxc_finances_cat');
	$list=$db_finances_cat->field('id,title,direction')->where("pid='$pid' AND status=1")->select();
	if ($list){
		$level_nbsp=str_repeat('&nbsp;',$level*6);
		$level++;
		foreach ($list as $val){
			$selected=$default==$val['id']?"selected":'';
			$html.="<option value=\"{$val['id']}\" direction=\"{$val['direction']}\" pid=\"{$val['pid']}\" $selected >{$level_nbsp}|--{$val['title']}({$val['direction']})</optin>";
			if ($recursive){//要无限级时
				$next_html=finances_cat_select($val['id'],$recursive,$level,$default);
				$html.=$next_html;
			}
		}
	}
	return $html;
}
/**
 * 用户选择列表
 *
 */
function user_select($default=0){
	$db_user=M('user');
	$list_user=$db_user->where('status=1')->select();
	foreach ($list_user as $user){
		if ($default==$user['id']){
			$html.="<option value='{$user['id']}' selected >{$user['nickname']}</option>";
		}else {
			$html.="<option value='{$user['id']}' >{$user['nickname']}</option>";
		}
	}
	return $html;
}
/**
 * 采购单号
 *
 */
function procure_number(){
	$db_jxc_procure=M('jxc_procure');
	$belong_month=date('Ym');
	$num=$db_jxc_procure->where("belong_month='{$belong_month}'")->count();
	$number='EMT-IN'.date('Ym').'-'.sprintf('%05d',$num+1);
	return $number;
}
/**
 * 销售单号
 *
 */
function sales_number(){
	$db_jxc_sales_slip=M('jxc_sales_slip');
	$belong_month=date('Ym');
	$num=$db_jxc_sales_slip->where("belong_month='{$belong_month}'")->count();
	$number='EMT-OUT'.date('Ym').'-'.sprintf('%05d',$num+1);
	return $number;
}
?>