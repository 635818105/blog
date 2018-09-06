-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add blog',7,'add_blog'),(20,'Can change blog',7,'change_blog'),(21,'Can delete blog',7,'delete_blog'),(22,'Can add category',8,'add_category'),(23,'Can change category',8,'change_category'),(24,'Can delete category',8,'delete_category'),(25,'Can add tag',9,'add_tag'),(26,'Can change tag',9,'change_tag'),(27,'Can delete tag',9,'delete_tag'),(28,'Can add comment',10,'add_comment'),(29,'Can change comment',10,'change_comment'),(30,'Can delete comment',10,'delete_comment'),(31,'Can add message',11,'add_message'),(32,'Can change message',11,'change_message'),(33,'Can delete message',11,'delete_message');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$EQraJfZsbymM$wa0hAf1bzXzFKp+MIRDR76hnNvY31Ukw4RyWT43xcZI=','2018-08-03 08:30:33.017386',1,'admin','','','',1,1,'2018-07-12 10:49:39.202824'),(2,'pbkdf2_sha256$36000$GiACvZzf9tZP$h3wdSjnOVnKlAICvUqHTr3uHsHoaq1+9bkiW+uSg3h0=','2018-09-03 04:45:59.441537',1,'zdl','','','',1,1,'2018-08-03 08:30:20.956265');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blog`
--

DROP TABLE IF EXISTS `blog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `modify_time` datetime(6) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `comments_num` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_category_id_c34d5f94_fk_blog_category_id` (`category_id`),
  CONSTRAINT `blog_blog_category_id_c34d5f94_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog`
--

LOCK TABLES `blog_blog` WRITE;
/*!40000 ALTER TABLE `blog_blog` DISABLE KEYS */;
INSERT INTO `blog_blog` VALUES (5,'建博缘由','<p>本人93年，建立此博客的缘由有两点，一是记录生活，留下一些生活点滴，同时也可以记录自己的进步，二是为了将开发过程中的琐碎问题整理起来，达到学习交流的目的。该博客系统较为简单，希望各位大佬轻轻吐槽。如果对本站有任何建议可以通过联系或者邮箱联系我，本人邮箱：zdliang1109@163.com</p>','2018-08-28 06:33:02.380985','2018-09-05 04:49:50.085917',17,3,1),(6,'Docker Python3.6 Django镜像制作','<p>docker是近两年比较火的应用部署工具，更多公司更愿意用docker容器来部署应用。在本地部署环境很多人都已经驾熟就轻，但是每次换个服务器就要部署一次就很麻烦，所有我就查资料总结了一个简单制作镜像的方式，不用写Dockerfile文件，直接通过导出容器来制作镜像。</p>\n\n<p>本次镜像我以Python3.6 和 Django1.11来做例子进行制作。 </p>\n\n<p>首先我们需要从docker上面拉取Python3.6的基础镜像，这块需要设置一下国内的镜像源否则下载速度很慢。</p>\n\n<p>在docker machine(如果不是machine，可以网上查一下，方法很多，不在赘述)中/etc/docker/下面的daemon.json(如果没有就自己创建文件)中添加如下：</p>\n\n<div class=\"codehilite\"><pre><span></span><span class=\"p\">{</span>\n  <span class=\"s2\">&quot;registry-mirrors&quot;</span><span class=\"p\">:</span> <span class=\"p\">[</span><span class=\"s2\">&quot;https://docker.mirrors.ustc.edu.cn/&quot;</span><span class=\"p\">]</span>\n<span class=\"p\">}</span>\n</pre></div>\n\n<p>重启docker-machine,然后拉取python3.6基础镜像,之后进入此镜像。</p>\n\n<div class=\"codehilite\"><pre><span></span><span class=\"c1\"># 拉取python3.6镜像</span>\n<span class=\"n\">docker</span> <span class=\"n\">pull</span> <span class=\"n\">python</span><span class=\"p\">:</span><span class=\"mf\">3.6</span>\n\n<span class=\"c1\"># 创建容器并进入</span>\n<span class=\"n\">docker</span> <span class=\"n\">run</span> <span class=\"o\">-</span><span class=\"n\">it</span> <span class=\"o\">--</span><span class=\"n\">name</span> <span class=\"n\">mycon</span> <span class=\"n\">IMAGEID</span> <span class=\"o\">/</span><span class=\"nb\">bin</span><span class=\"o\">/</span><span class=\"n\">bash</span>\n</pre></div>\n\n<p>之后就是在Linux中安装一些Django所需要的依赖包</p>\n\n<div class=\"codehilite\"><pre><span></span><span class=\"c1\"># 从已经好了的环境中导出来所需要的依赖包,依赖文件中包含django所需要的模块</span>\n<span class=\"n\">pip</span> <span class=\"n\">freeze</span> <span class=\"o\">&gt;</span> <span class=\"n\">requirements</span><span class=\"o\">.</span><span class=\"n\">txt</span>\n\n<span class=\"c1\"># 导入到此容器中</span>\n<span class=\"n\">pip</span> <span class=\"n\">install</span> <span class=\"n\">requirements</span><span class=\"o\">.</span><span class=\"n\">txt</span>\n</pre></div>\n\n<p>安装完成之后就是一个包含Python3和你所需要的包的容器，导出容器</p>\n\n<div class=\"codehilite\"><pre><span></span><span class=\"n\">docker</span> <span class=\"n\">export</span> <span class=\"n\">CONTAINERID</span> <span class=\"o\">&gt;</span> <span class=\"n\">myenv</span><span class=\"o\">.</span><span class=\"n\">tar</span><span class=\"o\">.</span><span class=\"n\">gz</span>\n</pre></div>\n\n<p>这样一个镜像文件就做好了，如果需要在其他服务器部署项目，直接导入该镜像</p>\n\n<div class=\"codehilite\"><pre><span></span><span class=\"c1\"># 导入镜像如果导入时没有命名，可以使用docker tag 进行重命名</span>\n<span class=\"n\">docker</span> <span class=\"kn\">import</span> <span class=\"nn\">myenv.tar.gz</span> <span class=\"nn\">image_name</span><span class=\"p\">:</span><span class=\"n\">tag_name</span>\n</pre></div>','2018-08-30 08:00:03.659350','2018-09-04 13:05:35.900035',19,4,0),(7,'Go操作Mysql数据库','<p>go 语言操作数据库</p>\n\n<p>近段时间，在倒腾Go语言，也算是入了个门，整理了一下我在学习操作数据库时候的小案例。</p>\n\n<p>golang官方给了database/sql,但是没有给驱动</p>\n\n<p>首先从github上面下载包</p>\n\n<div class=\"codehilite\"><pre><span></span><span class=\"k\">go</span> <span class=\"nx\">get</span> <span class=\"nx\">github</span><span class=\"p\">.</span><span class=\"nx\">com</span><span class=\"o\">/</span><span class=\"k\">go</span><span class=\"o\">-</span><span class=\"nx\">sql</span><span class=\"o\">-</span><span class=\"nx\">driver</span><span class=\"o\">/</span><span class=\"nx\">mysql</span>\n</pre></div>\n\n<p>开始写代码</p>\n\n<div class=\"codehilite\"><pre><span></span><span class=\"kn\">package</span> <span class=\"nx\">main</span>\n\n<span class=\"kn\">import</span> <span class=\"p\">(</span>\n    <span class=\"s\">&quot;database/sql&quot;</span>\n    <span class=\"s\">&quot;fmt&quot;</span>\n     <span class=\"nx\">_</span><span class=\"s\">&quot;github.com/go-sql-driver/mysql&quot;</span>\n    <span class=\"s\">&quot;log&quot;</span>\n<span class=\"p\">)</span>\n\n<span class=\"kd\">func</span> <span class=\"nx\">main</span><span class=\"p\">()</span> <span class=\"p\">{</span>\n\n    <span class=\"c1\">// 连接本地的数据库</span>\n    <span class=\"nx\">db</span><span class=\"p\">,</span> <span class=\"nx\">err</span> <span class=\"o\">:=</span> <span class=\"nx\">sql</span><span class=\"p\">.</span><span class=\"nx\">Open</span><span class=\"p\">(</span><span class=\"s\">&quot;mysql&quot;</span><span class=\"p\">,</span> <span class=\"s\">&quot;username:password@tcp(127.0.0.1:3306)/dbname&quot;</span><span class=\"p\">)</span>\n\n    <span class=\"k\">if</span> <span class=\"nx\">err</span> <span class=\"o\">!=</span> <span class=\"kc\">nil</span><span class=\"p\">{</span>\n            <span class=\"nx\">fmt</span><span class=\"p\">.</span><span class=\"nx\">Println</span><span class=\"p\">(</span><span class=\"nx\">err</span><span class=\"p\">.</span><span class=\"nx\">Error</span><span class=\"p\">())</span>\n        <span class=\"p\">}</span>\n    <span class=\"c1\">// 执行sql语句 Query能够得到数据对象</span>\n    <span class=\"nx\">data</span><span class=\"p\">,</span> <span class=\"nx\">err</span> <span class=\"o\">:=</span> <span class=\"nx\">db</span><span class=\"p\">.</span><span class=\"nx\">Query</span><span class=\"p\">(</span><span class=\"s\">&quot;select title, id from blog_blog where id = ?&quot;</span><span class=\"p\">,</span> <span class=\"mi\">5</span><span class=\"p\">)</span>\n\n    <span class=\"k\">if</span> <span class=\"nx\">err</span> <span class=\"o\">!=</span> <span class=\"kc\">nil</span><span class=\"p\">{</span>\n        <span class=\"nx\">fmt</span><span class=\"p\">.</span><span class=\"nx\">Println</span><span class=\"p\">(</span><span class=\"nx\">err</span><span class=\"p\">.</span><span class=\"nx\">Error</span><span class=\"p\">())</span>\n    <span class=\"p\">}</span>\n\n    <span class=\"c1\">// 拿到数据</span>\n    <span class=\"k\">for</span> <span class=\"nx\">data</span><span class=\"p\">.</span><span class=\"nx\">Next</span><span class=\"p\">()</span> <span class=\"p\">{</span>\n        <span class=\"kd\">var</span> <span class=\"p\">(</span>\n            <span class=\"nx\">title</span> <span class=\"kt\">string</span>\n            <span class=\"nx\">id</span> <span class=\"kt\">int</span>\n        <span class=\"p\">)</span>\n        <span class=\"nx\">err</span> <span class=\"o\">:=</span> <span class=\"nx\">data</span><span class=\"p\">.</span><span class=\"nx\">Scan</span><span class=\"p\">(</span><span class=\"o\">&amp;</span><span class=\"nx\">title</span><span class=\"p\">,</span> <span class=\"o\">&amp;</span><span class=\"nx\">id</span><span class=\"p\">)</span>\n        <span class=\"k\">if</span> <span class=\"nx\">err</span> <span class=\"o\">!=</span> <span class=\"kc\">nil</span><span class=\"p\">{</span>\n            <span class=\"nx\">log</span><span class=\"p\">.</span><span class=\"nx\">Fatal</span><span class=\"p\">(</span><span class=\"nx\">err</span><span class=\"p\">)</span>\n        <span class=\"p\">}</span>\n        <span class=\"nx\">fmt</span><span class=\"p\">.</span><span class=\"nx\">Println</span><span class=\"p\">(</span><span class=\"nx\">title</span><span class=\"p\">,</span> <span class=\"nx\">id</span><span class=\"p\">)</span>\n    <span class=\"p\">}</span>\n<span class=\"p\">}</span>\n</pre></div>\n\n<p>上面是在已经知道数据库的字段的情况下，有选择性的读取数据，在不知道数据库的字段你的情况下，也是可以读取出来的，代码如下：</p>\n\n<div class=\"codehilite\"><pre><span></span><span class=\"kn\">package</span> <span class=\"nx\">main</span>\n\n<span class=\"kn\">import</span> <span class=\"p\">(</span>\n    <span class=\"s\">&quot;database/sql&quot;</span>\n    <span class=\"s\">&quot;fmt&quot;</span>\n     <span class=\"nx\">_</span><span class=\"s\">&quot;github.com/go-sql-driver/mysql&quot;</span>\n     <span class=\"s\">&quot;log&quot;</span>\n<span class=\"p\">)</span>\n\n<span class=\"kd\">func</span> <span class=\"nx\">main</span><span class=\"p\">()</span> <span class=\"p\">{</span>\n\n    <span class=\"nx\">db</span><span class=\"p\">,</span> <span class=\"nx\">err</span> <span class=\"o\">:=</span> <span class=\"nx\">sql</span><span class=\"p\">.</span><span class=\"nx\">Open</span><span class=\"p\">(</span><span class=\"s\">&quot;mysql&quot;</span><span class=\"p\">,</span> <span class=\"s\">&quot;username:root@tcp(127.0.0.1:3306)/dbname&quot;</span><span class=\"p\">)</span>\n    <span class=\"k\">if</span> <span class=\"nx\">err</span> <span class=\"o\">!=</span> <span class=\"kc\">nil</span><span class=\"p\">{</span>\n        <span class=\"nx\">fmt</span><span class=\"p\">.</span><span class=\"nx\">Println</span><span class=\"p\">(</span><span class=\"nx\">err</span><span class=\"p\">.</span><span class=\"nx\">Error</span><span class=\"p\">())</span>\n    <span class=\"p\">}</span>\n    <span class=\"nx\">data</span><span class=\"p\">,</span> <span class=\"nx\">err</span> <span class=\"o\">:=</span> <span class=\"nx\">db</span><span class=\"p\">.</span><span class=\"nx\">Query</span><span class=\"p\">(</span><span class=\"s\">&quot;select * from blog_blog where id = ?&quot;</span><span class=\"p\">,</span> <span class=\"mi\">5</span><span class=\"p\">)</span>\n\n    <span class=\"k\">if</span> <span class=\"nx\">err</span> <span class=\"o\">!=</span> <span class=\"kc\">nil</span><span class=\"p\">{</span>\n        <span class=\"nx\">fmt</span><span class=\"p\">.</span><span class=\"nx\">Println</span><span class=\"p\">(</span><span class=\"nx\">err</span><span class=\"p\">.</span><span class=\"nx\">Error</span><span class=\"p\">())</span>\n    <span class=\"p\">}</span>\n\n    <span class=\"nx\">cols</span><span class=\"p\">,</span> <span class=\"nx\">_</span> <span class=\"o\">:=</span> <span class=\"nx\">data</span><span class=\"p\">.</span><span class=\"nx\">Columns</span><span class=\"p\">()</span>\n    <span class=\"nx\">colnums</span> <span class=\"o\">:=</span> <span class=\"nb\">make</span><span class=\"p\">([]</span><span class=\"o\">*</span><span class=\"kt\">string</span><span class=\"p\">,</span> <span class=\"mi\">0</span><span class=\"p\">)</span>\n\n    <span class=\"k\">for</span> <span class=\"nx\">i</span> <span class=\"o\">:=</span> <span class=\"k\">range</span> <span class=\"nx\">cols</span><span class=\"p\">{</span>\n        <span class=\"nx\">col</span> <span class=\"o\">:=</span> <span class=\"nx\">cols</span><span class=\"p\">[</span><span class=\"nx\">i</span><span class=\"p\">]</span>\n        <span class=\"nx\">colp</span> <span class=\"o\">:=</span> <span class=\"o\">&amp;</span><span class=\"nx\">col</span>\n        <span class=\"nx\">colnums</span> <span class=\"p\">=</span> <span class=\"nb\">append</span><span class=\"p\">(</span><span class=\"nx\">colnums</span><span class=\"p\">,</span> <span class=\"nx\">colp</span><span class=\"p\">)</span>\n    <span class=\"p\">}</span>\n\n    <span class=\"nx\">b</span> <span class=\"o\">:=</span> <span class=\"nb\">make</span><span class=\"p\">([]</span><span class=\"kd\">interface</span><span class=\"p\">{},</span> <span class=\"nb\">len</span><span class=\"p\">(</span><span class=\"nx\">colnums</span><span class=\"p\">))</span>\n    <span class=\"k\">for</span> <span class=\"nx\">i</span> <span class=\"o\">:=</span> <span class=\"k\">range</span> <span class=\"nx\">colnums</span> <span class=\"p\">{</span>\n        <span class=\"nx\">b</span><span class=\"p\">[</span><span class=\"nx\">i</span><span class=\"p\">]</span> <span class=\"p\">=</span> <span class=\"nx\">colnums</span><span class=\"p\">[</span><span class=\"nx\">i</span><span class=\"p\">]</span>\n    <span class=\"p\">}</span>\n\n    <span class=\"k\">for</span> <span class=\"nx\">data</span><span class=\"p\">.</span><span class=\"nx\">Next</span><span class=\"p\">()</span> <span class=\"p\">{</span>\n        <span class=\"nx\">err</span> <span class=\"o\">:=</span> <span class=\"nx\">data</span><span class=\"p\">.</span><span class=\"nx\">Scan</span><span class=\"p\">(</span><span class=\"nx\">b</span><span class=\"o\">...</span><span class=\"p\">)</span>\n        <span class=\"k\">if</span> <span class=\"nx\">err</span> <span class=\"o\">!=</span> <span class=\"kc\">nil</span><span class=\"p\">{</span>\n            <span class=\"nx\">log</span><span class=\"p\">.</span><span class=\"nx\">Fatal</span><span class=\"p\">(</span><span class=\"nx\">err</span><span class=\"p\">)</span>\n        <span class=\"p\">}</span>\n    <span class=\"p\">}</span>\n    <span class=\"k\">for</span> <span class=\"nx\">_</span><span class=\"p\">,</span> <span class=\"nx\">elem</span> <span class=\"o\">:=</span> <span class=\"k\">range</span> <span class=\"nx\">colnums</span><span class=\"p\">{</span>\n        <span class=\"nx\">fmt</span><span class=\"p\">.</span><span class=\"nx\">Println</span><span class=\"p\">(</span><span class=\"o\">*</span><span class=\"nx\">elem</span><span class=\"p\">)</span>\n    <span class=\"p\">}</span>\n<span class=\"p\">}</span>\n</pre></div>','2018-09-03 09:25:13.396348','2018-09-04 13:00:15.173490',9,4,0);
/*!40000 ALTER TABLE `blog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_blog_tag`
--

DROP TABLE IF EXISTS `blog_blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_blog_tag_blog_id_tag_id_574faa6a_uniq` (`blog_id`,`tag_id`),
  KEY `blog_blog_tag_tag_id_6a5a1786_fk_blog_tag_id` (`tag_id`),
  CONSTRAINT `blog_blog_tag_blog_id_cc8a96d9_fk_blog_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `blog_blog` (`id`),
  CONSTRAINT `blog_blog_tag_tag_id_6a5a1786_fk_blog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `blog_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_blog_tag`
--

LOCK TABLES `blog_blog_tag` WRITE;
/*!40000 ALTER TABLE `blog_blog_tag` DISABLE KEYS */;
INSERT INTO `blog_blog_tag` VALUES (7,5,5),(8,6,6),(9,6,7),(10,7,8),(11,7,9);
/*!40000 ALTER TABLE `blog_blog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (3,'生活'),(4,'技术交流');
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_message`
--

DROP TABLE IF EXISTS `blog_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `create_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_message`
--

LOCK TABLES `blog_message` WRITE;
/*!40000 ALTER TABLE `blog_message` DISABLE KEYS */;
INSERT INTO `blog_message` VALUES (1,'zdd','asdf ','635818105@qq.com','asdfa ','2018-08-30 06:16:00.889851');
/*!40000 ALTER TABLE `blog_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tag`
--

DROP TABLE IF EXISTS `blog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tag`
--

LOCK TABLES `blog_tag` WRITE;
/*!40000 ALTER TABLE `blog_tag` DISABLE KEYS */;
INSERT INTO `blog_tag` VALUES (5,'建博说明'),(6,'docker'),(7,'Python'),(8,'Go'),(9,'Mysql');
/*!40000 ALTER TABLE `blog_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_comment`
--

DROP TABLE IF EXISTS `comments_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `url` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `blog_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_comment_blog_id_7b898599_fk_blog_blog_id` (`blog_id`),
  CONSTRAINT `comments_comment_blog_id_7b898599_fk_blog_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `blog_blog` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_comment`
--

LOCK TABLES `comments_comment` WRITE;
/*!40000 ALTER TABLE `comments_comment` DISABLE KEYS */;
INSERT INTO `comments_comment` VALUES (3,'不闹','635818105@qq.com','','支持支持','2018-08-28 06:52:14.881702',5);
/*!40000 ALTER TABLE `comments_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-07-13 08:10:34.433650','1','技术',1,'[{\"added\": {}}]',8,1),(2,'2018-07-13 08:10:51.123325','1','人工智能',1,'[{\"added\": {}}]',9,1),(3,'2018-07-13 08:11:02.211404','2','Python',1,'[{\"added\": {}}]',9,1),(4,'2018-07-13 08:11:11.352687','1','新的诞生',1,'[{\"added\": {}}]',7,1),(5,'2018-07-13 08:17:13.083913','1','新的诞生',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(6,'2018-07-13 08:20:59.708959','1','新的诞生',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(7,'2018-07-18 07:56:36.398112','1','测试1',2,'[{\"changed\": {\"fields\": [\"title\", \"content\", \"click_nums\"]}}]',7,1),(8,'2018-07-18 07:57:01.348386','2','个人生活',1,'[{\"added\": {}}]',8,1),(9,'2018-07-18 07:57:09.979237','3','个人生活',1,'[{\"added\": {}}]',9,1),(10,'2018-07-18 07:57:13.544259','2','测试2',1,'[{\"added\": {}}]',7,1),(11,'2018-07-18 07:57:56.336931','3','测试3',1,'[{\"added\": {}}]',7,1),(12,'2018-08-03 08:31:59.832660','3','测试3',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(13,'2018-08-03 08:38:30.163097','3','测试3',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(14,'2018-08-03 08:43:45.409299','3','测试3',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(15,'2018-08-03 09:02:30.444796','3','测试3',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(16,'2018-08-03 09:08:03.518063','3','测试3',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(17,'2018-08-03 09:12:28.060304','4','个人生活',1,'[{\"added\": {}}]',9,1),(18,'2018-08-03 09:12:41.660315','4','test4',1,'[{\"added\": {}}]',7,1),(19,'2018-08-03 09:14:29.170488','4','test4',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(20,'2018-08-07 07:44:36.052242','4','test4',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,2),(21,'2018-08-07 07:47:29.786057','4','test4',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,2),(22,'2018-08-07 07:49:25.451603','4','test4',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,2),(23,'2018-08-07 10:16:12.124848','5','阿斯顿发',3,'',10,2),(24,'2018-08-07 10:16:12.200848','4','阿斯顿发',3,'',10,2),(25,'2018-08-07 10:16:12.232845','3','阿斯顿发',3,'',10,2),(26,'2018-08-07 10:16:12.299845','2','测试',3,'',10,2),(27,'2018-08-07 10:16:12.357845','1','测试',3,'',10,2),(28,'2018-08-28 06:13:48.346781','2','阿斯顿发斯蒂芬',3,'',10,2),(29,'2018-08-28 06:13:48.455778','1','这篇文章有个地方不太明白  test',3,'',10,2),(30,'2018-08-28 06:15:13.784750','1','生活',3,'',11,2),(31,'2018-08-28 06:15:48.555551','4','test4',3,'',7,2),(32,'2018-08-28 06:15:58.423769','3','测试3',3,'',7,2),(33,'2018-08-28 06:15:58.481768','2','测试2',3,'',7,2),(34,'2018-08-28 06:15:58.514768','1','测试1',3,'',7,2),(35,'2018-08-28 06:16:09.571542','2','个人生活',3,'',8,2),(36,'2018-08-28 06:16:09.621491','1','技术',3,'',8,2),(37,'2018-08-28 06:16:27.725456','4','个人生活',3,'',9,2),(38,'2018-08-28 06:16:27.754455','3','个人生活',3,'',9,2),(39,'2018-08-28 06:16:27.787455','2','Python',3,'',9,2),(40,'2018-08-28 06:16:27.812455','1','人工智能',3,'',9,2),(41,'2018-08-28 06:32:30.341146','3','生活',1,'[{\"added\": {}}]',8,2),(42,'2018-08-28 06:32:56.952243','5','建博说明',1,'[{\"added\": {}}]',9,2),(43,'2018-08-28 06:33:02.403985','5','建博缘由',1,'[{\"added\": {}}]',7,2),(44,'2018-08-30 07:59:44.435006','4','技术交流',1,'[{\"added\": {}}]',8,2),(45,'2018-08-30 07:59:52.415110','6','docker',1,'[{\"added\": {}}]',9,2),(46,'2018-08-30 07:59:59.791502','7','Python',1,'[{\"added\": {}}]',9,2),(47,'2018-08-30 08:00:03.725749','6','Docker Python3.6 Django镜像制作',1,'[{\"added\": {}}]',7,2),(48,'2018-08-30 08:04:08.386013','6','Docker Python3.6 Django镜像制作',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,2),(49,'2018-08-30 08:13:44.105900','6','Docker Python3.6 Django镜像制作',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,2),(50,'2018-09-03 04:59:11.244573','6','Docker Python3.6 Django镜像制作',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,2),(51,'2018-09-03 09:24:43.107728','8','Go',1,'[{\"added\": {}}]',9,2),(52,'2018-09-03 09:24:52.627607','9','Mysql',1,'[{\"added\": {}}]',9,2),(53,'2018-09-03 09:25:13.402346','7','Go操作Mysql数据库',1,'[{\"added\": {}}]',7,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'blog','blog'),(8,'blog','category'),(11,'blog','message'),(9,'blog','tag'),(10,'comments','comment'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-07-12 10:29:31.651489'),(2,'auth','0001_initial','2018-07-12 10:29:40.637435'),(3,'admin','0001_initial','2018-07-12 10:29:42.308262'),(4,'admin','0002_logentry_remove_auto_add','2018-07-12 10:29:42.371741'),(5,'contenttypes','0002_remove_content_type_name','2018-07-12 10:29:43.314077'),(6,'auth','0002_alter_permission_name_max_length','2018-07-12 10:29:44.041585'),(7,'auth','0003_alter_user_email_max_length','2018-07-12 10:29:44.843309'),(8,'auth','0004_alter_user_username_opts','2018-07-12 10:29:44.883350'),(9,'auth','0005_alter_user_last_login_null','2018-07-12 10:29:45.528843'),(10,'auth','0006_require_contenttypes_0002','2018-07-12 10:29:45.559098'),(11,'auth','0007_alter_validators_add_error_messages','2018-07-12 10:29:45.601088'),(12,'auth','0008_alter_user_username_max_length','2018-07-12 10:29:46.260301'),(13,'blog','0001_initial','2018-07-12 10:29:51.753012'),(14,'sessions','0001_initial','2018-07-12 10:29:52.322318'),(15,'blog','0002_blog_comments_num','2018-07-13 08:05:47.000405'),(16,'comments','0001_initial','2018-08-07 08:50:31.380920'),(17,'comments','0002_auto_20180807_1736','2018-08-07 09:36:30.109668'),(18,'blog','0003_message','2018-08-27 10:46:47.077481');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('9vmx3oamqw1oh4ub4pgjhjouc2ak2dyz','NTczNWE5ZjIyNTI5YmVlMmFjMmY4NzFmZTUzMTFlYjc5Yjg1OTg2Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNTEwYmU2NzhjNDA4MGQ0N2RkOTgxMjEwNGUyN2MwZGQyMzAyNzk4In0=','2018-08-17 08:30:33.058396'),('b414jta6f2augs9lract1w6f7czr7tl9','NzIyYWRiNDJiNmQ5Y2NjOGIxOGE1YmFhYTEyNmRiMzQ5M2I0MzEyODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NTllNThjMzA1ZDQ4Nzc5YTMxYzVlYmFkYTkyYTg5ZmI0MTJhY2YyIn0=','2018-09-11 06:13:33.928865'),('b9u2xzf1fxxb0luk12qqjwc9jg3qc7mq','NTczNWE5ZjIyNTI5YmVlMmFjMmY4NzFmZTUzMTFlYjc5Yjg1OTg2Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNTEwYmU2NzhjNDA4MGQ0N2RkOTgxMjEwNGUyN2MwZGQyMzAyNzk4In0=','2018-07-26 10:51:13.715384'),('e2jw3l5s8t7fla79pgvpoelaard6j1ll','NzIyYWRiNDJiNmQ5Y2NjOGIxOGE1YmFhYTEyNmRiMzQ5M2I0MzEyODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NTllNThjMzA1ZDQ4Nzc5YTMxYzVlYmFkYTkyYTg5ZmI0MTJhY2YyIn0=','2018-09-17 04:45:59.467538'),('i8pfxcopzyoylloh6ze0o9f7ir1wcuzq','NzIyYWRiNDJiNmQ5Y2NjOGIxOGE1YmFhYTEyNmRiMzQ5M2I0MzEyODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NTllNThjMzA1ZDQ4Nzc5YTMxYzVlYmFkYTkyYTg5ZmI0MTJhY2YyIn0=','2018-08-21 07:43:42.328970'),('vbzoihw7ijnxu4suv2o135u9o4kbpddi','NzIyYWRiNDJiNmQ5Y2NjOGIxOGE1YmFhYTEyNmRiMzQ5M2I0MzEyODp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NTllNThjMzA1ZDQ4Nzc5YTMxYzVlYmFkYTkyYTg5ZmI0MTJhY2YyIn0=','2018-09-13 06:52:11.096341');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-06 20:11:05
