/*
Navicat MySQL Data Transfer

Source Server         : remote
Source Server Version : 50715
Source Host           : 115.159.148.99:3306
Source Database       : tyrion

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2016-09-21 16:48:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `blog`
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urlname` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `type` varchar(2) NOT NULL COMMENT '0  java;\r\n1  android;\r\n2  php;\r\n3  随笔；',
  `year` varchar(4) NOT NULL,
  `month` varchar(2) NOT NULL,
  `day` varchar(2) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id`,`urlname`,`year`,`month`,`day`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('1', 'firstblog', '第一篇blog', '第一篇blog测试', '3', '2016', '9', '12', '2016/9/20 9:53');
INSERT INTO `blog` VALUES ('2', 'mode', '心情杂谈', '<p>在之前的几篇博文里面，我多次提到了 Lisp，它相对于其它语言的优势，以及 Lisp Machine 相对于 Unix 的优点。于是有人来信请教我如何学习 Lisp，也有人问我为什么 Lisp Machine 没有“流行”起来。我感觉到了他们言语中对 Lisp 的敬畏和好奇心，但也感觉到了一些隐含的怀疑。</p>\r\n\r\n<p>这是一种复杂的感觉，仿佛我在原始人的部落兜售一些原子能小玩具，却被人当成了来自天外的传教士。敬畏和奉承，并不能引起我的好感。怀疑和嘲讽，也不能引起我的不平。当我看到有人说“别听他误导群众，学那些语言是找不到工作的”的时候，我心里完全没有愤怒，也没有鄙视，我也没必要说服他。我只是微笑着摇摇头，对自己说：可怜而可笑的人。</p>\r\n\r\n<p>不明白为什么，当我提到某个东西相对于另一个东西的优点的时候，我总是被人认为是在“推崇”某个东西，或者被人称为是它的“狂热分子”。现在显然已经有人认为我在推崇 Lisp 了，甚至在某个地方看到有人称我为“国内三大 Lisp 狂人之一”。他们仿佛觉得我推荐一个东西，就是想让他们完全的拥抱这个东西，而丢弃自己已经有的东西。而“支持”这另一个东西的人，也往往会产生敌视情绪。</p>\r\n\r\n<p>很多人都不明白，每个东西都有它好的方面，也有它不好的方面。我推荐的只是 Lisp 好的方面，不好的方面我心里清楚，但是还没有机会讲。这些人显然已经在下意识里把“东西”当成了人。有人说“爱一个人就要爱她（他）的全部”，这是一种很无奈的说法，因为你没有能力把一个人分解成你喜欢的和不喜欢的两部分，然后重新组装成你的梦中情人。可是东西却不一样。因为东西是人造出来的，所以你可以把它们大卸八块，然后挑出你喜欢的部分。</p>\r\n\r\n<p>所以我可以很清楚的告诉你，我并不推崇', '3', '2016', '9', '12', '2016/9/20 9:56');
INSERT INTO `blog` VALUES ('3', 'mysql10060', '腾讯云主机mysql远程连接不上', '<h2 style=\"text-align: center; \">腾讯云主机mysql远程连接不上</h2><p style=\"text-align: left;\">在试过了传说中的一下三种方法：</p><ol><li style=\"text-align: left;\"><font face=\"Tahoma\">服务器主机3306端口做了限制，如果是就关闭个防火墙或取消对3306端口的限制。</font></li><li style=\"text-align: left;\"><font face=\"Tahoma\">确保mysql的监听地址是0.0.0.0，Windows服务器在cmd中执行如下命令可以查看&nbsp; &nbsp;netstat -ano|findstr 3306</font></li><li style=\"text-align: left;\"><font face=\"Tahoma\">添加远程登录帐号</font></li></ol><p style=\"text-align: left;\">之后还是连不上就看一下腾讯云主机的安全组对端口有没有进行限制，设置打开端口后再进行连接。</p>', '0', '2016', '9', '20', '2016/09/20 10:07:00');
INSERT INTO `blog` VALUES ('4', 'unicodetest', '云服务主机编码测试', '<p>中文</p><p>amercian</p><p>japen</p>', '0', '2016', '9', '20', '2016/09/20 11:04:04');
INSERT INTO `blog` VALUES ('5', 'imagetest', '带有图片的博客', '<h2>这是一条带有图片的博客</h2><p><img src=\"http://115.159.148.99:8080/ssm/rest/img/6C02ABB2CA3482ADD37AFF638415C316.jpg\" style=\"width: 600px;\"></p><p>我就是单眼先锋</p>', '0', '2016', '9', '20', '2016/09/20 11:05:58');
INSERT INTO `blog` VALUES ('6', 'shiro', '加了安全验证shiro', '<p>添加了shiro权限，自由表里的用户（自己）可以编辑博客</p>', '0', '2016', '9', '21', '2016/09/21 15:51:10');

-- ----------------------------
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `permission_name` varchar(32) DEFAULT NULL COMMENT '权限名',
  `permission_sign` varchar(128) DEFAULT NULL COMMENT '权限标识,程序中判断使用,如"user:create"',
  `description` varchar(256) DEFAULT NULL COMMENT '权限描述,UI界面显示使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='权限表';

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '用户新增', 'user:create', null);

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_name` varchar(32) DEFAULT NULL COMMENT '角色名',
  `role_sign` varchar(128) DEFAULT NULL COMMENT '角色标识,程序中判断使用,如"admin"',
  `description` varchar(256) DEFAULT NULL COMMENT '角色描述,UI界面显示使用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin', 'admin', '管理员');

-- ----------------------------
-- Table structure for `role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `role_id` bigint(20) unsigned DEFAULT NULL COMMENT '角色id',
  `permission_id` bigint(20) unsigned DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='角色与权限关联表';

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES ('1', '2', '1');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` char(64) DEFAULT NULL COMMENT '密码',
  `state` varchar(32) DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'xiass', 'smay1227', null, '2016-09-20 17:32:08');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `user_id` bigint(20) unsigned DEFAULT NULL COMMENT '用户id',
  `role_id` bigint(20) unsigned DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='用户与角色关联表';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1', '1');
