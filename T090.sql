/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t090`;
CREATE DATABASE IF NOT EXISTS `t090` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t090`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot9qw88/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot9qw88/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot9qw88/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE IF NOT EXISTS `jiaoshi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='教师';

DELETE FROM `jiaoshi`;
INSERT INTO `jiaoshi` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `bianhao`, `xingbie`, `nianling`, `shouji`, `shenfenzheng`, `zhaopian`) VALUES
	(21, '2021-05-07 03:01:56', '教师1', '123456', '姓名1', '编号1', '男', 1, '13823888881', '440300199101010001', 'http://localhost:8080/springboot9qw88/upload/jiaoshi_zhaopian1.jpg'),
	(22, '2021-05-07 03:01:56', '教师2', '123456', '姓名2', '编号2', '男', 2, '13823888882', '440300199202020002', 'http://localhost:8080/springboot9qw88/upload/jiaoshi_zhaopian2.jpg'),
	(23, '2021-05-07 03:01:56', '教师3', '123456', '姓名3', '编号3', '男', 3, '13823888883', '440300199303030003', 'http://localhost:8080/springboot9qw88/upload/jiaoshi_zhaopian3.jpg'),
	(24, '2021-05-07 03:01:56', '教师4', '123456', '姓名4', '编号4', '男', 4, '13823888884', '440300199404040004', 'http://localhost:8080/springboot9qw88/upload/jiaoshi_zhaopian4.jpg'),
	(25, '2021-05-07 03:01:56', '教师5', '123456', '姓名5', '编号5', '男', 5, '13823888885', '440300199505050005', 'http://localhost:8080/springboot9qw88/upload/jiaoshi_zhaopian5.jpg'),
	(26, '2021-05-07 03:01:56', '教师6', '123456', '姓名6', '编号6', '男', 6, '13823888886', '440300199606060006', 'http://localhost:8080/springboot9qw88/upload/jiaoshi_zhaopian6.jpg');

DROP TABLE IF EXISTS `jiaoxuexinxi`;
CREATE TABLE IF NOT EXISTS `jiaoxuexinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechenghao` varchar(200) DEFAULT NULL COMMENT '课程号',
  `kechengming` varchar(200) DEFAULT NULL COMMENT '课程名',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `kechengshizhang` int DEFAULT NULL COMMENT '课程时长',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='教学信息';

DELETE FROM `jiaoxuexinxi`;
INSERT INTO `jiaoxuexinxi` (`id`, `addtime`, `kechenghao`, `kechengming`, `kechengxiangqing`, `kechengshizhang`, `jiaoshixingming`, `zhaopian`) VALUES
	(31, '2021-05-07 03:01:56', '课程号1', '课程名1', '课程详情1', 1, '教师姓名1', 'http://localhost:8080/springboot9qw88/upload/jiaoxuexinxi_zhaopian1.jpg'),
	(32, '2021-05-07 03:01:56', '课程号2', '课程名2', '课程详情2', 2, '教师姓名2', 'http://localhost:8080/springboot9qw88/upload/jiaoxuexinxi_zhaopian2.jpg'),
	(33, '2021-05-07 03:01:56', '课程号3', '课程名3', '课程详情3', 3, '教师姓名3', 'http://localhost:8080/springboot9qw88/upload/jiaoxuexinxi_zhaopian3.jpg'),
	(34, '2021-05-07 03:01:56', '课程号4', '课程名4', '课程详情4', 4, '教师姓名4', 'http://localhost:8080/springboot9qw88/upload/jiaoxuexinxi_zhaopian4.jpg'),
	(35, '2021-05-07 03:01:56', '课程号5', '课程名5', '课程详情5', 5, '教师姓名5', 'http://localhost:8080/springboot9qw88/upload/jiaoxuexinxi_zhaopian5.jpg'),
	(36, '2021-05-07 03:01:56', '课程号6', '课程名6', '课程详情6', 6, '教师姓名6', 'http://localhost:8080/springboot9qw88/upload/jiaoxuexinxi_zhaopian6.jpg');

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707881763488 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `messages`;
INSERT INTO `messages` (`id`, `addtime`, `userid`, `username`, `content`, `reply`) VALUES
	(61, '2021-05-07 03:01:56', 1, '用户名1', '留言内容1', '回复内容1'),
	(62, '2021-05-07 03:01:56', 2, '用户名2', '留言内容2', '回复内容2'),
	(63, '2021-05-07 03:01:56', 3, '用户名3', '留言内容3', '回复内容3'),
	(64, '2021-05-07 03:01:56', 4, '用户名4', '留言内容4', '回复内容4'),
	(65, '2021-05-07 03:01:56', 5, '用户名5', '留言内容5', '回复内容5'),
	(66, '2021-05-07 03:01:56', 6, '用户名6', '留言内容6', '回复内容6'),
	(1707881763487, '2024-02-14 03:36:03', 11, '学生1', '11111', NULL);

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='学校公告';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(51, '2021-05-07 03:01:56', '标题1', '简介1', 'http://localhost:8080/springboot9qw88/upload/news_picture1.jpg', '内容1'),
	(52, '2021-05-07 03:01:56', '标题2', '简介2', 'http://localhost:8080/springboot9qw88/upload/news_picture2.jpg', '内容2'),
	(53, '2021-05-07 03:01:56', '标题3', '简介3', 'http://localhost:8080/springboot9qw88/upload/news_picture3.jpg', '内容3'),
	(54, '2021-05-07 03:01:56', '标题4', '简介4', 'http://localhost:8080/springboot9qw88/upload/news_picture4.jpg', '内容4'),
	(55, '2021-05-07 03:01:56', '标题5', '简介5', 'http://localhost:8080/springboot9qw88/upload/news_picture5.jpg', '内容5'),
	(56, '2021-05-07 03:01:56', '标题6', '简介6', 'http://localhost:8080/springboot9qw88/upload/news_picture6.jpg', '内容6');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 'bv0ak22ri1sk2ts4u9sogug84mrwpg8f', '2021-05-07 03:02:56', '2024-02-14 04:34:51'),
	(2, 11, '学生1', 'xuesheng', '学生', 'mog55lyyp6pban2xuxtj0p7i0lz6741x', '2024-02-14 03:33:27', '2024-02-14 04:33:27');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-07 03:01:56');

DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE IF NOT EXISTS `xuesheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `xuesheng`;
INSERT INTO `xuesheng` (`id`, `addtime`, `xuehao`, `mima`, `xingming`, `xingbie`, `nianling`, `shouji`, `shenfenzheng`, `zhaopian`) VALUES
	(11, '2021-05-07 03:01:56', '学生1', '123456', '姓名1', '男', 1, '13823888881', '440300199101010001', 'http://localhost:8080/springboot9qw88/upload/xuesheng_zhaopian1.jpg'),
	(12, '2021-05-07 03:01:56', '学生2', '123456', '姓名2', '男', 2, '13823888882', '440300199202020002', 'http://localhost:8080/springboot9qw88/upload/xuesheng_zhaopian2.jpg'),
	(13, '2021-05-07 03:01:56', '学生3', '123456', '姓名3', '男', 3, '13823888883', '440300199303030003', 'http://localhost:8080/springboot9qw88/upload/xuesheng_zhaopian3.jpg'),
	(14, '2021-05-07 03:01:56', '学生4', '123456', '姓名4', '男', 4, '13823888884', '440300199404040004', 'http://localhost:8080/springboot9qw88/upload/xuesheng_zhaopian4.jpg'),
	(15, '2021-05-07 03:01:56', '学生5', '123456', '姓名5', '男', 5, '13823888885', '440300199505050005', 'http://localhost:8080/springboot9qw88/upload/xuesheng_zhaopian5.jpg'),
	(16, '2021-05-07 03:01:56', '学生6', '123456', '姓名6', '男', 6, '13823888886', '440300199606060006', 'http://localhost:8080/springboot9qw88/upload/xuesheng_zhaopian6.jpg');

DROP TABLE IF EXISTS `xueshengchengji`;
CREATE TABLE IF NOT EXISTS `xueshengchengji` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `kemu1chengji` int DEFAULT NULL COMMENT '科目1成绩',
  `kemu2chengji` int DEFAULT NULL COMMENT '科目2成绩',
  `kemu3chengji` int DEFAULT NULL COMMENT '科目3成绩',
  `kemu4chengji` int DEFAULT NULL COMMENT '科目4成绩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='学生成绩';

DELETE FROM `xueshengchengji`;
INSERT INTO `xueshengchengji` (`id`, `addtime`, `xuehao`, `xingming`, `kemu1chengji`, `kemu2chengji`, `kemu3chengji`, `kemu4chengji`) VALUES
	(41, '2021-05-07 03:01:56', '学号1', '姓名1', 1, 1, 1, 1),
	(42, '2021-05-07 03:01:56', '学号2', '姓名2', 2, 2, 2, 2),
	(43, '2021-05-07 03:01:56', '学号3', '姓名3', 3, 3, 3, 3),
	(44, '2021-05-07 03:01:56', '学号4', '姓名4', 4, 4, 4, 4),
	(45, '2021-05-07 03:01:56', '学号5', '姓名5', 5, 5, 5, 5),
	(46, '2021-05-07 03:01:56', '学号6', '姓名6', 6, 6, 6, 6);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
