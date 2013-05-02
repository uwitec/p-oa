-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1:3306
-- 生成日期: 2013 年 03 月 04 日 03:39
-- 服务器版本: 5.1.28
-- PHP 版本: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `zhijian_v2`
--

-- --------------------------------------------------------

--
-- 表的结构 `bx_access`
--

CREATE TABLE IF NOT EXISTS `bx_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `pid` smallint(6) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`role_id`,`node_id`),
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='角色对应节点的访问权限';

--
-- 导出表中的数据 `bx_access`
--

INSERT INTO `bx_access` (`role_id`, `node_id`, `level`, `pid`, `module`) VALUES
(1, 1, 1, 0, NULL),
(1, 2, 2, 1, NULL),
(1, 3, 3, 1, NULL),
(1, 4, 3, 1, NULL),
(1, 5, 3, 1, NULL),
(1, 6, 3, 1, NULL),
(1, 7, 3, 1, NULL),
(2, 1, 1, 0, NULL),
(2, 2, 2, 1, NULL),
(2, 3, 3, 1, NULL),
(2, 4, 3, 1, NULL),
(2, 5, 3, 1, NULL),
(2, 6, 3, 1, NULL),
(2, 7, 3, 1, NULL),
(1, 8, 2, 1, NULL),
(1, 9, 3, 1, NULL),
(1, 10, 3, 1, NULL),
(1, 11, 3, 1, NULL),
(1, 12, 3, 1, NULL),
(1, 13, 3, 1, NULL),
(2, 8, 2, 1, NULL),
(2, 9, 3, 1, NULL),
(2, 10, 3, 1, NULL),
(2, 11, 3, 1, NULL),
(2, 12, 3, 1, NULL),
(2, 13, 3, 1, NULL),
(1, 14, 2, 1, NULL),
(1, 15, 3, 1, NULL),
(1, 16, 3, 1, NULL),
(1, 17, 3, 1, NULL),
(1, 18, 3, 1, NULL),
(1, 19, 3, 1, NULL),
(2, 14, 2, 1, NULL),
(2, 15, 3, 1, NULL),
(2, 16, 3, 1, NULL),
(2, 17, 3, 1, NULL),
(2, 18, 3, 1, NULL),
(2, 19, 3, 1, NULL),
(1, 20, 2, 1, NULL),
(1, 21, 3, 1, NULL),
(1, 22, 3, 1, NULL),
(1, 23, 3, 1, NULL),
(1, 24, 3, 1, NULL),
(1, 25, 3, 1, NULL),
(2, 20, 2, 1, NULL),
(2, 21, 3, 1, NULL),
(2, 22, 3, 1, NULL),
(2, 23, 3, 1, NULL),
(2, 24, 3, 1, NULL),
(2, 25, 3, 1, NULL),
(1, 26, 1, 0, NULL),
(1, 27, 2, 1, NULL),
(1, 28, 3, 1, NULL),
(2, 26, 1, 0, NULL),
(2, 27, 2, 1, NULL),
(2, 28, 3, 1, NULL),
(1, 29, 2, 26, NULL),
(1, 30, 3, 1, NULL),
(1, 31, 3, 1, NULL),
(1, 32, 3, 1, NULL),
(1, 33, 3, 1, NULL),
(1, 34, 3, 1, NULL),
(2, 29, 2, 26, NULL),
(2, 30, 3, 1, NULL),
(2, 31, 3, 1, NULL),
(2, 32, 3, 1, NULL),
(2, 33, 3, 1, NULL),
(2, 34, 3, 1, NULL),
(1, 35, 2, 26, NULL),
(1, 36, 3, 1, NULL),
(1, 37, 3, 1, NULL),
(1, 38, 3, 1, NULL),
(1, 39, 3, 1, NULL),
(1, 40, 3, 1, NULL),
(2, 35, 2, 26, NULL),
(2, 36, 3, 1, NULL),
(2, 37, 3, 1, NULL),
(2, 38, 3, 1, NULL),
(2, 39, 3, 1, NULL),
(2, 40, 3, 1, NULL),
(1, 41, 2, 26, NULL),
(1, 42, 3, 1, NULL),
(1, 43, 3, 1, NULL),
(1, 44, 3, 1, NULL),
(1, 45, 3, 1, NULL),
(1, 46, 3, 1, NULL),
(2, 41, 2, 26, NULL),
(2, 42, 3, 1, NULL),
(2, 43, 3, 1, NULL),
(2, 44, 3, 1, NULL),
(2, 45, 3, 1, NULL),
(2, 46, 3, 1, NULL),
(1, 47, 3, 41, NULL),
(2, 47, 3, 41, NULL),
(1, 48, 1, 0, NULL),
(2, 48, 1, 0, NULL),
(1, 49, 2, 48, NULL),
(2, 49, 2, 48, NULL),
(1, 51, 3, 49, NULL),
(2, 51, 3, 49, NULL),
(1, 52, 3, 49, NULL),
(2, 52, 3, 49, NULL),
(1, 53, 3, 49, NULL),
(2, 53, 3, 49, NULL),
(1, 54, 3, 49, NULL),
(2, 54, 3, 49, NULL),
(7, 50, 3, 49, NULL),
(7, 48, 1, 0, NULL),
(7, 49, 2, 48, NULL),
(7, 51, 3, 49, NULL),
(7, 52, 3, 49, NULL),
(7, 53, 3, 49, NULL),
(7, 54, 3, 49, NULL),
(1, 55, 2, 1, NULL),
(2, 55, 2, 1, NULL),
(7, 55, 2, 1, NULL),
(1, 56, 3, 55, NULL),
(2, 56, 3, 55, NULL),
(7, 56, 3, 55, NULL),
(1, 57, 3, 55, NULL),
(2, 57, 3, 55, NULL),
(7, 57, 3, 55, NULL),
(1, 58, 3, 55, NULL),
(2, 58, 3, 55, NULL),
(7, 58, 3, 55, NULL),
(1, 59, 3, 55, NULL),
(2, 59, 3, 55, NULL),
(7, 59, 3, 55, NULL),
(1, 60, 3, 55, NULL),
(2, 60, 3, 55, NULL),
(7, 60, 3, 55, NULL),
(1, 61, 3, 55, NULL),
(2, 61, 3, 55, NULL),
(7, 61, 3, 55, NULL),
(7, 1, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `bx_company`
--
CREATE TABLE IF NOT EXISTS `bx_company` (
`id` int(11)
,`company_name` varchar(64)
,`tow_no_pass` varchar(11)
,`one_no_pass_date` varchar(11)
);
-- --------------------------------------------------------

--
-- 表的结构 `bx_demo`
--

CREATE TABLE IF NOT EXISTS `bx_demo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `radio` varchar(32) NOT NULL,
  `checkbox` varchar(32) NOT NULL,
  `select` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `text` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='DEMO表，用于暂时没建表时建立应用的DEMO' AUTO_INCREMENT=6 ;

--
-- 导出表中的数据 `bx_demo`
--

INSERT INTO `bx_demo` (`id`, `status`, `radio`, `checkbox`, `select`, `password`, `text`) VALUES
(1, 0, '单选', '复选', '下拉', '密码', '文本'),
(2, 0, '2', '1', '1', 'j ', '可用吗？'),
(3, 1, '', '', '', '', ''),
(4, 1, '', '', '', '', ''),
(5, 1, '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `bx_field`
--

CREATE TABLE IF NOT EXISTS `bx_field` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `app` varchar(64) NOT NULL COMMENT '应用',
  `module` varchar(64) NOT NULL COMMENT '模块',
  `action` varchar(64) NOT NULL DEFAULT 'index' COMMENT '操作，一定要填写，默认是index',
  `table_name` varchar(64) NOT NULL COMMENT '数据表名',
  `field` varchar(64) NOT NULL COMMENT '对应表中的字段',
  `name` varchar(30) NOT NULL COMMENT '字段标题',
  `tips` text NOT NULL COMMENT '提示说明',
  `css` varchar(30) NOT NULL,
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '字段的最大长度',
  `pattern` varchar(255) NOT NULL,
  `errortips` varchar(255) NOT NULL,
  `formtype` varchar(20) NOT NULL COMMENT '字段的类型，可以为添加和修改对HTML进行格式化',
  `setting` mediumtext NOT NULL,
  `formattribute` varchar(255) NOT NULL,
  `unsetgroupids` varchar(255) NOT NULL,
  `unsetroleids` varchar(255) NOT NULL,
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isunique` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isbase` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否用于搜索',
  `isselect` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `iswhere` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isorder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islist` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isadd` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `isfulltext` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `modelid` (`disabled`),
  KEY `field` (`field`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- 导出表中的数据 `bx_field`
--

INSERT INTO `bx_field` (`id`, `app`, `module`, `action`, `table_name`, `field`, `name`, `tips`, `css`, `minlength`, `maxlength`, `pattern`, `errortips`, `formtype`, `setting`, `formattribute`, `unsetgroupids`, `unsetroleids`, `iscore`, `issystem`, `isunique`, `isbase`, `issearch`, `isselect`, `iswhere`, `isorder`, `islist`, `isshow`, `isadd`, `isfulltext`, `listorder`, `disabled`) VALUES
(1, 'Demo', 'Demo', 'demo', 'demo', 'text', '文本框', '文本框输入的DEMO', '', 0, 0, '', '', 'text', '', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(2, 'Demo', 'Demo', 'demo', 'demo', 'password', '密码框', '密码输入框', '', 0, 0, '', '', 'password', '', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(3, 'Demo', 'Demo', 'demo', 'demo', 'select', '下拉选择框', '下拉选择框DEMO\r\n', '', 0, 0, '', '', 'select', 'array(array(''name''=>''选项一'',''value''=>1),array(''name''=>''选项二'',''value''=>2),);', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(4, 'Demo', 'Demo', 'demo', 'demo', 'checkbox', '复选框', '复选框demo', '', 0, 0, '', '', 'checkbox', 'array(array(''name''=>''选项一'',''value''=>1),array(''name''=>''选项二'',''value''=>2),);', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(5, 'Demo', 'Demo', 'demo', 'demo', 'radio', '单选框', '单选框DEMO', '', 0, 0, '', '', 'radio', 'array(array(''name''=>''选项一'',''value''=>1),array(''name''=>''选项二'',''value''=>2),);', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(6, '', '', 'index', 'original_records', 'sampling_number', '取样单号', '', '', 0, 32, '', '', 'text', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(7, '', '', 'index', 'original_records', 'laboratory_technicia', '化验员', '', '', 0, 11, '', '', 'number', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(8, '', '', 'index', 'original_records', 'chemist_date', '化验日期', '', '', 0, 32, '', '', 'text', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(9, '', '', 'index', 'original_records', 'test_results', '化验结果', '', '', 0, 32, '', '', 'text', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(10, '', '', 'index', 'original_records', 'raw_water_hardness', '原水硬度', '', '', 0, 32, '', '', 'text', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(11, '', '', 'index', 'original_records', 'raw_water_hardness_1', '原水硬度1', '', '', 0, 32, '', '', 'text', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(12, '', '', 'index', 'original_records', 'raw_water_hardness_2', '原水硬度2', '', '', 0, 32, '', '', 'text', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(13, '', '', 'index', 'original_records', 'raw_water_total_alka', '原水总碱', '', '', 0, 32, '', '', 'text', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(14, '', '', 'index', 'original_records', 'raw_water_total_alka', '原水总碱1', '', '', 0, 32, '', '', 'text', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(15, '', '', 'index', 'original_records', 'raw_water_total_alka', '原水总碱2', '', '', 0, 32, '', '', 'text', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(16, '', '', 'index', 'original_records', 'raw_water_chlorine_i', '原水氯离子', '', '', 0, 32, '', '', 'text', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(17, '', '', 'index', 'original_records', 'raw_water_chloride_i', '原水氯离子1', '', '', 0, 32, '', '', 'text', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(18, '', '', 'index', 'original_records', 'raw_water_chlorine_i', '原水氯离子2', '', '', 0, 32, '', '', 'text', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(19, '', '', 'index', 'original_records', 'raw_water_turbidity', '原水浊度', '', '', 0, 32, '', '', 'text', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(20, '', '', 'index', 'original_records', 'raw_water_turbidity_', '原水浊度1', '', '', 0, 32, '', '', 'text', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(21, '', '', 'index', 'original_records', 'raw_water_turbidity_', '原水浊度2', '', '', 0, 32, '', '', 'text', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(22, '', '', 'index', 'original_records', 'raw_water_conductanc', '原水电导', '', '', 0, 32, '', '', 'text', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(23, '', '', 'index', 'original_records', 'raw_water_conductanc', '原水电导1', '', '', 0, 32, '', '', 'text', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(24, '', '', 'index', 'original_records', 'raw_water_conductanc', '原水电导2', '', '', 0, 32, '', '', 'text', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(25, '', '', 'index', 'original_records', 'boiler_water_dissolv', '锅水溶解固形物', '', '', 0, 32, '', '', 'text', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0),
(26, '', '', 'index', 'original_records', 'boiler_water_total_a', '锅水总碱度', '', '', 0, 32, '', '', 'text', 'array (\n  0 => \n  array (\n    ''name'' => '''',\n    ''value'' => '''',\n  ),\n)', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `bx_group`
--

CREATE TABLE IF NOT EXISTS `bx_group` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `title` varchar(50) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 导出表中的数据 `bx_group`
--

INSERT INTO `bx_group` (`id`, `name`, `title`, `create_time`, `update_time`, `status`, `sort`, `is_show`) VALUES
(1, 'Index', '依面天应用中心', 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `bx_menu`
--

CREATE TABLE IF NOT EXISTS `bx_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL COMMENT '上级ID',
  `child_ids` varchar(128) NOT NULL COMMENT '下级ID用''，''分开',
  `title` varchar(12) NOT NULL COMMENT '菜单名',
  `position` varchar(8) NOT NULL COMMENT '菜单所在的位置top1,top2,menu,main',
  `target` varchar(10) NOT NULL COMMENT '连接打开的位置header-frame,menu-framemain-frame,_blank',
  `url` varchar(512) NOT NULL COMMENT '连接地址，有下级的用#或者JS来操作，连接从根开始，不带域名',
  `app` varchar(24) NOT NULL COMMENT '所属分组应用，主要会控制左边的菜单变化,空为所有APP都可以',
  `module` varchar(24) NOT NULL COMMENT '所属模块，空为做公共的',
  `action` varchar(24) NOT NULL COMMENT '所属操作，空为公共的',
  `node_id` int(11) NOT NULL COMMENT '标记对应的节点，创建应用、模块或操作时生成上下级的菜单',
  `access_node` varchar(128) NOT NULL COMMENT '此菜单需要访问的节点，角色有此菜单时必需要给这些节点赋权，每个节点用，分开',
  `group_id` tinyint(4) NOT NULL COMMENT '对菜单进行分组，这样不同的应用就可以按组来读取菜单了',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '这个菜单导航的用户,当为0时是公共的',
  `role_id` varchar(64) NOT NULL DEFAULT '[1][2]' COMMENT '角色的菜单，当角色菜单生效时，user_id不生效',
  `listorder` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序，从小到大',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1：显示，0:不显示，-1：禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='系统导航菜单，app,module,action用于生成菜单的位置,node_id为找出上级节点菜单作准备' AUTO_INCREMENT=49 ;

--
-- 导出表中的数据 `bx_menu`
--

INSERT INTO `bx_menu` (`id`, `parent_id`, `child_ids`, `title`, `position`, `target`, `url`, `app`, `module`, `action`, `node_id`, `access_node`, `group_id`, `user_id`, `role_id`, `listorder`, `status`) VALUES
(1, 0, '', '系统管理', 'menu', '_self', '#', 'Sys', '', '', 1, '1', 1, 0, '[1][2]', 0, 1),
(2, 1, '', '应用管理', 'menu', 'main-frame', '/index.php/Sys/Index/index', 'Sys', 'Index', '', 2, '2', 1, 0, '[1][2]', 0, 1),
(3, 2, '', '项目列表', 'menu', 'main-frame', '/index.php/Sys/Index/index', 'Sys', 'Index', '', 3, '3', 1, 0, '[1][2]', 0, 0),
(4, 2, '', '添加', 'main', '_self', 'javascript:dialog_add();', 'Sys', 'Index', '', 4, '4', 1, 0, '[1][2]', 0, 1),
(5, 2, '', '修改', 'main', '_self', 'javascript:diaolog_edit();', 'Sys', 'Index', '', 5, '5', 1, 0, '[1][2]', 0, 0),
(6, 2, '', '禁用', 'main', '_self', 'javascript:diaolog_delete();', 'Sys', 'Index', '', 6, '6', 1, 0, '[1][2]', 0, 0),
(7, 2, '', '删除', 'main', '_self', 'javascript:diaolog_foreverdelete();', 'Sys', 'Index', '', 7, '7', 1, 0, '[1][2]', 0, -1),
(8, 1, '', '系统表管理', 'menu', 'main-frame', '/index.php/Sys/Table/index', 'Sys', 'Table', '', 8, '8', 1, 0, '[1][2]', 0, 1),
(9, 8, '', '表管理', 'menu', 'main-frame', '/index.php/Sys/Table/index', 'Sys', 'Table', '', 9, '9', 1, 0, '[1][2]', 0, 0),
(10, 8, '', '添加', 'main', '_self', 'javascript:dialog_add();', 'Sys', 'Table', '', 10, '10', 1, 0, '[1][2]', 0, 1),
(11, 8, '', '修改', 'main', '_self', 'javascript:diaolog_edit();', 'Sys', 'Table', '', 11, '11', 1, 0, '[1][2]', 0, 0),
(12, 8, '', '禁用', 'main', '_self', 'javascript:diaolog_delete();', 'Sys', 'Table', '', 12, '12', 1, 0, '[1][2]', 0, 0),
(13, 8, '', '删除', 'main', '_self', 'javascript:diaolog_foreverdelete();', 'Sys', 'Table', '', 13, '13', 1, 0, '[1][2]', 0, 0),
(14, 1, '', '字段管理', 'menu', 'main-frame', '/index.php/Sys/Field/index', 'Sys', 'Field', '', 14, '14', 1, 0, '[1][2]', 0, 0),
(15, 14, '', '字段列表', 'menu', 'main-frame', '/index.php/Sys/Field/index', 'Sys', 'Field', '', 15, '15', 1, 0, '[1][2]', 0, 0),
(16, 14, '', '添加', 'main', '_self', 'javascript:dialog_add();', 'Sys', 'Field', '', 16, '16', 1, 0, '[1][2]', 0, 1),
(17, 14, '', '修改', 'main', '_self', 'javascript:diaolog_edit();', 'Sys', 'Field', '', 17, '17', 1, 0, '[1][2]', 0, 0),
(18, 14, '', '禁用', 'main', '_self', 'javascript:diaolog_delete();', 'Sys', 'Field', '', 18, '18', 1, 0, '[1][2]', 0, 0),
(19, 14, '', '删除', 'main', '_self', 'javascript:diaolog_foreverdelete();', 'Sys', 'Field', '', 19, '19', 1, 0, '[1][2]', 0, 0),
(20, 1, '', '软件仓库', 'menu', 'main-frame', '/index.php/Sys/Software/index', 'Sys', 'Software', '', 20, '20', 1, 0, '[1][2]', 0, 1),
(21, 20, '', '软件列表', 'menu', 'main-frame', '/index.php/Sys/Software/index', 'Sys', 'Software', '', 21, '21', 1, 0, '[1][2]', 0, 0),
(22, 20, '', '添加', 'main', '_self', 'javascript:dialog_add();', 'Sys', 'Software', '', 22, '22', 1, 0, '[1][2]', 0, 1),
(23, 20, '', '修改', 'main', '_self', 'javascript:diaolog_edit();', 'Sys', 'Software', '', 23, '23', 1, 0, '[1][2]', 0, 0),
(24, 20, '', '禁用', 'main', '_self', 'javascript:diaolog_delete();', 'Sys', 'Software', '', 24, '24', 1, 0, '[1][2]', 0, 0),
(25, 20, '', '删除', 'main', '_self', 'javascript:diaolog_foreverdelete();', 'Sys', 'Software', '', 25, '25', 1, 0, '[1][2]', 0, 0),
(26, 0, '', '权限管理', 'menu', '_self', '#', 'Rbac', '', '', 26, '26', 1, 0, '[1][2]', 0, 1),
(27, 26, '', '默认模块', 'menu', '_self', '#', 'Rbac', 'Index', '', 27, '27', 1, 0, '[1][2]', 0, 0),
(28, 27, '', '数据列表', 'menu', 'main-frame', '/index.php/Rbac/Index/index', 'Rbac', 'Index', '', 28, '28', 1, 0, '[1][2]', 0, 1),
(29, 26, '', '用户管理', 'menu', 'main-frame', '/index.php/Rbac/User/index', 'Rbac', 'User', '', 29, '29', 1, 0, '[1][2]', 0, 1),
(30, 29, '', '用户列表', 'menu', 'main-frame', '/index.php/Rbac/User/index', 'Rbac', 'User', '', 30, '30', 1, 0, '[1][2]', 0, 0),
(31, 29, '', '添加', 'main', '_self', 'javascript:dialog_add();', 'Rbac', 'User', '', 31, '31', 1, 0, '[1][2]', 0, 1),
(32, 29, '', '修改', 'main', '_self', 'javascript:diaolog_edit();', 'Rbac', 'User', '', 32, '32', 1, 0, '[1][2]', 0, 0),
(33, 29, '', '禁用', 'main', '_self', 'javascript:diaolog_delete();', 'Rbac', 'User', '', 33, '33', 1, 0, '[1][2]', 0, 0),
(34, 29, '', '删除', 'main', '_self', 'javascript:diaolog_foreverdelete();', 'Rbac', 'User', '', 34, '34', 1, 0, '[1][2]', 0, 0),
(35, 26, '', '角色管理', 'menu', 'main-frame', '/index.php/Rbac/Role/index', 'Rbac', 'Role', '', 35, '35', 1, 0, '[1][2]', 0, 1),
(36, 35, '', '角色列表', 'menu', 'main-frame', '/index.php/Rbac/Role/index', 'Rbac', 'Role', '', 36, '36', 1, 0, '[1][2]', 0, 0),
(37, 35, '', '添加', 'main', '_self', 'javascript:dialog_add();', 'Rbac', 'Role', '', 37, '37', 1, 0, '[1][2]', 0, 1),
(38, 35, '', '修改', 'main', '_self', 'javascript:diaolog_edit();', 'Rbac', 'Role', '', 38, '38', 1, 0, '[1][2]', 0, 0),
(39, 35, '', '禁用', 'main', '_self', 'javascript:diaolog_delete();', 'Rbac', 'Role', '', 39, '39', 1, 0, '[1][2]', 0, 0),
(40, 35, '', '删除', 'main', '_self', 'javascript:diaolog_foreverdelete();', 'Rbac', 'Role', '', 40, '40', 1, 0, '[1][2]', 0, 0),
(41, 26, '', '菜单管理', 'menu', 'main-frame', '/index.php/Rbac/Menu/index', 'Rbac', 'Menu', '', 41, '41', 1, 0, '[1][2]', 0, 1),
(42, 41, '', '菜单设置', 'menu', 'main-frame', '/index.php/Rbac/Menu/index', 'Rbac', 'Menu', '', 42, '42', 1, 0, '[1][2]', 0, 0),
(43, 41, '', '添加', 'main', '_self', 'javascript:dialog_add();', 'Rbac', 'Menu', '', 43, '43', 1, 0, '[1][2]', 0, 1),
(44, 41, '', '修改', 'main', '_self', 'javascript:diaolog_edit();', 'Rbac', 'Menu', '', 44, '44', 1, 0, '[1][2]', 0, 0),
(45, 41, '', '禁用', 'main', '_self', 'javascript:diaolog_delete();', 'Rbac', 'Menu', '', 45, '45', 1, 0, '[1][2]', 0, 0),
(46, 41, '', '删除', 'main', '_self', 'javascript:diaolog_foreverdelete();', 'Rbac', 'Menu', '', 46, '46', 1, 0, '[1][2]', 0, 0),
(48, 0, '', '系统登录', 'menu', 'main-frame', '/index.php/Index/Index/', 'Index', 'Index', 'index', 50, '50,48,49,51,52,53,54,55,56,57,58,59,60,61,1', 1, 0, '[1][2][7]', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `bx_node`
--

CREATE TABLE IF NOT EXISTS `bx_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  `group_id` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- 导出表中的数据 `bx_node`
--

INSERT INTO `bx_node` (`id`, `name`, `title`, `status`, `remark`, `sort`, `pid`, `level`, `group_id`) VALUES
(1, 'Sys', '系统管理', 1, '包括用户和角色的管理', NULL, 0, 1, 1),
(2, 'Index', '应用管理', 1, '管理系统的应用、模块、和操作的各个节点，通过此处添加的应用、模块和操作都会自动生成各种常用的功能，如“添加数据、修改数据、删除数据、显示详细数据信息、数据列表、导出数据” \n================\n此功能目录打算删除', NULL, 1, 2, 1),
(3, 'index', '项目列表', 1, '', NULL, 2, 3, 1),
(4, 'add', '添加', 1, '', NULL, 2, 3, 1),
(5, 'edit', '修改', 1, '', NULL, 2, 3, 1),
(6, 'delete', '禁用', 1, '此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能', NULL, 2, 3, 1),
(7, 'foreverdelete', '删除', 1, '彻底在数据库中删除，不可以找回来', NULL, 2, 3, 1),
(8, 'Table', '系统表管理', 1, '管理从系统生成的数据表', NULL, 1, 2, 1),
(9, 'index', '表管理', 1, '', NULL, 8, 3, 1),
(10, 'add', '添加', 1, '', NULL, 8, 3, 1),
(11, 'edit', '修改', 1, '', NULL, 8, 3, 1),
(12, 'delete', '禁用', 1, '此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能', NULL, 8, 3, 1),
(13, 'foreverdelete', '删除', 1, '彻底在数据库中删除，不可以找回来', NULL, 8, 3, 1),
(14, 'Field', '字段管理', 1, '作为应用的第一个模块', NULL, 1, 2, 1),
(15, 'index', '字段列表', 1, '', NULL, 14, 3, 1),
(16, 'add', '添加', 1, '', NULL, 14, 3, 1),
(17, 'edit', '修改', 1, '', NULL, 14, 3, 1),
(18, 'delete', '禁用', 1, '此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能', NULL, 14, 3, 1),
(19, 'foreverdelete', '删除', 1, '彻底在数据库中删除，不可以找回来', NULL, 14, 3, 1),
(20, 'Software', '软件仓库', 1, '所有的软件都会在这里安装和管理', NULL, 1, 2, 1),
(21, 'index', '软件列表', 1, '显示所有的软件，需要与远程数据进行对比。检查是否有更新', NULL, 20, 3, 1),
(22, 'add', '添加', 1, '', NULL, 20, 3, 1),
(23, 'edit', '修改', 1, '', NULL, 20, 3, 1),
(24, 'delete', '禁用', 1, '此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能', NULL, 20, 3, 1),
(25, 'foreverdelete', '删除', 1, '彻底在数据库中删除，不可以找回来', NULL, 20, 3, 1),
(26, 'Rbac', '权限管理', 1, '包括角色、用户和菜单的管理', NULL, 0, 1, 1),
(27, 'Index', '默认模块', 1, '作为应用的第一个模块,暂时没有用处', NULL, 26, 2, 1),
(28, 'index', '数据列表', 1, '', NULL, 27, 3, 1),
(29, 'User', '用户管理', 1, '用户的增删查改和付权', NULL, 26, 2, 1),
(30, 'index', '用户列表', 1, '', NULL, 29, 3, 1),
(31, 'add', '添加', 1, '', NULL, 29, 3, 1),
(32, 'edit', '修改', 1, '', NULL, 29, 3, 1),
(33, 'delete', '禁用', 1, '此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能', NULL, 29, 3, 1),
(34, 'foreverdelete', '删除', 1, '彻底在数据库中删除，不可以找回来', NULL, 29, 3, 1),
(35, 'Role', '角色管理', 1, '实现对角色的付权和CURD的操作', NULL, 26, 2, 1),
(36, 'index', '角色列表', 1, '', NULL, 35, 3, 1),
(37, 'add', '添加', 1, '', NULL, 35, 3, 1),
(38, 'edit', '修改', 1, '', NULL, 35, 3, 1),
(39, 'delete', '禁用', 1, '此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能', NULL, 35, 3, 1),
(40, 'foreverdelete', '删除', 1, '彻底在数据库中删除，不可以找回来', NULL, 35, 3, 1),
(41, 'Menu', '菜单管理', 1, '所有有关菜单的操作', NULL, 26, 2, 1),
(42, 'index', '菜单设置', 1, '', NULL, 41, 3, 1),
(43, 'add', '添加', 1, '', NULL, 41, 3, 1),
(44, 'edit', '修改', 1, '', NULL, 41, 3, 1),
(45, 'delete', '禁用', 1, '此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能', NULL, 41, 3, 1),
(46, 'foreverdelete', '删除', 1, '彻底在数据库中删除，不可以找回来', NULL, 41, 3, 1),
(47, 'lists', '数据列表', 1, '', NULL, 41, 3, 1),
(48, 'Index', '系统框架应用', 1, '系统登录入口，每个用户都必需有', NULL, 0, 1, 1),
(49, 'Index', '系统默认设置的框架', 1, '系统登录入口，每个用户都必需有', NULL, 48, 2, 1),
(50, 'index', '框架主页面', 1, '系统登录入口，每个用户都必需有', NULL, 49, 3, 1),
(51, 'top', '顶部框架', 1, '系统登录入口，每个用户都必需有', NULL, 49, 3, 1),
(52, 'menu', '左边菜单框架', 1, '系统登录入口，每个用户都必需有', NULL, 49, 3, 1),
(53, 'main', '框架右边默认页面', 1, '系统登录入口，每个用户都必需有', NULL, 49, 3, 1),
(54, 'drag', '框架中间分栏', 1, '系统登录入口，每个用户都必需有', NULL, 49, 3, 1),
(55, 'Tip', '信息提示', 1, '左下角的提示信息', NULL, 1, 2, 1),
(56, 'index', '提示信息列表', 1, '', NULL, 55, 3, 1),
(57, 'add', '添加', 1, '', NULL, 55, 3, 1),
(58, 'edit', '修改', 1, '', NULL, 55, 3, 1),
(59, 'delete', '禁用', 1, '此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能', NULL, 55, 3, 1),
(60, 'foreverdelete', '删除', 1, '彻底在数据库中删除，不可以找回来', NULL, 55, 3, 1),
(61, 'dialog_tip_msg', '详细信息', 1, '左下角信息提示区域', NULL, 55, 3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `bx_original_records`
--

CREATE TABLE IF NOT EXISTS `bx_original_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sampling_number` varchar(32) NOT NULL COMMENT '取样单号',
  `laboratory_technician` int(11) NOT NULL COMMENT '化验员',
  `chemist_date` varchar(32) NOT NULL COMMENT '化验日期',
  `test_results` varchar(32) NOT NULL COMMENT '化验结果',
  `raw_water_hardness` varchar(32) NOT NULL COMMENT '原水硬度',
  `raw_water_hardness_1` varchar(32) NOT NULL COMMENT '原水硬度1',
  `raw_water_hardness_2` varchar(32) NOT NULL COMMENT '原水硬度2',
  `raw_water_total_alkali` varchar(32) NOT NULL COMMENT '原水总碱',
  `raw_water_total_alkali_1` varchar(32) NOT NULL COMMENT '原水总碱1',
  `raw_water_total_alkali_2` varchar(32) NOT NULL COMMENT '原水总碱2',
  `raw_water_chlorine_ions` varchar(32) NOT NULL COMMENT '原水氯离子',
  `raw_water_chloride_ion` varchar(32) NOT NULL COMMENT '原水氯离子1',
  `raw_water_chlorine_ion` varchar(32) NOT NULL COMMENT '原水氯离子2',
  `raw_water_turbidity` varchar(32) NOT NULL COMMENT '原水浊度',
  `raw_water_turbidity_1` varchar(32) NOT NULL COMMENT '原水浊度1',
  `raw_water_turbidity_2` varchar(32) NOT NULL COMMENT '原水浊度2',
  `raw_water_conductance` varchar(32) NOT NULL COMMENT '原水电导',
  `raw_water_conductance_1` varchar(32) NOT NULL COMMENT '原水电导1',
  `raw_water_conductance_2` varchar(32) NOT NULL COMMENT '原水电导2',
  `boiler_water_dissolved_solids` varchar(32) NOT NULL COMMENT '锅水溶解固形物',
  `boiler_water_total_alkalinity` varchar(32) NOT NULL COMMENT '锅水总碱度',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='原始记录-原始记录' AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `bx_original_records`
--


-- --------------------------------------------------------

--
-- Stand-in structure for view `bx_quyang`
--
CREATE TABLE IF NOT EXISTS `bx_quyang` (
`id` int(11)
,`quyang_num` varchar(64)
,`company_name` varchar(64)
,`do_type` varchar(64)
,`syzh` varchar(64)
,`quyang_date` varchar(64)
,`quyang_user` varchar(64)
,`belong_month` char(6)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `bx_report`
--
CREATE TABLE IF NOT EXISTS `bx_report` (
`id` int(11)
,`company_id` int(11)
,`title` varchar(128)
,`report_num` varchar(64)
,`sydw` varchar(64)
,`sbpz` varchar(64)
,`sbyh` varchar(64)
,`sbdm` varchar(64)
,`jyrc` varchar(11)
,`belong_month` char(6)
,`one_user_id` int(11)
,`one_time` int(11)
,`tow_user_id` int(11)
,`tow_time` int(11)
,`three_user_id` int(11)
,`three_time` int(11)
,`print_user_id` int(11)
,`print_time` int(11)
,`gzrq` varchar(12)
,`add_userid` int(11)
,`add_time` int(11)
,`status` tinyint(4)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `bx_report_content`
--
CREATE TABLE IF NOT EXISTS `bx_report_content` (
`report_id` int(11)
,`company_name` varchar(128)
,`azdz` varchar(64)
,`aqglrr` varchar(64)
,`lxr` varchar(64)
,`lxdh` varchar(64)
,`zyrrczqh` varchar(64)
,`zzdw` varchar(64)
,`zczh` varchar(64)
,`sclfc` varchar(64)
,`cl` varchar(64)
,`pz` varchar(64)
,`xh` varchar(64)
,`edzfl` varchar(64)
,`edyl` varchar(64)
,`cylqq` varchar(64)
,`grq` varchar(64)
,`sbdm` varchar(64)
,`sydjzh` varchar(64)
,`jyyj` varchar(256)
,`ys_yd` varchar(64)
,`ys_zj` varchar(64)
,`ys_llz` varchar(64)
,`ys_sd` varchar(64)
,`ys_dd` varchar(64)
,`ws_rjgxw` varchar(64)
,`ws_zjd` varchar(64)
,`ws_pjd` varchar(64)
,`ws_phz` varchar(64)
,`ws_po` varchar(64)
,`ws_so` varchar(64)
,`ws_xdjd` varchar(64)
,`ws_ddl` varchar(64)
,`ws_llz` varchar(64)
,`ws_glbgdb` varchar(64)
,`ws_pwl` varchar(64)
,`gs_sd` varchar(64)
,`gs_yd` varchar(64)
,`gs_ph` varchar(64)
,`gs_llz` varchar(64)
,`gs_zj` varchar(64)
,`gs_rjy` varchar(64)
,`gs_qt` varchar(64)
,`gs_y` varchar(64)
,`gs_ddl` varchar(64)
,`rhs_yd` varchar(64)
,`rhs_qt` varchar(64)
,`rhs_y` varchar(64)
,`rhs_llz` varchar(64)
,`rhs_phz` varchar(64)
,`jyjl` varchar(64)
,`jyyjhjy` varchar(512)
,`bak` varchar(512)
,`jyjghzzh` varchar(64)
,`jyjghzrq` varchar(64)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `bx_report_yijian`
--
CREATE TABLE IF NOT EXISTS `bx_report_yijian` (
`id` int(11)
,`content` varchar(512)
);
-- --------------------------------------------------------

--
-- 表的结构 `bx_role`
--

CREATE TABLE IF NOT EXISTS `bx_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 导出表中的数据 `bx_role`
--

INSERT INTO `bx_role` (`id`, `name`, `pid`, `status`, `remark`, `create_time`, `update_time`) VALUES
(1, '系统管理员', 0, 1, '此角色为系统开发人员使用，可操作系统底层数据，不能乱付权', 1208784792, 1348018968),
(2, '企业管理层', 0, 1, '总办或者相关的管理层的人员', 1215496283, 1348019053),
(7, '普通员工', 0, 1, '操作岗们的人员，每个操作岗不同的权限时要再细分权限', 1254325787, 1348019139),
(8, '无权限用户', NULL, 1, '当一些特殊用户需要特别权限时要付这个权限\r\n', 1347694985, 1348019205);

-- --------------------------------------------------------

--
-- 表的结构 `bx_role_user`
--

CREATE TABLE IF NOT EXISTS `bx_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `bx_role_user`
--

INSERT INTO `bx_role_user` (`role_id`, `user_id`) VALUES
(2, '4'),
(7, '3'),
(8, '2'),
(1, '1'),
(7, '36');

-- --------------------------------------------------------

--
-- Stand-in structure for view `bx_shoufei`
--
CREATE TABLE IF NOT EXISTS `bx_shoufei` (
`id` int(11)
,`shoufei_num` varchar(9)
,`company_name` varchar(128)
,`sbxh` varchar(64)
,`sb_num` varchar(4)
,`year` varchar(4)
,`jidu` varchar(32)
,`money` varchar(20)
,`bak` varchar(512)
,`set_date` varchar(12)
,`open_user` varchar(24)
,`belong_month` char(6)
);
-- --------------------------------------------------------

--
-- 表的结构 `bx_software`
--

CREATE TABLE IF NOT EXISTS `bx_software` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '软件名称',
  `version` varchar(12) NOT NULL COMMENT '版本',
  `down_time` int(11) NOT NULL COMMENT '下载时间',
  `install_time` int(11) NOT NULL COMMENT '安装时间',
  `remark` varchar(64) NOT NULL COMMENT '软件说明',
  `type` varchar(32) NOT NULL COMMENT '软件类别',
  `register_time` int(11) NOT NULL COMMENT '注册时间',
  `sn` varchar(64) NOT NULL COMMENT '注册码',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='已经安装了的软件' AUTO_INCREMENT=3 ;

--
-- 导出表中的数据 `bx_software`
--

INSERT INTO `bx_software` (`id`, `name`, `version`, `down_time`, `install_time`, `remark`, `type`, `register_time`, `sn`, `status`, `add_user_id`, `add_time`) VALUES
(2, 'soft002', '1.0', 21123263, 335332321, '', '', 0, '', 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `bx_table`
--

CREATE TABLE IF NOT EXISTS `bx_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '表名',
  `remark` varchar(128) NOT NULL COMMENT '备注',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='系统表管理' AUTO_INCREMENT=3 ;

--
-- 导出表中的数据 `bx_table`
--

INSERT INTO `bx_table` (`id`, `name`, `remark`, `status`, `add_user_id`, `add_time`) VALUES
(1, 'demo', '用来为建立模型设置的实例表，主要用于测试', 1, 0, '2012-11-21 10:53:53'),
(2, 'original_records', '水质取样分析原始记录', 1, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `bx_tip`
--

CREATE TABLE IF NOT EXISTS `bx_tip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(128) NOT NULL COMMENT '信息内容',
  `to_user_id` int(11) NOT NULL COMMENT '分配给用户',
  `callback_url` varchar(128) NOT NULL COMMENT '回调连接',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统提示信息' AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `bx_tip`
--


-- --------------------------------------------------------

--
-- 表的结构 `bx_uploadfile`
--

CREATE TABLE IF NOT EXISTS `bx_uploadfile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app` varchar(64) NOT NULL,
  `module` varchar(64) NOT NULL,
  `file_path` varchar(256) NOT NULL COMMENT '相于对根目录的路径',
  `add_user_id` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传的文件数据表' AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `bx_uploadfile`
--


-- --------------------------------------------------------

--
-- 表的结构 `bx_user`
--

CREATE TABLE IF NOT EXISTS `bx_user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(64) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `bind_account` varchar(50) NOT NULL,
  `last_login_time` int(11) unsigned DEFAULT '0',
  `last_login_ip` varchar(40) DEFAULT NULL,
  `login_count` mediumint(8) unsigned DEFAULT '0',
  `verify` varchar(32) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- 导出表中的数据 `bx_user`
--

INSERT INTO `bx_user` (`id`, `account`, `nickname`, `password`, `bind_account`, `last_login_time`, `last_login_ip`, `login_count`, `verify`, `email`, `remark`, `create_time`, `update_time`, `status`) VALUES
(1, 'admin', '管理员', '21232f297a57a5a743894a0e4a801fc3', '', 1362357080, '127.0.0.1', 1007, '8888', 'liu21st@gmail.com', '备注信息', 1222907803, 1326266696, 1),
(2, 'demo', '演示', 'fe01ce2a7fbac8fafaed7c982a04e229', '', 1362213588, '127.0.0.1', 92, '8888', 'test@163.com', 'gff', 1239783735, 1254325770, 1),
(3, 'member', '员工', 'aa08769cdcb26674c6706093503ff0a3', '', 1362359231, '127.0.0.1', 25, '', 'dffddf', 'dffddf', 1253514375, 1254325728, 1),
(4, 'leader', '领导', 'c444858e0aaeb727da73d2eae62321ad', '', 1348042709, '127.0.0.1', 29, '', '', '领导', 1253514575, 1254325705, 1),
(36, 'huangjianwen', '黄建文', '0192023a7bbd73250516f069df18b500', '', 1349856818, '127.0.0.1', 5, NULL, 'hjwtp2005@163.com', '测试用', 1349839471, 0, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `bx_yjs`
--
CREATE TABLE IF NOT EXISTS `bx_yjs` (
`id` int(11)
,`company_name` varchar(128)
,`file_num` varchar(64)
,`NO` varchar(64)
,`sbmc` varchar(64)
,`sbpz` varchar(64)
,`lbbh` varchar(64)
,`ccbh` varchar(64)
,`cl_date` varchar(64)
,`wtyj` varchar(1024)
,`jyry_name` varchar(64)
,`jyry_date` varchar(64)
,`jyjgjsfzr_name` varchar(64)
,`jyjgjsfzr_date` varchar(64)
,`sjdwjsr_name` varchar(64)
,`cljg` varchar(64)
,`sjdwzgfzr_name` varchar(64)
,`sjdwzgfzr_date` varchar(64)
,`add_user_id` int(11)
,`add_time` int(11)
);
-- --------------------------------------------------------

--
-- 表的结构 `oa_access`
--

CREATE TABLE IF NOT EXISTS `oa_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `pid` smallint(6) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `oa_access`
--

INSERT INTO `oa_access` (`role_id`, `node_id`, `level`, `pid`, `module`) VALUES
(2, 1, 1, 0, NULL),
(2, 40, 2, 1, NULL),
(2, 30, 2, 1, NULL),
(3, 1, 1, 0, NULL),
(2, 69, 2, 1, NULL),
(2, 50, 3, 40, NULL),
(3, 50, 3, 40, NULL),
(1, 50, 3, 40, NULL),
(3, 7, 2, 1, NULL),
(3, 39, 3, 30, NULL),
(2, 39, 3, 30, NULL),
(2, 49, 3, 30, NULL),
(4, 1, 1, 0, NULL),
(4, 2, 2, 1, NULL),
(4, 3, 2, 1, NULL),
(4, 4, 2, 1, NULL),
(4, 5, 2, 1, NULL),
(4, 6, 2, 1, NULL),
(4, 7, 2, 1, NULL),
(4, 11, 2, 1, NULL),
(5, 25, 1, 0, NULL),
(5, 51, 2, 25, NULL),
(1, 1, 1, 0, NULL),
(1, 39, 3, 30, NULL),
(1, 69, 2, 1, NULL),
(1, 30, 2, 1, NULL),
(1, 40, 2, 1, NULL),
(1, 49, 3, 30, NULL),
(3, 69, 2, 1, NULL),
(3, 30, 2, 1, NULL),
(3, 40, 2, 1, NULL),
(1, 37, 3, 30, NULL),
(1, 36, 3, 30, NULL),
(1, 35, 3, 30, NULL),
(1, 34, 3, 30, NULL),
(1, 33, 3, 30, NULL),
(1, 32, 3, 30, NULL),
(1, 31, 3, 30, NULL),
(2, 32, 3, 30, NULL),
(2, 31, 3, 30, NULL),
(7, 1, 1, 0, NULL),
(7, 69, 2, 1, NULL),
(7, 40, 2, 1, NULL),
(7, 30, 2, 1, NULL),
(7, 90, 3, 40, NULL),
(7, 39, 3, 30, NULL),
(7, 49, 3, 30, NULL),
(8, 1, 1, 0, NULL),
(9, 1, 1, 0, NULL),
(9, 6, 2, 1, NULL),
(9, 7, 2, 1, NULL),
(9, 69, 2, 1, NULL),
(9, 30, 2, 1, NULL),
(9, 40, 2, 1, NULL),
(9, 49, 3, 30, NULL),
(9, 39, 3, 30, NULL),
(9, 37, 3, 30, NULL),
(9, 36, 3, 30, NULL),
(9, 35, 3, 30, NULL),
(9, 34, 3, 30, NULL),
(9, 2, 2, 1, NULL),
(7, 89, 3, 40, NULL),
(7, 88, 3, 40, NULL),
(7, 50, 3, 40, NULL),
(7, 91, 3, 40, NULL),
(7, 83, 2, 1, NULL),
(7, 84, 3, 83, NULL),
(7, 85, 3, 83, NULL),
(7, 86, 3, 83, NULL),
(7, 87, 3, 83, NULL),
(1, 88, 3, 40, NULL),
(1, 89, 3, 40, NULL),
(1, 90, 3, 40, NULL),
(1, 91, 3, 40, NULL),
(2, 88, 3, 40, NULL),
(2, 89, 3, 40, NULL),
(2, 90, 3, 40, NULL),
(2, 91, 3, 40, NULL),
(8, 40, 2, 1, NULL),
(8, 30, 2, 1, NULL),
(8, 69, 2, 1, NULL),
(8, 7, 2, 1, NULL),
(8, 6, 2, 1, NULL),
(8, 2, 2, 1, NULL),
(8, 83, 2, 1, NULL),
(8, 50, 3, 40, NULL),
(8, 88, 3, 40, NULL),
(8, 89, 3, 40, NULL),
(8, 90, 3, 40, NULL),
(8, 91, 3, 40, NULL),
(9, 91, 3, 40, NULL),
(9, 90, 3, 40, NULL),
(9, 89, 3, 40, NULL),
(9, 88, 3, 40, NULL),
(9, 50, 3, 40, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `oa_company`
--

CREATE TABLE IF NOT EXISTS `oa_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(64) NOT NULL COMMENT '企业名称',
  `one_no_pass_date` varchar(11) NOT NULL COMMENT '第一次不合格日期',
  `tow_no_pass` varchar(11) NOT NULL COMMENT '第二次不合格日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='企业列表信息' AUTO_INCREMENT=248 ;

--
-- 导出表中的数据 `oa_company`
--

INSERT INTO `oa_company` (`id`, `company_name`, `one_no_pass_date`, `tow_no_pass`) VALUES
(14, '连南县鹿鸣茧丝绸有限责任公司', '2013-01-22', '111'),
(3, '广东信宏包装实业有限公司', '', ''),
(13, '阳山县同兴铜材有限公司', '', ''),
(7, '英德市大信茧丝绸有限公司', '2012-12-25', ''),
(8, '清远市中拓染整有限公司', '', ''),
(9, '清远市恒丰泰染整有限公司', '2012-11-08', '2012-11-07'),
(10, '清远市中拓染整有限公司', '', ''),
(11, '清城区石角镇兴旺电解铜厂', '', ''),
(12, '宏升（清远）金属有限公司', '2012-10-19', '2012-12-21'),
(15, '连州市协诚毛巾制造有限公司', '2012-12-04', '2013-01-22'),
(16, '佑丰（佛冈）印染有限公司', '2012-12-10', '2012-12-10'),
(17, '晋勇（清远）橡胶工业有限公司', '2012-11-14', ''),
(18, '雅辉（清远）纸品有限公司', '', ''),
(19, '万裕（清新）塑胶制品有限公司', '', ''),
(20, '中粮广东天然五谷食品有限公司', '', ''),
(21, '英德龙山水泥有限责任公司', '', ''),
(167, '清新县山塘镇恒洁干洗服务部', '2012-11-15', '2013-01-29'),
(22, '龙玮（佛冈）纺织有限公司', '', ''),
(23, '佛冈篁胜国际温泉花园有限公司', '2012-11-12', ''),
(24, '佛冈顺亚纺织染整有限公司', '', ''),
(25, '英德市永发蚕业有限公司', '2012-12-31', ''),
(26, '阳山新润兴陶瓷色料实业有限公司', '', ''),
(27, '阳山顺龙木业有限公司', '2012-12-04', ''),
(28, '阳山县灰砂砖厂', '2012-12-04', ''),
(29, '佛冈龙清电力器材公司', '', ''),
(30, '添富（清远）体育用品有限公司', '2012-12-10', '2012-12-10'),
(31, '广东博华陶瓷有限公司', '2012-11-26', ''),
(32, '佛冈县三门再生纸厂', '2012-12-10', '2012-12-10'),
(33, '东溢（佛冈）特种钢制造有限公司', '2012-11-26', '2012-11-26'),
(34, '清远加多宝草本植物科技有限公司', '2012-12-27', ''),
(35, '广东佛冈新元科技有限公司', '2012-12-10', '2012-12-10'),
(36, '佛冈县建滔实业有限公司', '', ''),
(37, '英德浛洸创盟洗涤厂', '2013-01-31', ''),
(38, '英德市昊晟金属塑料制品有限公司', '', ''),
(39, '同进（英德）纺织品有限公司', '2012-12-30', '2012-12-30'),
(40, '东溢（佛冈）特种钢制造有限公司', '', ''),
(41, '英德龙山水泥有限责任公司', '', ''),
(42, '英德龙山水泥有限责任公司', '', ''),
(43, '台泥（英德）水泥有限公司', '', ''),
(44, '广东华农温氏畜牧股份有限公司英德分公司', '2012-12-31', ''),
(45, '英德市粮香大酒店', '', ''),
(46, '英德市云超聚合材料有限公司', '2012-12-25', ''),
(47, '巧口（英德）食品有限公司', '2012-12-25', '2012-12-25'),
(48, '英德市三友木业有限公司', '2012-12-31', ''),
(49, '英德市权祥凉茶有限公司', '2012-12-31', ''),
(50, '英德市鸿德食品有限公司', '2012-12-26', ''),
(51, '英德广农康盛化工有限公司', '2012-12-06', '2012-12-06'),
(52, '含光镇金城时代制衣厂', '2012-12-30', ''),
(53, '英德市宝江水泥有限责任公司', '', ''),
(54, '英德市宝江水泥有限责任公司', '2012-12-24', '2012-12-24'),
(55, '英德市浛洸镇雅宜洗涤制衣厂', '2012-12-30', ''),
(56, '浛洸镇荣华制衣一厂', '2012-12-30', ''),
(57, '步威（清远）皮革有限公司', '2012-10-17', '2012-12-14'),
(58, '清远市石角镇佑丰印染织造厂', '', ''),
(59, '清远市永裕实业有限公司', '2012-10-17', '2012-12-14'),
(60, '日丰（清远）电子有限公司', '', ''),
(61, '日丰（清远）电子有限公司', '', ''),
(62, '日丰（清远）电子有限公司', '', ''),
(63, '亿盈（清远）发泡材料有限公司', '', ''),
(64, '佛冈冠华纸塑包装有限公司', '2012-10-19', '2013-01-07'),
(65, '兆联（清远）纺织印染有限公司', '2013-01-07', '2013-01-07'),
(66, '清远市永嘉洗涤有限公司', '2013-01-08', '2013-01-08'),
(67, '英德海螺水泥有限责任公司', '', ''),
(68, '清远市广州后花园有限公司（清远美林湖酒店）', '', ''),
(69, '山美（清远）五金织带制品有限公司', '2012-10-19', '2012-10-19'),
(70, '清远市东上钢业有限公司', '', ''),
(71, '清远忠信世纪玻纤有限公司', '', ''),
(72, '英德市隆盛金属有限公司', '', ''),
(73, '清城区石角镇田心恒生饲料加工厂', '', ''),
(208, '英德佳纳金属科技有限公司', '2012-12-30', ''),
(74, '广东双汇食品有限公司', '2013-01-28', '2013-01-28'),
(75, '合信(清远)鞋材有限公司', '2012-10-28', ''),
(76, '英德广农康盛化工有限公司', '', ''),
(77, '广东信宏包装实业有限公司', '', ''),
(78, '广东信宏包装实业有限公司', '', ''),
(79, '慕达包装工业（清远）有限公司', '', ''),
(80, '清远市裕成鞋材有限公司', '2012-10-30', '2013-01-16'),
(81, '万邦（清新）鞋业有限公司', '2013-01-22', ''),
(82, '清新县汉科化工科技有限公司', '', ''),
(83, '广东华农温氏畜牧股份有限公司清新分公司', '', ''),
(84, '清远万家丽针织印染有限公司', '', ''),
(85, '清远市亨健医用橡胶有限公司', '', ''),
(86, '清远市步步高酒店管理有限公司', '2013-01-16', ''),
(87, '清远市酒厂有限公司', '2013-01-16', ''),
(88, '清远市汉铿物业发展有限公司', '2013-01-08', '2013-01-08'),
(89, '清远先锋制衣有限公司', '2013-01-30', '2013-01-08'),
(90, '骏达（清远）制衣有限公司', '2013-01-08', '2013-01-08'),
(91, '清远市清城区振威皮革厂清新分厂', '2012-10-26', '2013-01-06'),
(92, '清远市振威皮革有限公司', '2012-10-26', '2013-01-06'),
(93, '清远市清城区横荷裕威鞋材厂', '2012-10-29', '2013-01-29'),
(94, '清远宏盛纺织印染有限公司', '', ''),
(95, '柏美国际（清远）化妆品制造有限公司', '2012-10-29', '2012-10-29'),
(96, '蒙牛乳业（清远）有限公司', '2013-01-29', '2013-01-29'),
(97, '清远市灵捷制造化工有限公司', '2013-01-29', ''),
(98, '清远市益丰染织有限公司', '2012-10-29', '2013-01-09'),
(99, '清远市百盛染织有限公司', '', ''),
(100, '清远市德和染整有限公司', '2013-01-29', ''),
(101, '新益（清远）织染整有限公司', '2013-01-09', ''),
(102, '清远市上兴人造板有限公司', '2012-10-29', '2012-10-29'),
(103, '清远市鑫辉化工有限公司', '', ''),
(104, '清远市嘉博制药有限公司', '2012-10-29', '2013-01-28'),
(105, '清远市万鑫包装保温材料有限公司', '', ''),
(106, '清远震兴农产品有限公司', '', ''),
(107, '清远市大昌食品有限公司', '2012-10-26', '2013-01-28'),
(108, '清远市清城区君康餐具消毒中心', '2012-10-26', '2013-01-28'),
(109, '诚展（清远）鞋业有限公司', '2012-10-26', '2013-01-29'),
(110, '清远市金正饲料有限公司', '2013-02-17', ''),
(111, '濠国鞋材（清远）有限公司', '2012-10-26', '2012-10-26'),
(112, '清远市千百丽纺织印染有限公司', '', ''),
(113, '清远市雅克化工有限公司', '', ''),
(114, '清远市青山不锈钢有限公司', '2012-10-26', '2012-10-26'),
(155, '清新县金丰纺织漂染定型厂', '', ''),
(115, '英德市含光镇天翔制衣厂', '2012-11-02', '2012-12-31'),
(116, '广东中骏上原汽车零部件有限公司', '2012-11-02', '2012-11-02'),
(117, '清新县太平清叶木厂', '2012-11-02', ''),
(118, '清远市兴发洗水厂', '2012-11-02', '2013-01-29'),
(119, '清远市清城区钜洋洗水厂', '2012-11-02', '2013-01-28'),
(120, '清远市海贝生物技术有限公司', '2012-11-02', ''),
(121, '清远市恒建环保建材有限公司', '', ''),
(122, '国荣（清远）橡胶工业有限公司', '2012-11-02', ''),
(123, '清远镇宇染整有限公司', '', ''),
(124, '清远双江颜料有限公司', '2012-11-02', '2013-01-28'),
(125, '新安天玉有机硅有限公司', '2012-11-02', ''),
(126, '恒昌（清远）纸业有限公司', '', ''),
(127, '清新县新鸿基染整有限公司', '2012-11-05', '2013-01-17'),
(128, '清远镇宇金丰染整有限公司', '2012-11-05', ''),
(129, '清新县昊元新型墙体砖厂', '2012-11-05', '2013-01-23'),
(130, '广东博众建材科技发展有限公司', '', ''),
(131, '清远市广丰食品有限公司', '2012-11-05', ''),
(132, '清远市光宇建筑材料有限公司', '2012-11-05', ''),
(133, '威登制衣（清远）有限公司', '', ''),
(134, '广东聚石化学股份有限公司', '2012-11-05', ''),
(135, '清远市桦生木业有限公司', '2012-11-05', ''),
(136, '清远市广德制衣有限公司', '', ''),
(137, '（钟友华）清远市福泰甘油精制有限公司', '2012-11-07', '2012-11-07'),
(138, '清新县顺景染织厂', '', ''),
(139, '清远市粤北之珠海鲜坊有限公司', '', ''),
(140, '清远盛兴中英文学校', '', ''),
(141, '清远市喜来登国际酒店', '2012-11-08', ''),
(142, '清远市峻兴管桩有限公司', '2012-11-08', ''),
(143, '清远市佳利乐包装有限公司', '', ''),
(144, '广东天弼陶瓷有限公司', '2012-11-08', ''),
(145, '清远南方建材卫浴有限公司', '2012-11-08', ''),
(146, '广东家美陶瓷有限公司', '2012-11-08', ''),
(147, '佛冈县石角镇国清包装经营部', '2012-11-12', ''),
(148, '佛冈县森波拉度假森林有限公司', '2012-11-12', ''),
(149, '佛冈县南海食街', '2012-11-12', ''),
(150, '东新（佛冈）温泉开发有限公司', '', ''),
(151, '佛冈县丰裕毛巾厂', '2012-11-12', ''),
(152, '广东华农温氏畜牧股份有限公司佛冈分公司', '2012-11-12', ''),
(153, '清远国际酒店有限公司', '', ''),
(154, '佛冈县天和橡胶有限公司', '2012-11-12', ''),
(156, '清远市信和实业有限公司', '', ''),
(157, '清远市清城区龙塘顺年漂染厂', '', ''),
(158, '清远市凯捷电源有限公司', '2012-11-16', ''),
(159, '清远市榕兴新型环保建材有限责任公司', '', ''),
(160, '丽珠集团新北江制药股份有限公司', '2012-11-13', '2013-01-16'),
(161, '清远广正大陶瓷洗涤原料有限公司', '2012-11-15', ''),
(162, '清远市简一陶瓷有限公司', '2012-11-14', '2012-11-14'),
(163, '清新县嘉亿塑料厂', '2012-11-14', ''),
(164, '广东天农食品有限公司', '2012-11-14', ''),
(165, '杨志锋（清新县太平镇河粉厂）', '2012-11-15', ''),
(166, '清远建滔裕花园酒店有限公司（原丽晶国际大酒店）', '2012-11-13', '2013-01-16'),
(168, '英德市良仕工业材料有限公司', '', ''),
(169, '英德市望埠镇铁厂', '2012-11-21', ''),
(170, '佛冈金冠水玻璃有限责任公司', '2012-11-26', '2012-11-26'),
(171, '雅辉（清远）纸品有限公司', '', ''),
(172, '富元（清新）服饰有限公司', '2012-11-26', '2013-01-09'),
(173, '汇康荧光（清远）科技有限公司', '', ''),
(174, '佛冈盈泰纺织品染整有限公司', '', ''),
(175, '连州市顺达大酒店', '2012-12-05', '2013-01-22'),
(176, '广东明华机械有限公司连南分公司', '2012-12-04', '2013-01-23'),
(177, '阳山县永丰制衣厂', '2012-12-04', '2013-01-22'),
(178, '连州市强龙家俱木材加工有限公司', '2012-12-04', '2013-01-23'),
(179, '连南奇乡生物科技有限公司', '', ''),
(180, '广东华农温氏畜牧股份有限公司连州分公司', '2013-01-23', ''),
(181, '建滔（清远）玻璃纤维有限公司', '', ''),
(182, '阳山联益洗涤制衣厂', '2012-12-04', '2013-01-22'),
(183, '阳山县洪辉新型环保建材有限责任公司', '2012-12-05', '2012-12-24'),
(184, '连州市联发造纸有限公司', '2013-01-23', ''),
(185, '阳山县伟达化工有限公司', '2012-12-05', '2013-01-22'),
(186, '连州市海斌食品有限公司', '2012-12-05', '2013-01-23'),
(187, '连南利发毛织厂有限公司', '2012-12-05', '2013-01-22'),
(188, '连南县三江镇森鑫木制品厂', '2012-12-05', '2013-01-23'),
(189, '阳山县阳星松香发展有限公司', '2012-12-05', ''),
(190, '连州市骏成木业有限公司', '2012-12-05', '2013-01-22'),
(191, '清新县宏力达塑料有限公司', '2012-12-06', '2012-12-06'),
(192, '清远市新绿环境科技有限公司', '2012-12-06', ''),
(193, '清远市江丰饲料有限公司', '2012-12-06', '2013-01-29'),
(194, '清远宪友兴业有限公司', '', ''),
(195, '松德丰（清远）食品有限公司', '2012-12-06', '2013-01-23'),
(196, '清远冠龙纺织染整厂', '', ''),
(197, '清远瀚江玻璃棉科技有限公司', '2012-12-06', ''),
(198, '建滔（连州）铜铂有限公司', '2013-01-22', ''),
(199, '清远市威利邦木业有限公司', '', ''),
(200, '清远纳福娜陶瓷有限公司', '2012-12-13', '2012-12-13'),
(201, '清远市欧雅陶瓷有限公司', '', ''),
(202, '广东清远蒙娜丽莎建陶有限公司', '2012-12-13', '2012-12-13'),
(203, '清远市清城区石角镇佑丰印染织造厂', '2012-12-14', '2012-12-14'),
(204, '清远市协荣塑胶制品有限公司', '2013-01-25', '2013-01-25'),
(205, '清新县荣诚物业有限公司', '2013-01-28', '2013-01-28'),
(206, '清新县金联塑料厂', '2012-12-25', '2012-12-25'),
(207, '英德市汀汀水上乐园', '2012-12-30', '2012-12-30'),
(209, '浛洸镇荣华制衣一厂', '', ''),
(210, '英德市实益长丰纺织有限公司', '2012-12-31', ''),
(211, '英德市贵兴林业开发有限公司', '2012-12-31', ''),
(212, '英德市粤北糖业有限公司', '', ''),
(213, '三耀（英德）礼品包装有限公司', '2012-12-31', ''),
(214, '英德市大站镇日日新洗衣店', '2012-12-30', ''),
(215, '英德市岳泉化工有限公司', '2012-12-30', ''),
(216, '英德联益洗涤有限公司', '', ''),
(217, '广东致远新材料有限公司', '', ''),
(218, '英德市海螺国际大酒店', '2012-12-30', ''),
(219, '广东省华农温氏畜牧股份有限公司英州分公司', '2012-12-31', '2012-12-30'),
(220, '英德龙山水泥有限责任公司', '', ''),
(221, '英德和兴灰砂砖厂', '2012-12-30', ''),
(222, '英德市永富塑料制品厂', '2012-12-30', ''),
(223, '清远市升华建陶有限公司', '2012-12-24', '2012-12-24'),
(224, '广东新一派建材有限公司', '2012-12-24', ''),
(225, '广东英超陶瓷有限公司', '2012-12-24', '2012-12-24'),
(226, '清远市天域陶瓷有限公司', '', ''),
(227, '清远市坚瓷陶瓷有限公司', '2012-12-24', ''),
(228, '清远市俊成陶瓷有限公司', '', ''),
(229, '广东昊晟陶瓷有限公司', '2012-12-24', '2012-12-24'),
(230, '清远市港龙陶瓷有限公司', '', ''),
(231, '清远市宝仕马陶瓷有限公司', '', ''),
(232, '广东汇翔陶瓷有限公司', '2012-12-24', '2012-12-24'),
(233, '清远市贝斯特瓷业有限公司', '', ''),
(234, '英德市英城新雄新型建筑材料厂', '2012-12-25', ''),
(235, '广东清远广英水泥有限公司', '', ''),
(236, '英德市海淋种植有限公司', '2012-12-26', ''),
(237, '清新县禾云镇龙腾鞋底加工厂', '2012-12-25', ''),
(238, '清新县禾云镇创兴灰砂砖厂', '', ''),
(239, '清新海螺水泥有限公司', '', ''),
(240, '清新海螺水泥有限公司', '', ''),
(241, '恒大盛宇(清新)置业有限公司', '', ''),
(242, '广东清远广英水泥有限公司', '', ''),
(243, '清新县浸潭灰沙砖厂', '2012-12-25', ''),
(244, '清远先导稀有金属有限公司', '', ''),
(245, '清新县龙基环保砖有限公司', '2012-12-26', ''),
(246, '清新县振业模具钢制品有限公司', '2012-12-26', ''),
(247, '清远市万豪特陶瓷有限公司', '2012-12-26', '');

-- --------------------------------------------------------

--
-- 表的结构 `oa_group`
--

CREATE TABLE IF NOT EXISTS `oa_group` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `title` varchar(50) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 导出表中的数据 `oa_group`
--

INSERT INTO `oa_group` (`id`, `name`, `title`, `create_time`, `update_time`, `status`, `sort`, `show`) VALUES
(2, 'App', '清远市质监中心', 1222841259, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oa_groups`
--

CREATE TABLE IF NOT EXISTS `oa_groups` (
  `id` mediumint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 导出表中的数据 `oa_groups`
--

INSERT INTO `oa_groups` (`id`, `name`) VALUES
(1, '项目组1'),
(2, '项目组2'),
(3, '项目组3');

-- --------------------------------------------------------

--
-- 表的结构 `oa_node`
--

CREATE TABLE IF NOT EXISTS `oa_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- 导出表中的数据 `oa_node`
--

INSERT INTO `oa_node` (`id`, `name`, `title`, `status`, `remark`, `sort`, `pid`, `level`, `type`, `group_id`) VALUES
(49, 'read', '查看', 1, '', NULL, 30, 3, 0, 0),
(40, 'index', '后台框架', 1, '', 1, 1, 2, 0, 0),
(39, 'index', '列表', 1, '', NULL, 30, 3, 0, 0),
(37, 'resume', '恢复', 1, '', NULL, 30, 3, 0, 0),
(36, 'forbid', '禁用', 1, '', NULL, 30, 3, 0, 0),
(35, 'foreverdelete', '删除', 1, '', NULL, 30, 3, 0, 0),
(34, 'update', '更新', 1, '', NULL, 30, 3, 0, 0),
(33, 'edit', '编辑', 1, '', NULL, 30, 3, 0, 0),
(32, 'insert', '写入', 1, '', NULL, 30, 3, 0, 0),
(31, 'add', '新增', 1, '', NULL, 30, 3, 0, 0),
(30, 'public', '公共模块', 1, '主要用于登录', 2, 1, 2, 0, 0),
(69, 'Form', '数据管理', 1, '', 1, 1, 2, 0, 2),
(7, 'user', '管理员管理', 1, '', 4, 1, 2, 0, 2),
(6, 'role', '角色管理', 1, '', 3, 1, 2, 0, 2),
(2, 'Node', '节点管理', 1, '', 2, 1, 2, 0, 2),
(1, 'ZHIJIAN', '办公系统', 1, '', NULL, 0, 1, 0, 0),
(50, 'main', '框架主页面', 1, '', NULL, 40, 3, 0, 0),
(83, 'report', '报告管理', 1, '报告管理-》报告列表', NULL, 1, 2, 0, 2),
(84, 'add', '添加报告', 1, '报告管理-》添加报告', NULL, 83, 3, 0, 2),
(85, 'index', '报告列表', 1, '报告管理-》报告列表', NULL, 83, 3, 0, 2),
(86, 'edit', '修改报告', 1, '包括检验员、审核和审批功能', NULL, 83, 3, 0, 2),
(87, 'show', '查看报告', 1, '报告管理-》查看报告', NULL, 83, 3, 0, 2),
(88, 'index', '框架主体', 1, NULL, NULL, 40, 3, 0, 0),
(89, 'top', '框架头部', 1, NULL, NULL, 40, 3, 0, 0),
(90, 'menu', '框架左边菜单', 1, NULL, NULL, 40, 3, 0, 0),
(91, 'drag', '框架中间分隔栏', 1, NULL, NULL, 40, 3, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oa_quyang`
--

CREATE TABLE IF NOT EXISTS `oa_quyang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quyang_num` varchar(64) NOT NULL COMMENT '取样单号',
  `company_name` varchar(64) NOT NULL COMMENT '使用单位',
  `do_type` varchar(64) NOT NULL,
  `syzh` varchar(64) NOT NULL COMMENT '锅炉使用证号 ',
  `quyang_date` varchar(64) NOT NULL COMMENT '取样日期 ',
  `quyang_user` varchar(64) NOT NULL COMMENT '取样人',
  `belong_month` char(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='采样单列表' AUTO_INCREMENT=107 ;

--
-- 导出表中的数据 `oa_quyang`
--

INSERT INTO `oa_quyang` (`id`, `quyang_num`, `company_name`, `do_type`, `syzh`, `quyang_date`, `quyang_user`, `belong_month`) VALUES
(1, '201209001', '广东信宏包装实业有限公司', '', '锅粤RW0008', '2012-09-08', '管理员', '201209'),
(2, '201209001', '广东信宏包装实业有限公司', '', '锅粤RW0008', '2012-09-08', '管理员', '201209'),
(3, '201209002', '晋勇（清远）橡胶工业有限公司', '', '锅粤RA1017', '2012-09-05', '崔宁', '201209'),
(4, '201209003', '清城区石角镇兴旺电解铜厂', '', '锅粤RO0483', '2012-09-05', '崔宁', '201209'),
(5, '201209004', '万裕（清新）塑胶制品有限公司', '', '11204418002006110001', '2012-09-10', '崔宁', '201209'),
(6, '201209005', '晋勇（清远）橡胶工业有限公司', '', '11204418002010070003', '2012-09-10', '崔宁', '201209'),
(7, '201209006', '晋勇（清远）橡胶工业有限公司', '', '11204418002010070003', '', '管理员', '201209'),
(8, '201209007', '万裕（清新）塑胶制品有限公司', '', '11204418002006110001', '', '管理员', '201209'),
(9, '201209008', '龙玮（佛冈）纺织有限公司', '', '11204418002009110001', '2012-09-01', '崔宁', '201209'),
(10, '201301001', '新益（清远）织染整有限公司', '流动床', '11204418002007030003', '2013-01-09', '曾燕芬', '201301'),
(11, '201301002', '清远市益丰染织有限公司', '浮动床', '11204418002006080005', '2013-01-09', '曾燕芬', '201301'),
(12, '201301003', '清远市百盛染织有限公司', '流动床', '11204418002002120444', '2013-01-09', '曾燕芬', '201301'),
(13, '201301004', '富元（清新）服饰有限公司', '浮动床', '11204418002010110013', '2013-01-09', '崔宁', '201301'),
(14, '201301005', '丽珠集团新北江制药股份有限公司', '流动床', '11204418002002040202', '2013-01-15', '陈红彩', '201301'),
(15, '201301006', '丽珠集团新北江制药股份有限公司', '流动床', '11204418002002040199', '2013-01-15', '陈红彩', '201301'),
(16, '201301007', '清远市裕成鞋材有限公司', '浮动床', '11204418002008110001', '2013-01-15', '陈红彩', '201301'),
(17, '201301008', '清远市粤北之珠海鲜坊有限公司', '浮动床', '11204418002012010006', '2013-01-15', '陈红彩', '201301'),
(18, '201301009', '清远建滔裕花园酒店有限公司（原丽晶国际大酒店）', '锅外化学处理', '11204418002007080017', '2013-01-15', '陈红彩', '201301'),
(19, '201301010', '清远市步步高酒店管理有限公司', '浮动床', '11204418002009080005', '2013-01-15', '曾燕芬', '201301'),
(20, '201301011', '清远市酒厂有限公司', '浮动床', '11204418002007100006', '2013-01-15', '曾燕芬', '201301'),
(21, '201301012', '清远市亨健医用橡胶有限公司', '浮动床', '11204418002002040152', '2013-01-15', '曾燕芬', '201301'),
(22, '201301013', '清远市广德制衣有限公司', '锅内加药', '11204418002002040213', '2013-01-15', '曾燕芬', '201301'),
(23, '201301014', '清远市广德制衣有限公司', '锅内加药', '11204418002002040213', '2013-01-15', '曾燕芬', '201301'),
(24, '201301015', '清远市酒厂有限公司', '浮动床', '11204418002007100006', '2013-01-15', '曾燕芬', '201301'),
(25, '201301016', '清远市步步高酒店管理有限公司', '浮动床', '11204418002009080005', '2013-01-15', '曾燕芬', '201301'),
(26, '201301017', '清远市亨健医用橡胶有限公司', '浮动床', '11204418002002040152', '2013-01-15', '曾燕芬', '201301'),
(27, '201301018', '清远市金正饲料有限公司', '浮动床', '11204418002007010002', '2013-01-15', '曾燕芬', '201301'),
(28, '201301019', '清新县新鸿基染整有限公司', '流动床', '11204418002006070014', '2013-01-15', '曾燕芬', '201301'),
(29, '201301020', '连南奇乡生物科技有限公司', '浮动床', '11204418002006050014', '2013-01-18', '崔宁', '201301'),
(30, '201301020', '连南奇乡生物科技有限公司', '浮动床', '11204418002006050014', '2013-01-18', '崔宁', '201301'),
(31, '201301021', '广东明华机械有限公司连南分公司', '浮动床', '11204418002002040029', '2013-01-18', '曾燕芬', '201301'),
(32, '201301022', '连南利发毛织厂有限公司', '浮动床', '11204418002011120003', '2013-01-18', '曾燕芬', '201301'),
(33, '201301023', '连南县三江镇森鑫木制品厂', '浮动床', '11204418002009030009', '2013-01-18', '曾燕芬', '201301'),
(34, '201301024', '阳山县同兴铜材有限公司', '浮动床', '11204418002008010011', '2013-01-18', '曾燕芬', '201301'),
(35, '201301025', '阳山新润兴陶瓷色料实业有限公司', '', '', '2013-01-18', '曾燕芬', '201301'),
(36, '201301026', '阳山县永丰制衣厂', '浮动床', '11204418002006010004', '2013-01-18', '曾燕芬', '201301'),
(37, '201301027', '阳山联益洗涤制衣厂', '浮动床', '11204418002008010012', '2013-01-18', '曾燕芬', '201301'),
(38, '201301028', '阳山县伟达化工有限公司', '流动床', '11204418002002040017', '2013-01-18', '曾燕芬', '201301'),
(39, '201301021', '广东明华机械有限公司连南分公司', '浮动床', '11204418002002040029', '2013-01-18', '曾燕芬', '201301'),
(40, '201301022', '连南利发毛织厂有限公司', '浮动床', '11204418002011120003', '2013-01-18', '曾燕芬', '201301'),
(41, '201301023', '连南县三江镇森鑫木制品厂', '浮动床', '11204418002009030009', '2013-01-18', '曾燕芬', '201301'),
(42, '201301024', '阳山县同兴铜材有限公司', '浮动床', '11204418002008010011', '2013-01-18', '曾燕芬', '201301'),
(43, '201301025', '阳山新润兴陶瓷色料实业有限公司', '', '', '2013-01-18', '曾燕芬', '201301'),
(44, '201301026', '阳山县永丰制衣厂', '浮动床', '11204418002006010004', '2013-01-18', '曾燕芬', '201301'),
(45, '201301027', '阳山联益洗涤制衣厂', '浮动床', '11204418002008010012', '2013-01-18', '曾燕芬', '201301'),
(46, '201301028', '阳山县伟达化工有限公司', '流动床', '11204418002002040017', '2013-01-18', '曾燕芬', '201301'),
(47, '201301029', '连南县鹿鸣茧丝绸有限责任公司', '浮动床', '11204418002002040033', '2013-01-18', '曾燕芬', '201301'),
(48, '201301030', '连南奇乡生物科技有限公司', '浮动床', '11204418002006050014', '2013-01-18', '曾燕芬', '201301'),
(49, '201301031', '广东明华机械有限公司连南分公司', '浮动床', '11204418002002040029', '2013-01-18', '曾燕芬', '201301'),
(50, '201301032', '连南利发毛织厂有限公司', '浮动床', '11204418002011120003', '2013-01-18', '曾燕芬', '201301'),
(51, '201301033', '连南县三江镇森鑫木制品厂', '浮动床', '11204418002009030009', '2013-01-18', '曾燕芬', '201301'),
(52, '201301034', '阳山县同兴铜材有限公司', '浮动床', '11204418002008010011', '2013-01-18', '曾燕芬', '201301'),
(53, '201301035', '阳山新润兴陶瓷色料实业有限公司', '', '', '2013-01-18', '曾燕芬', '201301'),
(54, '201301036', '阳山县永丰制衣厂', '浮动床', '11204418002006010004', '2013-01-18', '曾燕芬', '201301'),
(55, '201301037', '阳山联益洗涤制衣厂', '浮动床', '11204418002008010012', '2013-01-18', '曾燕芬', '201301'),
(56, '201301038', '阳山县伟达化工有限公司', '流动床', '11204418002002040017', '2013-01-18', '曾燕芬', '201301'),
(57, '201301039', '万邦（清新）鞋业有限公司', '浮动床', '11204418002007090009', '2013-01-21', '曾燕芬', '201301'),
(58, '201301040', '清新县先导稀有金属有限公司', '', '', '2013-01-22', '崔宁', '201301'),
(59, '201301041', '清新县昊元新型墙体砖厂', '浮动床', '11204418002010090003', '2013-01-22', '曾燕芬', '201301'),
(60, '201301042', '清远市佳洁洗涤有限公司', '', '', '2013-01-22', '曾燕芬', '201301'),
(61, '201301042', '清远市佳洁洗涤有限公司', '', '', '2013-01-22', '曾燕芬', '201301'),
(62, '201301043', '松德丰（清远）食品有限公司', '浮动床', '11204418002002040133', '2013-01-22', '曾燕芬', '201301'),
(63, '201301044', '清远双江颜料有限公司', '流动床', '--', '2013-01-22', '曾燕芬', '201301'),
(64, '201301045', '清远冠龙纺织染整厂', '流动床', '11204418002002110419', '2013-01-22', '曾燕芬', '201301'),
(65, '201301046', '连南县三江镇森鑫木制品厂', '浮动床', '11204418002009030009', '2013-01-22', '崔宁', '201301'),
(66, '201301047', '恒昌（清远）纸业有限公司', '浮动床', '11204418002006060015', '2013-01-22', '曾燕芬', '201301'),
(67, '201301047', '恒昌（清远）纸业有限公司', '浮动床', '11204418002006060015', '2013-01-22', '曾燕芬', '201301'),
(68, '201301048', '广东双汇食品有限公司', '浮动床', '11204418002005010009', '2013-01-22', '崔宁', '201301'),
(69, '201301049', '清新县荣诚物业有限公司', '', '', '2013-01-22', '崔宁', '201301'),
(70, '201301050', '清远市大昌食品有限公司', '浮动床', '11204418002009090015', '2013-01-22', '曾燕芬', '201301'),
(71, '201301050', '清远市大昌食品有限公司', '浮动床', '11204418002009090015', '2013-01-22', '曾燕芬', '201301'),
(72, '201301051', '清远宪友兴业有限公司', '浮动床', '11204418002010090001', '2013-01-22', '曾燕芬', '201301'),
(73, '201301052', '清新县太和镇百德洗涤厂', '', '', '2013-01-22', '曾燕芬', '201301'),
(74, '201301053', '连州市明丰农产品发展有限公司', '', '', '2013-01-18', '曾燕芬', '201301'),
(75, '201301054', '广东双汇食品有限公司', '浮动床', '11204418002005010010', '2013-01-24', '崔宁', '201301'),
(76, '201301055', '广东双汇食品有限公司', '浮动床', '11204418002005010011', '2013-01-24', '崔宁', '201301'),
(77, '201301056', '清新县荣诚物业有限公司', '浮动床', '11304418002009020001', '2013-01-24', '崔宁', '201301'),
(78, '201301057', '清新县荣诚物业有限公司', '浮动床', '11304418002009020002', '2013-01-24', '崔宁', '201301'),
(79, '201301058', '清远市协荣塑胶制品有限公司', '浮动床', '11204418002005010002', '2013-01-24', '崔宁', '201301'),
(80, '201301059', '清远市协荣塑胶制品有限公司', '', '11204418002004020628', '2013-01-24', '崔宁', '201301'),
(81, '201301060', '清远震兴农产品有限公司', '浮动床', '11204418002007060005', '2013-01-24', '崔宁', '201301'),
(82, '201301061', '清远市兴发洗水厂', '浮动床', '11204418002003020462', '2013-01-24', '崔宁', '201301'),
(83, '201301062', '清新县山塘镇恒洁干洗服务部', '浮动床', '11204418002012050002', '2013-01-24', '崔宁', '201301'),
(84, '201301063', '清远市江丰饲料有限公司', '浮动床', '11204418002007060001', '2013-01-24', '崔宁', '201301'),
(85, '201301064', '清远市清城区钜洋洗水厂', '浮动床', '11204418002003120595', '2013-01-24', '崔宁', '201301'),
(86, '201301065', '清远市清城区君康餐具消毒中心', '浮动床', '11204418002008050004', '2013-01-24', '崔宁', '201301'),
(87, '201301066', '清新县宏图助剂有限公司', '浮动床', '11204418002008090011', '2013-01-24', '崔宁', '201301'),
(88, '201301067', '诚展（清远）鞋业有限公司', '浮动床', '11204418002007060010', '2013-01-24', '崔宁', '201301'),
(89, '201301068', '清远市嘉博制药有限公司', '浮动床', '11204418002005030002', '2013-01-04', '崔宁', '201301'),
(90, '201301069', '清远市鑫辉化工有限公司', '固定床', '11204418002006090010', '2013-01-04', '曾燕芬', '201301'),
(91, '201301070', '清远市清城区横荷裕威鞋材厂', '浮动床', '11204418002009080001', '2013-01-25', '曾燕芬', '201301'),
(92, '201301071', '蒙牛乳业（清远）有限公司', '浮动床', '11204418002010100004', '2013-01-25', '曾燕芬', '201301'),
(93, '201301072', '蒙牛乳业（清远）有限公司', '浮动床', '11204418002010100005', '2013-01-25', '曾燕芬', '201301'),
(94, '201301073', '清远市德和染整有限公司', '流动床', '11204418002002040219', '2013-01-25', '管理员', '201301'),
(95, '201301074', '清远市灵捷制造化工有限公司', '浮动床', '11204418002002100395', '2013-01-25', '曾燕芬', '201301'),
(96, '201301075', '清远震兴农产品有限公司', '浮动床', '11204418002007060005', '2013-01-25', '曾燕芬', '201301'),
(97, '201301076', '广东双汇食品有限公司', '浮动床', '11204418002005010009', '2013-01-25', '曾燕芬', '201301'),
(98, '201301077', '广东双汇食品有限公司', '浮动床', '11204418002005010010', '2013-01-25', '曾燕芬', '201301'),
(99, '201301078', '广东双汇食品有限公司', '浮动床', '11204418002005010011', '2013-01-25', '曾燕芬', '201301'),
(100, '201301079', '清远市协荣塑胶制品有限公司', '锅外处理（浮动床）', '11204418002004020628', '2013-01-25', '崔宁', '201301'),
(101, '201301080', '清远市协荣塑胶制品有限公司', '锅外处理（浮动床）', '11204418002004020628', '2013-01-25', '崔宁', '201301'),
(102, '201301081', '清新县荣诚物业有限公司', '锅外处理（浮动床）', '11304418002009020002', '2013-01-25', '崔宁', '201301'),
(103, '201302001', '清远宏盛纺织印染有限公司', '浮动床', '11204418002006030003', '2013-02-25', '管理员', '201302'),
(104, '201302002', '清远宏盛纺织印染有限公司', '浮动床', '11204418002008010013', '2013-02-25', '曾燕芬', '201302'),
(105, '201302003', '清新县嘉亿塑料厂', '浮动床', '11204418002009110003', '2013-02-27', '曾燕芬', '201302'),
(106, '201302004', '广东天农食品有限公司', '浮动床', '11204418002003080531', '2013-02-27', '曾燕芬', '201302');

-- --------------------------------------------------------

--
-- 表的结构 `oa_report`
--

CREATE TABLE IF NOT EXISTS `oa_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL COMMENT '所属企业ID',
  `title` varchar(128) NOT NULL COMMENT '报告名称',
  `report_num` varchar(64) NOT NULL COMMENT '报告编号',
  `sydw` varchar(64) DEFAULT NULL COMMENT '使用单位',
  `sbpz` varchar(64) DEFAULT NULL COMMENT '设备品种',
  `sbyh` varchar(64) DEFAULT NULL COMMENT '设备型号',
  `sbdm` varchar(64) DEFAULT '—' COMMENT '设备代码',
  `jyrc` varchar(11) DEFAULT NULL COMMENT '检验日期',
  `belong_month` char(6) NOT NULL COMMENT '所属月份',
  `one_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '申请人',
  `one_time` int(11) NOT NULL DEFAULT '0' COMMENT '申请时间',
  `tow_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '审核人',
  `tow_time` int(11) NOT NULL DEFAULT '0' COMMENT '审核时间',
  `three_user_id` int(11) NOT NULL DEFAULT '0' COMMENT '复核人',
  `three_time` int(11) DEFAULT '0' COMMENT '复核时间',
  `print_user_id` int(11) NOT NULL DEFAULT '0',
  `print_time` int(11) NOT NULL DEFAULT '0',
  `gzrq` varchar(12) DEFAULT NULL COMMENT '检验机构检验专用章或公章的日期',
  `add_userid` int(11) NOT NULL COMMENT '报告添加或者录入人',
  `add_time` int(11) NOT NULL COMMENT '报告录入时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0未提交，反回到录入员，1检验员，2审核，3复核，4存档',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='报表数据' AUTO_INCREMENT=544 ;

--
-- 导出表中的数据 `oa_report`
--

INSERT INTO `oa_report` (`id`, `company_id`, `title`, `report_num`, `sydw`, `sbpz`, `sbyh`, `sbdm`, `jyrc`, `belong_month`, `one_user_id`, `one_time`, `tow_user_id`, `tow_time`, `three_user_id`, `three_time`, `print_user_id`, `print_time`, `gzrq`, `add_userid`, `add_time`, `status`) VALUES
(178, 122, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110056', '国荣（清远）橡胶工业有限公司', '蒸汽锅炉', 'DZL6-1.25-A II', '11204418002006080004', '2012-11-02', '201211', 39, 1352705900, 38, 1352767475, 37, 1352769278, 0, 0, NULL, 43, 1352361219, 4),
(177, 121, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110055', '清远市恒建环保建材有限公司', '蒸汽锅炉', 'DZL6-1.6-A II', '11204418002011100006', '2012-11-02', '201211', 39, 1352705945, 38, 1352767494, 37, 1352769278, 0, 0, NULL, 43, 1352360990, 4),
(176, 120, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110054', '清远市海贝生物技术有限公司', '蒸汽锅炉', 'LSC1-0.8-A II', '11204418002009100001', '2012-11-02', '201211', 39, 1352705993, 38, 1352767643, 37, 1352769278, 0, 0, NULL, 43, 1352360437, 4),
(175, 119, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110053', '清远市清城区钜洋洗水厂', '蒸汽锅炉', 'KZL1.0-8', '11204418002003120595', '2012-11-02', '201211', 39, 1352706046, 38, 1352767700, 37, 1352769278, 0, 0, NULL, 43, 1352360252, 4),
(174, 118, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110052', '清远市兴发洗水厂', '蒸汽锅炉', 'SZL6-1.25-WA-WA', '11204418002003020462', '2012-11-02', '201211', 39, 1352706104, 38, 1352767752, 37, 1352769278, 0, 0, NULL, 43, 1352360062, 4),
(173, 117, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110051', '清新县太平清叶木厂', '蒸汽锅炉', 'SZS4-1.25-M', '11204418002005110003', '2012-11-02', '201211', 39, 1352706155, 38, 1352767781, 37, 1352769278, 0, 0, NULL, 43, 1352359923, 4),
(172, 116, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110050', '广东中骏上原汽车零部件有限公司', '蒸汽锅炉', 'WNS2-1.0-YQ', '11204418002012060006', '2012-11-02', '201211', 39, 1352706205, 38, 1352767823, 37, 1352769278, 0, 0, NULL, 43, 1352359756, 4),
(171, 116, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110049', '广东中骏上原汽车零部件有限公司', '蒸汽锅炉', 'WNS2-1.0-YQ', '11204418002012060007', '2012-11-02', '201211', 39, 1352706258, 38, 1352767846, 37, 1352769287, 0, 0, NULL, 43, 1352359559, 4),
(170, 115, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110048', '英德市含光镇天翔制衣厂', '蒸汽锅炉', 'LSG0.15-0.8-W12', '11204418002010110003', '2012-11-02', '201211', 39, 1352706336, 38, 1352767899, 37, 1352769287, 0, 0, NULL, 43, 1352359326, 4),
(169, 114, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110047', '清远市青山不锈钢有限公司', '蒸汽锅炉', 'LHG1.0-0.69-A III', '11204418002006110013', '2012-10-26', '201211', 39, 1352105640, 38, 1352188810, 37, 1352191490, 0, 0, NULL, 43, 1352104611, 4),
(168, 114, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110046', '清远市青山不锈钢有限公司', '蒸汽锅炉', 'YR6-0.8/蒸汽锅炉', '11204418002007120005', '2012-10-26', '201211', 39, 1352105672, 38, 1352188810, 37, 1352191454, 0, 0, NULL, 43, 1352104447, 4),
(167, 113, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110045', '清远市雅克化工有限公司', '蒸汽锅炉', 'WNS4-1.25-YQ', '11204418002012030003', '2012-10-26', '201211', 39, 1352105592, 38, 1352188553, 37, 1352191518, 0, 0, NULL, 43, 1352104272, 4),
(166, 112, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110044', '清远市千百丽纺织印染有限公司', '蒸汽锅炉', 'SZL6-1.25-A II', '11204418002007030008', '2012-10-26', '201211', 39, 1352105555, 38, 1352188810, 37, 1352191555, 0, 0, NULL, 43, 1352104074, 4),
(165, 111, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110043', '濠国鞋材（清远）有限公司', '蒸汽锅炉', 'DZG2-1.25-A II', '11204418002006110010', '2012-10-26', '201211', 39, 1352105477, 38, 1352188810, 37, 1352346137, 0, 0, NULL, 43, 1352103942, 4),
(164, 111, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110042', '濠国鞋材（清远）有限公司', '蒸汽锅炉', 'DZG4-1.25-M2', '11204418002002010006', '2012-10-26', '201211', 39, 1352105515, 38, 1352188810, 37, 1352191576, 0, 0, NULL, 43, 1352103824, 4),
(163, 110, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110041', '清远市金正饲料有限公司', '蒸汽锅炉', 'DZL2-1.25-A II', '11204418002007010002', '2012-10-26', '201211', 39, 1352105431, 38, 1352188810, 37, 1352191621, 0, 0, NULL, 43, 1352103689, 4),
(162, 109, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110040', '诚展（清远）鞋业有限公司', '蒸汽锅炉', 'WNS6-1.0-Y(Q)', '11204418002007060010', '2012-10-26', '201211', 39, 1352105390, 38, 1352188810, 37, 1352191643, 0, 0, NULL, 43, 1352103537, 4),
(161, 108, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110039', '清远市清城区君康餐具消毒中心', '蒸汽锅炉', 'DZS2-1.25-M(A II)', '11204418002008050004', '2012-10-26', '201211', 39, 1352105348, 38, 1352188810, 37, 1352191673, 0, 0, NULL, 43, 1352103342, 4),
(160, 107, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110038', '清远市大昌食品有限公司', '蒸汽锅炉', 'DZG2-1.0-W II', '11204418002009090015', '2012-10-26', '201211', 39, 1352105297, 38, 1352188810, 37, 1352191701, 0, 0, NULL, 43, 1352103184, 4),
(159, 106, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110037', '清远震兴农产品有限公司', '蒸汽锅炉', 'WNS6-1.0-Y(Q)', '11204418002007060005', '2012-10-26', '201211', 39, 1352105247, 38, 1352188781, 37, 1352191720, 0, 0, NULL, 43, 1352103029, 4),
(158, 94, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110036', '清远宏盛纺织印染有限公司', '蒸汽锅炉', 'SZL20-1.6-A II', '11204418002006030003', '2012-10-26', '201211', 39, 1352105142, 38, 1352188080, 37, 1352191741, 0, 0, NULL, 43, 1352102888, 4),
(157, 94, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110035', '清远宏盛纺织印染有限公司', '蒸汽锅炉', 'SZL20-1.6-A II', '11204418002008010013', '2012-10-26', '201211', 39, 1352105201, 38, 1352188080, 37, 1352191790, 0, 0, NULL, 43, 1352102718, 4),
(156, 105, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110034', '清远市万鑫包装保温材料有限公司', '蒸汽锅炉', 'SZL6-1.25-A II', '11204418002011080005', '2012-10-29', '201211', 39, 1352106309, 38, 1352188080, 37, 1352192405, 0, 0, NULL, 43, 1352102452, 4),
(155, 104, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110033', '清远市嘉博制药有限公司', '蒸汽锅炉', 'WNS2-1.25-Y', '11204418002005030002', '2012-10-29', '201211', 39, 1352106278, 38, 1352188080, 37, 1352192382, 0, 0, NULL, 43, 1352102317, 4),
(154, 103, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110032', '清远市鑫辉化工有限公司', '蒸汽锅炉', 'DZL2-1.25-A II', '11204418002006090010', '2012-10-29', '201211', 39, 1352106242, 38, 1352188080, 37, 1352192361, 0, 0, NULL, 43, 1352102159, 4),
(153, 102, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110031', '清远市上兴人造板有限公司', '蒸汽锅炉', 'SZS10-1.6-M', '11204418002007040010', '2012-10-29', '201211', 39, 1352106215, 38, 1352187662, 37, 1352192340, 0, 0, NULL, 43, 1352102011, 4),
(152, 101, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110030', '新益（清远）织染整有限公司', '蒸汽锅炉', 'SHFX25-1.25-WI', '11204418002007030003', '2012-10-29', '201211', 39, 1352106177, 38, 1352188080, 37, 1352192322, 0, 0, NULL, 43, 1352101852, 4),
(151, 100, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110029', '清远市德和染整有限公司', '蒸汽锅炉', 'WNS10-1.25-Y', '11204418002002040219', '2012-10-29', '201211', 39, 1352106141, 38, 1352188080, 37, 1352192264, 0, 0, NULL, 43, 1352101686, 4),
(150, 99, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110028', '清远市百盛染织有限公司', '蒸汽锅炉', 'DZH4-1.25-A II', '11204418002002120444', '2012-10-29', '201211', 39, 1352106104, 38, 1352188020, 37, 1352192240, 0, 0, NULL, 43, 1352101538, 4),
(149, 98, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110027', '清远市益丰染织有限公司', '蒸汽锅炉', 'SZL6-1.25-A II', '11204418002006080005', '2012-10-29', '201211', 39, 1352106065, 38, 1352187301, 37, 1352192221, 0, 0, NULL, 43, 1352101390, 4),
(148, 97, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110026', '清远市灵捷制造化工有限公司', '蒸汽锅炉', 'LHS0.5-0.4-Y(Q)', '11204418002002100395', '2012-10-29', '201211', 39, 1352106028, 38, 1352186910, 37, 1352192197, 0, 0, NULL, 43, 1352101239, 4),
(147, 96, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110025', '蒙牛乳业（清远）有限公司', '承压蒸汽锅炉', 'WNS10-1.6-Q', '11204418002010100004', '2012-10-29', '201211', 39, 1352105990, 38, 1352187301, 37, 1352192172, 0, 0, NULL, 43, 1352101092, 4),
(146, 96, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110024', '蒙牛乳业（清远）有限公司', '承压蒸汽锅炉', 'WNS10-1.6-Q', '11204418002010100005', '2012-10-29', '201211', 39, 1352105949, 38, 1352187301, 37, 1352192148, 0, 0, NULL, 43, 1352100992, 4),
(145, 95, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110023', '柏美国际（清远）化妆品制造有限公司', '蒸汽锅炉', 'DZH4-1.25-A II', '11204418002005120005', '2012-10-29', '201211', 39, 1352105911, 38, 1352187066, 37, 1352192126, 0, 0, NULL, 43, 1352100820, 4),
(144, 3, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110022', '广东信宏包装实业有限公司', '蒸汽锅炉', 'SZL6-1.25-M(A II)', '11204418002011080003', '2012-10-29', '201211', 39, 1352105873, 38, 1352187198, 37, 1352192105, 0, 0, NULL, 43, 1352100626, 4),
(143, 94, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110021', '清远宏盛纺织印染有限公司', '蒸汽锅炉', 'SZL20-1.6-A II', '11204418002006030003', '2012-10-29', '201211', 39, 1352105823, 38, 1352187301, 37, 1352192079, 0, 0, NULL, 43, 1352100476, 4),
(142, 94, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110020', '清远宏盛纺织印染有限公司', '蒸汽锅炉', 'SZL20-1.6-A II', '11204418002008010013', '2012-10-29', '201211', 39, 1352105787, 38, 1352187301, 37, 1352192042, 0, 0, NULL, 43, 1352099975, 4),
(141, 93, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110019', '清远市清城区横荷裕威鞋材厂', '蒸汽锅炉', 'DZG2-1.0-M', '11204418002009080001', '2012-10-29', '201211', 39, 1352105744, 38, 1352187301, 37, 1352192006, 0, 0, NULL, 43, 1352099782, 4),
(140, 92, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110018', '清远市振威皮革有限公司', '蒸汽锅炉', 'DZL4-1.25-A', '11204418002006080002', '2012-10-26', '201211', 39, 1352083843, 38, 1352186507, 37, 1352421330, 0, 0, NULL, 43, 1352083182, 4),
(139, 91, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110017', '清远市清城区振威皮革厂清新分厂', '蒸汽锅炉', 'DZG4-1.25-A', '11204418002002040149', '2012-10-26', '201211', 39, 1352083924, 38, 1352186507, 37, 1352421330, 0, 0, NULL, 43, 1352082679, 4),
(138, 90, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110016', '骏达（清远）制衣有限公司', '蒸汽锅炉', 'LHC1-0.69-A III', '11204418002008060009', '2012-10-26', '201211', 39, 1352083998, 38, 1352186507, 37, 1352421330, 0, 0, NULL, 43, 1352082492, 4),
(137, 89, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110015', '清远先锋制衣有限公司', '蒸汽锅炉', 'WNS1-1.0-Y', '11204418002002040168', '2012-10-29', '201211', 39, 1352084091, 38, 1352186507, 37, 1352421330, 0, 0, NULL, 43, 1352082328, 4),
(136, 88, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110014', '清远市汉铿物业发展有限公司', '蒸汽锅炉', 'WNS1-1.0-Y', '--', '2012-10-26', '201211', 39, 1352358736, 38, 1352421268, 37, 1352421330, 0, 0, NULL, 43, 1352082180, 4),
(135, 87, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110013', '清远市酒厂有限公司', '蒸汽锅炉', 'DZL6-1.25-A II', '11204418002007100006', '2012-10-31', '201211', 39, 1352084614, 38, 1352185484, 37, 1352193318, 0, 0, NULL, 43, 1352081629, 4),
(134, 86, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110012', '清远市步步高酒店管理有限公司', '蒸汽锅炉', 'WNS1.0-1.0-Y(S)', '11204418002009080005', '2012-10-31', '201211', 39, 1352084649, 38, 1352185258, 37, 1352193318, 0, 0, NULL, 43, 1352081482, 4),
(133, 85, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110011', '清远市亨健医用橡胶有限公司', '蒸汽锅炉', 'DZW2-1.0-A II', '11204418002002040152', '2012-10-31', '201211', 39, 1352084557, 38, 1352185014, 37, 1352193318, 0, 0, NULL, 43, 1352081304, 4),
(132, 84, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110010', '清远万家丽针织印染有限公司', '蒸汽锅炉', 'SZL10-1.25-A II', '11204418002011010005', '2012-10-31', '201211', 39, 1352084518, 38, 1352184964, 37, 1352193231, 0, 0, NULL, 43, 1352081116, 4),
(131, 83, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110009', '广东华农温氏畜牧股份有限公司清新分公司', '蒸汽锅炉', 'DZL4-1.25-A II', '112044180020074040002', '2012-10-31', '201211', 39, 1352084474, 38, 1352184882, 37, 1352193217, 0, 0, NULL, 43, 1352080939, 4),
(130, 82, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110008', '清新县汉科化工科技有限公司', '蒸汽锅炉', 'LHS1.0-0.8-Y.Q', '11204418002008050012', '2012-10-30', '201211', 39, 1352084425, 38, 1352184644, 37, 1352193201, 0, 0, NULL, 43, 1352080684, 4),
(129, 19, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110007', '万裕（清新）塑胶制品有限公司', '蒸汽锅炉', 'DZL4-1.25-A II', '11204418002006110001', '2012-10-30', '201211', 39, 1352084376, 38, 1352184551, 37, 1352193016, 0, 0, NULL, 43, 1352080459, 4),
(128, 81, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110006', '万邦（清新）鞋业有限公司', '蒸汽锅炉', 'SZL6-1.25-A II', '11204418002007090009', '2012-10-30', '201211', 39, 1352084322, 38, 1352184450, 37, 1352192997, 0, 0, NULL, 43, 1352080207, 4),
(127, 80, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110005', '清远市裕成鞋材有限公司', '蒸汽锅炉', 'DZL8-1.25-A II', '11204418002008110001', '2012-10-30', '201211', 39, 1352084260, 38, 1352184420, 37, 1352192955, 0, 0, NULL, 43, 1352080047, 4),
(126, 79, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110004', '慕达包装工业（清远）有限公司', '蒸汽锅炉', 'WNS4-1.25-Y', '11204418002002040220', '2012-10-30', '201211', 39, 1352084207, 38, 1352184214, 37, 1352192973, 0, 0, NULL, 43, 1352079083, 4),
(125, 65, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110003', '兆联（清远）纺织印染有限公司', '蒸汽锅炉', 'DZL6-1.25-A', '11204418002006010008', '2012-10-30', '201211', 39, 1352084825, 38, 1352186013, 37, 1352192887, 0, 0, NULL, 43, 1352078845, 4),
(124, 29, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110002', '佛冈龙清电力器材公司', '蒸汽锅炉', 'DZL4-1.25', '11204418002008010015', '2012-10-30', '201211', 39, 1352084769, 38, 1352186036, 37, 1352192904, 0, 0, NULL, 43, 1352078706, 4),
(123, 64, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110001', '佛冈冠华纸塑包装有限公司', '蒸汽锅炉', 'DZL4-1.25-A', '--', '2012-10-30', '201211', 39, 1352084723, 38, 1352186036, 37, 1352192921, 0, 0, NULL, 43, 1352078596, 4),
(120, 74, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100027', '广东双汇食品有限公司', '蒸汽锅炉', 'SZL6-1.57-A II', '11204418002005010011', '2012-10-23', '201210', 39, 1351481494, 38, 1351488716, 37, 1351827498, 0, 0, NULL, 40, 1351239263, 4),
(121, 74, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100028', '广东双汇食品有限公司', '蒸汽锅炉', 'SZL6-1.57-A II', '11204418002005010010', '2012-10-23', '201210', 39, 1351481431, 38, 1351488319, 37, 1351827457, 0, 0, NULL, 40, 1351239418, 4),
(122, 74, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100029', '广东双汇食品有限公司', '蒸汽锅炉', 'SZL6-1.57-A II', '11204418002005010009', '2012-10-23', '201210', 39, 1351481140, 38, 1351488238, 37, 1351827402, 0, 0, NULL, 40, 1351239512, 4),
(94, 57, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100001', '步威（清远）皮革有限公司', '蒸汽锅炉', 'DZL4-1.25-A II', '11204418002002040161', '2012-10-17', '201210', 39, 1350955343, 38, 1350960311, 37, 1350976246, 43, 1351476790, NULL, 40, 1350888767, 4),
(95, 58, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100002', '清远市石角镇佑丰印染织造厂', '蒸汽锅炉', 'SZL6-1.25-A II', '11204418002005020003', '2012-10-17', '201210', 39, 1350955471, 38, 1350960409, 37, 1350976283, 43, 1351476790, NULL, 40, 1350889321, 4),
(96, 59, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100003', '清远市永裕实业有限公司', '蒸汽锅炉', 'HSG0.5-0.8-A II', '11204418002003080511', '2012-10-17', '201210', 39, 1350955554, 38, 1350960364, 37, 1350976263, 0, 0, NULL, 40, 1350889551, 4),
(97, 60, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100004', '日丰（清远）电子有限公司', '蒸汽锅炉', 'WNS2-1.25-Y', '11204418002006100004', '2012-10-19', '201210', 39, 1350956703, 38, 1350960603, 37, 1350974790, 0, 0, NULL, 40, 1350893462, 4),
(98, 63, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100005', '亿盈（清远）发泡材料有限公司', '蒸汽锅炉', 'DZL6-1.25-A', '11204418002004090005', '2012-10-19', '201210', 39, 1350956844, 38, 1350960518, 37, 1350962179, 0, 0, NULL, 40, 1350893894, 4),
(99, 29, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100006', '佛冈龙清电力器材公司', '蒸汽锅炉', 'DZL4-1.25', '11204418002008010015', '2012-10-19', '201210', 39, 1350956911, 38, 1350960591, 37, 1351478097, 0, 0, NULL, 40, 1350893987, 4),
(100, 64, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100007', '佛冈冠华纸塑包装有限公司', '蒸汽锅炉', 'DZL4-1.25-A', '--', '2012-10-19', '201210', 39, 1350956972, 38, 1350960579, 37, 1350964522, 0, 0, NULL, 40, 1350894144, 4),
(101, 65, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100008', '兆联（清远）纺织印染有限公司', '蒸汽锅炉', 'DZL6-1.25-A', '11204418002004120049', '2012-10-19', '201210', 39, 1351475372, 38, 1351475522, 37, 1351478085, 0, 0, NULL, 40, 1350894328, 4),
(102, 66, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100009', '清远市永嘉洗涤有限公司', '蒸汽锅炉', 'DZL4-1.25-A', '11204418002006050007', '2012-10-19', '201210', 39, 1350957074, 38, 1350960535, 37, 1350964597, 0, 0, NULL, 40, 1350894477, 4),
(103, 67, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100010', '英德海螺水泥有限责任公司', '余热锅炉', 'QC206/360-18-0.7/345', '11104418002008100015', '2012-10-19', '201210', 39, 1350956577, 38, 1350959612, 37, 1350975086, 0, 0, NULL, 40, 1350894710, 4),
(106, 67, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100013', '英德海螺水泥有限责任公司', '余热锅炉', 'QC338/325-28.29-0.8/305/PH-J', '11104418002008100013', '2012-10-19', '201210', 39, 1350955908, 38, 1350958425, 37, 1350975294, 0, 0, NULL, 40, 1350895130, 4),
(105, 67, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100012', '英德海螺水泥有限责任公司', '余热锅炉', 'QC338/325-28.29-0.8/305/PH-J', '11104418002008100012', '2012-10-19', '201210', 39, 1350955959, 38, 1350958513, 37, 1350975497, 0, 0, NULL, 40, 1350895002, 4),
(107, 67, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100014', '英德海螺水泥有限责任公司', '余热锅炉', 'QC206/360-18-0.7/345', '11104418002008100017', '2012-10-19', '201210', 39, 1350955844, 38, 1350958359, 37, 1350975127, 0, 0, NULL, 40, 1350895254, 4),
(108, 67, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100015', '英德海螺水泥有限责任公司', '余热锅炉', 'QC338/325-28.29-0.8/305/PH-J', '11104418002008100013', '2012-10-19', '201210', 39, 1350955800, 38, 1350958263, 37, 1351478069, 0, 0, NULL, 40, 1350895382, 4),
(109, 67, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100016', '英德海螺水泥有限责任公司', '余热锅炉', 'QC206/360-18-0.7/345', '11104418002008100016', '2012-10-19', '201210', 39, 1350955686, 38, 1350958194, 37, 1350975214, 0, 0, NULL, 40, 1350895509, 4),
(110, 39, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100017', '同进（英德）纺织品有限公司', '蒸汽锅炉', 'SHXF10-2.5/400-A II', '11204418002008110015', '2012-10-19', '201210', 39, 1350956545, 38, 1350959747, 37, 1350975700, 0, 0, NULL, 40, 1350895610, 4),
(111, 68, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100018', '清远市广州后花园有限公司（清远美林湖酒店）', '蒸汽锅炉', 'WNS1-1.0-YQ', '11204418002011070004', '2012-10-19', '201210', 39, 1350956045, 38, 1350960104, 37, 1350975985, 0, 0, NULL, 40, 1350895806, 4),
(112, 69, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100019', '山美（清远）五金织带制品有限公司', '蒸汽锅炉', 'WNS4-1.25-Y(S)', '11204418002005010015', '2012-10-19', '201210', 39, 1350956092, 38, 1350960200, 37, 1350976189, 0, 0, NULL, 40, 1350896031, 4),
(113, 70, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100020', '清远市东上钢业有限公司', '蒸汽锅炉', 'SHX12-1.25-A I', '11204418002008100022', '2012-10-19', '201210', 39, 1350956142, 38, 1350959965, 37, 1350975961, 0, 0, NULL, 40, 1350896225, 4),
(114, 12, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100021', '宏升（清远）金属有限公司', '蒸汽锅炉', ' SZL6-1.25-A II', '11204418002008040006', '2012-10-19', '201210', 39, 1350956206, 38, 1350959903, 37, 1350976122, 0, 0, NULL, 40, 1350896415, 4),
(115, 41, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100022', '英德龙山水泥有限责任公司', '余热锅炉', 'QC206/300-18-0.7/345', '11204418002008030001', '2012-10-19', '201210', 39, 1350956354, 38, 1350959865, 37, 1350975861, 0, 0, NULL, 40, 1350896578, 4),
(116, 21, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100023', '英德龙山水泥有限责任公司', '余热锅炉', 'MHA32-AOE701-R3/PH-J', '11204418002008030004', '2012-10-19', '201210', 39, 1350956287, 38, 1350959842, 37, 1350975846, 0, 0, NULL, 40, 1350896706, 4),
(117, 71, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100024', '清远忠信世纪玻纤有限公司', '余热锅炉', 'Q36/800-6-1.25', '11204418002008090014', '2012-10-19', '201210', 39, 1350956397, 38, 1350959811, 37, 1350975760, 0, 0, NULL, 40, 1350896847, 4),
(118, 72, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100025', '英德市隆盛金属有限公司', '蒸汽锅炉', 'DZL4-1.25-A II', '11204418002011100009', '2012-10-19', '201210', 39, 1350956467, 38, 1350959786, 37, 1350975741, 0, 0, NULL, 40, 1350896998, 4),
(119, 73, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012100026', '清城区石角镇田心恒生饲料加工厂', '蒸汽锅炉', 'DZL4-1.25-A II', '11204418002006070003', '2012-10-19', '201210', 41, 1350954578, 38, 1350959714, 37, 1350975656, 0, 0, NULL, 40, 1350897314, 4),
(179, 123, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110057', '清远镇宇染整有限公司', '承压蒸汽锅炉', 'SZL20-1.25-A II', '11204418002011110006', '2012-11-02', '201211', 39, 1352705854, 38, 1352711905, 37, 1352769278, 0, 0, NULL, 43, 1352361355, 4),
(180, 124, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110058', '清远双江颜料有限公司', '蒸汽锅炉', 'DZL6-1.25-A II', '--', '2012-11-02', '201211', 39, 1352705807, 38, 1352711768, 37, 1352769278, 0, 0, NULL, 43, 1352361507, 4),
(181, 125, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110059', '新安天玉有机硅有限公司', '蒸汽锅炉', 'WNS6-1.25-YZ', '11204418002011010007', '2012-11-02', '201211', 39, 1352705753, 38, 1352711514, 37, 1352769278, 0, 0, NULL, 43, 1352361865, 4),
(182, 126, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110060', '恒昌（清远）纸业有限公司', '蒸汽锅炉', 'DZL4-1.25-A II', '11204418002006060015', '2012-11-02', '201211', 39, 1352705692, 38, 1352711465, 37, 1352769278, 0, 0, NULL, 43, 1352362088, 4),
(183, 127, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110061', '清新县新鸿基染整有限公司', '蒸汽锅炉', 'SZL15-1.25-A II', '11204418002006070014', '2012-11-05', '201211', 39, 1352705631, 38, 1352711227, 37, 1352769278, 0, 0, NULL, 43, 1352422184, 4),
(184, 128, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110062', '清远镇宇金丰染整有限公司', '蒸汽锅炉', 'SHF10-1.25-P', '11204418002007060002', '2012-11-05', '201211', 39, 1352705578, 38, 1352711002, 37, 1352769278, 0, 0, NULL, 43, 1352422335, 4),
(185, 129, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110063', '清新县昊元新型墙体砖厂', '蒸汽锅炉', 'DZL6.0-1.57-A III II', '11204418002010090003', '2012-11-05', '201211', 39, 1352705523, 38, 1352710821, 37, 1352769278, 0, 0, NULL, 43, 1352422535, 4),
(186, 130, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110064', '广东博众建材科技发展有限公司', '蒸汽锅炉', 'WNS2-1.25-YQ', '11204418002011100008', '2012-11-05', '201211', 39, 1352705440, 38, 1352710764, 37, 1352769278, 0, 0, NULL, 43, 1352422665, 4),
(187, 131, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110065', '清远市广丰食品有限公司', '蒸汽锅炉', 'SZL8-1.25-A II', '--', '2012-11-05', '201211', 39, 1352705393, 38, 1352710493, 37, 1352769278, 0, 0, NULL, 43, 1352422804, 4),
(188, 132, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110066', '清远市光宇建筑材料有限公司', '蒸汽锅炉', 'DZS4-1.25-M(X)', '11204418002011100005', '2012-11-05', '201211', 39, 1352705333, 38, 1352710436, 37, 1352769278, 0, 0, NULL, 43, 1352423076, 4),
(189, 133, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110067', '威登制衣（清远）有限公司', '蒸汽锅炉', 'LE72-0.7', '11204418002009090008', '2012-11-05', '201211', 39, 1352705256, 38, 1352710291, 37, 1352769278, 0, 0, NULL, 43, 1352424461, 4),
(190, 134, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110068', '广东聚石化学股份有限公司', '蒸汽锅炉', 'WNS1-1.0-Y', '11204418002010100001', '2012-11-05', '201211', 39, 1352705199, 38, 1352710120, 37, 1352769278, 0, 0, NULL, 43, 1352424626, 4),
(191, 135, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110069', '清远市桦生木业有限公司', '蒸汽锅炉', 'DZS4-1.25-M(X)', '11204418002012050006', '2012-11-05', '201211', 39, 1352705103, 38, 1352710090, 37, 1352769278, 0, 0, NULL, 43, 1352424778, 4),
(192, 136, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110070', '清远市广德制衣有限公司', '蒸汽锅炉', 'WNS0.5-1.0-Y', '11204418002002040213', '2012-11-05', '201211', 39, 1352705043, 38, 1352710056, 37, 1352769260, 0, 0, NULL, 43, 1352424981, 4),
(195, 138, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110073', '清新县顺景染织厂', '蒸汽锅炉', 'SZL10-1.25-A II', '11204418002005120010', '2012-11-07', '201211', 39, 1352704871, 38, 1352709675, 37, 1352769260, 0, 0, NULL, 43, 1352686961, 4),
(194, 137, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110072', '（钟友华）清远市福泰甘油精制有限公司', '余热锅炉', 'Q12/320-1-0.8', '11204418002007070007', '2012-11-07', '201211', 39, 1352704928, 38, 1352709725, 37, 1352769260, 0, 0, NULL, 43, 1352686758, 4),
(196, 139, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110074', '清远市粤北之珠海鲜坊有限公司', '蒸汽锅炉', 'LSS0.75-0.8-YQ', '11204418002012010006', '2012-11-07', '201211', 39, 1352704821, 38, 1352709586, 37, 1352769260, 0, 0, NULL, 43, 1352687345, 4),
(197, 63, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110075', '亿盈（清远）发泡材料有限公司', '蒸汽锅炉', 'DZL6-1.25-A', '11204418002004090005', '2012-11-07', '201211', 39, 1352704719, 38, 1352709553, 37, 1352769260, 0, 0, NULL, 43, 1352687487, 4),
(198, 66, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110076', '清远市永嘉洗涤有限公司', '蒸汽锅炉', 'DZL4-1.25-A', '11204418002006050007', '2012-11-07', '201211', 39, 1352704667, 38, 1352709540, 37, 1352769260, 0, 0, NULL, 43, 1352687583, 4),
(199, 60, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110077', '日丰（清远）电子有限公司', '蒸汽锅炉', 'WNS2-1.25-Y', '11204418002006100004', '2012-11-07', '201211', 39, 1352704619, 38, 1352709525, 37, 1352769260, 0, 0, NULL, 43, 1352687690, 4),
(200, 140, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110078', '清远盛兴中英文学校', '蒸汽锅炉', 'WNS1.5-1.0-YQ', '11204418002011070001', '2012-11-07', '201211', 39, 1352704440, 38, 1352708975, 37, 1352769260, 0, 0, NULL, 43, 1352687852, 4),
(201, 141, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110079', '清远市喜来登国际酒店', '蒸汽锅炉', 'WNS3-1.0-YQ', '11204418002011120006', '2012-11-08', '201211', 39, 1352704373, 38, 1352708908, 37, 1352769260, 0, 0, NULL, 43, 1352688224, 4),
(202, 8, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110080', '清远市中拓染整有限公司', '蒸汽锅炉', 'SHFX6-1.25-H', '11204418002005090003', '2012-11-08', '201211', 39, 1352704318, 38, 1352708376, 37, 1352769260, 0, 0, NULL, 43, 1352688399, 4),
(203, 8, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110081', '清远市中拓染整有限公司', '蒸汽锅炉', 'SHFX6-1.25-H', '11204418002005090007', '2012-11-08', '201211', 39, 1352704258, 38, 1352708376, 37, 1352769260, 0, 0, NULL, 43, 1352688631, 4),
(204, 142, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110082', '清远市峻兴管桩有限公司', '蒸汽锅炉', 'SZL10-1.6-A II', '11204418002009080003', '2012-11-08', '201211', 39, 1352704199, 38, 1352708343, 37, 1352769260, 0, 0, NULL, 43, 1352688783, 4),
(205, 143, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110083', '清远市佳利乐包装有限公司', '蒸汽锅炉', 'SHXF15-1.25-A', '11204418002011100002', '2012-11-08', '201211', 39, 1352768070, 38, 1352768128, 37, 1352769260, 0, 0, NULL, 43, 1352688940, 4),
(206, 144, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110084', '广东天弼陶瓷有限公司', '蒸汽锅炉', 'DZL2-1.25-A II', '11204418002007020005', '2012-11-08', '201211', 39, 1352704094, 38, 1352707686, 37, 1352769260, 0, 0, NULL, 43, 1352689169, 4),
(207, 145, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110085', '清远南方建材卫浴有限公司', '蒸汽锅炉', 'DZS6-1.25-Y（Q）', '11204418002011080012', '2012-11-08', '201211', 39, 1352768042, 38, 1352768128, 37, 1352769260, 0, 0, NULL, 43, 1352689980, 4),
(208, 145, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110086', '清远南方建材卫浴有限公司', '蒸汽锅炉', 'DZL4-1.25-A II', '11204418002004040638', '2012-11-08', '201211', 39, 1352767987, 38, 1352768128, 37, 1352769260, 0, 0, NULL, 43, 1352690105, 4),
(209, 146, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110087', '广东家美陶瓷有限公司', '蒸汽锅炉', 'DZL2-1.25-A II', '11204418002007010010', '2012-11-08', '201211', 39, 1352703674, 38, 1352707282, 37, 1352769260, 0, 0, NULL, 43, 1352690373, 4),
(210, 9, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110088', '清远市恒丰泰染整有限公司', '蒸汽锅炉', 'SHF10-1.25-P', '11204418002006070013', '2012-11-08', '201211', 39, 1352703610, 38, 1352707070, 37, 1352769260, 0, 0, NULL, 43, 1352690625, 4),
(211, 9, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110089', '清远市恒丰泰染整有限公司', '蒸汽锅炉', 'SZL10-1.25-A II', '11204418002012020001', '2012-11-07', '201211', 39, 1352703535, 38, 1352707031, 37, 1352769260, 0, 0, NULL, 43, 1352690823, 4),
(212, 142, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110090', '清远市峻兴管桩有限公司', '蒸汽锅炉', 'SZL10-1.6-A II', '11204418002011030001', '2012-11-08', '201211', 39, 1352703463, 38, 1352706965, 37, 1352769260, 0, 0, NULL, 43, 1352691118, 4),
(213, 147, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110091', '佛冈县石角镇国清包装经营部', '蒸汽锅炉', 'DZG1-1.0-M', '11204418002010110006', '2012-11-12', '201211', 39, 1353050761, 38, 1353050955, 37, 1353052581, 0, 0, NULL, 43, 1352875635, 4),
(214, 148, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110092', '佛冈县森波拉度假森林有限公司', '蒸汽锅炉', 'WNS1-1.0-Y', '11204418002007120012', '2012-11-12', '201211', 39, 1352940405, 38, 1353050300, 37, 1353052581, 0, 0, NULL, 43, 1352875788, 4),
(215, 23, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110093', '佛冈篁胜国际温泉花园有限公司', '蒸汽锅炉', 'DZL6-1.25-A II', '11204418002010040009', '2012-11-12', '201211', 39, 1352940353, 38, 1353050151, 37, 1353052581, 0, 0, NULL, 43, 1352876022, 4),
(216, 149, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110094', '佛冈县南海食街', '承压蒸汽锅炉', 'LSS0.5-0.39', '11304418002006090007', '2012-11-12', '201211', 39, 1352940301, 38, 1353050010, 37, 1353052581, 0, 0, NULL, 43, 1352876233, 4),
(217, 150, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110095', '东新（佛冈）温泉开发有限公司', '蒸汽锅炉', 'DZG1-1.0-MA', '11204418002007020007', '2012-11-12', '201211', 39, 1352940251, 38, 1353049992, 37, 1353052581, 0, 0, NULL, 43, 1352876414, 4),
(218, 151, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110096', '佛冈县丰裕毛巾厂', '蒸汽锅炉', 'SZL6-1.25-A II', '11204418002011040001', '2012-11-12', '201211', 39, 1352940209, 38, 1353049839, 37, 1353052581, 0, 0, NULL, 43, 1352876734, 4),
(219, 152, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110097', '广东华农温氏畜牧股份有限公司佛冈分公司', '蒸汽锅炉', 'DZL2-1.0-A II', '11204418002006070002', '2012-11-12', '201211', 39, 1352940161, 38, 1352989118, 37, 1353052581, 0, 0, NULL, 43, 1352876907, 4),
(220, 153, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110098', '清远国际酒店有限公司', '蒸汽锅炉', 'WNS2-1.25-YQ', '11204418002010040004', '2012-11-12', '201211', 39, 1352940108, 38, 1352989139, 37, 1353052581, 0, 0, NULL, 43, 1352877055, 4),
(221, 154, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110099', '佛冈县天和橡胶有限公司', '蒸汽锅炉', 'DZL1.5-2.5-A II', '11204418002008100007', '2012-11-12', '201211', 39, 1352940056, 38, 1353049699, 37, 1353052581, 0, 0, NULL, 43, 1352877212, 4),
(222, 29, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110100', '佛冈龙清电力器材公司', '蒸汽锅炉', 'DZL4-1.25', '11204418002008010015', '2012-11-12', '201211', 39, 1352939992, 38, 1352989032, 37, 1353052581, 0, 0, NULL, 43, 1352877376, 4),
(223, 155, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110101', '清新县金丰纺织漂染定型厂', '蒸汽锅炉', 'SZL10-1.25-A', '11204418002003080517', '2012-11-12', '201211', 39, 1352939946, 38, 1352988998, 37, 1353052581, 0, 0, NULL, 43, 1352877495, 4),
(224, 64, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110102', '佛冈冠华纸塑包装有限公司', '蒸汽锅炉', 'DZL4-1.25-A', '--', '2012-11-12', '201211', 39, 1352939900, 38, 1352988975, 37, 1353052581, 0, 0, NULL, 43, 1352877745, 4),
(225, 65, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110103', '兆联（清远）纺织印染有限公司', '蒸汽锅炉', 'DZL6-1.25-A', '11204418002004120049', '2012-11-12', '201211', 39, 1352939848, 38, 1352988944, 37, 1353052581, 0, 0, NULL, 43, 1352878915, 4),
(226, 156, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110104', '清远市信和实业有限公司', '蒸汽锅炉', 'DZG1.5-1.25-A II', '11204418002010090002', '2012-11-16', '201211', 39, 1353395395, 38, 1353631724, 37, 1353658502, 0, 0, NULL, 43, 1353378223, 4),
(227, 157, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110105', '清远市清城区龙塘顺年漂染厂', '蒸汽锅炉', 'SHW6-1.25-A I', '11204418002002040173', '2012-11-16', '201211', 39, 1353395345, 38, 1353631724, 37, 1353658502, 0, 0, NULL, 43, 1353378362, 4),
(228, 158, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110106', '清远市凯捷电源有限公司', '蒸汽锅炉', 'DZG2-1.25-W II2', '11204418002008070013', '2012-11-16', '201211', 39, 1353395289, 38, 1353631724, 37, 1353658502, 0, 0, NULL, 43, 1353378512, 4),
(229, 159, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110107', '清远市榕兴新型环保建材有限责任公司', '蒸汽锅炉', 'SZL8-1.57-A II', '11204418002008080003', '2012-11-16', '201211', 39, 1353395225, 38, 1353631724, 37, 1353658502, 0, 0, NULL, 43, 1353378636, 4),
(230, 88, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110108', '清远市汉铿物业发展有限公司', '蒸汽锅炉', 'WNS1-1.0-Y', '--', '2012-11-13', '201211', 39, 1353395148, 38, 1353631584, 37, 1353658581, 0, 0, NULL, 43, 1353380264, 4),
(231, 91, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110109', '清远市清城区振威皮革厂清新分厂', '蒸汽锅炉', 'DZG4-1.25-A', '11204418002002040149', '2012-11-14', '201211', 39, 1353395099, 38, 1353631584, 37, 1353658581, 0, 0, NULL, 43, 1353380353, 4),
(232, 92, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110110', '清远市振威皮革有限公司', '蒸汽锅炉', 'DZL4-1.25-A', '11204418002006080002', '2012-11-14', '201211', 39, 1353395031, 38, 1353631584, 37, 1353658581, 0, 0, NULL, 43, 1353380420, 4),
(233, 89, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110111', '清远先锋制衣有限公司', '蒸汽锅炉', 'WNS1-1.0-Y', '11204418002002040168', '2012-11-14', '201211', 39, 1353394953, 38, 1353631584, 37, 1353658581, 0, 0, NULL, 43, 1353380499, 4),
(234, 90, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110112', '骏达（清远）制衣有限公司', '蒸汽锅炉', 'LHC1-0.69-A III', '11204418002008060009', '2012-11-14', '201211', 39, 1353394848, 38, 1353631584, 37, 1353658581, 0, 0, NULL, 43, 1353380578, 4),
(235, 160, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110113', '丽珠集团新北江制药股份有限公司', '蒸汽锅炉', 'CB600500150', '11204418002002040202', '2012-11-13', '201211', 39, 1353394746, 38, 1353631851, 37, 1353658430, 0, 0, NULL, 43, 1353380781, 4),
(236, 160, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110114', '丽珠集团新北江制药股份有限公司', '蒸汽锅炉', 'WNS8-1.25-YQ', '11204418002002040199', '2012-11-13', '201211', 39, 1353394650, 38, 1353631851, 37, 1353658430, 0, 0, NULL, 43, 1353380893, 4),
(237, 161, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110115', '清远广正大陶瓷洗涤原料有限公司', '蒸汽锅炉', 'DZG4-1.25-W II', '11204418002010050003', '2012-11-15', '201211', 39, 1353394581, 38, 1353631892, 37, 1353658430, 0, 0, NULL, 43, 1353381032, 4),
(238, 160, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110116', '丽珠集团新北江制药股份有限公司', '蒸汽锅炉', 'CB600500150', '11204418002002040202', '2012-11-13', '201211', 39, 1353394526, 38, 1353631851, 37, 1353658430, 0, 0, NULL, 43, 1353381149, 4),
(239, 162, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110117', '清远市简一陶瓷有限公司', '煤气发生炉', '--', '21704418002011070020', '2012-11-14', '201211', 39, 1353394271, 38, 1353631991, 37, 1353658430, 0, 0, NULL, 43, 1353381320, 4),
(240, 162, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110118', '清远市简一陶瓷有限公司', '煤气发生炉', '--', '21704418002011070023', '2012-11-14', '201211', 39, 1353393894, 38, 1353631991, 37, 1353658430, 0, 0, NULL, 43, 1353381502, 4),
(241, 17, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110119', '晋勇（清远）橡胶工业有限公司', '蒸汽锅炉', 'SZL10-1.57-A II', '11204418002010100002', '2012-11-14', '201211', 39, 1353383517, 38, 1353632053, 37, 1353658430, 0, 0, NULL, 43, 1353381670, 4),
(242, 163, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110120', '清新县嘉亿塑料厂', '蒸汽锅炉', 'LHC0.5-0.39-A III', '11204418002009110003', '2012-11-14', '201211', 39, 1353383462, 38, 1353632088, 37, 1353658430, 0, 0, NULL, 43, 1353381840, 4),
(243, 164, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110121', '广东天农食品有限公司', '蒸汽锅炉', 'DZL2-1.25-A II', '11204418002003080531', '2012-11-14', '201211', 39, 1353383335, 38, 1353632088, 37, 1353658430, 0, 0, NULL, 43, 1353382040, 4),
(244, 165, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110122', '杨志锋（清新县太平镇河粉厂）', '蒸汽锅炉', 'LHC0.5-0.7-A III', '11204418002012050004', '2012-11-15', '201211', 39, 1353383285, 38, 1353632147, 37, 1353658430, 0, 0, NULL, 43, 1353382261, 4),
(245, 166, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110123', '清远建滔裕花园酒店有限公司（原丽晶国际大酒店）', '蒸汽锅炉', 'WNS3-1.25-YQ', '11204418002007080017', '2012-11-13', '201211', 39, 1353383232, 38, 1353632196, 37, 1353658430, 0, 0, NULL, 43, 1353382510, 4),
(246, 19, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110124', '万裕（清新）塑胶制品有限公司', '蒸汽锅炉', 'DZL4-1.25-A II', '11204418002006110001', '2012-11-14', '201211', 39, 1353383170, 38, 1353632223, 37, 1353658430, 0, 0, NULL, 43, 1353382617, 4),
(247, 167, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110125', '清新县山塘镇恒洁干洗服务部', '蒸汽锅炉', 'DZG0.5-0.8-M(X)', '11204418002012050002', '2012-11-15', '201211', 39, 1353383117, 38, 1353632385, 37, 1353901431, 0, 0, NULL, 43, 1353382765, 4),
(248, 45, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110126', '英德市粮香大酒店', '蒸汽锅炉', 'KZG1.0-0.8-W', '11204418002004110003', '2012-11-21', '201211', 39, 1354005926, 38, 1354523671, 37, 1354526830, 0, 0, NULL, 43, 1353914541, 4),
(249, 168, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110127', '英德市良仕工业材料有限公司', '蒸汽锅炉', 'WNS1-1.0-YQ', '--', '2012-11-21', '201211', 39, 1354005875, 38, 1354523659, 37, 1354526830, 0, 0, NULL, 43, 1353914684, 4),
(253, 43, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110129', '台泥（英德）水泥有限公司', '余热锅炉', 'QC380/325-30.9-0.7/290', '11204418002010010008', '2012-11-21', '201211', 39, 1354005762, 38, 1354523488, 37, 1354526830, 0, 0, NULL, 43, 1353915297, 4),
(252, 43, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110128', '台泥（英德）水泥有限公司', '余热锅炉', 'QC380/325-30.9-0.7/290', '11204418002010010001', '2012-11-21', '201211', 39, 1354005824, 38, 1354523488, 37, 1354526830, 0, 0, NULL, 43, 1353915229, 4),
(254, 43, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110130', '台泥（英德）水泥有限公司', '余热锅炉', 'QC380/325-30.9-0.7/290', '11204418002010010002', '2012-11-21', '201211', 39, 1354005713, 38, 1354523488, 37, 1354526830, 0, 0, NULL, 43, 1353915467, 4),
(255, 43, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110131', '台泥（英德）水泥有限公司', '余热锅炉', 'QC380/325-30.9-0.7/290', '11204418002010010005', '2012-11-21', '201211', 39, 1354005581, 38, 1354523488, 37, 1354526830, 0, 0, NULL, 43, 1353916293, 4),
(256, 43, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110132', '台泥（英德）水泥有限公司', '余热锅炉', 'QC380/315-25.4-0.7/291', '11204418002010010003', '2012-11-21', '201211', 39, 1354005531, 38, 1354523488, 37, 1354526830, 0, 0, NULL, 43, 1353916518, 4),
(257, 43, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110133', '台泥（英德）水泥有限公司', '余热锅炉', 'QC380/325-30.9-0.7/290', '11204418002010010004', '2012-11-21', '201211', 39, 1354005476, 38, 1354523488, 37, 1354526830, 0, 0, NULL, 43, 1353916733, 4),
(258, 43, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110134', '台泥（英德）水泥有限公司', '余热锅炉', 'QC380/325-30.9-0.7/290', '11204418002010010007', '2012-11-21', '201211', 39, 1354005412, 38, 1354523488, 37, 1354526830, 0, 0, NULL, 43, 1353916900, 4),
(259, 43, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110135', '台泥（英德）水泥有限公司', '余热锅炉', 'QC380/325-30.9-0.7/290', '11204418002010010006', '2012-11-21', '201211', 39, 1354005364, 38, 1354523488, 37, 1354526830, 0, 0, NULL, 43, 1353917102, 4),
(260, 169, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012110136', '英德市望埠镇铁厂', '余热锅炉', 'SHS5-2.45/400-Q2', '11104418002004100001', '2012-11-21', '201211', 39, 1354005245, 38, 1354523465, 37, 1354526830, 0, 0, NULL, 43, 1353917417, 4),
(261, 29, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120001', '佛冈龙清电力器材公司', '蒸汽锅炉', 'DZL4-1.25', '11204418002008010015', '2012-11-26', '201212', 39, 1354870313, 38, 1355276866, 37, 1355280115, 0, 0, NULL, 43, 1354759621, 4),
(262, 65, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120002', '兆联（清远）纺织印染有限公司', '蒸汽锅炉', 'DZL6-1.25-A', '11204418002004120049', '2012-11-26', '201212', 39, 1354870267, 38, 1355276866, 37, 1355280129, 0, 0, NULL, 43, 1354760252, 4),
(263, 64, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120003', '佛冈冠华纸塑包装有限公司', '蒸汽锅炉', 'DZL4-1.25-A', '--', '2012-11-26', '201212', 39, 1354870180, 38, 1355276866, 37, 1355280252, 0, 0, NULL, 43, 1354760341, 4),
(264, 31, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120004', '广东博华陶瓷有限公司', '蒸汽锅炉', 'SZL6-1.25-A II', '11204406002007050008', '2012-11-26', '201212', 39, 1354870119, 38, 1355277496, 37, 1355280252, 0, 0, NULL, 43, 1354760626, 4),
(265, 170, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120005', '佛冈金冠水玻璃有限责任公司', '蒸汽锅炉', 'DZL6-1.25-A II', '11204418002011080013', '2012-11-26', '201212', 39, 1354870051, 38, 1355277573, 37, 1355280202, 0, 0, NULL, 43, 1354760817, 4),
(266, 171, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120006', '雅辉（清远）纸品有限公司', '蒸汽锅炉', 'SZL8-1.25-A II', '11204418002007120013', '2012-11-26', '201212', 39, 1354869987, 38, 1355277907, 37, 1355280252, 0, 0, NULL, 43, 1354761002, 4),
(267, 172, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120007', '富元（清新）服饰有限公司', '蒸汽锅炉', 'SZL6-1.25-A II', '11204418002010110013', '2012-11-26', '201212', 39, 1354869933, 38, 1355278000, 37, 1355280252, 0, 0, NULL, 43, 1354761144, 4),
(268, 36, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120008', '佛冈县建滔实业有限公司', '蒸汽锅炉', 'SZL10-1.6-A II', '11204418002007010005', '2012-11-26', '201212', 39, 1354869482, 38, 1355278037, 37, 1355280252, 0, 0, NULL, 43, 1354761639, 4),
(269, 36, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120009', '佛冈县建滔实业有限公司', '蒸汽锅炉', 'SZL10-1.6-A II', '11204418002007010005', '2012-11-26', '201212', 39, 1354869439, 38, 1355278074, 37, 1355280252, 0, 0, NULL, 43, 1354761739, 4),
(270, 33, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120010', '东溢（佛冈）特种钢制造有限公司', '余热锅炉', 'Φ1400', '11204418002008040001', '2012-11-26', '201212', 39, 1354869391, 38, 1355278626, 37, 1355280275, 0, 0, NULL, 43, 1354761894, 4),
(271, 33, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120011', '东溢（佛冈）特种钢制造有限公司', '余热锅炉', 'Φ1400', '11204418002009120004', '2012-11-26', '201212', 39, 1354869317, 38, 1355278579, 37, 1355280292, 0, 0, NULL, 43, 1354762023, 4);
INSERT INTO `oa_report` (`id`, `company_id`, `title`, `report_num`, `sydw`, `sbpz`, `sbyh`, `sbdm`, `jyrc`, `belong_month`, `one_user_id`, `one_time`, `tow_user_id`, `tow_time`, `three_user_id`, `three_time`, `print_user_id`, `print_time`, `gzrq`, `add_userid`, `add_time`, `status`) VALUES
(272, 29, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120012', '佛冈龙清电力器材公司', '蒸汽锅炉', 'DZL4-1.25', '11204418002008010015', '2012-12-10', '201212', 39, 1355450012, 38, 1355714274, 37, 1355816812, 0, 0, NULL, 43, 1355384385, 4),
(273, 65, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120013', '兆联（清远）纺织印染有限公司', '蒸汽锅炉', 'DZL6-1.25-A', '11204418002004120049', '2012-12-10', '201212', 39, 1355449952, 38, 1355714247, 37, 1355816853, 0, 0, NULL, 43, 1355384460, 4),
(274, 64, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120014', '佛冈冠华纸塑包装有限公司', '蒸汽锅炉', 'DZL4-1.25-A', '--', '2012-12-10', '201212', 39, 1355449887, 38, 1355714226, 37, 1355816853, 0, 0, NULL, 43, 1355384610, 4),
(275, 30, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120015', '添富（清远）体育用品有限公司', '蒸汽锅炉', 'SZL6-1.25-A', '11204418002006090003', '2012-12-10', '201212', 39, 1355449803, 38, 1355714212, 37, 1355794395, 0, 0, NULL, 43, 1355384816, 4),
(276, 173, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120016', '汇康荧光（清远）科技有限公司', '蒸汽锅炉', 'LSS0.5-1.0-Y', '11204418002008010008', '2012-12-10', '201212', 39, 1355449727, 38, 1355714193, 37, 1355794427, 0, 0, NULL, 43, 1355384994, 4),
(277, 174, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120017', '佛冈盈泰纺织品染整有限公司', '蒸汽锅炉', 'SHL25-2.45/400-A II', '11204418002005010018', '2012-12-10', '201212', 39, 1355449646, 38, 1355714137, 37, 1355794447, 0, 0, NULL, 43, 1355385135, 4),
(278, 35, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120018', '广东佛冈新元科技有限公司', '蒸汽锅炉', 'DZL6-1.25-A II', '11204418002004080001', '2012-12-10', '201212', 39, 1355449582, 38, 1355714121, 37, 1355794464, 0, 0, NULL, 43, 1355385278, 4),
(279, 32, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120019', '佛冈县三门再生纸厂', '蒸汽锅炉', 'DZL4-1.25-A II', '11204418002009090010', '2012-12-10', '201212', 39, 1355449433, 38, 1355714097, 37, 1355794484, 0, 0, NULL, 43, 1355385407, 4),
(280, 16, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120020', '佑丰（佛冈）印染有限公司', '蒸汽锅炉', 'SZL15-1.25-A II', '11204418002008110021', '2012-12-10', '201212', 39, 1355449343, 38, 1355714045, 37, 1355794698, 0, 0, NULL, 43, 1355385569, 4),
(281, 175, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120021', '连州市顺达大酒店', '蒸汽锅炉', 'DZG1.0-0.8-M(X)', '--', '2012-12-05', '201212', 39, 1355449156, 38, 1355714008, 37, 1355800159, 0, 0, NULL, 43, 1355387161, 4),
(282, 176, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120022', '广东明华机械有限公司连南分公司', '蒸汽锅炉', 'DZL2-1.25-A II', '11204418002002040029', '2012-12-04', '201212', 39, 1355449082, 38, 1355713994, 37, 1355800193, 0, 0, NULL, 43, 1355387286, 4),
(283, 177, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120023', '阳山县永丰制衣厂', '蒸汽锅炉', 'DZH1.0-1.0-A II', '11204418002006010004', '2012-12-04', '201212', 39, 1355448994, 38, 1355713976, 37, 1355818762, 0, 0, NULL, 43, 1355387418, 4),
(284, 178, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120024', '连州市强龙家俱木材加工有限公司', '蒸汽锅炉', 'DZH2.0-1.25-A III', '11204418002011080011', '2012-12-04', '201212', 39, 1355732027, 38, 1355732054, 37, 1355818762, 0, 0, NULL, 43, 1355387577, 4),
(285, 179, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120025', '连南奇乡生物科技有限公司', '蒸汽锅炉', 'DZG2-1.25-A II', '11204418002006050014', '2012-12-04', '201212', 39, 1355731893, 38, 1355732054, 37, 1355818762, 0, 0, NULL, 43, 1355387726, 4),
(286, 13, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120026', '阳山县同兴铜材有限公司', '蒸汽锅炉', 'DZL4-1.25-A II3', '11204418002008010011', '2012-12-04', '201212', 39, 1355447163, 38, 1355713901, 37, 1355818762, 0, 0, NULL, 43, 1355387917, 4),
(287, 180, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120027', '广东华农温氏畜牧股份有限公司连州分公司', '承压蒸汽锅炉', 'DZL4-1.25-A II', '11204418002011110003', '2012-12-04', '201212', 39, 1355447091, 38, 1355713878, 37, 1355818762, 0, 0, NULL, 43, 1355388064, 4),
(288, 27, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120028', '阳山顺龙木业有限公司', '蒸汽锅炉', 'QC44/820-15-1.6', '11204418002005110001', '2012-12-04', '201212', 39, 1355447025, 38, 1355713586, 37, 1355818762, 0, 0, NULL, 43, 1355388187, 4),
(289, 28, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120029', '阳山县灰砂砖厂', '蒸汽锅炉', 'DZL2-1.25-A II', '11204418002002040018', '2012-12-04', '201212', 39, 1355446957, 38, 1355713575, 37, 1355818762, 0, 0, NULL, 43, 1355388361, 4),
(291, 15, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120031', '连州市协诚毛巾制造有限公司', '蒸汽锅炉', 'DZL1.0-0.7-A II', '11204418002005010002', '2012-12-04', '201212', 39, 1355446795, 38, 1355713034, 37, 1355818762, 0, 0, NULL, 43, 1355388709, 4),
(292, 182, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120032', '阳山联益洗涤制衣厂', '蒸汽锅炉', 'DZL2-1.25-A II', '11204418002008010012', '2012-12-04', '201212', 39, 1355446728, 38, 1355712969, 37, 1355818762, 0, 0, NULL, 43, 1355388849, 4),
(293, 183, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120033', '阳山县洪辉新型环保建材有限责任公司', '蒸汽锅炉', 'DZL6-1.25-A II', '--', '2012-12-05', '201212', 39, 1355446658, 38, 1355712941, 37, 1355818762, 0, 0, NULL, 43, 1355389042, 4),
(294, 184, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120034', '连州市联发造纸有限公司', '蒸汽锅炉', 'SZL10-1.25-A II', '11204418002011100003', '2012-12-05', '201212', 39, 1355446140, 38, 1355712733, 37, 1355818762, 0, 0, NULL, 43, 1355389214, 4),
(295, 185, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120035', '阳山县伟达化工有限公司', '蒸汽锅炉', 'KZL4-1.3', '11204418002002040017', '2012-12-05', '201212', 39, 1355446082, 38, 1355712623, 37, 1355818762, 0, 0, NULL, 43, 1355389351, 4),
(296, 186, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120036', '连州市海斌食品有限公司', '蒸汽锅炉', 'LHG1.0-0.7-A II', '11204418002011050002', '2012-12-05', '201212', 39, 1355446026, 38, 1355712513, 37, 1355818762, 0, 0, NULL, 43, 1355389497, 4),
(297, 187, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120037', '连南利发毛织厂有限公司', '蒸汽锅炉', 'DZG2.0-1.25-A III', '11204418002011120003', '2012-12-05', '201212', 39, 1355445940, 38, 1355712492, 37, 1355818762, 0, 0, NULL, 43, 1355389624, 4),
(298, 188, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120038', '连南县三江镇森鑫木制品厂', '蒸汽锅炉', 'DZG4-1.25-M', '11204418002009030009', '2012-12-05', '201212', 39, 1355445697, 38, 1355712461, 37, 1355818762, 0, 0, NULL, 43, 1355389753, 4),
(299, 189, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120039', '阳山县阳星松香发展有限公司', '蒸汽锅炉', 'DZG1-1.25-M', '11204418002012080003', '2012-12-05', '201212', 39, 1355445626, 38, 1355712443, 37, 1355818762, 0, 0, NULL, 43, 1355389883, 4),
(300, 190, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120040', '连州市骏成木业有限公司', '蒸汽锅炉', 'DZG2-1.25-A(M)', '11204418002012060009', '2012-12-05', '201212', 39, 1355445573, 38, 1355712238, 37, 1355818777, 0, 0, NULL, 43, 1355390021, 4),
(301, 14, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120041', '连南县鹿鸣茧丝绸有限责任公司', '蒸汽锅炉', 'DZL4-1.25-W II', '11204418002002040033', '2012-12-04', '201212', 39, 1355445516, 38, 1355712165, 37, 1355818777, 0, 0, NULL, 43, 1355390183, 4),
(302, 51, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120042', '英德广农康盛化工有限公司', '蒸汽锅炉', 'DZL4-1.25-A II', '11204418002002040114', '2012-12-06', '201212', 39, 1355455869, 38, 1355712040, 37, 1355799926, 0, 0, NULL, 43, 1355445611, 4),
(303, 191, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120043', '清新县宏力达塑料有限公司', '蒸汽锅炉', 'SZL2-1.25-T', '11204418002012070004', '2012-12-06', '201212', 39, 1355455819, 38, 1355712003, 37, 1355816868, 0, 0, NULL, 43, 1355445762, 4),
(304, 192, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120044', '清远市新绿环境科技有限公司', '蒸汽锅炉', 'SZL6-1.25-A II', '11204418002011010008', '2012-12-06', '201212', 39, 1355455771, 38, 1355711772, 37, 1355800060, 0, 0, NULL, 43, 1355445898, 4),
(305, 193, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120045', '清远市江丰饲料有限公司', '蒸汽锅炉', 'DZL4-1.25-A II3', '11204418002007060001', '2012-12-06', '201212', 39, 1355455708, 38, 1355711671, 37, 1355800060, 0, 0, NULL, 43, 1355446072, 4),
(306, 194, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120046', '清远宪友兴业有限公司', '蒸汽锅炉', 'DZS4-1.25-A II(M)', '11204418002010090001', '2012-12-06', '201212', 39, 1355455456, 38, 1355711592, 37, 1355800060, 0, 0, NULL, 43, 1355446388, 4),
(307, 195, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120047', '松德丰（清远）食品有限公司', '蒸汽锅炉', 'WNS3.0-1.25-Y', '11204418002002040133', '2012-12-06', '201212', 39, 1355455399, 38, 1355711569, 37, 1355800060, 0, 0, NULL, 43, 1355446547, 4),
(308, 196, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120048', '清远冠龙纺织染整厂', '蒸汽锅炉', 'SHL20-1.25', '11204418002002110419', '2012-12-06', '201212', 39, 1355455352, 38, 1355711543, 37, 1355800060, 0, 0, NULL, 43, 1355446775, 4),
(309, 197, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120049', '清远瀚江玻璃棉科技有限公司', '蒸汽锅炉', '0.5 t/h煤气发生炉', '11204418002008070004', '2012-12-06', '201212', 39, 1355455308, 38, 1355711416, 37, 1355800060, 0, 0, NULL, 43, 1355446908, 4),
(310, 91, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120050', '清远市清城区振威皮革厂清新分厂', '蒸汽锅炉', 'DZG4-1.25-A', '11204418002002040149', '2012-12-06', '201212', 39, 1355454977, 38, 1355711338, 37, 1355796112, 0, 0, NULL, 43, 1355448243, 4),
(311, 66, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120051', '清远市永嘉洗涤有限公司', '蒸汽锅炉', 'DZL4-1.25-A', '11204418002006050007', '2012-12-06', '201212', 39, 1355455022, 38, 1355711191, 37, 1355794849, 0, 0, NULL, 43, 1355448316, 4),
(312, 60, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120052', '日丰（清远）电子有限公司', '蒸汽锅炉', 'WNS2-1.25-Y', '11204418002006100004', '2012-12-06', '201212', 39, 1355455072, 38, 1355711191, 37, 1355794826, 0, 0, NULL, 43, 1355448422, 4),
(313, 92, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120053', '清远市振威皮革有限公司', '蒸汽锅炉', 'DZL4-1.25-A', '11204418002006080002', '2012-12-06', '201212', 39, 1355455126, 38, 1355711282, 37, 1355794807, 0, 0, NULL, 43, 1355448487, 4),
(314, 89, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120054', '清远先锋制衣有限公司', '蒸汽锅炉', 'WNS1-1.0-Y', '11204418002002040168', '2012-12-06', '201212', 39, 1355455178, 38, 1355711191, 37, 1355794767, 0, 0, NULL, 43, 1355448924, 4),
(315, 88, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120055', '清远市汉铿物业发展有限公司', '蒸汽锅炉', 'WNS1-1.0-Y', '--', '2012-12-06', '201212', 39, 1355454902, 38, 1355711191, 37, 1355796135, 0, 0, NULL, 43, 1355448982, 4),
(316, 90, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120056', '骏达（清远）制衣有限公司', '蒸汽锅炉', 'LHC1-0.69-A III', '11204418002008060009', '2012-12-06', '201212', 39, 1355454837, 38, 1355711191, 37, 1355796146, 0, 0, NULL, 43, 1355449053, 4),
(317, 63, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120057', '亿盈（清远）发泡材料有限公司', '蒸汽锅炉', 'DZL6-1.25-A', '11204418002004090005', '2012-12-06', '201212', 39, 1355454705, 38, 1355711191, 37, 1355796162, 0, 0, NULL, 43, 1355449170, 4),
(318, 66, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120058', '清远市永嘉洗涤有限公司', '蒸汽锅炉', 'DZL4-1.25-A', '11204418002006050007', '2012-12-12', '201212', 39, 1355454601, 38, 1355711191, 37, 1355796279, 0, 0, NULL, 43, 1355449264, 4),
(319, 91, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120059', '清远市清城区振威皮革厂清新分厂', '蒸汽锅炉', 'DZG4-1.25-A', '11204418002002040149', '2012-12-12', '201212', 39, 1355454559, 38, 1355711319, 37, 1355796295, 0, 0, NULL, 43, 1355449443, 4),
(320, 88, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120060', '清远市汉铿物业发展有限公司', '蒸汽锅炉', 'WNS1-1.0-Y', '--', '2012-12-13', '201212', 39, 1355454503, 38, 1355711191, 37, 1355796321, 0, 0, NULL, 43, 1355449511, 4),
(321, 89, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120061', '清远先锋制衣有限公司', '蒸汽锅炉', 'WNS1-1.0-Y', '11204418002002040168', '2012-12-13', '201212', 39, 1355454460, 38, 1355711191, 37, 1355796336, 0, 0, NULL, 43, 1355449634, 4),
(322, 63, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120062', '亿盈（清远）发泡材料有限公司', '蒸汽锅炉', 'DZL6-1.25-A', '11204418002004090005', '2012-12-13', '201212', 39, 1355454414, 38, 1355711191, 37, 1355796348, 0, 0, NULL, 43, 1355449700, 4),
(323, 92, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120063', '清远市振威皮革有限公司', '蒸汽锅炉', 'DZL4-1.25-A', '11204418002006080002', '2012-12-13', '201212', 39, 1355454346, 38, 1355711246, 37, 1355796361, 0, 0, NULL, 43, 1355450039, 4),
(324, 60, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120064', '日丰（清远）电子有限公司', '蒸汽锅炉', 'WNS2-1.25-Y', '11204418002006100004', '2012-12-13', '201212', 39, 1355454260, 38, 1355711191, 37, 1355796377, 0, 0, NULL, 43, 1355450113, 4),
(326, 198, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120065', '建滔（连州）铜铂有限公司', '蒸汽锅炉', 'SHFX15-1.6-P', '11204418002004090015', '2012-12-04', '201212', 39, 1355729681, 38, 1355729728, 37, 1355818777, 0, 0, NULL, 38, 1355729647, 4),
(327, 199, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120066', '清远市威利邦木业有限公司', '余热锅炉', '26T/H木屑炉（KC8272）', '11204418002004070682', '2012-12-13', '201212', 39, 1356074739, 38, 1356076041, 37, 1356076967, 0, 0, NULL, 43, 1355799438, 4),
(328, 59, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120067', '清远市永裕实业有限公司', '蒸汽锅炉', 'HSG0.5-0.8-A II', '11204418002003080511', '2012-12-14', '201212', 39, 1356074696, 38, 1356076076, 37, 1356077005, 0, 0, NULL, 43, 1355799530, 4),
(329, 57, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120068', '步威（清远）皮革有限公司', '蒸汽锅炉', 'DZL4-1.25-A II', '11204418002002040161', '2012-12-14', '201212', 39, 1356074633, 38, 1356076107, 37, 1356308665, 0, 0, NULL, 43, 1355799593, 4),
(330, 200, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120069', '清远纳福娜陶瓷有限公司', '蒸汽锅炉', 'DZL2-1.25-A II', '11204418002006110011', '2012-12-13', '201212', 39, 1356074578, 38, 1356076147, 37, 1356308593, 0, 0, NULL, 43, 1355799771, 4),
(331, 201, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120070', '清远市欧雅陶瓷有限公司', '蒸汽锅炉', 'DZL6-1.25-A II', '11204418002011110004', '2012-12-13', '201212', 39, 1356074517, 38, 1356076263, 37, 1356308611, 0, 0, NULL, 43, 1355799923, 4),
(332, 202, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120071', '广东清远蒙娜丽莎建陶有限公司', '煤气发生炉', 'Φ1200×0.8×2600', '(E10-074)', '2012-12-13', '201212', 39, 1356074481, 38, 1356076537, 37, 1356308626, 0, 0, NULL, 43, 1355800489, 4),
(333, 202, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120072', '广东清远蒙娜丽莎建陶有限公司', '煤气发生炉', 'Φ1200×0.8×2600', '(C10-073)', '2012-12-13', '201212', 39, 1356074410, 38, 1356076569, 37, 1356308641, 0, 0, NULL, 43, 1355800648, 4),
(334, 203, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2012120073', '清远市清城区石角镇佑丰印染织造厂', '蒸汽锅炉', 'SZL6-1.25-A II', '11204418002012070007', '2012-12-14', '201212', 39, 1356074308, 38, 1356076289, 37, 1356308652, 0, 0, NULL, 43, 1355800812, 4),
(335, 139, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013010001', '清远市粤北之珠海鲜坊有限公司', '蒸汽锅炉', 'LSS0.75-0.8-YQ', '11204418002012010006', '2013-01-15', '201301', 39, 1358241250, 38, 1358296902, 37, 1358297526, 0, 0, NULL, 43, 1358240865, 4),
(336, 85, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013010002', '清远市亨健医用橡胶有限公司', '蒸汽锅炉', 'DZW2-1.0-A II', '11204418002002040152', '2013-01-15', '201301', 39, 1358241178, 38, 1358296850, 37, 1358297526, 0, 0, NULL, 43, 1358240933, 4),
(337, 179, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013010003', '连南奇乡生物科技有限公司', '蒸汽锅炉', 'DZG2-1.25-A II', '11204418002006050014', '2013-01-19', '201301', 39, 1358560611, 38, 1358560872, 37, 1358561215, 0, 0, NULL, 43, 1358560155, 4),
(338, 204, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013010004', '清远市协荣塑胶制品有限公司', '蒸汽锅炉', 'WNS6-1.0-Y(Q)', '11204418002004020629', '2013-01-25', '201301', 38, 1359444535, 38, 0, 37, 0, 0, 0, NULL, 38, 1359376825, 2),
(339, 204, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013010005', '清远市协荣塑胶制品有限公司', '蒸汽锅炉', 'WNS6-1.0-Y(Q)', '11204418002004020628', '2013-01-25', '201301', 38, 1359444535, 38, 0, 37, 0, 0, 0, NULL, 38, 1359376916, 2),
(340, 205, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013010006', '清新县荣诚物业有限公司', '蒸汽锅炉', ' WNS2-1.25-YQ', '11304418002009020002', '2013-01-25', '201301', 38, 1359444535, 38, 0, 37, 0, 0, 0, NULL, 38, 1359377327, 2),
(341, 66, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013010007', '清远市永嘉洗涤有限公司', '蒸汽锅炉', 'DZL4-1.25-A', '11204418002006050007', '2013-01-23', '201301', 39, 1359444501, 38, 1359447080, 37, 1359447406, 0, 0, NULL, 41, 1359428012, 4),
(342, 63, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013010008', '亿盈（清远）发泡材料有限公司', '蒸汽锅炉', 'DZL6-1.25-A', '11204418002004090005', '2013-01-23', '201301', 39, 1359444491, 38, 1359447034, 37, 1359447350, 0, 0, NULL, 41, 1359428481, 4),
(343, 60, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013010009', '日丰（清远）电子有限公司', '蒸汽锅炉', 'WNS2-1.25-Y', '11204418002006100004', '2013-01-23', '201301', 39, 1359444477, 38, 1359446984, 37, 1359447326, 43, 1359448753, NULL, 41, 1359428612, 4),
(344, 89, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020001', '清远先锋制衣有限公司', '蒸汽锅炉', 'WNS1-1.0-Y', '11204418002002040168', '2013-01-30', '201302', 39, 1361327142, 38, 1361327712, 37, 1361328107, 0, 0, NULL, 41, 1361324695, 4),
(345, 92, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020002', '清远市振威皮革有限公司', '蒸汽锅炉', 'DZL4-1.25-A', '11204418002006080002', '2013-01-30', '201302', 39, 1361327112, 38, 1361327684, 37, 1361328213, 0, 0, NULL, 41, 1361325261, 4),
(346, 90, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020003', '骏达（清远）制衣有限公司', '蒸汽锅炉', 'LHC1-0.69-A III', '11204418002008060009', '2013-01-30', '201302', 39, 1361327082, 38, 1361327318, 37, 1361328228, 0, 0, NULL, 41, 1361325425, 4),
(347, 88, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020004', '清远市汉铿物业发展有限公司', '蒸汽锅炉', 'WNS1-1.0-Y', '--', '2013-01-30', '201302', 39, 1361327053, 38, 1361327294, 37, 1361328239, 0, 0, NULL, 41, 1361325567, 4),
(348, 65, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020005', '兆联（清远）纺织印染有限公司', '蒸汽锅炉', 'DZL6-1.25-A', '11204418002004120049', '2013-01-31', '201302', 39, 1361327023, 38, 1361327269, 37, 1361328254, 0, 0, NULL, 41, 1361325758, 4),
(349, 29, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020006', '佛冈龙清电力器材公司', '蒸汽锅炉', 'DZL4-1.25', '11204418002008010015', '2013-01-30', '201302', 39, 1361326959, 38, 1361327223, 37, 1361328267, 0, 0, NULL, 41, 1361325897, 4),
(350, 64, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020007', '佛冈冠华纸塑包装有限公司', '蒸汽锅炉', 'DZL4-1.25-A', '--', '2013-01-07', '201302', 39, 1361870176, 38, 1361928634, 37, 1361933722, 0, 0, NULL, 43, 1361497399, 4),
(351, 29, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020008', '佛冈龙清电力器材公司', '蒸汽锅炉', 'DZL4-1.25', '11204418002008010015', '2013-01-07', '201302', 39, 1361870132, 38, 1361928634, 37, 1361933739, 0, 0, NULL, 43, 1361497657, 4),
(357, 90, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020013', '骏达（清远）制衣有限公司', '蒸汽锅炉', 'LHC1-0.69-A III', '11204418002008060009', '2013-01-08', '201302', 39, 1361870040, 38, 1361928634, 37, 1361933790, 0, 0, NULL, 43, 1361499075, 4),
(358, 65, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020014', '兆联（清远）纺织印染有限公司', '蒸汽锅炉', 'DZL6-1.25-A', '11204418002004120049', '2013-01-07', '201302', 39, 1361869965, 38, 1361928634, 37, 1361933869, 0, 0, NULL, 43, 1361499231, 4),
(355, 88, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020011', '清远市汉铿物业发展有限公司', '蒸汽锅炉', 'WNS1-1.0-Y', '--', '2013-01-08', '201302', 39, 1361870095, 38, 1361928634, 37, 1361933763, 0, 0, NULL, 43, 1361498473, 4),
(359, 89, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020015', '清远先锋制衣有限公司', '蒸汽锅炉', 'WNS1-1.0-Y', '11204418002002040168', '2013-01-08', '201302', 39, 1361869643, 38, 1361928556, 37, 1361933889, 0, 0, NULL, 43, 1361499425, 4),
(360, 66, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020016', '清远市永嘉洗涤有限公司', '蒸汽锅炉', 'DZL4-1.25-A', '11204418002006050007', '2013-01-08', '201302', 39, 1361869572, 38, 1361928556, 37, 1361933906, 0, 0, NULL, 43, 1361499788, 4),
(361, 60, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020017', '日丰（清远）电子有限公司', '蒸汽锅炉', 'WNS2-1.25-Y', '11204418002006100004', '2013-01-08', '201302', 39, 1361869508, 38, 1361928556, 37, 1361933919, 0, 0, NULL, 43, 1361499985, 4),
(362, 63, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020018', '亿盈（清远）发泡材料有限公司', '蒸汽锅炉', 'DZL6-1.25-A', '11204418002004090005', '2013-01-08', '201302', 39, 1361869459, 38, 1361928556, 37, 1361933932, 0, 0, NULL, 43, 1361500108, 4),
(363, 206, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020019', '清新县金联塑料厂', '蒸汽锅炉', 'WNS4-1.0-Y', '--', '2012-12-25', '201302', 39, 1361868881, 38, 1361928693, 37, 1361933229, 0, 0, NULL, 43, 1361500799, 4),
(364, 64, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020020', '佛冈冠华纸塑包装有限公司', '蒸汽锅炉', 'DZL4-1.25-A', '--', '2012-12-27', '201302', 39, 1361869270, 38, 1361928556, 37, 1361933245, 0, 0, NULL, 43, 1361501022, 4),
(365, 29, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020021', '佛冈龙清电力器材公司', '蒸汽锅炉', 'DZL4-1.25', '11204418002008010015', '2012-12-27', '201302', 39, 1361869134, 38, 1361928556, 37, 1361933267, 0, 0, NULL, 43, 1361501343, 4),
(366, 65, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020022', '兆联（清远）纺织印染有限公司', '蒸汽锅炉', 'DZL6-1.25-A', '11204418002004120049', '2012-12-27', '201302', 39, 1361869386, 38, 1361928556, 37, 1361933295, 0, 0, NULL, 43, 1361502266, 4),
(367, 155, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020023', '清新县金丰纺织漂染定型厂', '蒸汽锅炉', 'SZL10-1.25-A', '11204418002003080517', '2012-12-26', '201302', 39, 1361868420, 38, 1361928693, 37, 1361933331, 0, 0, NULL, 43, 1361502408, 4),
(375, 70, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020031', '清远市东上钢业有限公司', '蒸汽锅炉', 'SHX12-1.25-A I', '11204418002008100022', '2012-12-21', '201302', 39, 1361867820, 38, 1361928756, 37, 1361934022, 0, 0, NULL, 43, 1361504874, 4),
(376, 12, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020032', '宏升（清远）金属有限公司', '蒸汽锅炉', ' SZL6-1.25-A II 1号', '11204418002008040006', '2012-12-21', '201302', 39, 1361867741, 38, 1361928932, 37, 1361934122, 0, 0, NULL, 43, 1361505298, 4),
(377, 12, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020033', '宏升（清远）金属有限公司', '蒸汽锅炉', 'SZL6-1.25-A II 2号', '11204418002008040005', '2012-12-21', '201302', 39, 1361867682, 38, 1361928907, 37, 1361934101, 0, 0, NULL, 43, 1361515130, 4),
(378, 71, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020034', '清远忠信世纪玻纤有限公司', '余热锅炉', 'Q36/800-6-1.25', '11204418002008090014', '2012-12-21', '201302', 39, 1361867581, 38, 1361928968, 37, 1361934164, 0, 0, NULL, 43, 1361515947, 4),
(379, 73, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020035', '清城区石角镇田心恒生饲料加工厂', '蒸汽锅炉', 'DZL4-1.25-A II', '11204418002006070003', '2012-12-21', '201302', 41, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361516201, 1),
(374, 67, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020030', '英德海螺水泥有限责任公司', '余热锅炉', 'QC338/325-28.29-0.8/305/PH-J', '11104418002008100013', '2012-12-30', '201302', 39, 1361867945, 38, 1361925880, 37, 1361934330, 0, 0, NULL, 43, 1361504265, 4),
(384, 67, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020039', '英德海螺水泥有限责任公司', '余热锅炉', 'QC338/325-28.29-0.8/305/PH-J', '11104418002008100010', '2012-12-30', '201302', 39, 1361867198, 38, 1361925847, 37, 1361934330, 0, 0, NULL, 43, 1361519387, 4),
(381, 67, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020037', '英德海螺水泥有限责任公司', '余热锅炉', 'QC338/325-28.29-0.8/305/PH-J', '11104418002008100012', '2012-12-30', '201302', 39, 1361867318, 38, 1361925847, 37, 1361934330, 0, 0, NULL, 43, 1361517075, 4),
(383, 67, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020038', '英德海螺水泥有限责任公司', '余热锅炉', 'QC308/325-28.29-0.8/305/PH-J', '11104418002008100011', '2012-12-30', '201302', 39, 1361867272, 38, 1361925847, 37, 1361934330, 0, 0, NULL, 43, 1361518411, 4),
(385, 67, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020040', '英德海螺水泥有限责任公司', '余热锅炉', 'QC206/360-18-0.7/345', '11104418002008100015', '2012-12-30', '201302', 39, 1361867140, 38, 1361925847, 37, 1361934330, 0, 0, NULL, 43, 1361520321, 4),
(386, 67, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020041', '英德海螺水泥有限责任公司', '余热锅炉', 'QC206/360-18-0.7/345', '11104418002008100017', '2012-12-30', '201302', 39, 1361867069, 38, 1361925847, 37, 1361934330, 0, 0, NULL, 43, 1361520519, 4),
(387, 67, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020042', '英德海螺水泥有限责任公司', '余热锅炉', 'QC206/360-18-0.7/345', '11104418002008100016', '2012-12-30', '201302', 39, 1361867016, 38, 1361925847, 37, 1361934330, 0, 0, NULL, 43, 1361520820, 4),
(388, 67, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020043', '英德海螺水泥有限责任公司', '余热锅炉', 'QC338/325-28.29-0.8/305/PH-J', '11104418002008100013', '2012-12-30', '201302', 39, 1361866973, 38, 1361925847, 37, 1361934330, 0, 0, NULL, 43, 1361521089, 4),
(390, 207, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020044', '英德市汀汀水上乐园', '承压蒸汽锅炉', 'LHG1-0.7-AⅢ', '11204418002010060007', '2012-12-30', '201302', 39, 1361866920, 38, 1361926057, 37, 1361934468, 0, 0, NULL, 43, 1361756167, 4),
(391, 208, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020045', '英德佳纳金属科技有限公司', '蒸汽锅炉', 'SZL10-1.25-AⅡ', '11204418002005110001', '2012-12-30', '201302', 39, 1361866871, 38, 1361926256, 37, 1361934468, 0, 0, NULL, 43, 1361756666, 4),
(392, 209, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020046', '浛洸镇荣华制衣一厂', '蒸汽锅炉', 'LHC0.5-0.7-AⅡ', '11204418002009060009', '2012-12-30', '201302', 39, 1361866828, 38, 1361934916, 37, 1361936149, 0, 0, NULL, 43, 1361757074, 4),
(393, 210, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020047', '英德市实益长丰纺织有限公司', '蒸汽锅炉', 'SZL15-1.25-A Ⅲ', '11204418002012050001', '2012-12-31', '201302', 39, 1361866767, 38, 1361926507, 37, 1361934640, 0, 0, NULL, 43, 1361759209, 4),
(394, 211, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020048', '英德市贵兴林业开发有限公司', '蒸汽锅炉', 'DZH2-1.0-A Ⅱ', '11204418002010110012', '2012-12-31', '201302', 39, 1361866719, 38, 1361928102, 37, 1361934640, 0, 0, NULL, 43, 1361759850, 4),
(395, 37, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020049', '英德浛洸创盟洗涤厂', '蒸汽锅炉', 'DZH4-1.25-A Ⅱ', '11204418002008100019', '2013-01-31', '201302', 39, 1361866653, 38, 1361926954, 37, 1361934640, 0, 0, NULL, 43, 1361760359, 4),
(396, 48, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020050', '英德市三友木业有限公司', '蒸汽锅炉', 'DZG4-1.3-M', '11204418002012030005', '2012-12-31', '201302', 39, 1361866580, 38, 1361926768, 37, 1361934640, 0, 0, NULL, 43, 1361761434, 4),
(397, 212, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020051', '英德市粤北糖业有限公司', '蒸汽锅炉', 'SHS25-25/400-G', '11204418002001120002', '2012-12-31', '201302', 39, 1361866513, 38, 1361926808, 37, 1361934640, 0, 0, NULL, 43, 1361761967, 4),
(398, 212, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020052', '英德市粤北糖业有限公司', '蒸汽锅炉', 'SHS20-25/400-Ⅱ', '11204418002001120003', '2012-12-31', '201302', 39, 1361866466, 38, 1361926808, 37, 1361934640, 0, 0, NULL, 43, 1361762229, 4),
(399, 25, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020053', '英德市永发蚕业有限公司', '蒸汽锅炉', 'DZL4-1.25-A II', '11204418002005060014', '2012-12-31', '201302', 39, 1361866408, 38, 1361926841, 37, 1361934640, 0, 0, NULL, 43, 1361762817, 4),
(400, 49, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020054', '英德市权祥凉茶有限公司', '蒸汽锅炉', 'DZL4-1.25-A II', '11204418002006120011', '2012-12-31', '201302', 39, 1361866329, 38, 1361926954, 37, 1361934640, 0, 0, NULL, 43, 1361763205, 4),
(401, 213, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020055', '三耀（英德）礼品包装有限公司', '蒸汽锅炉', 'SZL8-1.25-A Ⅱ', '11204418002008120010', '2012-12-31', '201302', 39, 1361866257, 38, 1361926873, 37, 1361934559, 0, 0, NULL, 43, 1361764083, 4),
(402, 115, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020056', '英德市含光镇天翔制衣厂', '蒸汽锅炉', 'LSG0.15-0.8-W12', '11204418002010110003', '2012-12-31', '201302', 39, 1361866104, 38, 1361926954, 37, 1361934640, 0, 0, NULL, 43, 1361764626, 4),
(403, 55, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020057', '英德市浛洸镇雅宜洗涤制衣厂', '蒸汽锅炉', 'DZH4.0-1.25-A Ⅱ', '11204418002003080509', '2012-12-30', '201302', 39, 1361865939, 38, 1361927198, 37, 1361934559, 0, 0, NULL, 43, 1361774964, 4),
(404, 214, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020058', '英德市大站镇日日新洗衣店', '承压蒸汽锅炉', 'DZG1-1.0-M.A', '11204418002009090022', '2012-12-30', '201302', 39, 1361865846, 38, 1361927365, 37, 1361934559, 0, 0, NULL, 43, 1361775954, 4),
(405, 215, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020059', '英德市岳泉化工有限公司', '蒸汽锅炉', 'QCF35/950-19-3.82/450', '11204418002008080005', '2012-12-30', '201302', 39, 1361865752, 38, 1361927473, 37, 1361934559, 0, 0, NULL, 43, 1361776415, 4),
(406, 72, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020060', '英德市隆盛金属有限公司', '蒸汽锅炉', 'DZL4-1.25-A II', '11204418002011100009', '2012-12-30', '201302', 39, 1361865656, 38, 1361927521, 37, 1361934559, 0, 0, NULL, 43, 1361776621, 4),
(407, 56, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020061', '浛洸镇荣华制衣一厂', '蒸汽锅炉', 'DZL2-1.0-AⅢ', '11204418002010040007', '2012-12-30', '201302', 39, 1361867508, 38, 1361926295, 37, 1361934559, 0, 0, NULL, 43, 1361777196, 4),
(408, 52, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020062', '含光镇金城时代制衣厂', '蒸汽锅炉', 'DLG1-1.0-AⅡ', '11204418002009070010', '2012-12-30', '201302', 39, 1361865445, 38, 1361927651, 37, 1361934559, 0, 0, NULL, 43, 1361777857, 4),
(409, 216, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020063', '英德联益洗涤有限公司', '蒸汽锅炉', 'DZG4-1.25-W Ⅱ', '11204418002004030637', '2012-12-30', '201302', 39, 1361865116, 38, 1361927651, 37, 1361934559, 0, 0, NULL, 43, 1361778463, 4),
(410, 217, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020064', '广东致远新材料有限公司', '蒸汽锅炉', 'WNS2-1.0-Y', '--', '2012-12-30', '201302', 39, 1361865071, 38, 1361927651, 37, 1361934559, 0, 0, NULL, 43, 1361778791, 4),
(411, 218, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020065', '英德市海螺国际大酒店', '蒸汽锅炉', 'WNS1-1.25-YQ', '11304418002004120002', '2012-12-30', '201302', 39, 1361865021, 38, 1361927651, 37, 1361934559, 0, 0, NULL, 43, 1361779231, 4),
(413, 219, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020066', '广东省华农温氏畜牧股份有限公司英州分公司', '蒸汽锅炉', 'DZL4-1.25-A II', '11204418002012060002', '2012-12-31', '201302', 39, 1361864894, 38, 1361928461, 37, 1361934640, 0, 0, NULL, 43, 1361780305, 4),
(414, 219, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020067', '广东省华农温氏畜牧股份有限公司英州分公司', '蒸汽锅炉', 'DZL2-1.0-A Ⅱ', '11204418002008070008', '2012-12-30', '201302', 39, 1361864775, 38, 1361928436, 37, 1361934559, 0, 0, NULL, 43, 1361780651, 4),
(415, 39, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020068', '同进（英德）纺织品有限公司', '蒸汽锅炉', 'SHXF10-2.5/400-A II', '11204418002008110015', '2012-12-30', '201302', 39, 1361864574, 38, 1361934916, 37, 1361936141, 0, 0, NULL, 43, 1361780843, 4),
(416, 21, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020069', '英德龙山水泥有限责任公司', '余热锅炉', 'QC206/360-18-0.7/345', '11204418002008030006', '2012-12-30', '201302', 39, 1361864490, 38, 1361927981, 37, 1361934372, 0, 0, NULL, 43, 1361781518, 4),
(417, 220, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020070', '英德龙山水泥有限责任公司', '余热锅炉', 'MHA32-AOE701-R3/PH-J', '11204418002008030005', '2012-12-30', '201302', 39, 1361864435, 38, 1361927910, 37, 1361934372, 0, 0, NULL, 43, 1361839621, 4),
(418, 221, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020071', '英德和兴灰砂砖厂', '蒸汽锅炉', 'DZG2-1.25-A II', '11204418002007100007', '2012-12-30', '201302', 39, 1361864357, 38, 1361928038, 37, 1361934372, 0, 0, NULL, 43, 1361862081, 4),
(419, 222, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020072', '英德市永富塑料制品厂', '蒸汽锅炉', 'DZG2-1.25-A II', '11204418002004090017', '2012-12-30', '201302', 39, 1361864196, 38, 1361928038, 37, 1361934372, 0, 0, NULL, 43, 1361862276, 4),
(420, 38, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020073', '英德市昊晟金属塑料制品有限公司', '蒸汽锅炉', 'SZL4-1.25-A II', '11204418002009090014', '2012-12-30', '201302', 39, 1361864086, 38, 1361928038, 37, 1361934399, 0, 0, NULL, 43, 1361862797, 4),
(421, 183, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020074', '阳山县洪辉新型环保建材有限责任公司', '蒸汽锅炉', 'DZL6-1.25-A II', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361863232, 1),
(422, 223, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020075', '清远市升华建陶有限公司', '煤气发生炉', 'Φ1200×8.0×2590', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361863569, 1),
(423, 223, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020076', '清远市升华建陶有限公司', '煤气发生炉', 'Φ4000×20.0×3160', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361863786, 1),
(424, 223, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020077', '清远市升华建陶有限公司', '煤气发生炉', 'Φ1200×8.0×2590', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361863910, 1),
(425, 223, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020078', '清远市升华建陶有限公司', '煤气发生炉', 'Φ4000×20.0×3160', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361864041, 1),
(426, 224, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020079', '广东新一派建材有限公司', '煤气发生炉', 'Φ1600×14.0×3050', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361864388, 1),
(427, 224, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020080', '广东新一派建材有限公司', '煤气发生炉', 'DZL4-1.25-A II', '11204418002010120003', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361865370, 1),
(428, 224, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020081', '广东新一派建材有限公司', '煤气发生炉', 'Φ1200×8.0×2600', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361865499, 1),
(429, 224, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020082', '广东新一派建材有限公司', '煤气发生炉', 'Φ1600×14.0×3050', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361865633, 1),
(430, 225, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020083', '广东英超陶瓷有限公司', '汽包', '--', '21704418002010120010', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361865811, 1),
(431, 225, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020084', '广东英超陶瓷有限公司', '汽包', '--', '21704418002010120009', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361866038, 1),
(432, 225, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020085', '广东英超陶瓷有限公司', '汽包', '--', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361866152, 1),
(433, 225, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020086', '广东英超陶瓷有限公司', '汽包', '--', '21704418002010120008', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361866255, 1),
(434, 226, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020087', '清远市天域陶瓷有限公司', '汽包', 'Φ3800', '21704418002010010022', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361866424, 1),
(435, 226, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020088', '清远市天域陶瓷有限公司', '汽包', 'Φ100', '21704418002010010020', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361867773, 1),
(436, 227, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020089', '清远市坚瓷陶瓷有限公司', '汽包', 'Φ1000×8.0×2346', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361868123, 1),
(437, 228, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020090', '清远市俊成陶瓷有限公司', '汽包', 'Φ1500×12.0×2900', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361868335, 1),
(438, 228, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020091', '清远市俊成陶瓷有限公司', '汽包', 'Φ1200×8.0×2600', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361868632, 1),
(439, 73, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020092', '清城区石角镇田心恒生饲料加工厂', '蒸汽锅炉', 'DZL4-1.25-A II', '11204418002006070003', '2012-12-21', '201302', 39, 1361869231, 38, 1361928783, 37, 1361934062, 0, 0, NULL, 43, 1361869149, 4),
(440, 228, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020093', '清远市俊成陶瓷有限公司', '汽包', 'Φ1500×12.0×2900', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361869342, 1),
(441, 229, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020094', '广东昊晟陶瓷有限公司', '煤气发生炉', 'Φ3600×20.0×2500', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361869538, 1),
(442, 229, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020095', '广东昊晟陶瓷有限公司', '煤气发生炉', 'Φ1250×8.0×6600', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361869649, 1),
(443, 229, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020096', '广东昊晟陶瓷有限公司', '煤气发生炉', 'Φ1000×8.0×2630', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361869750, 1),
(444, 229, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020097', '广东昊晟陶瓷有限公司', '煤气发生炉', 'Φ3600×20.0×2500', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361869861, 1),
(445, 230, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020098', '清远市港龙陶瓷有限公司', '煤气发生炉', 'Φ1250×8.0×6630', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361870330, 1),
(446, 230, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020099', '清远市港龙陶瓷有限公司', '煤气发生炉', 'Φ1000×8.0×2610', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361870625, 1),
(447, 231, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020100', '清远市宝仕马陶瓷有限公司', '煤气发生炉', '--', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361870836, 1),
(448, 231, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020101', '清远市宝仕马陶瓷有限公司', '煤气发生炉', '--', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361926739, 1),
(449, 231, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020102', '清远市宝仕马陶瓷有限公司', '蒸汽锅炉', 'SZW4-1.25-A I', '11204418002011080001', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361926895, 1),
(452, 232, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020105', '广东汇翔陶瓷有限公司', '煤气发生炉汽包', '--', '21704418002012030006', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361928183, 1),
(451, 232, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020104', '广东汇翔陶瓷有限公司', '煤气发生炉汽包', '--', '21704418002012030005', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361928037, 1),
(453, 232, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020106', '广东汇翔陶瓷有限公司', '煤气发生炉汽包', '--', '21704418002012030004', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361928289, 1),
(454, 54, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020107', '英德市宝江水泥有限责任公司', '余热锅炉', 'QC175/350-15-1.6/330', '11204418002010110005', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361928482, 1),
(455, 54, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020108', '英德市宝江水泥有限责任公司', '余热锅炉', 'QC175/350-15-1.6/330', '11204418002010110004', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361928578, 1),
(456, 233, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020109', '清远市贝斯特瓷业有限公司', '煤气发生炉', 'Φ4000/4400×22/14×3160', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361928777, 1),
(457, 233, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020110', '清远市贝斯特瓷业有限公司', '煤气发生炉', 'Φ4000/4400×22/14×3160', '--', '2012-12-24', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361928861, 1),
(458, 92, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020111', '清远市振威皮革有限公司', '蒸汽锅炉', 'DZL4-1.25-A', '11204418002006080002', '2013-01-06', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361930170, 1),
(459, 91, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020112', '清远市清城区振威皮革厂清新分厂', '蒸汽锅炉', 'DZG4-1.25-A', '11204418002002040149', '2013-01-06', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1361930981, 1),
(460, 46, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020113', '英德市云超聚合材料有限公司', '蒸汽锅炉', 'WNS4-1.25-Y', '11204418002008010009', '2012-12-25', '201302', 39, 1362039047, 38, 0, 37, 0, 0, 0, NULL, 43, 1361931915, 2),
(461, 234, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020114', '英德市英城新雄新型建筑材料厂', '蒸汽锅炉', 'SZL(G)6-1.6-BMF', '--', '2012-12-25', '201302', 39, 1362039148, 38, 0, 37, 0, 0, 0, NULL, 43, 1361933719, 2),
(464, 47, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020117', '巧口（英德）食品有限公司', '蒸汽锅炉', 'SZL6-1.25-W Ⅱ', '11204418002009060005', '2012-12-25', '201302', 39, 1362039391, 38, 0, 37, 0, 0, 0, NULL, 43, 1361936456, 2),
(463, 7, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020116', '英德市大信茧丝绸有限公司', '蒸汽锅炉', 'DZL6-1.25-A Ⅱ', '11204418002009070008', '2012-12-25', '201302', 39, 1362039245, 38, 0, 37, 0, 0, 0, NULL, 43, 1361935793, 2),
(465, 50, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020118', '英德市鸿德食品有限公司', '蒸汽锅炉', 'DZH2-0.7-AⅡ', '11204418002007030010', '2012-12-26', '201302', 39, 1362039452, 38, 0, 37, 0, 0, 0, NULL, 43, 1361936998, 2),
(466, 235, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020119', '广东清远广英水泥有限公司', '余热锅炉', 'QC220/360-20.2-0.9/340', '11204418002012090005', '2013-01-26', '201302', 39, 1362039513, 38, 0, 37, 0, 0, 0, NULL, 43, 1361937610, 2),
(467, 235, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020120', '广东清远广英水泥有限公司', '余热锅炉', 'QC340/320-26-0.9/310', '11204418002012090005', '2012-12-26', '201302', 39, 1362039564, 38, 0, 37, 0, 0, 0, NULL, 43, 1361947504, 2),
(468, 236, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020121', '英德市海淋种植有限公司', '蒸汽锅炉', 'DZG4-1.25-A(Ⅱ)', '11204418002009040006', '2012-12-26', '201302', 39, 1362039636, 38, 0, 37, 0, 0, 0, NULL, 43, 1361947958, 2),
(469, 237, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020122', '清新县禾云镇龙腾鞋底加工厂', '蒸汽锅炉', 'DZS2-1.25-M', '11204418002007050004', '2012-12-25', '201302', 39, 1362039724, 38, 0, 37, 0, 0, 0, NULL, 43, 1361948476, 2);
INSERT INTO `oa_report` (`id`, `company_id`, `title`, `report_num`, `sydw`, `sbpz`, `sbyh`, `sbdm`, `jyrc`, `belong_month`, `one_user_id`, `one_time`, `tow_user_id`, `tow_time`, `three_user_id`, `three_time`, `print_user_id`, `print_time`, `gzrq`, `add_userid`, `add_time`, `status`) VALUES
(470, 238, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020123', '清新县禾云镇创兴灰砂砖厂', '蒸汽锅炉', 'DZL4-1.25-AⅡ', '11204418002009030004', '2012-12-26', '201302', 39, 1362039784, 38, 0, 37, 0, 0, 0, NULL, 43, 1361948940, 2),
(471, 239, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020124', '清新海螺水泥有限公司', '余热锅炉', 'QC206/360-18-0.8/345', '--', '2012-12-26', '201302', 39, 1362039986, 38, 0, 37, 0, 0, 0, NULL, 43, 1361949373, 2),
(472, 240, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020125', '清新海螺水泥有限公司', '余热锅炉', 'QC206/360-18-0.8/345', '--', '2012-12-26', '201302', 39, 1362040089, 38, 0, 37, 0, 0, 0, NULL, 43, 1361950123, 2),
(473, 239, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020126', '清新海螺水泥有限公司', '余热锅炉', 'QC397/360-40-0.92/308', '--', '2012-12-26', '201302', 39, 1362040123, 38, 0, 37, 0, 0, 0, NULL, 43, 1361950379, 2),
(474, 239, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020127', '清新海螺水泥有限公司', '余热锅炉', 'QC397/360-40-0.92/308', '--', '2012-12-26', '201302', 39, 1362040179, 38, 0, 37, 0, 0, 0, NULL, 43, 1361950698, 2),
(475, 241, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020128', '恒大盛宇(清新)置业有限公司', '蒸汽锅炉', 'LSS1.0-1.0-Y', '11304418002011070002', '2012-12-25', '201302', 39, 1362040240, 38, 0, 37, 0, 0, 0, NULL, 43, 1361951217, 2),
(476, 242, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020129', '广东清远广英水泥有限公司', '余热锅炉', 'QC35.5/360-3.0-1.25/340', '11104418002011110003', '2012-12-26', '201302', 39, 1362040353, 38, 0, 37, 0, 0, 0, NULL, 43, 1361952093, 2),
(477, 235, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020130', '广东清远广英水泥有限公司', '余热锅炉', 'QC115/360-9.8-1.25/340', '11104418002011110001', '2012-12-26', '201302', 39, 1362040402, 38, 0, 37, 0, 0, 0, NULL, 43, 1361952334, 2),
(478, 235, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020131', '广东清远广英水泥有限公司', '余热锅炉', 'QC63.1/350-5.6-1.25/330', '--', '2012-12-26', '201302', 39, 1362040532, 38, 0, 37, 0, 0, 0, NULL, 43, 1361952618, 2),
(479, 235, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020132', '广东清远广英水泥有限公司', '余热锅炉', 'QC137/340-11.5-1.25/320', '11104418002011110004', '2012-12-26', '201302', 39, 1362040466, 38, 0, 37, 0, 0, 0, NULL, 43, 1361952895, 2),
(480, 243, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020133', '清新县浸潭灰沙砖厂', '蒸汽锅炉', 'DZL4-1.57-A Ⅱ', '11204418002008070010', '2012-12-25', '201302', 39, 1362040609, 38, 0, 37, 0, 0, 0, NULL, 43, 1361953838, 2),
(481, 244, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020134', '清远先导稀有金属有限公司', '蒸汽锅炉', 'WNS3-1.25-Y(Q)', '11204418002010060011', '2013-02-26', '201302', 39, 1362040663, 38, 0, 37, 0, 0, 0, NULL, 43, 1361954195, 2),
(482, 245, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020135', '清新县龙基环保砖有限公司', '蒸汽锅炉', 'DZG4-1.25-M', '11204418002008090012', '2012-12-26', '201302', 39, 1362040717, 38, 0, 37, 0, 0, 0, NULL, 43, 1361954554, 2),
(483, 246, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020136', '清新县振业模具钢制品有限公司', '蒸汽锅炉', 'SZL6-1.25-A Ⅱ', '11204418002009090018', '2012-12-26', '201302', 39, 1362040785, 38, 0, 37, 0, 0, 0, NULL, 43, 1361954915, 2),
(484, 247, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020137', '清远市万豪特陶瓷有限公司', '蒸汽锅炉', 'Φ4000/4400×22/14', '--', '2012-12-26', '201302', 39, 1362040863, 38, 0, 37, 0, 0, 0, NULL, 43, 1361955517, 2),
(485, 68, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020138', '清远市广州后花园有限公司（清远美林湖酒店）', '蒸汽锅炉', 'WNS1-1.0-YQ', '11204418002011070004', '2012-12-26', '201302', 39, 1362041055, 38, 0, 37, 0, 0, 0, NULL, 43, 1361955749, 2),
(486, 34, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020139', '清远加多宝草本植物科技有限公司', '蒸汽锅炉', 'SHS15-1.25-J', '11204418002010120005', '2012-12-27', '201302', 39, 1362041117, 38, 0, 37, 0, 0, 0, NULL, 43, 1361956199, 2),
(487, 98, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020140', '清远市益丰染织有限公司', '蒸汽锅炉', 'SZL6-1.25-A II', '11204418002006080005', '2013-01-09', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1362012344, 1),
(488, 99, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020141', '清远市百盛染织有限公司', '蒸汽锅炉', 'DZH4-1.25-A II', '11204418002002120444', '2013-01-09', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1362012541, 1),
(489, 172, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020142', '富元（清新）服饰有限公司', '蒸汽锅炉', 'SZL6-1.25-A II', '11204418002010110013', '2013-01-09', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1362012735, 1),
(490, 101, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020143', '新益（清远）织染整有限公司', '蒸汽锅炉', 'SHFX25-1.25-WI', '11204418002007030003', '2013-01-09', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1362013000, 1),
(491, 160, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020144', '丽珠集团新北江制药股份有限公司', '蒸汽锅炉', 'CB600500150', '11204418002002040202', '2013-01-16', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1362013524, 1),
(492, 160, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020145', '丽珠集团新北江制药股份有限公司', '蒸汽锅炉', 'WNS8-1.25-YQ', '11204418002002040199', '2013-01-16', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1362013726, 1),
(493, 80, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020146', '清远市裕成鞋材有限公司', '蒸汽锅炉', 'DZL8-1.25-A II', '11204418002008110001', '2013-01-16', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1362014259, 1),
(494, 166, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020147', '清远建滔裕花园酒店有限公司（原丽晶国际大酒店）', '蒸汽锅炉', 'WNS3-1.25-YQ', '11204418002007080017', '2013-01-16', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1362014594, 1),
(495, 86, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020148', '清远市步步高酒店管理有限公司', '蒸汽锅炉', 'WNS1.0-1.0-Y(S)', '11204418002009080005', '2013-01-16', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1362014767, 1),
(496, 87, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020149', '清远市酒厂有限公司', '蒸汽锅炉', 'DZL6-1.25-A II', '11204418002007100006', '2013-01-16', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1362015134, 1),
(497, 136, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020150', '清远市广德制衣有限公司', '蒸汽锅炉', 'WNS0.5-1.0-Y', '11204418002002040213', '2013-01-17', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1362015347, 1),
(498, 110, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020151', '清远市金正饲料有限公司', '蒸汽锅炉', 'DZL2-1.25-A II', '11204418002007010002', '2013-02-17', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1362015621, 1),
(499, 127, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020152', '清新县新鸿基染整有限公司', '蒸汽锅炉', 'SZL15-1.25-A II', '11204418002006070014', '2013-01-17', '201302', 39, 0, 38, 0, 37, 0, 0, 0, NULL, 43, 1362015782, 1),
(500, 81, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020153', '万邦（清新）鞋业有限公司', '蒸汽锅炉', 'SZL6-1.25-A II', '11204418002007090009', '2013-01-22', '201302', 39, 1362037943, 38, 0, 37, 0, 0, 0, NULL, 43, 1362016741, 2),
(501, 185, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020154', '阳山县伟达化工有限公司', '蒸汽锅炉', 'KZL4-1.3', '11204418002002040017', '2013-01-22', '201302', 39, 1362038739, 38, 0, 37, 0, 0, 0, NULL, 43, 1362017003, 2),
(502, 182, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020155', '阳山联益洗涤制衣厂', '蒸汽锅炉', 'DZL2-1.25-A II', '11204418002008010012', '2013-01-22', '201302', 39, 1362038582, 38, 0, 37, 0, 0, 0, NULL, 43, 1362017206, 2),
(503, 177, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020156', '阳山县永丰制衣厂', '蒸汽锅炉', 'DZH1.0-1.0-A II', '11204418002006010004', '2013-01-22', '201302', 39, 1362038145, 38, 0, 37, 0, 0, 0, NULL, 43, 1362017383, 2),
(504, 13, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020157', '阳山县同兴铜材有限公司', '蒸汽锅炉', 'DZL4-1.25-A II3', '11204418002008010011', '2013-01-23', '201302', 39, 1362037857, 38, 0, 37, 0, 0, 0, NULL, 43, 1362017649, 2),
(505, 188, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020158', '连南县三江镇森鑫木制品厂', '蒸汽锅炉', 'DZG4-1.25-M', '11204418002009030009', '2013-01-23', '201302', 39, 1362037808, 38, 0, 37, 0, 0, 0, NULL, 43, 1362017835, 2),
(506, 187, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020159', '连南利发毛织厂有限公司', '蒸汽锅炉', 'DZG2.0-1.25-A III', '11204418002011120003', '2013-01-22', '201302', 39, 1362037747, 38, 0, 37, 0, 0, 0, NULL, 43, 1362018001, 2),
(507, 176, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020160', '广东明华机械有限公司连南分公司', '蒸汽锅炉', 'DZL2-1.25-A II', '11204418002002040029', '2013-01-23', '201302', 39, 1362037680, 38, 0, 37, 0, 0, 0, NULL, 43, 1362018129, 2),
(508, 179, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020161', '连南奇乡生物科技有限公司', '蒸汽锅炉', 'DZG2-1.25-A II', '11204418002006050014', '2013-01-23', '201302', 39, 1362037598, 38, 0, 37, 0, 0, 0, NULL, 43, 1362018253, 2),
(509, 14, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020162', '连南县鹿鸣茧丝绸有限责任公司', '蒸汽锅炉', 'DZL4-1.25-W II', '11204418002002040033', '2013-01-22', '201302', 39, 1362037551, 38, 0, 37, 0, 0, 0, NULL, 43, 1362018404, 2),
(510, 186, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020163', '连州市海斌食品有限公司', '蒸汽锅炉', 'LHG1.0-0.7-A II', '11204418002011050002', '2013-01-23', '201302', 39, 1362037488, 38, 0, 37, 0, 0, 0, NULL, 43, 1362018599, 2),
(511, 180, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020164', '广东华农温氏畜牧股份有限公司连州分公司', '承压蒸汽锅炉', 'DZL4-1.25-A II', '11204418002011110003', '2013-01-23', '201302', 39, 1362037055, 38, 0, 37, 0, 0, 0, NULL, 43, 1362018780, 2),
(512, 178, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020165', '连州市强龙家俱木材加工有限公司', '蒸汽锅炉', 'DZH2.0-1.25-A III', '11204418002011080011', '2013-01-23', '201302', 39, 1362036983, 38, 0, 37, 0, 0, 0, NULL, 43, 1362018916, 2),
(513, 15, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020166', '连州市协诚毛巾制造有限公司', '蒸汽锅炉', 'DZL1.0-0.7-A II', '11204418002005010002', '2013-01-22', '201302', 39, 1362036925, 38, 0, 37, 0, 0, 0, NULL, 43, 1362019087, 2),
(514, 175, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020167', '连州市顺达大酒店', '蒸汽锅炉', 'DZG1.0-0.8-M(X)', '--', '2013-01-22', '201302', 39, 1362036828, 38, 0, 37, 0, 0, 0, NULL, 43, 1362019372, 2),
(515, 190, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020168', '连州市骏成木业有限公司', '蒸汽锅炉', 'DZG2-1.25-A(M)', '11204418002012060009', '2013-01-22', '201302', 39, 1362036699, 38, 0, 37, 0, 0, 0, NULL, 43, 1362019530, 2),
(516, 184, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020169', '连州市联发造纸有限公司', '蒸汽锅炉', 'SZL10-1.25-A II', '11204418002011100003', '2013-01-23', '201302', 39, 1362036633, 38, 0, 37, 0, 0, 0, NULL, 43, 1362019687, 2),
(517, 198, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020170', '建滔（连州）铜铂有限公司', '蒸汽锅炉', 'SHFX15-1.6-P', '11204418002004090015', '2013-01-22', '201302', 39, 1362036577, 38, 0, 37, 0, 0, 0, NULL, 43, 1362019878, 2),
(518, 74, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020171', '广东双汇食品有限公司', '蒸汽锅炉', 'SZL6-1.57-A II', '11204418002005010010', '2013-01-28', '201302', 39, 1362035643, 38, 0, 37, 0, 0, 0, NULL, 43, 1362020312, 2),
(519, 74, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020172', '广东双汇食品有限公司', '蒸汽锅炉', 'SZL6-1.57-A II', '11204418002005010011', '2013-01-25', '201302', 39, 1362035692, 38, 0, 37, 0, 0, 0, NULL, 43, 1362020450, 2),
(520, 74, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020173', '广东双汇食品有限公司', '蒸汽锅炉', 'SZL6-1.57-A II', '11204418002005010009', '2013-01-28', '201302', 39, 1362035733, 38, 0, 37, 0, 0, 0, NULL, 43, 1362020750, 2),
(521, 104, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020174', '清远市嘉博制药有限公司', '蒸汽锅炉', 'WNS2-1.25-Y', '11204418002005030002', '2013-01-28', '201302', 39, 1362035800, 38, 0, 37, 0, 0, 0, NULL, 43, 1362021020, 2),
(522, 103, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020175', '清远市鑫辉化工有限公司', '蒸汽锅炉', 'DZL2-1.25-A II', '11204418002006090010', '2013-01-29', '201302', 39, 1362035857, 38, 0, 37, 0, 0, 0, NULL, 43, 1362021174, 2),
(523, 93, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020176', '清远市清城区横荷裕威鞋材厂', '蒸汽锅炉', 'DZG2-1.0-M', '11204418002009080001', '2013-01-29', '201302', 39, 1362035973, 38, 0, 37, 0, 0, 0, NULL, 43, 1362021386, 2),
(524, 96, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020177', '蒙牛乳业（清远）有限公司', '承压蒸汽锅炉', 'WNS10-1.6-Q', '11204418002010100004', '2013-01-29', '201302', 39, 1362036047, 38, 0, 37, 0, 0, 0, NULL, 43, 1362021516, 2),
(525, 96, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020178', '蒙牛乳业（清远）有限公司', '承压蒸汽锅炉', 'WNS10-1.6-Q', '11204418002010100005', '2013-01-29', '201302', 39, 1362036104, 38, 0, 37, 0, 0, 0, NULL, 43, 1362021694, 2),
(526, 100, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020179', '清远市德和染整有限公司', '蒸汽锅炉', 'WNS10-1.25-Y', '11204418002002040219', '2013-01-29', '201302', 39, 1362036174, 38, 0, 37, 0, 0, 0, NULL, 43, 1362021979, 2),
(527, 97, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020180', '清远市灵捷制造化工有限公司', '蒸汽锅炉', 'LHS0.5-0.4-Y(Q)', '11204418002002100395', '2013-01-29', '201302', 39, 1362036232, 38, 0, 37, 0, 0, 0, NULL, 43, 1362022143, 2),
(528, 109, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020181', '诚展（清远）鞋业有限公司', '蒸汽锅炉', 'WNS6-1.0-Y(Q)', '11204418002007060010', '2013-01-29', '201302', 39, 1362036291, 38, 0, 37, 0, 0, 0, NULL, 43, 1362022310, 2),
(529, 205, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020182', '清新县荣诚物业有限公司', '蒸汽锅炉', ' WNS2-1.25-YQ', '11304418002009020001', '2013-01-28', '201302', 39, 1362041602, 38, 0, 37, 0, 0, 0, NULL, 43, 1362023087, 2),
(530, 205, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020183', '清新县荣诚物业有限公司', '蒸汽锅炉', ' WNS2-1.25-YQ', '11304418002009020002', '2013-01-28', '201302', 39, 1362041675, 38, 0, 37, 0, 0, 0, NULL, 43, 1362023255, 2),
(531, 118, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020184', '清远市兴发洗水厂', '蒸汽锅炉', 'SZL6-1.25-WA-WA', '11204418002003020462', '2013-01-29', '201302', 39, 1362041750, 38, 0, 37, 0, 0, 0, NULL, 43, 1362023408, 2),
(532, 167, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020185', '清新县山塘镇恒洁干洗服务部', '蒸汽锅炉', 'DZG0.5-0.8-M(X)', '11204418002012050002', '2013-01-29', '201302', 39, 1362041824, 38, 0, 37, 0, 0, 0, NULL, 43, 1362023574, 2),
(533, 193, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020186', '清远市江丰饲料有限公司', '蒸汽锅炉', 'DZL4-1.25-A II3', '11204418002007060001', '2013-01-29', '201302', 39, 1362041879, 38, 0, 37, 0, 0, 0, NULL, 43, 1362033957, 2),
(534, 119, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020187', '清远市清城区钜洋洗水厂', '蒸汽锅炉', 'KZL1.0-8', '11204418002003120595', '2013-01-28', '201302', 39, 1362041939, 38, 0, 37, 0, 0, 0, NULL, 43, 1362034107, 2),
(535, 108, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020188', '清远市清城区君康餐具消毒中心', '蒸汽锅炉', 'DZS2-1.25-M(A II)', '11204418002008050004', '2013-01-28', '201302', 39, 1362041997, 38, 0, 37, 0, 0, 0, NULL, 43, 1362034434, 2),
(536, 124, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020189', '清远双江颜料有限公司', '蒸汽锅炉', 'DZL6-1.25-A II', '--', '2013-01-28', '201302', 39, 1362042193, 38, 0, 37, 0, 0, 0, NULL, 43, 1362034886, 2),
(537, 196, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020190', '清远冠龙纺织染整厂', '蒸汽锅炉', 'SHL20-1.25', '11204418002002110419', '2013-01-28', '201302', 39, 1362042266, 38, 0, 37, 0, 0, 0, NULL, 43, 1362035038, 2),
(538, 107, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020191', '清远市大昌食品有限公司', '蒸汽锅炉', 'DZG2-1.0-W II', '11204418002009090015', '2013-01-28', '201302', 39, 1362042341, 38, 0, 37, 0, 0, 0, NULL, 43, 1362035488, 2),
(539, 194, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020192', '清远宪友兴业有限公司', '蒸汽锅炉', 'DZS4-1.25-A II(M)', '11204418002010090001', '2013-01-28', '201302', 39, 1362042403, 38, 0, 37, 0, 0, 0, NULL, 43, 1362035655, 2),
(540, 129, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020193', '清新县昊元新型墙体砖厂', '蒸汽锅炉', 'DZL6.0-1.57-A III II', '11204418002010090003', '2013-01-23', '201302', 39, 1362042539, 38, 0, 37, 0, 0, 0, NULL, 43, 1362036032, 2),
(541, 195, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020194', '松德丰（清远）食品有限公司', '蒸汽锅炉', 'WNS3.0-1.25-Y', '11204418002002040133', '2013-01-23', '201302', 39, 1362042687, 38, 0, 37, 0, 0, 0, NULL, 43, 1362036212, 2),
(542, 204, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020195', '清远市协荣塑胶制品有限公司', '蒸汽锅炉', 'WNS6-1.0-Y(Q)', '11204418002004020629', '2013-01-25', '201302', 39, 1362042846, 38, 0, 37, 0, 0, 0, NULL, 43, 1362036474, 2),
(543, 204, '工业锅炉运行水处理监督检验报告', 'GSJ－G2012-2013020196', '清远市协荣塑胶制品有限公司', '蒸汽锅炉', 'WNS6-1.0-Y(Q)', '11204418002004020628', '2013-01-25', '201302', 39, 1362042891, 38, 0, 37, 0, 0, 0, NULL, 43, 1362036605, 2);

-- --------------------------------------------------------

--
-- 表的结构 `oa_report_content`
--

CREATE TABLE IF NOT EXISTS `oa_report_content` (
  `report_id` int(11) NOT NULL COMMENT '对应report的ID',
  `company_name` varchar(128) DEFAULT NULL COMMENT '企业名称',
  `azdz` varchar(64) DEFAULT NULL COMMENT '安装地址',
  `aqglrr` varchar(64) DEFAULT NULL COMMENT '安全管理人员',
  `lxr` varchar(64) DEFAULT NULL COMMENT '联系人',
  `lxdh` varchar(64) DEFAULT NULL COMMENT '联系电话',
  `zyrrczqh` varchar(64) DEFAULT NULL COMMENT '作业人员持证情',
  `zzdw` varchar(64) DEFAULT NULL COMMENT '制造单位',
  `zczh` varchar(64) DEFAULT NULL COMMENT '注册证号',
  `sclfc` varchar(64) DEFAULT NULL COMMENT '水处理方式',
  `cl` varchar(64) DEFAULT NULL COMMENT '出力',
  `pz` varchar(64) DEFAULT NULL COMMENT '品 种',
  `xh` varchar(64) DEFAULT NULL COMMENT '型号',
  `edzfl` varchar(64) DEFAULT NULL COMMENT '额定蒸发量 （热功率）',
  `edyl` varchar(64) DEFAULT NULL COMMENT '额定压力 （出水温度）',
  `cylqq` varchar(64) DEFAULT NULL COMMENT '取样冷却器',
  `grq` varchar(64) DEFAULT NULL COMMENT '过热器',
  `sbdm` varchar(64) DEFAULT NULL COMMENT '设备代码',
  `sydjzh` varchar(64) DEFAULT NULL COMMENT '使用登记证号',
  `jyyj` varchar(256) NOT NULL COMMENT '检验依据',
  `ys_yd` varchar(64) DEFAULT NULL COMMENT '原水硬度(mmol/L)',
  `ys_zj` varchar(64) DEFAULT NULL COMMENT '原水总碱(mmol/L)',
  `ys_llz` varchar(64) DEFAULT NULL COMMENT '原水氯离子(mg/L)',
  `ys_sd` varchar(64) DEFAULT NULL COMMENT '原水浊度（FTU）',
  `ys_dd` varchar(64) DEFAULT NULL COMMENT '原水电导（us/cm）',
  `ws_rjgxw` varchar(64) DEFAULT NULL COMMENT '锅水溶解固形物(mg/L)',
  `ws_zjd` varchar(64) DEFAULT NULL COMMENT '锅水总碱度(mmol/L)',
  `ws_pjd` varchar(64) DEFAULT NULL COMMENT '锅水P碱度(mmol/L)',
  `ws_phz` varchar(64) DEFAULT NULL COMMENT '锅水PH值 (25℃)',
  `ws_po` varchar(64) DEFAULT NULL COMMENT '锅水PO43-(mg/L)',
  `ws_so` varchar(64) DEFAULT NULL COMMENT '锅水SO32-(mg/L)',
  `ws_xdjd` varchar(64) DEFAULT NULL COMMENT '锅水相对碱度',
  `ws_ddl` varchar(64) DEFAULT NULL COMMENT '锅水电导率（us/cm）',
  `ws_llz` varchar(64) DEFAULT NULL COMMENT '锅水氯离子(mg/L)',
  `ws_glbgdb` varchar(64) DEFAULT NULL COMMENT '锅水固氯比/固导比',
  `ws_pwl` varchar(64) DEFAULT NULL COMMENT '锅水排污率（%）',
  `gs_sd` varchar(64) DEFAULT NULL COMMENT '给水浊度（FTU）',
  `gs_yd` varchar(64) DEFAULT NULL COMMENT '给水硬度(mmol/L)',
  `gs_ph` varchar(64) DEFAULT NULL COMMENT '给水PH值 (25℃)',
  `gs_llz` varchar(64) DEFAULT NULL COMMENT '给水氯离子(mg/L)',
  `gs_zj` varchar(64) DEFAULT NULL COMMENT '给水总碱(mmol/L)',
  `gs_rjy` varchar(64) DEFAULT NULL COMMENT '给水溶解氧（mg/L）',
  `gs_qt` varchar(64) DEFAULT NULL COMMENT '给水全铁（mg/L）',
  `gs_y` varchar(64) DEFAULT NULL COMMENT '给水油（mg/L）',
  `gs_ddl` varchar(64) DEFAULT NULL COMMENT '给水电导率（us/cm）',
  `rhs_yd` varchar(64) DEFAULT NULL COMMENT '软化水硬度(mmol/L)',
  `rhs_qt` varchar(64) DEFAULT NULL COMMENT '软化水全铁（mg/L）',
  `rhs_y` varchar(64) DEFAULT NULL COMMENT '软化水油（mg/L）',
  `rhs_llz` varchar(64) DEFAULT NULL COMMENT '软化水氯离子(mg/L)',
  `rhs_phz` varchar(64) DEFAULT NULL COMMENT '软化水PH值 (25℃)',
  `jyjl` varchar(64) DEFAULT NULL COMMENT '检验结论',
  `jyyjhjy` varchar(512) DEFAULT NULL COMMENT '检验意见和建议',
  `bak` varchar(512) DEFAULT NULL COMMENT '备注',
  `jyjghzzh` varchar(64) DEFAULT NULL COMMENT '检验机构核准证号',
  `jyjghzrq` varchar(64) DEFAULT NULL COMMENT '检验机构核准日期',
  UNIQUE KEY `report_id` (`report_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='报表中的详细数据';

--
-- 导出表中的数据 `oa_report_content`
--

INSERT INTO `oa_report_content` (`report_id`, `company_name`, `azdz`, `aqglrr`, `lxr`, `lxdh`, `zyrrczqh`, `zzdw`, `zczh`, `sclfc`, `cl`, `pz`, `xh`, `edzfl`, `edyl`, `cylqq`, `grq`, `sbdm`, `sydjzh`, `jyyj`, `ys_yd`, `ys_zj`, `ys_llz`, `ys_sd`, `ys_dd`, `ws_rjgxw`, `ws_zjd`, `ws_pjd`, `ws_phz`, `ws_po`, `ws_so`, `ws_xdjd`, `ws_ddl`, `ws_llz`, `ws_glbgdb`, `ws_pwl`, `gs_sd`, `gs_yd`, `gs_ph`, `gs_llz`, `gs_zj`, `gs_rjy`, `gs_qt`, `gs_y`, `gs_ddl`, `rhs_yd`, `rhs_qt`, `rhs_y`, `rhs_llz`, `rhs_phz`, `jyjl`, `jyyjhjy`, `bak`, `jyjghzzh`, `jyjghzrq`) VALUES
(29, '万裕（清新）塑胶制品有限公司', '清新太平工业园', '唐礼军123', '唐礼军', '13631084066', '1人持证', '东莞新兴水处理设备有限公司', '-', '浮动床', '10 t/h', '蒸汽锅炉', 'DZL10-1.25-A II', '4 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002006110001', '锅粤RK0182', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '不合格', '1、给水硬度偏高软水器加盐再生，<br>2、锅水碱度偏高，<br>3、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>1111', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347316799'),
(28, '中粮广东天然五谷食品有限公司', '', '', '', '', '', '', '', '', '', '', '', '', '', '有', '无', '11204418002007070012', '', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '1、给水硬度偏高<br>2、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(27, '万裕（清新）塑胶制品有限公司', '清新太平工业园', '唐礼军123', '唐礼军', '13631084066', '1人持证', '东莞新兴水处理设备有限公司', '-', '浮动床', '10 t/h', '蒸汽锅炉', 'DZL10-1.25-A II', '4 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002006110001', '锅粤RK0182', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '基本合格', '333333', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(26, '万裕（清新）塑胶制品有限公司', '清新太平工业园', '唐礼军', '唐礼军', '13631084066', '1人持证', '东莞新兴水处理设备有限公司', '', '浮动床', '10 t/h', '蒸汽锅炉', 'DZL10-1.25-A II', '4 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002006110001', '锅粤RK0182', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '不合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347629989'),
(24, '晋勇（清远）橡胶工业有限公司', '广东省清远市清城区源潭镇峡山工业区规划9-1号地', '张明镇', '张明镇', '13509666075', '无证', '东莞新兴水处理设备有限公司', '', '浮动床', '3 t/h', '蒸汽锅炉', 'PP830', '3 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002010070003', '锅粤RA1017', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347159940'),
(25, '雅辉（清远）纸品有限公司', '清城区源潭高桥', '秦厂长', '秦厂长', '13922872331', '1人持证', '东莞科力热能设备厂', '', '浮动床', '8 t/h', '蒸汽锅炉', 'SZL8-1.25-A II', '8 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002007120013', '锅粤R00413', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347198266'),
(23, '佑丰（佛冈）印染有限公司', '佛冈县烟岭镇', '严惠强', '严惠强', '4562723', '无证', '雄广水处理设备厂', '', '流动床', '15   t/h', '15t/h(MW)', 'SZL15-1.25-A II', '15t/h(MW)', '1.25MPa(℃)', '有', '无', '11204418002008110021', '锅粤R00573', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347117465'),
(22, '连南县鹿鸣茧丝绸有限责任公司', '连南三江镇沿江西路', '卢总', '卢总', '13553901212', '1人持证', '杏坛水处理设备厂', '', '浮动床', '4 t/h', '蒸汽锅炉', 'DZL4-1.25-W II', '4 t/h (MW)', '1.25 MPa(℃)', '有', '有', '11204418002002040033', '锅粤RW0008', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '不合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347630049'),
(21, '连州市协诚毛巾制造有限公司', '连州城南红珠路19号', '彭培彦', '彭培彦', '6611098', '无证', '中兴工业公司水处理设备厂', '', '浮动床', '1 t/h', '蒸汽锅炉', 'DZL1.0-0.7-A II', '1.0 t/h (MW)', '0.7 MPa(℃)', '有', '无', '11204418002005010002', '锅粤R00104', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347022746'),
(18, '清远市中拓染整有限公司', '城区横荷大有虎岗', '姚志坚123', '姚志坚', '13076615428', '1人持证', '中兴永雄水处理设备厂', '', '流动床', '6 t/h', '蒸汽锅炉', 'SHFX6-1.26-H', '6.0 t/h (MW)', '1.25 MPa(℃)', '有', '有', '11204418002005090007', '锅粤RA0084', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347020334'),
(19, '阳山县同兴铜材有限公司', '阳山县七拱镇大石坪107国道旁', '黄兴国', '黄兴国', '13828589891', '1人持证', '中兴（永雄）工业水处理设备有限公司', '', '浮动床', '4 t/h', '蒸汽锅炉', 'DZL4-1.25-A II 3', '4.0 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002008010011', '锅粤R00434', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347630159'),
(20, '连南县鹿鸣茧丝绸有限责任公司', '连南三江镇沿江西路', '卢总', '卢总', '13553901212', '1人持证', '杏坛水处理设备厂', '', '浮动床', '4 t/h', '蒸汽锅炉', 'DZL4-1.25-W II', '4 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040033', '锅粤RW0008', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347197511'),
(12, '英德市大信茧丝绸有限公司', '大湾镇英建村', '池志院', '池志院', '13553936656', '无证', '雄广水处理设备厂', '-', '流动床', '6 t/h', '蒸汽锅炉', ' DZL6-1.25-AⅡ', '6t/h(MW)', '1.25 MPa(℃)', '有', '有', '11204418002009070008', '锅粤R00654', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347630185'),
(13, '清远市中拓染整有限公司', '城区横荷大有虎岗', '姚志坚', '姚志坚', '13076615428', '1人持证', '中兴永雄水处理设备厂', '', '流动床', '6 t/h', '蒸汽锅炉', 'SHFX6-1.26-H', '6.0 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002005090007', '锅粤RA0084', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347197541'),
(47, '连南县鹿鸣茧丝绸有限责任公司', '连南三江镇沿江西路', '卢总', '卢总', '13553901212', '1人持证', '杏坛水处理设备厂', '', '浮动床', '4 t/h', '蒸汽锅炉', 'DZL4-1.25-W II', '4 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040032', '锅粤RW0007', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '1、给水硬度偏高，<br>2、锅水碱度偏应适当加药以调控水 <br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(15, '清远市中拓染整有限公司', '城区横荷大有虎岗', '姚志坚', '姚志坚', '13076615428', '1人持证', '中兴永雄水处理设备厂', '', '流动床', '6 t/h', '蒸汽锅炉', 'SHFX6-1.25-H', '6t/h (MW)', '1.25 MPa(℃)', '有', '有', '11204418002005090003', '锅粤R00426', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(16, '清城区石角镇兴旺电解铜厂', '石角镇黄布小河东社村', '张仙林', '张仙林', '13926688888', '1人持证', '雄广水处理设备厂', '', '流动床', '8 t/h', '蒸汽锅炉', 'SZL8-1.25-A II', '8 t/h (MW)', '1.25 MPa(℃)', '有', '有', '11204418002008060003', '锅粤RO0483', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347019281'),
(17, '宏升（清远）金属有限公司', '清城石角镇循环经济开发区', '钟太升', '钟太升', '13610523101', '1人持证', '顺德雄广水处理设备厂', '', '流动床', '12 t/h', '蒸汽锅炉', 'SZL6-1.25-A II   2号', '6 t/h (MW)', '1.25 MPa(℃)', '有', '有', '11204418002008040005', '锅粤R00457', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1346840909'),
(30, '晋勇（清远）橡胶工业有限公司', '广东省清远市清城区源潭镇峡山工业区规划9-1号地', '张明镇', '张明镇', '13509666075', '无证', '东莞新兴水处理设备有限公司', '', '浮动床', '3 t/h', '蒸汽锅炉', 'PP830', '3 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002010070003', '锅粤RA1017', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '1、给水硬度偏高应定期再生，<br>123123123', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347317049'),
(31, '晋勇（清远）橡胶工业有限公司', '广东省清远市清城区源潭镇峡山工业区规划9-1号地', '张明镇', '张明镇', '13509666075', '无证', '东莞新兴水处理设备有限公司', '', '浮动床', '3 t/h', '蒸汽锅炉', 'PP830', '3 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002010070003', '锅粤RA1017', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '1、给水硬度偏高软水器应定期再生，加盐再生，<br>2、锅水高，<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(32, '晋勇（清远）橡胶工业有限公司', '广东省清远市清城区源潭镇峡山工业区规划9-1号地', '张明镇', '张明镇', '13509666075', '无证', '东莞新兴水处理设备有限公司', '', '浮动床', '3 t/h', '蒸汽锅炉', 'PP830', '3 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002010070003', '锅粤RA1017', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '1、给水硬度偏高，软水器应定期再生，<br>123', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(33, '晋勇（清远）橡胶工业有限公司', '广东省清远市清城区源潭镇峡山工业区规划9-1号地', '张明镇', '张明镇', '13509666075', '无证', '东莞新兴水处理设备有限公司', '', '浮动床', '3 t/h', '蒸汽锅炉', 'PP830', '3 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002010070003', '锅粤RA1017', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '1、给水硬度偏高软水器应定期再生，加盐再生，应加强流动床的运行操作。<br>2、锅水碱度偏pH 值偏高，低，应适当控制排污，应加强排污，应适当加药以调控水 <br>123122', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347589795'),
(34, '晋勇（清远）橡胶工业有限公司', '广东省清远市清城区源潭镇峡山工业区规划9-1号地', '张明镇336666', '张明镇', '13509666075', '无证', '东莞新兴水处理设备有限公司', '', '浮动床', '3 t/h', '蒸汽锅炉', 'PP830', '3 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002010070003', '锅粤RA1017', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(35, '晋勇（清远）橡胶工业有限公司', '广东省清远市清城区源潭镇峡山工业区规划9-1号地', '张明镇', '张明镇', '13509666075', '无证', '东莞新兴水处理设备有限公司', '', '浮动床', '3 t/h', '蒸汽锅炉', 'PP830', '3 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002010070003', '锅粤RA1017', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '基本合格', '1、锅水碱度偏高，<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347584986'),
(36, '英德龙山水泥有限责任公司', '望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '', '除盐水', '8t/h     1#AQC', '余热锅炉', 'QC206/360-18-0.7/345', '18t/h (MW)', '0.7MPa(℃)', '有', '有', '11204418002008030006', '锅粤R00447', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '1、给水硬度偏高软水器应定期再生，<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(49, '英德龙山水泥有限责任公司', '英德市望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '', '除盐水', '8t/h     1#AQC', '余热锅炉', 'MHA32-AOE701-R3/PH-J3#PH', '32t/h (MW)', '1.2MPa(℃)', '有', '无', '11204418002008030005', '-', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(38, '英德龙山水泥有限责任公司', '望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '', '除盐水', '8t/h     1#AQC', '余热锅炉', 'MHA32-AOE701-R3/PH-J3#PH', '32t/h (MW)', '1.2MPa(℃)', '有', '无', '11204418002008030005', '-', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347624744'),
(39, '阳山县同兴铜材有限公司', '阳山县七拱镇大石坪107国道旁', '黄兴国', '黄兴国', '13828589891', '1人持证', '中兴（永雄）工业水处理设备有限公司', '', '浮动床', '4 t/h', '蒸汽锅炉', 'DZL4-1.25-A II 3', '4.0 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002008010011', '锅粤R00434', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '不合格', '1、给水硬度偏高，软水器加盐再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347632747'),
(40, '晋勇（清远）橡胶工业有限公司', '广东省清远市清城区源潭镇峡山工业区规划9-1号地', '张明镇', '张明镇', '13509666075', '无证', '东莞新兴水处理设备有限公司', '', '浮动床', '3 t/h', '蒸汽锅炉', 'PP830', '3 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002010070003', '锅粤RA1017', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(41, '龙玮（佛冈）纺织有限公司', '佛冈县迳头镇大村村金岭工业区D区', '黄好德', '黄好德', '13926179699', '无证', '顺德（永雄）英永工业水处理有限公司', '', '锅外化学处理', '6   t/h', '蒸汽锅炉', 'SZL6-1.25-A II', '6t/h(MW)', '1.25MPa(℃)', '有', '无', '11204418002009110001', '锅粤R00692', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347663650'),
(42, '佛冈篁胜国际温泉花园有限公司', '佛冈县人民中心西北角', '罗向前', '罗向前', '13922553378', '1人持证', '佛山广容水处理设备有限公司', '', '锅外化学处理', '10   t/h', '蒸汽锅炉', 'DZL6-1.25-A II', '6t/h(MW)', '1.25MPa(℃)', '有', '无', '11204418002010040009', '锅粤RM1006', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347663636'),
(43, '龙玮（佛冈）纺织有限公司', '佛冈县迳头镇大村村金岭工业区D区', '黄好德', '黄好德', '13926179699', '无证', '顺德（永雄）英永工业水处理有限公司', '', '锅外化学处理', '6   t/h', '蒸汽锅炉', 'SZL6-1.25-A II', '6t/h(MW)', '1.25MPa(℃)', '有', '无', '11204418002009110001', '锅粤R00692', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(44, '佛冈顺亚纺织染整有限公司', '佛冈县迳头镇社坪村', '陈建文', '陈建文', '13926692122', '1人持证', '容桂宏硕水处理设备厂', '', '流动床', '10   t/h', '6.0t/h(MW)', 'SZL6-1.25-AII', '6.0t/h(MW)', '1.25MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(45, '佛冈顺亚纺织染整有限公司', '佛冈县迳头镇社坪村', '陈建文', '陈建文', '13926692122', '1人持证', '容桂宏硕水处理设备厂', '', '流动床', '10   t/h', '6.0t/h(MW)', 'SZL6-1.25-AII', '6.0t/h(MW)', '1.25MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(46, '佛冈顺亚纺织染整有限公司', '佛冈县迳头镇社坪村', '陈建文', '陈建文', '13926692122', '1人持证', '容桂宏硕水处理设备厂', '', '流动床', '10   t/h', '6.0t/h(MW)', 'SZL6-1.25-A II', '6.0t/h(MW)', '1.25MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(48, '英德市永发蚕业有限公司', '浛洸镇河江渡', '曾锐锋', '曾锐锋', '13750111912', '无证', '英永工业水处理设备厂', '', '浮动床', '4   t/h', '蒸汽锅炉', 'DZL4-1.25-AII', '4t/h(MW)', '1.25MPa(℃)', '有', '无', '11204418002005060014', '锅粤RP0238', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(50, '连南县鹿鸣茧丝绸有限责任公司', '连南三江镇沿江西路', '卢总', '卢总', '13553901212', '1人持证', '杏坛水处理设备厂', '', '浮动床', '4 t/h', '蒸汽锅炉', 'DZL4-1.25-W II', '4 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040032', '锅粤RW0007', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(51, '晋勇（清远）橡胶工业有限公司', '广东省清远市清城区源潭镇峡山工业区规划9-1号地', '张明镇', '张明镇', '13509666075', '无证', '东莞新兴水处理设备有限公司', '', '浮动床', '3 t/h', '蒸汽锅炉', 'PP830', '3 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002010070003', '锅粤RA1017', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(55, '英德龙山水泥有限责任公司', '广东省清远市英德市望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '', '除盐水', '8t/h     1#AQC', '余热锅炉', 'QC206/360-18-0.7/345', '18t/h (MW)', '0.7MPa(℃)', '有', '无', '11204418002008030006', '锅粤R00447', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(53, '连南县鹿鸣茧丝绸有限责任公司', '连南三江镇沿江西路', '卢总', '卢总', '13553901212', '1人持证', '杏坛水处理设备厂', '', '浮动床', '4 t/h', '蒸汽锅炉', 'DZL4-1.25-W II', '4 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040033', '锅粤RW0008', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(54, '连南县鹿鸣茧丝绸有限责任公司', '连南三江镇沿江西路', '卢总', '卢总', '13553901212', '1人持证', '杏坛水处理设备厂', '', '浮动床', '4 t/h', '蒸汽锅炉', 'DZL4-1.25-W II', '4 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040033', '锅粤RW0008', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1348237894'),
(56, '阳山新润兴陶瓷色料实业有限公司', '广东省清远市阳山县七拱镇塘坪村委会钓鱼公村小组办公室', '蔡镜秋', '蔡镜秋', '13926686438', '一人持证', '-', '-', '流动床', '30t/h', '蒸汽锅炉', 'DZL15-1.25-WII', '15.0t/h (MW)', '1.25 MPa(℃)', '有', '无', '-', '-', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(57, '阳山县同兴铜材有限公司', '阳山县七拱镇大石坪107国道旁', '黄兴国', '黄兴国', '13828589891', '1人持证', '中兴（永雄）工业水处理设备有限公司', '-', '浮动床', '4 t/h', '蒸汽锅炉', 'DZL4-1.25-A II 3', '4.0 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002008010011', '锅粤R00434', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(58, '阳山顺龙木业有限公司', '阳山县水口镇范村', '李健明', '李健明', '7827128', '一人持证', '-', '-', '锅外化学处理', '15 t/h', '蒸汽锅炉', ' QC44/820-15-1.6', '15  t/h(MW)', '1.6 MPa(℃)', '有', '无', '11204418002005110001', '锅粤RS0092', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(59, '阳山县灰砂砖厂', '阳山县城文塔路', '黄德辉', '黄德辉', '13922556048', '无证', '顺德宏格水处理设备实业有限公司', '-', '浮动床', '2 t/h', '蒸汽锅炉', ' DZL2-1.25-AⅡ', '2.0t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040018', '锅粤RS0026', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(60, '阳山县灰砂砖厂', '阳山县城文塔路', '黄德辉', '黄德辉', '13922556048', '无证', '顺德宏格水处理设备实业有限公司', '-', '浮动床', '2 t/h', '蒸汽锅炉', ' DZL2-1.25-AⅡ', '2.0t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040018', '锅粤RS0026', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1347847643'),
(61, '佛冈龙清电力器材公司', '佛冈', '张海清', '张海清', '13824904796', '无人持证', '--', '--', '浮动床', '4', '蒸汽锅炉', 'DZL4-1.25', '--', '1.25', '有', '无', '11204418002008010015', '锅粤R00438', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(62, '添富（清远）体育用品有限公司', '佛冈汤塘镇联合村', '陈玉光', '陈玉光', '13553907005', '无证', '中兴永雄水处理设备厂', '——', '浮动床', '6 t/h', '蒸汽锅炉', 'SZL6-1.25-A', '6 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002006090003', '锅粤RM0106', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(63, '广东博华陶瓷有限公司', '佛冈博华陶瓷城', '叶志原', '叶志原', '4682828', '1人持证', '顺德（永雄）英永工业水处理设备公司', '——', '锅外化学处理', '10 t/h', '蒸汽锅炉', 'SZL6-1.25-A II', '6.0 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204406002007050008', '锅粤RM1003', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(64, '佛冈县三门再生纸厂', '汤塘镇三门下围', '郭社就', '郭社就', '13902351692', '无证', '英永工业水处理设备有限公司', '——', '浮动床', '4 t/h', '蒸汽锅炉', 'DZL4-1.25-A II', '4 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002009090010', '锅粤R00673', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(76, '广东佛冈新元科技有限公司', '佛冈县龙山镇', '廖梦清', '廖梦清', '13926698827', '无证', '中兴永雄工业水处理设备有限公司', '——', '流动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A II', '6 t/h (MW)', '1.25 MPa(℃)', '无', '无', '11204418002004080001', '锅粤RM0061', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(75, '东溢（佛冈）特种钢制造有限公司', '佛冈石角镇吉田村', '莫建军', '莫建军', '13824908289', '无证', '阿图祖', '——', '浮动床', '6 t/h', '余热锅炉', 'Φ1400', '6 t/h (MW)', '0.8 MPa(℃)', '无', '无', '11204418002008040001', '锅粤R00453', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(67, '清远加多宝草本植物科技有限公司', '佛冈县汤塘镇荣埔工业区', '郭翠纯', '郭翠纯', '15920483699', '1人持证', '阿图祖', '——', '浮动床', '15 t/h', '蒸汽锅炉', 'SHS15-1.25-J', '15 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002010120005', '锅粤RM1014', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(77, '英德龙山水泥有限责任公司', '英德望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '——', '除盐水', '8 t/h     2#AQC', '余热锅炉', 'QC206/300-18-0.7/345', '18 t/h (MW)', '0.7 MPa(℃)', '有', '有', '11204418002008030002', '锅粤R00443', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(69, '佛冈县建滔实业有限公司', '佛冈城南工业区', '董明', '董明', '13828535209', '2人持证', '——', '——', '浮动床', '30 t/h', '蒸汽锅炉', 'SZL10-1.6-A II', '15 t/h (MW)', '1.6 MPa(℃)', '有', '无', '11204418002007010005', '锅粤RM0112', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(70, '佛冈县建滔实业有限公司', '佛冈城南工业区', '董明', '董明', '13828535209', '2人持证', '——', '——', '浮动床', '15 t/h', '蒸汽锅炉', 'SZL15-1.25-A II', '15 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040256', '锅粤RM0035', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(71, '英德浛洸创盟洗涤厂', '浛洸镇鹿城路', '何树荣', '何树荣', '13539519348', '无证', '雄广水处理设备厂', '——', '浮动床', '4 t/h', '蒸汽锅炉', 'DZH4-1.25-A II', '4 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002008100019', '锅粤R00549', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(72, '英德市昊晟金属塑料制品有限公司', '英城镇水泥专用通道以南', '邹家胜', '邹家胜', '13923144411', '1人持证', '雄广水处理设备厂', '——', '浮动床', '4 t/h', '蒸汽锅炉', 'SZL4-1.25-A II', '4 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002009090014', '锅粤R00677', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(73, '同进（英德）纺织品有限公司', '东华镇光辉村', '杨勇斌', '杨勇斌', '15917514922', '1人持证', '得胜锅炉股份有限公司', '——', '浮动床', '10 t/h', '蒸汽锅炉', 'SHXF10-2.5/400-A II', '10 t/h (MW)', '2.5 MPa(℃)', '有', '无', '11204418002008110015', '锅粤R00567', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(74, '东溢（佛冈）特种钢制造有限公司', '佛冈县石角镇吉田村惠爱亭收费站旁', '莫建军', '莫建军', '13824908289', '无证', '阿图祖', '——', '浮动床', '6 t/h', '余热锅炉', 'Φ1400', '6 t/h (MW)', '0.8 MPa(℃)', '无', '无', '11204418002009120004', '锅粤RM1002', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(78, '英德龙山水泥有限责任公司', '广东省清远市英德市望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '——', '除盐水', '8 t/h     2#PH', '余热锅炉', 'MHA32-AOE701-R3/PH-J', '32t/h (MW)', '1.2MPa(℃)', '有', '有', '11204418002008030003', '锅粤R00444', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(79, '英德龙山水泥有限责任公司', '英德市望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '——', '除盐水', '8 t/h     1#PH', '余热锅炉', 'MHA32-AOE701-R3/PH-J', '32 t/h (MW)', '1.2 MPa(℃)', '有', '有', '11204418002008030004', '锅粤R00445', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(80, '台泥（英德）水泥有限公司', '英德市英城镇观音山', '刘建欧', '杨玲', '15019307810', '2人持证', '——', '——', '除盐水', '— t/h    #4ACQ', '余热锅炉', 'QC380/325-30.9-0.7/290', '30.9 t/h (MW)', '0.7 MPa(℃)', '有', '有', '11204418002010010001', '锅粤RP1009', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(81, '广东华农温氏畜牧股份有限公司英德分公司', '东华镇鱼湾', '秦伟成', '秦伟成', '2568610', '无证', '建业水处理设备有限公司', '——', '流动床', '2 t/h', '蒸汽锅炉', 'DZL2-1.0-A II', '2 t/h (MW)', '1.0 MPa(℃)', '有', '无', '11204418002008070008', '锅粤R00503', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(82, '英德市粮香大酒店', '英城建设路59号', '程东华', '程东华', '2222098', '1人持证', '湘潭锅炉辅机厂', '——', '浮动床', '2 t/h', '蒸汽锅炉', 'KZG1.0-0.8-W', '1.0 t/h (MW)', '0.8 MPa(℃)', '无', '无', '11204418002004110003', '锅粤RP0204', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(83, '英德市云超聚合材料有限公司', '英德九龙真大陂村', '黄云超', '黄云超', '13316137350', '无证', '--', '--', '浮动床', '4 t/h', '蒸汽锅炉', 'WNS4-1.25-Y', '4 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002008010009', '锅粤R00432', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(120, '广东双汇食品有限公司', '清新太和镇107国道旁', '李军威', '李军威', '13413568867', '2人持证', '成都富华水处理设备厂', '—', '浮动床', '40  t/h   1#', '蒸汽锅炉', 'SZL6-1.57-A II', '6 t/h(MW)', '1.57 MPa(℃)', '有', '无', '11204418002005010011', '锅粤RK0079', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.25', '1.10', '8.00', '--', '181.3', '1436', '10.20', '8.60', '11.60', '1.91', '--', '0.19', '2052', '170.0', '8.45', '9.68', '3.20', '0.000', '7.00', '15.00', '1.20', '--', '--', '--', '212.0', '0.000', '--', '--', '10.00', '7.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1351827498'),
(85, '英德市三友木业有限公司', '英德市英红镇红光居委会原红', '赖长华', '赖长华', '13318619999', '无人持证', '--', '--', '双柱浮动床', '4 t/h', '蒸汽锅炉', 'DZG4-1.3-M', '4 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002012030005', '锅粤RP3207', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(121, '广东双汇食品有限公司', '清新太和镇107国道旁', '李军威', '李军威', '13413568867', '2人持证', '成都富华水处理设备厂', '—', '浮动床', '40  t/h   2#', '蒸汽锅炉', 'SZL6-1.57-A II', '6 t/h(MW)', '1.57 MPa(℃)', '有', '无', '11204418002005010010', '锅粤RK0080', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.25', '1.10', '8.00', '--', '181.3', '907.2', '3.50', '2.70', '11.20', '1.95', '--', '0.084', '1296', '123.0', '7.38', '＞10', '3.20', '0.000', '7.00', '15.00', '1.20', '--', '--', '--', '212.0', '0.000', '--', '--', '10.00', '7.00', '不合格', '1、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1351827457'),
(122, '广东双汇食品有限公司', '清新太和镇107国道旁', '李军威', '李军威', '13413568867', '2人持证', '成都富华水处理设备厂', '—', '浮动床', '40  t/h   3#', '蒸汽锅炉', 'SZL6-1.57-A II', '6 t/h(MW)', '1.57 MPa(℃)', '有', '无', '11204418002005010009', '锅粤RK0083', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.25', '1.10', '8.00', '--', '181.3', '1890', '9.20', '8.00', '11.60', '2.07', '--', '0.14', '2700', '334.0', '5.66', '4.39', '3.20', '0.000', '7.00', '15.0', '1.20', '--', '--', '--', '212.0', '0.000', '--', '--', '10.00', '7.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1351827402'),
(123, '佛冈冠华纸塑包装有限公司', '佛冈', '黄本滔', '黄本滔', '4620333', '无人持证', '—', '—', '双柱浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '--', '—', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '4.34', '2.00', '26.00', '--', '548.8', '2881', '22.20', '17.40', '11.80', '--', '--', '0.17', '4116', '782.0', '3.68', '3.44', '--', '0.25', '6.00', '26.00', '1.00', '--', '--', '--', '372.4', '0.53', '--', '--', '28.00', '6.00', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192921'),
(124, '佛冈龙清电力器材公司', '佛冈', '张海清', '张海清', '13824904796', '无人持证', '--', '--', '浮动床', '4', '蒸汽锅炉', 'DZL4-1.25', '--', '1.25', '有', '无', '11204418002008010015', '锅粤R00438', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.62', '0.50', '3.00', '--', '80.00', '1680', '10.90', '10.10', '11.20', '--', '--', '0.22', '2400', '139.0', '12.09', '0.72', '--', '0.064', '6.10', '1.00', '0.40', '--', '--', '--', '84.00', '0.000', '--', '--', '3.00', '6.20', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192904');
INSERT INTO `oa_report_content` (`report_id`, `company_name`, `azdz`, `aqglrr`, `lxr`, `lxdh`, `zyrrczqh`, `zzdw`, `zczh`, `sclfc`, `cl`, `pz`, `xh`, `edzfl`, `edyl`, `cylqq`, `grq`, `sbdm`, `sydjzh`, `jyyj`, `ys_yd`, `ys_zj`, `ys_llz`, `ys_sd`, `ys_dd`, `ws_rjgxw`, `ws_zjd`, `ws_pjd`, `ws_phz`, `ws_po`, `ws_so`, `ws_xdjd`, `ws_ddl`, `ws_llz`, `ws_glbgdb`, `ws_pwl`, `gs_sd`, `gs_yd`, `gs_ph`, `gs_llz`, `gs_zj`, `gs_rjy`, `gs_qt`, `gs_y`, `gs_ddl`, `rhs_yd`, `rhs_qt`, `rhs_y`, `rhs_llz`, `rhs_phz`, `jyjl`, `jyyjhjy`, `bak`, `jyjghzzh`, `jyjghzrq`) VALUES
(125, '兆联（清远）纺织印染有限公司', '佛冈汤塘镇三门村', '林老板', '林老板', '4201689', '1人持证', '—', '—', '流动床', '6 t/h', '蒸汽锅炉', 'SZL10-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006010008', '锅粤RM0038', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.064', '0.50', '5.00', '--', '83.00', '1960', '27.90', '25.10', '12.10', '--', '--', '0.46', '2800', '173.0', '11.33', '3.59', '--', '0.011', '7.00', '6.00', '0.60', '--', '--', '--', '91.00', '0.011', '--', '--', '5.00', '6.90', '不合格', '锅水碱度稍高，应加强排污。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192887'),
(93, '浛洸镇荣华制衣一厂', '浛洸镇鹿城路', '何荣', '何荣', '2852308', '无证', '雄广水处理设备厂', '--', '浮动床', '0.5 t/h', '蒸汽锅炉', 'LHC0.5-0.7-A II', '0.5 t/h (MW)', '0.7 MPa(℃)', '无', '无', '11204418002009060009', '锅粤R00645', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1348237681'),
(94, '步威（清远）皮革有限公司', '清城区石角镇民安管理区石眼村', '黄经理', '黄经理', '3721092', '无证', '—', '—', '锅外化学处理', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A II', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040161', '锅粤R10023', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.05', '0.50', '12.00', '--', '188.1', '3234', '1.10', '0.60', '10.30', '1.11', '--', '0.0012', '4620', '650.0', '4.98', '1.88', '34.30', '1.05', '7.00', '12.00', '0.60', '--', '--', '--', '198.0', '1.08', '--', '--', '13.00', '7.30', '不合格', '1、给水硬度偏高，软水器加盐再生；\r\n2、锅水碱度偏低，应适当加药以调控水 碱度；\r\n3、给水浊度偏高，给水池应注意防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350976246'),
(95, '清远市石角镇佑丰印染织造厂', '清城区石角镇', '毕柱伟', '毕柱伟', '13902397205', '1人持证', '—', '—', '流动床', '6 t/h', '蒸汽锅炉', 'SZL6-1.25-A II', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002005020003', '锅粤RA0061', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.40', '1.10', '8.00', '--', '176.0', '2233', '17.30', '16.00', '11.80', '15.79', '--', '0.26', '3190', '162.0', '13.78', '5.19', '2.66', '0.000', '7.30', '8.00', '1.10', '--', '--', '--', '182.6', '0.011', '--', '--', '8.00', '7.10', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350976283'),
(96, '清远市永裕实业有限公司', '石角镇基下3村', '姚钊', '姚钊', '3730292', '1人持证', '顺德伦教水处理设备厂', '/', '浮动床', '0.5 t/h', '蒸汽锅炉', 'HSG0.5-0.8-A II', '0.5 t/h(MW)', '0.8 MPa(℃)', '有', '无', '11204418002003080511', '锅粤R10222', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '4.30', '2.50', '13.00', '--', '682.0', '539.0', '0.30', '0.20', '8.90', '--', '--', '0.0074', '770.0', '42.00', '12.83', '＞10', '5.23', '4.74', '6.50', '13.00', '3.50', '--', '--', '--', '693.0', '4.30', '--', '--', '14.00', '6.40', '不合格', '1、给水硬度偏高，软水器应定期再生；\r\n2、锅水碱度偏低，应适当控制排污；\r\n3、给水浊度偏高，给水池应注意防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350976263'),
(97, '日丰（清远）电子有限公司', '银盏泰基工业城', '谭建国', '谭建国', '13535996365', '1人持证', '—', '—', '流动床', '2 t/h', '蒸汽锅炉', 'WNS2-1.25-Y', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006100004', '锅粤R00240', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.32', '0.30', '3.00', '--', '63.72', '3175', '18.70', '17.00', '11.70', '--', '--', '0.19', '4536', '590.0', '5.38', '0.51', '--', '0.000', '7.40', '3.00', '0.40', '--', '--', '--', '66.96', '0.000', '--', '--', '46.00', '7.20', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350974790'),
(98, '亿盈（清远）发泡材料有限公司', '银盏银英公路新庄段', '黎伟', '黎伟', '3695112', '1人持证', '顺德中兴永雄工业水处理设备有限公司', '—', '双柱浮动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002004090005', '锅粤RA0009', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.39', '0.30', '3.00', '--', '65.88', '1739', '9.00', '8.10', '11.30', '--', '--', '0.16', '2484', '193.0', '9.01', '1.05', '--', '0.000', '7.00', '2.00', '0.30', '--', '--', '--', '49.68', '0.000', '--', '--', '3.00', '6.90', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350962179'),
(99, '佛冈龙清电力器材公司', '佛冈', '张海清', '张海清', '13824904796', '无人持证', '--', '--', '浮动床', '4', '蒸汽锅炉', 'DZL4-1.25', '--', '1.25', '有', '无', '11204418002008010015', '锅粤R00438', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.39', '0.30', '2.00', '--', '61.48', '1558', '15.10', '13.80', '11.80', '--', '--', '0.32', '2226', '83.00', '18.77', '2.47', '--', '0.022', '6.80', '2.00', '0.40', '--', '--', '--', '62.54', '0.011', '--', '--', '1.00', '6.80', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1351478097'),
(100, '佛冈冠华纸塑包装有限公司', '佛冈', '黄本滔', '黄本滔', '4620333', '无人持证', '—', '—', '双柱浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '--', '—', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.33', '1.50', '61.00', '--', '539.0', '3710', '22.60', '19.30', '11.90', '--', '--', '0.17', '5300', '＞1000', '3.71', '4.82', '--', '0.030', '6.70', '46.00', '1.10', '--', '--', '--', '396.0', '0.022', '--', '--', '64.00', '6.60', '不合格', '有盐水进入锅炉，建议更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350964522'),
(101, '兆联（清远）纺织印染有限公司', '佛冈汤塘镇三门村', '林老板', '林老板', '4201689', '1人持证', '—', '—', '流动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002004120049', '锅粤RM0075', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.42', '1.00', '29.00', '--', '352.0', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '0.030', '6.70', '25.00', '0.50', '--', '--', '--', '168.3', '0.054', '--', '--', '33.00', '6.60', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1351478085'),
(102, '清远市永嘉洗涤有限公司', '开发区', '刘浩强', '刘浩强', '13926227043', '1人持证', '顺德英永工业水处理设备有限公司', '—', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006050007', '锅粤RA0159', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.14', '1.30', '1.00', '--', '167.4', '1058', '8.40', '7.80', '11.50', '--', '--', '0.27', '1512', '68.00', '15.56', '＞10', '--', '0.000', '8.30', '13.00', '1.10', '--', '--', '--', '179.3', '0.000', '--', '--', '10.00', '7.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350964597'),
(103, '英德海螺水泥有限责任公司', '望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '—', '除盐水', '10 t/h   B线AQC', '余热锅炉', 'QC206/360-18-0.7/345', '18 t/h(MW)', '0.7 MPa(℃)', '有', '有', '11104418002008100015', '锅粤R00545', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.22', '0.50', '7.00', '--', '176.0', '48.97', '0.30', '0.20', '8.90', '7.41', '--', '0.082', '69.96', '14.00', '3.50', '7.69', '2.46', '0.011', '6.50', '1.00', '0.20', '--', '--', '--', '8.80', '0.011', '--', '--', '0.1', '7.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350975086'),
(106, '英德海螺水泥有限责任公司', '望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '—', '除盐水', '10 t/h   B线PH', '余热锅炉', 'QC338/325-28.29-0.8/305/PH-J', '28.29 t/h(MW)', '0.8 MPa(℃)', '有', '有', '11104418002008100013', '锅粤R00543', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.22', '0.50', '7.00', '--', '176.0', '115.0', '1.40', '0.000', '7.80', '2.11', '--', '0', '164.3', '7.00', '16.43', '＞10', '3.11', '0.000', '6.90', '1.00', '0.30', '--', '--', '--', '15.40', '0.011', '--', '--', '1.00', '7.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350975294'),
(105, '英德海螺水泥有限责任公司', '望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '—', '除盐水', '10 t/h   C线PH', '余热锅炉', 'QC338/325-28.29-0.8/305/PH-J', '28.29 t/h(MW)', '0.8 MPa(℃)', '有', '有', '11104418002008100012', '锅粤R00542', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.22', '0.50', '7.00', '--', '176.0', '100.9', '0.80', '0.50', '8.70', '2.22', '--', '0.079', '144.2', '14.00', '7.21', '7.69', '3.11', '0.011', '6.70', '1.00', '0.20', '--', '--', '--', '18.70', '0.011', '--', '--', '1.00', '7.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350975497'),
(107, '英德海螺水泥有限责任公司', '望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '—', '除盐水', '10 t/h   D线AQC', '余热锅炉', 'QC206/360-18-0.7/345', '18 t/h(MW)', '0.7 MPa(℃)', '有', '有', '11104418002008100017', '锅粤R00547', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.22', '0.50', '7.00', '--', '176.0', '89.81', '0.90', '0.70', '9.70', '2.67', '--', '0.22', '128.3', '6.00', '14.97', '＞10', '3.11', '0.000', '6.90', '1.00', '0.30', '--', '--', '--', '15.40', '0.011', '--', '--', '1.00', '7.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350975127'),
(108, '英德海螺水泥有限责任公司', '望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '—', '除盐水', '10 t/h   D线PH', '余热锅炉', 'QC338/325-28.29-0.8/305/PH-J', '28.29 t/h(MW)', '0.8 MPa(℃)', '有', '有', '11104418002008100013', '锅粤R00543', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.22', '0.50', '7.00', '--', '176.0', '78.68', '0.60', '0.40', '9.00', '3.03', '--', '0.10', '112.4', '5.00', '15.74', '＞10', '2.46', '0.000', '6.50', '1.00', '0.20', '--', '--', '--', '8.80', '0.011', '--', '--', '1.00', '7.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1351478069'),
(109, '英德海螺水泥有限责任公司', '望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '—', '除盐水', '10 t/h   C线AQC', '余热锅炉', 'QC206/360-18-0.7/345', '18 t/h(MW)', '0.7 MPa(℃)', '有', '有', '11104418002008100016', '锅粤R00546', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.22', '0.50', '7.00', '--', '176.0', '156.6', '1.30', '1.00', '9.70', '2.04', '--', '0.18', '223.7', '14.00', '11.18', '7.69', '3.11', '0.000', '6.90', '1.00', '0.30', '--', '--', '--', '15.40', '0.011', '--', '--', '1.00', '7.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350975214'),
(110, '同进（英德）纺织品有限公司', '东华镇光辉村', '杨勇斌', '杨勇斌', '15917514922', '1人持证', '得胜锅炉股份有限公司', '——', '浮动床', '10 t/h', '蒸汽锅炉', 'SHXF10-2.5/400-A II', '10 t/h (MW)', '2.5 MPa(℃)', '有', '无', '11204418002008110015', '锅粤R00567', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.94', '1.20', '26.00', '--', '270.3', '1558', '8.30', '7.30', '11.50', '3.11', '--', '0.16', '2226', '152.0', '10.25', '＞10', '2.52', '0.000', '6.90', '16.00', '1.10', '--', '--', '--', '286.2', '0.022', '--', '--', '15.00', '6.80', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350975700'),
(111, '清远市广州后花园有限公司（清远美林湖酒店）', '清城区石角镇假日酒店', '何伟生', '何伟生', '3733104', '1人持证', '--', '--', '浮动床', '3 t/h', '蒸汽锅炉', 'WNS1-1.0-YQ', '1.0 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002011070004', '锅粤RA1056', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.38', '1.30', '7.00', '--', '181.5', '2310', '23.30', '17.50', '11.90', '2.05', '--', '0.20', '3300', '178.0', '12.98', '4.09', '2.35', '0.000', '7.00', '7.00', '1.30', '--', '--', '--', '187.0', '0.000', '--', '--', '6.00', '7.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350975985'),
(112, '山美（清远）五金织带制品有限公司', '石角镇北江工业园', '陈均匀', '陈均匀', '3728198', '1人持证', '—', '—', '流动床', '1.25 t/h', '蒸汽锅炉', 'WNS4-1.25-Y(S)', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002005010015', '锅粤RA0059', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.35', '1.20', '6.00', '--', '167.2', '346.5', '1.00', '0.70', '10.60', '--', '--', '0.046', '495.0', '22.00', '15.75', '＞10', '5.35', '1.54', '6.50', '7.00', '1.00', '--', '--', '--', '176.0', '1.53', '--', '--', '6.00', '6.40', '不合格', '1、给水硬度偏高，软水器应定期再生；\r\n2、锅水碱度偏低，应适当加药以调控水 碱度；\r\n3、给水浊度稍高，应注意给水池的防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350976189'),
(113, '清远市东上钢业有限公司', '清城区石角镇德龙工业区产业大道西侧', '刘冬明', '刘冬明', '13417285274', '1人持证', '顺德雄广水处理设备厂', '/', '流动床', '12 t/h', '蒸汽锅炉', 'SHX12-1.25-A I', '12 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002008100022', '锅粤R00552', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.35', '1.20', '6.00', '--', '178.2', '1848', '16.00', '14.50', '11.70', '15.45', '--', '0.28', '2640', '103.0', '17.94', '8.42', '11.60', '0.000', '7.20', '8.00', '1.20', '--', '--', '--', '181.5', '0.000', '--', '--', '7.00', '7.10', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350975961'),
(114, '宏升（清远）金属有限公司', '清城石角镇循环经济开发区', '钟太升', '钟太升', '13610523101', '1人持证', '顺德雄广水处理设备厂', '', '流动床', '12 t/h', '蒸汽锅炉', 'SZL6-1.25-A II   1号', '6 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002008040006', '锅粤R00458', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.08', '1.00', '7.00', '--', '177.1', '3234', '39.50', '33.50', '12.10', '20.15', '--', '0.34', '4620', '250.0', '12.94', '2.46', '2.81', '0.000', '7.20', '6.00', '1.30', '--', '--', '--', '181.5', '0.000', '--', '--', '5.00', '7.10', '不合格', '1、锅水碱度偏高，应加强排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350976122'),
(115, '英德龙山水泥有限责任公司', '英德望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '——', '除盐水', '8 t/h     3#AQC', '余热锅炉', 'QC206/300-18-0.7/345', '18 t/h (MW)', '0.7 MPa(℃)', '有', '有', '11204418002008030001', '锅粤R00442', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.33', '1.20', '7.00', '--', '159.0', '91.28', '1.60', '1.00', '10.30', '2.21', '--', '0.18', '130.4', '7.00', '13.04', '＞10', '3.22', '0.00', '9.50', '1.00', '4.20', '--', '--', '--', '16.52', '0.030', '--', '--', '1.00', '6.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350975861'),
(116, '英德龙山水泥有限责任公司', '广东省清远市英德市望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '——', '除盐水', '8 t/h     2#AQC', '余热锅炉', 'MHA32-AOE701-R3/PH-J', '32t/h (MW)', '1.2MPa(℃)', '有', '有', '11204418002008030004', '锅粤R00445', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.33', '1.20', '7.00', '--', '159.0', '48.97', '0.70', '0.40', '9.50', '5.23', '--', '0.82', '69.96', '1.00', '48.97', '0', '3.22', '0.000', '9.50', '1.00', '4.20', '--', '--', '--', '16.52', '0.030', '--', '--', '1.00', '6.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350975846'),
(117, '清远忠信世纪玻纤有限公司', '石角镇建滔循环经济工业园', '余斌', '余斌', '13902879758', '1人持证', '江苏融鑫环保有限公司', '—', '除盐水', '20 t/h', '余热锅炉', 'Q36/800-6-1.25', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002008090014', '锅粤R00529', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.38', '1.30', '7.00', '--', '176.0', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '19.20', '0.011', '7.20', '9.00', '1.30', '--', '--', '--', '181.5', '0.000', '--', '--', '7.00', '7.10', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350975760'),
(118, '英德市隆盛金属有限公司', '英德市东华镇鱼湾华侨工业园', '蔡厂长', '蔡厂长', '13567768666', '1人持证', '—', '—', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A II', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011100009', '锅粤RP3201', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.35', '1.20', '1.00', '--', '132.5', '697.5', '5.80', '5.20', '11.30', '3.18', '--', '0.26', '996.4', '26.00', '26.83', '4.00', '2.82', '1.35', '6.50', '1.00', '1.20', '--', '--', '--', '132.5', '1.29', '--', '--', '2.00', '6.50', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350975741'),
(119, '清城区石角镇田心恒生饲料加工厂', '清城区石角镇田心村委会', '欧金轩', '欧金轩', '13923174725', '无证', '中兴永雄水处理设备厂', '/', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A II', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006070003', '锅粤RO0597', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.05', '1.00', '33.00', '--', '232.1', '3339', '17.50', '14.40', '11.80', '15.69', '--', '0.14', '4770', '＞1000', '3.34', '7.99', '10.20', '0.000', '6.60', '74.00', '1.40', '--', '--', '--', '572.0', '0.000', '--', '--', '34.00', '6.20', '不合格', '1、有盐水进入锅炉，建议更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1350975656'),
(126, '慕达包装工业（清远）有限公司', '龙塘', '庞建斌', '庞建斌', '3600329', '无人持证', '成都节能软水设备厂', '--', '双柱浮动床', '4.0  t/h', '蒸汽锅炉', 'WNS4-1.25-Y', '4.0 t/h', '1.25 MPa(℃)', '有', '无', '11204418002002040220', '锅粤R10084', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.28', '0.30', '3.00', '--', '56.10', '856.8', '11.10', '10.20', '11.30', '6.18', '--', '0.43', '1224', '38.00', '22.55', '＞10', '5.65', '0.000', '8.70', '5.00', '0.30', '--', '--', '--', '52.65', '0.000', '--', '--', '3.00', '6.70', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192973'),
(127, '清远市裕成鞋材有限公司', '清远市高新区8号区（百嘉黄泥岭）', '谭溪', '谭溪', '15899682659', '1人持证', '雄广水处理设备厂', '--', '浮动床', '8 t/h', '蒸汽锅炉', 'DZL8-1.25-A II', '8 t/h', '1.25 MPa(℃)', '有', '无', '11204418002008110001', '锅粤R00553', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.27', '0.30', '36.00', '--', '380.0', '642.6', '2.50', '2.10', '10.60', '1.45', '--', '0.10', '918.0', '92.00', '6.98', '＞10', '4.56', '0.16', '7.00', '9.00', '0.30', '--', '--', '--', '117.3', '0.000', '--', '--', '8.00', '7.00', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192955'),
(128, '万邦（清新）鞋业有限公司', '清新县太平工业园', '蒋秀全', '蒋秀全', '13553927034', '1人持证', '顺德（永雄）英永工业水处理设备有限公司', '/', '浮动床', '6 t/h', '蒸汽锅炉', 'SZL6-1.25-A II', '6 t/h', '1.25 MPa(℃)', '有', '无', '11204418002007090009', '锅粤R00376', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.39', '0.30', '3.00', '--', '46.00', '1357', '9.00', '8.50', '11.30', '4.11', '--', '0.24', '1938', '203.0', '6.68', '1.50', '2.68', '0.030', '6.10', '3.00', '0.20', '--', '--', '--', '39.00', '0.000', '--', '--', '4.00', '6.10', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192997'),
(129, '万裕（清新）塑胶制品有限公司', '清新太平工业园', '唐礼军', '唐礼军', '13631084066', '1人持证', '东莞新兴水处理设备有限公司', '/', '浮动床', '10 t/h', '蒸汽锅炉', 'DZL4-1.25-A II', '4.0 t/h', '1.25 MPa(℃)', '有', '无', '11204418002006110001', '锅粤RK0182', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.39', '0.30', '2.00', '--', '45.00', '1820', '12.00', '11.00', '11.40', '6.15', '--', '0.22', '2600', '296.0', '6.15', '1.02', '8.38', '0.19', '6.20', '3.00', '0.30', '--', '--', '--', '30.00', '0.67', '--', '--', '2.00', '6.20', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、给水浊度偏高，给水池应注意防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352193016'),
(130, '清新县汉科化工科技有限公司', '清新县太平工业园', '秦生荣', '秦生荣', '6829683', '1人持证', '美国阿图祖', '/', '浮动床', '0.5 t/h', '蒸汽锅炉', 'LHS1.0-0.8-Y.Q', '1.0 t/h', '0.8 MPa(℃)', '有', '无', '11204418002008050012', '锅粤R00476', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.41', '0.30', '4.00', '--', '46.00', '504.0', '4.60', '4.10', '10.80', '3.16', '--', '0.28', '720.0', '33.00', '15.27', '10', '3.61', '0.000', '6.80', '3.00', '0.30', '--', '--', '--', '46.00', '0.000', '--', '--', '3.00', '6.80', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352193201'),
(131, '广东华农温氏畜牧股份有限公司清新分公司', '清新县太平工业园', '李志华', '李志华', '13828565289', '1人持证', '建业水处理设备厂', '/', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A II', '4.0 t/h', '1.25 MPa(℃)', '有', '无', '112044180020074040002', '锅粤RK0190', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.34', '0.30', '4.00', '--', '46.06', '1852', '17.60', '16.30', '11.60', '3.11', '--', '0.32', '2646', '262.0', '7.07', '0.77', '2.25', '0.000', '6.70', '2.00', '0.30', '--', '--', '--', '47.04', '0.000', '--', '--', '2.00', '6.70', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352193217'),
(132, '清远万家丽针织印染有限公司', '清新县太平镇龙湾工业园', '张吴军', '张吴军', '15362764528', '1人持证', '广州市番禺区先锋设备工程有限公司', '--', '锅外化学处理', '22 t/h', '蒸汽锅炉', 'SZL10-1.25-A II', '1.0 t/h', '1.25 MPa(℃)', '有', '无', '11204418002011010005', '锅粤RK1040', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.41', '0.40', '3.00', '--', '48.02', '1441', '23.10', '20.40', '11.80', '29.54', '--', '0.49', '2058', '68.00', '21.19', '3.03', '2.25', '0.000', '6.80', '2.00', '0.30', '--', '--', '--', '43.12', '0.000', '--', '--', '3.00', '6.80', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352193231'),
(133, '清远市亨健医用橡胶有限公司', '清城区环城二路西门岗六号', '马启培', '马启培', '3800906', '1人持证', '雄广水处理设备厂', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZW2-1.0-A II', '2 t/h', '1.0 MPa(℃)', '有', '无', '11204418002002040152', '锅粤R10014', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.63', '1.10', '8.00', '--', '142.1', '1120', '10.90', '10.20', '11.50', '5.69', '--', '0.34', '1600', '84.00', '13.33', '＞10', '2.93', '0.011', '6.50', '8.00', '1.20', '--', '--', '--', '149.0', '0.17', '--', '--', '6.00', '6.40', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(134, '清远市步步高酒店管理有限公司', '城区环城一路西门岗酒厂侧', '何基玲', '何基玲', '13425204587', '无证', '雄广水处理设备有限公司', '--', '浮动床', '1.0 t/h', '蒸汽锅炉', 'WNS1.0-1.0-Y(S)', '1.0 t/h', '1.0 MPa(℃）', '有', '无', '11204418002009080005', '锅粤R00662', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.57', '1.30', '5.00', '--', '136.2', '1098', '11.40', '10.60', '11.6', '6.11', '--', '0.36', '1568', '58.00', '18.93', '9.43', '2.56', '0.011', '6.50', '5.00', '1.00', '--', '--', '--', '132.3', '0.000', '--', '--', '7.00', '6.50', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(135, '清远市酒厂有限公司', '城区环城二路西门岗3号', '金小峰', '金小峰', '13501462366', '1人持证', '顺德雄广水处理设备有限公司', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A II', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002007100006', '锅粤R00386', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.50', '1.20', '6.00', '--', '137.2', '1578', '17.90', '16.60', '11.60', '2.03', '--', '0.39', '2254', '126.0', '12.52', '2.44', '2.18', '0.011', '6.90', '3.00', '0.60', '--', '--', '--', '76.44', '0.022', '--', '--', '6.00', '6.80', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(136, '清远市汉铿物业发展有限公司', '小市北江一路七星岗', '王部长', '王部长', '3889871', '无人持证', '容桂中兴水处理设备厂', '--', '蒸汽锅炉', '1.0 t/h', '蒸汽锅炉', 'WNS1-1.0-Y', '--', '1.0 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.35', '1.20', '17.00', '--', '196.1', '1261', '9.90', '9.10', '11.60', '--', '--', '0.26', '1802', '118.0', '10.69', '4.42', '--', '0.000', '7.10', '5.00', '0.70', '--', '--', '--', '106.0', '0.14', '--', '--', '8.00', '6.90', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(137, '清远先锋制衣有限公司', '附城工业区', '黄厂长', '黄厂长', '3926856', '无人持证', '英永工业水处理设备有限公司', '--', '双柱浮动床', '1.0 t/h', '蒸汽锅炉', 'WNS1-1.0-Y', '--', '1.0 MPa(℃)', '有', '无', '11204418002002040168', '锅粤R10030', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.34', '1.20', '7.00', '--', '169.6', '2894', '6.10', '5.20', '11.40', '--', '--', '0.059', '4134', '450.0', '6.4', '1.6', '--', '0.11', '7.10', '7.00', '1.30', '--', '--', '--', '201.4', '0.086', '--', '--', '8.00', '6.50', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(138, '骏达（清远）制衣有限公司', '附城', '刘国星', '刘国星', '3363121', '无人持证', '容桂中兴工业公司水处理设备厂', '--', '双柱浮动床', '1.0 t/h', '蒸汽锅炉', 'LHC1-0.69-A III', '--', '0.69 MPa(℃)', '有', '无', '11204418002008060009', '锅粤R00489', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.35', '1.20', '6.00', '--', '165.4', '3784', '36.80', '32.00', '12.10', '--', '--', '0.29', '5406', '＞1000', '3.78', '1.01', '--', '0.000', '7.80', '10.00', '1.20', '--', '--', '--', '180.2', '0.000', '--', '--', '6.00', '7.60', '不合格', '有盐水进入锅炉，建议更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(139, '清远市清城区振威皮革厂清新分厂', '黄坑太和工业区', '周军华', '周军华', '3322098', '无人持证', '英永工业水处理设备厂', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZG4-1.25-A', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040149', '锅粤RK0033', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.31', '1.20', '1.10', '--', '180.2', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '1.35', '7.20', '12.00', '1.20', '--', '--', '--', '184.4', '1.46', '--', '--', '11.00', '7.20', '不合格', '1、给水硬度偏高，软水器应定期再生。\r\n2、锅水取样冷却器必须维修。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(140, '清远市振威皮革有限公司', '城区环城路拉尾岗157号', '周军华', '周军华', '3322098', '无人持证', '伦敦水处理设备厂', '--', '双柱浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A', '--', '1.25 MPa(℃)', '有', '无', '11204418002006080002', '锅粤RA0215', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.48', '1.30', '9.00', '--', '174.9', '148.4', '1.20', '0.80', '9.50', '--', '--', '0.11', '212.0', '8.00', '18.55', '＞10', '--', '0.000', '7.00', '4.00', '1.20', '--', '--', '--', '164.3', '0.030', '--', '--', '7.00', '6.90', '不合格', '锅水碱度偏低，应适当控制排污。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(141, '清远市清城区横荷裕威鞋材厂', '清远市高新区16号区（台湾工业园）', '张祖宾', '张祖宾', '13828559786', '1人持证', '英永工业水处理设备有限公司', '/', '浮动床', '2.0 t/h', '蒸汽锅炉', 'DZG2-1.0-M', '2 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002009080001', '锅粤R00658', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.35', '1.20', '7.00', '--', '182.6', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '4.95', '0.22', '8.10', '1.00', '0.30', '--', '--', '--', '39.60', '1.53', '--', '--', '7.00', '7.80', '不合格', '1、给水硬度偏高，软水器应定期再生。\r\n2、锅水取样冷却器必须维修。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192006'),
(142, '清远宏盛纺织印染有限公司', '清远市高新区2号区', '江朝忠', '江朝忠', '3484196', '1人', '英永水处理设备有限公司', '--', '浮动床', '20 t/h', '蒸汽锅炉', 'SZL20-1.6-A II', '20 t/h(MW)', '1.6 MPs(℃)', '有', '无', '11204418002008010013', '锅粤R00436', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.31', '1.20', '8.00', '--', '176.0', '1663', '16.40', '14.10', '11.80', '20.90', '--', '0.28', '2376', '108.0', '15.40', '8.00', '2.56', '0.000', '7.40', '8.00', '1.50', '--', '--', '--', '176.0', '0.000', '--', '--', '9.00', '8.20', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192042'),
(143, '清远宏盛纺织印染有限公司', '清远市高新区2号区', '江朝忠', '江朝忠', '3484196', '1人', '英永水处理设备有限公司', '--', '浮动床', '20 t/h', '蒸汽锅炉', 'SZL20-1.6-A II （旧）', '20 t/h(MW)', '1.6 MPs(℃)', '有', '无', '11204418002006030003', '锅粤RA0127', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.31', '1.20', '8.00', '--', '177.1', '1739', '16.50', '14.40', '11.70', '4.39', '--', '0.28', '2484', '106.0', '16.40', '8.16', '2.33', '0.000', '8.20', '8.00', '1.20', '--', '--', '--', '177.1', '0.000', '--', '--', '8.00', '8.20', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192079'),
(144, '广东信宏包装实业有限公司', '清远市高新产业开发区', '侯志辉', '侯志辉', '13828508686', '1人持证', '--', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'SZL6-1.25-M(A II)', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011080003', '锅粤RA1057', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.31', '1.20', '7.00', '--', '171.6', '2156', '17.40', '16.20', '11.50', '24.55', '--', '0.28', '3080', '363.0', '5.94', '0.83', '8.58', '0.000', '7.80', '3.00', '0.40', '--', '--', '--', '52.80', '0.000', '--', '--', '7.00', '7.20', '合格', '给水浊度偏高，给水池应注意防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192105'),
(145, '柏美国际（清远）化妆品制造有限公司', '高新区龙塘镇大荣工业城', '李永林', '李永林', '15915106584/3690111', '1人持证', '顺道合成纯水设备厂', '/', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZH4-1.25-A II', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002005120005', '锅粤RA0113', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.28', '0.20', '2.00', '--', '57.24', '100.9', '1.00', '0.000', '7.50', '--', '--', '0', '144.2', '6.00', '16.82', '＞10', '2.85', '0.000', '7.00', '3.00', '0.20', '--', '--', '--', '63.60', '0.000', '--', '--', '2.00', '7.00', '不合格', '1、锅水碱度偏低，应适当加药以调控水 碱度；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192126'),
(146, '蒙牛乳业（清远）有限公司', '高新技术开发区管委会大楼224室', '李根源', '李根源', '18675675188', '2人持证', '--', '--', '浮动床', '20 t/h', '承压蒸汽锅炉', 'WNS10-1.6-Q', '10.0 t/h(MW)', '1.6 MPa(℃)', '有', '有', '11204418002010100005', '锅粤RA1027', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.31', '1.20', '7.00', '--', '164.3', '2671', '19.00', '17.90', '11.90', '25.50', '--', '0.25', '3816', '362.0', '7.38', '4.32', '3.50', '0.011', '7.00', '15.00', '1.30', '--', '--', '--', '196.1', '0.000', '--', '--', '14.00', '7.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192148'),
(147, '蒙牛乳业（清远）有限公司', '高新技术开发区管委会大楼224室', '李根源', '李根源', '18675675188', '2人持证', '--', '--', '浮动床', '20 t/h', '承压蒸汽锅炉', 'WNS10-1.6-Q', '10.0 t/h(MW)', '1.6 MPa(℃)', '有', '有', '11204418002010100004', '锅粤RA1026', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.31', '1.20', '7.00', '--', '164.3', '2597', '18.90', '18.10', '11.90', '32.90', '--', '0.27', '3710', '662.0', '3.92', '2.32', '3.50', '0.011', '7.00', '15.00', '1.30', '--', '--', '--', '196.1', '0.000', '--', '--', '14.00', '7.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192172'),
(148, '清远市灵捷制造化工有限公司', '清远市高新区7号区', '梁媚', '梁媚', '3483511', '无证', '阿图祖', '--', '浮动床', '0.5 t/h', '蒸汽锅炉', 'LHS0.5-0.4-Y(Q)', '0.5 t/h(MW)', '0.4 MPa(℃)', '无', '无', '11204418002002100395', '锅粤R10185', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.38', '1.30', '7.00', '--', '181.5', '982.8', '6.20', '5.00', '11.30', '4.86', '--', '0.15', '1404', '60.00', '16.38', '＞10', '5.36', '0.011', '8.20', '7.00', '1.60', '--', '--', '--', '191.4', '0.000', '--', '--', '7.00', '8.20', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192197'),
(149, '清远市益丰染织有限公司', '清远市高新区7号小区', '夏雄飞', '夏雄飞', '13926203239', '1人', '顺德正康水处理设备厂', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'SZL6-1.25-A II', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006080005', '锅粤RA0218', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.90', '1.20', '8.00', '--', '177.1', '2797', '26.10', '21.40', '12.10', '41.50', '--', '0.23', '3996', '268.0', '10.44', '1.90', '2.95', '0.000', '8.40', '5.00', '0.90', '--', '--', '--', '121.0', '0.000', '--', '--', '9.00', '8.10', '不合格', '1、锅水碱度偏高，应加强排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192221'),
(150, '清远市百盛染织有限公司', '清远市高新技术开发区', '陈浩东', '陈浩东', '13926687886', '1人', '容桂中兴工业公司水处理设备厂', '--', '流动床', '4.0  t/h', '蒸汽锅炉', 'DZL6.0-1.25-AII', '6.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002120444', '锅粤R10198', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.33', '1.20', '7.00', '--', '176.0', '2873', '30.60', '27.20', '12.10', '1.25', '--', '0.33', '4104', '360.0', '7.98', '1.98', '2.68', '0.000', '8.30', '7.00', '1.20', '--', '--', '--', '181.5', '0.000', '--', '--', '7.00', '8.30', '不合格', '1、锅水碱度偏高，应加强排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192240'),
(151, '清远市德和染整有限公司', '清远市高新区', '陈佰铭', '陈水清', '13727163539', '1人持证', '佛冈石角镇水处理设备厂', '/', '流动床', '10 t/h', '蒸汽锅炉', 'WNS10-1.25-Y', '10.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040219', '锅粤R10083', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.40', '1.20', '7.00', '--', '178.2', '1694', '6.80', '6.00', '11.20', '5.11', '--', '0.12', '2420', '143.0', '11.85', '7.52', '2.72', '0.000', '8.20', '10.00', '1.20', '--', '--', '--', '189.2', '0.000', '--', '--', '38.00', '8.10', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192264'),
(152, '新益（清远）织染整有限公司', '清远市高新区二号区', '罗建筹', '罗建筹', '13679545923', '2人持证', '惠州宏格水处理设备厂', '/', '流动床', '30 t/h', '蒸汽锅炉', 'SHFX25-1.25-WI', '25 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002007030003', '锅粤RO0293', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.40', '1.20', '7.00', '--', '187.0', '2419', '24.30', '21.20', '11.90', '1.95', '--', '0.30', '3456', '192.0', '12.60', '4.35', '32.20', '0.011', '8.10', '8.00', '1.20', '--', '--', '--', '187.0', '0.000', '--', '--', '7.00', '8.20', '合格', '给水浊度偏高，给水池应注意防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192322'),
(153, '清远市上兴人造板有限公司', '城区龙塘镇107国道旁', '吴冠亮', '吴冠亮', '13750111117', '1人持证', '欣龙水处理设备厂', '/', '流动床', '10 t/h', '蒸汽锅炉', 'SZS10-1.6-M', '10.0 t/h(MW)', '1.6 MPa(℃)', '有', '无', '11204418002007040010', '锅粤RA0312', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.18', '1.10', '9.00', '--', '165.0', '1463', '2.50', '2.00', '10.50', '1.35', '--', '0.041', '2090', '24.00', '60.96', '＞10', '2.36', '0.14', '7.80', '4.00', '0.80', '--', '--', '--', '93.50', '0.39', '--', '--', '8.00', '7.70', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。<br>\r\n2、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192340'),
(154, '清远市鑫辉化工有限公司', '清远市高新区7号小区', '杨子敏', '杨子敏', '13828584933', '1人', '阿图祖', '--', '固定床', '2 t/h', '蒸汽锅炉', 'DZL2-1.25-A II', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006090010', '锅粤RA0234', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.42', '1.30', '7.00', '--', '176.0', '1463', '9.80', '9.10', '11.00', '4.89', '--', '0.23', '2090', '182.0', '8.04', '3.41', '2.58', '0.000', '8.20', '6.00', '1.30', '--', '--', '--', '177.1', '0.030', '--', '--', '19.00', '8.20', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192361'),
(155, '清远市嘉博制药有限公司', '清远市高新区', '黎树安', '黎树安', '6816652', '1人持证', '中兴永雄工业水处理设备有限公司', '/', '浮动床', '2 t/h', '蒸汽锅炉', 'WNS2-1.25-Y', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002005030002', '锅粤RA0064', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.48', '1.20', '11.00', '--', '192.5', '3465', '39.80', '36.50', '12.10', '2.29', '--', '0.38', '4950', '472.0', '7.34', '1.50', '2.86', '0.000', '8.10', '7.00', '1.20', '--', '--', '--', '177.1', '0.000', '--', '--', '8.00', '8.20', '不合格', '1、锅水碱度偏高，应加强排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192382'),
(156, '清远市万鑫包装保温材料有限公司', '清远市龙塘镇陂坑村委107国道侧', '夏伟忠', '夏伟忠', '13729602888', '1人持证', '--', '--', '流动床', '6 t/h', '蒸汽锅炉', 'SZL6-1.25-A II', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011080005', '锅粤RA1059', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.28', '0.30', '2.00', '--', '64.90', '3080', '6.30', '5.60', '11.20', '4.25', '--', '0.064', '4400', '948.0', '3.25', '0.42', '2.56', '0.000', '8.10', '4.00', '0.30', '--', '--', '--', '63.80', '0.000', '--', '--', '3.00', '8.30', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352192405'),
(157, '清远宏盛纺织印染有限公司', '清远市高新区2号区', '江朝忠', '江朝忠', '3484196', '1人', '英永水处理设备有限公司', '--', '浮动床', '20 t/h', '蒸汽锅炉', 'SZL20-1.6-A II （新）', '20 t/h(MW)', '1.6 MPs(℃)', '有', '无', '11204418002008010013', '锅粤R00436', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.20', '1.40', '6.00', '--', '147.3', '890.4', '1.50', '1.10', '9.60', '--', '--', '0.031', '1272', '298.0', '2.99', '2.40', '2.58', '1.14', '6.20', '7.00', '1.30', '--', '--', '--', '148.4', '1.35', '--', '--', '5.00', '6.10', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度偏低，应适当加药以调控水 碱度；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352191790'),
(158, '清远宏盛纺织印染有限公司', '清远市高新区2号区', '江朝忠', '江朝忠', '3484196', '1人', '英永水处理设备有限公司', '--', '浮动床', '20 t/h', '蒸汽锅炉', 'SZL20-1.6-A II （旧）', '20 t/h(MW)', '1.6 MPs(℃)', '有', '无', '11204418002006030003', '锅粤RA0127', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.20', '1.40', '6.00', '--', '147.3', '160.3', '0.70', '0.50', '9.50', '--', '--', '0.075', '229.0', '10.00', '16.03', '＞10', '2.58', '1.14', '6.20', '7.00', '1.30', '--', '--', '--', '148.4', '1.35', '--', '--', '5.00', '6.10', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352191741'),
(159, '清远震兴农产品有限公司', '清远市松岗办事处沙田管理区田二村', '徐惠霞', '徐惠霞', '13318613826', '1人持证', '东诚热能设备厂', '--', '浮动床', '8 t/h', '蒸汽锅炉', 'WNS6-1.0-Y(Q)', '6 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002007060005', '锅粤R0032', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.49', '0.50', '2.00', '--', '72.08', '1855', '21.40', '20.00', '11.90', '18.56', '--', '0.40', '2650', '98.00', '18.93', '2.08', '2.40', '0.000', '6.60', '2.00', '0.50', '--', '--', '--', '212.0', '0.14', '--', '--', '2.00', '6.50', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352191720');
INSERT INTO `oa_report_content` (`report_id`, `company_name`, `azdz`, `aqglrr`, `lxr`, `lxdh`, `zyrrczqh`, `zzdw`, `zczh`, `sclfc`, `cl`, `pz`, `xh`, `edzfl`, `edyl`, `cylqq`, `grq`, `sbdm`, `sydjzh`, `jyyj`, `ys_yd`, `ys_zj`, `ys_llz`, `ys_sd`, `ys_dd`, `ws_rjgxw`, `ws_zjd`, `ws_pjd`, `ws_phz`, `ws_po`, `ws_so`, `ws_xdjd`, `ws_ddl`, `ws_llz`, `ws_glbgdb`, `ws_pwl`, `gs_sd`, `gs_yd`, `gs_ph`, `gs_llz`, `gs_zj`, `gs_rjy`, `gs_qt`, `gs_y`, `gs_ddl`, `rhs_yd`, `rhs_qt`, `rhs_y`, `rhs_llz`, `rhs_phz`, `jyjl`, `jyyjhjy`, `bak`, `jyjghzzh`, `jyjghzrq`) VALUES
(160, '清远市大昌食品有限公司', '城区东城街道办金鸡岩脚', '罗志芳', '罗志芳', '3281386', '1人持证', '--', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZG2-1.0-W II', '2 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002009090015', '锅粤RO0678', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.43', '0.30', '56.00', '--', '217.3', '1410', '2.90', '2.60', '10.30', '1.55', '--', '0.065', '2014', '413.0', '3.41', '＞10', '3.10', '0.030', '6.30', '56.00', '0.30', '--', '--', '--', '217.3', '0.000', '--', '--', '55.00', '6.30', '不合格', '1、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352191701'),
(161, '清远市清城区君康餐具消毒中心', '清城区松岗沙田工业区', '黄锦潮', '黄锦潮', '13802893288', '无证', '雄广水处理设备厂', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZS2-1.25-M(A II)', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002008050004', '锅粤R00468', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.32', '0.30', '1.00', '--', '47.70', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '2.53', '0.33', '6.50', '2.00', '0.30', '--', '--', '--', '53.00', '0.32', '--', '--', '1.00', '6.60', '不合格', '1、给水硬度偏高，软水器应定期再生。\r\n2、锅水取样冷却器必须安装。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352191673'),
(162, '诚展（清远）鞋业有限公司', '清新县太和工业区', '文经理', '文经理', '13925182475', '1人持证', '东诚兴东兴热能设备厂', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'WNS6-1.0-Y(Q)', '6 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002007060010', '锅粤RK0197', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.21', '1.10', '6.00', '--', '153.7', '2621', '38.30', '35.30', '12.20', '18.95', '--', '0.49', '3744', '234.0', '11.20', '0.86', '2.42', '0.000', '7.60', '2.00', '1.00', '--', '--', '--', '123.0', '0.57', '--', '--', '110.0', '7.10', '不合格', '1、锅水碱度偏高，应加强排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352191643'),
(163, '清远市金正饲料有限公司', '清城区田龙107国道清四路口', '林盛辉', '林盛辉', '13535976468', '无证', '宏格水处理设备有限公司', '/', '浮动床', '2 t/h', '蒸汽锅炉', 'DZL2-1.25-A II', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002007010002', '锅粤RO0273', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.38', '1.00', '15.00', '--', '201.4', '1428', '10.90', '9.80', '11.60', '5.16', '--', '0.24', '2040', '160.0', '8.92', '8.11', '2.15', '0.000', '7.20', '12.00', '1.20', '--', '--', '--', '201.4', '0.022', '--', '--', '21.00', '6.90', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352191621'),
(164, '濠国鞋材（清远）有限公司', '清城区龙塘陂坑工业区', '余天贵', '余天贵', '3682266', '1人持证', '--', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZG4-1.25-M2', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002010006', '锅粤R10010', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.30', '0.30', '2.00', '--', '65.72', '714.0', '2.60', '2.20', '10.40', '1.56', '--', '0.10', '1020', '78.00', '9.15', '1.30', '2.16', '0.000', '7.50', '1.00', '0.30', '--', '--', '--', '6.48', '0.000', '--', '--', '1.00', '7.60', '不合格', '1、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352191576'),
(165, '濠国鞋材（清远）有限公司', '清城区龙塘陂坑工业区', '余天贵', '余天贵', '3682266', '1人持证', '--', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZG2-1.25-A II', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006110010', '锅粤R00251', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.30', '0.30', '2.00', '--', '65.72', '714.0', '2.60', '2.20', '10.40', '1.57', '--', '0.10', '1020', '133.0', '5.37', '0.76', '2.16', '0.000', '7.50', '1.00', '0.30', '--', '--', '--', '6.48', '0.000', '--', '--', '1.00', '7.60', '不合格', '1、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352346137'),
(166, '清远市千百丽纺织印染有限公司', '清城区龙塘银盏嘉福工业园', '孙一凡', '孙一凡', '13416547126', '1人持证', '顺德合成纯水设备厂', '--', '流动床', '20 t/h', '蒸汽锅炉', 'SZL6-1.25-A II', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002007030008', '锅粤R00298', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.14', '0.90', '35.00', '--', '413.4', '2999', '24.30', '19.90', '11.90', '13.37', '--', '0.21', '4284', '520.0', '5.77', '＞10', '1.83', '0.000', '9.60', '79.00', '4.10', '--', '--', '--', '911.6', '0.000', '--', '--', '35.00', '7.20', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352191555'),
(167, '清远市雅克化工有限公司', '清远市高新技术产业开发区嘉福工业园', '袁荣华', '袁荣华', '13724068569', '1人持证', '--', '--', '流动床', '4t/h', '蒸汽锅炉', 'WNS4-1.25-YQ', '4t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002012030003', '锅粤RO3506', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.39', '0.30', '4.00', '--', '66.96', '714.0', '9.20', '8.60', '11.60', '5.95', '--', '0.45', '1020', '13.00', '54.92', '＞10', '2.88', '0.000', '9.00', '4.00', '1.00', '--', '--', '--', '129.6', '0.000', '--', '--', '4.00', '7.30', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352191518'),
(168, '清远市青山不锈钢有限公司', '银盏嘉福工业园', '李天明', '李天明', '13927667883', '--', '--', '--', '流动床', '6 t/h', '蒸汽锅炉', 'YR6-0.8/蒸汽锅炉', '6 t/h(MW)', '0.8 MPa(℃)', '有', '无', '11204418002007120005', '锅粤R00405', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.39', '0.30', '4.00', '--', '68.04', '642.6', '4.60', '3.60', '10.60', '3.56', '--', '0.16', '918.0', '18.00', '35.70', '＞10', '2.20', '0.32', '7.40', '3.00', '0.30', '--', '--', '--', '205.2', '0.32', '--', '--', '4.00', '7.50', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352191454'),
(169, '清远市青山不锈钢有限公司', '银盏嘉福工业园', '李天明', '李天明', '13927667883', '--', '雄广水处理设备厂', '--', '流动床', '10 t/h', '蒸汽锅炉', 'LHG1.0-0.69-A III', '1.0 t/h(MW)', '0.69 MPa(℃)', '有', '无', '11204418002006110013', '锅粤R00254', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.45', '0.30', '4.00', '--', '82.08', '999.6', '5.30', '4.50', '10.60', '4.08', '--', '0.15', '1428', '89.00', '11.23', '4.70', '2.80', '0.46', '7.20', '4.00', '0.40', '--', '--', '--', '84.24', '0.011', '--', '--', '63.00', '7.30', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1352191490'),
(170, '英德市含光镇天翔制衣厂', '英德市西牛镇', '陈秤金', '陈秤金', '13509258821', '无人持证', '--', '--', '浮动床', '1.0 t/h', '蒸汽锅炉', 'LSG0.15-0.8-W12', '0.8 t/h(MW)', '0.15 MPa(℃)', '有', '无', '11204418002010110003', '锅粤RP1031', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '--', '--', '--', '--', '--', '2495', '51.30', '43.20', '12.20', '2.01', '--', '0.56', '3564', '80.00', '31.19', '3.90', '--', '0.000', '7.60', '3.00', '2.60', '--', '--', '--', '227.9', '0.000', '--', '--', '3.00', '7.50', '不合格', '1、锅水碱度；pH 值偏高，应适当加药以调控锅水 碱度；pH 值；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(171, '广东中骏上原汽车零部件有限公司', '清新县太平镇龙湾工业区（龙湾公司办公室101室）', '严照银', '严照银', '18958371737', '1人持证', '--', '--', '浮动床', '10 t/h', '蒸汽锅炉', 'WNS2-1.0-YQ', '2 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002012060007', '锅粤RK3228', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.41', '0.30', '2.00', '--', '53.00', '1285', '16.80', '16.00', '11.70', '1.65', '--', '0.47', '1836', '42.00', '30.59', '2.44', '2.79', '0.11', '7.60', '1.00', '0.30', '--', '--', '--', '30.74', '0.000', '--', '--', '3.00', '7.60', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(172, '广东中骏上原汽车零部件有限公司', '清新县太平镇龙湾工业区（龙湾公司办公室101室）', '严照银', '严照银', '18958371737', '1人持证', '--', '--', '浮动床', '10 t/h', '蒸汽锅炉', 'WNS2-1.0-YQ', '2 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002012060006', '锅粤RK3227', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.41', '0.30', '2.00', '--', '53.00', '1361', '19.50', '18.20', '11.80', '1.71', '--', '0.50', '1944', '58.00', '23.46', '1.75', '2.79', '0.11', '7.60', '1.00', '0.30', '--', '--', '--', '30.74', '0.000', '--', '--', '3.00', '7.60', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(173, '清新县太平清叶木厂', '太平镇天塘村委会石古潭', '肖卫洪', '肖卫洪', '13602933143', '1人持证', '英永工业水处理设备有限公司', '--', '锅外化学处理', '4.0  t/h', '蒸汽锅炉', 'SZS4-1.25-M', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002005110003', '锅粤RK0172', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.43', '0.40', '2.00', '--', '51.94', '332.6', '2.00', '1.70', '10.40', '1.61', '--', '0.17', '475.2', '26.00', '12.79', '＞10', '3.13', '0.086', '7.50', '4.00', '0.40', '--', '--', '--', '54.06', '0.000', '--', '--', '2.00', '7.40', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(174, '清远市兴发洗水厂', '清城区环城二路106号', '梁树彬', '梁树彬', '3880752', '1人持证', '顺德雄广水处理设备有限公司', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'SZL6-1.25-WA-WA', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002003020462', '锅粤R10208', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.70', '1.30', '4.00', '--', '159.0', '964.6', '9.50', '6.60', '11.30', '4.15', '--', '0.15', '1378', '39.00', '24.73', '＞10', '3.91', '0.16', '7.30', '5.00', '1.30', '--', '--', '--', '161.1', '0.000', '--', '--', '4.00', '7.40', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(175, '清远市清城区钜洋洗水厂', '东城莲塘管理区沙寮村', '郑小姐', '郑小姐', '3928308', '无证', '英永工业水处理设备有限公司', '--', '浮动床', '1.0 t/h', '蒸汽锅炉', 'KZL1.0-8', '1.0 t/h(MW)', '0.8 MPa(℃)', '无', '无', '11204418002003120595', '锅粤R100243', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.59', '1.10', '7.00', '--', '138.9', '742.0', '1.90', '1.60', '10.20', '1.52', '--', '0.070', '1060', '54.00', '13.74', '＞10', '2.72', '1.29', '6.80', '6.00', '1.10', '--', '--', '--', '159.0', '0.69', '--', '--', '6.00', '6.90', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(176, '清远市海贝生物技术有限公司', '清新太平天良林场', '聂进', '聂进', '13727138759', '无证', '阿图祖', '--', '锅外化学处理', '1.0 t/h', '蒸汽锅炉', 'LSC1-0.8-A II', '1.0 t/h(MW)', '0.8 MPa(℃)', '有', '无', '11204418002009100001', '锅粤R00688', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.74', '1.60', '1.00', '--', '127.2', '504.6', '2.10', '1.60', '9.90', '1.92', '--', '0.087', '720.8', '44.00', '11.47', '4.76', '5.46', '1.72', '6.60', '2.00', '1.60', '--', '--', '--', '143.1', '1.66', '--', '--', '1.00', '6.60', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(177, '清远市恒建环保建材有限公司', '清远市源潭镇东坑村委会银英公路边', '冯国勇', '冯国勇', '13808815596', '1人持证', '--', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.6-A II', '6 t/h(MW)', '1.6 MPa(℃)', '有', '无', '11204418002011100006', '锅粤RA3204', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.36', '0.30', '2.00', '--', '58.30', '1929', '13.80', '12.60', '11.40', '1.98', '--', '0.24', '2756', '160.0', '12.06', '1.26', '2.41', '0.000', '7.50', '2.00', '0.50', '--', '--', '--', '191.9', '0.000', '--', '--', '3.00', '7.30', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(178, '国荣（清远）橡胶工业有限公司', '清远市清城区龙塘浩良工业园', '陈立新', '陈立新', '15328192079', '1人持证', '惠州宏格水处理设备制造有限公司', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A II', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006080004', '锅粤RA0217', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.32', '0.30', '2.00', '--', '54.06', '526.8', '3.00', '2.50', '10.10', '2.18', '--', '0.15', '752.6', '28.00', '18.81', '7.69', '3.05', '0.000', '7.40', '2.00', '0.30', '--', '--', '--', '41.34', '0.000', '--', '--', '2.00', '7.20', '不合格', '1、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(179, '清远镇宇染整有限公司', '清新县太平镇龙湾工业园', '马生', '马生', '13631377893', '1人持证', '--', '--', '流动床', '20 t/h', '承压蒸汽锅炉', 'SZL20-1.25-A II', '20 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011110006', '锅粤RK3210', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.39', '0.30', '2.00', '--', '50.88', '642.6', '5.30', '4.60', '11.00', '4.57', '--', '0.24', '918.0', '108.0', '5.95', '＞10', '11.80', '0.000', '9.10', '24.00', '1.50', '--', '--', '--', '48.56', '0.000', '--', '--', '3.00', '7.40', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(180, '清远双江颜料有限公司', '清远市清新县太和镇告星工业区', '杜达英', '杜达英', '15119975004', '1人持证', '--', '--', '流动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A II', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.38', '1.00', '10.00', '--', '149.5', '2646', '13.60', '13.00', '11.50', '4.15', '--', '0.19', '3780', '614.0', '4.31', '1.49', '2.48', '1.48', '7.00', '9.00', '1.10', '--', '--', '--', '154.8', '1.42', '--', '--', '10.00', '7.00', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(181, '新安天玉有机硅有限公司', '清远市高新区安丰工业园', '龙勇', '龙勇', '13823724856', '1人持证', '阿图祖', '/', '锅外化学处理', '6 t/h', '蒸汽锅炉', 'WNS6-1.25-YZ', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011010007', '锅粤RA1037', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.63', '1.40', '11.00', '--', '174.9', '2374', '27.50', '25.30', '12.10', '2.05', '--', '0.39', '3392', '202.0', '11.75', '4.66', '2.43', '0.086', '7.10', '9.00', '1.10', '--', '--', '--', '180.2', '0.000', '--', '--', '11.00', '6.90', '不合格', '1、给水硬度偏高，软水器加盐再生；<br>\r\n2、锅水碱度偏高，应加强排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(182, '恒昌（清远）纸业有限公司', '清城区龙塘银英路口', '梁卫红', '梁卫红', '13750163866', '1人持证', '中兴工业公司水处理设备厂', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A II', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006060015', '锅粤RA0181', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.30', '0.30', '2.00', '--', '58.30', '1039', '7.70', '6.80', '11.30', '2.12', '--', '0.23', '1484', '158.0', '6.58', '1.28', '2.66', '0.000', '7.50', '2.00', '0.40', '--', '--', '--', '27.56', '0.043', '--', '--', '8.00', '7.20', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(183, '清新县新鸿基染整有限公司', '清新县太和工业园', '郭武乾', '郭武乾', '13417112345', '无证', '顺德英永水处理设备有限公司', '--', '流动床', '15 t/h', '蒸汽锅炉', 'SZL15-1.25-A II', '15 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006070014', '锅粤RK0175', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.01', '0.90', '21.00', '--', '165.4', '2495', '21.90', '19.40', '11.80', '1.67', '--', '0.27', '3564', '410.0', '6.08', '2.50', '2.15', '0.11', '7.50', '10.00', '1.10', '--', '--', '--', '154.8', '0.097', '--', '--', '10.00', '7.40', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(184, '清远镇宇金丰染整有限公司', '清新太平龙湾工业园', '马奇飞', '马奇飞', '13631377895', '1人持证', '顺德区会成纯水设备厂高明合成水处理工程部', '--', '浮动床', '10 t/h', '蒸汽锅炉', 'SHF10-1.25-P', '10.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002007060002', '锅粤RK0196', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.36', '0.30', '2.00', '--', '51.94', '151.2', '0.70', '0.40', '9.50', '--', '--', '0.026', '216.0', '20.00', '7.56', '＞10', '3.68', '0.54', '7.30', '3.00', '0.50', '--', '--', '--', '182.3', '0.53', '--', '--', '3.00', '7.30', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(185, '清新县昊元新型墙体砖厂', '清新县太和镇飞水开发区', '温师葵', '温师葵', '15914998856', '1人持证', '顺德雄广水处理设备厂', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'DZL6.0-1.57-A III II', '6 t/h(MW)', '1.57 MPa(℃)', '有', '无', '11204418002010090003', '锅粤RK1028', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.42', '1.30', '2.00', '--', '148.4', '1512', '1.80', '1.50', '10.40', '1.21', '--', '0.032', '2160', '266.0', '5.68', '3.10', '3.55', '1.74', '7.00', '8.00', '1.30', '--', '--', '--', '160.1', '1.74', '--', '--', '8.00', '7.00', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度偏低，应适当加药以调控锅水 碱度；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(186, '广东博众建材科技发展有限公司', '清远市高新技术产业开发区', '张生', '张生', '0763-3364097/137501569056905', '1人持证', '--', '--', '流动床', '6 t/h', '蒸汽锅炉', 'WNS2-1.25-YQ', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011100008', '锅粤RA3206', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.15', '0.20', '2.00', '--', '47.04', '483.8', '3.60', '3.20', '10.60', '2.13', '--', '0.23', '691.2', '34.00', '14.23', '6.25', '7.76', '0.000', '7.90', '2.00', '0.30', '--', '--', '--', '49.92', '0.000', '--', '--', '2.00', '7.80', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(187, '清远市广丰食品有限公司', '清远市高新区雄兴工业城', '高远雄', '高远雄', '15975555678', '一人持证', '--', '--', '浮动床', '8 t/h', '蒸汽锅炉', 'SZL8-1.25-A II', '8 t/h(MW)', '1.25 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.41', '0.30', '2.00', '--', '48.96', '315.8', '2.50', '2.20', '10.40', '2.18', '--', '0.24', '451.2', '22.00', '14.35', '10', '4.16', '0.000', '8.10', '2.00', '0.30', '--', '--', '--', '48.96', '0.000', '--', '--', '8.00', '7.80', '不合格', '1、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(188, '清远市光宇建筑材料有限公司', '清远市清城区龙塘镇泛宇工业区', '周光权', '周光权', '13926603907', '1人持证', '--', '--', '流动床', '4.0  t/h', '蒸汽锅炉', 'DZS4-1.25-M(X)', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011100005', '锅粤RA3203', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.66', '1.20', '6.00', '--', '128.6', '1008', '14.80', '13.80', '11.50', '6.15', '--', '0.51', '1440', '76.00', '13.26', '5.56', '6.55', '0.41', '6.60', '4.00', '0.50', '--', '--', '--', '62.40', '0.80', '--', '--', '5.00', '6.60', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(189, '威登制衣（清远）有限公司', '广东省清远市清新县太平镇龙湾工业园', '冯镇基', '冯镇基', '13602337479', '1人持证', '阿图祖', '--', '浮动床', '2.0 t/h', '蒸汽锅炉', 'LE72-0.7', '2 t/h(MW)', '0.7 MPa(℃)', '有', '无', '11204418002009090008', '锅粤RA1006', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.71', '2.40', '2.00', '--', '217.3', '1632', '18.30', '14.70', '11.70', '7.15', '--', '0.27', '2332', '108.0', '15.11', '6.93', '3.65', '0.011', '7.30', '7.00', '2.20', '--', '--', '--', '222.6', '0.000', '--', '--', '3.00', '7.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(190, '广东聚石化学股份有限公司', '广东省清远市高新技术产业开发区雄兴工业城B6区', '何燕岭', '何燕岭', '13826180887', '1人持证', '--', '--', '浮动床', '1.0 t/h', '蒸汽锅炉', 'WNS1-1.0-Y', '1.0 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002010100001', '锅粤RA1023', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.000', '0.20', '1.00', '--', '4.80', '215.0', '1.00', '0.70', '9.60', '--', '--', '0.074', '307.2', '6.00', '35.83', '0.32', '1.95', '0.000', '8.20', '1.00', '0.20', '--', '--', '--', '3.84', '0.000', '--', '--', '1.00', '8.10', '不合格', '1、锅水碱度偏低，应适当加药以调控锅水 碱度；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(191, '清远市桦生木业有限公司', '清远市高新区雄兴工业城', '陈永平', '陈永平', '13420880734', '无人持证', '--', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZS4-1.25-M(X)', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002012050006', '锅粤RA3241', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.34', '0.30', '3.00', '--', '47.04', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '2.41', '0.22', '7.60', '2.00', '0.30', '--', '--', '--', '48.00', '0.30', '--', '--', '3.00', '7.80', '不合格', '1、给水硬度偏高，软水器应定期再生。\r\n2、锅水取样冷却器损坏，必须维修。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(192, '清远市广德制衣有限公司', '城区桥北路230号', '黄德楚', '黄德楚', '3975212', '1人持证', '--', '--', '锅内加药', '0.5 t/h', '蒸汽锅炉', 'WNS0.5-1.0-Y', '0.5 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002002040213', '锅粤R10077', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.24', '1.90', '15.00', '--', '328.6', '2554', '27.00', '24.20', '12.10', '2.40', '--', '0.34', '3648', '786.0', '3.25', '8.41', '2.12', '1.57', '9.10', '61.00', '3.60', '--', '--', '--', '572.4', '--', '--', '--', '--', '--', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(195, '清新县顺景染织厂', '清新县太和镇飞水村', '周小明', '周小明', '5383118/13680006055', '无证', '建业水处理设备厂', '--', '流动床', '15 t/h', '蒸汽锅炉', 'SZL10-1.25-A II', '10.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002005120010', '锅粤RK0003', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.63', '1.20', '10.00', '--', '150.9', '1441', '14.40', '13.00', '11.50', '6.25', '--', '0.32', '2058', '150.0', '9.61', '7.91', '2.04', '0.000', '7.10', '11.00', '1.20', '--', '--', '--', '157.8', '0.000', '--', '--', '11.00', '7.10', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(196, '清远市粤北之珠海鲜坊有限公司', '清远市新城B26区', '张建方', '张建方', '13553964488', '1人持证', '/', '--', '浮动床', '1.0 t/h', '蒸汽锅炉', 'LSS0.75-0.8-YQ', '0.8 t/h(MW)', '0.8 MPa(℃)', '有', '无', '11204418002012010006', '锅粤RA3219', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.61', '1.10', '10.00', '--', '151.9', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '2.33', '1.03', '7.10', '10.00', '1.20', '--', '--', '--', '155.8', '1.38', '--', '--', '9.00', '7.20', '不合格', '1、给水硬度偏高，软水器应定期再生。\r\n2、锅水取样冷却器损坏，必须维修。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(194, '（钟友华）清远市福泰甘油精制有限公司', '城区横荷荷兴工业园', '钟友华', '钟友华', '3696377', '无证', '阿图祖', '--', '浮动床', '1.0 t/h', '余热锅炉', 'Q12/320-1-0.8', '1.0 t/h(MW)', '0.8 MPa(℃)', '无', '无', '11204418002007070007', '锅粤R00341', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.59', '1.20', '8.00', '--', '148.0', '452.8', '1.20', '0.70', '9.70', '--', '--', '0.018', '646.8', '40.00', '11.32', '＞10', '1.90', '1.63', '6.60', '9.00', '1.10', '--', '--', '--', '151.9', '1.61', '--', '--', '8.00', '6.70', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(197, '亿盈（清远）发泡材料有限公司', '银盏银英公路新庄段', '黎伟', '黎伟', '3695112', '1人持证', '顺德中兴永雄工业水处理设备有限公司', '—', '双柱浮动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002004090005', '锅粤RA0009', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.30', '0.20', '3.00', '--', '49.98', '1235', '7.90', '7.20', '10.70', '--', '--', '0.21', '1764', '128.0', '9.65', '2.40', '--', '0.000', '8.10', '3.00', '0.20', '--', '--', '--', '34.30', '0.000', '--', '--', '2.00', '8.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(198, '清远市永嘉洗涤有限公司', '开发区', '刘浩强', '刘浩强', '13926227043', '1人持证', '顺德英永工业水处理设备有限公司', '—', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006050007', '锅粤RA0159', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.40', '1.20', '9.00', '--', '156.8', '1235', '11.20', '10.20', '11.30', '--', '--', '0.30', '1764', '93.00', '13.28', '＞10', '--', '0.011', '8.90', '15.00', '1.00', '--', '--', '--', '160.7', '0.000', '--', '--', '9.00', '7.60', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(199, '日丰（清远）电子有限公司', '银盏泰基工业城', '谭建国', '谭建国', '13535996365', '1人持证', '—', '—', '流动床', '2 t/h', '蒸汽锅炉', 'WNS2-1.25-Y', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006100004', '锅粤R00240', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.39', '0.30', '3.00', '--', '51.94', '3361', '27.80', '24.80', '11.60', '--', '--', '0.26', '4802', '＞1000', '3.36', '0.30', '--', '0.000', '7.70', '3.00', '0.40', '--', '--', '--', '49.98', '0.000', '--', '--', '3.00', '7.60', '不合格', '、有盐水进入锅炉，应更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(200, '清远盛兴中英文学校', '清城区横荷街道清远大道西', '彭先生', '彭先生', '18666690180', '1人持证', '--', '--', '浮动床', '1.5 t/h', '蒸汽锅炉', 'WNS1.5-1.0-YQ', '1.5 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002011070001', '锅粤RA1054', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.57', '1.20', '9.00', '--', '155.0', '539.0', '4.50', '3.70', '11.00', '2.15', '--', '0.21', '770.0', '25.00', '21.56', '＞10', '2.26', '0.011', '8.00', '9.00', '1.30', '--', '--', '--', '170.0', '0.022', '--', '--', '8.00', '7.90', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(201, '清远市喜来登国际酒店', '横荷狮子湖', '刘志雄', '刘志雄', '13631056446', '1人持证', '--', '--', '浮动床', '-- t/h  1#', '蒸汽锅炉', 'WNS3-1.0-YQ', '3 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002011120006', '锅粤RO3503', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.44', '1.20', '7.00', '--', '140.0', '1540', '13.80', '12.90', '11.50', '6.97', '--', '0.31', '2200', '272.0', '5.66', '2.64', '24.10', '0.011', '7.70', '7.00', '1.00', '--', '--', '--', '130.0', '0.011', '--', '--', '8.00', '7.50', '不合格', '给水浊度偏高，应注意给水池的防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(202, '清远市中拓染整有限公司', '城区横荷大有虎岗', '姚志坚', '姚志坚', '13076615428', '1人持证', '中兴永雄水处理设备厂', '--', '流动床', '6 t/h', '蒸汽锅炉', 'SHFX6-1.25-H', '10.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002005090003', '锅粤R00426', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.76', '1.40', '26.00', '--', '220.0', '1400', '8.80', '7.00', '11.20', '37.18', '--', '0.15', '2000', '220.0', '6.36', '＞10', '5.60', '0.000', '6.10', '55.00', '1.10', '--', '--', '--', '430.0', '0.000', '--', '--', '53.00', '6.30', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(203, '清远市中拓染整有限公司', '城区横荷大有虎岗', '姚志坚', '姚志坚', '13076615428', '1人持证', '中兴永雄水处理设备厂', '--', '流动床', '6 t/h', '蒸汽锅炉', 'SHFX6-1.25-H', '6.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002005090007', '锅粤RA0084', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.76', '1.40', '26.00', '--', '220.0', '2590', '16.00', '13.10', '11.50', '38.51', '--', '0.16', '3700', '786.0', '3.30', '7.52', '5.60', '0.000', '6.10', '55.00', '1.10', '--', '--', '--', '430.0', '0.000', '--', '--', '53.00', '6.30', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(204, '清远市峻兴管桩有限公司', '源潭陶瓷工业城', '罗迭武', '罗迭武', '18023721091', '一人持证', '雄广水处理设备厂', '--', '流动床', '10 t/h   1#', '蒸汽锅炉', 'SZL10-1.6-A II', '10.0 t/h(MW)', '1.6 MPa(℃)', '有', '无', '11204418002009080003', '锅粤R00660', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.32', '0.30', '2.00', '--', '41.16', '1921', '24.10', '21.80', '11.90', '48.11', '--', '0.41', '2744', '424.0', '4.53', '0.47', '4.93', '0.000', '6.70', '2.00', '0.20', '--', '--', '--', '37.24', '0.30', '--', '--', '1.00', '6.60', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(205, '清远市佳利乐包装有限公司', '源潭陶瓷城8号区', '许建松', '许建松', '13376678222', '1人持证', '雄广水处理设备厂', '--', '流动床', '15 t/h', '蒸汽锅炉', 'SHXF15-1.25-A', '15.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011100002', '锅粤RA3202', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.49', '0.40', '4.00', '--', '55.86', '1578', '16.1', '14.3', '11.60', '7.25', '--', '0.32', '2254', '186.0', '8.48', '2.20', '5.16', '0.000', '6.50', '4.00', '0.40', '--', '--', '--', '52.92', '0.000', '--', '--', '3.00', '6.50', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(206, '广东天弼陶瓷有限公司', '源潭陶瓷城', '刘凌空', '刘凌空', '13927669188', '1人持证', '雄广水处理设备厂', '--', '流动床', '20 t/h', '蒸汽锅炉', 'DZL2-1.25-A II', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002007020005', '锅粤RO0287', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.54', '0.50', '5.00', '--', '51.94', '3499', '4.10', '3.40', '10.90', '2.85', '--', '0.031', '4998', '＞1000', '3.50', '＞10', '29.60', '0.15', '6.20', '140.0', '0.30', '--', '--', '--', '60.76', '0.000', '--', '--', '10.00', '6.50', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。\r\n2、给水浊度偏高，给水池应注意防尘。\r\n3、有盐水进入锅炉，应更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(207, '清远南方建材卫浴有限公司', '清城区源潭陶瓷城', '李金华', '李金华', '13750142756', '1人持证', '宏格水处理设备实业有限公司', '--', '流动床', '40 t/h', '蒸汽锅炉', 'DZS6-1.25-Y（Q）', '6.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011080012', '锅粤RA1061', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.32', '0.30', '2.00', '--', '39.20', '1029', '15.80', '11.40', '11.60', '2.11', '--', '0.27', '1470', '42.00', '24.50', '5.0', '6.68', '0.000', '6.30', '2.00', '0.30', '--', '--', '--', '42.14', '0.011', '--', '--', '1.00', '6.30', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(208, '清远南方建材卫浴有限公司', '清城区源潭陶瓷城', '李金华', '李金华', '13750142756', '1人持证', '宏格水处理设备实业有限公司', '--', '流动床', '40 t/h', '蒸汽锅炉', 'DZL4-1.25-A II', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002004040638', '锅粤R10249', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.32', '0.30', '2.00', '--', '39.20', '1509', '25.50', '22.80', '12.10', '2.23', '--', '0.53', '2156', '62.00', '24.34', '3.33', '6.68', '0.000', '6.30', '2.00', '0.30', '--', '--', '--', '42.14', '0.011', '--', '--', '1.00', '6.30', '不合格', '1、锅水碱度；pH 值偏高，应适当加药以调控锅水 碱度；pH 值；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(209, '广东家美陶瓷有限公司', '城区源潭陶瓷城', '黄安志', '黄安志', '15915150251', '无证', '雄广水处理设备厂', '/', '浮动床', '4 t/h   2#', '蒸汽锅炉', 'DZL4-1.25-AII', '4 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011060004', '锅粤RA1051', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.52', '0.40', '3.00', '--', '51.94', '3290', '74.80', '62.80', '12.30', '101.4', '--', '0.62', '4700', '506.0', '6.50', '0.80', '2.82', '0.000', '8.20', '4.00', '0.70', '--', '--', '--', '82.32', '0.000', '--', '--', '4.00', '6.40', '不合格', '锅水碱度及磷酸根极高，必须减少加药量。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(210, '清远市恒丰泰染整有限公司', '城区横荷大有虎岗', '陈松基', '陈松基', '3568028', '1人持证', '雄广水处理设备厂', '--', '流动床', '10 t/h', '蒸汽锅炉', 'SHF10-1.25-P', '10.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006070013', '锅粤R10247', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.87', '1.50', '23.00', '--', '201.0', '2030', '21.80', '19.20', '11.60', '33.03', '--', '0.33', '2900', '352.0', '5.77', '7.32', '2.63', '0.022', '7.20', '24.00', '1.50', '--', '--', '--', '200.0', '0.022', '--', '--', '34.00', '7.30', '不合格', '锅水磷酸根偏高，应减少加药量。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(211, '清远市恒丰泰染整有限公司', '城区横荷大有虎岗', '徐生', '徐生', '3568028', '1人持证', '雄广水处理设备厂', '--', '流动床', '10 t/h', '蒸汽锅炉', 'SZL10-1.25-A II', '10.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002012020001', '锅粤RA3221', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.68', '1.20', '14.00', '--', '170.0', '1680', '19.40', '17.80', '11.70', '58.14', '--', '0.38', '2400', '150.0', '11.20', '8.70', '2.66', '0.000', '7.80', '12.00', '1.30', '--', '--', '--', '170.0', '0.011', '--', '--', '16.00', '7.80', '不合格', '锅水磷酸根偏高，应适当减少加药量。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(212, '清远市峻兴管桩有限公司', '源潭陶瓷工业城', '罗迭武', '罗迭武', '18023721091', '一人持证', '雄广水处理设备厂', '--', '流动床', '10 t/h', '蒸汽锅炉', 'SZL10-1.6-A II', '10.0 t/h(MW)', '1.6 MPa(℃)', '有', '无', '11204418002011030001', '锅粤RA1041', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.32', '0.30', '2.00', '--', '41.16', '1921', '22.80', '20.30', '11.80', '53.92', '--', '0.37', '2744', '396.0', '4.85', '0.51', '4.93', '0.000', '6.70', '2.00', '0.20', '--', '--', '--', '37.24', '0.30', '--', '--', '1.00', '6.60', '不合格', '锅水磷酸根偏高，应减少加药量。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(213, '佛冈县石角镇国清包装经营部', '佛冈县石角镇三八岭背村', '曾清华', '曾清华', '15089733575', '1人持证', '--', '--', '锅外化学处理', '1.0 t/h', '蒸汽锅炉', 'DZG1-1.0-M', '1.0 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002010110006', '锅粤RM1013', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.22', '0.20', '3.00', '--', '47.00', '9261', '1.50', '1.20', '10.00', '1.11', '--', '0.39', '132.3', '2.00', '46.30', '＞10', '2.23', '0.030', '7.00', '1.00', '0.50', '--', '--', '--', '43.24', '0.000', '--', '--', '1.00', '7.00', '不合格', '1、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(214, '佛冈县森波拉度假森林有限公司', '广东省清远市佛冈县石角镇三八三联村', '方国华', '方国华', '13527738248', '1人持证', '阿图祖', '--', '固定床', '1.0 t/h', '蒸汽锅炉', 'WNS1-1.0-Y', '1.0 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002007120012', '锅粤R00412', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.56', '0.50', '6.00', '--', '59.22', '576.2', '3.90', '3.60', '10.00', '1.59', '--', '0.23', '823.2', '86.00', '6.70', '7.50', '2.65', '0.022', '6.90', '6.00', '0.50', '--', '--', '--', '64.86', '0.011', '--', '--', '16.00', '6.80', '不合格', '1、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(215, '佛冈篁胜国际温泉花园有限公司', '佛冈县人民中心西北角', '刘经理', '刘经理', '18926628150', '1人持证', '佛山广容水处理设备有限公司', '--', '锅外化学处理', '10 t/h', '蒸汽锅炉', 'DZL6-1.25-A II', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002010040009', '锅粤RM1006', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.46', '0.40', '1.00', '--', '51.70', '1921', '38.90', '30.60', '12.10', '7.85', '--', '0.46', '2744', '180.0', '10.67', '0.56', '2.35', '0.54', '6.50', '1.00', '0.70', '--', '--', '--', '170.1', '0.50', '--', '--', '1.00', '6.50', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度偏高，应加强排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(216, '佛冈县南海食街', '清远市佛冈县石角镇农副产品批发市场内', '盘经理', '盘经理', '4273897 /18922618321', '1人持证', '--', '--', '浮动床', '0.5 t/h', '承压蒸汽锅炉', 'LSS0.5-0.39', '0.5 t/h(MW)', '0.9 MPa(℃)', '有', '无', '11304418002006090007', '锅粤RM0107', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.49', '0.40', '4.00', '--', '55.46', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '6.05', '0.47', '6.20', '4.00', '0.40', '--', '--', '--', '56.40', '0.49', '--', '--', '4.00', '6.30', '不合格', '1、给水硬度偏高，软水器应定期再生。\r\n2、锅水取样冷却器损坏，必须维修。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(217, '东新（佛冈）温泉开发有限公司', '佛冈汤塘镇（聚龙湾）', '何经理', '何经理', '13509258517', '一人持证', '英永工业水处理设备有限公司', '--', '浮动床', '1.0 t/h', '蒸汽锅炉', 'DZG1-1.0-MA', '1.0 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002007020007', '锅粤RM0115', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.99', '1.50', '26.00', '--', '169.2', '1184', '13.60', '11.80', '11.50', '2.81', '--', '0.34', '1692', '226.0', '5.24', '＞10', '13.00', '0.000', '7.00', '26.00', '1.60', '--', '--', '--', '174.8', '0.011', '--', '--', '26.00', '6.90', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(218, '佛冈县丰裕毛巾厂', '石角镇龙溪村', '黄泽伦', '黄泽伦', '13926639830', '无证', '英永工业水处理设备有限公司', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'SZL6-1.25-A II', '6.0 t/h(MW)', '1.25 MPa(℃)', '无', '无', '11204418002011040001', '锅粤RM1021', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.40', '1.70', '30.00', '--', '236.9', '3842', '37.40', '33.90', '12.10', '--', '--', '0.32', '5488', '＞1000', '3.84', '3.09', '5.18', '0.40', '6.50', '30.00', '1.50', '--', '--', '--', '338.4', '0.000', '--', '--', '28.00', '6.60', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度偏高，应加强排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(219, '广东华农温氏畜牧股份有限公司佛冈分公司', '龙山镇学田', '江伙全', '江伙全', '13729649021', '1人持证', '英永工业水处理设备有限公司', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZL2-1.0-A II', '25 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002006070002', '锅粤RM0104', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.26', '0.20', '3.00', '--', '37.60', '1098', '9.30', '7.90', '11.40', '--', '--', '0.24', '1568', '208.0', '5.28', '2.97', '2.96', '0.075', '7.00', '6.00', '0.50', '--', '--', '--', '47.94', '0.000', '--', '--', '2.00', '7.10', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(220, '清远国际酒店有限公司', '清城区东城沿江一路1号', '林国栋', '林国栋', '13750106333', '1人持证', '顺德雄广水处理设备厂', '--', '浮动床', '4 t/h', '蒸汽锅炉', 'WNS2-1.25-YQ', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002010040004', '锅粤RA1006', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.61', '1.20', '10.00', '--', '136.3', '1250', '14.00', '13.40', '11.50', '2.03', '--', '0.41', '1786', '103.0', '12.14', '9.57', '2.45', '0.000', '7.10', '9.00', '1.10', '--', '--', '--', '140.1', '0.000', '--', '--', '9.00', '7.10', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL);
INSERT INTO `oa_report_content` (`report_id`, `company_name`, `azdz`, `aqglrr`, `lxr`, `lxdh`, `zyrrczqh`, `zzdw`, `zczh`, `sclfc`, `cl`, `pz`, `xh`, `edzfl`, `edyl`, `cylqq`, `grq`, `sbdm`, `sydjzh`, `jyyj`, `ys_yd`, `ys_zj`, `ys_llz`, `ys_sd`, `ys_dd`, `ws_rjgxw`, `ws_zjd`, `ws_pjd`, `ws_phz`, `ws_po`, `ws_so`, `ws_xdjd`, `ws_ddl`, `ws_llz`, `ws_glbgdb`, `ws_pwl`, `gs_sd`, `gs_yd`, `gs_ph`, `gs_llz`, `gs_zj`, `gs_rjy`, `gs_qt`, `gs_y`, `gs_ddl`, `rhs_yd`, `rhs_qt`, `rhs_y`, `rhs_llz`, `rhs_phz`, `jyjl`, `jyyjhjy`, `bak`, `jyjghzzh`, `jyjghzrq`) VALUES
(221, '佛冈县天和橡胶有限公司', '汤塘镇石门村', '黄锦添', '黄锦添', '4633003', '一人持证', '中兴永雄水处理设备有限公司', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZL1.5-2.5-A II', '1.5 t/h(MW)', '2.5 MPa(℃)', '无', '无', '11204418002008100007', '锅粤R00537', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.71', '1.00', '1.00', '--', '66.74', '404.7', '1.00', '0.60', '9.20', '--', '--', '0.020', '578.2', '88.00', '4.60', '＞10', '2.56', '0.17', '6.20', '12.00', '0.50', '--', '--', '--', '121.3', '0.064', '--', '--', '11.00', '6.20', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(222, '佛冈龙清电力器材公司', '佛冈', '张海清', '张海清', '13824904796', '无人持证', '--', '--', '浮动床', '4', '蒸汽锅炉', 'DZL4-1.25', '--', '1.25', '有', '无', '11204418002008010015', '锅粤R00438', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.27', '0.70', '2.00', '--', '66.74', '1646', '13.00', '11.80', '11.20', '--', '--', '0.26', '2352', '126.0', '13.06', '1.61', '--', '0.022', '6.90', '2.00', '0.60', '--', '--', '--', '74.26', '0.000', '--', '--', '2.00', '6.90', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(223, '清新县金丰纺织漂染定型厂', '清新县江口镇', '王老板', '王老板', '5513102', '无人持证', '--', '--', '浮动床', '10 t/h', '蒸汽锅炉', 'SZL10-1.25-A', '--', '1.25 MPa(℃)', '有', '无', '11204418002003080517', '锅粤RK0112', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.29', '0.60', '16.00', '--', '160.7', '1921', '12.70', '11.80', '11.40', '--', '--', '0.23', '2744', '480.0', '4.00', '5.96', '--', '0.011', '6.90', '27.00', '0.70', '--', '--', '--', '164.5', '0.000', '--', '--', '28.00', '6.70', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(224, '佛冈冠华纸塑包装有限公司', '佛冈', '黄本滔', '黄本滔', '4620333', '无人持证', '—', '—', '双柱浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '--', '—', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.33', '1.00', '73.00', '--', '413.6', '2881', '17.20', '12.10', '11.50', '--', '--', '0.10', '4116', '822.0', '3.50', '7.87', '--', '0.075', '6.80', '60.00', '1.10', '--', '--', '--', '385.4', '0.11', '--', '--', '72.00', '6.70', '不合格', '给水硬度偏高，软水器应定期再生。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(225, '兆联（清远）纺织印染有限公司', '佛冈汤塘镇三门村', '林老板', '林老板', '4201689', '1人持证', '—', '—', '流动床', '6 t/h', '蒸汽锅炉', 'SZL10-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002004120049', '锅粤RM0075', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '--', '--', '--', '--', '--', '1579', '21.00', '19.40', '11.80', '--', '--', '0.45', '2256', '200.0', '7.90', '3.09', '--', '0.11', '6.90', '6.00', '0.40', '--', '--', '--', '58.28', '0.000', '--', '--', '6.00', '7.00', '不合格', '给水硬度偏高，软水器应定期再生。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(226, '清远市信和实业有限公司', '广东省清远市龙塘镇金沙工业小区金沙公路旁', '黄忠信', '黄忠信', '13926667508', '1人持证', '--', '--', '浮动床', '2.0 t/h', '蒸汽锅炉', 'DZG1.5-1.25-A II', '1.5 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002010090002', '锅粤RA1022', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.19', '0.20', '1.00', '--', '43.12', '2332', '21.40', '18.30', '11.90', '15.26', '--', '0.26', '3332', '262.0', '8.90', '0.77', '2.33', '0.000', '6.90', '2.00', '0.20', '--', '--', '--', '41.16', '0.000', '--', '--', '2.00', '6.90', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(227, '清远市清城区龙塘顺年漂染厂', '清城区龙塘镇开发区', '吴志明', '吴志明', '13902859720', '无证', '宏格水处理设备有限公司', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'SHW6-1.25-A I', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040173', '锅粤R10035', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.22', '0.20', '3.00', '--', '44.10', '1303', '9.80', '8.60', '10.80', '4.52', '--', '0.23', '1862', '102.0', '12.77', '2.0', '2.13', '0.000', '6.90', '2.00', '0.20', '--', '--', '--', '46.06', '0.000', '--', '--', '2.00', '6.80', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(228, '清远市凯捷电源有限公司', '龙塘镇华强工业园', '张树明', '张树明', '3605560', '无证', '阿图祖', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZG2-1.25-W II2', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002008070013', '锅粤R00508', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.19', '0.20', '2.00', '--', '44.10', '1235', '13.20', '12.60', '11.50', '6.33', '--', '0.39', '1764', '76.00', '16.25', '2.70', '2.38', '0.24', '6.40', '2.00', '0.30', '--', '--', '--', '53.90', '0.28', '--', '--', '2.00', '6.50', '不合格', '1、给水硬度偏高，软水器加盐再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(229, '清远市榕兴新型环保建材有限责任公司', '清城区龙塘镇', '高国榕', '高国榕', '6801188', '1人持证', '雄广水处理设备厂', '--', '流动床', '10 t/h', '蒸汽锅炉', 'SZL8-1.57-A II', '8 t/h(MW)', '1.57 MPa(℃)', '有', '无', '11204418002008080003', '锅粤R00514', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.17', '0.20', '2.00', '--', '44.10', '960.4', '6.30', '5.50', '10.40', '3.91', '--', '0.20', '1372', '80.00', '12.00', '＞10', '2.20', '0.000', '6.90', '2.00', '0.20', '--', '--', '--', '44.10', '0.000', '--', '--', '2.00', '6.90', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(230, '清远市汉铿物业发展有限公司', '小市北江一路七星岗', '王部长', '王部长', '3889871', '无人持证', '容桂中兴水处理设备厂', '--', '蒸汽锅炉', '1.0 t/h', '蒸汽锅炉', 'WNS1-1.0-Y', '--', '1.0 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.57', '1.20', '9.00', '--', '156.8', '1330', '9.40', '9.00', '11.40', '--', '--', '0.26', '1900', '156.0', '8.52', '5.40', '--', '0.030', '6.60', '8.00', '0.60', '--', '--', '--', '93.10', '0.054', '--', '--', '8.00', '6.40', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(231, '清远市清城区振威皮革厂清新分厂', '黄坑太和工业区', '周军华', '周军华', '3322098', '无人持证', '英永工业水处理设备厂', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZG4-1.25-A', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040149', '锅粤RK0033', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.59', '1.10', '8.00', '--', '134.3', '579.6', '1.20', '0.80', '9.90', '--', '--', '0.028', '828.0', '100.0', '5.80', '＞10', '--', '1.72', '6.10', '10.00', '1.30', '--', '--', '--', '138.0', '1.68', '--', '--', '9.00', '6.20', '不合格', '1、给水硬度偏高，软水器应定期再生。\r\n2、锅水碱度偏低，应适当控制排污。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(232, '清远市振威皮革有限公司', '城区环城路拉尾岗157号', '周军华', '周军华', '3322098', '无人持证', '伦敦水处理设备厂', '--', '双柱浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A', '--', '1.25 MPa(℃)', '有', '无', '11204418002006080002', '锅粤RA0215', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.59', '1.30', '7.00', '--', '134.3', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '0.63', '6.90', '8.00', '0.50', '--', '--', '--', '151.8', '0.030', '--', '--', '6.00', '7.00', '不合格', '1、给水硬度偏高，软水器应定期再生。\r\n2、锅水取样冷却器损坏，必须维修。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(233, '清远先锋制衣有限公司', '附城工业区', '黄厂长', '黄厂长', '3926856', '无人持证', '英永工业水处理设备有限公司', '--', '双柱浮动床', '1.0 t/h', '蒸汽锅炉', 'WNS1-1.0-Y', '--', '1.0 MPa(℃)', '有', '无', '11204418002002040168', '锅粤R10030', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.70', '1.30', '8.00', '--', '134.3', '1095', '1.00', '0.60', '9.60', '--', '--', '0.0073', '1564', '360.0', '3.04', '2.27', '--', '1.83', '6.50', '8.00', '1.20', '--', '--', '--', '137.1', '1.55', '--', '--', '8.00', '6.50', '不合格', '1、给水硬度偏高，软水器应定期再生。\r\n2、锅水碱度偏低，应适当控制排污。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(234, '骏达（清远）制衣有限公司', '附城', '刘国星', '刘国星', '3363121', '无人持证', '容桂中兴工业公司水处理设备厂', '--', '双柱浮动床', '1.0 t/h', '蒸汽锅炉', 'LHC1-0.69-A III', '--', '0.69 MPa(℃)', '有', '无', '11204418002008060009', '锅粤R00489', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.59', '1.40', '9.00', '--', '134.3', '4186', '33.60', '29.00', '12.10', '--', '--', '0.23', '5980', '＞1000', '4.19', '0.91', '--', '0.022', '7.20', '9.00', '1.30', '--', '--', '--', '138.9', '0.000', '--', '--', '8.00', '7.10', '不合格', '有盐水进入锅炉，必须更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(235, '丽珠集团新北江制药股份有限公司', '城区新城七星岗', '叶飞', '叶飞', '13509264637', '2人持证', '顺德广容水处理设备厂', '--', '流动床', '10 t/h   1#', '蒸汽锅炉', 'CB600500150', '8 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002002040202', '锅粤R10064', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.70', '1.30', '10.00', '--', '166.6', '2310', '1.50', '1.20', '10.00', '1.15', '--', '0.016', '3300', '710.0', '3.25', '4.87', '8.65', '1.76', '6.40', '33.00', '1.60', '--', '--', '--', '235.2', '2.15', '--', '--', '25.00', '6.40', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。<br>\r\n2、锅水碱度偏低，应适当控制排污；<br>\r\n3、给水浊度偏高，给水池应注意防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(236, '丽珠集团新北江制药股份有限公司', '城区新城七星岗', '叶飞', '叶飞', '13509264637', '2人持证', '顺德广容水处理设备厂', '--', '流动床', '10 t/h   5#', '蒸汽锅炉', 'WNS8-1.25-YQ', '8 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002002040199', '锅粤R10061', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.70', '1.30', '10.00', '--', '166.6', '3850', '1.90', '1.40', '10.20', '1.18', '--', '0.0094', '5500', '＞1000', '3.85', '3.41', '8.65', '1.76', '6.40', '33.00', '1.60', '--', '--', '--', '235.2', '2.15', '--', '--', '25.00', '6.40', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。<br>\r\n2、有盐水进入锅炉，必须更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(237, '清远广正大陶瓷洗涤原料有限公司', '清新太平花塘基村', '邹宜龙', '邹宜龙', '5773188', '1人持证', '顺德雄广水处理设备厂', '--', '浮动床', '10 t/h', '蒸汽锅炉', 'DZG4-1.25-W II', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002010050003', '锅粤RK1010', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '4.26', '2.90', '4.00', '--', '430.0', '1470', '14.70', '12.80', '11.50', '4.95', '--', '0.30', '2100', '42.00', '35.00', '＞10', '2.16', '0.043', '7.00', '6.00', '3.00', '--', '--', '--', '470.0', '0.75', '--', '--', '5.00', '6.80', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(238, '丽珠集团新北江制药股份有限公司', '城区新城七星岗', '叶飞', '叶飞', '13509264637', '2人持证', '顺德广容水处理设备厂', '--', '流动床', '10 t/h   2#', '蒸汽锅炉', 'CB600500150', '8 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002002040202', '锅粤R10064', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.70', '1.30', '10.00', '--', '166.6', '2870', '1.60', '1.10', '10.10', '1.16', '--', '0.0084', '4100', '706.0', '4.06', '4.90', '8.65', '1.76', '6.40', '33.00', '1.60', '--', '--', '--', '235.2', '2.15', '--', '--', '25.00', '6.40', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。<br>2、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(239, '清远市简一陶瓷有限公司', '广东省清远市清新县飞来峡镇', '龚小平', '龚小平', '18934287555', '1人持证', '--', '--', '浮动床', '-- t/h  3#', '煤气发生炉', '--', '--', '--', '有', '无', '21704418002011070020', '容1LE粤RA3025', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.68', '1.30', '6.00', '--', '157.8', '6448', '168.2', '143.2', '13.50', '--', '--', '0.73', '9212', '＞1000', '6.45', '0.91', '5.55', '0.82', '9.00', '9.00', '1.80', '--', '--', '--', '196.0', '1.72', '--', '--', '7.00', '6.20', '不合格', '1、给水硬度偏高，软水器应定期再生；\r\n2、锅水碱度偏高;pH 值偏高，应加强排污；\r\n3、有盐水进入锅炉，必须更换锅水；\r\n4、锅水碱度偏高，必须减少加药量。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(240, '清远市简一陶瓷有限公司', '广东省清远市清新县飞来峡镇', '龚小平', '龚小平', '18934287555', '1人持证', '--', '--', '浮动床', '-- t/h  2#', '煤气发生炉', '--', '--', '--', '有', '无', '21704418002011070023', '容1LE粤RA3027', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.68', '1.30', '6.00', '--', '157.8', '3087', '33.80', '29.20', '12.10', '--', '--', '0.32', '4410', '348.0', '8.87', '2.65', '5.55', '0.82', '9.00', '9.00', '1.80', '--', '--', '--', '196.0', '1.72', '--', '--', '7.00', '6.20', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度偏高，应加强排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(241, '晋勇（清远）橡胶工业有限公司', '清城区源潭镇峡山工业区规划9-1号地', '夏全枝', '夏全枝', '15889466723', '无证', '东莞新兴水处理设备有限公司', '--', '浮动床', '10 t/h', '蒸汽锅炉', 'SZL10-1.57-A II', '10.0 t/h(MW)', '1.57 MPa(℃)', '有', '无', '11204418002010100002', '锅粤RA1024', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.32', '0.30', '3.00', '--', '33.32', '686.0', '3.40', '2.90', '10.60', '2.12', '--', '0.14', '980.0', '162.0', '4.23', '5.88', '22.50', '0.000', '6.80', '9.00', '0.40', '--', '--', '--', '56.84', '0.000', '--', '--', '1.00', '6.80', '不合格', '1、锅水碱度偏低，应适当控制排污；<br>\r\n2、给水浊度偏高，应注意给水池的防尘工作。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(242, '清新县嘉亿塑料厂', '清新县飞来峡镇', '曾伙文', '曾伙文', '13727102788', '1人持证', '--', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'LHC0.5-0.39-A III', '0.5 t/h(MW)', '0.39 MPa(℃)', '有', '无', '11204418002009110003', '锅粤RO0694', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.63', '1.30', '7.00', '--', '156.8', '823.2', '3.50', '1.90', '10.70', '1.99', '--', '0.014', '1176', '114.0', '7.22', '6.54', '23.00', '1.78', '6.30', '7.00', '1.50', '--', '--', '--', '167.6', '1.87', '--', '--', '12.00', '6.30', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度偏低，应适当加药以调控水 碱度；<br>\r\n3、给水浊度偏高，应注意给水池的防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(243, '广东天农食品有限公司', '城区飞来峡镇江口', '何新学', '何新学', '15816238680', '1人持证', '中兴永雄工业水处理设备有限公司', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZL2-1.25-A II', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002003080531', '锅粤RK0117', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.68', '1.50', '6.00', '--', '157.8', '1578', '13.60', '12.70', '11.50', '4.95', '--', '0.30', '2254', '148.0', '10.66', '4.22', '2.25', '1.50', '6.40', '6.00', '1.40', '--', '--', '--', '161.7', '--', '--', '--', '--', '--', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(244, '杨志锋（清新县太平镇河粉厂）', '广东省清远市清新县飞来峡镇', '杨志锋', '杨志锋', '13539523080 / 5775787', '1人持证', '--', '--', '浮动床', '0.5t/h', '蒸汽锅炉', 'LHC0.5-0.7-A III', '0.5 t/h(MW)', '0.7 MPa(℃)', '有', '无', '11204418002012050004', '锅粤RK3226', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.43', '2.60', '2.00', '--', '180.0', '87.50', '0.50', '0.30', '9.00', '--', '--', '0.046', '125.0', '16.00', '5.47', '＞10', '2.06', '2.86', '6.30', '3.00', '1.00', '--', '--', '--', '211.0', '2.75', '--', '--', '3.00', '6.30', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(245, '清远建滔裕花园酒店有限公司（原丽晶国际大酒店）', '清远新城东B1小区', '钟曲东', '钟曲东', '13802892955', '1人持证', '阿图祖', '--', '锅外化学处理', '3 t/h', '蒸汽锅炉', 'WNS3-1.25-YQ', '3 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002007080017', '锅粤R00364', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.63', '1.50', '9.00', '--', '161.70', '4550', '12.90', '11.90', '11.50', '6.15', '--', '0.096', '6500', '＞1000', '4.55', '1.73', '9.06', '0.11', '6.80', '17.00', '0.50', '--', '--', '--', '97.02', '0.31', '--', '--', '9.00', '6.70', '不合格', '1、给水硬度偏高，软水器应定期再生；\r\n2、给水浊度偏高，给水池应注意防尘；\r\n3、有盐水进入锅炉，必须更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(246, '万裕（清新）塑胶制品有限公司', '清新太平工业园', '唐礼军', '唐礼军', '13631084066', '1人持证', '东莞新兴水处理设备有限公司', '/', '浮动床', '10 t/h', '蒸汽锅炉', 'DZL4-1.25-A II', '4.0 t/h', '1.25 MPa(℃)', '有', '无', '11204418002006110001', '锅粤RK0182', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.44', '0.40', '2.00', '--', '46.92', '1098', '14.10', '13.20', '11.60', '6.15', '--', '0.45', '1568', '122.0', '9.00', '2.52', '1.91', '0.000', '7.00', '3.00', '0.30', '--', '--', '--', '46.92', '0.000', '--', '--', '3.00', '6.99', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(247, '清新县山塘镇恒洁干洗服务部', '清新县山塘镇白莲大树园', '潘锐河', '潘锐河', '13620503733', '1人持证', '--', '--', '浮动床', '--', '蒸汽锅炉', 'DZG0.5-0.8-M(X)', '0.5 t/h(MW)', '0.8 MPa(℃)', '无', '无', '11204418002012050002', '锅粤RK3224', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.55', '1.30', '9.00', '--', '155.0', '560.0', '0.30', '0.20', '8.00', '--', '--', '0.0071', '800.0', '92.00', '6.09', '＞10', '1.92', '1.55', '6.50', '12.00', '1.30', '--', '--', '--', '160.0', '1.59', '--', '--', '11.00', '6.50', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(248, '英德市粮香大酒店', '英城建设路59号', '程东华', '程东华', '2222098', '1人持证', '湘潭锅炉辅机厂', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'KZG1.0-0.8-W', '1.0 t/h(MW)', '0.8 MPa(℃)', '无', '无', '11204418002004110003', '锅粤RP0204', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.99', '1.00', '6.00', '--', '138.0', '1996', '23.60', '17.20', '11.80', '104.4', '--', '0.22', '2852', '166.0', '12.02', '5.06', '2.46', '0.000', '7.40', '8.00', '1.00', '--', '--', '--', '142.6', '0.011', '--', '--', '7.00', '7.40', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(249, '英德市良仕工业材料有限公司', '英德市东华镇清远华侨工业园精细化工基地', '韦主任', '韦主任', '18666695083', '1人持证', '--', '--', '浮动床', '1.0 t/h', '蒸汽锅炉', 'WNS1-1.0-YQ', '1.0 t/h(MW)', '1.0 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.22', '0.20', '4.00', '--', '48.00', '1210', '12.50', '11.40', '11.50', '2.39', '--', '0.34', '1728', '106.0', '11.42', '8.16', '1.95', '0.000', '7.10', '8.00', '0.20', '--', '--', '--', '47.04', '0.000', '--', '--', '3.00', '7.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(253, '台泥（英德）水泥有限公司', '英德市英城镇观音山', '刘建欧', '肖英', '18926664523', '2人持证', '--', '--', '除盐水', '-- t/h  AQC3#', '余热锅炉', 'QC380/325-30.9-0.7/290', '30.9 t/h(MW)', '0.7 MPa(℃)', '有', '有', '11204418002010010008', '锅粤RP1016', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.08', '1.20', '7.00', '--', '143.5', '103.0', '2.40', '2.00', '10.40', '17.66', '--', '0.62', '147.2', '1.00', '103.0', '0', '2.23', '0.000', '8.60', '1.00', '0.40', '--', '--', '--', '19.32', '0.000', '--', '--', '1.00', '7.60', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(252, '台泥（英德）水泥有限公司', '英德市英城镇观音山', '刘建欧', '肖英', '18926664523', '2人持证', '--', '--', '除盐水', '-- t/h  AQC4#', '余热锅炉', 'QC380/325-30.9-0.7/290', '30.9 t/h(MW)', '0.7 MPa(℃)', '有', '有', '11204418002010010001', '锅粤RP1009', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.08', '1.20', '7.00', '--', '143.5', '83.72', '1.50', '1.00', '10.20', '26.18', '--', '0.24', '119.6', '1.00', '83.72', '0', '2.23', '0.000', '8.60', '1.00', '0.40', '--', '--', '--', '19.32', '0.000', '--', '--', '1.00', '7.60', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(254, '台泥（英德）水泥有限公司', '英德市英城镇观音山', '刘建欧', '肖英', '18926664523', '2人持证', '--', '--', '除盐水', '-- t/h  AQC2#', '余热锅炉', 'QC380/325-30.9-0.7/290', '30.9 t/h(MW)', '0.7 MPa(℃)', '有', '有', '11204418002010010002', '锅粤RP1010', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.08', '1.20', '7.00', '--', '143.5', '61.18', '1.00', '0.60', '10.10', '21.14', '--', '0.13', '87.40', '2.00', '30.59', '＞10', '2.23', '0.000', '8.60', '1.00', '0.40', '--', '--', '--', '19.32', '0.000', '--', '--', '1.00', '7.60', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(255, '台泥（英德）水泥有限公司', '英德市英城镇观音山', '刘建欧', '肖英', '18926664523', '2人持证', '--', '--', '除盐水', '-- t/h  AQC1#', '余热锅炉', 'QC380/325-30.9-0.7/290', '30.9 t/h(MW)', '0.7 MPa(℃)', '有', '有', '11204418002010010005', '锅粤RP1013', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.08', '1.20', '7.00', '--', '143.5', '90.16', '1.50', '0.90', '10.30', '28.09', '--', '0.13', '128.8', '1.00', '90.16', '0', '2.23', '0.000', '8.60', '1.00', '0.40', '--', '--', '--', '19.32', '0.000', '--', '--', '1.00', '7.60', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(256, '台泥（英德）水泥有限公司', '英德市英城镇观音山', '刘建欧', '肖英', '18926664523', '2人持证', '--', '--', '除盐水', '-- t/h  4#PH', '余热锅炉', 'QC380/315-25.4-0.7/291', '30.9 t/h(MW)', '0.7 MPa(℃)', '有', '有', '11204418002010010003', '锅粤RP1011', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.08', '1.20', '7.00', '--', '143.5', '116.6', '1.90', '1.20', '10.40', '34.10', '--', '0.17', '166.5', '2.00', '58.30', '＞10', '2.23', '0.000', '8.60', '1.00', '0.40', '--', '--', '--', '19.32', '0.000', '--', '--', '1.00', '7.60', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(257, '台泥（英德）水泥有限公司', '英德市英城镇观音山', '刘建欧', '肖英', '18926664523', '2人持证', '--', '--', '除盐水', '-- t/h  3#PH', '余热锅炉', 'QC380/325-30.9-0.7/29091', '30.9 t/h(MW)', '0.7 MPa(℃)', '有', '有', '11204418002010010004', '锅粤RP1012', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.08', '1.20', '7.00', '--', '143.5', '109.5', '2.10', '1.28', '10.40', '38.91', '--', '0.11', '156.4', '1.00', '109.5', '0', '2.23', '0.000', '8.60', '1.00', '0.40', '--', '--', '--', '19.32', '0.000', '--', '--', '1.00', '7.60', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(258, '台泥（英德）水泥有限公司', '英德市英城镇观音山', '刘建欧', '肖英', '18926664523', '2人持证', '--', '--', '除盐水', '-- t/h  2#PH', '余热锅炉', 'QC380/325-30.9-0.7/29091', '32 t/h(MW)', '0.7 MPa(℃)', '有', '无', '11204418002010010007', '锅粤RP1015', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.08', '1.20', '7.00', '--', '143.5', '109.5', '1.80', '1.10', '10.40', '28.40', '--', '0.15', '156.4', '2.00', '54.75', '＞10', '2.23', '0.000', '8.60', '1.00', '0.40', '--', '--', '--', '19.32', '0.000', '--', '--', '1.00', '7.60', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(259, '台泥（英德）水泥有限公司', '英德市英城镇观音山', '刘建欧', '肖英', '18926664523', '2人持证', '--', '--', '除盐水', '-- t/h  1#PH', '余热锅炉', 'QC380/325-30.9-0.7/29091', '30.9 t/h(MW)', '0.7 MPa(℃)', '有', '无', '11204418002010010006', '锅粤RP1014', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.08', '1.20', '7.00', '--', '143.5', '80.50', '1.40', '0.80', '10.20', '28.62', '--', '0.10', '115.0', '1.00', '80.50', '0', '2.23', '0.000', '8.60', '1.00', '0.40', '--', '--', '--', '19.32', '0.000', '--', '--', '1.00', '7.60', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(260, '英德市望埠镇铁厂', '英德市望埠镇', '范碧辉', '范碧辉', '13360938160', '1人持证', '伦敦水处理设备厂', '--', '浮动床', '6 t/h', '余热锅炉', 'SHS5-2.45/400-Q2', '5 t/h(MW)', '2.45 MPa(℃)', '有', '有', '11104418002004100001', '锅粤RP0203', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.08', '0.90', '1.00', '--', '110.4', '255.4', '3.10', '2.70', '10.80', '1.67', '--', '0.36', '364.8', '3.00', '85.13', '＞10', '2.30', '0.000', '7.20', '1.00', '0.90', '--', '--', '--', '23.04', '0.000', '--', '--', '2.00', '7.00', '不合格', '1、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(261, '佛冈龙清电力器材公司', '佛冈', '张海清', '张海清', '13824904796', '无人持证', '--', '--', '浮动床', '4', '蒸汽锅炉', 'DZL4-1.25', '--', '1.25', '有', '无', '11204418002008010015', '锅粤R00438', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.58', '0.40', '6.00', '--', '30.38', '502.3', '6.10', '5.70', '11.00', '--', '--', '0.42', '717.6', '55.00', '9.13', '1.85', '--', '0.030', '6.30', '1.00', '0.40', '--', '--', '--', '31.36', '0.000', '--', '--', '2.00', '6.40', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355280115'),
(262, '兆联（清远）纺织印染有限公司', '佛冈汤塘镇三门村', '林老板', '林老板', '4201689', '1人持证', '—', '—', '流动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002004120049', '锅粤RM0075', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.44', '1.00', '17.00', '--', '--', '1882', '26.80', '25.20', '12.10', '--', '--', '0.50', '2688', '202.0', '9.32', '1.51', '--', '0.000', '6.20', '3.00', '0.40', '--', '--', '--', '171.5', '0.000', '--', '--', '4.00', '6.80', '基本合格', '1、锅水碱度偏高，应加强排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355280129'),
(263, '佛冈冠华纸塑包装有限公司', '佛冈', '黄本滔', '黄本滔', '4620333', '无人持证', '—', '—', '双柱浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '--', '—', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.2', '0.90', '32.00', '--', '191.1', '2401', '5.40', '3.00', '10.60', '--', '--', '0.010', '3430', '896.0', '2.68', '4.92', '--', '0.082', '6.00', '42.00', '0.60', '--', '--', '--', '210.7', '0.041', '--', '--', '32.00', '6.00', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>2、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(264, '广东博华陶瓷有限公司', '佛冈博华陶瓷城', '丁厂长', '叶志原', '4682828，13824909338', '1人持证', '顺德（永雄）英永工业水处理设备公司', '--', '锅外化学处理', '10 t/h', '蒸汽锅炉', 'SZL6-1.25-A II', '6.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204406002007050008', '锅粤RM1003', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.36', '0.30', '6.00', '--', '50.96', '3156', '12.80', '11.30', '11.50', '0.46', '--', '0.12', '4508', '＞1000', '3.16', '＞10', '3.13', '0.52', '6.30', '250.0', '0.30', '--', '--', '--', '833.0', '0.53', '--', '--', '248.0', '6.30', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。\r\n2、有盐水进入锅炉，必须更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(265, '佛冈金冠水玻璃有限责任公司', '佛冈县龙山镇良塘村乐格山塘', '陈总', '陈总', '4683063', '1人持证', '--', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A II', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011080013', '锅粤RM1026', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.80', '0.50', '4.00', '--', '93.10', '274.4', '1.80', '1.50', '10.00', '0.24', '--', '0.17', '392.0', '12.00', '22.87', '＞10', '2.16', '0.041', '6.70', '4.00', '0.40', '--', '--', '--', '92.12', '0.041', '--', '--', '4.00', '6.60', '不合格', '1、给水硬度略偏高，软水器应定期再生。\r\n2、锅水碱度偏低，应适当控制排污。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355280202'),
(266, '雅辉（清远）纸品有限公司', '清城区源潭高桥', '秦厂长', '秦厂长', '13922872331', '1人持证', '东莞科力热能设备厂', '--', '浮动床', '8 t/h', '蒸汽锅炉', 'SZL8-1.25-A II', '8 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002007120013', '锅粤R00413', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.56', '0.50', '3.00', '--', '147.0', '1646', '13.30', '12.00', '11.70', '2.33', '--', '0.26', '2352', '138.0', '11.93', '1.47', '7.56', '0.021', '6.10', '2.00', '0.30', '--', '--', '--', '147.0', '0.000', '--', '--', '3.00', '6.30', '基本合格', '给水浊度偏高，应注意给水箱的防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(267, '富元（清新）服饰有限公司', '清新县山塘镇工业区18号', '蔡科峰', '蔡科峰', '13413451938', '1人持证', '--', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'SZL6-1.25-A II', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002010110013', '锅粤RK1034', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.55', '1.20', '10.00', '--', '73.50', '1646', '24.60', '22.30', '11.80', '0.31', '--', '0.49', '2352', '50.00', '32.92', '＞10', '3.86', '1.59', '6.50', '10.00', '1.30', '--', '--', '--', '79.38', '0.58', '--', '--', '11.00', '6.50', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(268, '佛冈县建滔实业有限公司', '佛冈城南工业区', '董明', '董明', '13828535209', '2人持证', '--', '--', '浮动床', '30 t/h', '蒸汽锅炉', 'SZL10-1.6-A II', '15 t/h(MW)', '1.6 MPa(℃)', '有', '无', '11204418002007010005', '锅粤RM0112', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.13', '0.20', '1.00', '--', '25.48', '873.6', '7.80', '6.80', '11.10', '0.28', '--', '0.26', '1248', '144.0', '6.07', '0.70', '4.28', '0.021', '6.90', '1.00', '0.20', '--', '--', '--', '21.56', '0.000', '--', '--', '1.00', '6.80', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(269, '佛冈县建滔实业有限公司', '佛冈城南工业区', '董明', '董明', '13828535209', '2人持证', '--', '--', '浮动床', '30 t/h', '蒸汽锅炉', 'SZL10-1.6-A II', '15 t/h(MW)', '1.6 MPa(℃)', '有', '无', '11204418002007010005', '锅粤RM0112', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.13', '0.20', '1.00', '--', '25.48', '1478', '8.60', '7.80', '11.30', '0.21', '--', '0.19', '2112', '456.0', '3.24', '0.22', '4.28', '0.021', '6.90', '1.00', '0.20', '--', '--', '--', '21.56', '0.000', '--', '--', '1.00', '6.80', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(270, '东溢（佛冈）特种钢制造有限公司', '佛冈石角镇吉田村', '黄金塔', '黄金塔', '18926619961', '无证', '阿图祖', '--', '浮动床', '6 t/h', '余热锅炉', 'Φ1400', '6 t/h(MW)', '0.8 MPa(℃)', '无', '无', '11204418002008040001', '锅粤R00453', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.21', '0.20', '1.00', '--', '60.76', '205.8', '0.30', '0.20', '9.20', '--', '--', '0.019', '294.0', '32.00', '6.43', '6.67', '9.90', '0.18', '6.40', '2.00', '0.20', '--', '--', '--', '45.08', '0.16', '--', '--', '3.00', '6.30', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。\r\n2、给水浊度偏高，应注意给水箱的防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355280275'),
(271, '东溢（佛冈）特种钢制造有限公司', '佛冈石角镇吉田村', '杨明亮', '杨明亮', '18926619960', '无证', '阿图祖', '--', '浮动床', '6 t/h', '余热锅炉', 'Φ1400', '6 t/h(MW)', '0.8 MPa(℃)', '无', '无', '11204418002009120004', '锅粤RM1002', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.18', '1.00', '11.00', '--', '168.6', '3158', '4.20', '2.50', '10.20', '0.46', '--', '0.010', '4512', '724.0', '4.36', '1.54', '35.40', '1.18', '6.40', '11.00', '0.90', '--', '--', '--', '171.5', '1.26', '--', '--', '12.00', '6.40', '不合格', '1、给水硬度偏高，软水器加盐再生；<br>\r\n2、锅水碱度偏低，应适当控制排污；<br>\r\n3、给水浊度偏高，应注意给水箱的防尘。\r\n', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355280292'),
(272, '佛冈龙清电力器材公司', '佛冈', '张海清', '张海清', '13824904796', '无人持证', '--', '--', '浮动床', '4', '蒸汽锅炉', 'DZL4-1.25', '--', '1.25', '有', '无', '11204418002008010015', '锅粤R00438', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.43', '0.40', '3.00', '--', '81.60', '1575', '13.60', '12.80', '11.40', '--', '--', '0.30', '2250', '132.0', '11.93', '2.32', '--', '0.000', '6.10', '3.00', '0.30', '--', '--', '--', '83.52', '0.000', '--', '--', '3.00', '6.10', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355816812'),
(273, '兆联（清远）纺织印染有限公司', '佛冈汤塘镇三门村', '林老板', '林老板', '4201689', '1人持证', '—', '—', '流动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002004120049', '锅粤RM0075', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.40', '0.70', '16.00', '--', '134.4', '940.8', '9.30', '8.60', '11.40', '--', '--', '0.34', '1344', '80.00', '11.76', '5.26', '--', '0.11', '6.90', '4.00', '0.30', '--', '--', '--', '53.76', '0.000', '--', '--', '4.00', '6.90', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(274, '佛冈冠华纸塑包装有限公司', '佛冈', '黄本滔', '黄本滔', '4620333', '无人持证', '—', '—', '双柱浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '--', '—', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.32', '1.00', '42.00', '--', '211.2', '4099', '17.70', '15.30', '11.60', '--', '--', '0.12', '5856', '＞1000', '4.10', '2.99', '--', '0.052', '5.70', '29.00', '0.40', '--', '--', '--', '148.8', '0.082', '--', '--', '42.00', '5.40', '不合格', '1、给水硬度略高，软水器应定期再生。\r\n2、有盐水进入锅炉，必须更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(275, '添富（清远）体育用品有限公司', '佛冈汤塘镇联合村', '陈玉光', '陈玉光', '13553907005', '无证', '中兴永雄水处理设备厂', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'SZL6-1.25-A', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006090003', '锅粤RM0106', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.21', '0.20', '1.00', '--', '42.24', '1512', '16.80', '14.80', '11.50', '8.15', '--', '0.34', '2160', '76.00', '19.89', '1.33', '2.72', '0.14', '7.00', '1.00', '0.80', '--', '--', '--', '92.16', '0.082', '--', '--', '1.00', '6.60', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355794395'),
(276, '汇康荧光（清远）科技有限公司', '佛冈烟岭镇', '陈添发', '陈添发', '4562770', '无证', '--', '--', '除盐水', '--', '蒸汽锅炉', 'LSS0.5-1.0-Y', '0.5 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002008010008', '锅粤R00431', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.39', '0.60', '2.00', '--', '53.76', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '2.76', '0.030', '6.70', '1.00', '0.30', '--', '--', '--', '12.48', '0.030', '--', '--', '1.00', '6.70', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355794427'),
(277, '佛冈盈泰纺织品染整有限公司', '烟岭镇社坪村罗岗坪', '郭子良', '郭子良', '13926692729', '1人持证', '众力锅炉辅机有限公司', '--', '流动床', '40 t/h', '蒸汽锅炉', 'SHL25-2.45/400-A II', '25 t/h(MW)', '2.45 MPa(℃)', '有', '有', '11204418002005010018', '锅粤RM0120', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.50', '0.40', '3.00', '--', '59.52', '1210', '9.40', '8.60', '11.20', '9.76', '--', '0.26', '1728', '95.00', '12.74', '2.15', '2.36', '0.000', '6.20', '2.00', '0.40', '--', '--', '--', '50.88', '0.000', '--', '--', '3.00', '6.10', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355794447'),
(278, '广东佛冈新元科技有限公司', '佛冈县龙山镇', '廖梦清', '廖梦清', '13926698827', '无证', '中兴永雄工业水处理设备有限公司', '--', '流动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A II', '6 t/h(MW)', '1.25 MPa(℃)', '无', '无', '11204418002004080001', '锅粤RM0061', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.14', '3.80', '1.00', '--', '384.0', '1575', '35.00', '31.80', '12.10', '9.93', '--', '0.73', '2250', '35.00', '45.00', '2.94', '3.93', '0.76', '6.40', '1.00', '3.90', '--', '--', '--', '393.6', '0.72', '--', '--', '1.00', '6.30', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>\r\n2、锅水碱度偏高，pH值偏高，应加强排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355794464'),
(279, '佛冈县三门再生纸厂', '汤塘镇三门下围', '郭社就', '郭社就', '13902351692', '无证', '英永工业水处理设备有限公司', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A II', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002009090010', '锅粤R00673', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.21', '0.20', '1.00', '--', '36.48', '73.92', '4.80', '4.00', '10.20', '2.01', '--', '1.73', '105.6', '25.00', '2.96', '4.17', '2.43', '0.082', '5.70', '1.00', '0.20', '--', '--', '--', '15.36', '0.18', '--', '--', '1.00', '5.70', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>\r\n2、锅水碱度偏低，应适当控制排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355794484'),
(280, '佑丰（佛冈）印染有限公司', '佛冈县烟岭镇', '严惠强', '严惠强', '4562723', '无证', '雄广水处理设备厂', '--', '流动床', '15 t/h', '蒸汽锅炉', 'SZL15-1.25-A II', '15 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002008110021', '锅粤R00573', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.54', '0.40', '3.00', '--', '65.28', '3024', '3.40', '3.10', '10.30', '2.88', '--', '0.037', '4320', '＞1000', '3.02', '7.53', '13.90', '0.35', '6.00', '70.00', '0.50', '--', '--', '--', '254.4', '1.61', '--', '--', '＞1000', '5.40', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。<br>\r\n2、锅水碱度偏低，应适当控制排污。<br>\r\n3、给水浊度偏高，应注意给水箱的防尘。\r\n4、有盐水进入锅炉，必须更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355794698'),
(281, '连州市顺达大酒店', '连州市城西鹅公潭', '张洁', '张洁', '13501455550', '1人持证', '--', '--', '浮动床', '1.0 t/h', '蒸汽锅炉', 'DZG1.0-0.8-M(X)', '1.0 t/h(MW)', '1.0 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.38', '1.00', '4.00', '--', '77.08', '66.01', '0.60', '0.000', '7.80', '--', '--', '0', '94.30', '8.00', '8.25', '＞10', '2.96', '1.38', '7.70', '5.00', '1.00', '--', '--', '--', '90.20', '5.30', '--', '--', '＞1000', '7.40', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355800159'),
(282, '广东明华机械有限公司连南分公司', '连南寨岗镇', '陈雁宁', '陈雁宁', '13924419375', '1人持证', '阿图祖', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZL2-1.25-A II', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040029', '锅粤RW0004', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.21', '2.00', '1.00', '--', '127.6', '1571', '18.80', '18.00', '11.70', '10.02', '--', '0.44', '2244', '54.00', '29.09', '1.89', '2.66', '0.42', '7.30', '1.00', '1.90', '--', '--', '--', '126.7', '0.010', '--', '--', '1.00', '7.40', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355800193');
INSERT INTO `oa_report_content` (`report_id`, `company_name`, `azdz`, `aqglrr`, `lxr`, `lxdh`, `zyrrczqh`, `zzdw`, `zczh`, `sclfc`, `cl`, `pz`, `xh`, `edzfl`, `edyl`, `cylqq`, `grq`, `sbdm`, `sydjzh`, `jyyj`, `ys_yd`, `ys_zj`, `ys_llz`, `ys_sd`, `ys_dd`, `ws_rjgxw`, `ws_zjd`, `ws_pjd`, `ws_phz`, `ws_po`, `ws_so`, `ws_xdjd`, `ws_ddl`, `ws_llz`, `ws_glbgdb`, `ws_pwl`, `gs_sd`, `gs_yd`, `gs_ph`, `gs_llz`, `gs_zj`, `gs_rjy`, `gs_qt`, `gs_y`, `gs_ddl`, `rhs_yd`, `rhs_qt`, `rhs_y`, `rhs_llz`, `rhs_phz`, `jyjl`, `jyyjhjy`, `bak`, `jyjghzzh`, `jyjghzrq`) VALUES
(283, '阳山县永丰制衣厂', '阳山县城南制衣城', '张赞新', '张赞新', '13729673198', '无证', '顺德宏格水处理设备有限公司', '--', '浮动床', '1.0 t/h', '蒸汽锅炉', 'DZH1.0-1.0-A II', '1.0 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002006010004', '锅粤RS0002', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.20', '2.60', '3.00', '--', '193.6', '714.0', '11.50', '10.00', '11.50', '5.15', '--', '0.48', '1020', '14.00', '51.0', '＞10', '2.66', '0.10', '7.60', '2.00', '2.30', '--', '--', '--', '154.0', '0.37', '--', '--', '3.00', '7.40', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(284, '连州市强龙家俱木材加工有限公司', '广东省清远市连州市城西家具工业园', '赵志强', '赵志强', '13602927701', '1人持证', '--', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZH2.0-1.25-A III', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011080011', '锅粤RU1020', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.44', '1.00', '6.00', '--', '92.40', '1232', '10.20', '8.80', '11.40', '20.69', '--', '0.24', '1760', '378.0', '3.26', '＜0', '3.86', '1.18', '7.00', '＞1000', '1.00', '--', '--', '--', '2728', '1.14', '--', '--', '＞1000', '7.00', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、有盐水进入给水池，应延长正洗时间。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(285, '连南奇乡生物科技有限公司', '连南县三江镇', '周志明', '周志明', '13922613190', '无证', '鸿昌水处理设备厂', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZG2-1.25-A II', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006050014', '锅粤RW0039', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.23', '0.20', '1.00', '--', '22.00', '985.6', '17.90', '15.80', '11.80', '1.98', '--', '0.56', '1408', '50.00', '19.71', '＜0', '4.02', '0.21', '7.00', '197.0', '0.20', '--', '--', '--', '580.8', '0.87', '--', '--', '＞1000', '6.60', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(286, '阳山县同兴铜材有限公司', '阳山县七拱镇大石坪107国道旁', '黄兴国', '黄兴国', '13828589891', '1人持证', '中兴（永雄）工业水处理设备有限公司', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A II3', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002008010011', '锅粤R00434', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.65', '2.30', '1.00', '--', '136.1', '1205', '19.10', '16.40', '11.70', '4.85', '--', '0.45', '1722', '212.0', '5.68', '6.53', '2.36', '0.70', '8.30', '13.00', '2.70', '--', '--', '--', '176.3', '0.70', '--', '--', '74.00', '8.30', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(287, '广东华农温氏畜牧股份有限公司连州分公司', '广东省清远市连州市城南清远民族工业园内', '姚厂长', '姚厂长', '13416591737', '1人持证', '/', '/', '流动床', '4.0  t/h', '承压蒸汽锅炉', 'DZL4-1.25-A II', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011110003', '锅粤RU3204', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '4.70', '3.50', '3.00', '--', '334.4', '1294', '21.40', '17.10', '11.80', '1.53', '--', '0.40', '1848', '43.00', '30.09', '＞10', '2.36', '0.000', '7.50', '4.00', '2.40', '--', '--', '--', '360.8', '0.030', '--', '--', '4.00', '7.40', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(288, '阳山顺龙木业有限公司', '阳山县水口镇范村', '李健明', '李健明', '7827128', '1人持证', '--', '--', '浮动床', '15 t/h', '蒸汽锅炉', 'QC44/820-15-1.6', '15 t/h(MW)', '1.6 MPa(℃)', '有', '无', '11204418002005110001', '锅粤RS0092', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.18', '2.90', '1.00', '--', '167.2', '1285', '22.90', '20.80', '11.80', '20.69', '--', '0.58', '1836', '24.00', '53.54', '4.35', '2.80', '0.10', '7.60', '1.00', '3.00', '--', '--', '--', '176.0', '0.10', '--', '--', '2.00', '7.40', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(289, '阳山县灰砂砖厂', '阳山县城文塔路', '黄德辉', '黄德辉', '13922556048', '无证', '顺德宏格水处理设备实业有限公司', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZL2-1.25-A II', '2 t/h(MW)', '1.25 MPa(℃)', '无', '无', '11204418002002040018', '锅粤RS0026', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.34', '2.90', '1.00', '--', '171.6', '499.8', '5.90', '4.90', '11.20', '2.11', '--', '0.31', '714.0', '5.00', '99.96', '＞10', '2.38', '1.86', '7.20', '1.00', '3.00', '--', '--', '--', '184.8', '2.23', '--', '--', '1.00', '7.10', '不合格', '1、给水硬度偏高，软水器加盐再生；<br>\r\n2、锅水碱度偏低，应适当控制排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(291, '连州市协诚毛巾制造有限公司', '连州城南红珠路19号', '彭培彦', '彭培彦', '6611098', '无证', '中兴工业公司水处理设备厂', '/', '浮动床', '1.0 t/h', '蒸汽锅炉', 'DZL1.0-0.7-A II', '1.0 t/h(MW)', '0.7 MPa(℃)', '有', '无', '11204418002005010002', '锅粤R00104', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.46', '1.00', '3.00', '--', '90.64', '999.6', '12.00', '11.00', '11.50', '3.17', '--', '0.40', '1428', '64.00', '15.62', '4.92', '2.68', '0.12', '7.70', '3.00', '1.20', '--', '--', '--', '93.28', '0.000', '--', '--', '3.00', '7.60', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(292, '阳山联益洗涤制衣厂', '阳山县氮肥厂内', '张远赛', '张远赛', '13318616972', '无证', '东莞顺兴水处理设备有限公司', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZL2-1.25-A II', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002008010012', '锅粤R00435', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.05', '2.80', '3.00', '--', '167.2', '671.2', '9.60', '8.70', '11.50', '2.48', '--', '0.46', '958.8', '6.00', '111.9', '＞10', '2.71', '1.75', '7.00', '1.00', '1.50', '--', '--', '--', '101.2', '3.12', '--', '--', '3.00', '7.00', '不合格', '1、给水硬度偏高，软水器加盐再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(293, '阳山县洪辉新型环保建材有限责任公司', '阳山县小江镇石螺工业区', '温越辉', '温越辉', '13927651199', '1人持证', '--', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A II', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '4.29', '3.70', '1.00', '--', '197.6', '1607', '46.40', '38.60', '12.10', '13.41', '--', '0.77', '2296', '72.00', '22.32', '1.41', '9.82', '0.14', '8.30', '1.00', '4.00', '--', '--', '--', '205.0', '0.29', '--', '--', '1.00', '7.00', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度偏高，pH值偏高，应加强排污；<br>\r\n3、给水浊度偏高，应注意给水箱的防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(294, '连州市联发造纸有限公司', '连州市河南路1号', '何群英', '何群英', '13828544888', '1人持证', '--', '--', '流动床', '10 t/h', '蒸汽锅炉', 'SZL10-1.25-A II', '10.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011100003', '锅粤RU3201', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.40', '1.00', '5.00', '--', '82.00', '861.0', '13.10', '12.00', '11.50', '2.80', '--', '0.51', '1230', '62.00', '13.89', '8.77', '3.96', '0.000', '8.30', '5.00', '0.50', '--', '--', '--', '52.48', '0.000', '--', '--', '5.00', '8.40', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(295, '阳山县伟达化工有限公司', '阳山附城麻地冲管理区', '曾厂', '曾厂', '13902356168', '无证', '/', '/', '流动床', '10 t/h', '蒸汽锅炉', 'KZL4-1.3', '4.0 t/h(MW)', '1.27 MPa(℃)', '无', '无', '11204418002002040017', '锅粤RS0025', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.36', '0.31', '1.00', '--', '176.0', '739.2', '1.10', '0.80', '9.80', '--', '--', '0.027', '1056', '53.00', '13.95', '＞10', '--', '2.81', '7.00', '5.00', '1.80', '--', '--', '--', '170.7', '1.78', '--', '--', '21.00', '7.00', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(296, '连州市海斌食品有限公司', '清远市连州市城南清远民族工业区', '段传华', '段传华', '13925026545', '1人持证', '--', '--', '浮动床', '--', '蒸汽锅炉', 'LHG1.0-0.7-A II', '1.0 t/h(MW)', '0.7 MPa(℃)', '有', '无', '11204418002011050002', '锅粤RU1014', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '4.73', '3.30', '3.00', '--', '343.2', '2895', '0.80', '0.000', '7.60', '--', '--', '0', '4136', '＞1000', '2.90', '0.50', '2.45', '4.56', '6.90', '5.00', '3.60', '--', '--', '--', '352.0', '4.44', '--', '--', '5.00', '6.90', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>\r\n2、有盐水进入锅炉，建议更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(297, '连南利发毛织厂有限公司', '连南三江镇东堤路', '王智双', '王智双', '13724567995', '1人持证', '--', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZG2.0-1.25-A III', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011120003', '锅粤RW3203', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.21', '0.20', '1.00', '--', '22.88', '157.1', '2.20', '1.80', '10.00', '1.76', '--', '0.36', '224.4', '6.00', '26.18', '＞10', '3.38', '0.030', '7.70', '1.00', '0.20', '--', '--', '--', '24.64', '0.010', '--', '--', '1.00', '7.50', '不合格', '1、锅水碱度偏低，应适当加药以调控锅水碱度。 br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(298, '连南县三江镇森鑫木制品厂', '三江镇东和村东塘', '陈志平', '陈志平', '13729686258', '无证', '容桂雄广水处理设备厂', '/', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZG4-1.25-M', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002009030009', '锅粤R00614', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.72', '1.60', '1.00', '--', '174.7', '338.7', '0.50', '0.30', '9.30', '--', '--', '0.012', '483.8', '8.00', '42.34', '＞10', '2.66', '4.52', '7.10', '1.00', '2.20', '--', '--', '--', '147.6', '3.49', '--', '--', '1.00', '7.20', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(299, '阳山县阳星松香发展有限公司', '阳山县七拱镇107国道边原选矿厂', '程颂香', '程颂香', '13867029388', '1人持证', '--', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZG1-1.25-M', '1.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002012080003', '锅粤RS3204', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.36', '2.60', '6.00', '--', '200.6', '677.6', '2.00', '0.000', '7.90', '--', '--', '0', '968.0', '184.0', '3.68', '0.62', '3.02', '3.53', '6.70', '6.00', '2.90', '--', '--', '--', '206.8', '3.53', '--', '--', '9.00', '6.70', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(300, '连州市骏成木业有限公司', '连州市城南民族工业园', '欧华清', '欧华清', '13927618011', '1人持证', '--', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZG2-1.25-A(M)', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002012060009', '锅粤RU3208', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '4.85', '3.40', '6.00', '--', '311.6', '2583', '15.00', '13.50', '11.60', '3.17', '--', '0.18', '3690', '86.00', '30.03', '6.17', '2.26', '4.88', '7.70', '5.00', '3.40', '--', '--', '--', '319.8', '4.85', '--', '--', '5.00', '7.80', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(301, '连南县鹿鸣茧丝绸有限责任公司', '连南三江镇沿江西路', '林小明', '林小明', '18023719028', '1人持证', '杏坛水处理设备厂', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-W II', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040033', '锅粤RW0008', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.21', '0.20', '1.00', '--', '25.52', '616.0', '7.30', '6.50', '11.00', '2.48', '--', '0.37', '880.0', '52.00', '11.85', '1.96', '3.88', '0.021', '7.70', '1.00', '0.20', '--', '--', '--', '18.48', '0.000', '--', '--', '1.00', '7.60', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(302, '英德广农康盛化工有限公司', '英德市沙口红丰管理区', '吴光辉', '吴光辉', '2551402', '1人持证', '阿图祖', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A II', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040114', '锅粤RP0071', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '5.72', '2.40', '8.00', '--', '385.4', '281.3', '2.00', '0.000', '7.90', '--', '--', '0', '401.8', '8.00', '35.16', '＜0', '2.26', '1.40', '6.70', '10.00', '2.30', '--', '--', '--', '418.2', '0.27', '--', '--', '9.00', '6.90', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355799926'),
(303, '清新县宏力达塑料有限公司', '清新县太平镇盈富工业园M-24-1', '陈何根', '陈何根', '13719382366', '1人持证', '--', '--', '锅外处理', '2 t/h', '蒸汽锅炉', 'SZL2-1.25-T', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002012070004', '锅粤RK3231', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.47', '0.40', '4.00', '--', '69.68', '975.8', '18.20', '15.60', '11.70', '43.68', '--', '0.53', '1394', '53.00', '18.41', '8.16', '3.15', '0.000', '9.60', '4.00', '1.70', '--', '--', '--', '147.6', '0.000', '--', '--', '4.00', '9.70', '不合格', '锅水磷酸根偏高，应减少加药量。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355816868'),
(304, '清远市新绿环境科技有限公司', '太平镇龙湾工业区', '李长华', '李长华', '13535956688', '无证', '--', '--', '固定床', '6 t/h', '蒸汽锅炉', 'SZL6-1.25-A II', '6.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011010008', '锅粤RK1042', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.47', '0.40', '2.00', '--', '31.98', '378.8', '0.70', '0.50', '8.90', '--', '--', '0.032', '541.2', '63.00', '6.01', '1.61', '7.65', '0.41', '6.60', '1.00', '0.40', '--', '--', '--', '32.80', '0.44', '--', '--', '3.00', '6.70', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>\r\n2、给水浊度偏高，应注意给水箱的防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(305, '清远市江丰饲料有限公司', '清新县太平镇回澜工业区', '张崇江', '张崇江', '13922562808、5382141', '1人持证', '雄广水处理设备厂', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A II3', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002007060001', '锅粤RK0195', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.82', '1.30', '7.00', '--', '99.22', '2124', '55.20', '50.00', '12.20', '3.42', '--', '0.84', '3034', '286.0', '7.43', '2.51', '3.12', '0.030', '7.60', '7.00', '1.30', '--', '--', '--', '103.3', '0.021', '--', '--', '7.00', '7.60', '不合格', '1、锅水碱度偏高，pH值偏高，应适当加降碱药以调控锅水碱度，pH 值。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(306, '清远宪友兴业有限公司', '清新县太和洞口', '谭溪', '谭溪', '15899682659', '1人持证', '顺德雄广水处理设备厂', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZS4-1.25-A II(M)', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002010090001', '锅粤RK1027', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.65', '1.00', '3.00', '--', '98.40', '1722', '15.20', '14.50', '11.70', '1.97', '--', '0.32', '2460', '290.0', '5.94', '1.40', '2.58', '0.12', '7.60', '4.00', '0.90', '--', '--', '--', '78.72', '0.000', '--', '--', '6.00', '7.60', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(307, '松德丰（清远）食品有限公司', '太和镇太和洞旁', '李国威', '李国威', '13828566898', '1人持证', '湘潭锅炉辅机厂', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'WNS3.0-1.25-Y', '3 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040133', '锅粤RK0017', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.73', '1.00', '3.00', '--', '98.40', '746.2', '6.60', '6.20', '11.40', '1.81', '--', '0.31', '1066', '98.00', '7.61', '4.26', '7.78', '1.03', '7.20', '4.00', '1.00', '--', '--', '--', '95.12', '1.76', '--', '--', '10.00', '7.20', '不合格', '1、给水硬度偏高，软水器加盐再生；<br>\r\n2、给水浊度偏高，应注意给水箱的防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(308, '清远冠龙纺织染整厂', '清新县清和大道', '杨超强', '杨超强', '3996881/13927660618', '1人持证', '顺德杏坛纯水设备厂', '--', '流动床', '20 t/h', '蒸汽锅炉', 'SHL20-1.25', '20 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002110419', '锅粤R10190', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.04', '1.60', '3.00', '--', '115.6', '631.4', '9.90', '9.00', '11.50', '1.62', '--', '0.51', '902.0', '30.00', '21.05', '＞10', '2.39', '0.000', '8.00', '3.00', '1.60', '--', '--', '--', '118.9', '0.000', '--', '--', '4.00', '8.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(309, '清远瀚江玻璃棉科技有限公司', '清新县太平镇盈富工业园', '张业旺', '张业旺', '3728396', '1人持证', '--', '--', '锅外处理', '2 t/h', '蒸汽锅炉', '0.5 t/h煤气发生炉', '0.5 t/h(MW)', '0.3 MPa(℃)', '有', '无', '11204418002008070004', '锅粤RO0499', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.58', '0.50', '4.00', '--', '41.00', '1033', '1.50', '1.20', '9.80', '1.02', '--', '0.035', '1476', '43.40', '23.80', '＞10', '2.45', '1.03', '6.20', '5.00', '0.30', '--', '--', '--', '43.46', '0.052', '--', '--', '5.00', '6.40', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度偏低，pH值偏低，应适当加药以调控锅水碱度，pH 值。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(310, '清远市清城区振威皮革厂清新分厂', '黄坑太和工业区', '周军华', '周军华', '3322098', '无人持证', '英永工业水处理设备厂', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZG4-1.25-A', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040149', '锅粤RK0033', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.86', '1.30', '5.00', '--', '99.22', '574.0', '4.60', '3.80', '11.20', '--', '--', '0.21', '820.0', '93.00', '6.17', '5.68', '--', '0.10', '7.90', '5.00', '1.30', '--', '--', '--', '102.5', '0.030', '--', '--', '6.00', '8.00', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度偏低，应适当控制排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355796112'),
(311, '清远市永嘉洗涤有限公司', '开发区', '刘浩强', '刘浩强', '13926227043', '1人持证', '顺德英永工业水处理设备有限公司', '—', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006050007', '锅粤RA0159', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.92', '1.20', '6.00', '--', '110.7', '861.0', '11.00', '10.20', '11.40', '--', '--', '0.44', '1230', '76.00', '11.33', '＞10', '--', '0.010', '7.90', '9.00', '1.00', '--', '--', '--', '110.7', '0.000', '--', '--', '7.00', '7.50', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355794849'),
(312, '日丰（清远）电子有限公司', '银盏泰基工业城', '谭建国', '谭建国', '13535996365', '1人持证', '—', '—', '流动床', '2 t/h', '蒸汽锅炉', 'WNS2-1.25-Y', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006100004', '锅粤R00240', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.35', '0.30', '2.00', '--', '35.26', '2526', '18.40', '16.30', '10.80', '--', '--', '0.22', '3608', '856.0', '2.95', '1.90', '--', '0.010', '8.00', '16.00', '0.40', '--', '--', '--', '58.22', '0.24', '--', '--', '105.0', '7.80', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355794826'),
(313, '清远市振威皮革有限公司', '城区环城路拉尾岗157号', '周军华', '周军华', '3322098', '无人持证', '伦敦水处理设备厂', '--', '双柱浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A', '--', '1.25 MPa(℃)', '有', '无', '11204418002006080002', '锅粤RA0215', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.92', '1.20', '6.00', '--', '114.0', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '1.98', '--', '190.0', '1.30', '--', '--', '--', '615.0', '1.92', '--', '--', '8.00', '7.50', '不合格', '1、给水硬度偏高，软水器加盐再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355794807'),
(314, '清远先锋制衣有限公司', '附城工业区', '黄厂长', '黄厂长', '3926856', '无人持证', '英永工业水处理设备有限公司', '--', '双柱浮动床', '1.0 t/h', '蒸汽锅炉', 'WNS1-1.0-Y', '--', '1.0 MPa(℃)', '有', '无', '11204418002002040168', '锅粤R10030', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.02', '1.40', '6.00', '--', '114.0', '1320', '0.70', '0.40', '9.50', '--', '--', '0.0030', '1886', '380.0', '3.47', '3.53', '--', '0.93', '7.60', '12.00', '1.20', '--', '--', '--', '139.4', '0.93', '--', '--', '11.00', '7.70', '不合格', '1、给水硬度超标，水处理设备未能正常使用，必须认真操作。\r\n2、锅水碱度和PH值严重偏低，不利于锅炉防腐防垢，必须重视锅炉水处理工作。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355794767'),
(315, '清远市汉铿物业发展有限公司', '小市北江一路七星岗', '王部长', '王部长', '3889871', '无人持证', '容桂中兴水处理设备厂', '--', '蒸汽锅炉', '1.0 t/h', '蒸汽锅炉', 'WNS1-1.0-Y', '--', '1.0 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.06', '1.30', '6.00', '--', '111.5', '631.4', '6.00', '5.60', '11.40', '--', '--', '0.33', '902.0', '66.00', '9.57', '10', '--', '0.030', '7.90', '6.00', '0.80', '--', '--', '--', '86.10', '0.31', '--', '--', '7.00', '7.70', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355796135'),
(316, '骏达（清远）制衣有限公司', '附城', '刘国星', '刘国星', '3363121', '无人持证', '容桂中兴工业公司水处理设备厂', '--', '双柱浮动床', '1.0 t/h', '蒸汽锅炉', 'LHC1-0.69-A III', '--', '0.69 MPa(℃)', '有', '无', '11204418002008060009', '锅粤R00489', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.65', '1.10', '＞1000', '--', '1968', '1779', '31.60', '28.00', '12.10', '--', '--', '0.55', '2542', '260.0', '6.84', '3.17', '--', '0.030', '7.90', '8.00', '1.20', '--', '--', '--', '135.2', '0.000', '--', '--', '13.00', '7.90', '不合格', '1、锅水碱度偏高，pH值偏高，应加强排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355796146'),
(317, '亿盈（清远）发泡材料有限公司', '银盏银英公路新庄段', '黎伟', '黎伟', '3695112', '1人持证', '顺德中兴永雄工业水处理设备有限公司', '—', '双柱浮动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002004090005', '锅粤RA0009', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.30', '0.30', '2.00', '--', '34.44', '746.2', '5.60', '4.70', '10.80', '--', '--', '0.24', '1066', '114.0', '6.54', '1.78', '--', '0.000', '8.30', '2.00', '0.40', '--', '--', '--', '25.42', '0.10', '--', '--', '3.00', '8.30', '基本合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355796162'),
(318, '清远市永嘉洗涤有限公司', '开发区', '刘浩强', '刘浩强', '13926227043', '1人持证', '顺德英永工业水处理设备有限公司', '—', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006050007', '锅粤RA0159', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.73', '0.80', '11.00', '--', '113.4', '1058', '14.10', '12.90', '11.60', '--', '--', '0.44', '1512', '103.0', '10.27', '＞10', '--', '0.000', '7.00', '11.00', '1.40', '--', '--', '--', '116.8', '0.000', '--', '--', '11.00', '7.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355796279'),
(319, '清远市清城区振威皮革厂清新分厂', '黄坑太和工业区', '周军华', '周军华', '3322098', '无人持证', '英永工业水处理设备厂', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZG4-1.25-A', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040149', '锅粤RK0033', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.82', '1.10', '9.00', '--', '113.4', '482.2', '1.00', '0.70', '9.20', '--', '--', '0.033', '688.8', '132.0', '3.65', '6.45', '--', '0.18', '6.90', '8.00', '1.20', '--', '--', '--', '117.6', '0.093', '--', '--', '9.00', '6.90', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度和PH值严重偏低，不利于锅炉防腐防垢，必须重视锅炉水处理工作，确保锅炉安全运行。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355796295'),
(320, '清远市汉铿物业发展有限公司', '小市北江一路七星岗', '王部长', '王部长', '3889871', '无人持证', '容桂中兴水处理设备厂', '--', '蒸汽锅炉', '1.0 t/h', '蒸汽锅炉', 'WNS1-1.0-Y', '--', '1.0 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.90', '1.20', '10.00', '--', '114.2', '882.0', '9.50', '9.00', '11.50', '--', '--', '0.38', '1260', '148.0', '5.96', '3.50', '--', '0.082', '7.30', '5.00', '0.80', '--', '--', '--', '63.84', '0.36', '--', '--', '7.00', '7.20', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355796321'),
(321, '清远先锋制衣有限公司', '附城工业区', '黄厂长', '黄厂长', '3926856', '无人持证', '英永工业水处理设备有限公司', '--', '双柱浮动床', '1.0 t/h', '蒸汽锅炉', 'WNS1-1.0-Y', '--', '1.0 MPa(℃)', '有', '无', '11204418002002040168', '锅粤R10030', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.90', '1.40', '8.00', '--', '108.4', '1117', '12.00', '10.50', '11.50', '--', '--', '0.32', '1596', '133.0', '8.40', '7.26', '--', '0.000', '7.40', '9.00', '1.00', '--', '--', '--', '113.4', '0.082', '--', '--', '6.00', '7.40', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355796336'),
(322, '亿盈（清远）发泡材料有限公司', '银盏银英公路新庄段', '黎伟', '黎伟', '3695112', '1人持证', '顺德中兴永雄工业水处理设备有限公司', '—', '双柱浮动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002004090005', '锅粤RA0009', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.35', '0.30', '2.00', '--', '34.44', '882.0', '6.30', '5.80', '10.70', '--', '--', '0.24', '1260', '152.0', '5.80', '1.33', '--', '0.000', '7.30', '2.00', '0.30', '--', '--', '--', '26.88', '0.50', '--', '--', '75.00', '7.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355796348'),
(323, '清远市振威皮革有限公司', '城区环城路拉尾岗157号', '周军华', '周军华', '3322098', '无人持证', '伦敦水处理设备厂', '--', '双柱浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A', '--', '1.25 MPa(℃)', '有', '无', '11204418002006080002', '锅粤RA0215', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.78', '1.20', '7.00', '--', '107.5', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '1.82', '6.60', '26.00', '1.30', '--', '--', '--', '147.0', '2.08', '--', '--', '26.00', '6.60', '不合格', '1、给水硬度偏高，软水器加盐再生；<br>\r\n2、锅水无法取样，必须维修取样器。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355796361'),
(324, '日丰（清远）电子有限公司', '银盏泰基工业城', '谭建国', '谭建国', '13535996365', '1人持证', '—', '—', '流动床', '2 t/h', '蒸汽锅炉', 'WNS2-1.25-Y', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006100004', '锅粤R00240', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.37', '0.30', '2.00', '--', '35.28', '2764', '23.20', '20.10', '10.90', '--', '--', '0.25', '3948', '＞1000', '2.76', '0.40', '--', '0.000', '7.60', '4.00', '0.30', '--', '--', '--', '37.80', '0.000', '--', '--', '5.00', '7.40', '不合格', '有盐水进入锅炉，建议更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1355796377'),
(326, '建滔（连州）铜铂有限公司', '连州市清连一级公路旁', '赵浙永', '赵浙永', '13360721858', '二人持证', '顺德振洪水处理设备有限公司', '--', '流动床', '20 t/h', '蒸汽锅炉', 'SHFX15-1.6-P', '15.0 t/h(MW)', '203℃', '有', '无', '11204418002004090015', '锅粤RU0093', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.30', '1.00', '1.00', '--', '82.72', '642.6', '7.90', '7.30', '11.4', '1.97', '--', '0.42', '918.0', '20.00', '32.13', '5.26', '5.36', '0.03', '7.60', '1.00', '0.60', '--', '--', '--', '51.04', '0.00', '--', '--', '1.00', '7.4', '合格', '给水浊度偏高，应注意给水箱的防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(327, '清远市威利邦木业有限公司', '城区源潭陶瓷城', '刘国华', '刘国华', '13926670069', '1人持证', '伟业水处理制造有限公司', '--', '流动床', '40 t/h', '余热锅炉', '26T/H木屑炉（KC8272）', '26 t/h(MW)', '1.8 MPa(℃)', '有', '无', '11204418002004070682', '锅粤R10263', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.47', '0.40', '3.00', '--', '43.20', '756.0', '8.30', '7.60', '11.30', '4.15', '--', '0.36', '1080', '36.00', '21.00', '5.88', '4.65', '0.010', '7.80', '2.00', '0.40', '--', '--', '--', '36.90', '0.000', '--', '--', '2.00', '7.80', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1356076967'),
(328, '清远市永裕实业有限公司', '石角镇基下3村', '姚钊', '姚钊', '3730292', '1人持证', '顺德伦教水处理设备厂', '/', '浮动床', '0.5 t/h', '蒸汽锅炉', 'HSG0.5-0.8-A II', '0.5 t/h(MW)', '0.8 MPa(℃)', '有', '无', '11204418002003080511', '锅粤R10222', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '6.07', '4.20', '15.00', '--', '540.0', '756.0', '2.50', '1.50', '10.00', '1.15', '--', '0.026', '1080', '68.00', '11.12', '＞10', '3.63', '0.99', '6.40', '21.00', '4.00', '--', '--', '--', '630.0', '0.030', '--', '--', '20.00', '6.70', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度偏低，应适当控制排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1356077005'),
(329, '步威（清远）皮革有限公司', '清城区石角镇民安管理区石眼村', '黄经理', '黄经理', '3721092', '无证', '—', '—', '锅外化学处理', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A II', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040161', '锅粤R10023', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.67', '1.00', '9.00', '--', '125.1', '1071', '0.90', '0.60', '9.20', '--', '--', '0.011', '1530', '280.0', '3.82', '3.32', '2.28', '1.67', '6.60', '9.00', '1.00', '--', '--', '--', '130.5', '1.57', '--', '--', '9.00', '6.90', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1356308665'),
(330, '清远纳福娜陶瓷有限公司', '源潭陶瓷工业园', '汪良乡', '汪良乡', '13727114258', '1人持证', '英永工业水处理设备制造有限公司', '--', '流动床', '15 t/h', '蒸汽锅炉', 'DZL2-1.25-A II', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006110011', '锅粤RA1038', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.72', '0.80', '8.00', '--', '86.40', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '13.90', '0.43', '6.90', '5.00', '0.50', '--', '--', '--', '50.40', '0.45', '--', '--', '26.00', '6.90', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水无法取样，必须维修取样器。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1356308593'),
(331, '清远市欧雅陶瓷有限公司', '源潭陶瓷工业园', '何树清', '何树清', '13927663383', '1人持证', '东莞新兴水处理设备有限公司', '--', '流动床', '15 t/h', '蒸汽锅炉', 'DZL6-1.25-A II', '6.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011110004', '锅粤RA3210', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.31', '0.30', '1.00', '--', '36.00', '1449', '15.60', '14.20', '11.60', '6.15', '--', '0.35', '2070', '169.0', '8.57', '4.97', '2.58', '0.000', '9.40', '8.00', '1.20', '--', '--', '--', '121.5', '0.000', '--', '--', '2.00', '7.60', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1356308611'),
(332, '广东清远蒙娜丽莎建陶有限公司', '清城区源潭镇陶瓷工业园', '孙站长', '孙站长', '13824924460', '1人持证', '/', '--', '流动床', '30 t/h   ', '煤气发生炉', 'Φ1200×0.8×2600', '--', '0.3 MPa(℃)', '有', '无', '(E10-074)', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.25', '0.20', '2.00', '--', '43.20', '104.0', '1.20', '0.90', '10.10', '1.05', '--', '0.23', '148.5', '9.00', '11.56', '＞10', '6.28', '0.010', '8.30', '2.00', '0.30', '--', '--', '--', '43.20', '0.010', '--', '--', '3.00', '8.20', '不合格', '1、锅水碱度偏低，应适当加药以调控锅水碱度。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1356308626'),
(333, '广东清远蒙娜丽莎建陶有限公司', '清城区源潭镇', '孙站长', '孙站长', '13824924460', '1人持证', '/', '--', '流动床', '30 t/h   ', '煤气发生炉', 'Φ1200×0.8×2600', '--', '0.3 MPa(℃)', '有', '无', '(C10-073)', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.25', '0.20', '2.00', '--', '43.20', '270.9', '2.10', '1.70', '10.50', '1.10', '--', '0.19', '387.0', '21.00', '12.90', '＞10', '6.28', '0.010', '8.30', '2.00', '0.30', '--', '--', '--', '43.20', '0.010', '--', '--', '3.00', '8.20', '不合格', '1、锅水碱度偏低，应适当加药以调控锅水碱度。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1356308641'),
(334, '清远市清城区石角镇佑丰印染织造厂', '清远市清城区石角镇石岐村委员会龙东、龙西村乐排', '毕柱伟', '毕柱伟', '13902397205', '无证', '中兴永雄工业水处理有限公司', '/', '浮动床', '6 t/h', '蒸汽锅炉', 'SZL6-1.25-A II', '6.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002012070007', '锅粤RA3247', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.90', '1.40', '7.00', '--', '135.0', '1827', '20.00', '18.80', '11.80', '10.56', '--', '0.38', '2610', '238.0', '7.68', '3.93', '2.48', '1.22', '6.80', '9.00', '1.80', '--', '--', '--', '144.0', '1.93', '--', '--', '7.00', '6.80', '不合格', '1、给水硬度偏高，软水器加盐再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1356308652'),
(335, '清远市粤北之珠海鲜坊有限公司', '清远市新城B26区', '张建方', '张建方', '13553964488', '1人持证', '/', '--', '浮动床', '1.0 t/h', '蒸汽锅炉', 'LSS0.75-0.8-YQ', '0.8 t/h(MW)', '0.8 MPa(℃)', '有', '无', '11204418002012010006', '锅粤RA3219', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.41', '1.20', '7.00', '--', '155.0', '770.0', '5.60', '4.80', '11.30', '1.79', '--', '0.21', '1100', '36.00', '21.39', '＞10', '2.66', '0.030', '7.00', '8.00', '1.20', '--', '--', '--', '155.0', '0.000', '--', '--', '7.00', '7.00', '基本合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(336, '清远市亨健医用橡胶有限公司', '清城区环城二路西门岗六号', '马启培', '马启培', '3800906', '1人持证', '雄广水处理设备厂', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZW2-1.0-A II', '2 t/h', '1.0 MPa(℃)', '有', '无', '11204418002002040152', '锅粤R10014', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.49', '1.20', '7.00', '--', '140.0', '910.0', '7.20', '6.70', '11.40', '1.96', '--', '0.27', '1300', '68.00', '13.38', '＞10', '2.35', '0.030', '7.00', '8.00', '1.40', '--', '0.05', '--', '146.0', '0.11', '--', '--', '7.00', '7.00', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(337, '连南奇乡生物科技有限公司', '连南县三江镇', '周志明', '周志明', '13922613190', '无证', '鸿昌水处理设备厂', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZG2-1.25-A II', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006050014', '锅粤RW0039', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '--', '--', '--', '--', '--', '--', '--', '--', '--', '5.67', '--', '--', '--', '--', '--', '--', '3.65', '--', '--', '--', '--', '--', '0.02', '--', '--', '--', '--', '--', '--', '--', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(338, '清远市协荣塑胶制品有限公司', '清新县太和工业区(广硕鞋业有限公司内)', '黎丽梅', '黎丽梅', '6865158', '1人持证', '新兴水处理设备有限公司', '--', '锅外处理（浮动床）', '6t/h ', '蒸汽锅炉', 'WNS6-1.0-Y(Q)', '6t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002004020629', '锅粤RK0199', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(339, '清远市协荣塑胶制品有限公司', '清新县太和工业区(广硕鞋业有限公司内)', '黎丽梅', '黎丽梅', '6865158', '1人持证', '新兴水处理设备有限公司', '--', '锅外处理（浮动床）', '6t/h ', '蒸汽锅炉', 'WNS6-1.0-Y(Q)', '6t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002004020628', '锅粤RK0200', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(340, '清新县荣诚物业有限公司', '清新太和镇环城路清新花园酒店', '周经理', '周经理', '13727176816', '无证', '顺德（永雄）英永工业水处理设备有限公司', '--', '锅外处理（浮动床）', '4 t/h', '蒸汽锅炉', ' WNS2-1.25-YQ', '2t/h(MW)', '1.25 MPa(℃)', '有', '无', '11304418002009020002', '锅粤R00601', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(341, '清远市永嘉洗涤有限公司', '开发区', '刘浩强', '刘浩强', '13926227043', '1人持证', '顺德英永工业水处理设备有限公司', '—', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006050007', '锅粤RA0159', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.64', '1.20', '6.00', '_', '140.0', '1120', '7.50', '6.80', '_', '_', '_', '0.22', '1600', '74.00', '15.14', '8.82', '_', '0.030', '8.10', '6.00', '1.30', '-', '-', '-', '125.8', '0.022', '-', '-', '7.00', '7.30', '合格', '-', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1359447406'),
(342, '亿盈（清远）发泡材料有限公司', '银盏银英公路新庄段', '黎伟', '黎伟', '3695112', '1人持证', '顺德中兴永雄工业水处理设备有限公司', '—', '双柱浮动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002004090005', '锅粤RA0009', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.52', '0.40', '2.00', '-', '39.00', '980.0', '5.90', '5.40', '11.00', '-', '-', '0.20', '1400', '118.0', '8.30', '0.85', '-', '0.011', '7.60', '1.00', '0.40', '-', '-', '-', '29.00', '0.00', '-', '-', '2.00', '7.30', '基本合格', '-', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1359447350'),
(343, '日丰（清远）电子有限公司', '银盏泰基工业城', '谭建国', '谭建国', '13535996365', '1人持证', '—', '—', '流动床', '2 t/h', '蒸汽锅炉', 'WNS2-1.25-Y', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006100004', '锅粤R00240', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.49', '0.40', '4.00', '-', '43.0', '504.0', '3.50', '3.20', '10.20', '-', '-', '0.23', '720.0', '43.00', '11.72', '7.50', '-', '0.000', '7.50', '3.00', '0.40', '-', '-', '-', '42.00', '0.000', '-', '-', '3.00', '7.30', '不合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1359447326'),
(344, '清远先锋制衣有限公司', '附城工业区', '黄厂长', '黄厂长', '3926856', '无人持证', '英永工业水处理设备有限公司', '--', '双柱浮动床', '1.0 t/h', '蒸汽锅炉', 'WNS1-1.0-Y', '--', '1.0 MPa(℃)', '有', '无', '11204418002002040168', '锅粤R10030', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.45', '1.50', '17.00', '-', '150.0', '4760', '3.10', '2.60', '10.90', '-', '-', '0.18', '680.0', '28.00', '17.00', '>10', '-', '0.58', '7.00', '11.00', '1.10', '-', '-', '-', '185.0', '盐', '-', '-', '-', '水', '不合格', '1.给水硬度偏高,软水器应定期再生.\r\n2.锅水碱度偏低,应适当控制排污.', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361328107');
INSERT INTO `oa_report_content` (`report_id`, `company_name`, `azdz`, `aqglrr`, `lxr`, `lxdh`, `zyrrczqh`, `zzdw`, `zczh`, `sclfc`, `cl`, `pz`, `xh`, `edzfl`, `edyl`, `cylqq`, `grq`, `sbdm`, `sydjzh`, `jyyj`, `ys_yd`, `ys_zj`, `ys_llz`, `ys_sd`, `ys_dd`, `ws_rjgxw`, `ws_zjd`, `ws_pjd`, `ws_phz`, `ws_po`, `ws_so`, `ws_xdjd`, `ws_ddl`, `ws_llz`, `ws_glbgdb`, `ws_pwl`, `gs_sd`, `gs_yd`, `gs_ph`, `gs_llz`, `gs_zj`, `gs_rjy`, `gs_qt`, `gs_y`, `gs_ddl`, `rhs_yd`, `rhs_qt`, `rhs_y`, `rhs_llz`, `rhs_phz`, `jyjl`, `jyyjhjy`, `bak`, `jyjghzzh`, `jyjghzrq`) VALUES
(345, '清远市振威皮革有限公司', '城区环城路拉尾岗157号', '周军华', '周军华', '3322098', '无人持证', '伦敦水处理设备厂', '--', '双柱浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A', '--', '1.25 MPa(℃)', '有', '无', '11204418002006080002', '锅粤RA0215', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.47', '1.20', '7.00', '-', '150.0', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '0.22', '7.10', '7.00', '1.20', '-', '-', '-', '170.0', '0.19', '-', '-', '7.00', '7.00', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水取样器损坏，无法取样，必须维修。\r\n3、离子交换树脂失效，应更换。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361328213'),
(346, '骏达（清远）制衣有限公司', '附城', '刘国星', '刘国星', '3363121', '无人持证', '容桂中兴工业公司水处理设备厂', '--', '双柱浮动床', '1.0 t/h', '蒸汽锅炉', 'LHC1-0.69-A III', '--', '0.69 MPa(℃)', '有', '无', '11204418002008060009', '锅粤R00489', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.43', '1.50', '8.00', '-', '151.0', '2730', '40.60', '34.60', '12.10', '-', '-', '0.42', '3900', '234.0', '11.67', '3.54', '-', '0.054', '7.10', '8.00', '1.40', '-', '-', '-', '156.0', '0.000', '-', '-', '9.00', '7.00', '不合格', '1.给水硬度偏高,软水器应定期再生.\r\n2.锅水碱度偏高,应加强排污.', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361328228'),
(347, '清远市汉铿物业发展有限公司', '小市北江一路七星岗', '王部长', '王部长', '3889871', '无人持证', '容桂中兴水处理设备厂', '--', '蒸汽锅炉', '1.0 t/h', '蒸汽锅炉', 'WNS1-1.0-Y', '--', '1.0 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.49', '1.30', '10.00', '-', '149.0', '1540', '13.60', '12.50', '11.60', '-', '-', '0.30', '2200', '178.0', '8.56', '4.09', '-', '0.39', '6.90', '7.00', '1.30', '-', '-', '-', '150.0', '0.40', '-', '-', '7.00', '6.90', '不合格', '1.给水硬度偏高,软水器应定期再生.', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361328239'),
(348, '兆联（清远）纺织印染有限公司', '佛冈汤塘镇三门村', '林老板', '林老板', '4201689', '1人持证', '—', '—', '流动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002004120049', '锅粤RM0075', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.30', '0.50', '3.00', '-', '30.0', '2520', '12.90', '12.00', '11.50', '-', '-', '0.18', '3600', '>1000', '2.52', '-', '-', '0.14', '12.10', '>1000', '460.0', '-', '-', '-', '-', '0.11', '-', '-', '152.0', '6.20', '不合格', '1.给水硬度偏高,应加强流动床的运行操作.\r\n2.给水池进入盐水,应检查阀门是否渗漏.\r\n3.有盐水进入锅炉,必须更换锅水.', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361328254'),
(349, '佛冈龙清电力器材公司', '佛冈', '张海清', '张海清', '13824904796', '无人持证', '--', '--', '浮动床', '4', '蒸汽锅炉', 'DZL4-1.25', '--', '1.25', '有', '无', '11204418002008010015', '锅粤R00438', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.99', '0.50', '3.00', '-', '61.00', '1470', '10.00', '8.10', '10.80', '-', '-', '0.17', '2100', '123.0', '11.95', '2.50', '-', '0.054', '6.80', '3.00', '0.30', '-', '-', '-', '62.00', '0.000', '-', '-', '1.00', '6.80', '不合格', '1.给水硬度偏高,软水器应定期再生.\r\n', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361328267'),
(350, '佛冈冠华纸塑包装有限公司', '佛冈', '黄本滔', '黄本滔', '4620333', '无人持证', '—', '—', '双柱浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '--', '—', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.94', '1.00', '43.00', '--', '201.0', '3710', '15.60', '14.10', '11.50', '--', '--', '0.14', '5300', '＞1000', '3.71', '2.77', '--', '0.17', '6.30', '27.00', '1.30', '--', '--', '--', '161.0', '0.086', '--', '--', '43.00', '6.30', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、有盐水进入锅炉，建议更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361933722'),
(351, '佛冈龙清电力器材公司', '佛冈', '张海清', '张海清', '13824904796', '无人持证', '--', '--', '浮动床', '4', '蒸汽锅炉', 'DZL4-1.25', '--', '1.25', '有', '无', '11204418002008010015', '锅粤R00438', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.97', '0.90', '3.00', '--', '65.00', '1680', '11.30', '10.20', '11.30', '--', '--', '0.22', '2400', '156.0', '10.77', '1.96', '--', '0.030', '6.90', '3.00', '0.40', '--', '--', '--', '68.00', '0.064', '--', '--', '3.00', '6.80', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361933739'),
(358, '兆联（清远）纺织印染有限公司', '佛冈汤塘镇三门村', '林老板', '林老板', '4201689', '1人持证', '—', '—', '流动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002004120049', '锅粤RM0075', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.11', '1.00', '22.00', '--', '155.0', '840.0', '8.30', '7.90', '11.30', '--', '--', '0.36', '1200', '100.0', '8.40', '9.89', '--', '0.22', '6.90', '9.00', '0.40', '--', '--', '--', '76.00', '0.27', '--', '--', '9.00', '6.90', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361933869'),
(357, '骏达（清远）制衣有限公司', '附城', '刘国星', '刘国星', '3363121', '无人持证', '容桂中兴工业公司水处理设备厂', '--', '双柱浮动床', '1.0 t/h', '蒸汽锅炉', 'LHC1-0.69-A III', '--', '0.69 MPa(℃)', '有', '无', '11204418002008060009', '锅粤R00489', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.41', '1.00', '7.00', '--', '131.0', '1960', '29.50', '25.60', '12.10', '--', '--', '0.44', '2800', '218.0', '8.99', '2.83', '--', '0.075', '7.10', '6.00', '1.10', '--', '--', '--', '70.00', '0.24', '--', '--', '6.00', '7.00', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>2、锅水碱度和pH 值偏高，应加强排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361933790'),
(355, '清远市汉铿物业发展有限公司', '小市北江一路七星岗', '王部长', '王部长', '3889871', '无人持证', '容桂中兴水处理设备厂', '--', '蒸汽锅炉', '1.0 t/h', '蒸汽锅炉', 'WNS1-1.0-Y', '--', '1.0 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.58', '1.20', '13.00', '--', '115.0', '1120', '11.10', '10.60', '11.60', '--', '--', '0.36', '1600', '163.0', '6.87', '4.49', '--', '0.17', '7.00', '7.00', '0.50', '--', '--', '--', '120.0', '0.43', '--', '--', '8.00', '6.90', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361933763'),
(359, '清远先锋制衣有限公司', '附城工业区', '黄厂长', '黄厂长', '3926856', '无人持证', '英永工业水处理设备有限公司', '--', '双柱浮动床', '1.0 t/h', '蒸汽锅炉', 'WNS1-1.0-Y', '--', '1.0 MPa(℃)', '有', '无', '11204418002002040168', '锅粤R10030', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.60', '1.20', '6.00', '--', '116.0', '1680', '0.80', '0.50', '9.30', '--', '--', '0.0048', '2400', '438.0', '3.84', '1.62', '--', '2.73', '6.40', '7.00', '1.30', '--', '--', '--', '115.0', '2.77', '--', '--', '8.00', '6.70', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>\r\n2、应更换树脂，并定期再生。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361933889'),
(360, '清远市永嘉洗涤有限公司', '开发区', '刘浩强', '刘浩强', '13926227043', '1人持证', '顺德英永工业水处理设备有限公司', '—', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006050007', '锅粤RA0159', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.47', '1.20', '8.00', '--', '134.0', '910.0', '5.20', '4.60', '11.00', '--', '--', '0.18', '1300', '62.00', '14.68', '>10', '--', '0.064', '8.80', '6.00', '1.10', '--', '--', '--', '--', '0.13', '--', '--', '7.00', '6.80', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>2、锅水碱度偏低，应适当控制排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361933906'),
(361, '日丰（清远）电子有限公司', '银盏泰基工业城', '谭建国', '谭建国', '13535996365', '1人持证', '—', '—', '流动床', '2 t/h', '蒸汽锅炉', 'WNS2-1.25-Y', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006100004', '锅粤R00240', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.62', '0.50', '3.00', '--', '45.00', '1260', '6.30', '5.80', '10.50', '--', '--', '0.17', '1800', '238.0', '5.29', '0.85', '--', '0.000', '7.30', '2.00', '0.30', '--', '--', '--', '37.00', '0.030', '--', '--', '3.00', '7.20', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361933919'),
(362, '亿盈（清远）发泡材料有限公司', '银盏银英公路新庄段', '黎伟', '黎伟', '3695112', '1人持证', '顺德中兴永雄工业水处理设备有限公司', '—', '双柱浮动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002004090005', '锅粤RA0009', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.49', '0.40', '2.00', '--', '42.00', '1050', '5.60', '4.80', '10.40', '--', '--', '0.15', '1500', '132.0', '7.95', '2.32', '--', '0.000', '7.40', '3.00', '0.70', '--', '--', '--', '41.00', '0.000', '--', '--', '3.00', '7.40', '基本合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361933932'),
(363, '清新县金联塑料厂', '禾云', '徐桂联', '徐桂联', '13902397138', '--', '--', '--', '浮动床', '4  t/h', '蒸汽锅炉', 'WNS4-1.0-Y', '-- t/h(MW)', '1.0 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.76', '0.80', '1.00', '--', '51.20', '1064', '28.70', '26.50', '12.10', '--', '--', '0.91', '1520', '20.00', '53.20', '>10', '--', '0.000', '7.20', '2.00', '0.90', '--', '--', '--', '45.60', '0.000', '--', '--', '1.00', '6.90', '不合格', '1、锅水碱度偏pH 值偏高，应加强排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361933229'),
(364, '佛冈冠华纸塑包装有限公司', '佛冈', '黄本滔', '黄本滔', '4620333', '无人持证', '—', '—', '双柱浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '--', '—', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.22', '1.00', '46.00', '--', '158.4', '3142', '23.10', '20.90', '11.80', '--', '--', '0.24', '4488', '>1000', '3.14', '2.46', '--', '0.030', '6.10', '24.00', '0.60', '--', '--', '--', '96.80', '0.030', '--', '--', '44.00', '6.00', '不合格', '有盐水进入锅炉，应更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361933245'),
(365, '佛冈龙清电力器材公司', '佛冈', '张海清', '张海清', '13824904796', '无人持证', '--', '--', '浮动床', '4', '蒸汽锅炉', 'DZL4-1.25', '--', '1.25', '有', '无', '11204418002008010015', '锅粤R00438', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.21', '0.20', '2.00', '--', '57.20', '1540', '11.30', '10.20', '11.20', '--', '--', '0.24', '2200', '152.0', '10.13', '2.01', '--', '0.030', '6.7', '3.00', '0.20', '--', '--', '--', '58.08', '0.021', '--', '--', '3.00', '6.60', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361933267'),
(366, '兆联（清远）纺织印染有限公司', '佛冈汤塘镇三门村', '林老板', '林老板', '4201689', '1人持证', '—', '—', '流动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A', '— t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002004120049', '锅粤RM0075', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.53', '1.00', '21.00', '--', '122.3', '1663', '30.30', '27.30', '12.10', '--', '--', '0.58', '2376', '230.0', '7.23', '5.02', '--', '0.030', '7.00', '11.00', '1.20', '--', '--', '--', '102.1', '0.030', '--', '--', '13.00', '6.50', '不合格', '1、锅水碱度和pH 值偏高，应加强排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361933295'),
(367, '清新县金丰纺织漂染定型厂', '清新县江口镇', '王老板', '王老板', '5513102', '无人持证', '--', '--', '浮动床', '10 t/h', '蒸汽锅炉', 'SZL10-1.25-A', '--', '1.25 MPa(℃)', '有', '无', '11204418002003080517', '锅粤RK0112', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.78', '0.60', '73.00', '--', '378.4', '1926', '11.00', '10.10', '11.60', '--', '--', '0.19', '2752', '710.0', '2.71', '>10', '--', '0.000', '6.90', '65.00', '0.60', '--', '--', '--', '361.2', '0.010', '--', '--', '65.00', '6.90', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361933331'),
(375, '清远市东上钢业有限公司', '清城区石角镇德龙工业区产业大道西侧', '刘冬明', '刘冬明', '13417285274', '1人持证', '顺德雄广水处理设备厂', '/', '流动床', '12 t/h', '蒸汽锅炉', 'SHX12-1.25-A I', '12 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002008100022', '锅粤R00552', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.94', '1.20', '7.00', '--', '119.5', '1204', '16.60', '15.20', '11.80', '5.25', '--', '0.46', '1720', '133.0', '9.05', '5.56', '2.45', '0.010', '6.50', '7.00', '1.20', '--', '--', '--', '119.3', '0.010', '--', '--', '7.00', '6.40', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361934022'),
(376, '宏升（清远）金属有限公司', '清城石角镇循环经济开发区', '钟太升', '钟太升', '13610523101', '1人持证', '顺德雄广水处理设备厂', '--', '流动床', '12 t/h', '蒸汽锅炉', 'SZL6-1.25-A II   1号', '6 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002008040006', '锅粤R00458', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.98', '1.30', '11.00', '--', '119.5', '1565', '23.60', '20.80', '11.90', '0.10', '--', '0.46', '2236', '180.0', '8.69', '4.05', '2.16', '0.64', '6.30', '7.00', '1.30', '--', '--', '--', '120.4', '0.80', '--', '--', '8.00', '6.40', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361934122'),
(377, '宏升（清远）金属有限公司', '清城石角镇循环经济开发区', '钟太升', '钟太升', '13610523101', '1人持证', '顺德雄广水处理设备厂', '--', '流动床', '12 t/h', '蒸汽锅炉', 'SZL6-1.25-A II   2号', '6 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002008040005', '锅粤R00457', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.98', '1.30', '11.00', '--', '119.5', '1806', '27.20', '24.10', '12.10', '0.61', '--', '0.46', '2580', '246.0', '7.34', '2.93', '2.16', '0.64', '6.30', '7.00', '1.30', '--', '--', '--', '120.4', '0.80', '--', '--', '8.00', '6.40', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度偏高，应加强排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361934101'),
(378, '清远忠信世纪玻纤有限公司', '石角镇建滔循环经济工业园', '余斌', '余斌', '13902879758', '1人持证', '江苏融鑫环保有限公司', '—', '除盐水', '20 t/h', '余热锅炉', 'Q36/800-6-1.25', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002008090014', '锅粤R00529', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.98', '1.30', '8.00', '--', '124.7', '1204', '17.00', '15.50', '11.80', '0.40', '--', '0.46', '1720', '128.0', '9.41', '7.56', '5.86', '0.030', '6.90', '9.00', '1.10', '--', '--', '--', '125.6', '0.000', '--', '--', '18.00', '6.90', '基本合格', '给水浊度略偏高，应注意给水箱的防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361934164'),
(379, '清城区石角镇田心恒生饲料加工厂', '清城区石角镇田心村委会', '欧金轩', '欧金轩', '13923174725', '无证', '中兴永雄水处理设备厂', '/', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A II', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006070003', '锅粤RO0597', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.03', '1.00', '21.00', '--', '129.0', '1686', '16.20', '14.00', '11.70', '5.18', '--', '0.28', '2408', '486.0', '3.47', '4.97', '2.39', '0.030', '6.20', '23.00', '1.00', '--', '--', '--', '137.6', '0.021', '--', '--', '21.00', '6.20', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(374, '英德海螺水泥有限责任公司', '望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '—', '除盐水', '10 t/h  B线PH', '余热锅炉', 'QC338/325-28.29-0.8/305/PH-J', '28.29 t/h(MW)', '0.8 MPa(℃)', '有', '有', '11104418002008100013', '锅粤R00543', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.17', '1.70', '9.00', '--', '124.0', '61.60', '0.50', '0.30', '9.20', '1.79', '--', '0.065', '88.00', '20.00', '3.08', '5.26', '1.85', '0.00', '7.40', '1.00', '0.50', '--', '--', '--', '56.48', '0.022', '--', '--', '1.00', '7.30', '不合格', '1、锅水pH 值偏低，应适当控制排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(384, '英德海螺水泥有限责任公司', '望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '—', '除盐水', '10 t/h  A线PH', '余热锅炉', 'QC338/325-28.29-0.8/305/PH-J', '28.29 t/h(MW)', '0.8 MPa(℃)', '有', '有', '11104418002008100010', '锅粤R00540', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.17', '1.70', '9.00', '--', '124.0', '30.24', '0.50', '0.30', '9.10', '1.83', '--', '0.13', '43.20', '7.00', '4.32', '>10', '1.85', '0.000', '7.40', '1.00', '0.50', '--', '--', '--', '56.48', '0.022', '--', '--', '1.00', '7.30', '不合格', '1、锅水pH 值偏低，应适当控制排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(381, '英德海螺水泥有限责任公司', '望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '—', '除盐水', '10 t/h   C线PH', '余热锅炉', 'QC338/325-28.29-0.8/305/PH-J', '28.29 t/h(MW)', '0.8 MPa(℃)', '有', '有', '11104418002008100012', '锅粤R00542', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.17', '1.70', '9.00', '--', '124.0', '58.80', '1.00', '0.80', '10.00', '1.74', '--', '0.41', '84.00', '1.00', '58.80', '0', '1.85', '0.000', '7.40', '1.00', '0.50', '--', '--', '--', '56.48', '0.022', '--', '--', '1.00', '7.30', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(383, '英德海螺水泥有限责任公司', '望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '—', '除盐水', '10 t/h   A线AQC', '余热锅炉', 'QC338/325-28.29-0.8/305/PH-J', '28.29 t/h(MW)', '0.8 MPa(℃)', '有', '有', '11104418002008100011', '锅粤R00541', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.17', '1.70', '9.00', '--', '124.0', '43.68', '0.50', '0.30', '9.20', '4.36', '--', '0.092', '62.40', '22.00', '19.85', '4.76', '1.85', '0.000', '7.40', '1.00', '0.50', '--', '--', '--', '56.48', '0.022', '--', '--', '1.00', '7.30', '不合格', '1、锅水pH 值偏低，应适当控制排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(385, '英德海螺水泥有限责任公司', '望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '—', '除盐水', '10 t/h B线AQC', '余热锅炉', 'QC206/360-18-0.7/345', '18 t/h(MW)', '0.8 MPa(℃)', '有', '有', '11104418002008100015', '锅粤R00545', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.17', '1.70', '9.00', '--', '124.0', '35.28', '0.30', '0.20', '9.20', '3.88', '--', '0.11', '50.40', '11.00', '3.21', '10', '1.85', '0.000', '7.40', '1.00', '0.50', '--', '--', '--', '56.48', '0.022', '--', '--', '1.00', '7.30', '不合格', '1、锅水pH 值偏低，应适当控制排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(386, '英德海螺水泥有限责任公司', '望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '—', '除盐水', '10 t/h   D线AQC', '余热锅炉', 'QC206/360-18-0.7/345', '18 t/h(MW)', '0.7 MPa(℃)', '有', '有', '11104418002008100017', '锅粤R00547', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.17', '1.70', '9.00', '--', '124.0', '50.96', '0.70', '0.50', '9.90', '1.90', '--', '0.24', '72.80', '1.00', '50.96', '0', '1.85', '0.000', '7.40', '1.00', '0.50', '--', '--', '--', '56.48', '0.022', '--', '--', '1.00', '7.30', '基本合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(387, '英德海螺水泥有限责任公司', '望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '—', '除盐水', '10 t/h   C线AQC', '余热锅炉', 'QC206/360-18-0.7/345', '18 t/h(MW)', '0.7 MPa(℃)', '有', '有', '11104418002008100016', '锅粤R00546', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.17', '1.70', '9.00', '--', '124.0', '47.04', '1.00', '0.70', '10.00', '1.84', '--', '0.34', '67.20', '2.00', '23.52', '>10', '1.85', '0.000', '7.40', '1.00', '0.50', '--', '--', '--', '56.48', '0.022', '--', '--', '1.00', '7.30', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(388, '英德海螺水泥有限责任公司', '望埠镇', '王骏', '王骏', '13824916676', '1人持证', '江苏兴海环保科技有限公司', '—', '除盐水', '10 t/h D线PH', '余热锅炉', 'QC338/325-28.29-0.8/305/PH-J', '28.29 t/h(MW)', '0.8 MPa(℃)', '有', '有', '11104418002008100013', '锅粤R00543', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.17', '1.70', '9.00', '--', '124.0', '42.00', '1.20', '1.00', '10.00', '1.58', '--', '0.76', '60.00', '1.00', '42.00', '0', '1.85', '0.000', '7.40', '1.00', '0.50', '--', '--', '--', '56.48', '0.022', '--', '--', '1.00', '7.30', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(390, '英德市汀汀水上乐园', '英德市英城人民大桥西侧南面', '郭成喜', '郭成喜', '13926620202', '无证', '顺德区雄广水处理设备厂', '--', '浮动床', '1 t/h', '承压蒸汽锅炉', 'LHG1-0.7-AⅢ', '1 t/h(MW)', '0.7 MPa(℃)', '有', '无', '11204418002010060007', '锅粤RO2013', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.74', '1.20', '6.00', '--', '95.20', '728.0', '1.20', '0.80', '9.50', '0.79', '--', '0.022', '1040', '162.0', '4.49', '3.85', '3.36', '1.77', '6.70', '6.00', '1.30', '--', '--', '--', '96.00', '1.75', '--', '--', '6.00', '6.80', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(391, '英德佳纳金属科技有限公司', '青塘工业开发区', '王辉', '王辉', '13542452482', '一人持证', '英永工业水处理设备有限公司', '--', '流动床', '10 t/h ', '蒸汽锅炉', 'SZL10-1.25-AⅡ', '10 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002005110001', '锅粤RP0269', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.53', '3.00', '8.00', '--', '180.0', '1848', '16.60', '14.20', '11.70', '1.91', '--', '0.26', '2640', '685.0', '2.70', '6.70', '3.05', '0.13', '7.10', '43.00', '1.40', '--', '--', '--', '296.0', '0.030', '--', '--', '21.00', '7.10', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(392, '浛洸镇荣华制衣一厂', '浛洸镇鹿城路', '何荣', '张秀霞', '2852308', '无证', '雄广水处理设备厂', '--', '浮动床', '0.5 t/h', '蒸汽锅炉', 'LHC0.5-0.7-AⅡ', '0.5 t/h(MW)', '0.7 MPa(℃)', '无', '无', '11204418002009060009', '锅粤R00645', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.40', '3.00', '5.00', '--', '192.8', '762.0', '1030', '8.50', '11.50', '4.18', '--', '0.40', '960.0', '70.00', '9.60', '7.69', '1.90', '0.000', '7.20', '5.00', '3.00', '--', '--', '--', '180.0', '0.030', '--', '--', '6.00', '7.20', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361936149'),
(393, '英德市实益长丰纺织有限公司', '英德市桥头镇', '苏经理', '苏经理', '18998618928', '1人持证', '--', '--', '浮动床', '15 t/h', '蒸汽锅炉', 'SZL15-1.25-A Ⅲ', '15 t/h (MW)', '1.25 MPa(℃)', '有', '无', '11204418002012050001', '锅粤RP3210', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.89', '1.10', '4.00', '--', '404.8', '1264', '14.40', '12.90', '11.60', '5.44', '--', '0.36', '1806', '154.0', '8.21', '0.65', '4.13', '0.60', '8.10', '1.00', '0.60', '--', '--', '--', '30.80', '0.000', '--', '--', '4.00', '8.80', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(394, '英德市贵兴林业开发有限公司', '英德市东华镇英青路大镇第二', '何兴', '何兴', '13360922699', '无人持证', '--', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZH2-1.0-A Ⅱ', '2 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002010110012', '锅粤RP1036', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.04', '1.50', '1.00', '--', '100.3', '78.26', '1.80', '0.000', '7.40', '--', '--', '0', '111.8', '2.00', '39.13', '0', '9.82', '2.26', '8.30', '2.00', '2.00', '--', '--', '--', '118.8', '2.17', '--', '--', '1.00', '8.50', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。\r\n2、给水浊度偏高，应注意给水箱的防尘', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(395, '英德浛洸创盟洗涤厂', '浛洸镇鹿城路', '何树荣', '何树荣', '13539519348', '无证', '雄广水处理设备厂', '--', '浮动床', '4 t/h', '蒸汽锅炉', 'DZH4-1.25-A Ⅱ', '4 /h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002008100019', '锅粤R00549', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '5.61', '4.30', '22.00', '--', '404.8', '184.8', '0.50', '0.30', '9.80', '--', '--', '0.022', '264.0', '4.00', '46.20', '>10', '2.10', '0.19', '7.80', '3.00', '1.60', '--', '--', '--', '127.6', '1.27', '--', '--', '4.00', '7.50', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度和PH值严重偏低，不利于锅炉防腐防垢，必须重视锅炉水处理工作。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(396, '英德市三友木业有限公司', '英德市英红镇红光居委会原红', '赖长华', '赖长华', '13318619999', '无人持证', '--', '--', '双柱浮动床', '4 t/h', '蒸汽锅炉', 'DZG4-1.3-M', '4 /h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002012030005', '锅粤RP3207', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.93', '3.10', '3.00', '--', '198.0', '264.9', '0.30', '0.20', '9.30', '--', '--', '0.015', '378.4', '32.00', '8.28', '>10', '2.29', '3.78', '8.00', '4.00', '3.00', '--', '--', '--', '184.8', '4.02', '--', '--', '3.00', '8.10', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>2、锅水碱度偏低，应适当控制排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(397, '英德市粤北糖业有限公司', '英德市浛洸镇', '何厂', '何厂', '13539510863', '3人持证', '雄广水处理设备厂', '--', '流动床', '100t/h ', '蒸汽锅炉', 'SHS25-25/400-G', '25t/h(MW)', '2.5MPa(℃)', '有', '无', '11204418002001120002', '锅粤RP0001', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.49', '2.00', '2.00', '--', '126.7', '541.8', '9.10', '5.50', '11.40', '1.83', '--', '0.58', '774.0', '0.58', '90.30', '>10', '2.21', '0.011', '8.90', '1.00', '1.00', '--', '--', '--', '51.04', '0.086', '--', '--', '2.00', '8.70', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(398, '英德市粤北糖业有限公司', '英德市浛洸镇', '何厂', '何厂', '13539510863', '3人持证', '雄广水处理设备厂', '--', '流动床', '100t/h ', '蒸汽锅炉', 'SHS25-25/400-Ⅱ', '25t/h(MW)', '2.5MPa(℃)', '有', '无', '11204418002001120003', '锅粤RP0002', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.49', '2.00', '2.00', '--', '126.7', '662.2', '10.70', '10.20', '11.40', '1.61', '--', '0.58', '946.0', '18.00', '36.79', '5.88', '2.21', '0.011', '8.90', '1.00', '1.00', '--', '--', '--', '51.04', '0.086', '--', '--', '2.00', '8.70', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(399, '英德市永发蚕业有限公司', '浛洸镇河江渡', '曾锐锋', '曾锐锋', '13750111912', '无证', '英永工业水处理设备厂', '--', '浮动床', '4 t/h', '蒸汽锅炉', 'DZL4-1.25-A II', '4 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002005060014', '锅粤RP0238', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '4.13', '3.20', '4.00', '--', '202.4', '1866', '22.00', '18.10', '11.80', '4.59', '--', '0.30', '2666', '206.0', '9.06', '1.98', '2.00', '4.17', '7.80', '4.00', '3.30', '--', '--', '--', '205.9', '4.08', '--', '--', '4.00', '7.80', '不合格', '1、给水硬度偏高，软水器应加盐再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(400, '英德市权祥凉茶有限公司', '浛洸镇鹿城路', '钟金房', '钟金房', '13318617181', '无证', '中兴（永雄）水处理设备有限公司', '--', '浮动床', '4 t/h', '蒸汽锅炉', 'DZL4-1.25-A II', '4 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006120011', '锅粤RP0282', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '4.19', '3.00', '3.00', '--', '202.4', '739.2', '12.40', '9.90', '11.50', '1.88', '--', '0.40', '1056', '19.00', '38.90', '>10', '4.30', '0.064', '7.20', '5.00', '2.80', '--', '--', '--', '206.8', '0.32', '--', '--', '4.00', '7.20', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(401, '三耀（英德）礼品包装有限公司', '英德英洲科工贸工业项目规划区', '朱新有', '朱新有', '13727132937', '1人持证', '雄广水处理设备厂', '--', '浮动床', '8 t/h     ', '蒸汽锅炉', 'SZL8-1.25-A Ⅱ', '8 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002008120010', '锅粤R00586', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.81', '1.70', '8.00', '--', '111.8', '800.8', '10.00', '8.80', '11.50', '1.91', '--', '0.38', '1144', '52.00', '15.40', '>10', '2.05', '0.19', '8.70', '9.00', '2.00', '--', '--', '--', '184.9', '0.30', '--', '--', '9.00', '7.60', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(402, '英德市含光镇天翔制衣厂', '英德市西牛镇', '陈秤金', '陈秤金', '13509258821', '无人持证', '--', '--', '浮动床', '1.0 t/h', '蒸汽锅炉', 'LSG0.15-0.8-W12', '0.8 t/h(MW)', '0.15 MPa(℃)', '有', '无', '11204418002010110003', '锅粤RP1031', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '4.17', '3.80', '5.00', '--', '266.6', '1746', '40.00', '34.20', '12.10', '1.94', '--', '0.65', '2494', '74.00', '23.59', '7.25', '2.76', '0.13', '7.10', '5.00', '2.70', '--', '--', '--', '163.4', '0.26', '--', '--', '5.00', '7.00', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>2、锅水碱度偏高pH 值偏高，应加强排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(403, '英德市浛洸镇雅宜洗涤制衣厂', '英德浛洸鹿城路', '黄振球', '黄振球', '13727121437', '1人持证', '中兴（永雄）水处理设备有限公司', '--', '锅外化学处理', '4 t/h', '蒸汽锅炉', 'DZH4.0-1.25-A Ⅱ', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002003080509', '锅粤RP0154', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '5.50', '4.90', '9.00', '--', '378.4', '985.6', '10.50', '9.00', '11.50', '2.49', '--', '0.30', '1408', '78.00', '12.64', '>10', '2.00', '0.11', '7.40', '62.00', '3.50', '--', '--', '--', '421.4', '0.26', '--', '--', '58.00', '7.40', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(404, '英德市大站镇日日新洗衣店', '英德市大站镇联丰管理区濂滩村路口', '李老板', '李老板', '13926632220', '无证', '顺德区雄广水处理设备厂', '--', '浮动床', '1 t/h', '承压蒸汽锅炉', 'DZG1-1.0-M.A', '1 t/h(MW)', '1.0 MPa(℃)', '有', '有', '11204418002009090022', '锅粤RO2013', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.29', '1.00', '7.00', '--', '111.8', '445.5', '1.00', '0.60', '9.30', '0.86', '--', '0.02', '636.4', '64.00', '7.0', '>10', '3.30', '0.77', '7.30', '8.00', '0.60', '--', '--', '--', '70.52', '1.29', '--', '--', '9.00', '7.30', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(405, '英德市岳泉化工有限公司', '英德市沙口镇东瓜铺村', '曾厂长', '曾厂长', '15992018201', '2人持证', '--', '--', '锅外处理(除盐水)', '35 t/h', '蒸汽锅炉', 'QCF35/950-19-3.82/450', '35t/h (MW)', '3.82 MPa(℃)', '有', '无', '11204418002008080005', '锅粤RO0516', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.35', '3.00', '2.00', '--', '172.0', '314.2', '4.00', '3.60', '11.30', '1.56', '--', '0.41', '448.8', '4.00', '78.55', '>10', '2.58', '0.030', '7.80', '2.00', '0.30', '--', '--', '--', '6.02', '0.13', '--', '--', '2.00', '7.70', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(406, '英德市隆盛金属有限公司', '英德市东华镇鱼湾华侨工业园', '蔡厂长', '蔡厂长', '13567768666', '1人持证', '—', '—', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A II', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011100009', '锅粤RP3201', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '5.20', '4.00', '1.00', '--', '344.0', '1355', '11.60', '10.60', '11.60', '2.35', '--', '0.28', '1936', '450.0', '3.01', '0.22', '1.75', '0.000', '7.80', '1.00', '1.00', '--', '--', '--', '86.00', '0.17', '--', '--', '1.00', '7.70', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(407, '浛洸镇友谊制衣厂', '英德浛洸镇鹿城路', '闻伙友', '闻伙友', '18922552478', '无证', '--', '--', '锅外化学处理', '2.0 t/h', '蒸汽锅炉', 'DZL2-1.0-AⅢ', '2.0 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002010040007', '锅粤RO2010', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '5.14', '4.60', '14.00', '--', '361.2', '1848', '42.50', '34.00', '12.10', '2.02', '--', '0.55', '2640', '174.0', '10.62', '9.43', '2.23', '5.13', '7.00', '15.00', '4.50', '--', '--', '--', '387.0', '5.11', '--', '--', '15.00', '7.00', '不合格', '1、给水硬度偏高，软水器应加盐再生；<br>2、锅水碱度和pH 值偏高，应加强排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(408, '含光镇金城时代制衣厂', '英德市含光镇鹿城路1号', '陈成国', '陈成国', '13922566600', '1人持证', '--', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DLG1-1.0-AⅡ', '1.0 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002009070010', '锅粤R00656', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '4.15', '3.50', '3.00', '--', '197.8', '1848', '45.00', '38.20', '12.10', '1.99', '--', '0.68', '2640', '154.0', '12.00', '2.67', '6.82', '1.38', '7.00', '4.00', '2.00', '--', '--', '--', '134.2', '4.12', '--', '--', '4.00', '6.90', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>2、锅水碱度偏高pH 值偏高，应加强排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(409, '英德联益洗涤有限公司', '英德浛洸镇', '张远赛', '张远赛', '13318616972', '无证', '东莞顺兴水处理设备有限公司', '--', '浮动床', '4 t/h', '蒸汽锅炉', 'DZG4-1.25-W Ⅱ', '4 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002004030637', '锅粤RP0188', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.85', '1.60', '7.00', '--', '111.8', '800.8', '12.80', '11.20', '11.60', '2.95', '--', '0.48', '1144', '74.00', '10.82', '>10', '1.98', '0.030', '7.30', '8.00', '1.60', '--', '--', '--', '111.8', '0.043', '--', '--', '8.00', '7.30', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(410, '广东致远新材料有限公司', '英德市桥头镇红桥村委远前村', '张劲', '张劲', '2706256', '1人持证', '--', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'WNS2-1.0-Y', '2 t/h(MW)', '1.0 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.60', '2.20', '3.00', '--', '129.0', '1023', '21.60', '19.60', '11.80', '4.58', '--', '0.69', '1462', '32.00', '31.97', '>10', '2.18', '0.000', '7.50', '3.00', '2.20', '--', '--', '--', '128.1', '0.043', '--', '--', '3.00', '7.50', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(411, '英德市海螺国际大酒店', '英德市英城镇', '陆奕献', '陆奕献', '2332317', '1人持证', '美国阿图强', '--', '固定床', '2 t/h', '蒸汽锅炉', 'WNS1-1.25-YQ', '1.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11304418002004120002', '锅粤RP0206', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.85', '1.20', '9.00', '--', '107.5', '1023', '5.20', '4.50', '11.30', '2.55', '--', '0.15', '1462', '3.63', '282.0', '7.22', '2.36', '0.54', '7.20', '19.00', '1.10', '--', '--', '--', '131.6', '0.52', '--', '--', '18.00', '7.30', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>2、锅水碱度偏低，应适当控制排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(413, '广东省华农温氏畜牧股份有限公司英州分公司', '英德市石灰铺镇', '梁厂长', '梁厂长', '15992007818', '1人持证', '--', '--', '浮动床', '4t/h', '蒸汽锅炉', 'DZL4-1.25-A II', '4 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002012060002', '锅粤RP3213', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.72', '1.20', '2.00', '--', '86.24', '439.5', '1.60', '1.20', '11.00', '1.70', '--', '0.073', '627.8', '28.00', '15.70', '7.69', '2.18', '1.78', '8.00', '2.00', '1.00', '--', '--', '--', '88.00', '1.72', '--', '--', '2.00', '8.40', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(454, '英德市宝江水泥有限责任公司', '石灰铺镇', '苏东奕', '苏东奕', '13902352309', '1人持证', '--', '--', '除盐水', '8 t/h   窑尾', '余热锅炉', 'QC175/350-15-1.6/330', '15 t/h(MW)', '1.6 MPa(℃)', '有', '无', '11204418002010110005', '锅粤RP1035', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.61', '3.10', '3.00', '--', '180.6', '74.62', '0.50', '0.30', '9.30', '1.12', '--', '0.054', '106.6', '1.00', '74.62', '0', '2.15', '0.030', '6.90', '1.00', '0.20', '--', '--', '--', '5.16', '0.010', '--', '--', '1.00', '6.90', '不合格', '1、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(414, '广东省华农温氏畜牧股份有限公司英德分公司', '东华镇鱼湾', '秦伟成', '秦伟成', '2568610', '无证', '建业水处理设备有限公司', '--', '流动床', '2 t/h', '蒸汽锅炉', 'DZL2-1.0-A Ⅱ', '2 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002008070008', '锅粤R00503', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '4.17', '3.40', '9.00', '--', '206.4', '2279', '49.20', '40.80', '12.10', '1.90', '--', '0.57', '3256', '600.0', '3.80', '2.21', '2.72', '0.000', '7.60', '13.00', '3.30', '--', '--', '--', '215.9', '0.22', '--', '--', '10.00', '7.50', '不合格', '1、锅水碱度偏高pH值偏高，应加强排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(415, '同进（英德）纺织品有限公司', '东华镇光辉村', '杨勇斌', '杨勇斌', '15917514922', '1人持证', '得胜锅炉股份有限公司', '——', '浮动床', '10 t/h', '蒸汽锅炉', 'SHXF10-2.5/400-A II', '10 t/h (MW)', '2.5 MPa(℃)', '有', '无', '11204418002008110015', '锅粤R00567', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.43', '1.20', '10.00', '--', '149.6', '1023', '7.20', '6.50', '11.40', '4.24', '--', '0.23', '1462', '114.0', '8.97', '8.57', '2.65', '0.086', '7.40', '9.00', '1.10', '--', '--', '--', '151.4', '0.30', '--', '--', '9.00', '7.40', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361936141'),
(416, '英德龙山水泥有限责任公司', '望埠镇', '景高云', '景高云', '13415287420', '1人持证', '江苏兴海环保科技有限公司', '——', '除盐水', '8 t/h    1#AQC', '余热锅炉', 'QC206/360-18-0.7/345', '18t/h (MW)', '0.7MPa(℃)', '有', '有', '11204418002008030006', '锅粤R00447', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.21', '1.30', '8.00', '--', '116.0', '52.29', '1.20', '0.80', '9.80', '13.56', '--', '0.30', '74.70', '1.00', '52.29', '0', '1.85', '0.000', '9.50', '1.00', '2.00', '--', '--', '--', '89.56', '0.000', '--', '--', '1.00', '7.30', '基本合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(417, '英德龙山水泥有限责任公司', '英德市望埠镇', '景高云', '景高云', '13415287420', '1人持证', '江苏兴海环保科技有限公司', '--', '除盐水', '8 t/h     A#PH', '余热锅炉', 'MHA32-AOE701-R3/PH-J', '32t/h (MW)', '1.25 MPa(℃)', '有', '有', '11204418002008030005', '/', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.21', '1.30', '8.00', '--', '116.0', '47.60', '1.30', '0.70', '9.80', '9.82', '--', '0.084', '68.00', '1.00', '47.60', '0.084', '1.85', '0.000', '9.50', '1.00', '2.00', '--', '--', '--', '89.56', '0.000', '--', '--', '1.00', '7.30', '基本合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL);
INSERT INTO `oa_report_content` (`report_id`, `company_name`, `azdz`, `aqglrr`, `lxr`, `lxdh`, `zyrrczqh`, `zzdw`, `zczh`, `sclfc`, `cl`, `pz`, `xh`, `edzfl`, `edyl`, `cylqq`, `grq`, `sbdm`, `sydjzh`, `jyyj`, `ys_yd`, `ys_zj`, `ys_llz`, `ys_sd`, `ys_dd`, `ws_rjgxw`, `ws_zjd`, `ws_pjd`, `ws_phz`, `ws_po`, `ws_so`, `ws_xdjd`, `ws_ddl`, `ws_llz`, `ws_glbgdb`, `ws_pwl`, `gs_sd`, `gs_yd`, `gs_ph`, `gs_llz`, `gs_zj`, `gs_rjy`, `gs_qt`, `gs_y`, `gs_ddl`, `rhs_yd`, `rhs_qt`, `rhs_y`, `rhs_llz`, `rhs_phz`, `jyjl`, `jyyjhjy`, `bak`, `jyjghzzh`, `jyjghzrq`) VALUES
(418, '英德和兴灰砂砖厂', '英德市茶果场', '杨万和', '杨万和', '13902356968', '无证', '顺德正康水处理设备制造厂', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZG2-1.25-A II', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002007100007', '锅粤R00387', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.48', '3.10', '1.00', '--', '148.0', '1120', '18.60', '16.80', '11.70', '1.93', '--', '0.54', '1600', '346.0', '3.24', '0.29', '2.05', '3.47', '7.00', '1.00', '3.10', '--', '--', '--', '151.2', '3.50', '--', '--', '1.00', '7.00', '不合格', '1、给水硬度偏高，软水器应加盐再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(419, '英德市永富塑料制品厂', '黎溪镇火砖楼', '黄厂长', '黄厂长', '13631058368', '无证', '顺德杏坛水处理设备厂', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZG2-1.25-A II', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002004090017', '锅粤RP0201', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.28', '0.20', '3.00', '--', '16.80', '114.8', '1.30', '1.10', '9.80', '0.86', '--', '0.31', '164.0', '12.00', '9.57', '＜0', '4.39', '0.39', '7.10', '13.00', '0.30', '--', '--', '--', '38.40', '0.22', '--', '--', '13.00', '7.10', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(420, '英德市昊晟金属塑料制品有限公司', '英城镇水泥专用通道以南', '邹家胜', '邹家胜', '13923144411', '1人持证', '雄广水处理设备厂', '--', '浮动床', '4 t/h', '蒸汽锅炉', 'SZL4-1.25-A II', '4 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002009090014', '锅粤R00677', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.76', '1.10', '6.00', '--', '88.80', '952.0', '14.50', '13.70', '11.60', '5.12', '--', '0.54', '1360', '78.00', '12.20', '8.33', '1.75', '0.000', '7.20', '6.00', '1.00', '--', '--', '--', '96.80', '0.86', '--', '--', '5.00', '7.20', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361934399'),
(421, '阳山县洪辉新型环保建材有限责任公司', '阳山县小江镇石螺工业区', '温越辉', '温越辉', '13927651199', '1人持证', '--', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A II', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '--', '--', '--', '--', '--', '1940', '67.80', '62.00', '12.20', '--', '--', '1.16', '2772', '76.00', '25.53', '--', '2.13', '--', '--', '--', '--', '--', '--', '--', '--', '0.021', '--', '--', '1.00', '7.00', '不合格', '1、锅水碱度偏pH 值偏高，应适当加药以调控水 碱度及pH 值；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(422, '清远市升华建陶有限公司', '清远市清新县禾云镇云龙陶瓷产业基地A2-2号地', '何标成', '何标成', '13929968789', '1人持证', '--', '--', '锅外化学处理', '30.0 t/h  1#', '煤气发生炉', 'Φ1200×8.0×2590', '-- t/h(MW)', '0.3 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.39', '1.20', '3.00', '--', '126.0', '722.4', '0.50', '0.30', '9.00', '--', '--', '0.006', '1032', '140.0', '5.16', '2.19', '2.43', '2.48', '7.10', '3.00', '1.80', '--', '--', '--', '131.0', '2.46', '--', '--', '3.00', '7.30', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(423, '清远市升华建陶有限公司', '清远市清新县禾云镇云龙陶瓷产业基地A2-2号地', '何标成', '何标成', '13929968789', '1人持证', '--', '--', '锅外化学处理', '20.0 t/h   4#', '煤气发生炉', 'Φ4000×20.0×3160', '-- t/h(MW)', '0.02 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.39', '1.20', '3.00', '--', '126.0', '1023', '0.80', '0.50', '9.30', '--', '--', '0.008', '1462', '212.0', '4.82', '1.44', '2.43', '2.48', '7.10', '3.00', '1.80', '--', '--', '--', '131.0', '2.46', '--', '--', '3.00', '7.30', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(424, '清远市升华建陶有限公司', '清远市清新县禾云镇云龙陶瓷产业基地A2-2号地', '何标成', '何标成', '13929968789', '1人持证', '--', '--', '锅外化学处理', '30.0 t/h   2#', '煤气发生炉', 'Φ1200×8.0×2590', '-- t/h(MW)', '0.3 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.39', '1.20', '3.00', '--', '126.0', '1023', '0.80', '0.50', '9.10', '--', '--', '0.008', '1462', '174.0', '5.88', '1.75', '2.43', '2.48', '7.10', '3.00', '1.80', '--', '--', '--', '131.0', '2.46', '--', '--', '3.00', '7.30', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(425, '清远市升华建陶有限公司', '清远市清新县禾云镇云龙陶瓷产业基地A2-2号地', '何标成', '何标成', '13929968789', '1人持证', '--', '--', '锅外化学处理', '20.0 t/h   3#', '煤气发生炉', 'Φ4000×20.0×3160', '-- t/h(MW)', '0.02 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.39', '1.20', '3.00', '--', '126.0', '903.0', '0.70', '0.40', '9.30', '--', '--', '0.004', '1290', '172.0', '5.25', '1.78', '2.43', '2.48', '7.10', '3.00', '1.80', '--', '--', '--', '131.0', '2.46', '--', '--', '3.00', '7.30', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(426, '广东新一派建材有限公司', '清新县禾云工业园', '黄生', '黄生', '15811728112', '1人持证', '--', '--', '锅外化学处理', '20.0 t/h   2#', '煤气发生炉', 'Φ1600×14.0×3050', '-- t/h(MW)', '0.02 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.45', '0.40', '1.00', '--', '28.56', '28.29', '0.30', '0.000', '7.50', '--', '--', '0', '40.42', '1.00', '28.29', '0', '3.31', '0.030', '8.40', '1.00', '0.30', '--', '--', '--', '26.88', '0.000', '--', '--', '1.00', '8.60', '不合格', '1、锅水碱度偏pH 值偏低，应适当加药以调控水 碱度及pH 值；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(427, '广东新一派建材有限公司', '清新县禾云工业园', '陈与雄', '陈与雄', '13926610707', '1人持证', '--', '--', '锅外化学处理', '4.0 t/h   ', '煤气发生炉', 'DZL4-1.25-A II', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002010120003', '锅粤RK1036', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.45', '0.40', '1.00', '--', '28.56', '602.0', '7.50', '7.00', '11.00', '--', '--', '0.43', '860.0', '86.00', '7.00', '1.18', '3.31', '0.030', '8.40', '1.00', '0.30', '--', '--', '--', '26.88', '0.000', '--', '--', '1.00', '8.60', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(428, '广东新一派建材有限公司', '清新县禾云工业园', '黄生', '黄生', '15811728112', '1人持证', '--', '--', '锅外化学处理', '20.0 t/h   3#', '煤气发生炉', 'Φ1200×8.0×2600', '-- t/h(MW)', '0.02 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.45', '0.40', '1.00', '--', '28.56', '1084', '23.30', '11.00', '10.30', '--', '--', '＜0', '1548', '13.00', '83.38', '8.33', '3.31', '0.030', '8.40', '1.00', '0.30', '--', '--', '--', '26.88', '0.000', '--', '--', '1.00', '8.60', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(429, '广东新一派建材有限公司', '清新县禾云工业园', '黄生', '黄生', '15811728112', '1人持证', '--', '--', '锅外化学处理', '20.0 t/h   1#', '煤气发生炉', 'Φ1600×14.0×3050', '-- t/h(MW)', '0.02 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.45', '0.40', '1.00', '--', '28.56', '54.78', '0.30', '0.000', '7.50', '--', '--', '0', '78.26', '3.00', '18.26', '＞10', '3.31', '0.030', '8.40', '1.00', '0.30', '--', '--', '--', '26.88', '0.000', '--', '--', '1.00', '8.60', '不合格', '1、锅水碱度偏pH 值偏低，应适当加药以调控水 碱度；', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(430, '广东英超陶瓷有限公司', '清远市清新县禾云镇', '钟刚', '钟刚', '13535896306', '1人持证', '--', '--', '锅外化学处理', '-- t/h   1#', '汽包', '--', '--', '--', '有', '无', '21704418002010120010', '容1LC粤RK3011', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.43', '0.40', '1.00', '--', '24.36', '1294', '25.00', '18.00', '11.90', '--', '--', '0.34', '1848', '148.0', '8.74', '1.37', '20.50', '0.41', '9.70', '2.00', '2.10', '--', '--', '--', '126.0', '0.31', '--', '--', '1.00', '6.20', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(431, '广东英超陶瓷有限公司', '清远市清新县禾云镇', '钟刚', '钟刚', '13535896306', '1人持证', '--', '--', '锅外化学处理', '-- t/h   2#', '汽包', '--', '--', '--', '有', '无', '21704418002010120009', '容1LC粤RK3010', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.43', '0.40', '1.00', '--', '24.36', '1588', '32.30', '20.50', '12.10', '--', '--', '0.22', '2268', '186.0', '8.54', '1.09', '20.50', '0.41', '9.70', '2.00', '2.10', '--', '--', '--', '126.0', '0.31', '--', '--', '1.00', '6.20', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。<br>\r\n2、锅水碱度偏高，应适当加药以调控水 碱度；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(432, '广东英超陶瓷有限公司', '清远市清新县禾云镇', '钟刚', '钟刚', '13535896306', '1人持证', '--', '--', '锅外化学处理', '-- t/h   4#', '汽包', '--', '--', '--', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.43', '0.40', '1.00', '--', '24.36', '2411', '65.00', '46.00', '12.20', '--', '--', '0.45', '3444', '438.0', '5.50', '0.46', '20.50', '0.41', '9.70', '2.00', '2.10', '--', '--', '--', '126.0', '0.31', '--', '--', '1.00', '6.20', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。<br>\r\n2、锅水碱度偏高，应适当加药以调控水 碱度；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(433, '广东英超陶瓷有限公司', '清远市清新县禾云镇', '钟刚', '钟刚', '13535896306', '1人持证', '--', '--', '锅外化学处理', '-- t/h   3#', '汽包', '--', '--', '--', '有', '无', '21704418002010120008', '容1LC粤RK3009', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.43', '0.40', '1.00', '--', '24.36', '2705', '65.00', '47.00', '12.20', '--', '--', '0.43', '3864', '430.0', '62.91', '0.47', '20.50', '0.41', '9.70', '2.00', '2.10', '--', '--', '--', '126.0', '0.31', '--', '--', '1.00', '6.20', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。<br>\r\n2、锅水碱度偏高，应适当加药以调控水 碱度；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(434, '清远市天域陶瓷有限公司', '清新县禾云镇云龙陶瓷产业基地B区2号', '刘建新', '刘建新', '15875700790', '1人持证', '/', '--', '流动床', '30 t/h    1#', '汽包', 'Φ3800', '-- t/h(MW)', '0.3 MPa(℃)', '有', '无', '21704418002010010022', '容1LE粤RK3002', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.29', '0.20', '1.00', '--', '36.12', '2167', '35.50', '26.50', '12.10', '--', '--', '0.32', '3096', '204.0', '10.62', '0', '4.32', '0.66', '7.60', '204.0', '2.00', '--', '--', '--', '924.0', '0.91', '--', '--', '241.0', '7.60', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。<br>\r\n2、锅水碱度偏高，应适当加药以调控水 碱度；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(435, '清远市天域陶瓷有限公司', '清新县禾云镇云龙陶瓷产业基地B区2号', '刘建新', '刘建新', '15875700790', '1人持证', '/', '--', '流动床+加药', '30 t/h    2#', '汽包', 'Φ100', '-- t/h(MW)', '0.3 MPa(℃)', '有', '无', '21704418002010010020', '容1LE粤RK3001', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.29', '0.20', '1.00', '--', '36.12', '1588', '24.60', '18.90', '11.90', '--', '--', '0.33', '2268', '208.0', '7.63', '＞10', '4.32', '0.66', '7.60', '204.0', '2.00', '--', '--', '--', '924.0', '0.91', '--', '--', '241.0', '7.60', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(436, '清远市坚瓷陶瓷有限公司', '清新县禾云镇云龙陶瓷产业基地A1-2区', '李生', '李生', '13318339963', '1人持证', '--', '--', '锅外化学处理', '30.0 t/h    1#', '汽包', 'Φ1000×8.0×2346', '--  t/h(MW)', '0.30 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.23', '0.20', '1.00', '--', '26.88', '1940', '23.30', '21.20', '11.90', '--', '--', '0.39', '2772', '376.0', '5.16', '0.27', '2.46', '0.18', '7.00', '1.00', '0.20', '--', '--', '--', '25.68', '0.26', '--', '--', '1.00', '9.00', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(437, '清远市俊成陶瓷有限公司', '清新禾云镇云龙陶瓷产业基地', '区文昌', '区文昌', '13902817522', '1人持证', '雄广水处理设备厂', '/', '锅外化学处理', '30.0 t/h    3#', '汽包', 'Φ1500×12.0×2900', '-- t/h(MW)', '0.02 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.97', '0.50', '16.00', '--', '84.00', '2167', '28.10', '21.00', '12.10', '--', '--', '0.26', '3096', '348.0', '6.23', '6.10', '20.50', '0.000', '9.10', '20.00', '1.60', '--', '--', '--', '319.2', '0.000', '--', '--', '19.00', '7.60', '基本合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(438, '清远市俊成陶瓷有限公司', '清新禾云镇云龙陶瓷产业基地', '区文昌', '区文昌', '13902817522', '1人持证', '雄广水处理设备厂', '/', '锅外化学处理', '30.0 t/h    4#', '汽包', 'Φ1200×8.0×2600', '-- t/h(MW)', '0.3 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.97', '0.50', '16.00', '--', '84.00', '1806', '21.20', '15.60', '11.80', '--', '--', '0.22', '2580', '248.0', '7.28', '8.06', '20.50', '0.000', '9.10', '20.00', '1.60', '--', '--', '--', '319.2', '0.000', '--', '--', '1.9', '7.60', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(439, '清城区石角镇田心恒生饲料加工厂', '清城区石角镇田心村委会', '欧金轩', '欧金轩', '13923174725', '无证', '中兴永雄水处理设备厂', '/', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A II', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006070003', '锅粤RO0597', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.03', '1.00', '21.00', '--', '129.0', '1686', '16.20', '14.00', '11.70', '5.18', '--', '0.28', '2408', '486.0', '3.47', '4.97', '2.39', '0.030', '6.20', '23.00', '1.00', '--', '--', '--', '137.6', '0.021', '--', '--', '21.00', '6.20', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', '1361934062'),
(440, '清远市俊成陶瓷有限公司', '清新禾云镇云龙陶瓷产业基地', '区文昌', '区文昌', '13902817522', '1人持证', '雄广水处理设备厂', '/', '锅外化学处理', '30.0 t/h    1#', '汽包', 'Φ1500×12.0×2900', '-- t/h(MW)', '0.02 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.97', '0.50', '16.00', '--', '84.00', '1084', '10.80', '8.00', '11.30', '--', '--', '0.19', '1548', '120.0', '9.03', '＞10', '20.50', '0.000', '9.10', '20.00', '1.60', '--', '--', '--', '319.2', '0.000', '--', '--', '19.00', '7.60', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(441, '广东昊晟陶瓷有限公司', '清新县禾云工业园', '余总', '余总', '13926198586', '1人持证', '--', '--', '锅外化学处理', '20.0 t/h   4#', '煤气发生炉', 'Φ3600×20.0×2500', '-- t/h(MW)', '0.02 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.33', '2.90', '2.00', '--', '122.6', '1638', '5.60', '5.00', '10.90', '--', '--', '0.11', '2340', '＞1000', '1.64', '5.93', '2.56', '0.50', '7.10', '56.00', '2.80', '--', '--', '--', '296.4', '0.64', '--', '--', '74.00', '7.10', '不合格', '有盐水进入炉内，应更换炉水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(442, '广东昊晟陶瓷有限公司', '清新县禾云工业园', '余总', '余总', '13926198586', '1人持证', '--', '--', '锅外化学处理', '30.0 t/h   3#', '煤气发生炉', 'Φ1250×8.0×6600', '-- t/h(MW)', '0.30 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.33', '2.90', '2.00', '--', '122.6', '2457', '5.30', '4.80', '10.80', '--', '--', '0.070', '3510', '＞1000', '2.46', '5.93', '2.56', '0.50', '7.10', '56.00', '2.80', '--', '--', '--', '296.4', '0.64', '--', '--', '74.00', '7.10', '不合格', '有盐水进入发生炉，应更换炉水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(443, '广东昊晟陶瓷有限公司', '清新县禾云工业园', '余总', '余总', '13926198586', '1人持证', '--', '--', '锅外化学处理', '30.0 t/h   1#', '煤气发生炉', 'Φ1000×8.0×2630', '-- t/h(MW)', '0.30 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.33', '2.90', '2.00', '--', '122.6', '2526', '5.60', '5.00', '10.90', '--', '--', '0.070', '3608', '＞1000', '2.53', '5.93', '2.56', '0.50', '7.10', '56.00', '2.80', '--', '--', '--', '296.4', '0.64', '--', '--', '74.00', '7.10', '不合格', '有盐水进入煤气发生炉，应更换炉水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(444, '广东昊晟陶瓷有限公司', '清新县禾云工业园', '余总', '余总', '13926198586', '1人持证', '--', '--', '锅外化学处理', '20.0 t/h   5#', '煤气发生炉', 'Φ3600×20.0×2500', '-- t/h(MW)', '0.02 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.33', '2.90', '2.00', '--', '122.6', '2020', '4.00', '3.20', '10.50', '--', '--', '0.048', '2886', '＞1000', '2.02', '5.93', '2.56', '0.50', '7.10', '56.00', '2.80', '--', '--', '--', '296.4', '0.64', '--', '--', '74.00', '7.10', '不合格', '有盐水进入煤气发生炉，应更换炉水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(445, '清远市港龙陶瓷有限公司', '清新县禾云镇云龙工业园C-6号', '王老板', '王老板', '18998610888', '1人持证', '--', '--', '锅外化学处理+加药', '30.0 t/h   2#', '煤气发生炉', 'Φ1250×8.0×6630', '-- t/h(MW)', '0.30 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.87', '0.80', '16.00', '--', '374.4', '1693', '6.00', '5.40', '11.40', '--', '--', '0.11', '2418', '242.0', '7.00', '4.31', '2.95', '0.52', '8.30', '10.00', '1.30', '--', '--', '--', '163.8', '--', '--', '--', '--', '--', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(446, '清远市港龙陶瓷有限公司', '清新县禾云镇云龙工业园C-6号', '王老板', '王老板', '18998610888', '1人持证', '--', '--', '锅外化学处理+加药', '30.0 t/h   3#', '煤气发生炉', 'Φ1000×8.0×2610', '-- t/h(MW)', '0.25 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.87', '0.80', '16.00', '--', '374.4', '1256', '8.20', '6.80', '11.50', '--', '--', '0.17', '1794', '162.0', '7.75', '6.58', '2.95', '0.52', '8.30', '10.00', '1.30', '--', '--', '--', '163.8', '--', '--', '--', '--', '--', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(447, '清远市宝仕马陶瓷有限公司', '清新县禾云镇云龙陶瓷产业基地', '潘站长', '潘站长', '13923150825', '1人持证', '--', '--', '流动床', '4 t/h   2#', '煤气发生炉+加药', '--', '4  t/h(MW)', '-- MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.72', '0.50', '3.00', '--', '37.44', '2785', '8.80', '7.60', '11.00', '--', '--', '0.092', '3978', '＞1000', '2.78', '0.30', '2.94', '0.50', '11.10', '3.00', '6.50', '--', '--', '--', '1014', '--', '--', '--', '--', '--', '不合格', '有盐水进入煤气发生炉，应更换炉水，并注意炉水氯离子的监控。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(448, '清远市宝仕马陶瓷有限公司', '清新县禾云镇云龙陶瓷产业基地', '潘站长', '潘站长', '13923150825', '1人持证', '--', '--', '流动床+加药', '4 t/h   1#', '煤气发生炉', '--', '4  t/h(MW)', '-- MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.72', '0.50', '3.00', '--', '37.44', '2785', '9.50', '8.20', '11.10', '--', '--', '0.10', '3978', '＞1000', '2.78', '0.30', '2.94', '0.50', '11.10', '3.00', '6.50', '--', '--', '--', '1014', '--', '--', '--', '--', '--', '不合格', '有盐水进入煤气发生炉，应更换炉水，并加强炉水氯离子的监控。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(449, '清远市宝仕马陶瓷有限公司', '清新县禾云镇云龙陶瓷产业基地', '潘站长', '潘站长', '13923150825', '1人持证', '--', '--', '流动床+加药', '4 t/h   ', '蒸汽锅炉', 'SZW4-1.25-A I', '4  t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011080001', '锅粤RK1054', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.72', '0.50', '3.00', '--', '37.44', '655.2', '10.30', '9.00', '11.50', '--', '--', '0.47', '936.0', '234.0', '2.80', '1.30', '2.94', '0.50', '11.10', '3.00', '6.50', '--', '--', '--', '1014', '--', '--', '--', '--', '--', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(452, '广东汇翔陶瓷有限公司', '清新县禾云镇云龙工业区', '康旺达', '康旺达', '18676305600', '1人持证', '--', '--', '锅外化学处理+加药', '30.0 t/h  S11027 3#', '煤气发生炉汽包', '--', '--', '--', '有', '无', '21704418002012030006', '容1LC粤RK4327', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.87', '0.80', '1.00', '--', '66.30', '2020', '79.60', '52.80', '12.30', '--', '--', '0.51', '2886', '62.00', '32.58', '5.08', '6.03', '0.12', '9.50', '3.00', '3.00', '--', '--', '--', '163.8', '--', '--', '--', '--', '--', '不合格', '1、锅水碱度偏高，应适当加药以调控水 碱度；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(451, '广东汇翔陶瓷有限公司', '清新县禾云镇云龙工业区', '康旺达', '康旺达', '18676305600', '1人持证', '--', '--', '锅外化学处理', '30.0 t/h  S11042 2#', '煤气发生炉汽包', '--', '--', '--', '有', '无', '21704418002012030005', '容1LC粤RK4326', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.87', '0.80', '1.00', '--', '66.30', '1529', '52.90', '36.00', '12.20', '--', '--', '0.50', '2184', '46.00', '33.24', '6.98', '6.03', '0.12', '9.50', '3.00', '3.00', '--', '--', '--', '163.8', '--', '--', '--', '--', '--', '不合格', '1、锅水碱度偏高，应适当加药以调控水 碱度；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(453, '广东汇翔陶瓷有限公司', '清新县禾云镇云龙工业区', '康旺达', '康旺达', '18676305600', '1人持证', '--', '--', '锅外化学处理', '30.0 t/h  S11045 1#', '煤气发生炉汽包', '--', '--', '--', '有', '无', '21704418002012030004', '容1LC粤RK4325', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.87', '0.80', '1.00', '--', '66.30', '1529', '52.80', '36.20', '12.20', '--', '--', '0.51', '2184', '46.00', '33.24', '6.98', '6.03', '0.12', '9.50', '3.00', '3.00', '--', '--', '--', '163.8', '--', '--', '--', '--', '--', '不合格', '1、锅水碱度偏高，应适当加药以调控水 碱度；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(455, '英德市宝江水泥有限责任公司', '石灰铺镇', '苏东奕', '苏东奕', '13902352309', '1人持证', '--', '--', '除盐水', '8 t/h   窑头', '余热锅炉', 'QC175/350-15-1.6/330', '15 t/h(MW)', '1.6 MPa(℃)', '有', '无', '11204418002010110004', '锅粤RP1034', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.61', '3.10', '3.00', '--', '180.6', '36.72', '0.50', '0.30', '9.40', '1.01', '--', '0.11', '52.46', '1.00', '36.72', '0', '2.15', '0.030', '6.90', '1.00', '0.20', '--', '--', '--', '5.16', '0.010', '--', '--', '1.00', '6.90', '不合格', '1、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(456, '清远市贝斯特瓷业有限公司', '清远市贝斯特瓷业有限公司', '黄从高', '黄从高', '15813221965', '1人持证', '--', '--', '锅外化学处理', '20.0 t/h  2#', '煤气发生炉', 'Φ4000/4400×22/14×3160', '--', '0.02 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.37', '0.30', '1.00', '--', '37.80', '258.9', '2.50', '2.00', '9.80', '--', '--', '0.23', '369.8', '12.00', '21.58', '9.09', '3.81', '1.34', '7.30', '1.00', '1.30', '--', '--', '--', '92.40', '1.30', '--', '--', '1.00', '7.30', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(457, '清远市贝斯特瓷业有限公司', '清远市贝斯特瓷业有限公司', '黄从高', '黄从高', '15813221965', '1人持证', '--', '--', '锅外化学处理', '20.0 t/h  1#', '煤气发生炉', 'Φ4000/4400×22/14×3160', '--', '0.02 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.37', '0.30', '1.00', '--', '37.80', '403.3', '4.20', '3.40', '10.30', '--', '--', '0.26', '576.2', '18.00', '22.40', '5.88', '3.81', '1.34', '7.30', '1.00', '1.30', '--', '--', '--', '92.40', '1.30', '--', '--', '1.00', '7.30', '合格', '--', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(458, '清远市振威皮革有限公司', '城区环城路拉尾岗157号', '周军华', '周军华', '3322098', '无人持证', '伦敦水处理设备厂', '--', '双柱浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A', '--', '1.25 MPa(℃)', '有', '无', '11204418002006080002', '锅粤RA0215', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.02', '1.02', '7.00', '--', '111.0', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '1.94', '6.30', '15.00', '1.30', '--', '--', '--', '130.0', '2.13', '--', '--', '6.00', '6.40', '不合格', '1、给水硬度偏高，软水器加盐再生；<br>\r\n2、锅水取样器损坏，无法取样，必须维修。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(459, '清远市清城区振威皮革厂清新分厂', '黄坑太和工业区', '周军华', '周老板', '3322098', '无人持证', '英永工业水处理设备厂', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZG4-1.25-A', '-- t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040149', '锅粤RK0033', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.89', '1.20', '12.00', '--', '110.0', '1246', '1.20', '0.90', '9.00', '--', '--', '0.019', '1780', '360.0', '3.46', '>10', '--', '0.74', '6.70', '72.00', '1.00', '--', '--', '--', '225.0', '0.22', '--', '--', '15.00', '6.90', '不合格', '1、给水硬度偏高，软水器应定期再生。\r\n2、锅水碱度和PH值严重偏低，不利于锅炉防腐防垢，必须重视锅炉水处理工作。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(460, '英德市云超聚合材料有限公司', '英德九龙镇大陂村', '黄云超', '黄云超', '13316137350', '无证', '--', '--', '浮动床', '4t/h', '蒸汽锅炉', 'WNS4-1.25-Y', '4 t/h(MW)', '1.25MPa(℃)', '有', '无', '11204418002008010009', '锅粤R00432', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.78', '0.70', '2.00', '--', '47.30', '2829', '20.60', '18.60', '11.70', '11.55', '--', '2.83', '4042', '>1000', '0.23', '1.01', '3.66', '0.56', '6.80', '10.00', '0.5', '--', '--', '--', '47.30', '0.99', '--', '--', '23.00', '6.70', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>\r\n2、有盐水进入锅炉，应更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(461, '英德市英城新雄新型建筑材料厂', '英德市英城下街咎洞沥（英桥架校旁）', '卜老板', '--', '13602923480', '1人持证', '--', '--', '锅炉处理', '6t/h', '蒸汽锅炉', 'SZL(G)6-1.6-BMF', '6t/h(MW)', '1.6MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.71', '1.30', '2.00', '--', '103.2', '903.0', '7.10', '6.70', '11.40', '4.35', '--', '0.28', '1290', '118.0', '7.65', '8.26', '2.26', '1.80', '6.60', '9.00', '1.30', '--', '--', '--', '116.1', '1.82', '--', '--', '4.00', '6.60', '不合格', '1、给水硬度偏高，软水器应加盐再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(464, '巧口（英德）食品有限公司', '西牛镇鲜水管理区', '吴浅洲', '吴浅洲', '2871633', '1人持证', '--', '--', '浮动床', '6t/h', '蒸汽锅炉', 'SZL6-1.25-W Ⅱ', '6t/h(MW)', '1.25MPa(℃)', '有', '无', '11204418002009060005', '锅粤R00641', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.48', '1.60', '35.00', '--', '180.6', '2107', '15.20', '14.10', '11.60', '4.18', '--', '0.25', '3010', '944.0', '2.23', '8.50', '2.85', '2.19', '6.50', '74.00', '1.60', '--', '--', '--', '352.6', '2.58', '--', '--', '36.00', '6.50', '不合格', '1、给水硬度偏高，氯根未能冲洗干净，加大设备清洗水量，必须正确操作水处理设备。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(463, '英德市大信茧丝绸有限公司', '大湾镇英建村', '池志院', '池志院', '13553936656', '无证', '雄广水处理设备厂', '--', '除盐水', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A Ⅱ', '6t/h(MW)', '1.25MPa(℃）', '有', '无', '11204418002009070008', '锅粤R00654', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.14', '2.30', '3.00', '--', '150.5', '2167', '24.20', '19.80', '11.80', '12.51', '--', '0.28', '3096', '>1000', '0.28', '8.34', '3.78', '0.41', '7.00', '77.00', '1.40', '--', '--', '--', '387.0', '0.14', '--', '--', '3.00', '7.00', '不合格', '1、给水硬度偏高，氯根未能冲洗干净，加大设备清洗水量，必须正确操作水处理设备。\r\n3、有盐水进入锅炉，必须更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(465, '英德市鸿德食品有限公司', '西牛镇', '郭伙敏', '郭伙敏', '13602931435', '无证', '英永工业水处理设备有限公司', '--', '浮动床', '2t/h', '蒸汽锅炉', 'DZH2-0.7-AⅡ', '2t/h(MW)', '0.7MPa(℃)', '有', '无', '11204418002007030010', '锅粤RP0285', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.78', '3.00', '3.00', '--', '187.5', '451.5', '0.50', '0.30', '9.10', '--', '--', '0.01', '645.0', '68.00', '6.64', '4.62', '6.31', '3.76', '7.50', '3.00', '3.20', '--', '--', '--', '189.2', '3.75', '--', '--', '3.00', '7.50', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(466, '广东清远广英水泥有限公司', '清新县石潭镇', '游锦堂', '郑龙锦', '13727126712', '1人持证', '江苏津宜工业装备有限公司', '--', '反渗透', '20t/h  三线SP', '余热锅炉', 'QC220/360-20.2-0.9/340', '20.2t/h(MW)', '0.9MPa(℃)', '有', '有', '11204418002012090005', '锅粤RK3237', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.99', '0.80', '1.00', '--', '1.72', '270.9', '4.00', '3.70', '11.00', '17.56', '--', '0.50', '387.0', '3.00', '90.30', '>10', '2.18', '0.000', '7.80', '1.00', '0.30', '--', '--', '--', '3.44', '0.000', '--', '--', '1.00', '6.30', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(467, '广东清远广英水泥有限公司', '清新县石潭镇', '游锦堂', '郑龙锦', '13727126712', '1人持证', '江苏津宜工业装备有限公司', '--', '反渗透', '20t/h  3#AQC', '余热锅炉', 'QC340/320-26-0.9/310', '26t/h(MW)', '0.9MPa(℃)', '有', '有', '11204418002012090005', '锅粤RK3236', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.99', '0.80', '1.00', '--', '1.72', '240.8', '4.10', '6.70', '11.10', '17.65', '--', '0.55', '344.0', '3.00', '80.27', '>10', '2.18', '0.000', '7.80', '1.00', '0.30', '--', '--', '--', '3.44', '0.000', '--', '--', '1.00', '6.30', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(468, '英德市海淋种植有限公司', '黄花镇克岩啤头村', '余沃占', '余沃占', '2561178', '无证', '--', '--', '浮动床', '4t/h', '蒸汽锅炉', 'DZG4-1.25-A(Ⅱ)', '4t/h(MW)', '1.25MPa(℃)', '有', '无', '11204418002009040006', '锅粤R00622', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '4.19', '4.00', '8.00', '--', '336.5', '782.6', '0.70', '0.50', '9.70', '--', '--', '0.02', '1118', '184.0', '4.25', '4.54', '2.08', '5.51', '5.80', '8.00', '3.80', '--', '--', '--', '326.8', '4.75', '--', '--', '7.00', '5.50', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(469, '清新县禾云镇龙腾鞋底加工厂', '清新禾云镇开发区', '吴传坤', '吴传坤', '13729615927', '1人持证', '雄广水处理设备厂', '/', '浮动床', '2t/h', '蒸汽锅炉', 'DZS2-1.25-M', '2t/h(MW)', '1.25MPa(℃)', '有', '无', '11204418002007050004', '锅粤RK0194', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.25', '0.20', '1.00', '--', '19.78', '31.85', '0.30', '0.20', '9.50', '--', '--', '0.12', '45.58', '1.00', '31.85', '0', '4.05', '0.11', '6.70', '1.00', '0.20', '--', '--', '--', '12.04', '0.23', '--', '--', '1.00', '6.70', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度和PH值严重偏低，不利于锅炉防腐防垢，必须重视锅炉水处理工作。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(470, '清新县禾云镇创兴灰砂砖厂', '清新县禾云镇鹿田村委会木塱村七队崩岗坪', '郑章冠', '郑章冠', '5673328', '无证', '雄广水处理设备有限公司', '--', '浮动床', '4t/h', '蒸汽锅炉', 'DZL4-1.25-AⅡ', '4.0t/h(MW)', '1.25', '有', '无', '11204418002009030004', '锅粤RO0609', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.16', '0.20', '1.00', '--', '24.94', '457.5', '6.70', '6.10', '10.40', '2.15', '--', '0.48', '653.6', '58.00', '7.89', '1.75', '2.66', '0.000', '6.90', '1.00', '0.30', '--', '--', '--', '24.94', '0.000', '--', '--', '1.00', '6.80', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(471, '清新海螺水泥有限公司', '清新县石潭镇', '高祥伟', '高祥伟', '13750136260', '2人持证', '江苏恒博环境工程设备有限公司', '--', '除盐水', '20t/h  A#PH', '余热锅炉', 'QC206/360-18-0.8/345', '18t/h(MW)', '0.8MP(℃)', '有', '有', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.76', '3.10', '3.00', '--', '172.0', '46.48', '0.60', '0.40', '9.40', '17.02', '--', '0.17', '66.40', '14.00', '3.32', '7.69', '3.33', '0.000', '8.10', '1.00', '0.20', '--', '--', '--', '7.20', '0.000', '--', '--', '1.00', '7.10', '不合格', '1、锅水pH 值偏低，应适当控制排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(472, '清新海螺水泥有限公司', '清新县石潭镇', '高祥伟', '高祥伟', '13750136260', '2人持证', '江苏恒博环境工程设备有限公司', '--', '除盐水', '20t/h  B#PH', '余热锅炉', 'QC206/360-18-0.8/345', '18t/h(MW)', '0.8MPa(℃)', '有', '有', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.76', '3.10', '3.00', '--', '172.0', '64.40', '0.70', '0.40', '9.80', '25.62', '--', '0.062', '92.00', '50.00', '1.29', '2.04', '3.33', '0.000', '8.10', '1.00', '0.20', '--', '--', '--', '7.20', '0.000', '--', '--', '1.00', '7.10', '基本合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(473, '清新海螺水泥有限公司', '清新县石潭镇', '高祥伟', '高祥伟', '13750136260', '2人持证', '江苏恒博环境工程设备有限公司', '--', '除盐水', '20t/h  A#AQC', '余热锅炉', 'QC397/360-40-0.92/308', '40t/h(MW)', '0.92MP(℃)', '有', '有', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.76', '3.10', '3.00', '--', '172.0', '42.56', '0.70', '0.40', '9.80', '20.97', '--', '0.094', '60.80', '11.00', '3.87', '10', '3.33', '0.000', '8.10', '1.00', '0.20', '--', '--', '--', '7.20', '0.000', '--', '--', '1.00', '7.10', '基本合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(474, '清新海螺水泥有限公司', '清新县石潭镇', '高祥伟', '高祥伟', '13750136260', '2人持证', '江苏恒博环境工程设备有限公司', '--', '除盐水', '20t/h  B#AQC', '余热锅炉', 'QC397/360-40-0.92/308', '40t/h(MW)', '0.92MP(℃)', '有', '有', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.76', '3.10', '3.00', '--', '172.0', '49.28', '0.80', '0.50', '10.10', '14.01', '--', '0.16', '70.40', '13.00', '3.79', '8.33', '3.33', '0.000', '8.10', '1.00', '0.20', '--', '--', '--', '7.20', '0.000', '--', '--', '1.00', '7.10', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(475, '恒大盛宇(清新)置业有限公司', '清新县龙颈镇珠坑虚新街6号', '董海威', '董海威', '13926615521', '1人持证', '--', '--', '锅外化学处理', '2t/h', '蒸汽锅炉', 'LSS1.0-1.0-Y', '1.0t/h(MW)', '1.0MPa(℃)', '有', '无', '11304418002011070002', '锅粤RK1050', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.50', '0.40', '6.00', '--', '40.80', '616.0', '6.50', '6.00', '11.40', '1.15', '--', '0.36', '880.0', '92.00', '6.70', '2.22', '5.98', '0.000', '7.30', '2.00', '0.40', '--', '--', '--', '34.40', '0.000', '--', '--', '1.00', '6.90', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(476, '广东清远广英水泥有限公司', '清新县石潭镇', '游锦堂', '郑龙锦', '13727126712', '1人持证', '江苏津宜工业装备有限公司', '--', '反渗透', '20t/h  1#AQC', '余热锅炉', 'QC35.5/360-3.0-1.25/340', '3.0t/h(MW)', '1.25MPa(℃)', '有', '有', '11104418002011110003', '锅粤RK3204', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.55', '3.40', '3.00', '--', '180.0', '397.6', '7.10', '6.70', '11.50', '4.71', '--', '0.63', '568.0', '6.00', '66.27', '>10', '3.33', '0.000', '7.70', '1.00', '0.30', '--', '--', '--', '12.80', '0.000', '--', '--', '1.00', '6.50', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(477, '广东清远广英水泥有限公司', '清新县石潭镇', '游锦堂', '郑龙锦', '13727126712', '1人持证', '江苏津宜工业装备有限公司', '--', '反渗透', '20t/h  2#AQC', '余热锅炉', 'QC115/360-9.8-1.25/340', '9.8t/h(MW)', '0.9MPa(℃)', '有', '有', '11104418002011110001', '锅粤RK3202', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.55', '3.40', '3.00', '--', '180.0', '347.2', '6.70', '6.40', '11.40', '16.24', '--', '0.70', '496.0', '6.00', '57.87', '>10', '3.33', '0.000', '7.70', '1.00', '0.30', '--', '--', '--', '12.80', '0.000', '--', '--', '1.00', '6.50', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(478, '广东清远广英水泥有限公司', '清新县石潭镇', '郑龙锦', '郑龙锦', '13727126712', '1人持证', '江苏津宜工业装备有限公司', '--', '反渗透', '20t/h  1#SP', '余热锅炉', 'QC63.1/350-5.6-1.25/330', '5.6t/h(MW)', '1.25MPa(℃)', '有', '有', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.55', '3.40', '3.00', '--', '180.0', '347.2', '6.50', '6.10', '11.40', '14.99', '--', '0.66', '496.0', '7.00', '49.60', '>10', '3.33', '0.000', '7.70', '1.00', '0.30', '--', '--', '--', '12.80', '0.000', '--', '--', '1.00', '6.50', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(479, '广东清远广英水泥有限公司', '清新县石潭镇', '游锦堂', '郑龙锦', '13727126712', '1人持证', '江苏津宜工业装备有限公司', '--', '反渗透', '20t/h  2#SP', '余热锅炉', 'QC137/340-11.5-1.25/320', '11.5t/h(MW)', '1.25MPa(℃)', '有', '有', '11104418002011110004', '锅粤RK3205', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.55', '3.40', '3.00', '--', '180.0', '448.0', '9.20', '8.70', '11.60', '11.71', '--', '0.73', '640.0', '8.00', '56.00', '>10', '3.33', '0.000', '7.70', '1.00', '0.30', '--', '--', '--', '12.80', '0.000', '--', '--', '1.00', '6.50', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(480, '清新县浸潭灰沙砖厂', '清新浸潭大湾岗管理区', '叶常亮', '叶常亮', '13729677717', '无证', '建业水处理设备厂', '--', '浮动床', '4t/h', '蒸汽锅炉', 'DZL4-1.57-A Ⅱ', '4t/h(MW)', '1.57MPa(℃)', '有', '无', '11204418002008070010', '锅粤R00505', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.36', '2.80', '3.00', '--', '164.0', '4480', '6.60', '6.00', '11.40', '1.05', '--', '0.048', '6400', '>1000', '4.48', '0', '8.15', '3.46', '4.30', '>1000', '1.60', '--', '--', '--', '>1.0×10000', '3.47', '--', '--', '26.00', '6.10', '不合格', '1、给水硬度高，给水池已进入盐水，应检查阀门是否渗漏。\r\n2、有盐水进入锅炉，必须更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(481, '清远先导稀有金属有限公司', '清新县禾云镇工业区', '吴北松', '吴北松', '13682441704', '1人持证', '--', '--', '浮动床', '3t/h', '蒸汽锅炉', 'WNS3-1.25-Y(Q)', '3t/h(MW)', '1.25MPa(℃)', '有', '无', '11204418002010060011', '锅粤RK1018', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.95', '0.20', '2.00', '--', '18.72', '516.6', '8.00', '7.20', '10.50', '3.15', '--', '0.50', '738.0', '30.00', '17.22', '3.45', '3.71', '0.000', '7.50', '1.00', '0.20', '--', '--', '--', '18.72', '0.11', '--', '--', '1.00', '7.10', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL);
INSERT INTO `oa_report_content` (`report_id`, `company_name`, `azdz`, `aqglrr`, `lxr`, `lxdh`, `zyrrczqh`, `zzdw`, `zczh`, `sclfc`, `cl`, `pz`, `xh`, `edzfl`, `edyl`, `cylqq`, `grq`, `sbdm`, `sydjzh`, `jyyj`, `ys_yd`, `ys_zj`, `ys_llz`, `ys_sd`, `ys_dd`, `ws_rjgxw`, `ws_zjd`, `ws_pjd`, `ws_phz`, `ws_po`, `ws_so`, `ws_xdjd`, `ws_ddl`, `ws_llz`, `ws_glbgdb`, `ws_pwl`, `gs_sd`, `gs_yd`, `gs_ph`, `gs_llz`, `gs_zj`, `gs_rjy`, `gs_qt`, `gs_y`, `gs_ddl`, `rhs_yd`, `rhs_qt`, `rhs_y`, `rhs_llz`, `rhs_phz`, `jyjl`, `jyyjhjy`, `bak`, `jyjghzzh`, `jyjghzrq`) VALUES
(482, '清新县龙基环保砖有限公司', '龙颈镇石岗村石涌坪厂', '黎生', '黎生', '13553963506', '无证', '杏坛水处理设备厂', '--', '浮动床', '4t/h', '蒸汽锅炉', 'DZG4-1.25-M', '4.0t/h(MW)', '1.25MPa(℃)', '无', '无', '11204418002008090012', '锅粤R00527', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.23', '0.20', '1.00', '--', '10.14', '77.49', '0.60', '0.40', '9.50', '--', '--', '0.10', '110.7', '10.00', '7.75', '>10', '2.25', '0.18', '6.40', '1.00', '0.40', '--', '--', '--', '44.46', '0.18', '--', '--', '1.00', '6.60', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(483, '清新县振业模具钢制品有限公司', '清新县禾云镇太墩坪', '许海平', '许海平', '5674333', '1人持证', '阿图祖', '--', '固定床', '6t/h', '蒸汽锅炉', 'SZL6-1.25-A Ⅱ', '6.0t/h(MW)', '1.25MPa(℃)', '有', '无', '11204418002009090018', '锅粤R00681', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.33', '0.30', '1.00', '--', '24.96', '63.14', '0.80', '0.50', '9.10', '--', '--', '0.13', '90.20', '2.00', '31.57', '>10', '3.65', '0.33', '7.80', '1.00', '0.30', '--', '--', '--', '20.28', '0.21', '--', '--', '1.00', '7.90', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(484, '清远市万豪特陶瓷有限公司', '清新县禾云镇云龙工业区', '欧厂长', '欧厂长', '15362768778', '无人持证', '--', '--', '--', '--', '蒸汽锅炉', 'Φ4000/4400×22/14', '--t/h(MW)', '0.2a(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.16', '1.60', '1.00', '--', '89.70', '1263', '25.00', '22.10', '11.90', '--', '--', '0.61', '1804', '23.00', '54.91', '4.54', '2.89', '0.16', '8.30', '1.00', '2.40', '--', '--', '--', '128.7', '0.16', '--', '--', '1.00', '8.20', '不合格', '应加装水处理设备，并适当进行加药处理。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(485, '清远市广州后花园有限公司（清远美林湖酒店）', '清城区石角镇假日酒店', '何伟生', '何伟生', '3733104', '1人持证', '--', '--', '浮动床', '3 t/h', '蒸汽锅炉', 'WNS1-1.0-YQ', '1.0 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002011070004', '锅粤RA1056', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.02', '1.30', '8.00', '--', '120.4', '1204', '17.40', '16.20', '11.70', '7.68', '--', '0.50', '1720', '150.0', '8.03', '4.90', '2.28', '0.000', '6.80', '7.00', '1.20', '--', '--', '--', '125.6', '0.000', '--', '--', '8.00', '6.70', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(486, '清远加多宝草本植物科技有限公司', '佛冈县汤塘镇荣埔工业区', '郭翠纯', '郭翠纯', '15920483699', '1人持证', '阿图祖', '--', '浮动床', '15t/h', '蒸汽锅炉', 'SHS15-1.25-J', '15t/h(MW)', '1.25MPa(℃)', '有', '无', '11204418002010120005', '锅粤RM1014', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.31', '0.30', '3.00', '--', '29.24', '530.0', '3.40', '2.60', '11.30', '1.58', '--', '0.14', '756.8', '46.00', '11.52', '2.22', '2.15', '0.030', '7.00', '1.00', '0.30', '--', '--', '--', '9.68', '0.041', '--', '--', '3.00', '6.90', '不合格', '1、锅水碱度偏低，应适当控制排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(487, '清远市益丰染织有限公司', '清远市高新区7号小区', '夏雄飞', '夏雄飞', '13926203239', '1人', '顺德正康水处理设备厂', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'SZL6-1.25-A II', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006080005', '锅粤RA0218', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.60', '1.30', '6.00', '--', '125.0', '1260', '1.10', '0.90', '10.10', '0.85', '--', '0.022', '1800', '326.0', '3.86', '1.88', '2.28', '2.60', '6.10', '6.00', '1.30', '--', '--', '--', '130.0', '--', '--', '--', '--', '--', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>\r\n2、水处理损坏，尽快维修', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(488, '清远市百盛染织有限公司', '清远市高新技术开发区', '陈浩东', '陈浩东', '13926687886', '1人', '容桂中兴工业公司水处理设备厂', '--', '流动床', '4.0  t/h', '蒸汽锅炉', 'DZL6.0-1.25-AII', '6.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002120444', '锅粤R10198', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.56', '1.20', '6.00', '--', '130.0', '1540', '15.40', '10.60', '11.60', '5.25', '--', '0.15', '2200', '163.0', '9.45', '0.62', '2.28', '0.030', '7.00', '1.00', '0.80', '--', '--', '--', '82.00', '0.000', '--', '--', '7.00', '6.90', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(489, '富元（清新）服饰有限公司', '清新县山塘镇工业区18号', '蔡科峰', '蔡科峰', '13413451938', '1人持证', '--', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'SZL6-1.25-A II', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002010110013', '锅粤RK1034', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.62', '0.50', '7.00', '--', '45.00', '1820', '18.20', '12.00', '11.70', '7.15', '--', '0.13', '2600', '322.0', '5.65', '2.55', '13.3', '1.27', '6.50', '8.00', '0.80', '--', '--', '--', '50.00', '--', '--', '--', '--', '--', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、给水浊度偏高，应注意给水箱的防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(490, '新益（清远）织染整有限公司', '清远市高新区二号区', '罗建筹', '罗建筹', '13679545923', '2人持证', '惠州宏格水处理设备厂', '/', '流动床', '30 t/h', '蒸汽锅炉', 'SHFX25-1.25-WI', '25 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002007030003', '锅粤RO0293', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.58', '1.20', '5.00', '--', '123.0', '1260', '14.20', '13.10', '11.50', '5.18', '--', '0.38', '1800', '96.00', '13.12', '7.86', '2.06', '0.086', '7.00', '7.00', '1.20', '--', '--', '--', '128.0', '0.11', '--', '--', '4.00', '7.00', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(491, '丽珠集团新北江制药股份有限公司', '城区新城七星岗', '叶飞', '叶飞', '13509264637', '2人持证', '顺德广容水处理设备厂', '--', '流动床', '10 t/h   2#', '蒸汽锅炉', 'CB600500150', '8 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002002040202', '锅粤R10064', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.60', '1.40', '7.00', '--', '150.0', '2100', '1.30', '0.90', '9.20', '0.95', '--', '0.010', '3000', '704.0', '2.98', '1.73', '2.25', '2.80', '7.10', '12.00', '1.10', '--', '--', '--', '17.00', '4.30', '--', '--', '192.0', '7.00', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(492, '丽珠集团新北江制药股份有限公司', '城区新城七星岗', '叶飞', '叶飞', '13509264637', '2人持证', '顺德广容水处理设备厂', '--', '流动床', '10 t/h   5#', '蒸汽锅炉', 'WNS8-1.25-YQ', '8 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002002040199', '锅粤R10061', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.60', '1.40', '7.00', '--', '150.0', '2800', '0.50', '0.30', '8.70', '--', '--', '0.0014', '4000', '>1000', '2.80', '1.21', '2.25', '2.80', '7.10', '12.00', '1.10', '--', '--', '--', '170.0', '4.30', '--', '--', '192.0', '7.00', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>\r\n2、有盐水进入锅炉，必须更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(493, '清远市裕成鞋材有限公司', '清远市高新区8号区（百嘉黄泥岭）', '谭溪', '谭溪', '15899682659', '1人持证', '雄广水处理设备厂', '--', '浮动床', '8 t/h', '蒸汽锅炉', 'DZL8-1.25-A II', '8 t/h', '1.25 MPa(℃)', '有', '无', '11204418002008110001', '锅粤R00553', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.54', '1.10', '9.00', '--', '150.0', '2940', '18.30', '17.10', '11.90', '6.15', '--', '0.22', '4200', '696.0', '4.22', '1.46', '25.70', '0.45', '7.10', '10.00', '0.70', '--', '--', '--', '105.0', '0.030', '--', '--', '9.00', '7.00', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(494, '清远建滔裕花园酒店有限公司（原丽晶国际大酒店）', '清远新城东B1小区', '钟曲东', '钟曲东', '13802892955', '1人持证', '阿图祖', '--', '锅外化学处理', '3 t/h', '蒸汽锅炉', 'WNS3-1.25-YQ', '3 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002007080017', '锅粤R00364', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.41', '1.20', '7.00', '--', '150.0', '1890', '12.00', '10.70', '11.40', '4.15', '--', '0.20', '2700', '408.0', '4.63', '3.29', '2.80', '0.25', '7.30', '13.00', '1.60', '--', '--', '--', '151.0', '0.41', '--', '--', '11.00', '7.30', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(495, '清远市步步高酒店管理有限公司', '城区环城一路西门岗酒厂侧', '何基玲', '何基玲', '13425204587', '无证', '雄广水处理设备有限公司', '--', '浮动床', '1.0 t/h', '蒸汽锅炉', 'WNS1.0-1.0-Y(S)', '1.0 t/h', '1.0 MPa(℃）', '有', '无', '11204418002009080005', '锅粤R00662', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.47', '1.20', '7.00', '--', '143.0', '1680', '11.60', '10.80', '11.50', '5.15', '--', '0.24', '2400', '456.0', '3.68', '1.56', '2.48', '0.13', '7.40', '7.00', '0.70', '--', '--', '--', '90.00', '0.000', '--', '--', '7.00', '7.30', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(496, '清远市酒厂有限公司', '城区环城二路西门岗3号', '金小峰', '金小峰', '13501462366', '1人持证', '顺德雄广水处理设备有限公司', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A II', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002007100006', '锅粤R00386', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.47', '1.40', '4.00', '--', '141.0', '644.0', '5.10', '4.70', '11.30', '4.11', '--', '0.27', '920.0', '30.00', '21.47', '>10', '3.12', '0.16', '7.40', '4.00', '1.60', '--', '--', '--', '143.0', '0.043', '--', '--', '5.00', '7.30', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>2、锅水碱度偏低，应适当控制排污；<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(497, '清远市广德制衣有限公司', '城区桥北路230号', '黄德楚', '黄德楚', '3975212', '1人持证', '--', '--', '锅内加药', '0.5 t/h', '蒸汽锅炉', 'WNS0.5-1.0-Y', '0.5 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002002040213', '锅粤R10077', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.03', '1.70', '15.00', '--', '670.0', '2380', '21.30', '18.20', '11.90', '12.55', '--', '0.25', '3400', '762.0', '3.12', '1.87', '2.18', '2.47', '7.00', '14.00', '4.00', '--', '--', '--', '215.0', '--', '--', '--', '--', '--', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(498, '清远市金正饲料有限公司', '清城区田龙107国道清四路口', '林盛辉', '林盛辉', '13535976468', '无证', '宏格水处理设备有限公司', '/', '浮动床', '2 t/h', '蒸汽锅炉', 'DZL2-1.25-A II', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002007010002', '锅粤RO0273', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.49', '1.30', '8.00', '--', '153.0', '910.0', '1.10', '0.90', '10.70', '0.82', '--', '0.031', '1300', '182.0', '5.00', '5.20', '2.02', '0.75', '6.70', '9.00', '1.30', '--', '--', '--', '163.0', '2.84', '--', '--', '9.00', '6.80', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(499, '清新县新鸿基染整有限公司', '清新县太和工业园', '郭武乾', '郭武乾', '13417112345', '无证', '顺德英永水处理设备有限公司', '--', '流动床', '15 t/h', '蒸汽锅炉', 'SZL15-1.25-A II', '15 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006070014', '锅粤RK0175', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.39', '1.50', '3.00', '--', '131.0', '1890', '16.00', '13.30', '11.60', '9.15', '--', '0.22', '2700', '268.0', '7.05', '3.88', '2.03', '2.43', '6.50', '10.00', '1.70', '--', '--', '--', '150.0', '2.26', '--', '--', '9.00', '6.60', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(500, '万邦（清新）鞋业有限公司', '清新县太平工业园', '蒋秀全', '蒋秀全', '13553927034', '1人持证', '顺德（永雄）英永工业水处理设备有限公司', '/', '浮动床', '6 t/h', '蒸汽锅炉', 'SZL6-1.25-A II', '6 t/h', '1.25 MPa(℃)', '有', '无', '11204418002007090009', '锅粤R00376', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.64', '0.50', '1.00', '--', '46.00', '1330', '11.60', '11.10', '11.60', '3.52', '--', '0.32', '1900', '268.0', '4.96', '2.29', '16.70', '0.16', '7.80', '6.00', '0.40', '--', '--', '--', '52.00', '0.000', '--', '--', '3.00', '7.60', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、给水浊度偏高，给水箱应注意防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(501, '阳山县伟达化工有限公司', '阳山附城麻地冲管理区', '曾厂', '曾厂', '13902356168', '无证', '/', '/', '流动床', '10 t/h', '蒸汽锅炉', 'KZL4-1.3', '4.0 t/h(MW)', '1.27 MPa(℃)', '有', '无', '11204418002002040017', '锅粤RS0025', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '4.11', '2.90', '1.00', '--', '185.0', '1190', '0.50', '0.000', '7.50', '--', '--', '0', '1700', '112.0', '10.62', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '不合格', '1、锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(502, '阳山联益洗涤制衣厂', '阳山县氮肥厂内', '张远赛', '张远赛', '13318616972', '无证', '东莞顺兴水处理设备有限公司', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZL2-1.25-A II', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002008010012', '锅粤R00435', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '3.53', '2.80', '1.00', '--', '190.0', '840.0', '12.00', '11.00', '11.00', '2.55', '--', '0.48', '1200', '8.00', '105.0', '>10', '7.56', '0.25', '7.60', '1.00', '1.6', '--', '--', '--', '98.00', '0.24', '--', '--', '1.00', '7.40', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>\r\n2、给水浊度偏高，给水箱应注意防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(503, '阳山县永丰制衣厂', '阳山县城南制衣城', '张赞新', '张赞新', '13729673198', '无证', '顺德宏格水处理设备有限公司', '--', '浮动床', '1.0 t/h', '蒸汽锅炉', 'DZH1.0-1.0-A II', '1.0 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002006010004', '锅粤RS0002', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '4.30', '2.60', '1.00', '--', '66.00', '651.0', '9.50', '8.30', '11.40', '3.11', '--', '0.44', '930.0', '10.00', '65.10', '>10', '2.18', '0.054', '7.00', '1.00', '2.20', '--', '--', '--', '159.0', '0.14', '--', '--', '1.00', '7.00', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(504, '阳山县同兴铜材有限公司', '阳山县七拱镇大石坪107国道旁', '黄兴国', '黄兴国', '13828589891', '1人持证', '中兴（永雄）工业水处理设备有限公司', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A II3', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002008010011', '锅粤R00434', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '4.34', '3.10', '2.00', '--', '210.0', '770.0', '11.50', '8.30', '11.40', '1.92', '--', '0.26', '1100', '25.00', '30.80', '>10', '2.63', '0.000', '9.10', '18.00', '4.60', '--', '--', '--', '490.0', '0.011', '--', '--', '2.00', '7.50', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(505, '连南县三江镇森鑫木制品厂', '三江镇东和村东塘', '陈志平', '陈志平', '13729686258', '无证', '容桂雄广水处理设备厂', '/', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZG4-1.25-M', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002009030009', '锅粤R00614', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '6.84', '3.70', '1.00', '--', '390.0', '427.0', '0.50', '0.30', '8.60', '--', '--', '0.010', '610.0', '16.00', '26.69', '>10', '2.86', '3.66', '6.60', '3.00', '1.70', '--', '--', '--', '176.0', '7.10', '--', '--', '2.00', '6.70', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(506, '连南利发毛织厂有限公司', '连南三江镇东堤路', '王智双', '王智双', '13724567995', '1人持证', '--', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZG2.0-1.25-A III', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011120003', '锅粤RW3203', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.38', '0.30', '2.00', '--', '28.00', '700.0', '3.80', '3.30', '10.20', '1.85', '--', '0.16', '1000', '108.0', '6.48', '0.93', '3.45', '0.030', '7.50', '1.00', '0.50', '--', '--', '--', '30.00', '0.022', '--', '--', '1.00', '7.40', '不合格', '1、锅水碱度偏低，应适当控制排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(507, '广东明华机械有限公司连南分公司', '连南寨岗镇', '陈雁宁', '陈雁宁', '13924419375', '1人持证', '阿图祖', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZL2-1.25-A II', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040029', '锅粤RW0004', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.48', '0.70', '1.00', '--', '136.0', '1750', '14.60', '14.00', '11.50', '3.16', '--', '0.31', '18.82', '93.00', '18.82', '2.20', '2.30', '3.22', '7.00', '2.00', '2.00', '--', '--', '--', '385.0', '3.27', '--', '--', '1.00', '7.00', '不合格', '1、给水硬度偏高，软水器应加盐再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(508, '连南奇乡生物科技有限公司', '连南县三江镇', '周志明', '周志明', '13922613190', '无证', '鸿昌水处理设备厂', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZG2-1.25-A II', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006050014', '锅粤RW0039', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.28', '0.20', '1.00', '--', '35.00', '840.0', '11.50', '10.20', '11.50', '5.67', '--', '0.42', '1200', '35.00', '24.00', '2.94', '3.65', '0.000', '7.70', '1.00', '0.30', '--', '--', '--', '34.00', '0.000', '--', '--', '1.00', '7.50', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(509, '连南县鹿鸣茧丝绸有限责任公司', '连南三江镇沿江西路', '林小明', '林小明', '18023719028', '1人持证', '杏坛水处理设备厂', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-W II', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040033', '锅粤RW0008', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.39', '0.30', '1.00', '--', '29.00', '560.0', '4.60', '4.20', '10.20', '2.51', '--', '0.27', '800.0', '42.00', '13.33', '2.44', '3.00', '0.030', '7.60', '1.00', '0.30', '--', '--', '--', '24.00', '0.000', '--', '--', '1.00', '7.40', '不合格', '1、锅水碱度偏低，应适当控制排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(510, '连州市海斌食品有限公司', '清远市连州市城南清远民族工业区', '段传华', '段传华', '13925026545', '1人持证', '--', '--', '浮动床', '--', '蒸汽锅炉', 'LHG1.0-0.7-A II', '1.0 t/h(MW)', '0.7 MPa(℃)', '有', '无', '11204418002011050002', '锅粤RU1014', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '6.90', '3.60', '5.00', '--', '380.0', '910.0', '3.10', '0.000', '7.80', '--', '--', '0', '1300', '182.0', '5.00', '2.25', '1.93', '6.56', '7.00', '4.00', '3.50', '--', '--', '--', '119.0', '6.36', '--', '--', '4.00', '7.00', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(511, '广东华农温氏畜牧股份有限公司连州分公司', '广东省清远市连州市城南清远民族工业园内', '姚厂长', '姚厂长', '13416591737', '1人持证', '/', '/', '流动床', '4.0  t/h', '承压蒸汽锅炉', 'DZL4-1.25-A II', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011110003', '锅粤RU3204', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '6.64', '3.70', '4.00', '--', '420.0', '2380', '44.00', '36.10', '12.20', '3.28', '--', '0.47', '3400', '66.00', '36.06', '8.20', '1.65', '0.41', '7.40', '5.00', '3.70', '--', '--', '--', '450.0', '0.32', '--', '--', '5.00', '7.60', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。<br>2、锅水碱度和pH 值偏高，应加强排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(512, '连州市强龙家俱木材加工有限公司', '广东省清远市连州市城西家具工业园', '赵志强', '赵志强', '13602927701', '1人持证', '--', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZH2.0-1.25-A III', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011080011', '锅粤RU1020', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.05', '1.10', '3.00', '--', '99.00', '1820', '10.00', '8.60', '11.30', '4.18', '--', '0.16', '2600', '700.0', '2.60', '1.60', '19.30', '1.87', '7.10', '11.00', '0.90', '--', '--', '--', '110.0', '0.000', '--', '--', '11.00', '7.50', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(513, '连州市协诚毛巾制造有限公司', '连州城南红珠路19号', '彭培彦', '彭培彦', '6611098', '无证', '中兴工业公司水处理设备厂', '/', '浮动床', '1.0 t/h', '蒸汽锅炉', 'DZL1.0-0.7-A II', '1.0 t/h(MW)', '0.7 MPa(℃)', '有', '无', '11204418002005010002', '锅粤R00104', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.96', '1.00', '3.00', '--', '158.5', '511.0', '3.10', '2.70', '10.50', '2.05', '--', '0.18', '730.0', '46.00', '11.11', '6.98', '1.82', '1.98', '7.00', '3.00', '1.10', '--', '--', '--', '159.0', '2.19', '--', '--', '4.00', '7.00', '不合格', '1、给水硬度偏高，软水器应加盐再生；<br>2、锅水碱度偏低，应适当控制排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(514, '连州市顺达大酒店', '连州市城西鹅公潭', '张洁', '张洁', '13501455550', '1人持证', '--', '--', '浮动床', '1.0 t/h', '蒸汽锅炉', 'DZG1.0-0.8-M(X)', '1.0 t/h(MW)', '1.0 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.83', '1.10', '4.00', '--', '96.00', '385.0', '2.10', '1.70', '10.30', '1.12', '--', '0.14', '550.0', '52.00', '7.40', '>10', '4.95', '1.94', '7.00', '5.00', '1.10', '--', '--', '--', '99.00', '1.87', '--', '--', '5.00', '7.00', '不合格', '1、给水硬度偏高，软水器应加盐再生；<br>2、锅水碱度偏低，应适当控制排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(515, '连州市骏成木业有限公司', '连州市城南民族工业园', '欧华清', '欧华清', '13927618011', '1人持证', '--', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZG2-1.25-A(M)', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002012060009', '锅粤RU3208', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '6.60', '4.10', '7.00', '--', '410.0', '455.0', '1.50', '0.000', '7.80', '--', '--', '0', '650.0', '11.00', '41.36', '>10', '2.25', '6.64', '7.00', '4.00', '3.90', '--', '--', '--', '410.0', '6.69', '--', '--', '6.00', '7.00', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(516, '连州市联发造纸有限公司', '连州市河南路1号', '何群英', '何群英', '13828544888', '1人持证', '--', '--', '流动床', '10 t/h', '蒸汽锅炉', 'SZL10-1.25-A II', '10.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002011100003', '锅粤RU3201', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.83', '1.10', '4.00', '--', '125.0', '1190', '14.00', '13.00', '11.50', '5.66', '--', '0.38', '1700', '86.00', '13.84', '3.61', '4.85', '0.064', '7.60', '3.00', '0.60', '--', '--', '--', '80.00', '0.000', '--', '--', '5.00', '7.50', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(517, '建滔（连州）铜铂有限公司', '连州市清连一级公路旁', '赵浙永', '赵浙永', '13360721858', '二人持证', '顺德振洪水处理设备有限公司', '--', '流动床', '20 t/h', '蒸汽锅炉', 'SHFX15-1.6-P', '15.0 t/h(MW)', '203℃', '有', '无', '11204418002004090015', '锅粤RU0093', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.64', '0.50', '3.00', '--', '38.00', '840.0', '4.00', '2.90', '11.20', '2.59', '--', '0.086', '1200', '202.0', '4.16', '0.50', '2.45', '0.000', '7.30', '1.00', '0.40', '--', '--', '--', '23.00', '0.000', '--', '--', '2.00', '7.10', '不合格', '1、锅水碱度偏低，应适当控制排污。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(518, '广东双汇食品有限公司', '清新太和镇107国道旁', '李军威', '李军威', '13413568867', '2人持证', '成都富华水处理设备厂', '—', '浮动床', '40  t/h   2#', '蒸汽锅炉', 'SZL6-1.57-A II', '6 t/h(MW)', '1.57 MPa(℃)', '有', '无', '11204418002005010010', '锅粤RK0080', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.69', '1.50', '10.00', '--', '149.0', '1330', '4.30', '3.90', '11.30', '2.00', '--', '0.10', '1900', '312.0', '4.26', '4.70', '2.18', '0.69', '6.90', '14.00', '1.20', '--', '--', '--', '160.0', '0.99', '--', '--', '45.00', '6.90', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>2、锅水碱度偏低，应适当控制排污.<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(519, '广东双汇食品有限公司', '清新太和镇107国道旁', '李军威', '李军威', '13413568867', '2人持证', '成都富华水处理设备厂', '—', '浮动床', '40  t/h   1#', '蒸汽锅炉', 'SZL6-1.57-A II', '6 t/h(MW)', '1.57 MPa(℃)', '有', '无', '11204418002005010011', '锅粤RK0079', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.69', '1.50', '10.00', '--', '149.0', '2170', '10.60', '9.80', '11.50', '3.15', '--', '0.16', '3100', '572.0', '3.79', '2.51', '2.18', '0.69', '6.90', '14.00', '1.20', '--', '--', '--', '160.0', '0.99', '--', '--', '45.00', '6.90', '不合格', '1、给水硬度偏高，软水器应定期再生.<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(520, '广东双汇食品有限公司', '清新太和镇107国道旁', '李军威', '李军威', '13413568867', '2人持证', '成都富华水处理设备厂', '—', '浮动床', '40  t/h   3#', '蒸汽锅炉', 'SZL6-1.57-A II', '6 t/h(MW)', '1.57 MPa(℃)', '有', '无', '11204418002005010009', '锅粤RK0083', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.69', '1.50', '10.00', '--', '149.0', '2520', '11.30', '10.70', '11.60', '3.10', '--', '0.16', '3600', '726.0', '3.47', '1.97', '2.18', '0.69', '6.90', '14.00', '1.20', '--', '--', '--', '160.0', '0.99', '--', '--', '45.00', '6.90', '不合格', '1、给水硬度偏高，软水器应定期再生.<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(521, '清远市嘉博制药有限公司', '清远市高新区', '黎树安', '黎树安', '6816652', '1人持证', '中兴永雄工业水处理设备有限公司', '/', '浮动床', '2 t/h', '蒸汽锅炉', 'WNS2-1.25-Y', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002005030002', '锅粤RA0064', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.58', '1.50', '8.00', '--', '161.0', '3080', '32.80', '28.20', '12.10', '--', '--', '0.31', '4400', '>1000', '3.08', '0.70', '2.41', '0.043', '7.80', '7.00', '1.40', '--', '--', '--', '161.0', '0.000', '--', '--', '7.00', '7.80', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、锅水碱度和pH 值偏高，应加强排污；<br>\r\n3、有盐水进入锅炉，必须更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(522, '清远市鑫辉化工有限公司', '清远市高新区7号小区', '杨子敏', '杨子敏', '13828584933', '1人', '阿图祖', '--', '固定床', '2 t/h', '蒸汽锅炉', 'DZL2-1.25-A II', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002006090010', '锅粤RA0234', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.75', '1.40', '5.00', '--', '140.0', '770.0', '7.90', '7.10', '11.40', '1.70', '--', '0.33', '1100', '48.00', '16.04', '>10', '2.40', '0.000', '7.80', '6.00', '1.40', '--', '--', '--', '155.0', '0.000', '--', '--', '6.00', '7.80', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(523, '清远市清城区横荷裕威鞋材厂', '清远市高新区16号区（台湾工业园）', '张祖宾', '张祖宾', '13828559786', '1人持证', '英永工业水处理设备有限公司', '/', '浮动床', '2.0 t/h', '蒸汽锅炉', 'DZG2-1.0-M', '2 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002009080001', '锅粤R00658', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.64', '1.40', '15.00', '--', '165.0', '399.0', '0.30', '0.20', '9.10', '--', '--', '0.01', '570.0', '86.00', '4.64', '8.86', '5.45', '2.60', '7.50', '7.00', '1.50', '--', '--', '--', '140.0', '2.69', '--', '--', '7.00', '7.50', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>\r\n2、给水浊度偏高，应注意给水箱的防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(524, '蒙牛乳业（清远）有限公司', '高新技术开发区管委会大楼224室', '李根源', '李根源', '18675675188', '2人持证', '--', '--', '浮动床', '20 t/h', '承压蒸汽锅炉', 'WNS10-1.6-Q', '10.0 t/h(MW)', '1.6 MPa(℃)', '有', '无', '11204418002010100004', '锅粤RA1026', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.62', '1.30', '8.00', '--', '144.0', '1400', '15.70', '13.80', '11.80', '1.95', '--', '0.34', '2000', '194.0', '7.22', '4.30', '2.30', '0.52', '7.60', '8.00', '1.30', '--', '--', '--', '151.0', '--', '--', '--', '--', '--', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(525, '蒙牛乳业（清远）有限公司', '高新技术开发区管委会大楼224室', '李根源', '李根源', '18675675188', '2人持证', '--', '--', '浮动床', '20 t/h', '承压蒸汽锅炉', 'WNS10-1.6-Q', '10.0 t/h(MW)', '1.6 MPa(℃)', '有', '无', '11204418002010100005', '锅粤RA1027', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.62', '1.30', '8.00', '--', '144.0', '1750', '22.00', '19.40', '11.90', '2.53', '--', '0.38', '2500', '272.0', '6.43', '3.03', '2.30', '0.52', '7.60', '8.00', '1.30', '--', '--', '--', '151.0', '--', '--', '--', '--', '--', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(526, '清远市德和染整有限公司', '清远市高新区', '陈佰铭', '陈水清', '13727163539', '1人持证', '佛冈石角镇水处理设备厂', '/', '流动床', '10 t/h', '蒸汽锅炉', 'WNS10-1.25-Y', '10.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040219', '锅粤R10083', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.58', '1.40', '7.00', '--', '140.0', '1820', '13.10', '12.00', '11.60', '--', '--', '0.24', '2600', '226.0', '8.05', '3.20', '6.48', '1.31', '7.40', '7.00', '1.40', '--', '--', '--', '149.0', '1.59', '--', '--', '18.00', '7.50', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。<br>\r\n2、给水浊度偏高，应注意给水箱的防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(527, '清远市灵捷制造化工有限公司', '清远市高新区7号区', '梁媚', '梁媚', '3483511', '无证', '阿图祖', '--', '浮动床', '0.5 t/h', '蒸汽锅炉', 'LHS0.5-0.4-Y(Q)', '0.5 t/h(MW)', '0.4 MPa(℃)', '有', '无', '11204418002002100395', '锅粤R10185', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.60', '1.40', '6.00', '--', '139.0', '658.0', '6.50', '5.30', '11.40', '1.92', '--', '0.25', '940.0', '38.00', '17.32', '26.67', '2.30', '0.11', '7.20', '8.00', '1.30', '--', '--', '--', '146.0', '0.22', '--', '--', '8.00', '7.10', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(528, '诚展（清远）鞋业有限公司', '清新县太和工业区', '文经理', '文经理', '13925182475', '1人持证', '东诚兴东兴热能设备厂', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'WNS6-1.0-Y(Q)', '6 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002007060010', '锅粤RK0197', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.55', '1.00', '6.00', '--', '110.0', '1400', '9.60', '8.70', '11.50', '4.52', '--', '0.22', '2000', '174.0', '8.04', '>10', '2.85', '0.22', '7.10', '41.00', '1.60', '--', '--', '--', '450.0', '0.000', '--', '--', '24.00', '6.90', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(529, '清新县荣诚物业有限公司', '清新太和镇环城路清新花园酒店', '周经理', '周经理', '13727176816', '无证', '顺德（永雄）英永工业水处理设备有限公司', '--', '锅外处理（浮动床）', '4 t/h', '蒸汽锅炉', ' WNS2-1.25-YQ', '2t/h(MW)', '1.25 MPa(℃)', '有', '无', '11304418002009020001', '锅粤R00601', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.66', '1.00', '4.00', '--', '84.00', '420.0', '0.90', '0.60', '10.00', '--', '--', '0.028', '600.0', '32.00', '13.12', '>10', '5.55', '1.08', '7.00', '3.00', '0.80', '--', '--', '--', '60.00', '1.81', '--', '--', '5.00', '6.90', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>\r\n2、给水浊度偏高，应注意给水箱的防尘。\r\n', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(530, '清新县荣诚物业有限公司', '清新太和镇环城路清新花园酒店', '周经理', '周经理', '13727176816', '无证', '顺德（永雄）英永工业水处理设备有限公司', '--', '锅外处理（浮动床）', '4 t/h', '蒸汽锅炉', ' WNS2-1.25-YQ', '2t/h(MW)', '1.25 MPa(℃)', '有', '无', '11304418002009020002', '锅粤R00601', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.66', '1.00', '4.00', '--', '84.00', '49.70', '0.60', '0.40', '9.90', '--', '--', '0.16', '71.00', '2.00', '24.85', '<0', '5.55', '1.08', '7.00', '3.00', '0.80', '--', '--', '--', '60.00', '1.81', '--', '--', '5.00', '6.90', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>\r\n2、给水浊度偏高，应注意给水箱的防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(531, '清远市兴发洗水厂', '清城区环城二路106号', '梁树彬', '梁树彬', '3880752', '1人持证', '顺德雄广水处理设备有限公司', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'SZL6-1.25-WA-WA', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002003020462', '锅粤R10208', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.69', '1.30', '4.00', '--', '131.0', '770.0', '7.50', '7.00', '11.40', '4.56', '--', '0.34', '1100', '33.00', '23.33', '3.12', '2.63', '0.11', '7.20', '1.00', '0.50', '--', '--', '--', '22.00', '--', '--', '--', '--', '--', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(532, '清新县山塘镇恒洁干洗服务部', '清新县山塘镇白莲大树园', '潘锐河', '潘锐河', '13620503733', '1人持证', '--', '--', '浮动床', '--', '蒸汽锅炉', 'DZG0.5-0.8-M(X)', '0.5 t/h(MW)', '0.8 MPa(℃)', '有', '无', '11204418002012050002', '锅粤RK3224', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.80', '2.00', '1.00', '--', '130.0', '105.0', '0.50', '0.30', '9.40', '--', '--', '0.038', '150.0', '20.00', '5.25', '>10', '3.48', '3.14', '7.40', '3.00', '2.10', '--', '--', '--', '145.0', '4.00', '--', '--', '4.00', '7.40', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(533, '清远市江丰饲料有限公司', '清新县太平镇回澜工业区', '张崇江', '张崇江', '13922562808、5382141', '1人持证', '雄广水处理设备厂', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZL4-1.25-A II3', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002007060001', '锅粤RK0195', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.58', '1.40', '11.00', '--', '150.0', '2240', '18.00', '16.40', '11.60', '7.15', '--', '0.26', '3200', '356.0', '6.29', '3.19', '26.6', '1.50', '7.50', '11.00', '1.80', '--', '--', '--', '156.0', '2.67', '--', '--', '11.00', '7.50', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、给水浊度偏高，应注意给水箱的防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(534, '清远市清城区钜洋洗水厂', '东城莲塘管理区沙寮村', '郑小姐', '郑小姐', '3928308', '无证', '英永工业水处理设备有限公司', '--', '浮动床', '1.0 t/h', '蒸汽锅炉', 'KZL1.0-8', '1.0 t/h(MW)', '0.8 MPa(℃)', '有', '无', '11204418002003120595', '锅粤R100243', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.54', '1.30', '7.00', '--', '141.0', '700.0', '0.90', '0.60', '9.90', '--', '--', '0.017', '1000', '100.0', '7.00', '4.17', '2.91', '1.68', '7.50', '4.00', '0.80', '--', '--', '--', '106.0', '2.52', '--', '--', '7.00', '7.50', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(535, '清远市清城区君康餐具消毒中心', '清城区松岗沙田工业区', '黄锦潮', '黄锦潮', '13802893288', '无证', '雄广水处理设备厂', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZS2-1.25-M(A II)', '2 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002008050004', '锅粤R00468', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '1.66', '1.00', '6.00', '--', '110.0', '2730', '16.90', '16.10', '11.60', '--', '--', '0.22', '3900', '136.0', '20.07', '4.62', '5.52', '0.92', '7.80', '6.00', '0.60', '--', '--', '--', '80.00', '--', '--', '--', '--', '--', '不合格', '1、给水硬度偏高，软水器应定期再生；<br>\r\n2、给水浊度偏高，应注意给水箱的防尘。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(536, '清远双江颜料有限公司', '清远市清新县太和镇告星工业区', '杜达英', '杜达英', '15119975004', '1人持证', '--', '--', '流动床', '6 t/h', '蒸汽锅炉', 'DZL6-1.25-A II', '6 t/h(MW)', '1.25 MPa(℃)', '有', '无', '--', '--', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.82', '2.00', '9.00', '--', '145.0', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '--', '2.72', '1.68', '7.10', '110.0', '1.40', '--', '--', '--', '250.0', '2.56', '--', '--', '39.00', '7.10', '不合格', '1、给水硬度偏高，应加强流动床的运行操作。<br>\r\n2、离子交换树脂已损坏，必须更换。\r\n3、取样器损坏，无法取样，应维修。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(537, '清远冠龙纺织染整厂', '清新县清和大道', '杨超强', '杨超强', '3996881/13927660618', '1人持证', '顺德杏坛纯水设备厂', '--', '流动床', '20 t/h', '蒸汽锅炉', 'SHL20-1.25', '20 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002110419', '锅粤R10190', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.80', '1.60', '4.00', '--', '146.0', '1190', '14.50', '13.20', '11.80', '1.20', '--', '0.40', '1700', '48.00', '24.79', '9.09', '2.26', '0.000', '7.60', '4.00', '1.50', '--', '--', '--', '126.0', '0.000', '--', '--', '6.00', '7.50', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(538, '清远市大昌食品有限公司', '城区东城街道办金鸡岩脚', '罗志芳', '罗志芳', '3281386', '1人持证', '--', '--', '浮动床', '2 t/h', '蒸汽锅炉', 'DZG2-1.0-W II', '2 t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002009090015', '锅粤RO0678', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '0.92', '0.60', '112.0', '--', '170.0', '3290', '5.50', '5.00', '11.20', '--', '--', '0.055', '4700', '>1000', '3.29', '>10', '2.86', '0.030', '7.40', '132.0', '0.40', '--', '--', '--', '194.0', '0.043', '--', '--', '54.00', '7.40', '不合格', '1、锅水碱度偏低，应适当控制排污；<br>\r\n2、有盐水进入锅炉，必须更换锅水。', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(539, '清远宪友兴业有限公司', '清新县太和洞口', '谭溪', '谭溪', '15899682659', '1人持证', '顺德雄广水处理设备厂', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'DZS4-1.25-A II(M)', '4.0 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002010090001', '锅粤RK1027', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.04', '1.20', '6.00', '--', '116.0', '1260', '11.80', '11.00', '11.60', '4.15', '--', '0.32', '1800', '243.0', '5.18', '>10', '2.22', '0.000', '7.00', '29.00', '0.80', '--', '--', '--', '179.0', '0.17', '--', '--', '6.00', '7.40', '合格', '', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL);
INSERT INTO `oa_report_content` (`report_id`, `company_name`, `azdz`, `aqglrr`, `lxr`, `lxdh`, `zyrrczqh`, `zzdw`, `zczh`, `sclfc`, `cl`, `pz`, `xh`, `edzfl`, `edyl`, `cylqq`, `grq`, `sbdm`, `sydjzh`, `jyyj`, `ys_yd`, `ys_zj`, `ys_llz`, `ys_sd`, `ys_dd`, `ws_rjgxw`, `ws_zjd`, `ws_pjd`, `ws_phz`, `ws_po`, `ws_so`, `ws_xdjd`, `ws_ddl`, `ws_llz`, `ws_glbgdb`, `ws_pwl`, `gs_sd`, `gs_yd`, `gs_ph`, `gs_llz`, `gs_zj`, `gs_rjy`, `gs_qt`, `gs_y`, `gs_ddl`, `rhs_yd`, `rhs_qt`, `rhs_y`, `rhs_llz`, `rhs_phz`, `jyjl`, `jyyjhjy`, `bak`, `jyjghzzh`, `jyjghzrq`) VALUES
(540, '清新县昊元新型墙体砖厂', '清新县太和镇飞水开发区', '温师葵', '温师葵', '15914998856', '1人持证', '顺德雄广水处理设备厂', '--', '浮动床', '6 t/h', '蒸汽锅炉', 'DZL6.0-1.57-A III II', '6 t/h(MW)', '1.57 MPa(℃)', '有', '无', '11204418002010090003', '锅粤RK1028', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.69', '1.30', '10.00', '--', '150.0', '1820', '12.10', '11.30', '11.60', '4.15', '--', '0.23', '2600', '363.0', '5.01', '3.71', '3.04', '0.60', '7.50', '13.00', '1.20', '--', '--', '--', '155.0', '1.20', '--', '--', '12.00', '7.30', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(541, '松德丰（清远）食品有限公司', '太和镇太和洞旁', '李国威', '李国威', '13828566898', '1人持证', '湘潭锅炉辅机厂', '--', '浮动床', '4.0  t/h', '蒸汽锅炉', 'WNS3.0-1.25-Y', '3 t/h(MW)', '1.25 MPa(℃)', '有', '无', '11204418002002040133', '锅粤RK0017', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.11', '1.00', '7.00', '--', '120.0', '1610', '10.30', '9.50', '11.60', '4.56', '--', '0.22', '2300', '480.0', '3.35', '2.78', '2.26', '0.17', '7.50', '13.00', '1.10', '--', '--', '--', '141.0', '0.14', '--', '--', '5.00', '7.50', '不合格', '1、给水硬度偏高，软水器应定期再生。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(542, '清远市协荣塑胶制品有限公司', '清新县太和工业区(广硕鞋业有限公司内)', '黎丽梅', '黎丽梅', '6865158', '1人持证', '新兴水处理设备有限公司', '--', '锅外处理（浮动床）', '6t/h ', '蒸汽锅炉', 'WNS6-1.0-Y(Q)', '6t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002004020629', '锅粤RK0199', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.28', '1.30', '6.00', '--', '180.0', '266.0', '0.70', '0.40', '9.60', '--', '--', '0.015', '380.0', '23.00', '11.56', '>10', '2.33', '2.00', '7.30', '7.00', '1.00', '--', '--', '--', '174.0', '2.49', '--', '--', '7.00', '7.40', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL),
(543, '清远市协荣塑胶制品有限公司', '清新县太和工业区(广硕鞋业有限公司内)', '黎丽梅', '黎丽梅', '6865158', '1人持证', '新兴水处理设备有限公司', '--', '锅外处理（浮动床）', '6t/h ', '蒸汽锅炉', 'WNS6-1.0-Y(Q)', '6t/h(MW)', '1.0 MPa(℃)', '有', '无', '11204418002004020628', '锅粤RK0200', '《锅炉水(介)质处理检验规则》TSG G5002-2010、 《工业锅炉水质》GB/T1576-2008', '2.28', '1.30', '6.00', '--', '180.0', '322.0', '0.70', '0.40', '9.50', '--', '--', '0.012', '460.0', '34.00', '9.47', '>10', '2.33', '2.00', '7.30', '7.00', '1.00', '--', '--', '--', '174.0', '2.49', '--', '--', '7.00', '7.40', '不合格', '1、给水硬度及锅水碱度等主要指标均不达标，必须加强锅炉水质管理确保锅炉安全经济运行。<br>', 'CMA公章不涵盖浊度、磷酸根、全铁、SO32- 、溶解氧等项目。', 'TS7110203-2015', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `oa_report_yijian`
--

CREATE TABLE IF NOT EXISTS `oa_report_yijian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(512) NOT NULL COMMENT '检验意见和建议',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='报告的检验意见和建议' AUTO_INCREMENT=5 ;

--
-- 导出表中的数据 `oa_report_yijian`
--

INSERT INTO `oa_report_yijian` (`id`, `content`) VALUES
(1, '意见一'),
(2, '意见二'),
(3, '意见三'),
(4, '');

-- --------------------------------------------------------

--
-- 表的结构 `oa_role`
--

CREATE TABLE IF NOT EXISTS `oa_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 导出表中的数据 `oa_role`
--

INSERT INTO `oa_role` (`id`, `name`, `pid`, `status`, `remark`, `create_time`, `update_time`) VALUES
(1, '领导组', 0, 1, '可以分配用户权限，有最高的操作权限', 1208784792, 1254325558),
(2, '普通文员', 0, 1, '可以对数据进行录入等操作', 1215496283, 1254325566),
(7, '检验员', 0, 1, '检验数据', 1254325787, 0),
(8, '审核员', NULL, 1, '审核报告的人员加入这个角色', 0, 0),
(9, '审批员', NULL, 1, '审批报告的加入这个角色', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oa_role_user`
--

CREATE TABLE IF NOT EXISTS `oa_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 导出表中的数据 `oa_role_user`
--

INSERT INTO `oa_role_user` (`role_id`, `user_id`) VALUES
(4, '27'),
(4, '26'),
(4, '30'),
(5, '31'),
(3, '22'),
(3, '1'),
(7, '4'),
(2, '3'),
(7, '2'),
(1, '35'),
(2, ''),
(7, '35'),
(8, '36'),
(8, '4'),
(9, '37'),
(1, '45'),
(7, '39'),
(2, '40'),
(7, '41'),
(7, '42'),
(8, '38'),
(2, '43'),
(7, '38'),
(1, '44'),
(9, '44'),
(9, '45');

-- --------------------------------------------------------

--
-- 表的结构 `oa_shoufei`
--

CREATE TABLE IF NOT EXISTS `oa_shoufei` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shoufei_num` varchar(9) NOT NULL COMMENT '收费编号',
  `company_name` varchar(128) NOT NULL COMMENT '使用单位',
  `sbxh` varchar(64) NOT NULL COMMENT '设备型号',
  `sb_num` varchar(4) NOT NULL COMMENT '设备台数',
  `year` varchar(4) NOT NULL COMMENT '年份',
  `jidu` varchar(32) NOT NULL COMMENT '季度',
  `money` varchar(20) NOT NULL COMMENT '价钱',
  `bak` varchar(512) NOT NULL COMMENT '欠费情况',
  `set_date` varchar(12) NOT NULL COMMENT '出具日期',
  `open_user` varchar(24) NOT NULL COMMENT '开票人',
  `belong_month` char(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='收费通知书列表' AUTO_INCREMENT=24 ;

--
-- 导出表中的数据 `oa_shoufei`
--

INSERT INTO `oa_shoufei` (`id`, `shoufei_num`, `company_name`, `sbxh`, `sb_num`, `year`, `jidu`, `money`, `bak`, `set_date`, `open_user`, `belong_month`) VALUES
(1, '', '晋勇（清远）橡胶工业有限公司', 'PP830', '一台', '2012', '第一季度', '2000', '33', '2012年09月09日', '崔宁', ''),
(2, '201209001', '晋勇（清远）橡胶工业有限公司', 'PP830', '一台', '2012', '上半年', '2000', '', 'str_open_use', '', '201209'),
(3, '201209002', '晋勇（清远）橡胶工业有限公司', 'PP830', '一台', '2012', '上半年', '2000', '', '2012年09月14日', '崔宁', '201209'),
(4, '201209003', '万裕（清新）塑胶制品有限公司', 'DZL4-1.25-A II', '一台', '2012', '上半年', '111', '', '2012年09月14日', '崔宁', '201209'),
(5, '201209004', '龙玮（佛冈）纺织有限公司', 'SZL6-1.25-A+II', '一台', '2012', '上半年', '1500', '111', '2012年09月01日', '崔宁', '201209'),
(6, '201209005', '佛冈篁胜国际温泉花园有限公司', 'DZL6-1.25-A+II', '一台', '2012', '上半年', '111', '', '2012年09月01日', '崔宁', '201209'),
(7, '201209006', '龙玮（佛冈）纺织有限公司', 'SZL6-1.25-AII', '一台', '2012', '上半年', '1500', '', 'str_open_use', '', '201209'),
(8, '201301001', '建滔（连州）铜铂有限公司', 'SHFX15-1.6-P', '一台', '2013', '上半年', '2084', '', '2013年01月14日', '崔宁', '201301'),
(9, '201301002', '连州市骏成木业有限公司', 'DZG2-1.25-A(M)', '一台', '2013', '上半年', '1714', '', '2013年01月14日', '崔宁', '201301'),
(10, '201301003', '连州市海斌食品有限公司', 'LHG1.0-0.7-A+II', '一台', '2013', '上半年', '1714', '', '2013年01月14日', '崔宁', '201301'),
(11, '201301004', '连州市联发造纸有限公司', 'SZL10-1.25-A+II', '一台', '2013', '上半年', '2084', '', '2013年01月14日', '崔宁', '201301'),
(12, '201301005', '广东华农温氏畜牧股份有限公司连州分公司', 'DZL4-1.25-A+II', '一台', '2013', '上半年', '1714', '', '2013年01月14日', '崔宁', '201301'),
(13, '201301006', '连州市强龙家俱木材加工有限公司', 'DZH2.0-1.25-A+III', '一台', '2013', '上半年', '1714', '', '2013年01月14日', '崔宁', '201301'),
(14, '201301007', '连州市顺达大酒店', 'DZG1.0-0.8-M(X)', '一台', '2013', '上半年', '1714', '', '2013年01月14日', '崔宁', '201301'),
(15, '201301008', '连州市顺达大酒店', 'DZG1.0-0.8-M(X)', '一台', '2012', '第四季度', '857', '', '2013年01月14日', '崔宁', '201301'),
(16, '201301009', '连南县三江镇森鑫木制品厂', 'DZG4-1.25-M', '一台', '2013', '上半年', '1714', '', '2013年01月14日', '崔宁', '201301'),
(17, '201301010', '连南利发毛织厂有限公司', 'DZG2.0-1.25-A+III', '一台', '2013', '上半年', '1714', '', '2013年01月14日', '崔宁', '201301'),
(18, '201301011', '连南奇乡生物科技有限公司', 'DZG2-1.25-A+II', '一台', '2013', '上半年', '1714', '', '2013年01月14日', '崔宁', '201301'),
(19, '201301011', '连南奇乡生物科技有限公司', 'DZG2-1.25-A+II', '一台', '2013', '上半年', '1714', '', '2013年01月14日', '崔宁', '201301'),
(20, '201301011', '连南奇乡生物科技有限公司', 'DZG2-1.25-A+II', '一台', '2013', '上半年', '1714', '', '2013年01月14日', '崔宁', '201301'),
(21, '201301011', '连南奇乡生物科技有限公司', 'DZG2-1.25-A+II', '一台', '2013', '上半年', '1714', '', '2013年01月14日', '崔宁', '201301'),
(22, '201301011', '连南奇乡生物科技有限公司', 'DZG2-1.25-A+II', '一台', '2013', '上半年', '1714', '', '2013年01月14日', '崔宁', '201301'),
(23, '201301012', '广东明华机械有限公司连南分公司', 'DZL2-1.25-A+II', '一台', '2013', '上半年', '1714', '', '2013年01月14日', '崔宁', '201301');

-- --------------------------------------------------------

--
-- 表的结构 `oa_user`
--

CREATE TABLE IF NOT EXISTS `oa_user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(64) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `bind_account` varchar(50) NOT NULL,
  `last_login_time` int(11) unsigned DEFAULT '0',
  `last_login_ip` varchar(40) DEFAULT NULL,
  `login_count` mediumint(8) unsigned DEFAULT '0',
  `verify` varchar(32) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- 导出表中的数据 `oa_user`
--

INSERT INTO `oa_user` (`id`, `account`, `nickname`, `password`, `bind_account`, `last_login_time`, `last_login_ip`, `login_count`, `verify`, `email`, `remark`, `create_time`, `update_time`, `status`) VALUES
(1, 'admin', '管理员', '21232f297a57a5a743894a0e4a801fc3', '', 1361794117, '113.74.178.4', 981, '8888', 'liu21st@gmail.com', '备注信息', 1222907803, 1326266696, 1),
(44, 'xujianghua', '徐江华', '202cb962ac59075b964b07152d234b70', '', 0, NULL, 0, NULL, '', '', 1352457854, 0, 1),
(35, 'huangjianwen', '黄建文', '670b14728ad9902aecba32e22fa4f6bd', '', 1351391967, '113.74.179.52', 2, NULL, '', '', 1345104585, 0, 1),
(43, 'chenjiazhe', '陈嘉哲', '202cb962ac59075b964b07152d234b70', '', 1362033614, '218.16.141.6', 58, NULL, '', '', 1347848236, 0, 1),
(37, 'guibin', '贵彬', '21232f297a57a5a743894a0e4a801fc3', '', 1361933188, '218.16.141.6', 55, NULL, '', '', 1347625347, 0, 1),
(38, 'cuining', '崔宁', '2308dcfa758f818cd008747782938f44', '', 1362034322, '218.16.141.6', 160, NULL, '', '', 1347629568, 0, 1),
(39, 'chenhongcai', '陈红彩', '202cb962ac59075b964b07152d234b70', '', 1362035322, '218.16.141.6', 74, NULL, '', '', 1347630653, 0, 1),
(41, 'zengyanfen', '曾燕芬', '202cb962ac59075b964b07152d234b70', '', 1362120429, '218.16.141.6', 22, NULL, '', '', 1347631370, 0, 1),
(42, 'liushuizhi', '刘水志', '202cb962ac59075b964b07152d234b70', '', 1351478999, '218.16.141.6', 3, NULL, '', '', 1347631578, 0, 1),
(45, 'wangqing', '王庆', '202cb962ac59075b964b07152d234b70', '', 1352511729, '183.29.214.79', 1, NULL, '', '', 1352458189, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `oa_yjs`
--

CREATE TABLE IF NOT EXISTS `oa_yjs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(128) NOT NULL COMMENT '单位名称',
  `file_num` varchar(64) NOT NULL COMMENT '文件编号',
  `NO` varchar(64) NOT NULL COMMENT 'NO',
  `sbmc` varchar(64) NOT NULL COMMENT '设备名称',
  `sbpz` varchar(64) NOT NULL COMMENT '设备品种或型号',
  `lbbh` varchar(64) NOT NULL COMMENT '设备内部编号',
  `ccbh` varchar(64) NOT NULL COMMENT '出厂编号',
  `cl_date` varchar(64) NOT NULL COMMENT '处理结果时间',
  `wtyj` varchar(1024) NOT NULL COMMENT '问题和意见',
  `jyry_name` varchar(64) NOT NULL COMMENT '检验人员',
  `jyry_date` varchar(64) NOT NULL,
  `jyjgjsfzr_name` varchar(64) NOT NULL COMMENT '检验机构技术负责人id',
  `jyjgjsfzr_date` varchar(64) NOT NULL,
  `sjdwjsr_name` varchar(64) NOT NULL COMMENT '受检单位接收人',
  `cljg` varchar(64) NOT NULL COMMENT '处理结果',
  `sjdwzgfzr_name` varchar(64) NOT NULL COMMENT '受检单位主管负责人',
  `sjdwzgfzr_date` varchar(64) NOT NULL,
  `add_user_id` int(11) NOT NULL,
  `add_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='检验意见书' AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `oa_yjs`
--


-- --------------------------------------------------------

--
-- Structure for view `bx_company`
--
DROP TABLE IF EXISTS `bx_company`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `zhijian_v2`.`bx_company` AS select `zhijian_v2`.`oa_company`.`id` AS `id`,`zhijian_v2`.`oa_company`.`company_name` AS `company_name`,`zhijian_v2`.`oa_company`.`tow_no_pass` AS `tow_no_pass`,`zhijian_v2`.`oa_company`.`one_no_pass_date` AS `one_no_pass_date` from `zhijian_v2`.`oa_company`;

-- --------------------------------------------------------

--
-- Structure for view `bx_quyang`
--
DROP TABLE IF EXISTS `bx_quyang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `zhijian_v2`.`bx_quyang` AS select `zhijian_v2`.`oa_quyang`.`id` AS `id`,`zhijian_v2`.`oa_quyang`.`quyang_num` AS `quyang_num`,`zhijian_v2`.`oa_quyang`.`company_name` AS `company_name`,`zhijian_v2`.`oa_quyang`.`do_type` AS `do_type`,`zhijian_v2`.`oa_quyang`.`syzh` AS `syzh`,`zhijian_v2`.`oa_quyang`.`quyang_date` AS `quyang_date`,`zhijian_v2`.`oa_quyang`.`quyang_user` AS `quyang_user`,`zhijian_v2`.`oa_quyang`.`belong_month` AS `belong_month` from `zhijian_v2`.`oa_quyang`;

-- --------------------------------------------------------

--
-- Structure for view `bx_report`
--
DROP TABLE IF EXISTS `bx_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `zhijian_v2`.`bx_report` AS select `zhijian_v2`.`oa_report`.`id` AS `id`,`zhijian_v2`.`oa_report`.`company_id` AS `company_id`,`zhijian_v2`.`oa_report`.`title` AS `title`,`zhijian_v2`.`oa_report`.`report_num` AS `report_num`,`zhijian_v2`.`oa_report`.`sydw` AS `sydw`,`zhijian_v2`.`oa_report`.`sbpz` AS `sbpz`,`zhijian_v2`.`oa_report`.`sbyh` AS `sbyh`,`zhijian_v2`.`oa_report`.`sbdm` AS `sbdm`,`zhijian_v2`.`oa_report`.`jyrc` AS `jyrc`,`zhijian_v2`.`oa_report`.`belong_month` AS `belong_month`,`zhijian_v2`.`oa_report`.`one_user_id` AS `one_user_id`,`zhijian_v2`.`oa_report`.`one_time` AS `one_time`,`zhijian_v2`.`oa_report`.`tow_user_id` AS `tow_user_id`,`zhijian_v2`.`oa_report`.`tow_time` AS `tow_time`,`zhijian_v2`.`oa_report`.`three_user_id` AS `three_user_id`,`zhijian_v2`.`oa_report`.`three_time` AS `three_time`,`zhijian_v2`.`oa_report`.`print_user_id` AS `print_user_id`,`zhijian_v2`.`oa_report`.`print_time` AS `print_time`,`zhijian_v2`.`oa_report`.`gzrq` AS `gzrq`,`zhijian_v2`.`oa_report`.`add_userid` AS `add_userid`,`zhijian_v2`.`oa_report`.`add_time` AS `add_time`,`zhijian_v2`.`oa_report`.`status` AS `status` from `zhijian_v2`.`oa_report`;

-- --------------------------------------------------------

--
-- Structure for view `bx_report_content`
--
DROP TABLE IF EXISTS `bx_report_content`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `zhijian_v2`.`bx_report_content` AS select `zhijian_v2`.`oa_report_content`.`report_id` AS `report_id`,`zhijian_v2`.`oa_report_content`.`company_name` AS `company_name`,`zhijian_v2`.`oa_report_content`.`azdz` AS `azdz`,`zhijian_v2`.`oa_report_content`.`aqglrr` AS `aqglrr`,`zhijian_v2`.`oa_report_content`.`lxr` AS `lxr`,`zhijian_v2`.`oa_report_content`.`lxdh` AS `lxdh`,`zhijian_v2`.`oa_report_content`.`zyrrczqh` AS `zyrrczqh`,`zhijian_v2`.`oa_report_content`.`zzdw` AS `zzdw`,`zhijian_v2`.`oa_report_content`.`zczh` AS `zczh`,`zhijian_v2`.`oa_report_content`.`sclfc` AS `sclfc`,`zhijian_v2`.`oa_report_content`.`cl` AS `cl`,`zhijian_v2`.`oa_report_content`.`pz` AS `pz`,`zhijian_v2`.`oa_report_content`.`xh` AS `xh`,`zhijian_v2`.`oa_report_content`.`edzfl` AS `edzfl`,`zhijian_v2`.`oa_report_content`.`edyl` AS `edyl`,`zhijian_v2`.`oa_report_content`.`cylqq` AS `cylqq`,`zhijian_v2`.`oa_report_content`.`grq` AS `grq`,`zhijian_v2`.`oa_report_content`.`sbdm` AS `sbdm`,`zhijian_v2`.`oa_report_content`.`sydjzh` AS `sydjzh`,`zhijian_v2`.`oa_report_content`.`jyyj` AS `jyyj`,`zhijian_v2`.`oa_report_content`.`ys_yd` AS `ys_yd`,`zhijian_v2`.`oa_report_content`.`ys_zj` AS `ys_zj`,`zhijian_v2`.`oa_report_content`.`ys_llz` AS `ys_llz`,`zhijian_v2`.`oa_report_content`.`ys_sd` AS `ys_sd`,`zhijian_v2`.`oa_report_content`.`ys_dd` AS `ys_dd`,`zhijian_v2`.`oa_report_content`.`ws_rjgxw` AS `ws_rjgxw`,`zhijian_v2`.`oa_report_content`.`ws_zjd` AS `ws_zjd`,`zhijian_v2`.`oa_report_content`.`ws_pjd` AS `ws_pjd`,`zhijian_v2`.`oa_report_content`.`ws_phz` AS `ws_phz`,`zhijian_v2`.`oa_report_content`.`ws_po` AS `ws_po`,`zhijian_v2`.`oa_report_content`.`ws_so` AS `ws_so`,`zhijian_v2`.`oa_report_content`.`ws_xdjd` AS `ws_xdjd`,`zhijian_v2`.`oa_report_content`.`ws_ddl` AS `ws_ddl`,`zhijian_v2`.`oa_report_content`.`ws_llz` AS `ws_llz`,`zhijian_v2`.`oa_report_content`.`ws_glbgdb` AS `ws_glbgdb`,`zhijian_v2`.`oa_report_content`.`ws_pwl` AS `ws_pwl`,`zhijian_v2`.`oa_report_content`.`gs_sd` AS `gs_sd`,`zhijian_v2`.`oa_report_content`.`gs_yd` AS `gs_yd`,`zhijian_v2`.`oa_report_content`.`gs_ph` AS `gs_ph`,`zhijian_v2`.`oa_report_content`.`gs_llz` AS `gs_llz`,`zhijian_v2`.`oa_report_content`.`gs_zj` AS `gs_zj`,`zhijian_v2`.`oa_report_content`.`gs_rjy` AS `gs_rjy`,`zhijian_v2`.`oa_report_content`.`gs_qt` AS `gs_qt`,`zhijian_v2`.`oa_report_content`.`gs_y` AS `gs_y`,`zhijian_v2`.`oa_report_content`.`gs_ddl` AS `gs_ddl`,`zhijian_v2`.`oa_report_content`.`rhs_yd` AS `rhs_yd`,`zhijian_v2`.`oa_report_content`.`rhs_qt` AS `rhs_qt`,`zhijian_v2`.`oa_report_content`.`rhs_y` AS `rhs_y`,`zhijian_v2`.`oa_report_content`.`rhs_llz` AS `rhs_llz`,`zhijian_v2`.`oa_report_content`.`rhs_phz` AS `rhs_phz`,`zhijian_v2`.`oa_report_content`.`jyjl` AS `jyjl`,`zhijian_v2`.`oa_report_content`.`jyyjhjy` AS `jyyjhjy`,`zhijian_v2`.`oa_report_content`.`bak` AS `bak`,`zhijian_v2`.`oa_report_content`.`jyjghzzh` AS `jyjghzzh`,`zhijian_v2`.`oa_report_content`.`jyjghzrq` AS `jyjghzrq` from `zhijian_v2`.`oa_report_content`;

-- --------------------------------------------------------

--
-- Structure for view `bx_report_yijian`
--
DROP TABLE IF EXISTS `bx_report_yijian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `zhijian_v2`.`bx_report_yijian` AS select `zhijian_v2`.`oa_report_yijian`.`id` AS `id`,`zhijian_v2`.`oa_report_yijian`.`content` AS `content` from `zhijian_v2`.`oa_report_yijian`;

-- --------------------------------------------------------

--
-- Structure for view `bx_shoufei`
--
DROP TABLE IF EXISTS `bx_shoufei`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `zhijian_v2`.`bx_shoufei` AS select `zhijian_v2`.`oa_shoufei`.`id` AS `id`,`zhijian_v2`.`oa_shoufei`.`shoufei_num` AS `shoufei_num`,`zhijian_v2`.`oa_shoufei`.`company_name` AS `company_name`,`zhijian_v2`.`oa_shoufei`.`sbxh` AS `sbxh`,`zhijian_v2`.`oa_shoufei`.`sb_num` AS `sb_num`,`zhijian_v2`.`oa_shoufei`.`year` AS `year`,`zhijian_v2`.`oa_shoufei`.`jidu` AS `jidu`,`zhijian_v2`.`oa_shoufei`.`money` AS `money`,`zhijian_v2`.`oa_shoufei`.`bak` AS `bak`,`zhijian_v2`.`oa_shoufei`.`set_date` AS `set_date`,`zhijian_v2`.`oa_shoufei`.`open_user` AS `open_user`,`zhijian_v2`.`oa_shoufei`.`belong_month` AS `belong_month` from `zhijian_v2`.`oa_shoufei`;

-- --------------------------------------------------------

--
-- Structure for view `bx_yjs`
--
DROP TABLE IF EXISTS `bx_yjs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `zhijian_v2`.`bx_yjs` AS select `zhijian_v2`.`oa_yjs`.`id` AS `id`,`zhijian_v2`.`oa_yjs`.`company_name` AS `company_name`,`zhijian_v2`.`oa_yjs`.`file_num` AS `file_num`,`zhijian_v2`.`oa_yjs`.`NO` AS `NO`,`zhijian_v2`.`oa_yjs`.`sbmc` AS `sbmc`,`zhijian_v2`.`oa_yjs`.`sbpz` AS `sbpz`,`zhijian_v2`.`oa_yjs`.`lbbh` AS `lbbh`,`zhijian_v2`.`oa_yjs`.`ccbh` AS `ccbh`,`zhijian_v2`.`oa_yjs`.`cl_date` AS `cl_date`,`zhijian_v2`.`oa_yjs`.`wtyj` AS `wtyj`,`zhijian_v2`.`oa_yjs`.`jyry_name` AS `jyry_name`,`zhijian_v2`.`oa_yjs`.`jyry_date` AS `jyry_date`,`zhijian_v2`.`oa_yjs`.`jyjgjsfzr_name` AS `jyjgjsfzr_name`,`zhijian_v2`.`oa_yjs`.`jyjgjsfzr_date` AS `jyjgjsfzr_date`,`zhijian_v2`.`oa_yjs`.`sjdwjsr_name` AS `sjdwjsr_name`,`zhijian_v2`.`oa_yjs`.`cljg` AS `cljg`,`zhijian_v2`.`oa_yjs`.`sjdwzgfzr_name` AS `sjdwzgfzr_name`,`zhijian_v2`.`oa_yjs`.`sjdwzgfzr_date` AS `sjdwzgfzr_date`,`zhijian_v2`.`oa_yjs`.`add_user_id` AS `add_user_id`,`zhijian_v2`.`oa_yjs`.`add_time` AS `add_time` from `zhijian_v2`.`oa_yjs`;
