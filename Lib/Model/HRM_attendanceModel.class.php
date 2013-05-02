<?php
/**
 *
 *
 */
class HRM_attendanceModel extends CommonModel {
	protected $tableName='hrm_attendance';
	/**
	 * 返回各种假期或者上班天数的总和
	 *
	 * @param array||int $type
	 * @param string $belongs_month
	 * @param string $employe_number 员工的工号
	 * @return int
	 */
	public function count_day_type($type,$belongs_month,$employe_number){
		$db_hrm_attendance_month=M('hrm_attendance_month');
		$info=$db_hrm_attendance_month->where("`year_month`='$belongs_month' AND employee_number='$employe_number'")->find();
		//echo $db_hrm_attendance_month->getLastSql().'<br>';
		if ($type=='0'){
			return $info['need_attendance_days'];
		}
		$count=0;
		if (!is_array($type)){
			$type=array($type);
		}
		for($i=1;$i<=31;$i++){
			$day=sprintf("%02d",$i);
			if (in_array($info["day$day"],$type)){
				$count++;
			}
		}
		return $count;
	}
}