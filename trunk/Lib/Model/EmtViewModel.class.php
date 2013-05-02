<?php

class EmtViewModel extends ViewModel {
	
	/**
	 * 取得实图的所有字段
	 *
	 * @return unknown
	 */
	public function getDbViewFields(){
		$field_arr=explode(',',$this->checkFields());
		foreach ($field_arr as $field) {
			$arr=explode(' AS ',$field);
			$fields[]=$arr[1];
		}
		return $fields;
	}
}

?>