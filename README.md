# BUFF
Model1设计模式

```sql
# Host: 127.0.0.1  (Version: 5.5.15)
# Date: 2021-03-09 14:43:14
# Generator: MySQL-Front 5.3  (Build 4.269)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "category"
#

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "category"
#

INSERT INTO `category` VALUES (1,'刀'),(2,'手套'),(3,'AWP'),(4,'AK'),(5,'M4');

#
# Structure for table "product"
#

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "product"
#

INSERT INTO `product` VALUES (1,'黑色的丝袜',500),(2,'充气娃娃',2500),(3,'皮鞭',180),(4,'蜡烛',0.2);

#
# Structure for table "property"
#

DROP TABLE IF EXISTS `property`;
CREATE TABLE `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_property_category` (`cid`),
  CONSTRAINT `fk_property_category` FOREIGN KEY (`cid`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

#
# Data for table "property"
#

INSERT INTO `property` VALUES (1,1,'M9刺刀（原版）'),(2,1,'蝴蝶刀'),(3,2,'迈阿密风云'),(4,2,'薄荷'),(5,3,'巨龙传说'),(6,3,'永恒之枪'),(7,4,'皇后'),(8,4,'血腥运动'),(9,4,'X光'),(11,5,'赛博朋克');

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `steamurl` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'root','root','root@qq.com'),(2,'author','author','author@qq.com'),(3,'Eric','Eric','Eric@qq.com'),(4,'Rose','Rose','Rose@qq.com'),(5,'test1','test1','test1@qq.com'),(6,'Test2','Test2','Test2');

#
# Structure for table "propertyvalue"
#

DROP TABLE IF EXISTS `propertyvalue`;
CREATE TABLE `propertyvalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `skinid` int(11) DEFAULT NULL,
  `skinabrase` float DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_propertyvalue_property` (`cid`),
  KEY `fk_propertyvalue_user` (`uid`),
  CONSTRAINT `fk_propertyvalue_property` FOREIGN KEY (`cid`) REFERENCES `property` (`id`),
  CONSTRAINT `fk_propertyvalue_user` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

#
# Data for table "propertyvalue"
#

INSERT INTO `propertyvalue` VALUES (3,8,4,667,0.12555,6666),(8,2,3,666,0.0888,90),(9,2,3,11,0.21,100),(12,1,3,11000,0.0888,110000),(16,11,3,666,0.00666,888),(17,11,5,333,0.333,333),(18,5,3,111,0.888,333),(19,2,3,11000,0.0888,666);

#
# Structure for table "orderitem"
#

DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_propertyvalue` (`cid`),
  KEY `fk_order_user` (`uid`),
  CONSTRAINT `fk_order_propertyvalue` FOREIGN KEY (`cid`) REFERENCES `propertyvalue` (`id`),
  CONSTRAINT `fk_order_user` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "orderitem"
#


#
# Structure for table "news"
#

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(4000) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_review_user` (`uid`),
  CONSTRAINT `fk_review_user` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "news"
#

INSERT INTO `news` VALUES (1,'这位丹麦老将谈到了mousesports动荡的一年，以及最近在DreamHack冬季大师赛的成绩，备战BLAST Premier所做的准备。\r\nmousesports在今年最后一场比赛中信心满满，此前他们战胜了Heroic，Liquid和Cloud9。在DreamHack冬季大师赛的决赛中以1:3输给了Astralis，拿到了亚军。\r\n这是自4月EPL S11以来，mousesports首次接近夺冠，战队在这一年中度过了一段艰难的时期，最终招入Bymas取代了左手狙神woxic，前者几乎是一位没有比赛经验的天才选手，而后者则拿到了2019年年度选手TOP12。\r\n\r\n在经历了一段艰难时期后，karrigan对战队重返巅峰感到欣慰，他承认战队在前几日对阵Astralis中由于自己缺乏经验导致了比赛失利，尽管如此，当被问及他的队员为何在最后两张地图发挥失常时，他没有指责任何一个队友。\r\n\r\n同时还问及了关于这位30岁的IGL的职业未来，之前有报道称他可能离开mousesports回到FaZe，karrigan的回答显然回避了这个问题，他只是说道会让战队重回巅峰。\r\n\r\n以下是采访原文（该采访发布于BLAST Premier比赛前）：',2,'2020-12-09 00:00:00'),(2,'CSGO圈子中流传着一个传说，传闻有一把原版爪子刀，它的磨损是0.00000000000000。虽然外观与原版一样没什么差别，但这把刀的名字上是没有近战皮肤该有的星号标志。这把刀也被称为“无星爪刀”，是很多收藏家一直在寻找的皮肤。\r\n\r\n\r\n\r\n但它在前些年经过两次转手后落入了一个超级收藏家手里（据说用1400把钥匙换来的），而后他隐藏了所有的资料。这把刀也如人间蒸发一般。直到今日，在外网论坛中，这把刀重现出现在大家的视野里。  \r\n\r\n\r\n\r\n皮肤上的磨损实在让人无法忽视，放眼望去所有CSGO皮肤也没有任何的磨损可以超过它。（磨损后面的0为皮肤模板编号，这个在其他皮肤上也时有出现）。而后面的国旗则显示，现在这把唯一的武器可能在一个中国玩家中的库存中。我试着进入他的steam界面，发现他也设置了私密库存不可查看，但还是通过了检视链接查看到了这把刀的真容。',2,'2020-12-15 00:00:00');

```

