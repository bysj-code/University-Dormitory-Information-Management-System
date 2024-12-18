/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gaoxiaosushe
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gaoxiaosushe` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gaoxiaosushe`;

/*Table structure for table `baoxiu` */

DROP TABLE IF EXISTS `baoxiu`;

CREATE TABLE `baoxiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `baoxiu_uuid_number` varchar(200) DEFAULT NULL COMMENT '报修编号',
  `baoxiu_name` varchar(200) DEFAULT NULL COMMENT '报修标题  Search111 ',
  `baoxiu_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `baoxiu_types` int(11) DEFAULT NULL COMMENT '报修类型 Search111',
  `baoxiu_content` longtext COMMENT '报修内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报修时间',
  `baoxiu_zhuangtai_types` int(11) DEFAULT NULL COMMENT '报修状态 Search111',
  `baoxiu_huifu_content` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='报修';

/*Data for the table `baoxiu` */

insert  into `baoxiu`(`id`,`yonghu_id`,`baoxiu_uuid_number`,`baoxiu_name`,`baoxiu_file`,`baoxiu_types`,`baoxiu_content`,`insert_time`,`baoxiu_zhuangtai_types`,`baoxiu_huifu_content`,`update_time`,`create_time`) values (1,2,'1683684077885','报修标题1','upload/file.rar',3,'报修内容1','2023-05-10 10:01:17',2,'回复内容1','2023-05-10 10:01:17','2023-05-10 10:01:17'),(2,3,'1683684077923','报修标题2','upload/file.rar',2,'报修内容2','2023-05-10 10:01:17',2,'回复内容2','2023-05-10 10:01:17','2023-05-10 10:01:17'),(3,2,'1683684077862','报修标题3','upload/file.rar',2,'报修内容3','2023-05-10 10:01:17',1,'回复内容3','2023-05-10 10:01:17','2023-05-10 10:01:17'),(4,2,'1683684077929','报修标题4','upload/file.rar',1,'报修内容4','2023-05-10 10:01:17',2,'回复内容4','2023-05-10 10:01:17','2023-05-10 10:01:17'),(5,1,'1683684077847','报修标题5','upload/file.rar',2,'报修内容5','2023-05-10 10:01:17',1,'回复内容5','2023-05-10 10:01:17','2023-05-10 10:01:17'),(6,3,'1683684077847','报修标题6','upload/file.rar',2,'报修内容6','2023-05-10 10:01:17',2,'回复内容6','2023-05-10 10:01:17','2023-05-10 10:01:17'),(7,1,'1683684077925','报修标题7','upload/file.rar',1,'报修内容7','2023-05-10 10:01:17',1,'回复内容7','2023-05-10 10:01:17','2023-05-10 10:01:17'),(8,3,'1683684077843','报修标题8','upload/file.rar',2,'报修内容8','2023-05-10 10:01:17',1,'回复内容8','2023-05-10 10:01:17','2023-05-10 10:01:17'),(9,2,'1683684077901','报修标题9','upload/file.rar',1,'报修内容9','2023-05-10 10:01:17',1,'回复内容9','2023-05-10 10:01:17','2023-05-10 10:01:17'),(10,3,'1683684077915','报修标题10','upload/file.rar',1,'报修内容10','2023-05-10 10:01:17',2,'回复内容10','2023-05-10 10:01:17','2023-05-10 10:01:17'),(11,2,'1683684077878','报修标题11','upload/file.rar',1,'报修内容11','2023-05-10 10:01:17',2,'回复内容11','2023-05-10 10:01:17','2023-05-10 10:01:17'),(12,1,'1683684077904','报修标题12','upload/file.rar',1,'报修内容12','2023-05-10 10:01:17',1,'回复内容12','2023-05-10 10:01:17','2023-05-10 10:01:17'),(13,1,'1683684077846','报修标题13','upload/file.rar',3,'报修内容13','2023-05-10 10:01:17',1,'回复内容13','2023-05-10 10:01:17','2023-05-10 10:01:17'),(14,3,'1683684077907','报修标题14','upload/file.rar',2,'报修内容14','2023-05-10 10:01:17',1,'回复内容14','2023-05-10 10:01:17','2023-05-10 10:01:17'),(15,1,'1683685059435','baoxiu 111','upload/1683685068084.doc',3,'郭德纲','2023-05-10 10:17:52',2,'<p>嘎山东高速好地方是多少</p>','2023-05-10 13:24:12','2023-05-10 10:17:52'),(16,4,'1683696805009','报修111','upload/1683696812676.doc',3,'郭德纲的三个','2023-05-10 13:33:36',2,'<p>公分的地方好家伙</p>','2023-05-10 13:54:27','2023-05-10 13:33:36');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1个和都是高大上','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'xueyuan_types','学院',1,'学院1',NULL,NULL,'2023-05-10 10:00:23'),(2,'xueyuan_types','学院',2,'学院2',NULL,NULL,'2023-05-10 10:00:23'),(3,'zhuanye_types','专业',1,'专业1',NULL,NULL,'2023-05-10 10:00:23'),(4,'zhuanye_types','专业',2,'专业2',NULL,NULL,'2023-05-10 10:00:23'),(5,'sex_types','性别类型',1,'男',NULL,NULL,'2023-05-10 10:00:23'),(6,'sex_types','性别类型',2,'女',NULL,NULL,'2023-05-10 10:00:23'),(7,'jinyong_types','账户状态',1,'启用',NULL,NULL,'2023-05-10 10:00:23'),(8,'jinyong_types','账户状态',2,'禁用',NULL,NULL,'2023-05-10 10:00:23'),(9,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-05-10 10:00:23'),(10,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-05-10 10:00:23'),(11,'fangwu_types','公寓类型',1,'四人间',NULL,NULL,'2023-05-10 10:00:23'),(12,'fangwu_types','公寓类型',2,'六人间',NULL,NULL,'2023-05-10 10:00:23'),(13,'fangwu_types','公寓类型',3,'双人间',NULL,NULL,'2023-05-10 10:00:23'),(14,'fangwu_types','公寓类型',4,'单人间',NULL,NULL,'2023-05-10 10:00:24'),(15,'fangwu_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-05-10 10:00:24'),(16,'fangwu_yuyue_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-05-10 10:00:24'),(17,'fangwu_yuyue_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-05-10 10:00:24'),(18,'fangwu_yuyue_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-05-10 10:00:24'),(19,'tiaosushenqing_types','调宿申请类型',1,'调宿申请类型1',NULL,NULL,'2023-05-10 10:00:24'),(20,'tiaosushenqing_types','调宿申请类型',2,'调宿申请类型2',NULL,NULL,'2023-05-10 10:00:24'),(21,'tiaosushenqing_types','调宿申请类型',3,'调宿申请类型3',NULL,NULL,'2023-05-10 10:00:24'),(22,'tiaosushenqing_types','调宿申请类型',4,'调宿申请类型4',NULL,NULL,'2023-05-10 10:00:24'),(23,'tiaosushenqing_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-05-10 10:00:24'),(24,'tiaosushenqing_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-05-10 10:00:24'),(25,'tiaosushenqing_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-05-10 10:00:24'),(26,'weisheng_types','卫生状况',1,'好',NULL,NULL,'2023-05-10 10:00:24'),(27,'weisheng_types','卫生状况',2,'一般',NULL,NULL,'2023-05-10 10:00:24'),(28,'weisheng_types','卫生状况',3,'差',NULL,NULL,'2023-05-10 10:00:24'),(29,'liuyan_types','留言类型',1,'留言类型1',NULL,NULL,'2023-05-10 10:00:24'),(30,'liuyan_types','留言类型',2,'留言类型2',NULL,NULL,'2023-05-10 10:00:24'),(31,'liuyan_types','留言类型',3,'留言类型3',NULL,NULL,'2023-05-10 10:00:24'),(32,'baoxiu_types','报修类型',1,'报修类型1',NULL,NULL,'2023-05-10 10:00:24'),(33,'baoxiu_types','报修类型',2,'报修类型2',NULL,NULL,'2023-05-10 10:00:24'),(34,'baoxiu_types','报修类型',3,'报修类型3',NULL,NULL,'2023-05-10 10:00:24'),(35,'baoxiu_zhuangtai_types','报修状态',1,'未处理',NULL,NULL,'2023-05-10 10:00:24'),(36,'baoxiu_zhuangtai_types','报修状态',2,'已处理',NULL,NULL,'2023-05-10 10:00:24'),(37,'fangwu_tuisu_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-05-10 10:00:24'),(38,'fangwu_tuisu_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-05-10 10:00:24'),(39,'fangwu_tuisu_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-05-10 10:00:24'),(40,'jiaofei_types','缴费状况',1,'未缴费',NULL,NULL,'2023-05-10 10:00:24'),(41,'jiaofei_types','缴费状况',2,'已缴费',NULL,NULL,'2023-05-10 10:00:24'),(42,'zujuan_types','组卷方式',1,'自动组卷',NULL,NULL,'2023-05-10 10:00:24'),(43,'zujuan_types','组卷方式',2,'手动组卷',NULL,NULL,'2023-05-10 10:00:25'),(44,'exampaper_types','试卷状态',1,'启用',NULL,NULL,'2023-05-10 10:00:25'),(45,'exampaper_types','试卷状态',2,'禁用',NULL,NULL,'2023-05-10 10:00:25'),(46,'examquestion_types','试题类型',1,'单选题',NULL,NULL,'2023-05-10 10:00:25'),(47,'examquestion_types','试题类型',2,'多选题',NULL,NULL,'2023-05-10 10:00:25'),(48,'examquestion_types','试题类型',3,'判断题',NULL,NULL,'2023-05-10 10:00:25'),(49,'examquestion_types','试题类型',4,'填空题',NULL,NULL,'2023-05-10 10:00:25'),(50,'zhuanye_types','专业',3,'专业3',NULL,'','2023-05-10 13:40:11'),(51,'zhuanye_types','专业',4,'专业4',NULL,'','2023-05-10 13:44:40');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '试卷名称 Search111',
  `exampaper_date` int(11) DEFAULT NULL COMMENT '考试时长(分钟)',
  `exampaper_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试卷总分数',
  `exampaper_types` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态 Search111',
  `zujuan_types` int(11) DEFAULT NULL COMMENT '组卷方式',
  `exampaper_delete` int(255) DEFAULT '0' COMMENT '逻辑删除（1代表未删除 2代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='试卷';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`exampaper_name`,`exampaper_date`,`exampaper_myscore`,`exampaper_types`,`zujuan_types`,`exampaper_delete`,`create_time`) values (1,'测试问卷1',60,100,1,2,1,'2023-05-10 10:00:25'),(2,'测试问卷2',180,100,1,1,1,'2023-05-10 10:00:25');

/*Table structure for table `exampapertopic` */

DROP TABLE IF EXISTS `exampapertopic`;

CREATE TABLE `exampapertopic` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷',
  `examquestion_id` int(20) NOT NULL COMMENT '试题',
  `exampapertopic_number` int(20) NOT NULL COMMENT '试题分数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='试卷选题';

/*Data for the table `exampapertopic` */

insert  into `exampapertopic`(`id`,`exampaper_id`,`examquestion_id`,`exampapertopic_number`,`create_time`) values (7,1,5,10,'2023-05-10 10:00:25'),(8,1,4,10,'2023-05-10 10:00:25'),(9,1,6,70,'2023-05-10 10:00:25'),(18,2,5,15,'2023-05-10 10:00:25'),(19,2,11,15,'2023-05-10 10:00:25'),(20,2,9,15,'2023-05-10 10:00:25'),(21,2,1,15,'2023-05-10 10:00:25'),(22,2,10,20,'2023-05-10 10:00:25'),(23,2,3,20,'2023-05-10 10:00:25'),(31,1,7,10,'2023-05-10 10:00:25'),(33,1,9,0,'2023-05-10 10:00:25'),(34,1,12,0,'2023-05-10 10:00:25');

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examquestion_name` varchar(200) DEFAULT NULL COMMENT '试题名称 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int(20) DEFAULT '0' COMMENT '试题类型 Search111',
  `examquestion_sequence` int(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`examquestion_name`,`examquestion_options`,`examquestion_answer`,`examquestion_analysis`,`examquestion_types`,`examquestion_sequence`,`create_time`) values (1,'1-1=1','[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','B','1-1=0',3,1,'2023-05-10 10:00:25'),(2,'1+1=？','[{\"text\":\"1\",\"code\":\"A\"},{\"text\":\"2\",\"code\":\"B\"},{\"text\":\"3\",\"code\":\"C\"},{\"text\":\"4\",\"code\":\"D\"}]','B','1+1=2',1,2,'2023-05-10 10:00:25'),(3,'1+1-1=?','[]','1','1+1-1=1',4,3,'2023-05-10 10:00:25'),(4,'2+2=?','[]','4','2+2=4',4,4,'2023-05-10 10:00:25'),(5,'1-1-1+6=?','[{\"text\":\"4\",\"code\":\"A\"},{\"text\":\"5\",\"code\":\"B\"},{\"text\":\"6\",\"code\":\"C\"},{\"text\":\"3\",\"code\":\"D\"}]','B','1-1-1+6=5',1,5,'2023-05-10 10:00:25'),(6,'3+3=9','[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','B','3+3=6',3,6,'2023-05-10 10:00:25'),(7,'试题名称1','[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','A,B,C','答案解析1',2,7,'2023-05-10 10:00:25'),(8,'试题名称2','[]','正确答案2','答案解析2',4,8,'2023-05-10 10:00:25'),(9,'试题名称3','[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','A','答案解析3',3,9,'2023-05-10 10:00:25'),(10,'试题名称4','[]','正确答案4','答案解析4',4,10,'2023-05-10 10:00:25'),(11,'试题名称5','[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','B','答案解析5',1,11,'2023-05-10 10:00:25'),(12,'试题名称6','[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','A','答案解析6',1,12,'2023-05-10 10:00:25');

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

insert  into `examrecord`(`id`,`examrecord_uuid_number`,`yonghu_id`,`exampaper_id`,`total_score`,`insert_time`,`create_time`) values (1,'1683684532412',1,2,30,'2023-05-10 10:08:52','2023-05-10 10:08:52'),(2,'1683696598573',4,2,45,'2023-05-10 13:29:59','2023-05-10 13:29:59');

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

insert  into `examredetails`(`id`,`examredetails_uuid_number`,`yonghu_id`,`examquestion_id`,`examredetails_myanswer`,`examredetails_myscore`,`create_time`) values (1,'1683684532412',1,3,'2',0,'2023-05-10 10:08:53'),(2,'1683684532412',1,10,'gdfsghsd广东发生过',0,'2023-05-10 10:08:53'),(3,'1683684532412',1,1,'A',0,'2023-05-10 10:08:53'),(4,'1683684532412',1,9,'A',15,'2023-05-10 10:08:53'),(5,'1683684532412',1,11,'C',0,'2023-05-10 10:08:53'),(6,'1683684532412',1,5,'B',15,'2023-05-10 10:08:53'),(7,'1683696598573',4,3,'2',0,'2023-05-10 13:29:59'),(8,'1683696598573',4,10,'3',0,'2023-05-10 13:29:59'),(9,'1683696598573',4,1,'B',15,'2023-05-10 13:29:59'),(10,'1683696598573',4,9,'A',15,'2023-05-10 13:29:59'),(11,'1683696598573',4,11,'D',0,'2023-05-10 13:29:59'),(12,'1683696598573',4,5,'B',15,'2023-05-10 13:29:59');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='错题表';

/*Data for the table `examrewrongquestion` */

insert  into `examrewrongquestion`(`id`,`yonghu_id`,`exampaper_id`,`examquestion_id`,`examredetails_myanswer`,`insert_time`,`create_time`) values (1,1,2,3,'2','2023-05-10 10:08:53','2023-05-10 10:08:53'),(2,1,2,10,'gdfsghsd广东发生过','2023-05-10 10:08:53','2023-05-10 10:08:53'),(3,1,2,1,'A','2023-05-10 10:08:53','2023-05-10 10:08:53'),(4,1,2,11,'C','2023-05-10 10:08:53','2023-05-10 10:08:53'),(5,4,2,3,'2','2023-05-10 13:29:59','2023-05-10 13:29:59'),(6,4,2,10,'3','2023-05-10 13:29:59','2023-05-10 13:29:59'),(7,4,2,11,'D','2023-05-10 13:29:59','2023-05-10 13:29:59');

/*Table structure for table `fangke` */

DROP TABLE IF EXISTS `fangke`;

CREATE TABLE `fangke` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '公寓',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `fangke_name` varchar(200) DEFAULT NULL COMMENT '访客姓名 Search111 ',
  `fangke_phone` varchar(200) DEFAULT NULL COMMENT '访客手机号',
  `fangke_id_number` varchar(200) DEFAULT NULL COMMENT '访客身份证号',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `fangke_content` longtext COMMENT '来访事由 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '来访时间',
  `likai_time` timestamp NULL DEFAULT NULL COMMENT '离开时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='访客';

/*Data for the table `fangke` */

insert  into `fangke`(`id`,`fangwu_id`,`yonghu_id`,`fangke_name`,`fangke_phone`,`fangke_id_number`,`sex_types`,`fangke_content`,`insert_time`,`likai_time`,`create_time`) values (1,1,3,'访客姓名1','17703786901','410224199010102001',2,'来访事由1','2023-05-10 10:01:17','2023-05-10 10:01:17','2023-05-10 10:01:17'),(2,2,2,'访客姓名2','17703786902','410224199010102002',2,'来访事由2','2023-05-10 10:01:17','2023-05-10 10:01:17','2023-05-10 10:01:17'),(3,3,1,'访客姓名3','17703786903','410224199010102003',2,'来访事由3','2023-05-10 10:01:17','2023-05-10 10:01:17','2023-05-10 10:01:17'),(4,4,3,'访客姓名4','17703786904','410224199010102004',1,'来访事由4','2023-05-10 10:01:17','2023-05-10 10:01:17','2023-05-10 10:01:17'),(5,5,1,'访客姓名5','17703786905','410224199010102005',2,'来访事由5','2023-05-10 10:01:17','2023-05-10 10:01:17','2023-05-10 10:01:17'),(6,6,2,'访客姓名6','17703786906','410224199010102006',2,'来访事由6','2023-05-10 10:01:17','2023-05-10 10:01:17','2023-05-10 10:01:17'),(7,7,1,'访客姓名7','17703786907','410224199010102007',2,'来访事由7','2023-05-10 10:01:17','2023-05-10 10:01:17','2023-05-10 10:01:17'),(8,8,2,'访客姓名8','17703786908','410224199010102008',1,'来访事由8','2023-05-10 10:01:17','2023-05-10 10:01:17','2023-05-10 10:01:17'),(9,9,3,'访客姓名9','17703786909','410224199010102009',1,'来访事由9','2023-05-10 10:01:17','2023-05-10 10:01:17','2023-05-10 10:01:17'),(10,10,2,'访客姓名10','17703786910','410224199010102010',2,'来访事由10','2023-05-10 10:01:17','2023-05-10 10:01:17','2023-05-10 10:01:17'),(11,11,2,'访客姓名11','17703786911','410224199010102011',1,'来访事由11','2023-05-10 10:01:17','2023-05-10 10:01:17','2023-05-10 10:01:17'),(12,12,2,'访客姓名12','17703786912','410224199010102012',1,'来访事由12','2023-05-10 10:01:17','2023-05-10 10:01:17','2023-05-10 10:01:17'),(13,13,2,'访客姓名13','17703786913','410224199010102013',1,'来访事由13','2023-05-10 10:01:17','2023-05-10 10:01:17','2023-05-10 10:01:17'),(14,14,1,'访客姓名14','17703786914','410224199010102014',2,'来访事由14','2023-05-10 10:01:17','2023-05-10 10:01:17','2023-05-10 10:01:17'),(15,5,4,'张娜','17788889999','410224199610232222',1,'<p>发大概多少根深蒂固</p>','2023-05-10 13:53:23','2023-05-10 18:00:00','2023-05-10 13:53:23');

/*Table structure for table `fangwu` */

DROP TABLE IF EXISTS `fangwu`;

CREATE TABLE `fangwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `susheguanliyuan_id` int(11) DEFAULT NULL COMMENT '宿舍管理员',
  `fangwu_name` varchar(200) DEFAULT NULL COMMENT '房屋名称  Search111 ',
  `fangwu_uuid_number` varchar(200) DEFAULT NULL COMMENT '公寓编号',
  `fangwu_photo` varchar(200) DEFAULT NULL COMMENT '公寓照片',
  `fangwu_address` varchar(200) DEFAULT NULL COMMENT '房屋位置',
  `fangwu_types` int(11) DEFAULT NULL COMMENT '公寓类型 Search111',
  `fangwu_new_money` decimal(10,2) DEFAULT NULL COMMENT '房租/月',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `fangwu_renshu` int(11) DEFAULT NULL COMMENT '限制人数 Search111',
  `fangwu_yizhurenshu` int(11) DEFAULT NULL COMMENT '已住人数 Search111',
  `fangwu_content` longtext COMMENT '公寓介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `fangwu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公寓';

/*Data for the table `fangwu` */

insert  into `fangwu`(`id`,`susheguanliyuan_id`,`fangwu_name`,`fangwu_uuid_number`,`fangwu_photo`,`fangwu_address`,`fangwu_types`,`fangwu_new_money`,`sex_types`,`fangwu_renshu`,`fangwu_yizhurenshu`,`fangwu_content`,`shangxia_types`,`fangwu_delete`,`insert_time`,`create_time`) values (1,3,'房屋名称1','1683684077916','upload/fangwu1.jpg','房屋位置1',1,'53.63',2,428,202,'公寓介绍1',1,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(2,2,'房屋名称2','1683684077907','upload/fangwu2.jpg','房屋位置2',2,'267.74',1,492,115,'公寓介绍2',1,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(3,3,'房屋名称3','1683684077852','upload/fangwu3.jpg','房屋位置3',2,'125.67',2,24,415,'公寓介绍3',1,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(4,2,'房屋名称4','1683684077861','upload/fangwu4.jpg','房屋位置4',4,'10.14',1,118,267,'公寓介绍4',1,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(5,1,'房屋名称5','1683684077856','upload/fangwu5.jpg','房屋位置5',3,'271.38',2,263,463,'公寓介绍5',1,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(6,2,'房屋名称6','1683684077880','upload/fangwu6.jpg','房屋位置6',2,'311.35',2,112,206,'公寓介绍6',1,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(7,2,'房屋名称7','1683684077871','upload/fangwu7.jpg','房屋位置7',3,'400.13',1,288,134,'公寓介绍7',1,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(8,2,'房屋名称8','1683684077872','upload/fangwu8.jpg','房屋位置8',2,'257.85',2,406,1,'公寓介绍8',1,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(9,2,'房屋名称9','1683684077848','upload/fangwu9.jpg','房屋位置9',1,'105.59',1,275,373,'公寓介绍9',1,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(10,1,'房屋名称10','1683684077884','upload/fangwu10.jpg','房屋位置10',3,'386.17',2,7,302,'公寓介绍10',1,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(11,3,'房屋名称11','1683684077934','upload/fangwu11.jpg','房屋位置11',1,'280.59',2,501,0,'公寓介绍11',1,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(12,3,'房屋名称12','1683684077887','upload/fangwu12.jpg','房屋位置12',1,'334.48',1,414,43,'公寓介绍12',1,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(13,2,'房屋名称13','1683684077861','upload/fangwu13.jpg','房屋位置13',4,'393.17',1,200,404,'公寓介绍13',1,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(14,2,'房屋名称14','1683684077857','upload/fangwu14.jpg','房屋位置14',3,'341.88',1,151,2,'公寓介绍14',1,1,'2023-05-10 10:01:17','2023-05-10 10:01:17');

/*Table structure for table `fangwu_collection` */

DROP TABLE IF EXISTS `fangwu_collection`;

CREATE TABLE `fangwu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '公寓',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `fangwu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='公寓收藏';

/*Data for the table `fangwu_collection` */

insert  into `fangwu_collection`(`id`,`fangwu_id`,`yonghu_id`,`fangwu_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(2,2,1,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(3,3,2,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(4,4,1,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(5,5,2,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(6,6,1,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(7,7,3,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(8,8,3,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(9,9,2,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(10,10,1,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(11,11,3,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(12,12,3,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(13,13,2,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(14,14,1,1,'2023-05-10 10:01:17','2023-05-10 10:01:17'),(15,13,4,1,'2023-05-10 13:30:29','2023-05-10 13:30:29');

/*Table structure for table `fangwu_ruzhu` */

DROP TABLE IF EXISTS `fangwu_ruzhu`;

CREATE TABLE `fangwu_ruzhu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '公寓',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '入住时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='公寓学生';

/*Data for the table `fangwu_ruzhu` */

insert  into `fangwu_ruzhu`(`id`,`fangwu_id`,`yonghu_id`,`insert_time`,`create_time`) values (16,14,1,'2023-05-10 11:51:07','2023-05-10 11:51:07'),(17,8,4,'2023-05-10 13:32:29','2023-05-10 13:32:29'),(22,14,4,'2023-05-10 13:50:51','2023-05-10 13:50:51');

/*Table structure for table `fangwu_tuisu` */

DROP TABLE IF EXISTS `fangwu_tuisu`;

CREATE TABLE `fangwu_tuisu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_tuisu_uuid_number` varchar(200) DEFAULT NULL COMMENT '退宿编号 Search111 ',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '公寓',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `fangwu_tuisu_text` longtext COMMENT '申请理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请退宿时间',
  `fangwu_tuisu_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `fangwu_tuisu_yesno_text` longtext COMMENT '审核回复',
  `fangwu_tuisu_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='公寓退宿申请';

/*Data for the table `fangwu_tuisu` */

insert  into `fangwu_tuisu`(`id`,`fangwu_tuisu_uuid_number`,`fangwu_id`,`yonghu_id`,`fangwu_tuisu_text`,`insert_time`,`fangwu_tuisu_yesno_types`,`fangwu_tuisu_yesno_text`,`fangwu_tuisu_shenhe_time`,`create_time`) values (15,'1683688515595',11,1,'gddgs孤独颂歌','2023-05-10 11:16:12',1,'',NULL,'2023-05-10 11:16:12'),(16,'1683696791758',8,4,'郭德纲是个和','2023-05-10 13:33:14',1,'',NULL,'2023-05-10 13:33:14');

/*Table structure for table `fangwu_yuyue` */

DROP TABLE IF EXISTS `fangwu_yuyue`;

CREATE TABLE `fangwu_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangwu_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '公寓',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `fangwu_yuyue_text` longtext COMMENT '申请理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请入住时间',
  `fangwu_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `fangwu_yuyue_yesno_text` longtext COMMENT '审核回复',
  `fangwu_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='公寓入住申请';

/*Data for the table `fangwu_yuyue` */

insert  into `fangwu_yuyue`(`id`,`fangwu_yuyue_uuid_number`,`fangwu_id`,`yonghu_id`,`fangwu_yuyue_text`,`insert_time`,`fangwu_yuyue_yesno_types`,`fangwu_yuyue_yesno_text`,`fangwu_yuyue_shenhe_time`,`create_time`) values (1,'1683684077938',1,3,'申请理由1','2023-05-10 10:01:17',2,'同意','2023-05-10 10:01:17','2023-05-10 10:01:17'),(2,'1683684077926',2,2,'申请理由2','2023-05-10 10:01:17',2,'同意','2023-05-10 10:01:17','2023-05-10 10:01:17'),(3,'1683684077942',3,2,'申请理由3','2023-05-10 10:01:17',2,'同意','2023-05-10 10:01:17','2023-05-10 10:01:17'),(4,'1683684077945',4,3,'申请理由4','2023-05-10 10:01:17',2,'同意','2023-05-10 10:01:17','2023-05-10 10:01:17'),(5,'1683684077904',5,3,'申请理由5','2023-05-10 10:01:17',2,'同意','2023-05-10 10:01:17','2023-05-10 10:01:17'),(6,'1683684077934',6,2,'申请理由6','2023-05-10 10:01:17',2,'同意','2023-05-10 10:01:17','2023-05-10 10:01:17'),(7,'1683684077928',7,2,'申请理由7','2023-05-10 10:01:17',2,'同意','2023-05-10 10:01:17','2023-05-10 10:01:17'),(8,'1683684077882',8,2,'申请理由8','2023-05-10 10:01:17',2,'同意','2023-05-10 10:01:17','2023-05-10 10:01:17'),(9,'1683684077941',9,3,'申请理由9','2023-05-10 10:01:17',2,'同意','2023-05-10 10:01:17','2023-05-10 10:01:17'),(10,'1683684077880',10,2,'申请理由10','2023-05-10 10:01:17',2,'同意','2023-05-10 10:01:17','2023-05-10 10:01:17'),(11,'1683684077926',11,3,'申请理由11','2023-05-10 10:01:17',2,'同意','2023-05-10 10:01:17','2023-05-10 10:01:17'),(12,'1683684077857',12,1,'申请理由12','2023-05-10 10:01:17',2,'同意','2023-05-10 10:01:17','2023-05-10 10:01:17'),(13,'1683684077874',13,2,'申请理由13','2023-05-10 10:01:17',2,'同意','2023-05-10 10:01:17','2023-05-10 10:01:17'),(14,'1683684077877',14,1,'申请理由14','2023-05-10 10:01:17',2,'同意','2023-05-10 10:01:17','2023-05-10 10:01:17'),(19,'1683687316716',11,1,'ghdsgs孤独颂歌','2023-05-10 10:55:19',2,'广东省归属感','2023-05-10 11:05:24','2023-05-10 10:55:19'),(20,'1683696616006',14,4,'孤独颂歌','2023-05-10 13:30:18',2,'归属感第三个','2023-05-10 13:50:51','2023-05-10 13:30:18'),(21,'1683696636979',8,4,'过得好点发货','2023-05-10 13:30:39',2,'郭德纲的三个','2023-05-10 13:32:29','2023-05-10 13:30:39');

/*Table structure for table `jiaofei` */

DROP TABLE IF EXISTS `jiaofei`;

CREATE TABLE `jiaofei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `susheguanliyuan_id` int(11) DEFAULT NULL COMMENT '宿舍管理员',
  `jiaofei_uuid_number` varchar(200) DEFAULT NULL COMMENT '缴费编号',
  `jiaofei_name` varchar(200) DEFAULT NULL COMMENT '缴费标题  Search111 ',
  `jiaofei_photo` varchar(200) DEFAULT NULL COMMENT '缴费附件',
  `jiaofei_money` decimal(10,2) DEFAULT NULL COMMENT '缴费金额 ',
  `jiaofei_content` longtext COMMENT '缴费缘由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '通知时间',
  `jiaofei_types` int(11) DEFAULT NULL COMMENT '缴费状态 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='缴费';

/*Data for the table `jiaofei` */

insert  into `jiaofei`(`id`,`yonghu_id`,`susheguanliyuan_id`,`jiaofei_uuid_number`,`jiaofei_name`,`jiaofei_photo`,`jiaofei_money`,`jiaofei_content`,`insert_time`,`jiaofei_types`,`create_time`) values (1,3,3,'1683684077932','缴费标题1','upload/jiaofei1.jpg','986.31','缴费缘由1','2023-05-10 10:01:17',2,'2023-05-10 10:01:17'),(2,2,2,'1683684077918','缴费标题2','upload/jiaofei2.jpg','245.70','缴费缘由2','2023-05-10 10:01:17',2,'2023-05-10 10:01:17'),(3,2,2,'1683684077947','缴费标题3','upload/jiaofei3.jpg','46.56','缴费缘由3','2023-05-10 10:01:17',2,'2023-05-10 10:01:17'),(4,3,1,'1683684077908','缴费标题4','upload/jiaofei4.jpg','79.80','缴费缘由4','2023-05-10 10:01:17',2,'2023-05-10 10:01:17'),(5,3,1,'1683684077896','缴费标题5','upload/jiaofei5.jpg','620.14','缴费缘由5','2023-05-10 10:01:17',1,'2023-05-10 10:01:17'),(6,2,3,'1683684077941','缴费标题6','upload/jiaofei6.jpg','785.87','缴费缘由6','2023-05-10 10:01:17',1,'2023-05-10 10:01:17'),(7,2,3,'1683684077954','缴费标题7','upload/jiaofei7.jpg','593.25','缴费缘由7','2023-05-10 10:01:17',1,'2023-05-10 10:01:17'),(8,2,1,'1683684077936','缴费标题8','upload/jiaofei8.jpg','299.73','缴费缘由8','2023-05-10 10:01:17',2,'2023-05-10 10:01:17'),(9,3,3,'1683684077879','缴费标题9','upload/jiaofei9.jpg','363.10','缴费缘由9','2023-05-10 10:01:17',1,'2023-05-10 10:01:17'),(10,2,3,'1683684077923','缴费标题10','upload/jiaofei10.jpg','5.59','缴费缘由10','2023-05-10 10:01:17',2,'2023-05-10 10:01:17'),(11,2,2,'1683684077941','缴费标题11','upload/jiaofei11.jpg','421.97','缴费缘由11','2023-05-10 10:01:17',2,'2023-05-10 10:01:17'),(12,1,1,'1683684077878','缴费标题12','upload/jiaofei12.jpg','372.36','缴费缘由12','2023-05-10 10:01:17',2,'2023-05-10 10:01:17'),(13,3,1,'1683684077912','缴费标题13','upload/jiaofei13.jpg','468.92','缴费缘由13','2023-05-10 10:01:17',1,'2023-05-10 10:01:17'),(14,3,1,'1683684077947','缴费标题14','upload/jiaofei14.jpg','319.93','缴费缘由14','2023-05-10 10:01:17',2,'2023-05-10 10:01:17'),(15,4,1,'1683696836795','加肥11','/upload/1683696926551.jpg','999.00','<p>挂号第三个第三个是</p>','2023-05-10 13:34:15',2,'2023-05-10 13:34:15'),(16,4,1,'1683698021679','缴费1111','/upload/1683698037607.jpg','998.00','<p>合肥师范是的话方式</p>','2023-05-10 13:54:04',1,'2023-05-10 13:54:04');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `liuyan_uuid_number` varchar(200) DEFAULT NULL COMMENT '留言编号',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `liuyan_types` int(11) DEFAULT NULL COMMENT '留言类型 Search111',
  `liuyan_content` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `liuyan_huifu_content` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='留言';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_uuid_number`,`liuyan_name`,`liuyan_file`,`liuyan_types`,`liuyan_content`,`insert_time`,`liuyan_huifu_content`,`update_time`,`create_time`) values (1,1,'1683684077868','留言标题1','upload/file.rar',1,'留言内容1','2023-05-10 10:01:17','回复内容1','2023-05-10 10:01:17','2023-05-10 10:01:17'),(2,1,'1683684077909','留言标题2','upload/file.rar',2,'留言内容2','2023-05-10 10:01:17','回复内容2','2023-05-10 10:01:17','2023-05-10 10:01:17'),(3,2,'1683684077887','留言标题3','upload/file.rar',1,'留言内容3','2023-05-10 10:01:17','回复内容3','2023-05-10 10:01:17','2023-05-10 10:01:17'),(4,3,'1683684077931','留言标题4','upload/file.rar',2,'留言内容4','2023-05-10 10:01:17','回复内容4','2023-05-10 10:01:17','2023-05-10 10:01:17'),(5,3,'1683684077869','留言标题5','upload/file.rar',2,'留言内容5','2023-05-10 10:01:17','回复内容5','2023-05-10 10:01:17','2023-05-10 10:01:17'),(6,2,'1683684077951','留言标题6','upload/file.rar',1,'留言内容6','2023-05-10 10:01:17','回复内容6','2023-05-10 10:01:17','2023-05-10 10:01:17'),(7,3,'1683684077957','留言标题7','upload/file.rar',3,'留言内容7','2023-05-10 10:01:17','回复内容7','2023-05-10 10:01:17','2023-05-10 10:01:17'),(8,2,'1683684077965','留言标题8','upload/file.rar',3,'留言内容8','2023-05-10 10:01:17','回复内容8','2023-05-10 10:01:17','2023-05-10 10:01:17'),(9,3,'1683684077871','留言标题9','upload/file.rar',2,'留言内容9','2023-05-10 10:01:17','回复内容9','2023-05-10 10:01:17','2023-05-10 10:01:17'),(10,3,'1683684077896','留言标题10','upload/file.rar',3,'留言内容10','2023-05-10 10:01:17','回复内容10','2023-05-10 10:01:17','2023-05-10 10:01:17'),(11,2,'1683684077866','留言标题11','upload/file.rar',1,'留言内容11','2023-05-10 10:01:17','回复内容11','2023-05-10 10:01:17','2023-05-10 10:01:17'),(12,2,'1683684077875','留言标题12','upload/file.rar',1,'留言内容12','2023-05-10 10:01:17','回复内容12','2023-05-10 10:01:17','2023-05-10 10:01:17'),(13,1,'1683684077939','留言标题13','upload/file.rar',3,'留言内容13','2023-05-10 10:01:17','回复内容13','2023-05-10 10:01:17','2023-05-10 10:01:17'),(14,3,'1683684077929','留言标题14','upload/file.rar',1,'留言内容14','2023-05-10 10:01:17','<p>回复内容14广东省归属感</p>','2023-05-10 13:22:12','2023-05-10 10:01:17'),(16,4,'1683697134895','留言222','upload/1683697145965.doc',3,'广东省归属感','2023-05-10 13:39:09','<p>固定死单双杠事故</p>','2023-05-10 13:54:20','2023-05-10 13:39:09');

/*Table structure for table `susheguanliyuan` */

DROP TABLE IF EXISTS `susheguanliyuan`;

CREATE TABLE `susheguanliyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `susheguanliyuan_uuid_number` varchar(200) DEFAULT NULL COMMENT '工号 Search111 ',
  `susheguanliyuan_name` varchar(200) DEFAULT NULL COMMENT '宿舍管理员姓名 Search111 ',
  `susheguanliyuan_phone` varchar(200) DEFAULT NULL COMMENT '宿舍管理员手机号',
  `susheguanliyuan_id_number` varchar(200) DEFAULT NULL COMMENT '宿舍管理员身份证号',
  `susheguanliyuan_photo` varchar(200) DEFAULT NULL COMMENT '宿舍管理员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `susheguanliyuan_email` varchar(200) DEFAULT NULL COMMENT '宿舍管理员邮箱',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='宿舍管理员';

/*Data for the table `susheguanliyuan` */

insert  into `susheguanliyuan`(`id`,`username`,`password`,`susheguanliyuan_uuid_number`,`susheguanliyuan_name`,`susheguanliyuan_phone`,`susheguanliyuan_id_number`,`susheguanliyuan_photo`,`sex_types`,`susheguanliyuan_email`,`jinyong_types`,`create_time`) values (1,'a1','123456','1683684077902','宿舍管理员姓名1','17703786901','410224199010102001','upload/susheguanliyuan1.jpg',1,'1@qq.com',1,'2023-05-10 10:01:17'),(2,'a2','123456','1683684077869','宿舍管理员姓名2','17703786902','410224199010102002','upload/susheguanliyuan2.jpg',2,'2@qq.com',1,'2023-05-10 10:01:17'),(3,'a3','123456','1683684077945','宿舍管理员姓名3','17703786903','410224199010102003','upload/susheguanliyuan3.jpg',1,'3@qq.com',1,'2023-05-10 10:01:17');

/*Table structure for table `tiaosushenqing` */

DROP TABLE IF EXISTS `tiaosushenqing`;

CREATE TABLE `tiaosushenqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '公寓',
  `tiaosushenqing_uuid_number` varchar(200) DEFAULT NULL COMMENT '调宿申请编号',
  `tiaosushenqing_name` varchar(200) DEFAULT NULL COMMENT '申请标题  Search111 ',
  `tiaosushenqing_file` varchar(200) DEFAULT NULL COMMENT '申请附件',
  `tiaosushenqing_types` int(11) DEFAULT NULL COMMENT '调宿申请类型 Search111',
  `tiaosushenqing_yuan_name` varchar(200) DEFAULT NULL COMMENT '原宿舍名称',
  `tiaosushenqing_yuan_address` varchar(200) DEFAULT NULL COMMENT '原宿舍位置',
  `tiaosushenqing_content` longtext COMMENT '申请缘由 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `tiaosushenqing_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111',
  `tiaosushenqing_yesno_text` longtext COMMENT '审核意见',
  `tiaosushenqing_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='调宿申请';

/*Data for the table `tiaosushenqing` */

insert  into `tiaosushenqing`(`id`,`yonghu_id`,`fangwu_id`,`tiaosushenqing_uuid_number`,`tiaosushenqing_name`,`tiaosushenqing_file`,`tiaosushenqing_types`,`tiaosushenqing_yuan_name`,`tiaosushenqing_yuan_address`,`tiaosushenqing_content`,`insert_time`,`tiaosushenqing_yesno_types`,`tiaosushenqing_yesno_text`,`tiaosushenqing_shenhe_time`,`create_time`) values (15,1,14,'1683690025704','申请111','upload/1683690043288.doc',4,'房屋名称11','房屋位置11','勾搭勾搭上','2023-05-10 11:40:48',2,'个还打算个第三个十多个','2023-05-10 11:51:07','2023-05-10 11:40:48'),(16,4,13,'1683696758459','标题111','upload/1683696770624.doc',3,'房屋名称8','房屋位置8','还打算个第三个十多个','2023-05-10 13:32:55',1,'',NULL,'2023-05-10 13:32:55');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','学生','68abglh8yqableau9kt7ppo5n28ero3k','2023-05-10 10:07:16','2023-05-10 14:38:40'),(2,1,'admin','users','管理员','v52xzs1edomy7jd7l8lz2g47d3rrgxpy','2023-05-10 10:57:25','2023-05-10 14:57:41'),(3,1,'a1','susheguanliyuan','宿舍管理员','0ttclrt5acu2m610z7kfyp4vbg5q6w6n','2023-05-10 13:20:15','2023-05-10 14:52:22'),(4,4,'a5','yonghu','学生','ska7xudoagecbe82ll05cg881jogeoch','2023-05-10 13:28:17','2023-05-10 14:38:50');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-05-10 10:00:23');

/*Table structure for table `weisheng` */

DROP TABLE IF EXISTS `weisheng`;

CREATE TABLE `weisheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `susheguanliyuan_id` int(11) DEFAULT NULL COMMENT '宿舍管理员',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '公寓',
  `weisheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '卫生编号',
  `weisheng_photo` varchar(200) DEFAULT NULL COMMENT '卫生照片',
  `weisheng_types` int(11) DEFAULT NULL COMMENT '卫生状况 Search111',
  `weisheng_price` int(11) DEFAULT NULL COMMENT '得分',
  `weisheng_content` longtext COMMENT '卫生备注',
  `insert_time` date DEFAULT NULL COMMENT '所属日期',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='卫生';

/*Data for the table `weisheng` */

insert  into `weisheng`(`id`,`susheguanliyuan_id`,`fangwu_id`,`weisheng_uuid_number`,`weisheng_photo`,`weisheng_types`,`weisheng_price`,`weisheng_content`,`insert_time`,`create_time`) values (1,2,1,'1683684077928','upload/weisheng1.jpg',1,338,'卫生备注1','2023-05-10','2023-05-10 10:01:17'),(2,3,2,'1683684077904','upload/weisheng2.jpg',3,309,'卫生备注2','2023-05-10','2023-05-10 10:01:17'),(3,3,3,'1683684077922','upload/weisheng3.jpg',2,442,'卫生备注3','2023-05-10','2023-05-10 10:01:17'),(4,1,4,'1683684077932','upload/weisheng4.jpg',1,246,'卫生备注4','2023-05-10','2023-05-10 10:01:17'),(5,1,5,'1683684077897','upload/weisheng5.jpg',3,201,'卫生备注5','2023-05-10','2023-05-10 10:01:17'),(6,3,6,'1683684077900','upload/weisheng6.jpg',2,375,'卫生备注6','2023-05-10','2023-05-10 10:01:17'),(7,3,7,'1683684077899','upload/weisheng7.jpg',1,284,'卫生备注7','2023-05-10','2023-05-10 10:01:17'),(8,2,8,'1683684077881','upload/weisheng8.jpg',3,452,'卫生备注8','2023-05-10','2023-05-10 10:01:17'),(9,3,9,'1683684077904','upload/weisheng9.jpg',1,364,'卫生备注9','2023-05-10','2023-05-10 10:01:17'),(10,2,10,'1683684077938','upload/weisheng10.jpg',2,162,'卫生备注10','2023-05-10','2023-05-10 10:01:17'),(11,2,11,'1683684077903','upload/weisheng11.jpg',3,294,'卫生备注11','2023-05-10','2023-05-10 10:01:17'),(12,2,12,'1683684077909','upload/weisheng12.jpg',2,380,'卫生备注12','2023-05-10','2023-05-10 10:01:17'),(13,1,13,'1683684077915','upload/weisheng13.jpg',1,253,'卫生备注13','2023-05-10','2023-05-10 10:01:17'),(14,2,14,'1683684077974','upload/weisheng14.jpg',2,77,'卫生备注14','2023-05-10','2023-05-10 10:01:17'),(15,1,5,'1683696262972','/upload/1683696271959.jpg',2,98,'<p>郭德纲法大使馆第三个</p>','2023-05-10','2023-05-10 13:24:37');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '学号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `yonghu_xingge` varchar(200) DEFAULT NULL COMMENT '性格',
  `yonghu_rushuishijian` varchar(200) DEFAULT NULL COMMENT '入睡时间',
  `yonghu_qichuangshijian` varchar(200) DEFAULT NULL COMMENT '起床时间',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '学生邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `xueyuan_types` int(11) DEFAULT NULL COMMENT '学院 Search111 ',
  `zhuanye_types` int(11) DEFAULT NULL COMMENT '专业 Search111 ',
  `jinyong_types` int(11) DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`yonghu_xingge`,`yonghu_rushuishijian`,`yonghu_qichuangshijian`,`sex_types`,`yonghu_email`,`new_money`,`xueyuan_types`,`zhuanye_types`,`jinyong_types`,`create_time`) values (1,'a1','123456','1683684077913','学生姓名1','17703786901','410224199010102001','upload/yonghu1.jpg','性格1','入睡时间1','起床时间1',2,'1@qq.com','464.04',1,2,1,'2023-05-10 10:01:17'),(2,'a2','123456','1683684077959','学生姓名2','17703786902','410224199010102002','upload/yonghu2.jpg','性格2','入睡时间2','起床时间2',1,'2@qq.com','146.30',2,2,1,'2023-05-10 10:01:17'),(3,'a3','123456','1683684077934','学生姓名3','17703786903','410224199010102003','upload/yonghu3.jpg','性格3','入睡时间3','起床时间3',1,'3@qq.com','389.93',2,2,2,'2023-05-10 10:01:17'),(4,'a5','123456','1683696490861','张5','17703786969','444222555519996666','upload/1683696502879.jpg','开朗','晚10点','早8点',1,'5@qq.com','9000.00',2,1,1,'2023-05-10 13:28:11');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
