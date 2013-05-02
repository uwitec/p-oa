<?php 
/**
 * 产品分类
 * 可以无限级分类，存在产品的分类是不能删除的
 * @author 管理员
 * @version 1.0
 * @date 2012-12-01
 *
 */
class ChanpinfenleiAction extends CommonAction {
	public function __construct(){
		$this->db_name='jxc_product_cat';
		parent::__construct();
	}

	public function index(){
		//$db_product_cat=M('product_cat');
		$parent_id=$_REQUEST['parent_id']?$_REQUEST['parent_id']:0;
		$cat_tree=$this->product_cat_tree($parent_id);
		$cat_tree="<ul id=\"product_cat_tree\" class=\"filetree\">{$cat_tree}</ul>";
		$this->assign('cat_tree',$cat_tree);
		Cookie::set('_currentUrl_', __SELF__);
		$this->display();
	}
	//产品分类目录树
	function product_cat_tree($pid){
		$db_product_cat=M('jxc_product_cat');
		$list=$db_product_cat->field('id,title,pid')->where("pid='$pid' AND status=1")->select();
		if ($list){
			foreach ($list as $val){
				$next_html=$this->product_cat_tree($val['id']);
				if ($next_html){
					$html.="<li><span>{$val['title']}</span>
					<b style=\"margin:0px 5px;\" ><a href=\"javascript:dialog_add('{$val['id']}');\">添加</a></b>
					<b style=\"margin:0px 5px;\" ><a href=\"javascript:dialog_edit('{$val['id']}');\">修改</a></b>
					<b style=\"margin:0px 5px;\" ><a href=\"javascript:confirm_delete('{$val['id']}');\">删除</a></b>
					<!--<b style=\"margin:0px 5px;\" ><a href=\"javascript:dialog_move('{$val['id']}');\">移动</a></b>-->
					<ul>{$next_html}</ul></li>";
				}else {
					$html.="<li><span>{$val['title']}</span>
					<b style=\"margin:0px 5px;\" ><a href=\"javascript:dialog_add('{$val['id']}');\">添加</a></b>
					<b style=\"margin:0px 5px;\" ><a href=\"javascript:dialog_edit('{$val['id']}');\">修改</a></b>
					<b style=\"margin:0px 5px;\" ><a href=\"javascript:confirm_delete('{$val['id']}');\">删除</a></b>
					<!--<b style=\"margin:0px 5px;\" ><a href=\"javascript:dialog_move('{$val['id']}');\">移动</a></b>--></li>";
				}
			}
		}
		return $html;
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
}