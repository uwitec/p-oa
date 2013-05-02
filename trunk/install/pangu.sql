--
-- MySQL database dump
-- Created by DBManage class, Power By pangu. 
-- http://www.emtit.net 
--
-- 主机: localhost
-- 生成日期: 2013 年  05 月 02 日 08:45
-- MySQL版本: 5.1.28-rc-community
-- PHP 版本: 5.2.6

--
-- 数据库: `emtoa_net`
--

-- -------------------------------------------------------

--
-- 表的结构bx_access
--

DROP TABLE IF EXISTS `bx_access`;
CREATE TABLE `bx_access` (
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
-- 转存表中的数据 bx_access
--

INSERT INTO `bx_access` VALUES('1','1','1','0','');
INSERT INTO `bx_access` VALUES('1','2','2','1','');
INSERT INTO `bx_access` VALUES('1','3','3','1','');
INSERT INTO `bx_access` VALUES('1','4','3','1','');
INSERT INTO `bx_access` VALUES('1','5','3','1','');
INSERT INTO `bx_access` VALUES('1','6','3','1','');
INSERT INTO `bx_access` VALUES('1','7','3','1','');
INSERT INTO `bx_access` VALUES('2','1','1','0','');
INSERT INTO `bx_access` VALUES('2','2','2','1','');
INSERT INTO `bx_access` VALUES('2','3','3','1','');
INSERT INTO `bx_access` VALUES('2','4','3','1','');
INSERT INTO `bx_access` VALUES('2','5','3','1','');
INSERT INTO `bx_access` VALUES('2','6','3','1','');
INSERT INTO `bx_access` VALUES('2','7','3','1','');
INSERT INTO `bx_access` VALUES('1','8','2','1','');
INSERT INTO `bx_access` VALUES('1','9','3','1','');
INSERT INTO `bx_access` VALUES('1','10','3','1','');
INSERT INTO `bx_access` VALUES('1','11','3','1','');
INSERT INTO `bx_access` VALUES('1','12','3','1','');
INSERT INTO `bx_access` VALUES('1','13','3','1','');
INSERT INTO `bx_access` VALUES('3','193','3','192','');
INSERT INTO `bx_access` VALUES('3','192','2','183','');
INSERT INTO `bx_access` VALUES('3','213','3','186','');
INSERT INTO `bx_access` VALUES('3','191','3','186','');
INSERT INTO `bx_access` VALUES('3','190','3','186','');
INSERT INTO `bx_access` VALUES('3','189','3','186','');
INSERT INTO `bx_access` VALUES('1','14','2','1','');
INSERT INTO `bx_access` VALUES('1','15','3','1','');
INSERT INTO `bx_access` VALUES('1','16','3','1','');
INSERT INTO `bx_access` VALUES('1','17','3','1','');
INSERT INTO `bx_access` VALUES('1','18','3','1','');
INSERT INTO `bx_access` VALUES('1','19','3','1','');
INSERT INTO `bx_access` VALUES('3','188','3','186','');
INSERT INTO `bx_access` VALUES('3','187','3','186','');
INSERT INTO `bx_access` VALUES('3','186','2','183','');
INSERT INTO `bx_access` VALUES('3','185','3','184','');
INSERT INTO `bx_access` VALUES('3','184','2','183','');
INSERT INTO `bx_access` VALUES('3','183','1','0','');
INSERT INTO `bx_access` VALUES('1','20','2','1','');
INSERT INTO `bx_access` VALUES('1','21','3','1','');
INSERT INTO `bx_access` VALUES('1','22','3','1','');
INSERT INTO `bx_access` VALUES('1','23','3','1','');
INSERT INTO `bx_access` VALUES('1','24','3','1','');
INSERT INTO `bx_access` VALUES('1','25','3','1','');
INSERT INTO `bx_access` VALUES('2','20','2','1','');
INSERT INTO `bx_access` VALUES('2','21','3','1','');
INSERT INTO `bx_access` VALUES('2','22','3','1','');
INSERT INTO `bx_access` VALUES('2','23','3','1','');
INSERT INTO `bx_access` VALUES('2','24','3','1','');
INSERT INTO `bx_access` VALUES('2','25','3','1','');
INSERT INTO `bx_access` VALUES('1','26','1','0','');
INSERT INTO `bx_access` VALUES('1','27','2','1','');
INSERT INTO `bx_access` VALUES('1','28','3','1','');
INSERT INTO `bx_access` VALUES('2','26','1','0','');
INSERT INTO `bx_access` VALUES('2','27','2','1','');
INSERT INTO `bx_access` VALUES('2','28','3','1','');
INSERT INTO `bx_access` VALUES('1','29','2','26','');
INSERT INTO `bx_access` VALUES('1','30','3','1','');
INSERT INTO `bx_access` VALUES('1','31','3','1','');
INSERT INTO `bx_access` VALUES('1','32','3','1','');
INSERT INTO `bx_access` VALUES('1','33','3','1','');
INSERT INTO `bx_access` VALUES('1','34','3','1','');
INSERT INTO `bx_access` VALUES('2','29','2','26','');
INSERT INTO `bx_access` VALUES('2','30','3','1','');
INSERT INTO `bx_access` VALUES('2','31','3','1','');
INSERT INTO `bx_access` VALUES('2','32','3','1','');
INSERT INTO `bx_access` VALUES('2','33','3','1','');
INSERT INTO `bx_access` VALUES('2','34','3','1','');
INSERT INTO `bx_access` VALUES('1','35','2','26','');
INSERT INTO `bx_access` VALUES('1','36','3','1','');
INSERT INTO `bx_access` VALUES('1','37','3','1','');
INSERT INTO `bx_access` VALUES('1','38','3','1','');
INSERT INTO `bx_access` VALUES('1','39','3','1','');
INSERT INTO `bx_access` VALUES('1','40','3','1','');
INSERT INTO `bx_access` VALUES('2','35','2','26','');
INSERT INTO `bx_access` VALUES('2','36','3','1','');
INSERT INTO `bx_access` VALUES('2','37','3','1','');
INSERT INTO `bx_access` VALUES('2','38','3','1','');
INSERT INTO `bx_access` VALUES('2','39','3','1','');
INSERT INTO `bx_access` VALUES('2','40','3','1','');
INSERT INTO `bx_access` VALUES('1','41','2','26','');
INSERT INTO `bx_access` VALUES('1','42','3','1','');
INSERT INTO `bx_access` VALUES('1','43','3','1','');
INSERT INTO `bx_access` VALUES('1','44','3','1','');
INSERT INTO `bx_access` VALUES('1','45','3','1','');
INSERT INTO `bx_access` VALUES('1','46','3','1','');
INSERT INTO `bx_access` VALUES('2','41','2','26','');
INSERT INTO `bx_access` VALUES('2','42','3','1','');
INSERT INTO `bx_access` VALUES('2','43','3','1','');
INSERT INTO `bx_access` VALUES('2','44','3','1','');
INSERT INTO `bx_access` VALUES('2','45','3','1','');
INSERT INTO `bx_access` VALUES('2','46','3','1','');
INSERT INTO `bx_access` VALUES('1','47','3','41','');
INSERT INTO `bx_access` VALUES('2','47','3','41','');
INSERT INTO `bx_access` VALUES('1','48','1','0','');
INSERT INTO `bx_access` VALUES('1','49','2','1','');
INSERT INTO `bx_access` VALUES('1','50','3','1','');
INSERT INTO `bx_access` VALUES('2','48','1','0','');
INSERT INTO `bx_access` VALUES('2','49','2','1','');
INSERT INTO `bx_access` VALUES('2','50','3','1','');
INSERT INTO `bx_access` VALUES('1','51','3','49','');
INSERT INTO `bx_access` VALUES('2','51','3','49','');
INSERT INTO `bx_access` VALUES('1','52','3','49','');
INSERT INTO `bx_access` VALUES('1','53','3','49','');
INSERT INTO `bx_access` VALUES('1','54','3','49','');
INSERT INTO `bx_access` VALUES('1','55','3','49','');
INSERT INTO `bx_access` VALUES('1','56','3','49','');
INSERT INTO `bx_access` VALUES('2','52','3','49','');
INSERT INTO `bx_access` VALUES('2','53','3','49','');
INSERT INTO `bx_access` VALUES('2','54','3','49','');
INSERT INTO `bx_access` VALUES('2','55','3','49','');
INSERT INTO `bx_access` VALUES('2','56','3','49','');
INSERT INTO `bx_access` VALUES('1','57','2','48','');
INSERT INTO `bx_access` VALUES('1','58','3','1','');
INSERT INTO `bx_access` VALUES('1','59','3','1','');
INSERT INTO `bx_access` VALUES('1','60','3','1','');
INSERT INTO `bx_access` VALUES('1','61','3','1','');
INSERT INTO `bx_access` VALUES('1','62','3','1','');
INSERT INTO `bx_access` VALUES('2','57','2','48','');
INSERT INTO `bx_access` VALUES('2','58','3','1','');
INSERT INTO `bx_access` VALUES('2','59','3','1','');
INSERT INTO `bx_access` VALUES('2','60','3','1','');
INSERT INTO `bx_access` VALUES('2','61','3','1','');
INSERT INTO `bx_access` VALUES('2','62','3','1','');
INSERT INTO `bx_access` VALUES('1','63','2','48','');
INSERT INTO `bx_access` VALUES('1','64','3','1','');
INSERT INTO `bx_access` VALUES('1','65','3','1','');
INSERT INTO `bx_access` VALUES('1','66','3','1','');
INSERT INTO `bx_access` VALUES('1','67','3','1','');
INSERT INTO `bx_access` VALUES('1','68','3','1','');
INSERT INTO `bx_access` VALUES('2','63','2','48','');
INSERT INTO `bx_access` VALUES('2','64','3','1','');
INSERT INTO `bx_access` VALUES('2','65','3','1','');
INSERT INTO `bx_access` VALUES('2','66','3','1','');
INSERT INTO `bx_access` VALUES('2','67','3','1','');
INSERT INTO `bx_access` VALUES('2','68','3','1','');
INSERT INTO `bx_access` VALUES('1','69','3','57','');
INSERT INTO `bx_access` VALUES('1','70','3','57','');
INSERT INTO `bx_access` VALUES('1','71','3','57','');
INSERT INTO `bx_access` VALUES('1','72','3','57','');
INSERT INTO `bx_access` VALUES('1','73','3','57','');
INSERT INTO `bx_access` VALUES('2','69','3','57','');
INSERT INTO `bx_access` VALUES('2','70','3','57','');
INSERT INTO `bx_access` VALUES('2','71','3','57','');
INSERT INTO `bx_access` VALUES('2','72','3','57','');
INSERT INTO `bx_access` VALUES('2','73','3','57','');
INSERT INTO `bx_access` VALUES('1','74','3','57','');
INSERT INTO `bx_access` VALUES('1','75','3','57','');
INSERT INTO `bx_access` VALUES('1','76','3','57','');
INSERT INTO `bx_access` VALUES('1','77','3','57','');
INSERT INTO `bx_access` VALUES('1','78','3','57','');
INSERT INTO `bx_access` VALUES('2','74','3','57','');
INSERT INTO `bx_access` VALUES('2','75','3','57','');
INSERT INTO `bx_access` VALUES('2','76','3','57','');
INSERT INTO `bx_access` VALUES('2','77','3','57','');
INSERT INTO `bx_access` VALUES('2','78','3','57','');
INSERT INTO `bx_access` VALUES('1','79','3','57','');
INSERT INTO `bx_access` VALUES('1','80','3','57','');
INSERT INTO `bx_access` VALUES('1','81','3','57','');
INSERT INTO `bx_access` VALUES('1','82','3','57','');
INSERT INTO `bx_access` VALUES('1','83','3','57','');
INSERT INTO `bx_access` VALUES('2','79','3','57','');
INSERT INTO `bx_access` VALUES('2','80','3','57','');
INSERT INTO `bx_access` VALUES('2','81','3','57','');
INSERT INTO `bx_access` VALUES('2','82','3','57','');
INSERT INTO `bx_access` VALUES('2','83','3','57','');
INSERT INTO `bx_access` VALUES('1','84','2','48','');
INSERT INTO `bx_access` VALUES('1','85','3','1','');
INSERT INTO `bx_access` VALUES('1','86','3','1','');
INSERT INTO `bx_access` VALUES('1','87','3','1','');
INSERT INTO `bx_access` VALUES('1','88','3','1','');
INSERT INTO `bx_access` VALUES('1','89','3','1','');
INSERT INTO `bx_access` VALUES('2','84','2','48','');
INSERT INTO `bx_access` VALUES('2','85','3','1','');
INSERT INTO `bx_access` VALUES('2','86','3','1','');
INSERT INTO `bx_access` VALUES('2','87','3','1','');
INSERT INTO `bx_access` VALUES('2','88','3','1','');
INSERT INTO `bx_access` VALUES('2','89','3','1','');
INSERT INTO `bx_access` VALUES('1','90','3','84','');
INSERT INTO `bx_access` VALUES('1','91','3','84','');
INSERT INTO `bx_access` VALUES('1','92','3','84','');
INSERT INTO `bx_access` VALUES('1','93','3','84','');
INSERT INTO `bx_access` VALUES('1','94','3','84','');
INSERT INTO `bx_access` VALUES('2','90','3','84','');
INSERT INTO `bx_access` VALUES('2','91','3','84','');
INSERT INTO `bx_access` VALUES('2','92','3','84','');
INSERT INTO `bx_access` VALUES('2','93','3','84','');
INSERT INTO `bx_access` VALUES('2','94','3','84','');
INSERT INTO `bx_access` VALUES('1','95','2','48','');
INSERT INTO `bx_access` VALUES('1','96','3','1','');
INSERT INTO `bx_access` VALUES('1','97','3','1','');
INSERT INTO `bx_access` VALUES('1','98','3','1','');
INSERT INTO `bx_access` VALUES('1','99','3','1','');
INSERT INTO `bx_access` VALUES('1','100','3','1','');
INSERT INTO `bx_access` VALUES('2','95','2','48','');
INSERT INTO `bx_access` VALUES('2','96','3','1','');
INSERT INTO `bx_access` VALUES('2','97','3','1','');
INSERT INTO `bx_access` VALUES('2','98','3','1','');
INSERT INTO `bx_access` VALUES('2','99','3','1','');
INSERT INTO `bx_access` VALUES('2','100','3','1','');
INSERT INTO `bx_access` VALUES('1','101','3','95','');
INSERT INTO `bx_access` VALUES('1','102','3','95','');
INSERT INTO `bx_access` VALUES('1','103','3','95','');
INSERT INTO `bx_access` VALUES('1','104','3','95','');
INSERT INTO `bx_access` VALUES('1','105','3','95','');
INSERT INTO `bx_access` VALUES('2','101','3','95','');
INSERT INTO `bx_access` VALUES('2','102','3','95','');
INSERT INTO `bx_access` VALUES('2','103','3','95','');
INSERT INTO `bx_access` VALUES('2','104','3','95','');
INSERT INTO `bx_access` VALUES('2','105','3','95','');
INSERT INTO `bx_access` VALUES('1','106','3','95','');
INSERT INTO `bx_access` VALUES('2','106','3','95','');
INSERT INTO `bx_access` VALUES('1','107','3','95','');
INSERT INTO `bx_access` VALUES('2','107','3','95','');
INSERT INTO `bx_access` VALUES('1','108','3','95','');
INSERT INTO `bx_access` VALUES('2','108','3','95','');
INSERT INTO `bx_access` VALUES('1','109','3','95','');
INSERT INTO `bx_access` VALUES('2','109','3','95','');
INSERT INTO `bx_access` VALUES('1','110','3','95','');
INSERT INTO `bx_access` VALUES('2','110','3','95','');
INSERT INTO `bx_access` VALUES('1','111','3','95','');
INSERT INTO `bx_access` VALUES('2','111','3','95','');
INSERT INTO `bx_access` VALUES('1','112','3','95','');
INSERT INTO `bx_access` VALUES('2','112','3','95','');
INSERT INTO `bx_access` VALUES('1','113','3','95','');
INSERT INTO `bx_access` VALUES('1','114','3','95','');
INSERT INTO `bx_access` VALUES('1','115','3','95','');
INSERT INTO `bx_access` VALUES('1','116','3','95','');
INSERT INTO `bx_access` VALUES('1','117','3','95','');
INSERT INTO `bx_access` VALUES('2','113','3','95','');
INSERT INTO `bx_access` VALUES('2','114','3','95','');
INSERT INTO `bx_access` VALUES('2','115','3','95','');
INSERT INTO `bx_access` VALUES('2','116','3','95','');
INSERT INTO `bx_access` VALUES('2','117','3','95','');
INSERT INTO `bx_access` VALUES('1','118','3','95','');
INSERT INTO `bx_access` VALUES('2','118','3','95','');
INSERT INTO `bx_access` VALUES('1','119','3','95','');
INSERT INTO `bx_access` VALUES('2','119','3','95','');
INSERT INTO `bx_access` VALUES('1','120','3','95','');
INSERT INTO `bx_access` VALUES('2','120','3','95','');
INSERT INTO `bx_access` VALUES('1','121','3','95','');
INSERT INTO `bx_access` VALUES('2','121','3','95','');
INSERT INTO `bx_access` VALUES('1','122','3','95','');
INSERT INTO `bx_access` VALUES('2','122','3','95','');
INSERT INTO `bx_access` VALUES('1','123','3','95','');
INSERT INTO `bx_access` VALUES('2','123','3','95','');
INSERT INTO `bx_access` VALUES('1','124','3','95','');
INSERT INTO `bx_access` VALUES('2','124','3','95','');
INSERT INTO `bx_access` VALUES('1','130','2','48','');
INSERT INTO `bx_access` VALUES('1','131','3','1','');
INSERT INTO `bx_access` VALUES('1','132','3','1','');
INSERT INTO `bx_access` VALUES('1','133','3','1','');
INSERT INTO `bx_access` VALUES('1','134','3','1','');
INSERT INTO `bx_access` VALUES('1','135','3','1','');
INSERT INTO `bx_access` VALUES('2','130','2','48','');
INSERT INTO `bx_access` VALUES('2','131','3','1','');
INSERT INTO `bx_access` VALUES('2','132','3','1','');
INSERT INTO `bx_access` VALUES('2','133','3','1','');
INSERT INTO `bx_access` VALUES('2','134','3','1','');
INSERT INTO `bx_access` VALUES('2','135','3','1','');
INSERT INTO `bx_access` VALUES('1','136','3','130','');
INSERT INTO `bx_access` VALUES('1','137','3','130','');
INSERT INTO `bx_access` VALUES('1','138','3','130','');
INSERT INTO `bx_access` VALUES('1','139','3','130','');
INSERT INTO `bx_access` VALUES('1','140','3','130','');
INSERT INTO `bx_access` VALUES('2','136','3','130','');
INSERT INTO `bx_access` VALUES('2','137','3','130','');
INSERT INTO `bx_access` VALUES('2','138','3','130','');
INSERT INTO `bx_access` VALUES('2','139','3','130','');
INSERT INTO `bx_access` VALUES('2','140','3','130','');
INSERT INTO `bx_access` VALUES('1','141','3','130','');
INSERT INTO `bx_access` VALUES('1','142','3','130','');
INSERT INTO `bx_access` VALUES('1','143','3','130','');
INSERT INTO `bx_access` VALUES('1','144','3','130','');
INSERT INTO `bx_access` VALUES('1','145','3','130','');
INSERT INTO `bx_access` VALUES('2','141','3','130','');
INSERT INTO `bx_access` VALUES('2','142','3','130','');
INSERT INTO `bx_access` VALUES('2','143','3','130','');
INSERT INTO `bx_access` VALUES('2','144','3','130','');
INSERT INTO `bx_access` VALUES('2','145','3','130','');
INSERT INTO `bx_access` VALUES('1','146','2','48','');
INSERT INTO `bx_access` VALUES('1','147','3','1','');
INSERT INTO `bx_access` VALUES('1','148','3','1','');
INSERT INTO `bx_access` VALUES('1','149','3','1','');
INSERT INTO `bx_access` VALUES('1','150','3','1','');
INSERT INTO `bx_access` VALUES('1','151','3','1','');
INSERT INTO `bx_access` VALUES('2','146','2','48','');
INSERT INTO `bx_access` VALUES('2','147','3','1','');
INSERT INTO `bx_access` VALUES('2','148','3','1','');
INSERT INTO `bx_access` VALUES('2','149','3','1','');
INSERT INTO `bx_access` VALUES('2','150','3','1','');
INSERT INTO `bx_access` VALUES('2','151','3','1','');
INSERT INTO `bx_access` VALUES('1','152','3','146','');
INSERT INTO `bx_access` VALUES('1','153','3','146','');
INSERT INTO `bx_access` VALUES('1','154','3','146','');
INSERT INTO `bx_access` VALUES('1','155','3','146','');
INSERT INTO `bx_access` VALUES('1','156','3','146','');
INSERT INTO `bx_access` VALUES('2','152','3','146','');
INSERT INTO `bx_access` VALUES('2','153','3','146','');
INSERT INTO `bx_access` VALUES('2','154','3','146','');
INSERT INTO `bx_access` VALUES('2','155','3','146','');
INSERT INTO `bx_access` VALUES('2','156','3','146','');
INSERT INTO `bx_access` VALUES('1','157','2','48','');
INSERT INTO `bx_access` VALUES('1','158','3','1','');
INSERT INTO `bx_access` VALUES('1','159','3','1','');
INSERT INTO `bx_access` VALUES('1','160','3','1','');
INSERT INTO `bx_access` VALUES('1','161','3','1','');
INSERT INTO `bx_access` VALUES('1','162','3','1','');
INSERT INTO `bx_access` VALUES('2','157','2','48','');
INSERT INTO `bx_access` VALUES('2','158','3','1','');
INSERT INTO `bx_access` VALUES('2','159','3','1','');
INSERT INTO `bx_access` VALUES('2','160','3','1','');
INSERT INTO `bx_access` VALUES('2','161','3','1','');
INSERT INTO `bx_access` VALUES('2','162','3','1','');
INSERT INTO `bx_access` VALUES('1','163','3','157','');
INSERT INTO `bx_access` VALUES('1','164','3','157','');
INSERT INTO `bx_access` VALUES('1','165','3','157','');
INSERT INTO `bx_access` VALUES('1','166','3','157','');
INSERT INTO `bx_access` VALUES('1','167','3','157','');
INSERT INTO `bx_access` VALUES('2','163','3','157','');
INSERT INTO `bx_access` VALUES('2','164','3','157','');
INSERT INTO `bx_access` VALUES('2','165','3','157','');
INSERT INTO `bx_access` VALUES('2','166','3','157','');
INSERT INTO `bx_access` VALUES('2','167','3','157','');
INSERT INTO `bx_access` VALUES('1','168','3','146','');
INSERT INTO `bx_access` VALUES('1','169','3','146','');
INSERT INTO `bx_access` VALUES('1','170','3','146','');
INSERT INTO `bx_access` VALUES('1','171','3','146','');
INSERT INTO `bx_access` VALUES('1','172','3','146','');
INSERT INTO `bx_access` VALUES('2','168','3','146','');
INSERT INTO `bx_access` VALUES('2','169','3','146','');
INSERT INTO `bx_access` VALUES('2','170','3','146','');
INSERT INTO `bx_access` VALUES('2','171','3','146','');
INSERT INTO `bx_access` VALUES('2','172','3','146','');
INSERT INTO `bx_access` VALUES('1','173','3','57','');
INSERT INTO `bx_access` VALUES('2','173','3','57','');
INSERT INTO `bx_access` VALUES('1','174','3','57','');
INSERT INTO `bx_access` VALUES('2','174','3','57','');
INSERT INTO `bx_access` VALUES('1','175','3','84','');
INSERT INTO `bx_access` VALUES('2','175','3','84','');
INSERT INTO `bx_access` VALUES('2','178','3','177','');
INSERT INTO `bx_access` VALUES('2','177','2','176','');
INSERT INTO `bx_access` VALUES('2','176','1','0','');
INSERT INTO `bx_access` VALUES('3','177','2','176','');
INSERT INTO `bx_access` VALUES('3','176','1','0','');
INSERT INTO `bx_access` VALUES('2','182','3','177','');
INSERT INTO `bx_access` VALUES('2','181','3','177','');
INSERT INTO `bx_access` VALUES('2','180','3','177','');
INSERT INTO `bx_access` VALUES('2','179','3','177','');
INSERT INTO `bx_access` VALUES('3','178','3','177','');
INSERT INTO `bx_access` VALUES('3','179','3','177','');
INSERT INTO `bx_access` VALUES('3','180','3','177','');
INSERT INTO `bx_access` VALUES('3','181','3','177','');
INSERT INTO `bx_access` VALUES('3','182','3','177','');
INSERT INTO `bx_access` VALUES('4','176','1','0','');
INSERT INTO `bx_access` VALUES('4','177','2','176','');
INSERT INTO `bx_access` VALUES('4','178','3','177','');
INSERT INTO `bx_access` VALUES('4','179','3','177','');
INSERT INTO `bx_access` VALUES('4','180','3','177','');
INSERT INTO `bx_access` VALUES('4','181','3','177','');
INSERT INTO `bx_access` VALUES('4','182','3','177','');
INSERT INTO `bx_access` VALUES('1','183','1','0','');
INSERT INTO `bx_access` VALUES('1','184','2','1','');
INSERT INTO `bx_access` VALUES('1','185','3','1','');
INSERT INTO `bx_access` VALUES('2','183','1','0','');
INSERT INTO `bx_access` VALUES('2','184','2','1','');
INSERT INTO `bx_access` VALUES('2','185','3','1','');
INSERT INTO `bx_access` VALUES('1','186','2','183','');
INSERT INTO `bx_access` VALUES('1','187','3','1','');
INSERT INTO `bx_access` VALUES('1','188','3','1','');
INSERT INTO `bx_access` VALUES('1','189','3','1','');
INSERT INTO `bx_access` VALUES('1','190','3','1','');
INSERT INTO `bx_access` VALUES('1','191','3','1','');
INSERT INTO `bx_access` VALUES('2','186','2','183','');
INSERT INTO `bx_access` VALUES('2','187','3','1','');
INSERT INTO `bx_access` VALUES('2','188','3','1','');
INSERT INTO `bx_access` VALUES('2','189','3','1','');
INSERT INTO `bx_access` VALUES('2','190','3','1','');
INSERT INTO `bx_access` VALUES('2','191','3','1','');
INSERT INTO `bx_access` VALUES('1','192','2','183','');
INSERT INTO `bx_access` VALUES('1','193','3','1','');
INSERT INTO `bx_access` VALUES('1','194','3','1','');
INSERT INTO `bx_access` VALUES('1','195','3','1','');
INSERT INTO `bx_access` VALUES('1','196','3','1','');
INSERT INTO `bx_access` VALUES('1','197','3','1','');
INSERT INTO `bx_access` VALUES('1','198','3','1','');
INSERT INTO `bx_access` VALUES('1','199','3','1','');
INSERT INTO `bx_access` VALUES('2','192','2','183','');
INSERT INTO `bx_access` VALUES('2','193','3','1','');
INSERT INTO `bx_access` VALUES('2','194','3','1','');
INSERT INTO `bx_access` VALUES('2','195','3','1','');
INSERT INTO `bx_access` VALUES('2','196','3','1','');
INSERT INTO `bx_access` VALUES('2','197','3','1','');
INSERT INTO `bx_access` VALUES('2','198','3','1','');
INSERT INTO `bx_access` VALUES('2','199','3','1','');
INSERT INTO `bx_access` VALUES('1','200','2','1','');
INSERT INTO `bx_access` VALUES('1','201','3','1','');
INSERT INTO `bx_access` VALUES('1','202','3','1','');
INSERT INTO `bx_access` VALUES('1','203','3','1','');
INSERT INTO `bx_access` VALUES('1','204','3','1','');
INSERT INTO `bx_access` VALUES('1','205','3','1','');
INSERT INTO `bx_access` VALUES('2','200','2','1','');
INSERT INTO `bx_access` VALUES('2','201','3','1','');
INSERT INTO `bx_access` VALUES('2','202','3','1','');
INSERT INTO `bx_access` VALUES('2','203','3','1','');
INSERT INTO `bx_access` VALUES('2','204','3','1','');
INSERT INTO `bx_access` VALUES('2','205','3','1','');
INSERT INTO `bx_access` VALUES('1','206','3','200','');
INSERT INTO `bx_access` VALUES('2','206','3','200','');
INSERT INTO `bx_access` VALUES('1','207','2','183','');
INSERT INTO `bx_access` VALUES('1','208','3','1','');
INSERT INTO `bx_access` VALUES('1','209','3','1','');
INSERT INTO `bx_access` VALUES('1','210','3','1','');
INSERT INTO `bx_access` VALUES('1','211','3','1','');
INSERT INTO `bx_access` VALUES('1','212','3','1','');
INSERT INTO `bx_access` VALUES('2','207','2','183','');
INSERT INTO `bx_access` VALUES('2','208','3','1','');
INSERT INTO `bx_access` VALUES('2','209','3','1','');
INSERT INTO `bx_access` VALUES('2','210','3','1','');
INSERT INTO `bx_access` VALUES('2','211','3','1','');
INSERT INTO `bx_access` VALUES('2','212','3','1','');
INSERT INTO `bx_access` VALUES('1','213','3','186','');
INSERT INTO `bx_access` VALUES('2','213','3','186','');
INSERT INTO `bx_access` VALUES('4','183','1','0','');
INSERT INTO `bx_access` VALUES('4','184','2','183','');
INSERT INTO `bx_access` VALUES('4','185','3','184','');
INSERT INTO `bx_access` VALUES('4','186','2','183','');
INSERT INTO `bx_access` VALUES('4','187','3','186','');
INSERT INTO `bx_access` VALUES('4','188','3','186','');
INSERT INTO `bx_access` VALUES('4','189','3','186','');
INSERT INTO `bx_access` VALUES('4','190','3','186','');
INSERT INTO `bx_access` VALUES('4','191','3','186','');
INSERT INTO `bx_access` VALUES('4','213','3','186','');
INSERT INTO `bx_access` VALUES('4','192','2','183','');
INSERT INTO `bx_access` VALUES('4','193','3','192','');
INSERT INTO `bx_access` VALUES('4','194','3','192','');
INSERT INTO `bx_access` VALUES('4','195','3','192','');
INSERT INTO `bx_access` VALUES('4','196','3','192','');
INSERT INTO `bx_access` VALUES('4','197','3','192','');
INSERT INTO `bx_access` VALUES('4','198','3','192','');
INSERT INTO `bx_access` VALUES('4','199','3','192','');
INSERT INTO `bx_access` VALUES('4','207','2','183','');
INSERT INTO `bx_access` VALUES('4','208','3','207','');
INSERT INTO `bx_access` VALUES('4','209','3','207','');
INSERT INTO `bx_access` VALUES('4','210','3','207','');
INSERT INTO `bx_access` VALUES('4','211','3','207','');
INSERT INTO `bx_access` VALUES('4','212','3','207','');
INSERT INTO `bx_access` VALUES('3','233','3','232','');
INSERT INTO `bx_access` VALUES('3','208','3','207','');
INSERT INTO `bx_access` VALUES('4','244','3','29','');
INSERT INTO `bx_access` VALUES('4','206','3','200','');
INSERT INTO `bx_access` VALUES('4','205','3','200','');
INSERT INTO `bx_access` VALUES('4','204','3','200','');
INSERT INTO `bx_access` VALUES('4','203','3','200','');
INSERT INTO `bx_access` VALUES('4','202','3','200','');
INSERT INTO `bx_access` VALUES('4','201','3','200','');
INSERT INTO `bx_access` VALUES('4','200','2','1','');
INSERT INTO `bx_access` VALUES('4','1','1','0','');
INSERT INTO `bx_access` VALUES('4','29','2','26','');
INSERT INTO `bx_access` VALUES('4','26','1','0','');
INSERT INTO `bx_access` VALUES('1','214','2','183','');
INSERT INTO `bx_access` VALUES('1','215','3','1','');
INSERT INTO `bx_access` VALUES('1','216','3','1','');
INSERT INTO `bx_access` VALUES('1','217','3','1','');
INSERT INTO `bx_access` VALUES('1','218','3','1','');
INSERT INTO `bx_access` VALUES('1','219','3','1','');
INSERT INTO `bx_access` VALUES('2','214','2','183','');
INSERT INTO `bx_access` VALUES('2','215','3','1','');
INSERT INTO `bx_access` VALUES('2','216','3','1','');
INSERT INTO `bx_access` VALUES('2','217','3','1','');
INSERT INTO `bx_access` VALUES('2','218','3','1','');
INSERT INTO `bx_access` VALUES('2','219','3','1','');
INSERT INTO `bx_access` VALUES('1','220','2','183','');
INSERT INTO `bx_access` VALUES('1','221','3','1','');
INSERT INTO `bx_access` VALUES('1','222','3','1','');
INSERT INTO `bx_access` VALUES('1','223','3','1','');
INSERT INTO `bx_access` VALUES('1','224','3','1','');
INSERT INTO `bx_access` VALUES('1','225','3','1','');
INSERT INTO `bx_access` VALUES('2','220','2','183','');
INSERT INTO `bx_access` VALUES('2','221','3','1','');
INSERT INTO `bx_access` VALUES('2','222','3','1','');
INSERT INTO `bx_access` VALUES('2','223','3','1','');
INSERT INTO `bx_access` VALUES('2','224','3','1','');
INSERT INTO `bx_access` VALUES('2','225','3','1','');
INSERT INTO `bx_access` VALUES('1','226','2','183','');
INSERT INTO `bx_access` VALUES('1','227','3','1','');
INSERT INTO `bx_access` VALUES('1','228','3','1','');
INSERT INTO `bx_access` VALUES('1','229','3','1','');
INSERT INTO `bx_access` VALUES('1','230','3','1','');
INSERT INTO `bx_access` VALUES('1','231','3','1','');
INSERT INTO `bx_access` VALUES('2','226','2','183','');
INSERT INTO `bx_access` VALUES('2','227','3','1','');
INSERT INTO `bx_access` VALUES('2','228','3','1','');
INSERT INTO `bx_access` VALUES('2','229','3','1','');
INSERT INTO `bx_access` VALUES('2','230','3','1','');
INSERT INTO `bx_access` VALUES('2','231','3','1','');
INSERT INTO `bx_access` VALUES('1','232','2','183','');
INSERT INTO `bx_access` VALUES('1','233','3','1','');
INSERT INTO `bx_access` VALUES('1','234','3','1','');
INSERT INTO `bx_access` VALUES('1','235','3','1','');
INSERT INTO `bx_access` VALUES('1','236','3','1','');
INSERT INTO `bx_access` VALUES('1','237','3','1','');
INSERT INTO `bx_access` VALUES('2','232','2','183','');
INSERT INTO `bx_access` VALUES('2','233','3','1','');
INSERT INTO `bx_access` VALUES('2','234','3','1','');
INSERT INTO `bx_access` VALUES('2','235','3','1','');
INSERT INTO `bx_access` VALUES('2','236','3','1','');
INSERT INTO `bx_access` VALUES('2','237','3','1','');
INSERT INTO `bx_access` VALUES('1','238','2','183','');
INSERT INTO `bx_access` VALUES('1','239','3','1','');
INSERT INTO `bx_access` VALUES('1','240','3','1','');
INSERT INTO `bx_access` VALUES('1','241','3','1','');
INSERT INTO `bx_access` VALUES('1','242','3','1','');
INSERT INTO `bx_access` VALUES('1','243','3','1','');
INSERT INTO `bx_access` VALUES('2','238','2','183','');
INSERT INTO `bx_access` VALUES('2','239','3','1','');
INSERT INTO `bx_access` VALUES('2','240','3','1','');
INSERT INTO `bx_access` VALUES('2','241','3','1','');
INSERT INTO `bx_access` VALUES('2','242','3','1','');
INSERT INTO `bx_access` VALUES('2','243','3','1','');
INSERT INTO `bx_access` VALUES('1','176','1','0','');
INSERT INTO `bx_access` VALUES('1','177','2','176','');
INSERT INTO `bx_access` VALUES('1','178','3','177','');
INSERT INTO `bx_access` VALUES('1','179','3','177','');
INSERT INTO `bx_access` VALUES('1','180','3','177','');
INSERT INTO `bx_access` VALUES('1','181','3','177','');
INSERT INTO `bx_access` VALUES('1','182','3','177','');
INSERT INTO `bx_access` VALUES('1','244','3','29','');
INSERT INTO `bx_access` VALUES('2','244','3','29','');
INSERT INTO `bx_access` VALUES('3','204','3','200','');
INSERT INTO `bx_access` VALUES('3','203','3','200','');
INSERT INTO `bx_access` VALUES('3','202','3','200','');
INSERT INTO `bx_access` VALUES('3','201','3','200','');
INSERT INTO `bx_access` VALUES('3','200','2','1','');
INSERT INTO `bx_access` VALUES('3','1','1','0','');
INSERT INTO `bx_access` VALUES('3','29','2','26','');
INSERT INTO `bx_access` VALUES('3','26','1','0','');
INSERT INTO `bx_access` VALUES('3','205','3','200','');
INSERT INTO `bx_access` VALUES('3','206','3','200','');
INSERT INTO `bx_access` VALUES('3','244','3','29','');
INSERT INTO `bx_access` VALUES('1','245','3','29','');
INSERT INTO `bx_access` VALUES('2','245','3','29','');
INSERT INTO `bx_access` VALUES('3','194','3','192','');
INSERT INTO `bx_access` VALUES('3','195','3','192','');
INSERT INTO `bx_access` VALUES('3','196','3','192','');
INSERT INTO `bx_access` VALUES('3','197','3','192','');
INSERT INTO `bx_access` VALUES('3','198','3','192','');
INSERT INTO `bx_access` VALUES('3','199','3','192','');
INSERT INTO `bx_access` VALUES('3','207','2','183','');
INSERT INTO `bx_access` VALUES('3','214','2','183','');
INSERT INTO `bx_access` VALUES('3','215','3','214','');
INSERT INTO `bx_access` VALUES('3','216','3','214','');
INSERT INTO `bx_access` VALUES('3','217','3','214','');
INSERT INTO `bx_access` VALUES('3','218','3','214','');
INSERT INTO `bx_access` VALUES('3','219','3','214','');
INSERT INTO `bx_access` VALUES('3','220','2','183','');
INSERT INTO `bx_access` VALUES('3','221','3','220','');
INSERT INTO `bx_access` VALUES('3','222','3','220','');
INSERT INTO `bx_access` VALUES('3','223','3','220','');
INSERT INTO `bx_access` VALUES('3','224','3','220','');
INSERT INTO `bx_access` VALUES('3','225','3','220','');
INSERT INTO `bx_access` VALUES('3','226','2','183','');
INSERT INTO `bx_access` VALUES('3','227','3','226','');
INSERT INTO `bx_access` VALUES('3','228','3','226','');
INSERT INTO `bx_access` VALUES('3','229','3','226','');
INSERT INTO `bx_access` VALUES('3','230','3','226','');
INSERT INTO `bx_access` VALUES('3','231','3','226','');
INSERT INTO `bx_access` VALUES('3','232','2','183','');
INSERT INTO `bx_access` VALUES('3','238','2','183','');
INSERT INTO `bx_access` VALUES('3','239','3','238','');
INSERT INTO `bx_access` VALUES('3','240','3','238','');
INSERT INTO `bx_access` VALUES('3','241','3','238','');
INSERT INTO `bx_access` VALUES('3','242','3','238','');
INSERT INTO `bx_access` VALUES('3','243','3','238','');
--
-- 表的结构bx_demo
--

DROP TABLE IF EXISTS `bx_demo`;
CREATE TABLE `bx_demo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `radio` varchar(32) NOT NULL,
  `checkbox` varchar(32) NOT NULL,
  `select` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `text` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='DEMO表，用于暂时没建表时建立应用的DEMO';

--
-- 转存表中的数据 bx_demo
--

INSERT INTO `bx_demo` VALUES('1','0','单选','复选','下拉','密码','文本');
INSERT INTO `bx_demo` VALUES('2','0','2','1','1','j ','可用吗？');
INSERT INTO `bx_demo` VALUES('3','1','','','','','');
INSERT INTO `bx_demo` VALUES('4','1','','','','','');
INSERT INTO `bx_demo` VALUES('5','1','','','','','');
--
-- 表的结构bx_field
--

DROP TABLE IF EXISTS `bx_field`;
CREATE TABLE `bx_field` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `app` varchar(24) NOT NULL COMMENT '应用',
  `module` varchar(24) NOT NULL COMMENT '模块',
  `action` varchar(24) NOT NULL DEFAULT 'index' COMMENT '操作，一定要填写，默认是index',
  `table_name` varchar(24) NOT NULL COMMENT '数据表名',
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
) ENGINE=MyISAM AUTO_INCREMENT=233 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 bx_field
--

INSERT INTO `bx_field` VALUES('1','Demo','Demo','demo','demo','text','文本框','文本框输入的DEMO','','0','0','','','text','','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('2','Demo','Demo','demo','demo','password','密码框','密码输入框','','0','0','','','password','','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('3','Demo','Demo','demo','demo','select','下拉选择框','下拉选择框DEMO\r\n','','0','0','','','select','array(array(\'name\'=>\'选项一\',\'value\'=>1),array(\'name\'=>\'选项二\',\'value\'=>2),);','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('4','Demo','Demo','demo','demo','checkbox','复选框','复选框demo','','0','0','','','checkbox','array(array(\'name\'=>\'选项一\',\'value\'=>1),array(\'name\'=>\'选项二\',\'value\'=>2),);','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('5','Demo','Demo','demo','demo','radio','单选框','单选框DEMO','','0','0','','','radio','array(array(\'name\'=>\'选项一\',\'value\'=>1),array(\'name\'=>\'选项二\',\'value\'=>2),);','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('6','','','index','jxc_product','cpmc','产品名称','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('7','','','index','jxc_product','cpdm','产品代码','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('8','','','index','jxc_product','cpgg','产品规格','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('9','','','index','jxc_product','cpfl','产品分类','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('10','','','index','jxc_product','gys','供应商','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('11','','','index','jxc_product','jhj','进货价','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('12','','','index','jxc_product_cat','title','分类名称','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('13','','','index','jxc_product_cat','pid','上级分类','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('14','','','index','jxc_product_price','xsdx','销售对象','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('15','','','index','jxc_product_price','price','价格','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('16','','','index','jxc_sales_slip_product','cpmc','产品名称','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('17','','','index','jxc_sales_slip_product','cpdm','产品代码','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('18','','','index','jxc_sales_slip_product','price','产品单价','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('19','','','index','jxc_sales_slip_product','scsl','售出数量','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('20','','','index','jxc_sales_slip_product','xszj','销售总价','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('21','','','index','jxc_sales_slip_product','cddh','出单单号','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('22','','','index','jxc_sales_slip','cddh','出单单号','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('23','','','index','jxc_sales_slip','hjzje','合计总金额','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('24','','','index','jxc_sales_slip','xsy','销售员','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('25','','','index','jxc_sales_slip','xsyid','销售员id','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('26','','','index','jxc_sales_slip','shr','审核人','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('27','','','index','jxc_sales_slip','shsj','审核时间','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('28','','','index','jxc_sales_slip','shrid','审核人id','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('29','','','index','jxc_sales_return','thdh','退货单号','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('30','','','index','jxc_sales_return','dyxsdh','对应销售单号','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('31','','','index','jxc_sales_return','khmc','客户名称','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('32','','','index','jxc_sales_return','khid','客户id','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('33','','','index','jxc_sales_return','thzje','退货总金额','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('34','','','index','jxc_sales_return','thyy','退货原因','','','0','512','','','textarea','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('35','','','index','jxc_sales_return','jsr','经手人','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('36','','','index','jxc_sales_return','jsrid','经手人id','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('37','','','index','jxc_sales_return_product','thdh','退货单号','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('38','','','index','jxc_sales_return_product','cpmc','产品名称','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('39','','','index','jxc_sales_return_product','cpdm','产品代码','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('40','','','index','jxc_sales_return_product','cpdj','产品单价','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('41','','','index','jxc_sales_return_product','thsl','退货数量','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('42','','','index','jxc_sales_return_product','thje','退货金额','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('43','','','index','jxc_procure','cgdh','采购单号','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('44','','','index','jxc_procure','yxzh','银行帐号','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('45','','','index','jxc_procure','cgzje','采购总金额','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('46','','','index','jxc_procure','cgy','采购员','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('47','','','index','jxc_procure','cgyid','采购员id','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('48','','','index','jxc_procure_return','thdh','退货单号','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('49','','','index','jxc_procure_return','dycgdh','对应采购单号','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('50','','','index','jxc_procure_return','thzje','退货总金额','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('51','','','index','jxc_procure_return','khmc','客户名称','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('52','','','index','jxc_procure_return','khid','客户id','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('53','','','index','jxc_procure_return','jsr','经手人','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('54','','','index','jxc_procure_return','jsrid','经手人id','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('55','','','index','jxc_procure_product','cgdh','采购单号','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('56','','','index','jxc_procure_product','cpmc','产品名称','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('57','','','index','jxc_procure_product','cpdm','产品代码','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','1','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('58','','','index','jxc_procure_product','ssfl','所属分类','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('59','','','index','jxc_procure_product','cfck','存放仓库','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('60','','','index','jxc_procure_product','cpdj','产品单价','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('61','','','index','jxc_procure_product','cpsl','产品数量','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('62','','','index','jxc_procure_product','cpgg','产品规格','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('63','','','index','jxc_procure','cgrq','采购日期','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('64','','','index','jxc_procure','rkrq','入库日期','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('65','','','index','jxc_inventory','ckid','仓库id','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('66','','','index','jxc_inventory','cpdm','产品代码','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('67','','','index','jxc_inventory','kcsl','库存数量','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('68','','','index','jxc_inventory','gxsj','更新时间','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('69','','','index','jxc_storage','pid','上级仓库','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('70','','','index','jxc_storage','cklj','仓库路径','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('71','','','index','jxc_storage','ckgly','仓库管理员','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('72','','','index','jxc_storage','ckglyid','仓库管理员id','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('73','','','index','jxc_storage','cksm','仓库说明','','','0','512','','','textarea','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('74','','','index','jxc_storage_transfer','cpdm','产品代码','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('75','','','index','jxc_storage_transfer','bcsl','拨出数量','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('76','','','index','jxc_storage_transfer','bcckid','拨出仓库id','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('77','','','index','jxc_storage_transfer','brckid','拨入仓库id','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('78','','','index','jxc_storage_transfer','dbrq','调拨日期','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('79','','','index','jxc_damage','cpmc','产品名称','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','1','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('80','','','index','jxc_damage','cpdm','产品代码','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','1','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('81','','','index','jxc_damage','bssl','报损数量','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('82','','','index','jxc_damage','bsyy','报损原因','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('83','','','index','jxc_damage','cpszck','产品所在仓库','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('84','','','index','jxc_finances','yxzh','银行帐号','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('85','','','index','jxc_finances','cwkmid','财务科目','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('86','','','index','jxc_finances','srje','收入金额','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('87','','','index','jxc_finances','zcje','支出金额','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('88','','','index','jxc_finances','szsm','收支说明','','','0','512','','','textarea','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('89','','','index','jxc_finances_cat','pid','上级科目','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('90','','','index','jxc_finances_cat','kmlj','科目路径','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('91','','','index','jxc_finances_cat','szfx','收支方向','','','0','1','','','select','array (\n  0 => \n  array (\n    \'name\' => \'收入\',\n    \'value\' => \'1\',\n  ),\n  1 => \n  array (\n    \'name\' => \'支出\',\n    \'value\' => \'2\',\n  ),\n  2 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('92','','','index','jxc_finances_cat','qtsm','其它说明','','','0','512','','','textarea','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('93','','','index','jxc_finances_cat','kmmc','科目名称','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('94','','','index','jxc_bank','yxzh','银行帐号','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('95','','','index','jxc_bank','khrxm','开户人姓名','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('96','','','index','jxc_bank','khyx','开户银行','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('97','','','index','jxc_bank','dqye','当前余额','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('98','','','index','jxc_bank','bgr','保管人','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('99','','','index','jxc_bank','bak','说明','','','0','512','','','textarea','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('100','','','index','jxc_customer','khmc','客户名称','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('101','','','index','jxc_customer','lxr','联系人','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('102','','','index','jxc_customer','lxdh','联系电话','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('103','','','index','jxc_customer','czhm','传真号码','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('104','','','index','jxc_customer','khdz','客户地址','','','0','128','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('105','','','index','jxc_customer','yzbm','邮政编码','','','0','6','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('106','','','index','jxc_customer','khqq','客户QQ','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('107','','','index','jxc_customer','email','电子邮箱','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('108','','','index','jxc_customer','tbww','淘宝旺旺','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('109','','','index','jxc_customer','khckye','客户存款余额','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('110','','','index','jxc_customer_cat','title','分类名称','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('111','','','index','jxc_customer_cat','pid','上级分类','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('112','','','index','jxc_customer_cat','cat_dir','分类路径','用,分开','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('113','','','index','jxc_customer_cat','bak','分类说明','','','0','512','','','textarea','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('114','','','index','jxc_supplier','name','供应商名称','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('115','','','index','jxc_supplier','cat_id','供应商分组','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('116','','','index','jxc_supplier','cat_dir','分组路径','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('117','','','index','jxc_supplier','lxr','联系人','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('118','','','index','jxc_supplier','phone_num','联系电话','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('119','','','index','jxc_supplier','qq','联系QQ','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('120','','','index','jxc_supplier','email','email','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('121','','','index','jxc_supplier','address','供应商地址','','','0','128','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('122','','','index','jxc_supplier','postcode','邮编','','','0','6','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('123','','','index','jxc_supplier','remark','备注','','','0','512','','','textarea','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('124','','','index','jxc_customer_money','customer_id','客户id','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('125','','','index','jxc_customer_money','flow','资金流向','','','0','2','','','radio','array (\n  0 => \n  array (\n    \'name\' => \'收入\',\n    \'value\' => \'收入\',\n  ),\n  1 => \n  array (\n    \'name\' => \'支出\',\n    \'value\' => \'支出\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('126','','','index','jxc_customer_money','money','金额','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('127','','','index','jxc_customer_money','remark','说明','','','0','512','','','textarea','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('128','','','index','jxc_customer_money','happen_date','发生时间','','','0','12','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('129','','','index','jxc_sales_slip','sale_date','销售日期','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('130','','','index','jxc_sales_slip','customer_id','客户id','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('131','','','index','jxc_procure','belong_month','所属月份','','','0','6','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('132','','','index','jxc_sales_slip','belong_month','所属月份','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('133','','','index','hrm_employe','name','姓名','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','1','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('134','','','index','hrm_employe','id_card','身份证','','','0','18','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','1','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('135','','','index','hrm_employe','department_id','所在部门','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('136','','','index','hrm_employe','post_id','职位','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('137','','','index','hrm_employe','pay_system','薪酬体系','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('138','','','index','hrm_employe','bank','开户银行','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('139','','','index','hrm_employe','bank_account','银行帐号','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('140','','','index','hrm_employe','entry_date','入职日期','','','0','12','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('141','','','index','hrm_employe','regularized_date','转正日期','','','0','12','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('142','','','index','hrm_employe','resume_id','简历ID','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('143','','','index','hrm_salary','name','姓名','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','1','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('144','','','index','hrm_salary','id_card','身份证','','','0','18','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','1','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('145','','','index','hrm_salary','pay_system_id','薪酬体系id','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('146','','','index','hrm_salary','need_attendance_days','应出勤天数','','','0','4','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('147','','','index','hrm_salary','actual_attendance_days','实际出勤天数','','','0','4','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('148','','','index','hrm_salary','should_wages','应发工资','','','0','512','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('149','','','index','hrm_salary','should_debit','应扣款','','','0','512','','','textarea','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('150','','','index','hrm_salary','real_wages','实发工资','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('151','','','index','hrm_salary','employee_signature','员工签名','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('152','','','index','hrm_salary','signature_date','签名日期','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('153','','','index','hrm_salary','bank','开户银行','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('154','','','index','hrm_salary','bank_account','银行帐号','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('155','','','index','hrm_salary','employee_number','员工编号','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('156','','','index','hrm_salary','belongs_month','所属月','','','0','6','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('157','','','index','tip','content','信息内容','','','0','512','','','textarea','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('158','','','index','tip','to_user_id','分配给用户','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('159','','','index','tip','callback_url','回调连接','','','0','256','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('160','','','index','hrm_salary_set','name','名称','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('161','','','index','hrm_salary_set','formula','公式','','','0','512','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('162','','','index','hrm_organizational','department_name','部门名称','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('163','','','index','hrm_organizational','department_heads_id','部门负责人','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('164','','','index','hrm_organizational','parent_id','上级部门','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('165','','','index','hrm_organizational','description','职责及工作说明','','','0','512','','','textarea','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('166','','','index','hrm_post','name','职位名称','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('167','','','index','hrm_post','description','工作职责及说明','','','0','512','','','textarea','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('168','','','index','hrm_post','plan_number','计划编制人数','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('169','','','index','hrm_resume','resume_code','简历编号','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','1','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('170','','','index','hrm_resume','name','姓名','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','1','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('171','','','index','hrm_resume','gender','性别','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'男\',\n    \'value\' => \'男\',\n  ),\n  1 => \n  array (\n    \'name\' => \'女\',\n    \'value\' => \'女\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('172','','','index','hrm_resume','id_card','身份证','','','0','18','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','1','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('173','','','index','hrm_resume','resume_document','简历文档','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('174','','','index','hrm_resume','nation','民族','','','0','24','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('175','','','index','hrm_resume','hometown','籍贯','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('176','','','index','hrm_resume','marital_status','婚姻状况','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'未婚\',\n    \'value\' => \'未婚\',\n  ),\n  1 => \n  array (\n    \'name\' => \'已婚\',\n    \'value\' => \'已婚\',\n  ),\n  2 => \n  array (\n    \'name\' => \'再婚\',\n    \'value\' => \'再婚\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('177','','','index','hrm_resume','health','健康状况','','','0','64','','','select','array (\n  0 => \n  array (\n    \'name\' => \'良好\',\n    \'value\' => \'良好\',\n  ),\n  1 => \n  array (\n    \'name\' => \'一般\',\n    \'value\' => \'一般\',\n  ),\n  2 => \n  array (\n    \'name\' => \'亚健康\',\n    \'value\' => \'亚健康\',\n  ),\n  3 => \n  array (\n    \'name\' => \'很差\',\n    \'value\' => \'很差\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('178','','','index','hrm_resume','political_landscape','政治面貌','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'群众\',\n    \'value\' => \'群众\',\n  ),\n  1 => \n  array (\n    \'name\' => \'团员\',\n    \'value\' => \'团员\',\n  ),\n  2 => \n  array (\n    \'name\' => \'党员\',\n    \'value\' => \'党员\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('179','','','index','hrm_resume','account_address','户口所在地','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('180','','','index','hrm_resume','present_address','现住址','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('181','','','index','hrm_talent','name','姓名','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('182','','','index','hrm_talent','gender','性别','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'男\',\n    \'value\' => \'男\',\n  ),\n  1 => \n  array (\n    \'name\' => \'女\',\n    \'value\' => \'女\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('183','','','index','hrm_talent','id_card','身份证','','','0','18','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('184','','','index','hrm_talent','resume_code','简历编号','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('185','','','index','hrm_talent','description','招聘过程描述','','','0','512','','','textarea','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('186','','','index','hrm_attendance','year_month','年月','','','0','6','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','1','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('187','','','index','hrm_attendance','day','日','','','0','2','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('188','','','index','hrm_attendance','attendance_time','考勤时间','','','0','5','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('189','','','index','hrm_attendance','punch_type','打卡类型','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'上午上班\',\n    \'value\' => \'上午上班\',\n  ),\n  1 => \n  array (\n    \'name\' => \'上午下班\',\n    \'value\' => \'上午下班\',\n  ),\n  2 => \n  array (\n    \'name\' => \'下午上班\',\n    \'value\' => \'下午上班\',\n  ),\n  3 => \n  array (\n    \'name\' => \'下午下班\',\n    \'value\' => \'下午下班\',\n  ),\n  4 => \n  array (\n    \'name\' => \'加班上班\',\n    \'value\' => \'加班上班\',\n  ),\n  5 => \n  array (\n    \'name\' => \'加班下班\',\n    \'value\' => \'加班下班\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('190','','','index','hrm_attendance','employee_number','员工编号','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('191','','','index','hrm_attendance','employee_name','员工姓名','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('192','','','index','hrm_attendance_month','year_month','年月','','','0','6','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','1','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('193','','','index','hrm_attendance_month','employee_number','员工编号','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','1','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('194','','','index','hrm_attendance_month','employee_name','员工姓名','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','1','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('195','','','index','hrm_attendance_month','need_attendance_days','本月应出勤天数','','','0','2','','','number','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('196','','','index','hrm_attendance_month','day01','01日','','','0','11','','','number','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('197','','','index','hrm_attendance_month','day02','02日','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('198','','','index','hrm_attendance_month','day03','03日','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('199','','','index','hrm_attendance_month','day04','04','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('200','','','index','hrm_attendance_month','day05','05','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('201','','','index','hrm_attendance_month','day06','06','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('202','','','index','hrm_attendance_month','day07','07','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('203','','','index','hrm_attendance_month','day08','08','','','0','64','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('204','','','index','hrm_attendance_month','day09','09','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('205','','','index','hrm_attendance_month','day10','10','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('206','','','index','hrm_attendance_month','day11','11','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('207','','','index','hrm_attendance_month','day12','12','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('208','','','index','hrm_attendance_month','day13','13','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('209','','','index','hrm_attendance_month','day14','14','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('210','','','index','hrm_attendance_month','day15','15','','','0','15','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('211','','','index','hrm_attendance_month','day16','16','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('212','','','index','hrm_attendance_month','day17','17','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('213','','','index','hrm_attendance_month','day18','18','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('214','','','index','hrm_attendance_month','day19','19','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('215','','','index','hrm_attendance_month','day20','20','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('216','','','index','hrm_attendance_month','day21','21','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('217','','','index','hrm_attendance_month','day22','22','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('218','','','index','hrm_attendance_month','day23','23','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('219','','','index','hrm_attendance_month','day24','24','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('220','','','index','hrm_attendance_month','day25','25','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('221','','','index','hrm_attendance_month','day26','26','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('222','','','index','hrm_attendance_month','day27','27','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('223','','','index','hrm_attendance_month','day28','28','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('224','','','index','hrm_attendance_month','day29','29','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('225','','','index','hrm_attendance_month','day30','30','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('226','','','index','hrm_attendance_month','day31','31','','','0','2','','','select','array (\n  0 => \n  array (\n    \'name\' => \'未记录\',\n    \'value\' => \'未记录\',\n  ),\n  1 => \n  array (\n    \'name\' => \'正常上班\',\n    \'value\' => \'1\',\n  ),\n  2 => \n  array (\n    \'name\' => \'加班\',\n    \'value\' => \'2\',\n  ),\n  3 => \n  array (\n    \'name\' => \'事假\',\n    \'value\' => \'3\',\n  ),\n  4 => \n  array (\n    \'name\' => \'病假\',\n    \'value\' => \'4\',\n  ),\n  5 => \n  array (\n    \'name\' => \'法定休假\',\n    \'value\' => \'5\',\n  ),\n  6 => \n  array (\n    \'name\' => \'补休\',\n    \'value\' => \'6\',\n  ),\n  7 => \n  array (\n    \'name\' => \'其它\',\n    \'value\' => \'10\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('227','','','index','hrm_resume','graduate_school','毕业院校','','','0','64','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('228','','','index','hrm_resume','degree','学历','','','0','12','','','select','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('229','','','index','hrm_resume','profession','专业','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('230','','','index','hrm_resume','intention_position','意向职位','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('231','','','index','hrm_resume','expect_salary','期望薪酬','','','0','0','','','money','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
INSERT INTO `bx_field` VALUES('232','','','index','hrm_resume','tel','联系电话','','','0','32','','','text','array (\n  0 => \n  array (\n    \'name\' => \'\',\n    \'value\' => \'\',\n  ),\n)','','','','0','0','0','1','0','0','0','0','0','0','1','1','0','0');
--
-- 表的结构bx_group
--

DROP TABLE IF EXISTS `bx_group`;
CREATE TABLE `bx_group` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `title` varchar(50) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 bx_group
--

INSERT INTO `bx_group` VALUES('1','Index','依面天应用中心','0','0','1','0','0');
INSERT INTO `bx_group` VALUES('2','Jinxiaocun','进销存','1353978978','0','1','0','1');
INSERT INTO `bx_group` VALUES('3','HRM','人力资源管理','1355725329','0','1','0','1');
--
-- 表的结构bx_hrm_attendance
--

DROP TABLE IF EXISTS `bx_hrm_attendance`;
CREATE TABLE `bx_hrm_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year_month` varchar(6) NOT NULL COMMENT '年月',
  `day` varchar(2) NOT NULL COMMENT '日',
  `attendance_time` varchar(5) NOT NULL COMMENT '考勤时间',
  `punch_type` varchar(32) NOT NULL COMMENT '打卡类型',
  `employee_number` varchar(32) NOT NULL COMMENT '员工编号',
  `employee_name` varchar(32) NOT NULL COMMENT '员工姓名',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='考勤管理-每日考勤打卡记录';

--
-- 转存表中的数据 bx_hrm_attendance
--

--
-- 表的结构bx_hrm_attendance_month
--

DROP TABLE IF EXISTS `bx_hrm_attendance_month`;
CREATE TABLE `bx_hrm_attendance_month` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year_month` varchar(6) NOT NULL COMMENT '年月',
  `employee_number` varchar(32) NOT NULL DEFAULT '0' COMMENT '员工编号',
  `employe_id` int(11) NOT NULL COMMENT '员工ID',
  `employee_name` varchar(32) NOT NULL COMMENT '员工姓名',
  `need_attendance_days` int(2) NOT NULL COMMENT '本月应出勤天数',
  `day01` int(11) NOT NULL COMMENT '01日',
  `day02` varchar(2) NOT NULL COMMENT '02日',
  `day03` varchar(2) NOT NULL COMMENT '03日',
  `day04` varchar(2) NOT NULL COMMENT '04',
  `day05` varchar(2) NOT NULL COMMENT '05',
  `day06` varchar(32) NOT NULL COMMENT '06',
  `day07` varchar(2) NOT NULL COMMENT '07',
  `day08` varchar(64) NOT NULL COMMENT '08',
  `day09` varchar(2) NOT NULL COMMENT '09',
  `day10` varchar(2) NOT NULL COMMENT '10',
  `day11` varchar(2) NOT NULL COMMENT '11',
  `day12` varchar(2) NOT NULL COMMENT '12',
  `day13` varchar(2) NOT NULL COMMENT '13',
  `day14` varchar(2) NOT NULL COMMENT '14',
  `day15` varchar(15) NOT NULL COMMENT '15',
  `day16` varchar(2) NOT NULL COMMENT '16',
  `day17` varchar(2) NOT NULL COMMENT '17',
  `day18` varchar(2) NOT NULL COMMENT '18',
  `day19` varchar(2) NOT NULL COMMENT '19',
  `day20` varchar(2) NOT NULL COMMENT '20',
  `day21` varchar(2) NOT NULL COMMENT '21',
  `day22` varchar(2) NOT NULL COMMENT '22',
  `day23` varchar(2) NOT NULL COMMENT '23',
  `day24` varchar(2) NOT NULL COMMENT '24',
  `day25` varchar(2) NOT NULL COMMENT '25',
  `day26` varchar(2) NOT NULL COMMENT '26',
  `day27` varchar(2) NOT NULL COMMENT '27',
  `day28` varchar(2) NOT NULL COMMENT '28',
  `day29` varchar(2) NOT NULL COMMENT '29',
  `day30` varchar(2) NOT NULL COMMENT '30',
  `day31` varchar(2) NOT NULL COMMENT '31',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='考勤管理-考勤管理-每个月中每天的考勤情况';

--
-- 转存表中的数据 bx_hrm_attendance_month
--

INSERT INTO `bx_hrm_attendance_month` VALUES('1','201212','A001','4','黄建文','26','1','2','3','4','5','2','10','1','1','','1','1','1','1','1','10','1','1','2','1','1','1','1','5','1','1','1','1','1','0','0','1','36','1357974030');
INSERT INTO `bx_hrm_attendance_month` VALUES('2','','','0','','0','0','0','0','0','3','0','0','0','0','3','0','0','0','1','0','0','0','0','2','0','0','0','0','0','0','0','0','0','0','0','0','1','1','1357612046');
--
-- 表的结构bx_hrm_employe
--

DROP TABLE IF EXISTS `bx_hrm_employe`;
CREATE TABLE `bx_hrm_employe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_number` varchar(32) NOT NULL COMMENT '员工编号',
  `name` varchar(32) NOT NULL COMMENT '姓名',
  `id_card` varchar(18) NOT NULL COMMENT '身份证',
  `department_id` int(11) NOT NULL COMMENT '所在部门',
  `post_id` int(11) NOT NULL COMMENT '职位',
  `pay_system` varchar(32) NOT NULL COMMENT '薪酬体系',
  `bank` varchar(64) NOT NULL COMMENT '开户银行',
  `bank_account` varchar(32) NOT NULL COMMENT '银行帐号',
  `entry_date` varchar(12) NOT NULL COMMENT '入职日期',
  `regularized_date` varchar(12) NOT NULL COMMENT '转正日期',
  `resume_code` varchar(24) NOT NULL COMMENT '简历编号',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1：离职，1：试用期，2：正式员工',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='员工基本信息';

--
-- 转存表中的数据 bx_hrm_employe
--

INSERT INTO `bx_hrm_employe` VALUES('4','A001','黄建文','441827198303144718','2','1','2','广发银行','123456789','2012-08-01','2012-08-01','0','1','1','1357541517');
INSERT INTO `bx_hrm_employe` VALUES('5','','李福芬','111111111111111111','3','3','1','广发银行','123456789','2013-01-15','2013-01-24','0','1','1','1357542847');
INSERT INTO `bx_hrm_employe` VALUES('6','','性别','222222222222222222','1','2','1','广发银行','123456789','2013-01-17','2013-01-29','1232','-1','1','1359104539');
INSERT INTO `bx_hrm_employe` VALUES('9','A002','李福芬','111111111111111111','1','1','1','中国人民银行','123456789','2013-01-10','','001','1','36','1359450244');
INSERT INTO `bx_hrm_employe` VALUES('8','','陈兰','44182719830314471','1','1','1','广发银行','123456789','2013-01-08','2013-01-23','EMT130129155338','2','36','1359446621');
--
-- 表的结构bx_hrm_organizational
--

DROP TABLE IF EXISTS `bx_hrm_organizational`;
CREATE TABLE `bx_hrm_organizational` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(64) NOT NULL COMMENT '部门名称',
  `department_heads_id` int(11) NOT NULL COMMENT '部门负责人',
  `plan_number` int(6) NOT NULL DEFAULT '0' COMMENT '计划编制人数',
  `parent_id` int(11) NOT NULL COMMENT '上级部门',
  `description` varchar(512) NOT NULL COMMENT '职责及工作说明',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='组织架构';

--
-- 转存表中的数据 bx_hrm_organizational
--

INSERT INTO `bx_hrm_organizational` VALUES('1','总经办','0','0','0','','1','1','1357268262');
INSERT INTO `bx_hrm_organizational` VALUES('2','行政中心','0','10','1','职责及工作说明','1','1','1357270269');
INSERT INTO `bx_hrm_organizational` VALUES('3','客服中心','1','0','0','客户服务部门','1','1','1357289469');
INSERT INTO `bx_hrm_organizational` VALUES('4','客服中心2','0','0','3','职责及工作说明','-1','1','1357540754');
--
-- 表的结构bx_hrm_post
--

DROP TABLE IF EXISTS `bx_hrm_post`;
CREATE TABLE `bx_hrm_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '职位名称',
  `description` varchar(512) NOT NULL COMMENT '工作职责及说明',
  `plan_number` int(11) NOT NULL COMMENT '计划编制人数',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位设置';

--
-- 转存表中的数据 bx_hrm_post
--

INSERT INTO `bx_hrm_post` VALUES('1','助理工程师','','5','1','1','1357267947');
INSERT INTO `bx_hrm_post` VALUES('2','初级工程师','工作职责及说明','10','1','1','1357268016');
INSERT INTO `bx_hrm_post` VALUES('3','中级工程师','','2','1','1','1357268037');
INSERT INTO `bx_hrm_post` VALUES('4','高级工程师','','2','1','1','1357268048');
--
-- 表的结构bx_hrm_resume
--

DROP TABLE IF EXISTS `bx_hrm_resume`;
CREATE TABLE `bx_hrm_resume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resume_code` varchar(32) NOT NULL COMMENT '简历编号',
  `name` varchar(32) NOT NULL COMMENT '姓名',
  `gender` varchar(2) NOT NULL COMMENT '性别',
  `id_card` varchar(18) NOT NULL COMMENT '身份证',
  `resume_document` varchar(64) NOT NULL COMMENT '简历文档',
  `nation` varchar(24) NOT NULL COMMENT '民族',
  `hometown` varchar(32) NOT NULL COMMENT '籍贯',
  `marital_status` varchar(32) NOT NULL COMMENT '婚姻状况',
  `health` varchar(64) NOT NULL COMMENT '健康状况',
  `political_landscape` varchar(32) NOT NULL COMMENT '政治面貌',
  `account_address` varchar(64) NOT NULL COMMENT '户口所在地',
  `present_address` varchar(32) NOT NULL COMMENT '现住址',
  `graduate_school` varchar(64) NOT NULL COMMENT '毕业院校',
  `degree` varchar(12) NOT NULL COMMENT '学历',
  `profession` varchar(32) NOT NULL COMMENT '专业',
  `intention_position` varchar(32) NOT NULL COMMENT '意向职位',
  `expect_salary` decimal(10,2) NOT NULL COMMENT '期望薪酬',
  `tel` varchar(32) NOT NULL COMMENT '联系电话',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示招聘前投的简历；2：列入人才库的简历',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='简历信息';

--
-- 转存表中的数据 bx_hrm_resume
--

INSERT INTO `bx_hrm_resume` VALUES('1','','','男','','','','','已婚','良好','党员','','','','','','','0.00','','1','1','1359010509');
INSERT INTO `bx_hrm_resume` VALUES('2','','','男','','','','','已婚','良好','党员','','','','','','','0.00','','1','1','1359010573');
INSERT INTO `bx_hrm_resume` VALUES('3','','感动天','男','','','','','已婚','良好','党员','','','','','','','0.00','','1','1','1359010645');
INSERT INTO `bx_hrm_resume` VALUES('4','','李福芬','女','111111111111111111','20130123032929.csv','','广东','已婚','良好','群众','广东','清远','','','','','0.00','','2','1','1359011480');
INSERT INTO `bx_hrm_resume` VALUES('5','','费用类别','男','111111111111111111','','','广东','已婚','良好','党员','广东','','','博士后','','','0.00','','2','1','1359015937');
INSERT INTO `bx_hrm_resume` VALUES('6','','产品代码','男','111111111111111111','/Public/uploads/HRM/Recruitment_management/201301/1359016004.csv','','','已婚','良好','党员','','','','博士后','','','0.00','','2','1','1359016004');
INSERT INTO `bx_hrm_resume` VALUES('7','','153456','男','111111111111111111','','','','已婚','良好','党员','','','','博士后','','','0.00','','2','1','1359016084');
INSERT INTO `bx_hrm_resume` VALUES('8','EMT130124165926','性别','男','222222222222222222','/Public/uploads/HRM/Recruitment_management/201301/1359017966.gif','','广东','已婚','良好','党员','','','','博士后','','','0.00','','2','1','1359017966');
INSERT INTO `bx_hrm_resume` VALUES('9','EMT130129155338','陈兰','女','44182719830314471','/Public/uploads/HRM/Recruitment_management/201301/1359446019.doc','汉','广东','已婚','良好','党员','广东','清远','没米大学','本科','电子信息工程','','100000.00','57782222','2','36','1359446018');
--
-- 表的结构bx_hrm_salary
--

DROP TABLE IF EXISTS `bx_hrm_salary`;
CREATE TABLE `bx_hrm_salary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '姓名',
  `id_card` varchar(18) NOT NULL COMMENT '身份证',
  `pay_system_id` int(11) NOT NULL COMMENT '薪酬体系id',
  `need_attendance_days` varchar(4) NOT NULL COMMENT '应出勤天数',
  `actual_attendance_days` varchar(4) NOT NULL COMMENT '实际出勤天数',
  `should_wages` varchar(512) NOT NULL COMMENT '应发工资',
  `should_debit` varchar(512) NOT NULL COMMENT '应扣款',
  `real_wages` int(11) NOT NULL COMMENT '实发工资',
  `employee_signature` varchar(32) NOT NULL COMMENT '员工签名',
  `signature_date` varchar(32) NOT NULL COMMENT '签名日期',
  `bank` varchar(64) NOT NULL COMMENT '开户银行',
  `bank_account` varchar(32) NOT NULL COMMENT '银行帐号',
  `employee_number` varchar(32) NOT NULL COMMENT '员工编号',
  `belongs_month` varchar(6) NOT NULL COMMENT '所属月',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='薪酬信息-记录每个月员工所发放的工资记录';

--
-- 转存表中的数据 bx_hrm_salary
--

INSERT INTO `bx_hrm_salary` VALUES('9','黄建文','441827198303144718','2','26','22','a:2:{s:12:\"基本工资\";s:4:\"1000\";s:12:\"岗位工资\";s:4:\"1000\";}','a:5:{s:23:\"住房公积金(个人)\";s:3:\"500\";s:12:\"社保个人\";s:3:\"400\";s:6:\"事假\";s:6:\"322.58\";s:6:\"病假\";s:6:\"241.94\";s:6:\"个税\";s:4:\"0.00\";}','535','','','广发银行','123456789','A001','201212','1','0','0');
--
-- 表的结构bx_hrm_salary_set
--

DROP TABLE IF EXISTS `bx_hrm_salary_set`;
CREATE TABLE `bx_hrm_salary_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '名称',
  `should_wages` varchar(512) NOT NULL COMMENT '应发工资公式',
  `should_debit` varchar(512) NOT NULL COMMENT '应扣款公式',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='根据公式来设定每个等级的薪酬';

--
-- 转存表中的数据 bx_hrm_salary_set
--

INSERT INTO `bx_hrm_salary_set` VALUES('1','初级工程师','基本工资:2000+岗位工资:3000','住房公积金(个人):500-社保个人:400-事假:5000/[￥本月天数]*[￥事假天数]*2-病假:5000/[￥本月天数]*[￥病假天数]*1.5-个税:[￥个人所得税]','1','1','1357609362');
INSERT INTO `bx_hrm_salary_set` VALUES('2','行政助理','基本工资:1000+岗位工资:1000','住房公积金(个人):500-社保个人:400-事假:5000/[￥本月天数]*[￥事假天数]*2-病假:5000/[￥本月天数]*[￥病假天数]*1.5-个税:[￥个人所得税]','1','1','1357609381');
--
-- 表的结构bx_hrm_talent
--

DROP TABLE IF EXISTS `bx_hrm_talent`;
CREATE TABLE `bx_hrm_talent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '姓名',
  `gender` varchar(2) NOT NULL COMMENT '性别',
  `id_card` varchar(18) NOT NULL COMMENT '身份证',
  `resume_code` varchar(32) NOT NULL COMMENT '简历编号',
  `resume_document` varchar(128) NOT NULL COMMENT '简历文档',
  `description` varchar(512) NOT NULL COMMENT '招聘过程描述',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1：进入面试；2:已入职员工',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='人才管理';

--
-- 转存表中的数据 bx_hrm_talent
--

INSERT INTO `bx_hrm_talent` VALUES('1','性别','男','222222222222222222','','/Public/uploads/HRM/Recruitment_management/201301/1359017966.gif','<p>列为人才</p>','2','1','1359102538');
INSERT INTO `bx_hrm_talent` VALUES('2','李福芬','女','111111111111111111','001','20130123032929.csv','<p>2013-01-25:<br />\r\n通过电话通知李福芬面试，约定时间为XXXX</p>','2','1','1359105110');
INSERT INTO `bx_hrm_talent` VALUES('3','陈兰','女','44182719830314471','EMT130129155338','/Public/uploads/HRM/Recruitment_management/201301/1359446019.doc','<p>2013-01-29:<br />\r\n通过电话57782222通知陈兰面试，约定时间为明天，找张总</p>\r\n<p><br />\r\n2013-01-29:</p>\r\n<p>可以入职</p>','2','36','1359446050');
--
-- 表的结构bx_jxc_bank
--

DROP TABLE IF EXISTS `bx_jxc_bank`;
CREATE TABLE `bx_jxc_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(64) NOT NULL COMMENT '银行帐号',
  `open_user` varchar(32) NOT NULL COMMENT '开户人姓名',
  `bank` varchar(64) NOT NULL COMMENT '开户银行',
  `balance` decimal(10,2) NOT NULL COMMENT '当前余额',
  `admin` varchar(32) NOT NULL COMMENT '保管人',
  `bak` varchar(512) NOT NULL COMMENT '说明',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='银行卡号管理';

--
-- 转存表中的数据 bx_jxc_bank
--

INSERT INTO `bx_jxc_bank` VALUES('1','0123456789','黄建文','中国人民银行','0.00','','','1','0','0');
--
-- 表的结构bx_jxc_customer
--

DROP TABLE IF EXISTS `bx_jxc_customer`;
CREATE TABLE `bx_jxc_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '客户名称',
  `contact` varchar(32) NOT NULL COMMENT '联系人',
  `contact_tel` varchar(32) NOT NULL COMMENT '联系电话',
  `fax` varchar(32) NOT NULL COMMENT '传真号码',
  `address` varchar(128) NOT NULL COMMENT '客户地址',
  `zip_code` varchar(6) NOT NULL COMMENT '邮政编码',
  `qq` varchar(32) NOT NULL COMMENT '客户QQ',
  `email` varchar(64) NOT NULL COMMENT '电子邮箱',
  `wanwan` varchar(32) NOT NULL COMMENT '淘宝旺旺',
  `deposit_balance` decimal(10,2) NOT NULL COMMENT '客户存款余额',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='客户列表';

--
-- 转存表中的数据 bx_jxc_customer
--

INSERT INTO `bx_jxc_customer` VALUES('1','客户黄','张先生','13800138000','10086','电信','000000','10000','test@163.com','','0.00','1','0','0');
INSERT INTO `bx_jxc_customer` VALUES('2','客户李','黄先生','13680033351','07635778222','广东清远','541004','38738862','hjwtp2005@qq.com','wanwan','0.00','1','0','0');
--
-- 表的结构bx_jxc_customer_cat
--

DROP TABLE IF EXISTS `bx_jxc_customer_cat`;
CREATE TABLE `bx_jxc_customer_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '分类名称',
  `pid` int(11) NOT NULL COMMENT '上级分类',
  `cat_dir` varchar(32) NOT NULL COMMENT '分类路径',
  `bak` varchar(512) NOT NULL COMMENT '分类说明',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客户分类';

--
-- 转存表中的数据 bx_jxc_customer_cat
--

--
-- 表的结构bx_jxc_customer_money
--

DROP TABLE IF EXISTS `bx_jxc_customer_money`;
CREATE TABLE `bx_jxc_customer_money` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL COMMENT '客户id',
  `flow` varchar(2) NOT NULL COMMENT '资金流向',
  `money` varchar(32) NOT NULL COMMENT '金额',
  `remark` varchar(512) NOT NULL COMMENT '说明',
  `happen_date` varchar(12) NOT NULL COMMENT '发生时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客户资金记录';

--
-- 转存表中的数据 bx_jxc_customer_money
--

--
-- 表的结构bx_jxc_damage
--

DROP TABLE IF EXISTS `bx_jxc_damage`;
CREATE TABLE `bx_jxc_damage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '产品名称',
  `code` varchar(32) NOT NULL COMMENT '产品代码',
  `number` int(11) NOT NULL COMMENT '报损数量',
  `remark` varchar(32) NOT NULL COMMENT '报损原因',
  `storage_id` varchar(32) NOT NULL COMMENT '产品所在仓库id',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='仓库中的产品报损记录';

--
-- 转存表中的数据 bx_jxc_damage
--

INSERT INTO `bx_jxc_damage` VALUES('1','产品名称','产品代码','0','报损原因','3','1','1','1355636917');
--
-- 表的结构bx_jxc_finances
--

DROP TABLE IF EXISTS `bx_jxc_finances`;
CREATE TABLE `bx_jxc_finances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_account` varchar(64) NOT NULL COMMENT '银行帐号',
  `cat_id` int(11) NOT NULL COMMENT '财务科目',
  `in_money` decimal(10,2) NOT NULL COMMENT '收入金额',
  `out_money` decimal(10,2) NOT NULL COMMENT '支出金额',
  `remark` varchar(512) NOT NULL COMMENT '收支说明',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='财务收支记录管理';

--
-- 转存表中的数据 bx_jxc_finances
--

INSERT INTO `bx_jxc_finances` VALUES('1','123456789','1','200.00','1000.00','支付采购单：EMT20121208165654的款项','1','0','0');
INSERT INTO `bx_jxc_finances` VALUES('2','789789678','2','12.00','31.00','1212','1','1','1355044806');
INSERT INTO `bx_jxc_finances` VALUES('3','0123456789','0','1000.00','0.00','需要收取出单单号：的款项','1','1','1355301505');
INSERT INTO `bx_jxc_finances` VALUES('4','0123456789','0','1000.00','0.00','需要收取出单单号：的款项','1','1','1355301627');
INSERT INTO `bx_jxc_finances` VALUES('5','0123456789','0','1000.00','0.00','需要收取出单单号：的款项','1','1','1355301650');
INSERT INTO `bx_jxc_finances` VALUES('6','0123456789','0','1000.00','0.00','需要收取出单单号：的款项','1','1','1355301680');
INSERT INTO `bx_jxc_finances` VALUES('7','0123456789','0','1000.00','0.00','需要收取出单单号：的款项','1','1','1355301689');
INSERT INTO `bx_jxc_finances` VALUES('8','0123456789','0','1000.00','0.00','需要收取出单单号：的款项','1','1','1355301722');
INSERT INTO `bx_jxc_finances` VALUES('9','0123456789','0','1000.00','0.00','需要收取出单单号：的款项','1','1','1355301802');
INSERT INTO `bx_jxc_finances` VALUES('10','0123456789','0','1000.00','0.00','需要收取出单单号：的款项','1','1','1355301829');
INSERT INTO `bx_jxc_finances` VALUES('11','0123456789','0','1000.00','0.00','需要收取出单单号：的款项','1','1','1355301937');
INSERT INTO `bx_jxc_finances` VALUES('12','0123456789','2','0.00','10000.00','支付采购单：EMT20121214152113的款项','1','1','1355469843');
INSERT INTO `bx_jxc_finances` VALUES('13','0123456789','0','1000.00','0.00','需要收取出单单号：EMT-OUT201212-00001的款项','1','1','1355471637');
INSERT INTO `bx_jxc_finances` VALUES('14','0123456789','2','0.00','1000000.00','支付采购单：EMT-IN201212-00001的款项','1','1','1355471926');
INSERT INTO `bx_jxc_finances` VALUES('15','','2','0.00','100000.00','支付采购单：EMT-IN201212-00001的款项','1','1','1355472160');
--
-- 表的结构bx_jxc_finances_cat
--

DROP TABLE IF EXISTS `bx_jxc_finances_cat`;
CREATE TABLE `bx_jxc_finances_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '上级科目',
  `path` varchar(32) NOT NULL COMMENT '科目路径',
  `direction` char(2) NOT NULL DEFAULT '收入' COMMENT '收支方向',
  `remark` varchar(512) NOT NULL COMMENT '其它说明',
  `title` varchar(32) NOT NULL COMMENT '科目名称',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='财务科目分类';

--
-- 转存表中的数据 bx_jxc_finances_cat
--

INSERT INTO `bx_jxc_finances_cat` VALUES('1','0','','收入','','科目001','1','0','0');
INSERT INTO `bx_jxc_finances_cat` VALUES('2','0','','收入','','科目002','1','0','0');
INSERT INTO `bx_jxc_finances_cat` VALUES('3','1','','收入','科目说明','采购产品','1','1','1355712181');
INSERT INTO `bx_jxc_finances_cat` VALUES('4','2','','支出','科目说明','采购退货','1','1','1355712637');
--
-- 表的结构bx_jxc_inventory
--

DROP TABLE IF EXISTS `bx_jxc_inventory`;
CREATE TABLE `bx_jxc_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_id` int(11) NOT NULL COMMENT '仓库id',
  `code` varchar(32) NOT NULL COMMENT '产品代码',
  `number` int(11) NOT NULL COMMENT '库存数量',
  `update_date` date NOT NULL COMMENT '库存最后一次更新时间',
  `remark` varchar(256) NOT NULL COMMENT '库存说明',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `storage_id` (`storage_id`,`code`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='库存明细列表';

--
-- 转存表中的数据 bx_jxc_inventory
--

INSERT INTO `bx_jxc_inventory` VALUES('1','2','产品代码','80','2012-12-07','7ui6t7i','-1','1','1355301937');
INSERT INTO `bx_jxc_inventory` VALUES('2','1','产品代码','2','2012-12-08','','1','1','1354957882');
INSERT INTO `bx_jxc_inventory` VALUES('3','4','001','100','2012-12-14','','1','1','1355469843');
INSERT INTO `bx_jxc_inventory` VALUES('4','4','产品代码02','1000','2012-12-14','','1','1','1355471926');
INSERT INTO `bx_jxc_inventory` VALUES('5','3','产品代码002','100','2012-12-14','','1','1','1355472160');
--
-- 表的结构bx_jxc_procure
--

DROP TABLE IF EXISTS `bx_jxc_procure`;
CREATE TABLE `bx_jxc_procure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `procure_num` varchar(64) NOT NULL COMMENT '采购单号',
  `bank_account` varchar(64) NOT NULL COMMENT '银行帐号',
  `total_amount` decimal(10,2) NOT NULL COMMENT '采购总金额',
  `buyer_id` varchar(32) NOT NULL COMMENT '采购员id',
  `buy_date` date NOT NULL COMMENT '采购日期',
  `warehouse_date` date NOT NULL COMMENT '入库日期',
  `belong_month` char(6) NOT NULL COMMENT '所属月份',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='采购单列表';

--
-- 转存表中的数据 bx_jxc_procure
--

INSERT INTO `bx_jxc_procure` VALUES('1','EMT20121207164853','123456789','1000.00','1','2012-12-07','2012-12-07','','1','0','0');
INSERT INTO `bx_jxc_procure` VALUES('2','EMT20121207165022','321654987','1234567.00','1','2012-12-07','2012-12-07','','1','0','0');
INSERT INTO `bx_jxc_procure` VALUES('3','EMT20121208165654','123456789','1000.00','1','2012-12-08','2012-12-08','','1','0','0');
INSERT INTO `bx_jxc_procure` VALUES('4','EMT20121208165654','123456789','1000.00','1','2012-12-08','2012-12-08','','1','0','0');
INSERT INTO `bx_jxc_procure` VALUES('5','EMT20121214152113','0123456789','10000.00','1','2012-12-14','2012-12-14','','1','0','0');
INSERT INTO `bx_jxc_procure` VALUES('6','EMT-IN201212-00001','0123456789','1000000.00','1','2012-12-14','2012-12-14','','1','0','0');
INSERT INTO `bx_jxc_procure` VALUES('7','EMT-IN201212-00001','','100000.00','1','2012-12-14','2012-12-14','201212','1','0','0');
INSERT INTO `bx_jxc_procure` VALUES('8','','','0.00','','0000-00-00','0000-00-00','201212','1','0','0');
INSERT INTO `bx_jxc_procure` VALUES('9','','','0.00','','0000-00-00','0000-00-00','201212','1','0','0');
INSERT INTO `bx_jxc_procure` VALUES('10','','','0.00','','0000-00-00','0000-00-00','201212','1','0','0');
--
-- 表的结构bx_jxc_procure_product
--

DROP TABLE IF EXISTS `bx_jxc_procure_product`;
CREATE TABLE `bx_jxc_procure_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `procure_num` varchar(32) NOT NULL COMMENT '采购单号',
  `name` varchar(64) NOT NULL COMMENT '产品名称',
  `code` varchar(32) NOT NULL COMMENT '产品代码',
  `cat_id` int(11) NOT NULL COMMENT '所属分类',
  `storage_id` int(11) NOT NULL COMMENT '存放仓库',
  `purchase_price` decimal(10,2) NOT NULL COMMENT '产品单价',
  `number` int(32) NOT NULL COMMENT '产品数量',
  `specification` varchar(32) NOT NULL COMMENT '产品规格',
  `supplier_id` int(11) NOT NULL COMMENT '供应商id',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='采购单的产品列表';

--
-- 转存表中的数据 bx_jxc_procure_product
--

INSERT INTO `bx_jxc_procure_product` VALUES('1','EMT20121207164853','产品名称','产品代码','1','2','1.00','2','产品规格','1','1','1','1354870158');
INSERT INTO `bx_jxc_procure_product` VALUES('2','EMT20121207165022','产品名称','产品代码','2','2','12.00','22','产品规格','1','1','1','1354870251');
INSERT INTO `bx_jxc_procure_product` VALUES('3','EMT20121208165654','产品名称','产品代码','2','1','213456.00','2','产品规格','1','1','1','1354957882');
INSERT INTO `bx_jxc_procure_product` VALUES('4','EMT20121214152113','产品名称001','001','4','4','100.00','100','产品规格001','1','1','1','1355469843');
INSERT INTO `bx_jxc_procure_product` VALUES('5','EMT-IN201212-00001','产品名称002','产品代码02','3','4','1000.00','1000','产品规格002','1','1','1','1355471926');
INSERT INTO `bx_jxc_procure_product` VALUES('6','EMT-IN201212-00001','产品名称002','产品代码002','8','3','1000.00','100','产品规格002','1','1','1','1355472160');
--
-- 表的结构bx_jxc_procure_return
--

DROP TABLE IF EXISTS `bx_jxc_procure_return`;
CREATE TABLE `bx_jxc_procure_return` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thdh` varchar(32) NOT NULL COMMENT '退货单号',
  `dycgdh` varchar(32) NOT NULL COMMENT '对应采购单号',
  `thzje` int(11) NOT NULL COMMENT '退货总金额',
  `khmc` varchar(64) NOT NULL COMMENT '客户名称',
  `khid` varchar(32) NOT NULL COMMENT '客户id',
  `jsr` varchar(32) NOT NULL COMMENT '经手人',
  `jsrid` varchar(32) NOT NULL COMMENT '经手人id',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='采购退货单列表';

--
-- 转存表中的数据 bx_jxc_procure_return
--

--
-- 表的结构bx_jxc_procure_return_product
--

DROP TABLE IF EXISTS `bx_jxc_procure_return_product`;
CREATE TABLE `bx_jxc_procure_return_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='采购退货单中的产品列表';

--
-- 转存表中的数据 bx_jxc_procure_return_product
--

--
-- 表的结构bx_jxc_product
--

DROP TABLE IF EXISTS `bx_jxc_product`;
CREATE TABLE `bx_jxc_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '产品名称',
  `code` varchar(64) NOT NULL COMMENT '产品代码',
  `cat_id` int(11) NOT NULL COMMENT '产品分类id',
  `specification` varchar(64) NOT NULL COMMENT '产品规格',
  `supplier_id` int(11) NOT NULL COMMENT '供应商id',
  `purchase_price` decimal(10,2) NOT NULL COMMENT '进货价',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='货物、产品列表';

--
-- 转存表中的数据 bx_jxc_product
--

INSERT INTO `bx_jxc_product` VALUES('1','产品名称','产品代码','1','产品规格','1','0.00','1','1','1354869623');
INSERT INTO `bx_jxc_product` VALUES('2','产品名称001','001','4','产品规格001','1','100.00','1','1','1355469843');
INSERT INTO `bx_jxc_product` VALUES('3','产品名称002','产品代码02','3','产品规格002','1','1000.00','1','1','1355471926');
INSERT INTO `bx_jxc_product` VALUES('4','产品名称002','产品代码002','8','产品规格002','1','1000.00','1','1','1355472160');
--
-- 表的结构bx_jxc_product_cat
--

DROP TABLE IF EXISTS `bx_jxc_product_cat`;
CREATE TABLE `bx_jxc_product_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '分类名称',
  `pid` int(11) NOT NULL COMMENT '上级分类',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='产品分类表';

--
-- 转存表中的数据 bx_jxc_product_cat
--

INSERT INTO `bx_jxc_product_cat` VALUES('1','分类001','0','1','1','1355014862');
INSERT INTO `bx_jxc_product_cat` VALUES('2','分类002','0','1','1','1355014874');
INSERT INTO `bx_jxc_product_cat` VALUES('3','分类001-1','1','1','1','1355014887');
INSERT INTO `bx_jxc_product_cat` VALUES('4','分类001-2','1','1','1','1355014896');
INSERT INTO `bx_jxc_product_cat` VALUES('5','分类002-1','2','1','1','1355014909');
INSERT INTO `bx_jxc_product_cat` VALUES('6','分类002-20','2','-1','1','1355276105');
INSERT INTO `bx_jxc_product_cat` VALUES('7','分类002-3','2','1','1','1355276143');
INSERT INTO `bx_jxc_product_cat` VALUES('8','分类001-1-2','3','1','1','1355282459');
--
-- 表的结构bx_jxc_product_price
--

DROP TABLE IF EXISTS `bx_jxc_product_price`;
CREATE TABLE `bx_jxc_product_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xsdx` varchar(32) NOT NULL COMMENT '销售对象',
  `price` varchar(32) NOT NULL COMMENT '价格',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品对应不同对象的价格';

--
-- 转存表中的数据 bx_jxc_product_price
--

--
-- 表的结构bx_jxc_sales_return
--

DROP TABLE IF EXISTS `bx_jxc_sales_return`;
CREATE TABLE `bx_jxc_sales_return` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_NO` varchar(64) NOT NULL COMMENT '对应销售单号',
  `product_code` varchar(64) NOT NULL COMMENT ' 产品代码',
  `product_number` int(11) NOT NULL COMMENT '产品数量',
  `customer_id` int(11) NOT NULL COMMENT '客户id',
  `return_money` decimal(10,2) NOT NULL COMMENT '退货总金额',
  `remark` varchar(512) NOT NULL COMMENT '退货原因',
  `return_date` date NOT NULL COMMENT '退货日期',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='销售的产品退货单';

--
-- 转存表中的数据 bx_jxc_sales_return
--

--
-- 表的结构bx_jxc_sales_return_product
--

DROP TABLE IF EXISTS `bx_jxc_sales_return_product`;
CREATE TABLE `bx_jxc_sales_return_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thdh` varchar(32) NOT NULL COMMENT '退货单号',
  `cpmc` varchar(32) NOT NULL COMMENT '产品名称',
  `cpdm` varchar(32) NOT NULL COMMENT '产品代码',
  `cpdj` varchar(32) NOT NULL COMMENT '产品单价',
  `thsl` int(11) NOT NULL COMMENT '退货数量',
  `thje` varchar(32) NOT NULL COMMENT '退货金额',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='退货单产品记录';

--
-- 转存表中的数据 bx_jxc_sales_return_product
--

--
-- 表的结构bx_jxc_sales_slip
--

DROP TABLE IF EXISTS `bx_jxc_sales_slip`;
CREATE TABLE `bx_jxc_sales_slip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `out_number` varchar(64) NOT NULL COMMENT '出单单号',
  `total_amount` decimal(10,2) NOT NULL COMMENT '合计总金额',
  `salesman_id` int(32) NOT NULL COMMENT '销售员id',
  `auditor_id` varchar(32) NOT NULL COMMENT '审核人',
  `audit_date` date NOT NULL COMMENT '审核日期',
  `sale_date` date NOT NULL COMMENT '销售日期',
  `customer_id` int(11) NOT NULL COMMENT '客户id',
  `belong_month` char(6) NOT NULL COMMENT '所属月份',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='销售单列表，与jxc_sales_slip_product关联';

--
-- 转存表中的数据 bx_jxc_sales_slip
--

INSERT INTO `bx_jxc_sales_slip` VALUES('1','EMT20121212163403','1000.00','1','1','2012-12-13','2012-12-12','1','','1','1','1355301937');
INSERT INTO `bx_jxc_sales_slip` VALUES('2','EMT-OUT201212-00001','1000.00','3','','0000-00-00','2012-12-14','1','','1','1','1355471637');
--
-- 表的结构bx_jxc_sales_slip_product
--

DROP TABLE IF EXISTS `bx_jxc_sales_slip_product`;
CREATE TABLE `bx_jxc_sales_slip_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '产品名称',
  `code` varchar(64) NOT NULL COMMENT '产品代码',
  `specification` varchar(64) NOT NULL COMMENT '产品规格',
  `price` decimal(10,2) NOT NULL COMMENT '产品单价',
  `number` int(11) NOT NULL COMMENT '售出数量',
  `out_number` varchar(64) NOT NULL COMMENT '出单单号',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='销售单的产品记录';

--
-- 转存表中的数据 bx_jxc_sales_slip_product
--

INSERT INTO `bx_jxc_sales_slip_product` VALUES('1','产品名称','产品代码','产品规格','100.00','10','EMT20121212163403','1','1','1355301937');
INSERT INTO `bx_jxc_sales_slip_product` VALUES('2','产品名称001','产品代码001','产品规格','100.00','10','EMT-OUT201212-00001','1','1','1355471637');
--
-- 表的结构bx_jxc_storage
--

DROP TABLE IF EXISTS `bx_jxc_storage`;
CREATE TABLE `bx_jxc_storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '上级仓库',
  `name` varchar(32) NOT NULL COMMENT '仓库名称',
  `pid_dir` varchar(32) NOT NULL COMMENT '仓库路径',
  `admin_id` varchar(32) NOT NULL COMMENT '仓库管理员id',
  `remark` varchar(512) NOT NULL COMMENT '仓库说明',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='仓库列表';

--
-- 转存表中的数据 bx_jxc_storage
--

INSERT INTO `bx_jxc_storage` VALUES('1','0','仓库001','','1','','1','0','0');
INSERT INTO `bx_jxc_storage` VALUES('2','0','仓库002','','1','','1','0','0');
INSERT INTO `bx_jxc_storage` VALUES('3','1','仓库001-1','','','','1','0','0');
INSERT INTO `bx_jxc_storage` VALUES('4','3','仓库001-1-1','','3','仓库说明','1','0','0');
--
-- 表的结构bx_jxc_storage_transfer
--

DROP TABLE IF EXISTS `bx_jxc_storage_transfer`;
CREATE TABLE `bx_jxc_storage_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpdm` varchar(32) NOT NULL COMMENT '产品代码',
  `bcsl` varchar(32) NOT NULL COMMENT '拨出数量',
  `bcckid` varchar(32) NOT NULL COMMENT '拨出仓库',
  `brckid` varchar(32) NOT NULL COMMENT '拨入仓库id',
  `dbrq` varchar(32) NOT NULL COMMENT '调拨日期',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='仓库调拨';

--
-- 转存表中的数据 bx_jxc_storage_transfer
--

--
-- 表的结构bx_jxc_supplier
--

DROP TABLE IF EXISTS `bx_jxc_supplier`;
CREATE TABLE `bx_jxc_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '供应商名称',
  `cat_id` int(11) NOT NULL COMMENT '供应商分组',
  `cat_dir` varchar(32) NOT NULL COMMENT '分组路径',
  `lxr` varchar(32) NOT NULL COMMENT '联系人',
  `phone_num` varchar(32) NOT NULL COMMENT '联系电话',
  `qq` varchar(32) NOT NULL COMMENT '联系QQ',
  `email` varchar(32) NOT NULL COMMENT 'email',
  `address` varchar(128) NOT NULL COMMENT '供应商地址',
  `postcode` varchar(6) NOT NULL COMMENT '邮编',
  `remark` varchar(512) NOT NULL COMMENT '备注',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='供应商列表';

--
-- 转存表中的数据 bx_jxc_supplier
--

INSERT INTO `bx_jxc_supplier` VALUES('1','供应商001','0','4545','黄建文','454','45','545','454','45','54','1','0','0');
--
-- 表的结构bx_jxc_supplier_cat
--

DROP TABLE IF EXISTS `bx_jxc_supplier_cat`;
CREATE TABLE `bx_jxc_supplier_cat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='供应商分组';

--
-- 转存表中的数据 bx_jxc_supplier_cat
--

--
-- 表的结构bx_menu
--

DROP TABLE IF EXISTS `bx_menu`;
CREATE TABLE `bx_menu` (
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
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8 COMMENT='系统导航菜单，app,module,action用于生成菜单的位置,node_id为找出上级节点菜单作准备';

--
-- 转存表中的数据 bx_menu
--

INSERT INTO `bx_menu` VALUES('1','0','','系统管理','menu','_self','#','Sys','','','1','1','1','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('2','1','','应用管理','menu','main-frame','/index.php/Sys/Index/index','Sys','Index','','2','2','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('3','2','','项目列表','menu','main-frame','/index.php/Sys/Index/index','Sys','Index','','3','3','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('4','2','','添加','main','_self','javascript:dialog_add();','Sys','Index','','4','4','1','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('5','2','','修改','main','_self','javascript:diaolog_edit();','Sys','Index','','5','5','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('6','2','','禁用','main','_self','javascript:diaolog_delete();','Sys','Index','','6','6','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('7','2','','删除','main','_self','javascript:diaolog_foreverdelete();','Sys','Index','','7','7','1','0','[1][2]','0','-1');
INSERT INTO `bx_menu` VALUES('8','1','','系统表管理','menu','main-frame','/index.php/Sys/Table/index','Sys','Table','','8','8','1','0','[1]','0','1');
INSERT INTO `bx_menu` VALUES('9','8','','表管理','menu','main-frame','/index.php/Sys/Table/index','Sys','Table','','9','9','1','0','[1]','0','0');
INSERT INTO `bx_menu` VALUES('10','8','','添加','main','_self','javascript:dialog_add();','Sys','Table','','10','10','1','0','[1]','0','1');
INSERT INTO `bx_menu` VALUES('11','8','','修改','main','_self','javascript:diaolog_edit();','Sys','Table','','11','11','1','0','[1]','0','0');
INSERT INTO `bx_menu` VALUES('12','8','','禁用','main','_self','javascript:diaolog_delete();','Sys','Table','','12','12','1','0','[1]','0','0');
INSERT INTO `bx_menu` VALUES('13','8','','删除','main','_self','javascript:diaolog_foreverdelete();','Sys','Table','','13','13','1','0','[1]','0','0');
INSERT INTO `bx_menu` VALUES('14','1','','字段管理','menu','main-frame','/index.php/Sys/Field/index','Sys','Field','','14','14','1','0','[1]','0','0');
INSERT INTO `bx_menu` VALUES('15','14','','字段列表','menu','main-frame','/index.php/Sys/Field/index','Sys','Field','','15','15','1','0','[1]','0','0');
INSERT INTO `bx_menu` VALUES('16','14','','添加','main','_self','javascript:dialog_add();','Sys','Field','','16','16','1','0','[1]','0','1');
INSERT INTO `bx_menu` VALUES('17','14','','修改','main','_self','javascript:diaolog_edit();','Sys','Field','','17','17','1','0','[1]','0','0');
INSERT INTO `bx_menu` VALUES('18','14','','禁用','main','_self','javascript:diaolog_delete();','Sys','Field','','18','18','1','0','[1]','0','0');
INSERT INTO `bx_menu` VALUES('19','14','','删除','main','_self','javascript:diaolog_foreverdelete();','Sys','Field','','19','19','1','0','[1]','0','0');
INSERT INTO `bx_menu` VALUES('20','1','','软件仓库','menu','main-frame','/index.php/Sys/Software/index','Sys','Software','','20','20','1','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('21','20','','软件列表','menu','main-frame','/index.php/Sys/Software/index','Sys','Software','','21','21','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('22','20','','添加','main','_self','javascript:dialog_add();','Sys','Software','','22','22','1','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('23','20','','修改','main','_self','javascript:diaolog_edit();','Sys','Software','','23','23','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('24','20','','禁用','main','_self','javascript:diaolog_delete();','Sys','Software','','24','24','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('25','20','','删除','main','_self','javascript:diaolog_foreverdelete();','Sys','Software','','25','25','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('26','0','','权限管理','menu','_self','#','Rbac','','','26','26','1','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('27','26','','默认模块','menu','_self','#','Rbac','Index','','27','27','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('28','27','','数据列表','menu','main-frame','/index.php/Rbac/Index/index','Rbac','Index','','28','28','1','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('29','26','','用户管理','menu','main-frame','/index.php/Rbac/User/index','Rbac','User','','29','29','1','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('30','29','','用户列表','menu','main-frame','/index.php/Rbac/User/index','Rbac','User','','30','30','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('31','29','','添加','main','_self','javascript:dialog_add();','Rbac','User','','31','31,26,244,245','1','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('32','29','','修改','main','_self','javascript:diaolog_edit();','Rbac','User','','32','32','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('33','29','','禁用','main','_self','javascript:diaolog_delete();','Rbac','User','','33','33','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('34','29','','删除','main','_self','javascript:diaolog_foreverdelete();','Rbac','User','','34','34','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('35','26','','角色管理','menu','main-frame','/index.php/Rbac/Role/index','Rbac','Role','','35','35','1','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('36','35','','角色列表','menu','main-frame','/index.php/Rbac/Role/index','Rbac','Role','','36','36','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('37','35','','添加','main','_self','javascript:dialog_add();','Rbac','Role','','37','37','1','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('38','35','','修改','main','_self','javascript:diaolog_edit();','Rbac','Role','','38','38','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('39','35','','禁用','main','_self','javascript:diaolog_delete();','Rbac','Role','','39','39','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('40','35','','删除','main','_self','javascript:diaolog_foreverdelete();','Rbac','Role','','40','40','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('41','26','','菜单管理','menu','main-frame','/index.php/Rbac/Menu/index','Rbac','Menu','','41','41','1','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('42','41','','菜单设置','menu','main-frame','/index.php/Rbac/Menu/index','Rbac','Menu','','42','42','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('43','41','','添加','main','_self','javascript:dialog_add();','Rbac','Menu','','43','43','1','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('44','41','','修改','main','_self','javascript:diaolog_edit();','Rbac','Menu','','44','44','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('45','41','','禁用','main','_self','javascript:diaolog_delete();','Rbac','Menu','','45','45','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('46','41','','删除','main','_self','javascript:diaolog_foreverdelete();','Rbac','Menu','','46','46','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('48','0','','进销存','menu','_self','#','Jinxiaocun','','','48','48','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('49','48','','系统信息','menu','main-frame','/index.php/Jinxiaocun/Index/index','Jinxiaocun','Index','','49','49','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('50','49','','系统信息','menu','main-frame','/index.php/Jinxiaocun/Index/index','Jinxiaocun','Index','','50','50','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('51','49','','导出数据','main','_self','/index.php/Jinxiaocun/Index/export','Jinxiaocun','Index','','51','51','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('52','49','','添加','main','_self','javascript:dialog_add();','Jinxiaocun','Index','','52','52','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('53','49','','修改','main','_self','javascript:diaolog_edit();','Jinxiaocun','Index','','53','53','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('54','49','','禁用','main','_self','javascript:diaolog_delete();','Jinxiaocun','Index','','54','54','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('55','49','','删除','main','_self','javascript:diaolog_foreverdelete();','Jinxiaocun','Index','','55','55','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('56','49','','导入数据','main','_self','/index.php/Jinxiaocun/Index/import','Jinxiaocun','Index','','56','56','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('57','48','','销售管理','menu','main-frame','/index.php/Jinxiaocun/Xiaoshouguanli/index','Jinxiaocun','Xiaoshouguanli','','57','57','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('58','57','','产品列表','menu','main-frame','/index.php/Jinxiaocun/Xiaoshouguanli/index','Jinxiaocun','Xiaoshouguanli','','58','58,57','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('59','57','','采购产品','main','_self','javascript:dialog_add();','Jinxiaocun','Xiaoshouguanli','index','59','59','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('60','57','','修改','main','_self','javascript:diaolog_edit();','Jinxiaocun','Xiaoshouguanli','','60','60','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('61','57','','禁用','main','_self','javascript:diaolog_delete();','Jinxiaocun','Xiaoshouguanli','','61','61','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('62','57','','删除','main','_self','javascript:diaolog_foreverdelete();','Jinxiaocun','Xiaoshouguanli','','62','62','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('63','57','','产品分类','menu','main-frame','/index.php/Jinxiaocun/Chanpinfenlei/index','Jinxiaocun','Chanpinfenlei','','63','63','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('64','63','','产品分类列表','menu','main-frame','/index.php/Jinxiaocun/Chanpinfenlei/index','Jinxiaocun','Chanpinfenlei','','64','64','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('65','63','','添加','main','_self','javascript:dialog_add();','Jinxiaocun','Chanpinfenlei','index','65','65','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('66','63','','修改','main','_self','javascript:diaolog_edit();','Jinxiaocun','Chanpinfenlei','','66','66','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('67','63','','禁用','main','_self','javascript:diaolog_delete();','Jinxiaocun','Chanpinfenlei','','67','67','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('68','63','','删除','main','_self','javascript:diaolog_foreverdelete();','Jinxiaocun','Chanpinfenlei','','68','68','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('69','57','','销售对象','menu','main-frame','/index.php/Jinxiaocun/Xiaoshouguanli/price_index','Jinxiaocun','Xiaoshouguanli','','69','69','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('70','57','','添加销售对象','main','_self','javascript:dialog_add();','Jinxiaocun','Xiaoshouguanli','price_index','70','70','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('71','57','','修改','main','_self','javascript:diaolog_edit();','Jinxiaocun','Xiaoshouguanli','','71','71','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('72','57','','禁用','main','_self','javascript:diaolog_delete();','Jinxiaocun','Xiaoshouguanli','','72','72','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('73','57','','删除','main','_self','javascript:diaolog_foreverdelete();','Jinxiaocun','Xiaoshouguanli','','73','73','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('74','57','','销售记录','menu','main-frame','/index.php/Jinxiaocun/Xiaoshouguanli/sales_index','Jinxiaocun','Xiaoshouguanli','','74','74','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('75','57','','添加','main','_self','javascript:dialog_add();','Jinxiaocun','Xiaoshouguanli','sales_index','75','75','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('76','57','','修改','main','_self','javascript:diaolog_edit();','Jinxiaocun','Xiaoshouguanli','','76','76','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('77','57','','禁用','main','_self','javascript:diaolog_delete();','Jinxiaocun','Xiaoshouguanli','','77','77','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('78','57','','删除','main','_self','javascript:diaolog_foreverdelete();','Jinxiaocun','Xiaoshouguanli','','78','78','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('79','57','','退货记录','menu','main-frame','/index.php/Jinxiaocun/Xiaoshouguanli/return_index','Jinxiaocun','Xiaoshouguanli','','79','79','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('80','57','','添加','main','_self','javascript:dialog_add();','Jinxiaocun','Xiaoshouguanli','return_index','80','80','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('81','57','','修改','main','_self','javascript:diaolog_edit();','Jinxiaocun','Xiaoshouguanli','','81','81','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('82','57','','禁用','main','_self','javascript:diaolog_delete();','Jinxiaocun','Xiaoshouguanli','','82','82','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('83','57','','删除','main','_self','javascript:diaolog_foreverdelete();','Jinxiaocun','Xiaoshouguanli','','83','83','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('84','48','','采购管理','menu','main-frame','/index.php/Jinxiaocun/Caigouguanli/index','Jinxiaocun','Caigouguanli','','84','84','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('85','84','','采购记录','menu','main-frame','/index.php/Jinxiaocun/Caigouguanli/index','Jinxiaocun','Caigouguanli','','85','85','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('86','84','','采购产品','main','_self','javascript:dialog_add();','Jinxiaocun','Caigouguanli','index','86','86','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('87','84','','修改','main','_self','javascript:diaolog_edit();','Jinxiaocun','Caigouguanli','','87','87','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('88','84','','禁用','main','_self','javascript:diaolog_delete();','Jinxiaocun','Caigouguanli','','88','88','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('89','84','','删除','main','_self','javascript:diaolog_foreverdelete();','Jinxiaocun','Caigouguanli','','89','89','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('90','84','','采购退货','menu','main-frame','/index.php/Jinxiaocun/Caigouguanli/return_index','Jinxiaocun','Caigouguanli','','90','90','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('91','84','','添加','main','_self','javascript:dialog_add();','Jinxiaocun','Caigouguanli','return_index','91','91','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('92','84','','修改','main','_self','javascript:diaolog_edit();','Jinxiaocun','Caigouguanli','','92','92','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('93','84','','禁用','main','_self','javascript:diaolog_delete();','Jinxiaocun','Caigouguanli','','93','93','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('94','84','','删除','main','_self','javascript:diaolog_foreverdelete();','Jinxiaocun','Caigouguanli','','94','94','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('95','48','','库存管理','menu','main-frame','/index.php/Jinxiaocun/Kucunguanli/index','Jinxiaocun','Kucunguanli','','95','95','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('96','95','','库存查询','menu','main-frame','/index.php/Jinxiaocun/Kucunguanli/index','Jinxiaocun','Kucunguanli','index','96','96','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('97','95','','添加','main','_self','javascript:dialog_add();','Jinxiaocun','Kucunguanli','index','97','97','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('98','95','','修改','main','_self','javascript:diaolog_edit();','Jinxiaocun','Kucunguanli','index','98','98','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('99','95','','禁用','main','_self','javascript:diaolog_delete();','Jinxiaocun','Kucunguanli','','99','99','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('100','95','','删除','main','_self','javascript:diaolog_foreverdelete();','Jinxiaocun','Kucunguanli','','100','100','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('101','95','','仓库管理','menu','main-frame','/index.php/Jinxiaocun/Kucunguanli/storage_list','Jinxiaocun','Kucunguanli','','101','101','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('102','95','','添加','main','_self','javascript:dialog_add();','Jinxiaocun','Kucunguanli','storage_list','102','102','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('103','95','','修改','main','_self','javascript:diaolog_edit();','Jinxiaocun','Kucunguanli','','103','103','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('104','95','','禁用','main','_self','javascript:diaolog_delete();','Jinxiaocun','Kucunguanli','','104','104','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('105','95','','删除','main','_self','javascript:diaolog_foreverdelete();','Jinxiaocun','Kucunguanli','','105','105','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('125','95','','报损产品','menu','main-frame','/index.php/Jinxiaocun/Kucunguanli/bscp_list','Jinxiaocun','Kucunguanli','','125','125','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('126','95','','添加报损记录','main','_self','javascript:dialog_add();','Jinxiaocun','Morenmokuai','bscp_list','126','126','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('127','95','','修改','main','_self','javascript:diaolog_edit();','Jinxiaocun','Morenmokuai','','127','127','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('128','95','','禁用','main','_self','javascript:diaolog_delete();','Jinxiaocun','Morenmokuai','','128','128','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('129','95','','删除','main','_self','javascript:diaolog_foreverdelete();','Jinxiaocun','Morenmokuai','','129','129','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('130','48','','财务管理','menu','main-frame','/index.php/Jinxiaocun/Caiwuguanli/index','Jinxiaocun','Caiwuguanli','','130','130','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('113','95','','仓库调拨','menu','main-frame','/index.php/Jinxiaocun/Kucunguanli/transfer_list','Jinxiaocun','Kucunguanli','','113','113','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('114','95','','添加调拨记录','main','_self','javascript:dialog_add();','Jinxiaocun','Kucunguanli','transfer_list','114','114','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('115','95','','修改','main','_self','javascript:diaolog_edit();','Jinxiaocun','Kucunguanli','','115','115','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('116','95','','禁用','main','_self','javascript:diaolog_delete();','Jinxiaocun','Kucunguanli','','116','116','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('117','95','','删除','main','_self','javascript:diaolog_foreverdelete();','Jinxiaocun','Kucunguanli','','117','117','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('131','130','','财务查询','menu','main-frame','/index.php/Jinxiaocun/Caiwuguanli/index','Jinxiaocun','Caiwuguanli','','131','131','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('132','130','','添加','main','_self','javascript:dialog_add();','Jinxiaocun','Caiwuguanli','index','132','132','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('133','130','','修改','main','_self','javascript:diaolog_edit();','Jinxiaocun','Caiwuguanli','','133','133','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('134','130','','禁用','main','_self','javascript:diaolog_delete();','Jinxiaocun','Caiwuguanli','','134','134','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('135','130','','删除','main','_self','javascript:diaolog_foreverdelete();','Jinxiaocun','Caiwuguanli','','135','135','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('136','130','','科目设置','menu','main-frame','/index.php/Jinxiaocun/Caiwuguanli/kmsz_list','Jinxiaocun','Caiwuguanli','','136','136','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('137','130','','添加科目','main','_self','javascript:dialog_add();','Jinxiaocun','Caiwuguanli','kmsz_list','137','137','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('138','130','','修改','main','_self','javascript:diaolog_edit();','Jinxiaocun','Caiwuguanli','','138','138','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('139','130','','禁用','main','_self','javascript:diaolog_delete();','Jinxiaocun','Caiwuguanli','','139','139','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('140','130','','删除','main','_self','javascript:diaolog_foreverdelete();','Jinxiaocun','Caiwuguanli','','140','140','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('141','130','','银行卡管理','menu','main-frame','/index.php/Jinxiaocun/Caiwuguanli/bank_list','Jinxiaocun','Caiwuguanli','','141','141','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('142','130','','添加','main','_self','javascript:dialog_add();','Jinxiaocun','Caiwuguanli','bank_list','142','142','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('143','130','','修改','main','_self','javascript:diaolog_edit();','Jinxiaocun','Caiwuguanli','','143','143','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('144','130','','禁用','main','_self','javascript:diaolog_delete();','Jinxiaocun','Caiwuguanli','','144','144','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('145','130','','删除','main','_self','javascript:diaolog_foreverdelete();','Jinxiaocun','Caiwuguanli','','145','145','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('146','48','','客户管理','menu','main-frame','/index.php/Jinxiaocun/Customer/index','Jinxiaocun','Customer','','146','146','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('147','146','','客户列表','menu','main-frame','/index.php/Jinxiaocun/Customer/index','Jinxiaocun','Customer','','147','147','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('148','146','','添加客户信息','main','_self','javascript:dialog_add();','Jinxiaocun','Customer','','148','148','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('149','146','','修改','main','_self','javascript:diaolog_edit();','Jinxiaocun','Customer','','149','149','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('150','146','','禁用','main','_self','javascript:diaolog_delete();','Jinxiaocun','Customer','','150','150','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('151','146','','删除','main','_self','javascript:diaolog_foreverdelete();','Jinxiaocun','Customer','','151','151','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('152','146','','客户分组','menu','main-frame','/index.php/Jinxiaocun/Customer/cat_list','Jinxiaocun','Customer','','152','152','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('153','146','','添加','main','_self','javascript:dialog_add();','Jinxiaocun','Customer','','153','153','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('154','146','','修改','main','_self','javascript:diaolog_edit();','Jinxiaocun','Customer','','154','154','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('155','146','','禁用','main','_self','javascript:diaolog_delete();','Jinxiaocun','Customer','','155','155','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('156','146','','删除','main','_self','javascript:diaolog_foreverdelete();','Jinxiaocun','Customer','','156','156','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('157','48','','供应商管理','menu','main-frame','/index.php/Jinxiaocun/Supplier/index','Jinxiaocun','Supplier','','157','157','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('158','157','','供应商列表','menu','main-frame','/index.php/Jinxiaocun/Supplier/index','Jinxiaocun','Supplier','','158','158','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('159','157','','添加','main','_self','javascript:dialog_add();','Jinxiaocun','Supplier','','159','159','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('160','157','','修改','main','_self','javascript:diaolog_edit();','Jinxiaocun','Supplier','','160','160','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('161','157','','禁用','main','_self','javascript:diaolog_delete();','Jinxiaocun','Supplier','','161','161','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('162','157','','删除','main','_self','javascript:diaolog_foreverdelete();','Jinxiaocun','Supplier','','162','162','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('163','157','','供应商分组','menu','main-frame','/index.php/Jinxiaocun/Supplier/cat_list','Jinxiaocun','Supplier','','163','163','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('164','157','','添加','main','_self','javascript:dialog_add();','Jinxiaocun','Supplier','','164','164','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('165','157','','修改','main','_self','javascript:diaolog_edit();','Jinxiaocun','Supplier','','165','165','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('166','157','','禁用','main','_self','javascript:diaolog_delete();','Jinxiaocun','Supplier','','166','166','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('167','157','','删除','main','_self','javascript:diaolog_foreverdelete();','Jinxiaocun','Supplier','','167','167','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('168','146','','客户资金记录','menu','main-frame','/index.php/Jinxiaocun/Customer/money_list','Jinxiaocun','Customer','money_list','168','168','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('169','146','','添加','main','_self','javascript:dialog_add();','Jinxiaocun','Customer','money_list','169','169','2','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('170','146','','修改','main','_self','javascript:diaolog_edit();','Jinxiaocun','Customer','money_list','170','170','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('171','146','','禁用','main','_self','javascript:diaolog_delete();','Jinxiaocun','Customer','money_list','171','171','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('172','146','','删除','main','_self','javascript:diaolog_foreverdelete();','Jinxiaocun','Customer','money_list','172','172','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('173','57','','审核','main','_self','javascript:diaolog_edit();','Jinxiaocun','Xiaoshouguanli','list','173','173','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('174','57','','明细','main','_self','/index.php/Jinxiaocun/Xiaoshouguanli/sales_show','Jinxiaocun','Xiaoshouguanli','sales_list','174','174','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('175','84','','采购单明细','menu','main-frame','/index.php/Jinxiaocun/Caigouguanli/show','Jinxiaocun','Caigouguanli','list','175','175','2','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('176','0','','人力资源管理','menu','_self','#','HRM','','','183','183','3','0','[1][2][4][3]','0','1');
INSERT INTO `bx_menu` VALUES('177','176','','人力资源管理系统','menu','main-frame','/index.php/HRM/Index/index','HRM','Index','','184','184','3','0','[1][2][4][3]','0','0');
INSERT INTO `bx_menu` VALUES('178','177','','数据列表','menu','main-frame','/index.php/HRM/Index/index','HRM','Index','list','185','185','3','0','[1][2][4][3]','0','0');
INSERT INTO `bx_menu` VALUES('179','176','','员工管理','menu','main-frame','/index.php/HRM/Employe/index','HRM','Employe','','186','186','3','0','[1][2][4][3]','0','1');
INSERT INTO `bx_menu` VALUES('180','179','','试用期员工','menu','main-frame','/index.php/HRM/Employe/index','HRM','Employe','list','187','187','3','0','[1][2][4][3]','0','1');
INSERT INTO `bx_menu` VALUES('181','179','','添加','main','_self','javascript:dialog_add();','HRM','Employe','index','188','188','3','0','[1][2][4][3]','0','1');
INSERT INTO `bx_menu` VALUES('182','179','','修改','main','_self','javascript:diaolog_edit();','HRM','Employe','list','189','189','3','0','[1][2][4][3]','0','0');
INSERT INTO `bx_menu` VALUES('183','179','','禁用','main','_self','javascript:diaolog_delete();','HRM','Employe','list','190','190','3','0','[1][2][4][3]','0','0');
INSERT INTO `bx_menu` VALUES('184','179','','删除','main','_self','javascript:diaolog_foreverdelete();','HRM','Employe','list','191','191','3','0','[1][2][4][3]','0','0');
INSERT INTO `bx_menu` VALUES('185','176','','薪酬管理','menu','main-frame','/index.php/HRM/Salary/index','HRM','Salary','','192','192','3','0','[1][2][4][3]','0','1');
INSERT INTO `bx_menu` VALUES('186','185','','薪酬信息','menu','main-frame','/index.php/HRM/Salary/index','HRM','Salary','list','193','193,183,192','3','0','[1][2][4][3]','0','1');
INSERT INTO `bx_menu` VALUES('187','185','','添加','main','_self','javascript:dialog_add();','HRM','Salary','index','194','194','3','0','[1][2][4][3]','0','1');
INSERT INTO `bx_menu` VALUES('188','185','','修改','main','_self','javascript:diaolog_edit();','HRM','Salary','list','195','195','3','0','[1][2][4][3]','0','0');
INSERT INTO `bx_menu` VALUES('189','185','','禁用','main','_self','javascript:diaolog_delete();','HRM','Salary','list','196','196','3','0','[1][2][4][3]','0','0');
INSERT INTO `bx_menu` VALUES('190','185','','删除','main','_self','javascript:diaolog_foreverdelete();','HRM','Salary','list','197','197','3','0','[1][2][4][3]','0','0');
INSERT INTO `bx_menu` VALUES('191','185','','导出数据','main','_self','/index.php/HRM/Salary/export','HRM','Salary','index','198','198','3','0','[1][2][4][3]','0','0');
INSERT INTO `bx_menu` VALUES('192','185','','导入数据','main','_self','/index.php/HRM/Salary/import','HRM','Salary','list','199','199','3','0','[1][2][4][3]','0','0');
INSERT INTO `bx_menu` VALUES('193','1','','信息提示','menu','main-frame','/index.php/Sys/Tip/index','Sys','Tip','','200','200','1','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('194','193','','左下角提示信息','menu','main-frame','/index.php/Sys/Tip/index','Sys','Tip','list','201','201','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('195','193','','添加','main','_self','javascript:dialog_add();','Sys','Tip','list','202','202','1','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('196','193','','修改','main','_self','javascript:diaolog_edit();','Sys','Tip','list','203','203','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('197','193','','禁用','main','_self','javascript:diaolog_delete();','Sys','Tip','list','204','204','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('198','193','','删除','main','_self','javascript:diaolog_foreverdelete();','Sys','Tip','list','205','205','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('199','193','','详细信息','main','_self','/index.php/Sys/Tip/dialog_tip_msg','Sys','Tip','dialog_tip_list','206','206','1','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('200','185','','薪酬设置','menu','main-frame','/index.php/HRM/Salary_set/index','HRM','Salary_set','','207','207,183,208','3','0','[1][2][4][3]','0','1');
INSERT INTO `bx_menu` VALUES('201','200','','数据列表','menu','main-frame','/index.php/HRM/Salary_set/index','HRM','Salary_set','list','208','208','3','0','[1][2][4]','0','0');
INSERT INTO `bx_menu` VALUES('202','200','','添加','main','_self','javascript:dialog_add();','HRM','Salary_set','index','209','209','3','0','[1][2][4]','0','1');
INSERT INTO `bx_menu` VALUES('203','200','','修改','main','_self','javascript:diaolog_edit();','HRM','Salary_set','list','210','210','3','0','[1][2][4]','0','0');
INSERT INTO `bx_menu` VALUES('204','200','','禁用','main','_self','javascript:diaolog_delete();','HRM','Salary_set','list','211','211','3','0','[1][2][4]','0','0');
INSERT INTO `bx_menu` VALUES('205','200','','删除','main','_self','javascript:diaolog_foreverdelete();','HRM','Salary_set','list','212','212','3','0','[1][2][4]','0','0');
INSERT INTO `bx_menu` VALUES('206','179','','生成工资','main','_self','javascript:diaolog_edit();','HRM','Employe','create_list','213','213','3','0','[1][2][4][3]','0','0');
INSERT INTO `bx_menu` VALUES('207','176','','组织架构','menu','main-frame','/index.php/HRM/Organizational/index','HRM','Organizational','','214','214','3','0','[1][2][3]','0','1');
INSERT INTO `bx_menu` VALUES('208','207','','部门管理','menu','main-frame','/index.php/HRM/Organizational/index','HRM','Organizational','index','215','215','3','0','[1][2][3]','0','0');
INSERT INTO `bx_menu` VALUES('209','207','','添加','main','_self','javascript:dialog_add();','HRM','Organizational','index','216','216','3','0','[1][2][3]','0','1');
INSERT INTO `bx_menu` VALUES('210','207','','修改','main','_self','javascript:diaolog_edit();','HRM','Organizational','index','217','217','3','0','[1][2][3]','0','0');
INSERT INTO `bx_menu` VALUES('211','207','','禁用','main','_self','javascript:diaolog_delete();','HRM','Organizational','index','218','218','3','0','[1][2][3]','0','0');
INSERT INTO `bx_menu` VALUES('212','207','','删除','main','_self','javascript:diaolog_foreverdelete();','HRM','Organizational','index','219','219','3','0','[1][2][3]','0','0');
INSERT INTO `bx_menu` VALUES('213','176','','职位管理','menu','main-frame','/index.php/HRM/Post/index','HRM','Post','','220','220','3','0','[1][2][3]','0','1');
INSERT INTO `bx_menu` VALUES('214','213','','职位列表','menu','main-frame','/index.php/HRM/Post/index','HRM','Post','index','221','221','3','0','[1][2][3]','0','0');
INSERT INTO `bx_menu` VALUES('215','213','','添加','main','_self','javascript:dialog_add();','HRM','Post','index','222','222','3','0','[1][2][3]','0','1');
INSERT INTO `bx_menu` VALUES('216','213','','修改','main','_self','javascript:diaolog_edit();','HRM','Post','index','223','223','3','0','[1][2][3]','0','0');
INSERT INTO `bx_menu` VALUES('217','213','','禁用','main','_self','javascript:diaolog_delete();','HRM','Post','index','224','224','3','0','[1][2][3]','0','0');
INSERT INTO `bx_menu` VALUES('218','213','','删除','main','_self','javascript:diaolog_foreverdelete();','HRM','Post','index','225','225','3','0','[1][2][3]','0','0');
INSERT INTO `bx_menu` VALUES('219','176','','招聘管理','menu','main-frame','/index.php/HRM/Recruitment_management/index','HRM','Recruitment_management','','226','226','3','0','[1][2][3]','0','1');
INSERT INTO `bx_menu` VALUES('220','219','','简历列表','menu','main-frame','/index.php/HRM/Recruitment_management/index','HRM','Recruitment_management','index','227','227,183,226','3','0','[1][2][3]','0','1');
INSERT INTO `bx_menu` VALUES('221','219','','添加','main','_self','javascript:dialog_add();','HRM','Recruitment_management','index','228','228','3','0','[1][2][3]','0','1');
INSERT INTO `bx_menu` VALUES('222','219','','修改','main','_self','javascript:diaolog_edit();','HRM','Recruitment_management','index','229','229','3','0','[1][2][3]','0','0');
INSERT INTO `bx_menu` VALUES('223','219','','禁用','main','_self','javascript:diaolog_delete();','HRM','Recruitment_management','index','230','230','3','0','[1][2][3]','0','0');
INSERT INTO `bx_menu` VALUES('224','219','','删除','main','_self','javascript:diaolog_foreverdelete();','HRM','Recruitment_management','index','231','231','3','0','[1][2][3]','0','0');
INSERT INTO `bx_menu` VALUES('225','219','','人才管理','menu','main-frame','/index.php/HRM/Talent/index','HRM','Talent','','232','232,183,233','3','0','[1][2][3]','0','1');
INSERT INTO `bx_menu` VALUES('226','225','','人才列表','menu','main-frame','/index.php/HRM/Talent/index','HRM','Talent','index','233','233','3','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('227','225','','添加','main','_self','javascript:dialog_add();','HRM','Talent','index','234','234','3','0','[1][2]','0','1');
INSERT INTO `bx_menu` VALUES('228','225','','修改','main','_self','javascript:diaolog_edit();','HRM','Talent','index','235','235','3','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('229','225','','禁用','main','_self','javascript:diaolog_delete();','HRM','Talent','index','236','236','3','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('230','225','','删除','main','_self','javascript:diaolog_foreverdelete();','HRM','Talent','index','237','237','3','0','[1][2]','0','0');
INSERT INTO `bx_menu` VALUES('231','176','','考勤管理','menu','main-frame','/index.php/HRM/Attendance/index','HRM','Attendance','','238','238','3','0','[1][2][3]','0','1');
INSERT INTO `bx_menu` VALUES('232','231','','考勤记录','menu','main-frame','/index.php/HRM/Attendance/index','HRM','Attendance','index','239','239','3','0','[1][2][3]','0','1');
INSERT INTO `bx_menu` VALUES('233','231','','添加','main','_self','javascript:dialog_add();','HRM','Attendance','index','240','240','3','0','[1][2][3]','0','1');
INSERT INTO `bx_menu` VALUES('234','231','','修改','main','_self','javascript:diaolog_edit();','HRM','Attendance','index','241','241','3','0','[1][2][3]','0','0');
INSERT INTO `bx_menu` VALUES('235','231','','禁用','main','_self','javascript:diaolog_delete();','HRM','Attendance','index','242','242','3','0','[1][2][3]','0','0');
INSERT INTO `bx_menu` VALUES('236','231','','删除','main','_self','javascript:diaolog_foreverdelete();','HRM','Attendance','index','243','243','3','0','[1][2][3]','0','0');
INSERT INTO `bx_menu` VALUES('237','179','','在职员工','menu','main-frame','/index.php/HRM/Employe/index/status/2','HRM','Employe','','185','185','3','0','[1][2][3]','0','1');
INSERT INTO `bx_menu` VALUES('238','179','','离职员工','menu','main-frame','/index.php/HRM/Employe/index/status/-1','HRM','Employe','','187','187','3','0','[1][2][3]','0','1');
INSERT INTO `bx_menu` VALUES('239','0','','系统登录','menu','main-frame','/index.php/Rbac/Index/index','Rbac','Index','index','28','26,29,1,200,201,202,203,204,205,206,176,177,178,179,180,181,182,244','1','0','[1][2][3][4]','0','0');
--
-- 表的结构bx_node
--

DROP TABLE IF EXISTS `bx_node`;
CREATE TABLE `bx_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 bx_node
--

INSERT INTO `bx_node` VALUES('1','Sys','系统管理','1','包括用户和角色的管理','','0','1','1');
INSERT INTO `bx_node` VALUES('2','Index','应用管理','1','管理系统的应用、模块、和操作的各个节点，通过此处添加的应用、模块和操作都会自动生成各种常用的功能，如“添加数据、修改数据、删除数据、显示详细数据信息、数据列表、导出数据” \n================\n此功能目录打算删除','','1','2','1');
INSERT INTO `bx_node` VALUES('3','index','项目列表','1','','','2','3','1');
INSERT INTO `bx_node` VALUES('4','add','添加','1','','','2','3','1');
INSERT INTO `bx_node` VALUES('5','edit','修改','1','','','2','3','1');
INSERT INTO `bx_node` VALUES('6','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','2','3','1');
INSERT INTO `bx_node` VALUES('7','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','2','3','1');
INSERT INTO `bx_node` VALUES('8','Table','系统表管理','1','管理从系统生成的数据表','','1','2','1');
INSERT INTO `bx_node` VALUES('9','index','表管理','1','','','8','3','1');
INSERT INTO `bx_node` VALUES('10','add','添加','1','','','8','3','1');
INSERT INTO `bx_node` VALUES('11','edit','修改','1','','','8','3','1');
INSERT INTO `bx_node` VALUES('12','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','8','3','1');
INSERT INTO `bx_node` VALUES('13','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','8','3','1');
INSERT INTO `bx_node` VALUES('14','Field','字段管理','1','作为应用的第一个模块','','1','2','1');
INSERT INTO `bx_node` VALUES('15','index','字段列表','1','','','14','3','1');
INSERT INTO `bx_node` VALUES('16','add','添加','1','','','14','3','1');
INSERT INTO `bx_node` VALUES('17','edit','修改','1','','','14','3','1');
INSERT INTO `bx_node` VALUES('18','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','14','3','1');
INSERT INTO `bx_node` VALUES('19','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','14','3','1');
INSERT INTO `bx_node` VALUES('20','Software','软件仓库','1','所有的软件都会在这里安装和管理','','1','2','1');
INSERT INTO `bx_node` VALUES('21','index','软件列表','1','显示所有的软件，需要与远程数据进行对比。检查是否有更新','','20','3','1');
INSERT INTO `bx_node` VALUES('22','add','添加','1','','','20','3','1');
INSERT INTO `bx_node` VALUES('23','edit','修改','1','','','20','3','1');
INSERT INTO `bx_node` VALUES('24','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','20','3','1');
INSERT INTO `bx_node` VALUES('25','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','20','3','1');
INSERT INTO `bx_node` VALUES('26','Rbac','权限管理','1','包括角色、用户和菜单的管理','','0','1','1');
INSERT INTO `bx_node` VALUES('27','Index','默认模块','1','作为应用的第一个模块,暂时没有用处','','26','2','1');
INSERT INTO `bx_node` VALUES('28','index','数据列表','1','','','27','3','1');
INSERT INTO `bx_node` VALUES('29','User','用户管理','1','用户的增删查改和付权','','26','2','1');
INSERT INTO `bx_node` VALUES('30','index','用户列表','1','','','29','3','1');
INSERT INTO `bx_node` VALUES('31','add','添加','1','','','29','3','1');
INSERT INTO `bx_node` VALUES('32','edit','修改','1','','','29','3','1');
INSERT INTO `bx_node` VALUES('33','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','29','3','1');
INSERT INTO `bx_node` VALUES('34','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','29','3','1');
INSERT INTO `bx_node` VALUES('35','Role','角色管理','1','实现对角色的付权和CURD的操作','','26','2','1');
INSERT INTO `bx_node` VALUES('36','index','角色列表','1','','','35','3','1');
INSERT INTO `bx_node` VALUES('37','add','添加','1','','','35','3','1');
INSERT INTO `bx_node` VALUES('38','edit','修改','1','','','35','3','1');
INSERT INTO `bx_node` VALUES('39','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','35','3','1');
INSERT INTO `bx_node` VALUES('40','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','35','3','1');
INSERT INTO `bx_node` VALUES('41','Menu','菜单管理','1','所有有关菜单的操作','','26','2','1');
INSERT INTO `bx_node` VALUES('42','index','菜单设置','1','','','41','3','1');
INSERT INTO `bx_node` VALUES('43','add','添加','1','','','41','3','1');
INSERT INTO `bx_node` VALUES('44','edit','修改','1','','','41','3','1');
INSERT INTO `bx_node` VALUES('45','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','41','3','1');
INSERT INTO `bx_node` VALUES('46','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','41','3','1');
INSERT INTO `bx_node` VALUES('47','lists','数据列表','1','','','41','3','1');
INSERT INTO `bx_node` VALUES('48','Jinxiaocun','进销存','1','','','0','1','2');
INSERT INTO `bx_node` VALUES('49','Index','系统信息','1','进销存系统汇总或者操作信息提示等功能','','48','2','2');
INSERT INTO `bx_node` VALUES('50','index','系统信息','1','','','49','3','2');
INSERT INTO `bx_node` VALUES('51','export','导出数据','1','可以根据index中筛选或者选择的数据项进行导出的数据，此操作要依赖于index的操作','','49','3','2');
INSERT INTO `bx_node` VALUES('52','add','添加','1','','','49','3','2');
INSERT INTO `bx_node` VALUES('53','edit','修改','1','','','49','3','2');
INSERT INTO `bx_node` VALUES('54','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','49','3','2');
INSERT INTO `bx_node` VALUES('55','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','49','3','2');
INSERT INTO `bx_node` VALUES('56','import','导入数据','1','对数据表进行批量导入','','49','3','2');
INSERT INTO `bx_node` VALUES('57','Xiaoshouguanli','销售管理','1','销售人员使用的模块','','48','2','2');
INSERT INTO `bx_node` VALUES('58','index','产品列表','1','','','57','3','2');
INSERT INTO `bx_node` VALUES('59','add','采购产品','1','','','57','3','2');
INSERT INTO `bx_node` VALUES('60','edit','修改','1','','','57','3','2');
INSERT INTO `bx_node` VALUES('61','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','57','3','2');
INSERT INTO `bx_node` VALUES('62','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','57','3','2');
INSERT INTO `bx_node` VALUES('63','Chanpinfenlei','产品分类','1','可以无限级分类，存在产品的分类是不能删除的','','48','2','2');
INSERT INTO `bx_node` VALUES('64','index','产品分类列表','1','','','63','3','2');
INSERT INTO `bx_node` VALUES('65','add','添加','1','','','63','3','2');
INSERT INTO `bx_node` VALUES('66','edit','修改','1','','','63','3','2');
INSERT INTO `bx_node` VALUES('67','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','63','3','2');
INSERT INTO `bx_node` VALUES('68','foreverdelete','删除','1','存在产品的分类是不能删除的','','63','3','2');
INSERT INTO `bx_node` VALUES('69','price_index','销售对象','1','','','57','3','2');
INSERT INTO `bx_node` VALUES('70','price_add','添加销售对象','1','','','57','3','2');
INSERT INTO `bx_node` VALUES('71','price_edit','修改','1','','','57','3','2');
INSERT INTO `bx_node` VALUES('72','price_delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','57','3','2');
INSERT INTO `bx_node` VALUES('73','price_foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','57','3','2');
INSERT INTO `bx_node` VALUES('74','sales_index','销售记录','1','','','57','3','2');
INSERT INTO `bx_node` VALUES('75','sales_add','添加','1','','','57','3','2');
INSERT INTO `bx_node` VALUES('76','sales_edit','修改','1','','','57','3','2');
INSERT INTO `bx_node` VALUES('77','sales_delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','57','3','2');
INSERT INTO `bx_node` VALUES('78','sales_foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','57','3','2');
INSERT INTO `bx_node` VALUES('79','return_index','退货记录','1','','','57','3','2');
INSERT INTO `bx_node` VALUES('80','return_add','添加','1','','','57','3','2');
INSERT INTO `bx_node` VALUES('81','return_edit','修改','1','','','57','3','2');
INSERT INTO `bx_node` VALUES('82','return_delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','57','3','2');
INSERT INTO `bx_node` VALUES('83','return_foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','57','3','2');
INSERT INTO `bx_node` VALUES('84','Caigouguanli','采购管理','1','作为应用的第一个模块','','48','2','2');
INSERT INTO `bx_node` VALUES('85','index','采购记录','1','','','84','3','2');
INSERT INTO `bx_node` VALUES('86','add','采购产品','1','','','84','3','2');
INSERT INTO `bx_node` VALUES('87','edit','修改','1','','','84','3','2');
INSERT INTO `bx_node` VALUES('88','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','84','3','2');
INSERT INTO `bx_node` VALUES('89','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','84','3','2');
INSERT INTO `bx_node` VALUES('90','return_index','采购退货','1','','','84','3','2');
INSERT INTO `bx_node` VALUES('91','return_add','添加','1','','','84','3','2');
INSERT INTO `bx_node` VALUES('92','return_edit','修改','1','','','84','3','2');
INSERT INTO `bx_node` VALUES('93','return_delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','84','3','2');
INSERT INTO `bx_node` VALUES('94','return_foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','84','3','2');
INSERT INTO `bx_node` VALUES('95','Kucunguanli','库存管理','1','库存管理模块实现对仓库的分类，库存情况查询及库存调拨等管理','','48','2','2');
INSERT INTO `bx_node` VALUES('96','index','库存查询','1','','','95','3','2');
INSERT INTO `bx_node` VALUES('97','add','添加','1','','','95','3','2');
INSERT INTO `bx_node` VALUES('98','edit','修改','1','','','95','3','2');
INSERT INTO `bx_node` VALUES('99','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','95','3','2');
INSERT INTO `bx_node` VALUES('100','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','95','3','2');
INSERT INTO `bx_node` VALUES('101','storage_list','仓库管理','1','仓库管理，无限级显示','','95','3','2');
INSERT INTO `bx_node` VALUES('102','storage_add','添加','1','','','95','3','2');
INSERT INTO `bx_node` VALUES('103','storage_edit','修改','1','','','95','3','2');
INSERT INTO `bx_node` VALUES('104','storage_delete','禁用','1','仓库中有数据不能删除不能禁用','','95','3','2');
INSERT INTO `bx_node` VALUES('105','storage_foreverdelet','删除','1','仓库中有数据不能删除，需要对产品数据进行调拨清完后才能做。','','95','3','2');
INSERT INTO `bx_node` VALUES('106','storage_foreverdelet','删除','1','仓库中有数据不能删除，需要对产品数据进行调拨清完后才能做。','','95','3','2');
INSERT INTO `bx_node` VALUES('107','storage_foreverdelet','删除','1','仓库中有数据不能删除，需要对产品数据进行调拨清完后才能做。','','95','3','2');
INSERT INTO `bx_node` VALUES('108','storage_foreverdelet','删除','1','仓库中有数据不能删除，需要对产品数据进行调拨清完后才能做。','','95','3','2');
INSERT INTO `bx_node` VALUES('109','storage_foreverdelet','删除','1','仓库中有数据不能删除，需要对产品数据进行调拨清完后才能做。','','95','3','2');
INSERT INTO `bx_node` VALUES('110','storage_foreverdelet','删除','1','仓库中有数据不能删除，需要对产品数据进行调拨清完后才能做。','','95','3','2');
INSERT INTO `bx_node` VALUES('111','storage_foreverdelet','删除','1','仓库中有数据不能删除，需要对产品数据进行调拨清完后才能做。','','95','3','2');
INSERT INTO `bx_node` VALUES('112','storage_foreverdelet','删除','1','仓库中有数据不能删除，需要对产品数据进行调拨清完后才能做。','','95','3','2');
INSERT INTO `bx_node` VALUES('113','transfer_list','仓库调拨','1','列表仓库的调拨记录','','95','3','2');
INSERT INTO `bx_node` VALUES('114','transfer_add','添加调拨记录','1','','','95','3','2');
INSERT INTO `bx_node` VALUES('115','transfer_edit','修改','1','','','95','3','2');
INSERT INTO `bx_node` VALUES('116','transfer_delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','95','3','2');
INSERT INTO `bx_node` VALUES('117','transfer_foreverdele','删除','1','彻底在数据库中删除，不可以找回来','','95','3','2');
INSERT INTO `bx_node` VALUES('118','transfer_foreverdele','删除','1','彻底在数据库中删除，不可以找回来','','95','3','2');
INSERT INTO `bx_node` VALUES('119','transfer_foreverdele','删除','1','彻底在数据库中删除，不可以找回来','','95','3','2');
INSERT INTO `bx_node` VALUES('120','transfer_foreverdele','删除','1','彻底在数据库中删除，不可以找回来','','95','3','2');
INSERT INTO `bx_node` VALUES('121','transfer_foreverdele','删除','1','彻底在数据库中删除，不可以找回来','','95','3','2');
INSERT INTO `bx_node` VALUES('122','transfer_foreverdele','删除','1','彻底在数据库中删除，不可以找回来','','95','3','2');
INSERT INTO `bx_node` VALUES('123','transfer_foreverdele','删除','1','彻底在数据库中删除，不可以找回来','','95','3','2');
INSERT INTO `bx_node` VALUES('124','transfer_foreverdele','删除','1','彻底在数据库中删除，不可以找回来','','95','3','2');
INSERT INTO `bx_node` VALUES('125','bscp_list','报损产品','1','','','95','3','2');
INSERT INTO `bx_node` VALUES('126','bscp_add','添加报损记录','1','','','95','3','2');
INSERT INTO `bx_node` VALUES('127','bscp_edit','修改','1','','','95','3','2');
INSERT INTO `bx_node` VALUES('128','bscp_delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','95','3','2');
INSERT INTO `bx_node` VALUES('129','bscp_foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','95','3','2');
INSERT INTO `bx_node` VALUES('130','Caiwuguanli','财务管理','1','实现对进销存的财务管理','','48','2','2');
INSERT INTO `bx_node` VALUES('131','index','财务查询','1','查询收支记录','','130','3','2');
INSERT INTO `bx_node` VALUES('132','add','添加','1','','','130','3','2');
INSERT INTO `bx_node` VALUES('133','edit','修改','1','','','130','3','2');
INSERT INTO `bx_node` VALUES('134','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','130','3','2');
INSERT INTO `bx_node` VALUES('135','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','130','3','2');
INSERT INTO `bx_node` VALUES('136','kmsz_list','科目设置','1','','','130','3','2');
INSERT INTO `bx_node` VALUES('137','kmsz_add','添加科目','1','','','130','3','2');
INSERT INTO `bx_node` VALUES('138','kmsz_edit','修改','1','','','130','3','2');
INSERT INTO `bx_node` VALUES('139','kmsz_delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','130','3','2');
INSERT INTO `bx_node` VALUES('140','kmsz_foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','130','3','2');
INSERT INTO `bx_node` VALUES('141','bank_list','银行卡管理','1','','','130','3','2');
INSERT INTO `bx_node` VALUES('142','bank_add','添加','1','','','130','3','2');
INSERT INTO `bx_node` VALUES('143','bank_edit','修改','1','','','130','3','2');
INSERT INTO `bx_node` VALUES('144','bank_delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','130','3','2');
INSERT INTO `bx_node` VALUES('145','bank_foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','130','3','2');
INSERT INTO `bx_node` VALUES('146','Customer','客户管理','1','实现客户的CURD和预付款信息的CURD操作','','48','2','2');
INSERT INTO `bx_node` VALUES('147','index','客户列表','1','','','146','3','2');
INSERT INTO `bx_node` VALUES('148','add','添加客户信息','1','','','146','3','2');
INSERT INTO `bx_node` VALUES('149','edit','修改','1','','','146','3','2');
INSERT INTO `bx_node` VALUES('150','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','146','3','2');
INSERT INTO `bx_node` VALUES('151','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','146','3','2');
INSERT INTO `bx_node` VALUES('152','cat_list','客户分组','1','','','146','3','2');
INSERT INTO `bx_node` VALUES('153','cat_add','添加','1','','','146','3','2');
INSERT INTO `bx_node` VALUES('154','cat_edit','修改','1','','','146','3','2');
INSERT INTO `bx_node` VALUES('155','cat_delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','146','3','2');
INSERT INTO `bx_node` VALUES('156','cat_foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','146','3','2');
INSERT INTO `bx_node` VALUES('157','Supplier','供应商管理','1','对代应商实现CURD的操作','','48','2','2');
INSERT INTO `bx_node` VALUES('158','index','供应商列表','1','','','157','3','2');
INSERT INTO `bx_node` VALUES('159','add','添加','1','','','157','3','2');
INSERT INTO `bx_node` VALUES('160','edit','修改','1','','','157','3','2');
INSERT INTO `bx_node` VALUES('161','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','157','3','2');
INSERT INTO `bx_node` VALUES('162','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','157','3','2');
INSERT INTO `bx_node` VALUES('163','cat_list','供应商分组','1','','','157','3','2');
INSERT INTO `bx_node` VALUES('164','cat_add','添加','1','','','157','3','2');
INSERT INTO `bx_node` VALUES('165','cat_edit','修改','1','','','157','3','2');
INSERT INTO `bx_node` VALUES('166','cat_delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','157','3','2');
INSERT INTO `bx_node` VALUES('167','cat_foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','157','3','2');
INSERT INTO `bx_node` VALUES('168','money_list','客户资金记录','1','','','146','3','2');
INSERT INTO `bx_node` VALUES('169','money_add','添加','1','','','146','3','2');
INSERT INTO `bx_node` VALUES('170','money_edit','修改','1','','','146','3','2');
INSERT INTO `bx_node` VALUES('171','money_delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','146','3','2');
INSERT INTO `bx_node` VALUES('172','money_foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','146','3','2');
INSERT INTO `bx_node` VALUES('173','audit','审核','1','','','57','3','2');
INSERT INTO `bx_node` VALUES('174','sales_show','明细','1','选定的单个数据的详细信息','','57','3','2');
INSERT INTO `bx_node` VALUES('175','show','采购单明细','1','','','84','3','2');
INSERT INTO `bx_node` VALUES('176','Index','系统框架应用','1','整个后台系统的IFRAM框架应用','','0','1','1');
INSERT INTO `bx_node` VALUES('177','Index','系统默认设置的框架','1','默认会读取此模块','','176','2','1');
INSERT INTO `bx_node` VALUES('178','index','框架主页面','1','会导入其它几个框架，这个权限必需每个用户都有','','177','3','1');
INSERT INTO `bx_node` VALUES('179','top','顶部框架','1','','','177','3','1');
INSERT INTO `bx_node` VALUES('180','menu','左边菜单框架','1','','','177','3','1');
INSERT INTO `bx_node` VALUES('181','main','框架右边默认页面','1','','','177','3','1');
INSERT INTO `bx_node` VALUES('182','drag','框架中间分栏','1','','','177','3','1');
INSERT INTO `bx_node` VALUES('183','HRM','人力资源管理','1','包括员工管理、部门管理、职位管理、招聘管理、薪酬管理、考勤管理等模块','','0','1','3');
INSERT INTO `bx_node` VALUES('184','Index','人力资源管理系统','1','介绍人力资源管理系统的使用与展示基本信息','','183','2','3');
INSERT INTO `bx_node` VALUES('185','index','数据列表','1','','','184','3','3');
INSERT INTO `bx_node` VALUES('186','Employe','员工管理','1','员工管理','','183','2','3');
INSERT INTO `bx_node` VALUES('187','index','试用期员工','1','','','186','3','3');
INSERT INTO `bx_node` VALUES('188','add','添加','1','','','186','3','3');
INSERT INTO `bx_node` VALUES('189','edit','修改','1','','','186','3','3');
INSERT INTO `bx_node` VALUES('190','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','186','3','3');
INSERT INTO `bx_node` VALUES('191','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','186','3','3');
INSERT INTO `bx_node` VALUES('192','Salary','薪酬管理','1','薪酬管理','','183','2','3');
INSERT INTO `bx_node` VALUES('193','index','薪酬信息','1','','','192','3','3');
INSERT INTO `bx_node` VALUES('194','add','添加','1','','','192','3','3');
INSERT INTO `bx_node` VALUES('195','edit','修改','1','','','192','3','3');
INSERT INTO `bx_node` VALUES('196','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','192','3','3');
INSERT INTO `bx_node` VALUES('197','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','192','3','3');
INSERT INTO `bx_node` VALUES('198','export','导出数据','1','可以根据index中筛选或者选择的数据项进行导出的数据，此操作要依赖于index的操作','','192','3','3');
INSERT INTO `bx_node` VALUES('199','import','导入数据','1','对数据表进行批量导入','','192','3','3');
INSERT INTO `bx_node` VALUES('200','Tip','信息提示','1','左下角的提示信息','','1','2','1');
INSERT INTO `bx_node` VALUES('201','index','左下角提示信息','1','','','200','3','1');
INSERT INTO `bx_node` VALUES('202','add','添加','1','','','200','3','1');
INSERT INTO `bx_node` VALUES('203','edit','修改','1','','','200','3','1');
INSERT INTO `bx_node` VALUES('204','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','200','3','1');
INSERT INTO `bx_node` VALUES('205','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','200','3','1');
INSERT INTO `bx_node` VALUES('206','dialog_tip_msg','详细信息','1','选定的单个数据的详细信息','','200','3','1');
INSERT INTO `bx_node` VALUES('207','Salary_set','薪酬设置','1','应用公式设置薪酬','','183','2','3');
INSERT INTO `bx_node` VALUES('208','index','数据列表','1','','','207','3','3');
INSERT INTO `bx_node` VALUES('209','add','添加','1','','','207','3','3');
INSERT INTO `bx_node` VALUES('210','edit','修改','1','','','207','3','3');
INSERT INTO `bx_node` VALUES('211','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','207','3','3');
INSERT INTO `bx_node` VALUES('212','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','207','3','3');
INSERT INTO `bx_node` VALUES('213','create_salary','生成工资','1','','','186','3','3');
INSERT INTO `bx_node` VALUES('214','Organizational','组织架构','1','作为应用的第一个模块','','183','2','3');
INSERT INTO `bx_node` VALUES('215','index','部门管理','1','','','214','3','3');
INSERT INTO `bx_node` VALUES('216','add','添加','1','','','214','3','3');
INSERT INTO `bx_node` VALUES('217','edit','修改','1','','','214','3','3');
INSERT INTO `bx_node` VALUES('218','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','214','3','3');
INSERT INTO `bx_node` VALUES('219','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','214','3','3');
INSERT INTO `bx_node` VALUES('220','Post','职位管理','1','','','183','2','3');
INSERT INTO `bx_node` VALUES('221','index','职位列表','1','','','220','3','3');
INSERT INTO `bx_node` VALUES('222','add','添加','1','','','220','3','3');
INSERT INTO `bx_node` VALUES('223','edit','修改','1','','','220','3','3');
INSERT INTO `bx_node` VALUES('224','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','220','3','3');
INSERT INTO `bx_node` VALUES('225','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','220','3','3');
INSERT INTO `bx_node` VALUES('226','Recruitment_management','招聘管理','1','作为应用的第一个模块','','183','2','3');
INSERT INTO `bx_node` VALUES('227','index','简历列表','1','','','226','3','3');
INSERT INTO `bx_node` VALUES('228','add','添加','1','','','226','3','3');
INSERT INTO `bx_node` VALUES('229','edit','修改','1','','','226','3','3');
INSERT INTO `bx_node` VALUES('230','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','226','3','3');
INSERT INTO `bx_node` VALUES('231','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','226','3','3');
INSERT INTO `bx_node` VALUES('232','Talent','人才管理','1','人才列表','','183','2','3');
INSERT INTO `bx_node` VALUES('233','index','人才列表','1','','','232','3','3');
INSERT INTO `bx_node` VALUES('234','add','添加','1','','','232','3','3');
INSERT INTO `bx_node` VALUES('235','edit','修改','1','','','232','3','3');
INSERT INTO `bx_node` VALUES('236','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','232','3','3');
INSERT INTO `bx_node` VALUES('237','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','232','3','3');
INSERT INTO `bx_node` VALUES('238','Attendance','考勤管理','1','','','183','2','3');
INSERT INTO `bx_node` VALUES('239','index','考勤记录','1','','','238','3','3');
INSERT INTO `bx_node` VALUES('240','add','添加','1','','','238','3','3');
INSERT INTO `bx_node` VALUES('241','edit','修改','1','','','238','3','3');
INSERT INTO `bx_node` VALUES('242','delete','禁用','1','此操作只会把数据状态修改为status=0，不会实现在数据库中删除，相当于回收站或者禁用的功能','','238','3','3');
INSERT INTO `bx_node` VALUES('243','foreverdelete','删除','1','彻底在数据库中删除，不可以找回来','','238','3','3');
INSERT INTO `bx_node` VALUES('244','edit_self','个人设置','1','个人设置','','29','3','1');
INSERT INTO `bx_node` VALUES('245','checkAccount','检查帐号','1','AJAX检查用户帐号合法性','','29','3','1');
--
-- 表的结构bx_role
--

DROP TABLE IF EXISTS `bx_role`;
CREATE TABLE `bx_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) NOT NULL DEFAULT '1',
  `status` tinyint(1) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='1为EMT开发人员，2为系统管理员，其它的按groupID作为起数，100以内为系统预留的ID';

--
-- 转存表中的数据 bx_role
--

INSERT INTO `bx_role` VALUES('1','系统管理员','0','1','此角色为系统开发人员使用，可操作系统底层数据，不能乱付权','0','1355704991');
INSERT INTO `bx_role` VALUES('2','领导','0','1','经理级领导人员使用','0','1363741280');
INSERT INTO `bx_role` VALUES('3','普通员工','0','1','操作的员工','0','1363741346');
INSERT INTO `bx_role` VALUES('4','演示测试','0','1','只做演示测试使用','0','1363741391');
--
-- 表的结构bx_role_user
--

DROP TABLE IF EXISTS `bx_role_user`;
CREATE TABLE `bx_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 bx_role_user
--

INSERT INTO `bx_role_user` VALUES('2','4');
INSERT INTO `bx_role_user` VALUES('3','3');
INSERT INTO `bx_role_user` VALUES('4','2');
INSERT INTO `bx_role_user` VALUES('1','1');
INSERT INTO `bx_role_user` VALUES('1','36');
--
-- 表的结构bx_software
--

DROP TABLE IF EXISTS `bx_software`;
CREATE TABLE `bx_software` (
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='已经安装了的软件';

--
-- 转存表中的数据 bx_software
--

INSERT INTO `bx_software` VALUES('2','soft002','1.0','21123263','335332321','','','0','','1','0','0');
--
-- 表的结构bx_table
--

DROP TABLE IF EXISTS `bx_table`;
CREATE TABLE `bx_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '表名',
  `title` varchar(32) NOT NULL COMMENT '表中文名',
  `remark` varchar(128) NOT NULL COMMENT '备注',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='系统表管理';

--
-- 转存表中的数据 bx_table
--

INSERT INTO `bx_table` VALUES('1','demo','','用来为建立模型设置的实例表，主要用于测试','1','0','2012');
INSERT INTO `bx_table` VALUES('2','jxc_product','','货物、产品列表','1','1','0');
INSERT INTO `bx_table` VALUES('3','jxc_product_cat','','产品分类表','1','1','1354328103');
INSERT INTO `bx_table` VALUES('4','jxc_product_price','','产品对应不同对象的价格','1','1','1354329226');
INSERT INTO `bx_table` VALUES('5','jxc_sales_slip ','','销售单列表，与jxc_sales_slip_product关联','1','1','1354342153');
INSERT INTO `bx_table` VALUES('6','jxc_sales_slip_product','','销售单的产品记录','1','1','1354342349');
INSERT INTO `bx_table` VALUES('7','jxc_sales_return','','销售的产品退货单','1','1','1354344663');
INSERT INTO `bx_table` VALUES('8','jxc_sales_return_product','','退货单产品记录','1','1','1354344747');
INSERT INTO `bx_table` VALUES('9','jxc_procure','','采购单列表','1','1','1354350727');
INSERT INTO `bx_table` VALUES('10','jxc_procure_product','','采购单的产品列表','1','1','1354350755');
INSERT INTO `bx_table` VALUES('11','jxc_procure_return','','采购退货单列表','1','1','1354350848');
INSERT INTO `bx_table` VALUES('12','jxc_procure_return_product','','采购退货单中的产品列表','1','1','1354350896');
INSERT INTO `bx_table` VALUES('13','jxc_inventory','','库存明细列表','1','1','1354414949');
INSERT INTO `bx_table` VALUES('14','jxc_storage','','仓库列表','1','1','1354415030');
INSERT INTO `bx_table` VALUES('15','jxc_storage_transfer','','仓库调拨','1','1','1354420793');
INSERT INTO `bx_table` VALUES('16','jxc_damage','','仓库中的产品报损记录','1','1','1354520345');
INSERT INTO `bx_table` VALUES('17','jxc_finances','','财务收支记录管理','1','1','1354524083');
INSERT INTO `bx_table` VALUES('18','jxc_finances_cat','','财务科目分类','1','1','1354583643');
INSERT INTO `bx_table` VALUES('19','jxc_bank','','银行卡号管理','1','1','1354585711');
INSERT INTO `bx_table` VALUES('20','jxc_customer','','客户列表','1','1','1354593076');
INSERT INTO `bx_table` VALUES('21','jxc_customer_cat','','客户分类','1','1','1354593098');
INSERT INTO `bx_table` VALUES('22','jxc_supplier','','供应商列表','1','1','1354599249');
INSERT INTO `bx_table` VALUES('23','jxc_supplier_cat','','供应商分组','1','1','1354611027');
INSERT INTO `bx_table` VALUES('24','jxc_customer_money','','客户资金记录','1','1','1354697903');
INSERT INTO `bx_table` VALUES('25','hrm_employe','','员工基本信息','1','1','1355725504');
INSERT INTO `bx_table` VALUES('26','hrm_salary','薪酬信息','记录每个月员工所发放的工资记录','1','1','1355728268');
INSERT INTO `bx_table` VALUES('27','tip','提示信息','系统提示信息','1','1','1355907701');
INSERT INTO `bx_table` VALUES('28','hrm_salary_set','薪酬设置','根据公式来设定每个等级的薪酬','1','1','1355992489');
INSERT INTO `bx_table` VALUES('29','hrm_organizational','组织架构','组织架构','1','1','1357195177');
INSERT INTO `bx_table` VALUES('30','hrm_post','岗位设置','岗位设置','1','1','1357195455');
INSERT INTO `bx_table` VALUES('31','hrm_resume','简历信息','简历信息','1','1','1357196179');
INSERT INTO `bx_table` VALUES('32','hrm_talent','人才管理','人才管理','1','1','1357196740');
INSERT INTO `bx_table` VALUES('33','hrm_attendance','考勤管理','每日考勤打卡记录','1','36','1357692912');
INSERT INTO `bx_table` VALUES('34','hrm_attendance_month','考勤管理','考勤管理-每个月中每天的考勤情况','1','36','1357694265');
--
-- 表的结构bx_tip
--

DROP TABLE IF EXISTS `bx_tip`;
CREATE TABLE `bx_tip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(128) NOT NULL COMMENT '信息内容',
  `to_user_id` int(11) NOT NULL COMMENT '分配给用户',
  `callback_url` varchar(128) NOT NULL COMMENT '回调连接',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，-1表示在回收站，1表示正常，可以增加其它状态',
  `add_user_id` int(11) NOT NULL COMMENT '添加人ID',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='系统提示信息';

--
-- 转存表中的数据 bx_tip
--

INSERT INTO `bx_tip` VALUES('1','测试','1','http://www.emtit.net','-1','1','1263456');
INSERT INTO `bx_tip` VALUES('2','测试二','1','http://www.emtit.net','-1','0','0');
INSERT INTO `bx_tip` VALUES('3','测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试二测试','1','','-1','0','0');
INSERT INTO `bx_tip` VALUES('4','测试set_tip方法','4','','-1','1','1355971116');
INSERT INTO `bx_tip` VALUES('5','测试set_tip方法','10','','1','1','1355971116');
INSERT INTO `bx_tip` VALUES('6','测试set_tip方法','4','','-1','1','1355971209');
INSERT INTO `bx_tip` VALUES('7','测试set_tip方法','4','','-1','1','1355971683');
INSERT INTO `bx_tip` VALUES('8','测试set_tip方法','10','','1','1','1355971683');
INSERT INTO `bx_tip` VALUES('9','测试set_tip方法','4','','-1','1','1355972107');
INSERT INTO `bx_tip` VALUES('10','测试set_tip方法','10','','1','1','1355972107');
INSERT INTO `bx_tip` VALUES('11','测试set_tip方法','4','','-1','1','1355972137');
INSERT INTO `bx_tip` VALUES('12','测试set_tip方法','10','','1','1','1355972137');
INSERT INTO `bx_tip` VALUES('13','测试set_tip方法','10','','1','1','1355972137');
INSERT INTO `bx_tip` VALUES('14','测试set_tip方法','10','','1','1','1355972137');
INSERT INTO `bx_tip` VALUES('15','测试set_tip方法','10','','1','1','1355972137');
INSERT INTO `bx_tip` VALUES('16','测试set_tip方法','10','','1','1','1355972137');
INSERT INTO `bx_tip` VALUES('17','测试set_tip方法','4','','-1','1','1355972807');
INSERT INTO `bx_tip` VALUES('18','测试set_tip方法','10','','1','1','1355972807');
INSERT INTO `bx_tip` VALUES('19','测试set_tip方法','4','','-1','1','1355972842');
INSERT INTO `bx_tip` VALUES('20','测试set_tip方法','10','','1','1','1355972842');
--
-- 表的结构bx_uploadfile
--

DROP TABLE IF EXISTS `bx_uploadfile`;
CREATE TABLE `bx_uploadfile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app` varchar(64) NOT NULL,
  `module` varchar(64) NOT NULL,
  `file_path` varchar(256) NOT NULL COMMENT '相于对根目录的路径',
  `add_user_id` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传的文件数据表';

--
-- 转存表中的数据 bx_uploadfile
--

--
-- 表的结构bx_user
--

DROP TABLE IF EXISTS `bx_user`;
CREATE TABLE `bx_user` (
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
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 bx_user
--

INSERT INTO `bx_user` VALUES('1','admin','管理员','21232f297a57a5a743894a0e4a801fc3','','1367458239','127.0.0.1','1080','8888','liu21st@gmail.com','备注信息','1222907803','1326266696','1');
INSERT INTO `bx_user` VALUES('2','demo','演示','fe01ce2a7fbac8fafaed7c982a04e229','','1363738067','127.0.0.1','97','8888','test@163.com','gff','1239783735','1254325770','1');
INSERT INTO `bx_user` VALUES('3','member','员工','aa08769cdcb26674c6706093503ff0a3','','1363743659','127.0.0.1','30','','dffddf','dffddf','1253514375','1254325728','1');
INSERT INTO `bx_user` VALUES('4','leader','领导','c444858e0aaeb727da73d2eae62321ad','','1367458326','127.0.0.1','38','','','领导','1253514575','1254325705','1');
INSERT INTO `bx_user` VALUES('36','huangjianwen','黄建文','0192023a7bbd73250516f069df18b500','','1360033062','127.0.0.1','16','','hjwtp2005@163.com','测试用srfgsdf','1349839471','0','1');
