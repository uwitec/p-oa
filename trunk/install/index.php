<?php
//定义项目名称和路径
header("Content-type: text/html; charset=utf-8"); 
if(file_exists('../lock.txt')){
	echo '系统已经安装好，如需要重新安装请删除lock.txt';
	exit;
}
if($_POST['install']){
	$db_name=$_POST['db_name'];
	$db_user=$_POST['db_user'];
	$db_pwd=$_POST['db_pwd'];
	$db_prefix=$_POST['db_prefix'];
	$date=date('Y-m-d');
	$config=<<<EOF
<?php
include_once 'sys_app_group_list.php';
return array(
//数据库配置
	'DB_FIELDS_CACHE'=>false,
	'DB_TYPE'=>'mysql',
	'DB_HOST'=>'127.0.0.1',
	'DB_NAME'=>'$db_name',
	'DB_USER'=>'$db_user',
	'DB_PWD'=>'$db_pwd',
	'DB_PORT'=>'3306',
	'DB_PREFIX'=>'$db_prefix',
//分组配置
    'APP_GROUP_LIST' => \$sys_app_group_list, //项目分组设定
    'DEFAULT_GROUP'  => 'Index', //默认分组
	'APP_GROUP_DEPR'=>'.',//项目分组之间的分割符,默认是 . (点)
	'TMPL_FILE_DEPR'=>'-',//模板文件中模块与操作之间的分割符，默认是 /
	'VAR_GROUP'=>'g',
//认证配置
	'DEFAULT_MODULE'=>'Index',//默认模块
	'SESSION_AUTO_START'=>true,
	'USER_AUTH_ON'              =>true,
    'USER_AUTH_TYPE'			=>1,		// 默认认证类型 1 登录认证 2 实时认证
    'USER_AUTH_KEY'             =>'authId',	// 用户认证SESSION标记
	'ADMIN_AUTH_KEY'			=>'administrator',
	'USER_AUTH_MODEL'           =>'user',	// 默认验证数据表模型
	'AUTH_PWD_ENCODER'          =>'md5',	// 用户认证密码加密方式
	'USER_AUTH_GATEWAY'         =>'/Rbac/Public/login',// 默认认证网关
	'NOT_AUTH_MODULE'           =>'Rbac/Public',	// 默认无需认证模块
	'REQUIRE_AUTH_MODULE'       =>'',		// 默认需要认证模块
	'NOT_AUTH_ACTION'           =>'',		// 默认无需认证操作
	'REQUIRE_AUTH_ACTION'       =>'',		// 默认需要认证操作
	'GUEST_AUTH_ON'             =>false,    // 是否开启游客授权访问
	'GUEST_AUTH_ID'             =>0,        // 游客的用户ID
	'DB_LIKE_FIELDS'            =>'title|remark',
	'RBAC_ROLE_TABLE'           =>'{$db_prefix}role',
	'RBAC_USER_TABLE'           =>'{$db_prefix}role_user',
	'RBAC_ACCESS_TABLE'         =>'{$db_prefix}access',
	'RBAC_NODE_TABLE'           =>'{$db_prefix}node',
	'SHOW_PAGE_TRACE'=>false,//显示调试信息
	'APP_AUTOLOAD_PATH'         =>  '@.TagLib',//自动加载类
//分页设置
	 'VAR_PAGE'=>'p',
//系统相关的信息，安装时要写入 
	'SYS_NAME'=>'盘古信息化管理平台',
	'VERSION'=>'1.0',
	'INSTALL_DATE'=>'$date',
);
?>
EOF;
	file_put_contents("../Conf/config.php",$config);
	file_put_contents("../lock.txt",$date.'系统安装完成');
	$index=<<<EOF
<?php
define('APP_NAME', 'Index');
define('APP_PATH', './');
require( "./ThinkPHP3.1/ThinkPHP.php");
EOF;
	file_put_contents("../index.php",$index);
	//导入数据库
	include 'dbclass.php';
	$db=new DBManage ('localhost',$db_user,$db_pwd,$db_name, 'utf8' );
	$db->restore ('pangu.sql');
	echo '安装成功，请点这里<a href="../index.php">登录</a>';
}else {
	include '../Tpl/Index/install.html';
}