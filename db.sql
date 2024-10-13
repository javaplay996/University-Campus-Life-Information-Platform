/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - daxueshenghuoxinxiguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`daxueshenghuoxinxiguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `daxueshenghuoxinxiguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1111','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-20 09:11:58'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-20 09:11:58'),(3,'forum_types','帖子类型',1,'帖子类型1',NULL,NULL,'2023-03-20 09:11:58'),(4,'forum_types','帖子类型',2,'帖子类型2',NULL,NULL,'2023-03-20 09:11:58'),(5,'forum_types','帖子类型',3,'帖子类型3',NULL,NULL,'2023-03-20 09:11:58'),(6,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-20 09:11:58'),(7,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-20 09:11:58'),(8,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-03-20 09:11:58'),(9,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-03-20 09:11:58'),(10,'huodong_types','活动类型',1,'学习活动',NULL,NULL,'2023-03-20 09:11:58'),(11,'huodong_types','活动类型',2,'招聘活动',NULL,NULL,'2023-03-20 09:11:58'),(12,'huodong_types','活动类型',3,'运动活动',NULL,NULL,'2023-03-20 09:11:58'),(13,'huodong_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-20 09:11:58'),(14,'huodong_yuyue_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-03-20 09:11:58'),(15,'huodong_yuyue_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-03-20 09:11:58'),(16,'huodong_yuyue_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-03-20 09:11:58'),(17,'news_types','资讯类型',1,'资讯类型1',NULL,NULL,'2023-03-20 09:11:58'),(18,'news_types','资讯类型',2,'资讯类型2',NULL,NULL,'2023-03-20 09:11:58'),(19,'zujuan_types','组卷方式',1,'自动组卷',NULL,NULL,'2023-03-20 09:11:58'),(20,'zujuan_types','组卷方式',2,'手动组卷',NULL,NULL,'2023-03-20 09:11:58'),(21,'kemu_types','科目',1,'语文',NULL,NULL,'2023-03-20 09:11:58'),(22,'kemu_types','科目',2,'数学',NULL,NULL,'2023-03-20 09:11:58'),(23,'exampaper_types','试卷状态',1,'启用',NULL,NULL,'2023-03-20 09:11:58'),(24,'exampaper_types','试卷状态',2,'禁用',NULL,NULL,'2023-03-20 09:11:58'),(25,'examquestion_types','试题类型',1,'单选题',NULL,NULL,'2023-03-20 09:11:59'),(26,'examquestion_types','试题类型',2,'多选题',NULL,NULL,'2023-03-20 09:11:59'),(27,'examquestion_types','试题类型',3,'判断题',NULL,NULL,'2023-03-20 09:11:59'),(28,'examquestion_types','试题类型',4,'填空题',NULL,NULL,'2023-03-20 09:11:59'),(29,'news_types','资讯类型',3,'资讯类型3',NULL,'','2023-03-20 09:36:29');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '试卷名称 Search111',
  `exampaper_date` int(11) DEFAULT NULL COMMENT '考试时长(分钟)',
  `exampaper_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试卷总分数',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目 Search111',
  `exampaper_types` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态 Search111',
  `zujuan_types` int(11) DEFAULT NULL COMMENT '组卷方式',
  `exampaper_delete` int(255) DEFAULT '0' COMMENT '逻辑删除（1代表未删除 2代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='试卷';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`exampaper_name`,`exampaper_date`,`exampaper_myscore`,`kemu_types`,`exampaper_types`,`zujuan_types`,`exampaper_delete`,`create_time`) values (1,'测试试卷1',60,100,2,1,2,1,'2023-03-20 09:11:58'),(2,'测试试卷2',180,100,2,1,1,1,'2023-03-20 09:11:58'),(3,'名称111',99,11,2,1,1,1,'2023-03-20 09:38:37'),(4,'试卷222',44,140,2,1,2,1,'2023-03-20 09:39:17');

/*Table structure for table `exampapertopic` */

DROP TABLE IF EXISTS `exampapertopic`;

CREATE TABLE `exampapertopic` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷',
  `examquestion_id` int(20) NOT NULL COMMENT '试题',
  `exampapertopic_number` int(20) NOT NULL COMMENT '试题分数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='试卷选题';

/*Data for the table `exampapertopic` */

insert  into `exampapertopic`(`id`,`exampaper_id`,`examquestion_id`,`exampapertopic_number`,`create_time`) values (7,1,5,10,'2023-03-20 09:11:59'),(8,1,4,10,'2023-03-20 09:11:59'),(9,1,6,70,'2023-03-20 09:11:59'),(18,2,5,15,'2023-03-20 09:11:59'),(19,2,11,15,'2023-03-20 09:11:59'),(20,2,9,15,'2023-03-20 09:11:59'),(21,2,1,15,'2023-03-20 09:11:59'),(22,2,10,20,'2023-03-20 09:11:59'),(23,2,3,20,'2023-03-20 09:11:59'),(31,1,7,10,'2023-03-20 09:11:59'),(33,1,9,0,'2023-03-20 09:11:59'),(34,1,12,0,'2023-03-20 09:11:59'),(35,3,5,1,'2023-03-20 09:38:54'),(36,3,2,1,'2023-03-20 09:38:54'),(37,3,12,1,'2023-03-20 09:38:54'),(38,3,7,1,'2023-03-20 09:38:54'),(39,3,9,2,'2023-03-20 09:38:54'),(40,3,1,2,'2023-03-20 09:38:54'),(41,3,3,3,'2023-03-20 09:38:54'),(42,4,12,4,'2023-03-20 09:39:23'),(43,4,11,3,'2023-03-20 09:39:23'),(44,4,10,22,'2023-03-20 09:39:23'),(45,4,8,111,'2023-03-20 09:39:25');

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examquestion_name` varchar(200) DEFAULT NULL COMMENT '试题名称 Search111',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int(20) DEFAULT '0' COMMENT '试题类型 Search111',
  `examquestion_sequence` int(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`examquestion_name`,`kemu_types`,`examquestion_options`,`examquestion_answer`,`examquestion_analysis`,`examquestion_types`,`examquestion_sequence`,`create_time`) values (1,'1-1=1',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','B','1-1=0',3,1,'2023-03-20 09:11:59'),(2,'1+1=？',2,'[{\"text\":\"1\",\"code\":\"A\"},{\"text\":\"2\",\"code\":\"B\"},{\"text\":\"3\",\"code\":\"C\"},{\"text\":\"4\",\"code\":\"D\"}]','B','1+1=2',1,2,'2023-03-20 09:11:59'),(3,'1+1-1=?',2,'[]','1','1+1-1=1',4,3,'2023-03-20 09:11:59'),(4,'2+2=?',2,'[]','4','2+2=4',4,4,'2023-03-20 09:11:59'),(5,'1-1-1+6=?',2,'[{\"text\":\"4\",\"code\":\"A\"},{\"text\":\"5\",\"code\":\"B\"},{\"text\":\"6\",\"code\":\"C\"},{\"text\":\"3\",\"code\":\"D\"}]','B','1-1-1+6=5',1,5,'2023-03-20 09:11:59'),(6,'3+3=9',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','B','3+3=6',3,6,'2023-03-20 09:11:59'),(7,'试题名称1',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','A,B,C','答案解析1',2,7,'2023-03-20 09:11:59'),(8,'试题名称2',2,'[]','正确答案2','答案解析2',4,8,'2023-03-20 09:11:59'),(9,'试题名称3',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','A','答案解析3',3,9,'2023-03-20 09:11:59'),(10,'试题名称4',2,'[]','正确答案4','答案解析4',4,10,'2023-03-20 09:11:59'),(11,'试题名称5',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','B','答案解析5',1,11,'2023-03-20 09:11:59'),(12,'试题名称6',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','A','答案解析6',1,12,'2023-03-20 09:11:59');

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '考试编号',
  `yonghu_id` int(20) NOT NULL COMMENT '考试用户',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `total_score` int(200) DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '考试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`examrecord_uuid_number`,`yonghu_id`,`exampaper_id`,`total_score`,`insert_time`,`create_time`) values (1,'1679275898027',1,2,15,'2023-03-20 09:31:38','2023-03-20 09:31:38'),(2,'1679276119259',4,2,15,'2023-03-20 09:35:19','2023-03-20 09:35:19');

/*Table structure for table `examredetails` */

DROP TABLE IF EXISTS `examredetails`;

CREATE TABLE `examredetails` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '试卷编号',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `examredetails_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='答题详情表';

/*Data for the table `examredetails` */

insert  into `examredetails`(`id`,`examredetails_uuid_number`,`yonghu_id`,`examquestion_id`,`examredetails_myanswer`,`examredetails_myscore`,`create_time`) values (1,'1679275898027',1,3,'12',0,'2023-03-20 09:31:38'),(2,'1679275898027',1,10,'广东省广东省',0,'2023-03-20 09:31:38'),(3,'1679275898027',1,1,'A',0,'2023-03-20 09:31:38'),(4,'1679275898027',1,9,'A',15,'2023-03-20 09:31:38'),(5,'1679275898027',1,11,'A',0,'2023-03-20 09:31:38'),(6,'1679275898027',1,5,'A',0,'2023-03-20 09:31:38'),(7,'1679276119259',4,3,'和豆腐干发送到个',0,'2023-03-20 09:35:19'),(8,'1679276119259',4,10,'单个 ',0,'2023-03-20 09:35:19'),(9,'1679276119259',4,1,'A',0,'2023-03-20 09:35:19'),(10,'1679276119259',4,9,'A',15,'2023-03-20 09:35:19'),(11,'1679276119259',4,11,'A',0,'2023-03-20 09:35:19'),(12,'1679276119259',4,5,'A',0,'2023-03-20 09:35:19');

/*Table structure for table `examrewrongquestion` */

DROP TABLE IF EXISTS `examrewrongquestion`;

CREATE TABLE `examrewrongquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷（外键）',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生作答',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='错题表';

/*Data for the table `examrewrongquestion` */

insert  into `examrewrongquestion`(`id`,`yonghu_id`,`exampaper_id`,`examquestion_id`,`examredetails_myanswer`,`insert_time`,`create_time`) values (1,1,2,3,'12','2023-03-20 09:31:38','2023-03-20 09:31:38'),(2,1,2,10,'广东省广东省','2023-03-20 09:31:38','2023-03-20 09:31:38'),(3,1,2,1,'A','2023-03-20 09:31:38','2023-03-20 09:31:38'),(4,1,2,11,'A','2023-03-20 09:31:38','2023-03-20 09:31:38'),(5,1,2,5,'A','2023-03-20 09:31:38','2023-03-20 09:31:38'),(6,4,2,3,'和豆腐干发送到个','2023-03-20 09:35:19','2023-03-20 09:35:19'),(7,4,2,10,'单个 ','2023-03-20 09:35:19','2023-03-20 09:35:19'),(8,4,2,1,'A','2023-03-20 09:35:19','2023-03-20 09:35:19'),(9,4,2,11,'A','2023-03-20 09:35:19','2023-03-20 09:35:19'),(10,4,2,5,'A','2023-03-20 09:35:19','2023-03-20 09:35:19');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_types` int(11) DEFAULT NULL COMMENT '帖子类型  Search111 ',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_types`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',129,2,1,'2023-03-20 09:13:38','2023-03-20 09:13:38','2023-03-20 09:13:38'),(2,'帖子标题2',1,NULL,'发布内容2',478,3,1,'2023-03-20 09:13:38','2023-03-20 09:13:38','2023-03-20 09:13:38'),(3,'帖子标题3',3,NULL,'发布内容3',393,3,1,'2023-03-20 09:13:38','2023-03-20 09:13:38','2023-03-20 09:13:38'),(4,'帖子标题4',1,NULL,'发布内容4',431,3,1,'2023-03-20 09:13:38','2023-03-20 09:13:38','2023-03-20 09:13:38'),(5,'帖子标题5',3,NULL,'发布内容5',292,1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38','2023-03-20 09:13:38'),(6,'帖子标题6',2,NULL,'发布内容6',228,2,1,'2023-03-20 09:13:38','2023-03-20 09:13:38','2023-03-20 09:13:38'),(7,'帖子标题7',1,NULL,'发布内容7',108,3,1,'2023-03-20 09:13:38','2023-03-20 09:13:38','2023-03-20 09:13:38'),(8,'帖子标题8',1,NULL,'发布内容8',43,3,1,'2023-03-20 09:13:38','2023-03-20 09:13:38','2023-03-20 09:13:38'),(9,'帖子标题9',3,NULL,'发布内容9',183,1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38','2023-03-20 09:13:38'),(10,'帖子标题10',2,NULL,'发布内容10',173,1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38','2023-03-20 09:13:38'),(11,'帖子标题11',1,NULL,'发布内容11',80,3,1,'2023-03-20 09:13:38','2023-03-20 09:13:38','2023-03-20 09:13:38'),(12,'帖子标题12',3,NULL,'发布内容12',101,1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38','2023-03-20 09:13:38'),(13,'帖子标题13',3,NULL,'发布内容13',170,2,1,'2023-03-20 09:13:38','2023-03-20 09:13:38','2023-03-20 09:13:38'),(14,'帖子标题14',2,NULL,'发布内容14',295,2,1,'2023-03-20 09:13:38','2023-03-20 09:13:38','2023-03-20 09:13:38'),(15,NULL,4,NULL,'孤独颂歌的',14,NULL,2,'2023-03-20 09:35:25',NULL,'2023-03-20 09:35:25'),(16,'标题i1211',4,NULL,'<p>个地方都是感受到感受到</p>',NULL,3,1,'2023-03-20 09:35:45',NULL,'2023-03-20 09:35:45'),(17,NULL,NULL,1,'哈哈哈',16,NULL,2,'2023-03-20 09:36:38',NULL,'2023-03-20 09:36:38');

/*Table structure for table `huodong` */

DROP TABLE IF EXISTS `huodong`;

CREATE TABLE `huodong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huodong_name` varchar(200) DEFAULT NULL COMMENT '活动名称  Search111 ',
  `huodong_uuid_number` varchar(200) DEFAULT NULL COMMENT '活动编号',
  `huodong_photo` varchar(200) DEFAULT NULL COMMENT '活动照片',
  `huodong_address` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `huodong_types` int(11) DEFAULT NULL COMMENT '活动类型 Search111',
  `huodong_kucun_number` int(11) DEFAULT NULL COMMENT '活动库存',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `huodong_kaishi_time` timestamp NULL DEFAULT NULL COMMENT '活动开始时间',
  `huodong_clicknum` int(11) DEFAULT NULL COMMENT '活动热度',
  `huodong_content` longtext COMMENT '活动内容 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `huodong_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='活动';

/*Data for the table `huodong` */

insert  into `huodong`(`id`,`huodong_name`,`huodong_uuid_number`,`huodong_photo`,`huodong_address`,`huodong_types`,`huodong_kucun_number`,`zan_number`,`cai_number`,`huodong_kaishi_time`,`huodong_clicknum`,`huodong_content`,`shangxia_types`,`huodong_delete`,`insert_time`,`create_time`) values (1,'活动名称1','1679274818561','upload/huodong1.jpg','活动地点1',1,101,222,120,'2023-03-20 09:13:38',484,'活动内容1',1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(2,'活动名称2','1679274818607','upload/huodong2.jpg','活动地点2',3,102,367,396,'2023-03-20 09:13:38',201,'活动内容2',1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(3,'活动名称3','1679274818611','upload/huodong3.jpg','活动地点3',3,103,215,481,'2023-03-20 09:13:38',186,'活动内容3',1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(4,'活动名称4','1679274818617','upload/huodong4.jpg','活动地点4',3,104,482,122,'2023-03-20 09:13:38',78,'活动内容4',1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(5,'活动名称5','1679274818547','upload/huodong5.jpg','活动地点5',3,105,166,421,'2023-03-20 09:13:38',15,'活动内容5',1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(6,'活动名称6','1679274818569','upload/huodong6.jpg','活动地点6',1,106,300,263,'2023-03-20 09:13:38',55,'活动内容6',1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(7,'活动名称7','1679274818555','upload/huodong7.jpg','活动地点7',2,107,297,210,'2023-03-20 09:13:38',22,'活动内容7',1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(8,'活动名称8','1679274818577','upload/huodong8.jpg','活动地点8',2,108,467,329,'2023-03-20 09:13:38',249,'活动内容8',1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(9,'活动名称9','1679274818589','upload/huodong9.jpg','活动地点9',1,109,9,414,'2023-03-20 09:13:38',498,'活动内容9',1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(10,'活动名称10','1679274818616','upload/huodong10.jpg','活动地点10',3,1010,113,154,'2023-03-20 09:13:38',46,'活动内容10',1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(11,'活动名称11','1679274818583','upload/huodong11.jpg','活动地点11',3,1011,128,97,'2023-03-20 09:13:38',456,'活动内容11',1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(12,'活动名称12','1679274818601','upload/huodong12.jpg','活动地点12',3,1012,346,251,'2023-03-20 09:13:38',253,'活动内容12',1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(13,'活动名称13','1679274818599','upload/huodong13.jpg','活动地点13',3,1013,3,499,'2023-03-20 09:13:38',285,'活动内容13',1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(14,'活动名称14','1679274818627','upload/huodong14.jpg','活动地点14',2,1014,83,225,'2023-03-20 09:13:38',165,'活动内容14',1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38');

/*Table structure for table `huodong_collection` */

DROP TABLE IF EXISTS `huodong_collection`;

CREATE TABLE `huodong_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodong_id` int(11) DEFAULT NULL COMMENT '活动',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `huodong_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='活动收藏';

/*Data for the table `huodong_collection` */

insert  into `huodong_collection`(`id`,`huodong_id`,`yonghu_id`,`huodong_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(2,2,3,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(3,3,1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(4,4,2,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(5,5,2,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(6,6,3,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(7,7,1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(8,8,2,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(9,9,1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(10,10,2,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(11,11,2,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(12,12,2,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(13,13,3,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(14,14,1,1,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(15,9,4,2,'2023-03-20 09:34:44','2023-03-20 09:34:44'),(16,1,4,1,'2023-03-20 09:36:00','2023-03-20 09:36:00');

/*Table structure for table `huodong_liuyan` */

DROP TABLE IF EXISTS `huodong_liuyan`;

CREATE TABLE `huodong_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodong_id` int(11) DEFAULT NULL COMMENT '活动',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `huodong_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='活动留言';

/*Data for the table `huodong_liuyan` */

insert  into `huodong_liuyan`(`id`,`huodong_id`,`yonghu_id`,`huodong_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2023-03-20 09:13:38','回复信息1','2023-03-20 09:13:38','2023-03-20 09:13:38'),(2,2,1,'留言内容2','2023-03-20 09:13:38','回复信息2','2023-03-20 09:13:38','2023-03-20 09:13:38'),(3,3,1,'留言内容3','2023-03-20 09:13:38','回复信息3','2023-03-20 09:13:38','2023-03-20 09:13:38'),(4,4,1,'留言内容4','2023-03-20 09:13:38','回复信息4','2023-03-20 09:13:38','2023-03-20 09:13:38'),(5,5,3,'留言内容5','2023-03-20 09:13:38','回复信息5','2023-03-20 09:13:38','2023-03-20 09:13:38'),(6,6,3,'留言内容6','2023-03-20 09:13:38','回复信息6','2023-03-20 09:13:38','2023-03-20 09:13:38'),(7,7,2,'留言内容7','2023-03-20 09:13:38','回复信息7','2023-03-20 09:13:38','2023-03-20 09:13:38'),(8,8,3,'留言内容8','2023-03-20 09:13:38','回复信息8','2023-03-20 09:13:38','2023-03-20 09:13:38'),(9,9,1,'留言内容9','2023-03-20 09:13:38','回复信息9','2023-03-20 09:13:38','2023-03-20 09:13:38'),(10,10,1,'留言内容10','2023-03-20 09:13:38','回复信息10','2023-03-20 09:13:38','2023-03-20 09:13:38'),(11,11,3,'留言内容11','2023-03-20 09:13:38','回复信息11','2023-03-20 09:13:38','2023-03-20 09:13:38'),(12,12,3,'留言内容12','2023-03-20 09:13:38','回复信息12','2023-03-20 09:13:38','2023-03-20 09:13:38'),(13,13,1,'留言内容13','2023-03-20 09:13:38','回复信息13','2023-03-20 09:13:38','2023-03-20 09:13:38'),(14,14,3,'留言内容14','2023-03-20 09:13:38','回复信息14','2023-03-20 09:13:38','2023-03-20 09:13:38');

/*Table structure for table `huodong_yuyue` */

DROP TABLE IF EXISTS `huodong_yuyue`;

CREATE TABLE `huodong_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huodong_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `huodong_id` int(11) DEFAULT NULL COMMENT '活动',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `huodong_yuyue_text` longtext COMMENT '报名理由',
  `huodong_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `huodong_yuyue_yesno_text` longtext COMMENT '审核回复',
  `huodong_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '活动报名时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='活动报名';

/*Data for the table `huodong_yuyue` */

insert  into `huodong_yuyue`(`id`,`huodong_yuyue_uuid_number`,`huodong_id`,`yonghu_id`,`huodong_yuyue_text`,`huodong_yuyue_yesno_types`,`huodong_yuyue_yesno_text`,`huodong_yuyue_shenhe_time`,`insert_time`,`create_time`) values (1,'1679274818594',1,2,'报名理由1',1,NULL,NULL,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(2,'1679274818633',2,1,'报名理由2',1,NULL,NULL,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(3,'1679274818552',3,1,'报名理由3',1,NULL,NULL,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(4,'1679274818600',4,3,'报名理由4',1,NULL,NULL,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(5,'1679274818569',5,3,'报名理由5',1,NULL,NULL,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(6,'1679274818538',6,3,'报名理由6',1,NULL,NULL,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(7,'1679274818564',7,1,'报名理由7',1,NULL,NULL,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(8,'1679274818551',8,2,'报名理由8',1,NULL,NULL,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(9,'1679274818560',9,1,'报名理由9',1,NULL,NULL,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(10,'1679274818601',10,1,'报名理由10',1,NULL,NULL,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(11,'1679274818549',11,3,'报名理由11',1,NULL,NULL,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(12,'1679274818562',12,2,'报名理由12',1,NULL,NULL,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(13,'1679274818616',13,1,'报名理由13',1,NULL,NULL,'2023-03-20 09:13:38','2023-03-20 09:13:38'),(14,'1679274818598',14,2,'报名理由14',3,'灌灌灌灌很好','2023-03-20 09:38:11','2023-03-20 09:13:38','2023-03-20 09:13:38'),(15,'1679275252411',1,1,'广东省发生十多个',2,'给对方所发生的','2023-03-20 09:30:54','2023-03-20 09:20:52','2023-03-20 09:20:52'),(16,'1679276089894',9,4,'gdfsdgdsgtfs地方撒孤独颂歌',2,'高公公','2023-03-20 09:38:04','2023-03-20 09:34:50','2023-03-20 09:34:50');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '资讯名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '资讯图片 ',
  `news_types` int(11) NOT NULL COMMENT '资讯类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '资讯发布时间 ',
  `news_content` longtext COMMENT '资讯详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='校园资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'资讯名称1','upload/news1.jpg',2,'2023-03-20 09:13:38','资讯详情1','2023-03-20 09:13:38'),(2,'资讯名称2','upload/news2.jpg',1,'2023-03-20 09:13:38','资讯详情2','2023-03-20 09:13:38'),(3,'资讯名称3','upload/news3.jpg',2,'2023-03-20 09:13:38','资讯详情3','2023-03-20 09:13:38'),(4,'资讯名称4','upload/news4.jpg',1,'2023-03-20 09:13:38','资讯详情4','2023-03-20 09:13:38'),(5,'资讯名称5','upload/news5.jpg',2,'2023-03-20 09:13:38','资讯详情5','2023-03-20 09:13:38'),(6,'资讯名称6','upload/news6.jpg',1,'2023-03-20 09:13:38','资讯详情6','2023-03-20 09:13:38'),(7,'资讯名称7','upload/news7.jpg',2,'2023-03-20 09:13:38','资讯详情7','2023-03-20 09:13:38'),(8,'资讯名称8','upload/news8.jpg',1,'2023-03-20 09:13:38','资讯详情8','2023-03-20 09:13:38'),(9,'资讯名称9','upload/news9.jpg',2,'2023-03-20 09:13:38','资讯详情9','2023-03-20 09:13:38'),(10,'资讯名称10','upload/news10.jpg',1,'2023-03-20 09:13:38','资讯详情10','2023-03-20 09:13:38'),(11,'资讯名称11','upload/news11.jpg',2,'2023-03-20 09:13:38','资讯详情11','2023-03-20 09:13:38'),(12,'资讯名称12','upload/news12.jpg',2,'2023-03-20 09:13:38','资讯详情12','2023-03-20 09:13:38'),(13,'资讯名称13','upload/news13.jpg',1,'2023-03-20 09:13:38','资讯详情13','2023-03-20 09:13:38'),(14,'资讯名称14','upload/news14.jpg',1,'2023-03-20 09:13:38','资讯详情14','2023-03-20 09:13:38');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','cav3z6zb8cdz10da9z4vhz60od6tg1ri','2023-03-20 09:17:39','2023-03-20 10:17:40'),(2,1,'admin','users','管理员','nrmbrnsb67czpopixw3pwlpa6vdfkteg','2023-03-20 09:20:17','2023-03-20 10:36:16'),(3,4,'a5','yonghu','用户','di9o1ozqw0ak4ra13mowrloxc9w3jrm4','2023-03-20 09:34:35','2023-03-20 10:34:36');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-20 09:11:58');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','2023-03-20 09:13:38'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-03-20 09:13:38'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','2023-03-20 09:13:38'),(4,'a5','123456','张5','17788889999','888999777744445555','upload/1679276133216.jpg',1,'5@qq.com','2023-03-20 09:34:30');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
