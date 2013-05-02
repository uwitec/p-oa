<?php

/**
 * 计算个人所得税,
 *
 * @param unknown_type $pay
 * @param unknown_type $del
 * @param unknown_type $type=1为个税，$type=2是劳务税
 */
function person_tax($pay,$del,$type=1){
	if ($type==1){
		$need_tax_money=$pay-del-3500;
		switch (true) {
			case $need_tax_money<=0:
				$tax=0;
				break;
			case $need_tax_money<=1500:
				$tax=$need_tax_money*3/100;
			break;
			case $need_tax_money<=4500:
				$tax=$need_tax_money*10/100-105;
			break;
			case $need_tax_money<9000:
				$tax=$need_tax_money*20/100-555;
			break;
			case $need_tax_money<35000:
				$tax=$need_tax_money*25/100-1005;
			break;
			case $need_tax_money<55000:
				$tax=$need_tax_money*30/100-2755;
			break;
			case $need_tax_money<80000:
				$tax=$need_tax_money*35/100-5505;
			break;		
			default:
				$tax=$need_tax_money*45/100-13505;;
			break;
		}
		return $tax;
	}else {
		return ($pay-$del)*8/100;
	}
}

?>