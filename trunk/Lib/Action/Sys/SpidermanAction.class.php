<?php
/**
 * 蛛蛛侠的AJAX功能，通过这里进行权限的统一控制
 *
 */
class SpidermanAction extends CommonAction {

	public function index(){
		$this->get_data();
	}
	public function get_data(){
		$app=$this->_request('app');
		$module=$this->_request('module');
		$action=$this->_request('action');
		$param=$this->_request();
		R("$app/$module/$action",$param);
	}
}