/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.10-log : Database - book
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`book` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `book`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`username`,`password`) values ('兰冬红','1111'),('赖力','2222'),('陈杰','3333'),('王琳鸿','4444'),('马义霞','5555'),('张敏','6666'),('李晓蝶','7777');

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `bookid` int(20) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `bookManPhone` varchar(20) DEFAULT NULL,
  `bookState` int(2) DEFAULT '1',
  `bookMoney` double DEFAULT NULL,
  `bookPlace` varchar(50) DEFAULT NULL,
  `bookcount` int(10) DEFAULT NULL,
  `bookRoute` text,
  `bookIntroduce` varchar(10000) DEFAULT NULL,
  `amount` int(255) DEFAULT NULL,
  `bookflag` int(2) DEFAULT NULL,
  `storeid` int(20) DEFAULT NULL,
  `bookimgurl` varchar(200) DEFAULT NULL,
  `bookclass` varchar(20) DEFAULT NULL,
  `scene` varchar(50) DEFAULT NULL,
  `average` varchar(10) DEFAULT '0',
  `publisher` varchar(50) DEFAULT NULL,
  `pubdate` varchar(50) DEFAULT NULL,
  `tags0` varchar(10) DEFAULT NULL,
  `tags1` varchar(10) DEFAULT NULL,
  `tags2` varchar(10) DEFAULT NULL,
  `isbn10` varchar(20) DEFAULT NULL,
  `isbn13` varchar(20) DEFAULT NULL,
  `bookProvider` varchar(20) DEFAULT NULL,
  `shareCode` varchar(50) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=10020 DEFAULT CHARSET=utf8;

/*Data for the table `book` */

insert  into `book`(`bookid`,`bookname`,`author`,`bookManPhone`,`bookState`,`bookMoney`,`bookPlace`,`bookcount`,`bookRoute`,`bookIntroduce`,`amount`,`bookflag`,`storeid`,`bookimgurl`,`bookclass`,`scene`,`average`,`publisher`,`pubdate`,`tags0`,`tags1`,`tags2`,`isbn10`,`isbn13`,`bookProvider`,`shareCode`,`openid`) values (10000,'Java程序员面试笔试宝典','何昊,薛鹏,叶向阳',NULL,1,NULL,NULL,20,NULL,'《Java程序员面试笔试宝典》引入了一批来自于名牌高校、就职于明星企业的职场达人的真实求职案例，通过他们的求职经验与教训，抛砖引玉，将整个求职过程生动形象地展示在读者面前，进而对求职者起到一定的指引作用。同时，为了更具说服力，书中特邀多位IT名企面试官现身说法，以独到的视角对面试过程中求职者存在的各类问题进行了深度剖析。为了能够让读者对即将投身的工作有一份更加清楚的认识，能够更加有针对性地进行求职准备，《Java程序员面试笔试宝典》对各种类型的IT企业的招聘环节进行了庖丁解牛式的分析。不仅如此，书中还特别针对当前各大IT企业面试笔试中常见的问题以及注意事项，进行了深层次的分析。技术性知识的考核是程序员求职中最重要的内容，鉴于此，《Java程序员面试笔试宝典》除了对传统的计算机相关知识（Java语言基础知识、Web基础知识、数据结构与算法、操作系统、计算机网络与通信、数据库、设计模式等）以及面试笔试真题进行分析与解答外，还根据当前计算机技术的发展潮流，对面试笔试中常见的海量数据处理进行了详细地分析。\n《Java程序员面试笔试宝典》是一本计算机相关专业毕业生面试笔试的求职用书，同时也适合期望在计算机软硬件行业大显身手的计算机爱好者阅读。',81,NULL,1,'https://img1.doubanio.com/mpic/s28043448.jpg',NULL,'222','6.8','机械工业出版社','2014-9-1','面试','程序员面试笔试宝典','程序员','7111477464','9787111477464',NULL,NULL,NULL),(10001,'Java就业培训教程','张孝祥',NULL,1,NULL,NULL,3,NULL,'《Java 就业培训教程》全书共分11章。第1章详细地讲解了Java开发环境的搭建、反编译工具的使用、JDK文档资料的查阅以及Java程序的编译和运行过程。第2章系统地讲解了Java的一些常用语法，在讲解语法的过程中，作者把常见问题进行了正反对比，分析了问题产生的根源，旨在加深印象。在第3章和第4章中，透彻系统地讲解了面向对象的思想和应用，用通俗形象的语言、典型翔实的例子、鲜明的对照比较，阐述了初学者最容易迷惑的一些思想理念。在以后的章节中，作者始终以“启发编程思想，培养编程感觉”为指导，以剖析典型实例、分析源码结构含义、解析常见问题等方式，从高屋建瓴的角度，用通俗易懂的文字，讲解了多线程、常用Java类、Java中的I/O（输入输出）编程、GUI与Applet、网络编程等方面的知识。 作者长期工作在开发与教学的第一线，既考虑了在实际开发中经常遇到的难题，也分析了众多学员在学习中经常困惑的问题。',40,NULL,6,'https://img3.doubanio.com/mpic/s5692531.jpg',NULL,'ddddddddddddddddd','8.5','清华大学出版社','2003-9','Java','张孝祥','编程','7302072957','9787302072959',NULL,NULL,NULL),(10002,'轻量级Java EE企业应用实战（第4版）','李刚',NULL,1,NULL,NULL,6,NULL,'《轻量级Java EE企业应用实战（第4版）：Struts 2+Spring 4+Hibernate整合开发》是《轻量级 Java EE 企业应用实战》的第4 版，第4 版保持了前几版内容全面、深入的特点，主要完成全部知识的升级。\n《轻量级Java EE企业应用实战（第4版）：Struts 2+Spring 4+Hibernate整合开发》介绍了 Java EE 领域的三个开源框架：Struts 2、Spring 和Hibernate。其中Struts 2 升级到2.3.16.3，Spring 升级到4.0.4，Hibernate 升级到4.3.5。《轻量级Java EE企业应用实战（第4版）：Struts 2+Spring 4+Hibernate整合开发》还全面介绍了Servlet 3.1 的新特性，以及Tomcat 8.0 的配置和用法，《轻量级Java EE企业应用实战（第4版）：Struts 2+Spring 4+Hibernate整合开发》的示例也应该在Tomcat 8.0 上运行。\n《轻量级Java EE企业应用实战（第4版）：Struts 2+Spring 4+Hibernate整合开发》重点介绍如何整合 Struts 2.3+Spring 4.0+Hibernate 4.3 进行Java EE 开发，主要包括三部分。第一部分介绍了Java EE 开发的基础知识，以及如何搭建开发环境。第二部分详细讲解了Struts 2.3、Spring 4.0 和Hibernate 4.3 三个框架的用法，介绍三个框架时，以Eclipse IDE 的使用来上手，一步步带领读者深入三个框架的核心。这部分内容是笔者讲授“疯狂Java 实训”的培训讲义，因此是《轻量级Java EE企业应用实战（第4版）：Struts 2+Spring 4+Hibernate整合开发》的重点部分。这部分内容既包含了笔者多年开发经历的领悟，也融入了丰富的授课经验。第三部分示范开发了一个包含7 个表，表之间具有复杂的关联映射、继承映射等关系，且业务也相对复杂的工作流案例，希望让读者理论联系实际，将三个框架真正运用到实际开发中去。该案例采用目前最流行、最规范的Java EE架构，整个应用分为领域对象层、DAO 层、业务逻辑层、MVC 层和视图层，各层之间分层清晰，层与层之间以松耦合的方法组织在一起。该案例既提供了IDE 无关的、基于Ant 管理的项目源码，也提供了基于Eclipse IDE 的项目源码，最大限度地满足读者的需求。\n《轻量级Java EE企业应用实战（第4版）：Struts 2+Spring 4+Hibernate整合开发》不再介绍 Struts 1.x 相关内容，如果读者希望获取《轻量级J2EE 企业应用实战》第1 版中关于Struts 1.x 的知识，请登录http://www.crazyit.org 下载。当读者阅读此书遇到技术难题时，也可登录http://www.crazyit.org 发帖，笔者将会及时予以解答。\n阅读《轻量级Java EE企业应用实战（第4版）：Struts 2+Spring 4+Hibernate整合开发》之前，建议先认真阅读笔者所著的《疯狂 Java 讲义》一书。《轻量级Java EE企业应用实战（第4版）：Struts 2+Spring 4+Hibernate整合开发》适合于有较好的Java 编程基础，或有初步JSP、Servlet 基础的读者，尤其适合于对Struts 2、Spring、Hibernate 了解不够深入，或对Struts 2+Spring+Hibernate 整合开发不太熟悉的开发人员阅读。',56,NULL,5,'https://img3.doubanio.com/mpic/s28026852.jpg',NULL,'jjj','6.8','电子工业出版社','2014-10-1','Java','J2EE','计算机','7121242532','9787121242533',NULL,NULL,NULL),(10003,'Python','Toby Donaldson',NULL,1,NULL,NULL,1,NULL,'Python is a remarkably powerful dynamic programming language used in a wide variety of situations such as Web, database access, desktop GUIs, game and software development, and network programming. Fans of Python use the phrase \"batteries included\" to describe the standard library, which covers everything from asynchronous processing to zip files. The language itself is a flexible powerhouse that can handle practically any application domain. This task-based tutorial on Python is for those new to the language and walks you through the fundamentals. You\'ll learn about arithmetic, strings, and variables; writing programs; flow of control, functions; strings; data structures; input and output; and exception handling. At the end of the book, a special section walks you through a longer, realistic application, tying the concepts of the book together.',60,NULL,1,'https://img3.doubanio.com/mpic/s27175520.jpg',NULL,'pppp','0.0','Peachpit Press','2013-7-15','计算机','python入门','language','0321929551','9780321929556',NULL,NULL,NULL),(10004,'鸟哥的Linux私房菜','鸟哥',NULL,1,NULL,NULL,2,NULL,'本书是最具知名度的Linux入门书《鸟哥的Linux私房菜基础学习篇》的最新版，全面而详细地介绍了Linux操作系统。全书分为5个部分：第一部分着重说明Linux的起源及功能，如何规划和安装Linux主机；第二部分介绍Linux的文件系统、文件、目录与磁盘的管理；第三部分介绍文字模式接口 shell和管理系统的好帮手shell脚本，另外还介绍了文字编辑器vi和vim的使用方法；第四部分介绍了对于系统安全非常重要的Linux账号的管理，以及主机系统与程序的管理，如查看进程、任务分配和作业管理；第五部分介绍了系统管理员(root)的管理事项，如了解系统运行状况、系统服务，针对登录文件进行解析，对系统进行备份以及核心的管理等。\n本书内容丰富全面，基本概念的讲解非常细致，深入浅出。各种功能和命令的介绍，都配以大量的实例操作和详尽的解析。本书是初学者学习Linux不可多得的一本入门好书。',25,NULL,7,'https://img1.doubanio.com/mpic/s4399937.jpg',NULL,'nnn','9.1','人民邮电出版社','2010-6-28','Linux','操作系统','计算机','7115226261','9787115226266',NULL,NULL,NULL),(10005,'C++ Primer 中文版（第 4 版）','Stanley B.Lippman,Josée LaJoie,Barbara E.Moo',NULL,1,NULL,NULL,1,NULL,'本书是久负盛名的C++经典教程，其内容是C++大师Stanley B. Lippman丰富的实践经验和C++标准委员会原负责人Josée Lajoie对C++标准深入理解的完美结合，已经帮助全球无数程序员学会了C++。本版对前一版进行了彻底的修订，内容经过了重新组织，更加入了C++ 先驱Barbara E. Moo在C++教学方面的真知灼见。既显著改善了可读性，又充分体现了C++语言的最新进展和当前的业界最佳实践。书中不但新增大量教学辅助内容，用于强调重要的知识点，提醒常见的错误，推荐优秀的编程实践，给出使用提示，还包含大量来自实战的示例和习题。对C++基本概念和技术全面而且权威的阐述，对现代C++编程风格的强调，使本书成为C++初学者的最佳指南；对于中高级程序员，本书也是不可或缺的参考书。本书的前言阐述了 第4版和前一版的不同之处。',100,NULL,6,'https://img3.doubanio.com/mpic/s1638975.jpg',NULL,'cccc','9.2','人民邮电出版社','2006','C++','编程','计算机','7115145547','9787115145543',NULL,NULL,NULL),(10006,'巨人的陨落','[英] 肯·福莱特',NULL,1,NULL,NULL,3,NULL,'在第一次世界大战的硝烟中，每一个迈向死亡的生命都在热烈地生长——威尔士的矿工少年、刚失恋的美国法律系大学生、穷困潦倒的俄国兄弟、富有英俊的英格兰伯爵，以及痴情的德国特工… 从充满灰尘和危险的煤矿到闪闪发光的皇室宫殿，从代表着权力的走廊到爱恨纠缠的卧室，五个家族迥然不同又纠葛不断的命运逐渐揭晓，波澜壮阔地展现了一个我们自认为了解，但从未如此真切感受过的20世纪。',100,NULL,1,'https://img3.doubanio.com/mpic/s28668834.jpg',NULL,'gg','8.9','江苏凤凰文艺出版社','2016-5-1','历史','小说','外国文学','7539989890','9787539989891',NULL,NULL,NULL),(10007,'认识电影 （全彩插图第12版）','[美] 路易斯·贾内梯',NULL,1,NULL,NULL,7,NULL,'全球畅销40余年，历经12次修订的电影入门书\n著名学者焦雄屏潜心增修校译, 中文世界新版首发！\n精编精校，高度还原版式重排，全彩精装版！\n...................\n※编辑推荐※\n《认识电影》一书诞生于20世纪70年代，历经四十余年的洗礼，已成为百余所世界名 校电影概论、影视制作、电影美学等专业的经典教材和必读书目，并被翻译成多国语言在世界范围内广为流行。书中提供了各种认识电影的角度，帮助读者了解电影是怎样以一种复杂的语言进行表达和传播的；同时，通过剖析大量影片实例，结合众多剧照来解释电影创作过程，使学电影变得更为生动有趣。\n作者路易斯·贾内梯教授不断更新再版、修订内容、添加新近电影剧照及案例，使本书一直与时代趋势同步。此次借着英文第12版修订面世，特别邀请焦雄屏老师更订译文，并随之重编重排，推出全彩精装版，更完美地呈现这本图文并茂的经典教材的全貌，以飨各位读者。\n☆ 自出版以来全球畅销四十余年，历经12次修订，是当今世界发行量、流传度皆高居榜首的电影入门书。在英、德、加、澳、南非等地广受欢迎，并被译成日、韩、希伯来等多种语言。\n☆ 哈佛大学、MIT、纽约大学、北京大学、北京电影学院、台湾大学等众多世界知名院校影视课程指定教材，培生教育集团全球畅销的教材之一。\n☆ 集电影概论和电影赏析于一体。全书搜集超过四百张珍贵剧照，涵盖影史经典之作和近年卖座佳片，第12版特别增加了下列案例：（1）对当下电影类型进行补充，如动画片《料理鼠王》《我在伊朗长大》、CG电影《贝奥武夫》；（2）通过现代喜剧片拓展讨论电影的娱乐属性，如《朱诺》《太坏了》《热带惊雷》；（3）更新科幻片、动作片、歌舞片、政治电影案例，如《科洛弗档案》《变形金刚》《钢铁侠》《理发师托德》《反恐疑云》；（4）探讨新近非美影片，如《潘神的迷宫》《女王》《贫民窟的百万富翁》《满城尽带黄金甲》。\n☆ 提供精准而成熟的电影分析技巧，批露当今最热明星的独家新闻（关于投身社会公益活动的演员如安吉丽娜·朱莉、布拉德·皮特、乔治·克鲁尼），探讨高票房电影的市场策略，展现电影技术前沿动向，反映电影产业发展趋势。\n☆翻译权威可靠，译文流畅优美，著名电影人焦雄屏特别为第12版重新增订译文。\n...................\n※内容简介※\n《认识电影》是电影入门书中的经典之作，问世四十多年来，始终是世界各地影视从业人员和主流专业院校的必备之选，更是电影爱好者不可或缺的手边书。面对电影中复杂的语言系统、构成要素、表意手段，作者划分了现实主义、形式主义两大阵营，用深入浅出、简明扼要的笔触，引出了电影作为艺术、作为工业、作为意识形态等方方面面。\n书中穿插以数百幅精美剧照和精辟说明，如美国的史蒂文·斯皮尔伯格、英国的迈克·李、伊朗的阿巴斯以及中国的李安等著名导演的杰作，组成了一道全球电影人的经验光谱。此次修订的第12版，增加了对动画片、喜剧片、科幻片、歌舞片、CG电影的评述，经过精校重排和全书彩印，呈现出更贴近英文原版的风貌。\n...................\n※名人推荐※\n近二十年来，在任何华人电影人的书架上，总会看到此书的踪影，足见它对电影的制作也发生了一定的影响。\n——焦雄屏　电影监制，台北艺术大学电影研究所教授',50,NULL,5,'https://img1.doubanio.com/mpic/s28946557.jpg',NULL,'rrrr','9.4','北京联合出版公司·后浪出版公司','2016-9','电影','电影理论','艺术','7550270201','9787550270206',NULL,NULL,NULL),(10008,'Java就业培训教程','张孝祥',NULL,1,NULL,NULL,5,NULL,'《Java 就业培训教程》全书共分11章。第1章详细地讲解了Java开发环境的搭建、反编译工具的使用、JDK文档资料的查阅以及Java程序的编译和运行过程。第2章系统地讲解了Java的一些常用语法，在讲解语法的过程中，作者把常见问题进行了正反对比，分析了问题产生的根源，旨在加深印象。在第3章和第4章中，透彻系统地讲解了面向对象的思想和应用，用通俗形象的语言、典型翔实的例子、鲜明的对照比较，阐述了初学者最容易迷惑的一些思想理念。在以后的章节中，作者始终以“启发编程思想，培养编程感觉”为指导，以剖析典型实例、分析源码结构含义、解析常见问题等方式，从高屋建瓴的角度，用通俗易懂的文字，讲解了多线程、常用Java类、Java中的I/O（输入输出）编程、GUI与Applet、网络编程等方面的知识。 作者长期工作在开发与教学的第一线，既考虑了在实际开发中经常遇到的难题，也分析了众多学员在学习中经常困惑的问题。',90,NULL,3,'https://img3.doubanio.com/mpic/s5692531.jpg',NULL,'33333','8.5','清华大学出版社','2003-9','Java','张孝祥','编程','7302072957','9787302072959',NULL,NULL,NULL),(10009,'高等数学（上册）','[\"同济大学数学系\"]',NULL,1,NULL,NULL,8,NULL,'本书是同济大学数学系编《高等数学》的第六版，依据最新的“工科类本科数学基础课程教学基本要求”，为高等院校工科类各专业学生修订而成。\n本次修订时对教材的深广度进行了适度的调整，使学习本课程的学生都能达到合格的要求，并设置部分带*号的内容以适应分层次教学的需要；吸收国内外优秀教材的优点对习题的类型和数量进行了凋整和充实，以帮助学生提高数学素养、培养创新意识、掌握运用数学工具去解决实际问题的能力；对书中内容进一步锤炼和调整，将微分方程作为一元函数微积分的应用移到上册，更有利于学生的学习与掌握。\n本书分上、下两册出版，上册包括函数与极限、导数与微分、微分中值定理与导数的应用、不定积分、定积分及其应用、微分方程等内容，书末还附有二、三阶行列式简介、几种常用的曲、积分表、习题答案与提示。',87,NULL,2,'https://img1.doubanio.com/mpic/s10403728.jpg',NULL,'126','7.8','高等教育出版社','2007-04-01','高等数学','数学','教材','7040205491','9787040205497',NULL,NULL,NULL),(10010,'Java程序员面试笔试宝典','[\"何昊\",\"薛鹏\",\"叶向阳\"]','2247',1,NULL,NULL,NULL,NULL,'《Java程序员面试笔试宝典》引入了一批来自于名牌高校、就职于明星企业的职场达人的真实求职案例，通过他们的求职经验与教训，抛砖引玉，将整个求职过程生动形象地展示在读者面前，进而对求职者起到一定的指引作用。同时，为了更具说服力，书中特邀多位IT名企面试官现身说法，以独到的视角对面试过程中求职者存在的各类问题进行了深度剖析。为了能够让读者对即将投身的工作有一份更加清楚的认识，能够更加有针对性地进行求职准备，《Java程序员面试笔试宝典》对各种类型的IT企业的招聘环节进行了庖丁解牛式的分析。不仅如此，书中还特别针对当前各大IT企业面试笔试中常见的问题以及注意事项，进行了深层次的分析。技术性知识的考核是程序员求职中最重要的内容，鉴于此，《Java程序员面试笔试宝典》除了对传统的计算机相关知识（Java语言基础知识、Web基础知识、数据结构与算法、操作系统、计算机网络与通信、数据库、设计模式等）以及面试笔试真题进行分析与解答外，还根据当前计算机技术的发展潮流，对面试笔试中常见的海量数据处理进行了详细地分析。\n《Java程序员面试笔试宝典》是一本计算机相关专业毕业生面试笔试的求职用书，同时也适合期望在计算机软硬件行业大显身手的计算机爱好者阅读。',60,NULL,4,'https://img1.doubanio.com/mpic/s28043448.jpg',NULL,'2323','7.0','机械工业出版社','2014-9-1','面试','程序员面试笔试宝典','程序员','7111477464','9787111477464','2247','1502376450380','o8ioe0Ut3kOiANGwyw761tnLuqiU'),(10011,'国富论','[\"[英] 亚当·斯密\"]','13637333096',1,NULL,NULL,NULL,NULL,'亚当·斯密并不是经济学说的最早开拓者，他最著名的思想中有许多也并非新颖独特，但是他首次提出了全面系统的经济学说，为该领域的发展打下了良好的基础。因此完全可以说《国富论》是现代政治经济学研究的起点。\n《国富论》远远不是一部通常所认为的学术论文。虽然斯密也劝说放任自由，但他的论证却更多地是反对政府干预和反对垄断；虽然他赞扬贪欲的结果，却又几乎总是鄙视商人的行为和策略。他也不认为商业制度本身是完全值得赞美的。',80,NULL,3,'https://img3.doubanio.com/mpic/s2164670.jpg',NULL,'130','9.0','华夏出版社','2005-1','经济学','国富论','亚当・斯密','7508036085','9787508036083','单旭峰','1502419228133','o8ioe0X8y_s3l0ZLGfqC8MzpcQAw'),(10012,'Java程序员面试笔试宝典','[\"何昊\",\"薛鹏\",\"叶向阳\"]','1122',1,NULL,NULL,10,NULL,'《Java程序员面试笔试宝典》引入了一批来自于名牌高校、就职于明星企业的职场达人的真实求职案例，通过他们的求职经验与教训，抛砖引玉，将整个求职过程生动形象地展示在读者面前，进而对求职者起到一定的指引作用。同时，为了更具说服力，书中特邀多位IT名企面试官现身说法，以独到的视角对面试过程中求职者存在的各类问题进行了深度剖析。为了能够让读者对即将投身的工作有一份更加清楚的认识，能够更加有针对性地进行求职准备，《Java程序员面试笔试宝典》对各种类型的IT企业的招聘环节进行了庖丁解牛式的分析。不仅如此，书中还特别针对当前各大IT企业面试笔试中常见的问题以及注意事项，进行了深层次的分析。技术性知识的考核是程序员求职中最重要的内容，鉴于此，《Java程序员面试笔试宝典》除了对传统的计算机相关知识（Java语言基础知识、Web基础知识、数据结构与算法、操作系统、计算机网络与通信、数据库、设计模式等）以及面试笔试真题进行分析与解答外，还根据当前计算机技术的发展潮流，对面试笔试中常见的海量数据处理进行了详细地分析。\n《Java程序员面试笔试宝典》是一本计算机相关专业毕业生面试笔试的求职用书，同时也适合期望在计算机软硬件行业大显身手的计算机爱好者阅读。',110,NULL,2,'https://img1.doubanio.com/mpic/s28043448.jpg',NULL,'1130','7.0','机械工业出版社','2014-9-1','面试','程序员面试笔试宝典','程序员','7111477464','9787111477464','1122','1502421628956','o8ioe0Ut3kOiANGwyw761tnLuqiU'),(10013,'Java编程思想','[\"[美] Bruce Eckel\"]',NULL,1,NULL,NULL,6,NULL,'本书赢得了全球程序员的广泛赞誉，即使是最晦涩的概念，在Bruce Eckel的文字亲和力和小而直接的编程示例面前也会化解于无形。从Java的基础语法到最高级特性（深入的面向对象概念、多线程、自动项目构建、单元测试和调试等），本书都能逐步指导你轻松掌握。\n从本书获得的各项大奖以及来自世界各地的读者评论中，不难看出这是一本经典之作。本书的作者拥有多年教学经验，对C、C++以及Java语言都有独到、深入的见解，以通俗易懂及小而直接的示例解释了一个个晦涩抽象的概念。本书共22章，包括操作符、控制执行流程、访问权限控制、复用类、多态、接口、通过异常处理错误、字符串、泛型、数组、容器深入研究、Java I/O系统、枚举类型、并发以及图形化用户界面等内容。这些丰富的内容，包含了Java语言基础语法以及高级特性，适合各个层次的Java程序员阅读，同时也是高等院校讲授面向对象程序设计语言以及Java语言的绝佳教材和参考书。',115,NULL,3,'https://img1.doubanio.com/mpic/s1320039.jpg',NULL,'138','9.0','机械工业出版社','2005-9','java','编程','java编程思想','711116220X','9787111162209',NULL,NULL,NULL),(10014,'Java与模式','[\"阎宏 编著\"]',NULL,1,NULL,NULL,NULL,NULL,'《Java与模式》是一本讲解设计原则以及最为常见的设计模式的实用教材，目的是为了工作繁忙的Java系统设计师提供一个快速而准确的设计原则和设计模式的辅导。全书分为55章，第一个章节讲解一个编编程模式，说明此模式的用意、结构，以及这一模式适合于什么样的情况等。每一个章节都附有多个例子和练习题，研习这些例子、完成这些练习题可以帮助读者更好地理解所讲的内容。大多数的章节都是相对独立的，读者可以从任何一章开始读起。为了满足不同程序的读者的需要，书中提供了一些标为“专题”的章节，不阅读这些章节，对阅读书中的标准章节没有影响。',54,NULL,9,'https://img3.doubanio.com/mpic/s1201195.jpg',NULL,'147','7.9','电子工业出版社','2002-10','设计模式','java','Java与模式','7505380001','9787505380004',NULL,NULL,NULL),(10015,'物理学','[\"东南大学　等同、马文蔚　等\"]',NULL,1,NULL,NULL,3,NULL,'本书是在《物理学》(第四版)基础上，参照教育部非物理类专业物理基础课程教学指导分委员会新制订的《理工科非物理类专业大学物理课程教学基本要求(讨论稿)》修订而成的，书中涵盖了基本要求中所有的核心内容，并选取了一定数量的扩展内容，供不同专业选用。在修订过程中，本书保持原书体系合理，深广度适当，分量适中，适应面宽等特点，同时加强了近代物理的内容，增强用现代观点来诠释经典物理，以及近代物理的成就对科学技术的影响。    本书为上、下两册，上册包括力学和电磁学，下册包括振动和波动、光学、分子动理论和热力学基础、相对论、量子物理等。与本书相配套的还有多媒体《物理学(第五版)电子教案》、《物理学原理在工程技术中的应用》(第三版)、《物理学(第五版)习题分析与解答》和《物理学(第五版)学习指南》等。    本书可作为高等学校理工科非物理类专业的教材，也可供文理科有关专业选用和社会读者阅读。',22,NULL,1,'https://img3.doubanio.com/mpic/s26239641.jpg',NULL,'141','7.0','高等教育','2006-3','物理','东南大学','教材','7040182548','9787040182545',NULL,NULL,NULL),(10016,'计算机组成原理','[\"唐朔飞\"]',NULL,1,NULL,NULL,NULL,NULL,'《面向21世纪课程教材•普通高等教育\"十一五\"国家级规划教材:计算机组成原理(第2版)》内容简介：为了紧跟国际上计算机技术的新发展，《面向21世纪课程教材•普通高等教育\"十一五\"国家级规划教材:计算机组成原理(第2版)》对第1版各章节的内容进行了补充和修改，并增加了例题分析，以加深对各知识点的理解和掌握。《面向21世纪课程教材•普通高等教育\"十一五\"国家级规划教材:计算机组成原理(第2版)》通过对一台实际计算机的剖析，使读者更深入地理解总线是如何将计算机各大部件互连成整机的。',77,NULL,8,'https://img3.doubanio.com/mpic/s4411273.jpg',NULL,'128','7.4','高等教育出版社','2008-1','计算机','计算机组成原理','考研','7040223902','9787040223903',NULL,NULL,NULL),(10017,'计算机网络','[\"谢希仁\"]',NULL,1,NULL,NULL,2,NULL,'本书自1989年首次出版以来，于1994年、1999年、2003年、2008年分别出了修订版，2006年8月被纳入普通高等教育“十一五”国家级规划教材，现在正在申报普通高等教育“十二五”国家级规划教材。本次修订版在内容和结构方面都有很大的修改。    全书分为10章，比较全面系统地介绍了计算机网络的发展和原理体系结构、物理层、数据链路层、网络层、运输层、应用层、网络安全、因特网上的音频/视频服务、无线网络和下一代因特网等内容。',88,NULL,9,'https://img3.doubanio.com/mpic/s27389271.jpg',NULL,'139','7.6','电子工业出版社','2013-6-1','计算机网络','计算机','教材','7121201674','9787121201677',NULL,NULL,NULL),(10018,'中国近现代史纲要（2013年修订版）','[\"教材编写课题组\"]',NULL,1,NULL,NULL,18,NULL,'中国的近现代史，是指1840年以来中国的历史。其中从1840年鸦片战争爆发到1949年中华人民共和国成立前夕的历史，是中国的近代史；1949年中华人民共和国成立以来的历史，是中国的现代史。\n“中国近现代史纲要”是全国高等学校本科生必修的思想政治理论课之一。通过本课程的学习，应当达到什么目的呢？主要是要认识近现代中国发展和革命、建设、改革的历史进程及其内在的规律性，了解国史、国情，深刻领会历史和人民是怎样选择了马克思主义，选择了中国共产党，选择了社会主义道路，选择了改革开放。',70,NULL,2,'https://img1.doubanio.com/mpic/s27423288.jpg',NULL,'144','5.2','高等教育出版社','2007-2','教材','教科书','很好','7040377470','9787040377477',NULL,NULL,NULL),(10019,'数据库系统教程','[\"施伯乐\",\"丁宝康\",\"汪卫\"]',NULL,1,NULL,NULL,10,NULL,'《普通高等教育十一五国家级规划教材•数据库系统教程》第1版列为教育部“面向21世纪课程教材”。第2版作了较大的修改和补充，增加了关系逻辑、递归SQL、对象联系图、UML的类图、ODMG标准、ODBC和XML等内容。这次第3版被教育部列为普通高等教育“十一五”国家级规划教材，对内容又作了修订和充实。《普通高等教育十一五国家级规划教材•数据库系统教程》详细介绍数据库系统的基本原理、方法和发展趋势。分为上、下两篇。上篇为基础篇，介绍传统的数据库技术，内容包括：数据库概论、关系模型和关系运算理论、关系数据库语言SQL、关系数据库的规范化设计、数据库设计与ER模型、数据库的存储结构和系统实现技术。下篇为发展篇，介绍数据库技术的发展，内容包括：对象数据库系统、分布式数据库系统、ODBC技术、XML技术和现代信息集成技术。',44,NULL,7,'https://img3.doubanio.com/mpic/s4525416.jpg',NULL,'135','6.2','','2008-6','数据库','教材','计算机科学','7040242249','9787040242249',NULL,NULL,NULL);

/*Table structure for table `bookclub` */

DROP TABLE IF EXISTS `bookclub`;

CREATE TABLE `bookclub` (
  `clubid` int(20) NOT NULL AUTO_INCREMENT,
  `openid` int(20) DEFAULT NULL,
  `activeName` varchar(20) DEFAULT NULL,
  `avtiveTime` varchar(20) DEFAULT NULL,
  `activeText` text,
  `activePlace` varchar(30) DEFAULT NULL,
  `activeState` int(10) DEFAULT NULL,
  PRIMARY KEY (`clubid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `bookclub` */

insert  into `bookclub`(`clubid`,`openid`,`activeName`,`avtiveTime`,`activeText`,`activePlace`,`activeState`) values (1,2,'交流会','1998','4','6',1),(2,7,'郊游12','2000','10','20',1),(3,11,'1234jj','1998','6','8',0),(4,12,'jhjjk','1996','xccdsfdfsd','123',1),(5,1,'吃的啥饭','2013','钓鱼','后山',1),(6,16,'吃的汉堡','1999','烧烤 ','天台',1);

/*Table structure for table `circle` */

DROP TABLE IF EXISTS `circle`;

CREATE TABLE `circle` (
  `circleid` int(10) NOT NULL AUTO_INCREMENT,
  `circleTime` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `circleText` text COLLATE utf8_bin,
  `circleState` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `openid` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`circleid`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_bin CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `circle` */

insert  into `circle`(`circleid`,`circleTime`,`circleText`,`circleState`,`openid`) values (100,'2017-08-01 14:11:17','傻蛋','0','333'),(101,'2017-08-01 14:17:51','傻蛋','0','111'),(102,'2017-08-02 09:31:01','今天是个好天气','0','小邵'),(103,'2017-08-06 17:10:30','','0','');

/*Table structure for table `club` */

DROP TABLE IF EXISTS `club`;

CREATE TABLE `club` (
  `clubid` int(20) NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) DEFAULT NULL,
  `activeName` varchar(20) DEFAULT NULL,
  `avtiveTime` varchar(20) DEFAULT NULL,
  `activeText` varchar(20) DEFAULT NULL,
  `activePlace` varchar(20) DEFAULT NULL,
  `activeState` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`clubid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `club` */

insert  into `club`(`clubid`,`openid`,`activeName`,`avtiveTime`,`activeText`,`activePlace`,`activeState`) values (1,'o8ioe0Ut3kOiANGwyw761tnLuqiU','交流会','2017-08-08','交流','工大西街','1'),(2,'o8ioe0Ut3kOiANGwyw761tnLuqiU','123','123','','','1'),(3,'o8ioe0Ut3kOiANGwyw761tnLuqiU','123123','12312','1231231231231','123','1');

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `commentid` int(20) NOT NULL AUTO_INCREMENT,
  `commentTime` varchar(20) DEFAULT NULL,
  `commentText` text,
  `commentState` int(2) DEFAULT '0',
  `bookid` int(20) DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL,
  `nickName` varchar(20) DEFAULT NULL,
  `avatarUrl` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`commentid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `comment` */

insert  into `comment`(`commentid`,`commentTime`,`commentText`,`commentState`,`bookid`,`openid`,`nickName`,`avatarUrl`) values (1,'2017-8-9   16:56:22','1278425885好看',1,25,'o8ioe0QBBylTUxaOvT_e180rRZwE','*。。。？','https://wx.qlogo.cn/mmopen/vi_32/QNv3mOI06EBNPXzV3YvlPSRTOqpmUSX30XLqGOwhoicib0cibnQfstp6D8gwlYFtAiaiaviaXc9rkrj8pI8C4O1Lub1A/0'),(2,'2017-8-11   15:7:58','',1,68,'o8ioe0dfbxUFvuvuog1fQ2oiv890','rdgztest_RXKDRJ',''),(3,'2017-8-11   16:55:10','好',1,71,'o8ioe0X8y_s3l0ZLGfqC8MzpcQAw','易通科技单旭峰','https://wx.qlogo.cn/mmopen/vi_32/O5aCeeJs8qCBWV8sHPqyAwfP6HdkAq7MvianfckH7FXLj7V3nkyOF8QOhGl7uhLZMx024fCtic6kRjr0iap0jOrGg/0'),(4,'2017-8-11   19:25:33','很不错的书籍',1,31,'o8ioe0RsC3DLRILuLnz8eaOtAUv0','渝-风','https://wx.qlogo.cn/mmopen/vi_32/J8THQW7DwpzNib04V03x4mjphcGiaBX25Licbd6ukbxX5WebwRE3bibBNhWdCPBqRx9Klred1l2l1m4L3haKZI2ygQ/0'),(5,'2017-8-11   19:34:4','可以',1,75,'o8ioe0QA-SPZN-iOgWdugf4Vgy4o','夏有乔木丶雅望天堂','https://wx.qlogo.cn/mmopen/vi_32/dJ7r8flOEtumZHNFvWWhyfwtCGHgnayjZib74O2Eeh2dLBKEiciahZ4k8dtUSxCY8KxFgSwltNBpwicYvDfNq6ibiccQ/0'),(6,'2017-8-11   19:34:33','666',1,25,'o8ioe0QA-SPZN-iOgWdugf4Vgy4o','夏有乔木丶雅望天堂','https://wx.qlogo.cn/mmopen/vi_32/dJ7r8flOEtumZHNFvWWhyfwtCGHgnayjZib74O2Eeh2dLBKEiciahZ4k8dtUSxCY8KxFgSwltNBpwicYvDfNq6ibiccQ/0'),(7,'2017-8-12   22:5:23','攒一波人气',1,29,'o8ioe0Ut3kOiANGwyw761tnLuqiU','万里阳光','https://wx.qlogo.cn/mmopen/vi_32/n6AM77pZOedFiaGzC3wJ5lKDCia7ibpIMkeAhCynibMN2yqpbf2OQkoWTAc3kAQ9xrrnfqBKI0zbW8MYDWHuVg9xwg/0'),(8,'2017-8-13   15:49:19','',1,71,'o8ioe0Ut3kOiANGwyw761tnLuqiU','万里阳光','https://wx.qlogo.cn/mmopen/vi_32/n6AM77pZOedFiaGzC3wJ5lKDCia7ibpIMkeAhCynibMN2yqpbf2OQkoWTAc3kAQ9xrrnfqBKI0zbW8MYDWHuVg9xwg/0'),(9,'2017-8-13   15:49:38','好',1,71,'o8ioe0Ut3kOiANGwyw761tnLuqiU','万里阳光','https://wx.qlogo.cn/mmopen/vi_32/n6AM77pZOedFiaGzC3wJ5lKDCia7ibpIMkeAhCynibMN2yqpbf2OQkoWTAc3kAQ9xrrnfqBKI0zbW8MYDWHuVg9xwg/0'),(10,'2017-8-13   16:35:4','',1,71,'o8ioe0btvXjee7qTTPTXmNFZPRLU','rdgztest_HTBLOX',''),(11,'2017-8-13   16:43:44','',1,31,'o8ioe0VjMUh9O57O83O5c3LYfqO4','rdgztest_BWHMAZ',''),(12,'2017-8-13   16:54:3','',1,32,'o8ioe0btvXjee7qTTPTXmNFZPRLU','rdgztest_HTBLOX',''),(13,'2017-8-15   9:46:17','',1,25,'o8ioe0YzZvLTDokowtLeIIqBMQBw','稻草林','https://wx.qlogo.cn/mmopen/vi_32/7LWpMIQnwKiccy4lMtib0e03s6sdOSyMmRGo2E6CaYpkRkGBFOVrdabnjofAh4JvWxxLeViaaxw2cYia9xTnVq8fKA/0'),(14,'2017-8-15   14:1:12','',1,71,'o8ioe0Y7CUada6epwjJQoF9n8czM','冬宝&Fatty-S','https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTIrBbyfiaaVwCl7oTemvJ6GdO5Atdh3iaIibHRpPsX8ZTbEeq2bAjjnlbtvSYJ0ibp9iatNnT8Qcw4K2Fg/0');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `feedbackid` int(20) NOT NULL AUTO_INCREMENT,
  `feedbackTime` varchar(20) DEFAULT NULL,
  `feedbackText` text,
  `feedbackState` varchar(20) DEFAULT NULL,
  `feedbackResult` text,
  `openid` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`feedbackid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `feedback` */

insert  into `feedback`(`feedbackid`,`feedbackTime`,`feedbackText`,`feedbackState`,`feedbackResult`,`openid`) values (14,'2017-08-01','犯我中华者，虽远必诛','1','有心为善，虽善不赏。无心为恶，虽恶不罚','2'),(15,'2017.07.30','show enlove to die fast    **','1','','3'),(16,'2017.07.30','     if you don\'t know where to go  tomorrow    ','0','      ','2'),(17,'2017-08-06','父母在，不远游，游必有方','1','言必信，行必果，硁硁然小人也','6'),(18,'2017.07.31','  不挑担子不知重 ','1','  不走长路不知远  ','4'),(19,'2017-08-01','非淡泊无以明志，非宁静无以致远','0','','3'),(20,'2017-08-02','你好','0','','9');

/*Table structure for table `guide` */

DROP TABLE IF EXISTS `guide`;

CREATE TABLE `guide` (
  `guideid` int(20) NOT NULL AUTO_INCREMENT,
  `guideTime` varchar(50) DEFAULT NULL,
  `guideText` text,
  `guideState` int(50) DEFAULT NULL,
  PRIMARY KEY (`guideid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `guide` */

insert  into `guide`(`guideid`,`guideTime`,`guideText`,`guideState`) values (12,'2017-8-28','请点击指南选项以解决您的问题',1),(13,'2017-8-28','在书架上查找感兴趣的书籍->点击附近网点查找最近网点->打开扫码借书用二维码扫码->点击确认借书->查看订单状态别忘记还书哟！',2),(14,'2017-8-28','押金定义：是指用户在注册乐享图书是为了使用乐享图书的服务所缴纳的一笔可以退换的款项，其目的在于激励用户合法、规范及文明的使用乐享图书，押金不可用于消费，用户可以随时申请退还',2),(15,'2017-8-28','乐享图书为了实现用户还书即可离开，费用支付自动完成的流畅体验，用户需要充值支付费用。充值余额请点击app上“我的”->“钱包”->“余额充值”点击充值，其充值方式有微信支付和银行卡支付；充值之后，其余额用于支付借书订单，不设失效期，不能转移、转赠。充值余额可以退换',1),(16,'2017-8-28','当您在app地图上与网点附近看到了乐享图书图标，这说明这个站点由您想要的书籍，当你发现站点没有书籍时或许是因为受周围环境影响，有时会偏移，请刷新页面查找下一个站点',1),(17,'2017-8-29','7',0),(18,'2017-8-30','1',1),(19,'2017-8-29','9',0),(20,'2017-8-28','0',0),(21,'2017-8-28','12',0),(22,'2017-8-28','12',2);

/*Table structure for table `operate` */

DROP TABLE IF EXISTS `operate`;

CREATE TABLE `operate` (
  `openid` varchar(50) NOT NULL,
  `operatePhone` int(15) DEFAULT NULL,
  `operateName` varchar(20) DEFAULT NULL,
  `operateStoreid` int(20) DEFAULT NULL,
  PRIMARY KEY (`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `operate` */

insert  into `operate`(`openid`,`operatePhone`,`operateName`,`operateStoreid`) values ('a1234a',2147483647,'王五',2),('c1234c',2147483647,'李四',3),('d1234d',2147483647,'赵六',4),('i12341',2147483647,'张三',1),('q1234q',2147483647,'琳琳',5);

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `orderid` int(20) NOT NULL AUTO_INCREMENT,
  `orderState` int(2) DEFAULT NULL,
  `startTime` varchar(20) DEFAULT NULL,
  `bookName` varchar(20) DEFAULT NULL,
  `bookStartPlace` varchar(20) DEFAULT NULL,
  `bookEndPlace` varchar(20) DEFAULT NULL,
  `endTime` varchar(20) DEFAULT NULL,
  `orderMoney` int(10) DEFAULT '0',
  `openid` varchar(50) DEFAULT NULL,
  `bookid` int(20) DEFAULT NULL,
  `payTime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `order` */

insert  into `order`(`orderid`,`orderState`,`startTime`,`bookName`,`bookStartPlace`,`bookEndPlace`,`endTime`,`orderMoney`,`openid`,`bookid`,`payTime`) values (1,0,'2017-08-05 13:22:26','Java程序员面试笔试宝典','成都市武侯区','成都市高新区','2017-08-30 13:23:05',2,'a1234a',45,'2017-08-30 13:30:44'),(2,0,'2017-08-28 13:45:19','Java程序员面试笔试宝典','成都市武侯区','成都市高新区','2017-08-30 13:52:34',2,'a1234a',45,'2017-08-30 13:59:50'),(3,0,'2017-08-28 14:04:41','Java程序员面试笔试宝典','成都市武侯区','成都市高新区','2017-08-30 14:06:03',2,'a1234a',45,'2017-08-30 14:06:31'),(4,0,'2017-08-28 15:59:00','Java程序员面试笔试宝典','成都市武侯区','成都市高新区','2017-08-30 15:59:49',2,'a1234a',45,'2017-08-30 16:01:00'),(5,0,'2017-08-28 16:04:45','Java程序员面试笔试宝典','成都市武侯区','成都市高新区','2017-08-30 16:05:09',2,'a1234a',45,'2017-08-30 16:05:40'),(6,0,'2017-08-28 16:40:00','高等数学（上册）','成都市武侯区','成都市高新区','2017-08-30 16:41:24',2,'i1234i',48,'2017-08-30 16:41:55'),(7,0,'2017-08-28 17:20:31','高等数学（上册）','成都市武侯区','成都市高新区','2017-08-30 17:20:55',2,'i1234i',48,'2017-08-30 17:21:05'),(8,0,'2017-08-28 17:23:42','Java程序员面试笔试宝典','成都市武侯区','成都市高新区','2017-08-30 17:24:05',2,'a1234a',45,'2017-08-30 21:11:39'),(9,0,'2017-08-28 17:26:44','高等数学（上册）','成都市武侯区','成都市高新区','2017-08-30 17:27:02',2,'q1234q',48,'2017-08-30 17:27:22'),(10,0,'2017-08-29 16:59:10','高等数学（上册）','成都市武侯区','成都市高新区','2017-08-30 17:00:20',2,'a12341',48,'2017-08-30 17:00:44'),(11,0,'2017-08-29 22:22:50','Java程序员面试笔试宝典','成都市武侯区','成都市高新区','2017-08-30 22:25:52',2,'c1234c',45,'2017-08-30 22:26:34'),(12,0,'2017-08-30 12:23:44','国富论','成都市武侯区','成都市高新区','2017-08-30 12:24:10',2,'a1234a',67,'2017-08-30 12:24:26'),(13,0,'2017-08-30 12:25:18','国富论','成都市武侯区','成都市高新区','2017-08-30 12:25:26',2,'i1234i',67,'2017-08-30 12:25:37'),(14,0,'2017-08-30 12:26:41','国富论','成都市武侯区','成都市高新区','2017-08-30 12:26:51',2,'d1234d',67,'2017-08-30 12:33:50'),(15,0,'2017-08-30 16:55:39','Java与模式','成都市武侯区','成都市高新区','2017-08-30 16:56:27',2,'d1234d',71,'2017-08-30 17:05:59'),(16,0,'2017-08-30 17:01:14','Java与模式','成都市武侯区','成都市高新区','2017-08-30 17:01:46',2,'d1234d',71,'2017-08-30 17:01:56'),(17,0,'2017-08-30 17:05:12','Java与模式','成都市武侯区','成都市高新区','2017-08-30 17:05:34',2,'c1234c',71,'2017-08-30 17:06:10'),(18,0,'2017-08-30 19:40:11','中国近现代史纲要（2013年修订版）','成都市武侯区','成都市高新区','2017-08-30 19:41:00',2,'c1234c',75,'2017-08-30 19:42:14');

/*Table structure for table `person` */

DROP TABLE IF EXISTS `person`;

CREATE TABLE `person` (
  `identity` int(2) DEFAULT '0',
  `openid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `person` */

insert  into `person`(`identity`,`openid`) values (0,'osIMb0VWT17l9yfXIGnsQ1vS1oUo'),(1,'osIMb0a111KhhPZbm54jHKGAGSSQ'),(0,'11111'),(1,'osIMb0SBwYzZ8ZeBOD-hEvtIgr2c'),(0,'osIMb0ero-tSrlCS2TpiDdXNeMps'),(1,'o8ioe0UdOLhQc3OZ9Y3AZruDzSgs'),(0,NULL),(0,NULL),(0,NULL),(0,NULL),(0,NULL),(0,NULL),(1,'o8ioe0Ut3kOiANGwyw761tnLuqiU'),(0,'o8ioe0aiBj1-Rop68qlz27EIoZHk'),(0,'o8ioe0X8y_s3l0ZLGfqC8MzpcQAw'),(0,'o8ioe0ey2pPDFtpBZZpDM5oStNjY'),(0,'o8ioe0QA-SPZN-iOgWdugf4Vgy4o'),(0,'o8ioe0Vf_J5SfujDAHXqCMvJIzbs'),(0,'o8ioe0ep2_-N34f5EX1koUBn-e4w'),(0,'o8ioe0TPZOTgRiB_ozs-MShtOFmU'),(0,'o8ioe0VCPs4tW1vgXNFdXF3HhL6Q'),(0,'o8ioe0dqeDVpYOERQzugxhMjmdjc'),(0,'o8ioe0TI8Kb6bC_K-0_yNu8Vq3-I'),(0,'o8ioe0d8KVW2P9Xj1C61ZhGYdJVo'),(0,'o8ioe0RsC3DLRILuLnz8eaOtAUv0'),(0,''),(0,''),(0,''),(1,'o8ioe0QBBylTUxaOvT_e180rRZwE'),(0,'o8ioe0aK-S3utMS-MhqvOFQCrus0'),(0,'o8ioe0Sg-cjElaem-RprIUB7CnNI'),(0,'o8ioe0VdOmXHHmOQ6gevj695a3nE'),(0,'o8ioe0Qh7Ec-oOEFIpTpl3cXXU30'),(0,'o8ioe0dfbxUFvuvuog1fQ2oiv890'),(0,'o8ioe0eWMqZWkiJN6pAEE2sZUgBE'),(0,'o8ioe0YEblV-lmKE55n6ZlGj7JEw'),(0,'o8ioe0e07ewjcrzlDkcR4zid_hyk');

/*Table structure for table `qrcode` */

DROP TABLE IF EXISTS `qrcode`;

CREATE TABLE `qrcode` (
  `qrid` int(120) NOT NULL AUTO_INCREMENT,
  `access_token` varchar(130) DEFAULT NULL,
  PRIMARY KEY (`qrid`)
) ENGINE=InnoDB AUTO_INCREMENT=465 DEFAULT CHARSET=utf8mb4;

/*Data for the table `qrcode` */

insert  into `qrcode`(`qrid`,`access_token`) values (1,NULL),(7,NULL),(10,NULL),(13,NULL),(14,NULL),(15,NULL),(16,NULL),(17,NULL),(19,NULL),(330,NULL),(332,NULL),(333,NULL),(334,NULL),(335,NULL),(338,NULL),(340,NULL),(342,NULL),(343,NULL),(344,NULL),(346,NULL),(348,NULL),(350,NULL),(352,NULL),(354,NULL),(356,NULL),(358,NULL),(361,NULL),(371,NULL),(372,NULL),(382,NULL),(392,NULL),(402,NULL),(407,NULL),(412,NULL),(417,NULL),(422,NULL),(432,NULL),(442,NULL),(452,NULL),(462,NULL),(464,NULL);

/*Table structure for table `store` */

DROP TABLE IF EXISTS `store`;

CREATE TABLE `store` (
  `storeid` int(20) NOT NULL AUTO_INCREMENT,
  `storePlace` varchar(20) DEFAULT NULL,
  `storeName` varchar(20) DEFAULT NULL,
  `latitude` varchar(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`storeid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `store` */

insert  into `store`(`storeid`,`storePlace`,`storeName`,`latitude`,`longitude`,`city`,`image`) values (1,'武侯区','图书店1','00','00','四川成都',NULL),(2,'高新区','图书店2','00','00','四川成都',NULL),(3,'郫县','图书店3','00','00','四川成都',NULL),(4,'金牛区','图书店4','00','00','四川成都',NULL),(5,'青羊区','图书店5','00','00','四川成都',NULL),(6,'锦江区','图书店6','00','00','四川成都',NULL),(7,'成华区','图书店7','00','00','四川成都',NULL),(8,'龙泉驿区','图书店8','00','00','四川成都',NULL),(9,'新都区','图书店9','00','00','四川成都',NULL),(10,'青白江区','图书店10','00','00','四川成都',NULL);

/*Table structure for table `trade` */

DROP TABLE IF EXISTS `trade`;

CREATE TABLE `trade` (
  `tradeid` int(100) NOT NULL AUTO_INCREMENT,
  `tradeTime` varchar(20) DEFAULT NULL,
  `tradeWay` int(10) DEFAULT NULL,
  `tradeMoney` double DEFAULT NULL,
  `openid` varchar(50) DEFAULT NULL,
  `orderid` int(10) DEFAULT NULL,
  `tradeFlag` int(10) DEFAULT NULL,
  PRIMARY KEY (`tradeid`)
) ENGINE=InnoDB AUTO_INCREMENT=10030 DEFAULT CHARSET=utf8;

/*Data for the table `trade` */

insert  into `trade`(`tradeid`,`tradeTime`,`tradeWay`,`tradeMoney`,`openid`,`orderid`,`tradeFlag`) values (10000,'2017-08-28 13:42:26',0,61.4,'o8ioe0UdOLhQc3OZ9Y3AZruDzSgs',0,0),(10001,'2017-08-30 13:43:28',3,60,'o8ioe0UdOLhQc3OZ9Y3AZruDzSgs',NULL,NULL),(10002,'2017-08-30 13:45:05',1,60,'o8ioe0UdOLhQc3OZ9Y3AZruDzSgs',NULL,1),(10003,'2017-08-30 13:59:49',4,2,'o8ioe0UdOLhQc3OZ9Y3AZruDzSgs',38,NULL),(10004,'2017-08-30 14:03:04',2,1,'o8ioe0UdOLhQc3OZ9Y3AZruDzSgs',NULL,NULL),(10005,'2017-08-30 14:06:31',5,2,'o8ioe0UdOLhQc3OZ9Y3AZruDzSgs',39,NULL),(10006,'2017-08-30 16:01:00',5,2,'o8ioe0UdOLhQc3OZ9Y3AZruDzSgs',40,NULL),(10007,'2017-08-30 17:19:20',1,60,'o8ioe0Ut3kOiANGwyw761tnLuqiU',NULL,0),(10008,'2017-08-30 16:57:23',1,60,'o8ioe0ey2pPDFtpBZZpDM5oStNjY',NULL,0),(10009,'2017-08-30 21:11:39',4,2,'o8ioe0UdOLhQc3OZ9Y3AZruDzSgs',44,NULL),(10010,'2017-08-30 22:20:28',2,10,'o8ioe0X8y_s3l0ZLGfqC8MzpcQAw',NULL,NULL),(10011,'2017-08-30 22:22:25',1,60,'o8ioe0X8y_s3l0ZLGfqC8MzpcQAw',NULL,0),(10012,'2017-08-30 22:26:34',4,2,'o8ioe0X8y_s3l0ZLGfqC8MzpcQAw',48,NULL),(10013,'2017-08-30 23:01:45',3,60,'o8ioe0UdOLhQc3OZ9Y3AZruDzSgs',NULL,NULL),(10014,'2017-08-30 23:02:38',1,60,'o8ioe0UdOLhQc3OZ9Y3AZruDzSgs',NULL,1),(10015,'2017-08-30 23:03:03',3,60,'o8ioe0UdOLhQc3OZ9Y3AZruDzSgs',NULL,NULL),(10016,'2017-08-30 23:30:43',1,60,'o8ioe0UdOLhQc3OZ9Y3AZruDzSgs',NULL,0),(10017,'2017-08-30 13:15:04',1,60,'o8ioe0TPZOTgRiB_ozs-MShtOFmU',NULL,0),(10018,'2017-08-30 12:24:26',4,2,'o8ioe0X8y_s3l0ZLGfqC8MzpcQAw',49,NULL),(10019,'2017-08-30 12:25:37',4,2,'o8ioe0X8y_s3l0ZLGfqC8MzpcQAw',50,NULL),(10020,'2017-08-30 12:27:04',4,2,'o8ioe0X8y_s3l0ZLGfqC8MzpcQAw',51,NULL),(10021,'2017-08-30 12:27:21',4,2,'o8ioe0X8y_s3l0ZLGfqC8MzpcQAw',51,NULL),(10022,'2017-08-30 12:32:46',2,10,'o8ioe0X8y_s3l0ZLGfqC8MzpcQAw',NULL,NULL),(10023,'2017-08-30 12:32:59',4,2,'o8ioe0X8y_s3l0ZLGfqC8MzpcQAw',51,NULL),(10024,'2017-08-30 12:33:49',4,2,'o8ioe0X8y_s3l0ZLGfqC8MzpcQAw',51,NULL),(10025,'2017-08-30 16:56:52',4,2,'o8ioe0X8y_s3l0ZLGfqC8MzpcQAw',52,NULL),(10026,'2017-08-30 16:58:46',2,10,'o8ioe0Ut3kOiANGwyw761tnLuqiU',NULL,NULL),(10027,'2017-08-30 17:01:56',4,2,'o8ioe0Ut3kOiANGwyw761tnLuqiU',53,NULL),(10028,'2017-08-30 17:06:09',4,2,'o8ioe0X8y_s3l0ZLGfqC8MzpcQAw',54,NULL),(10029,'2017-08-30 19:39:35',1,60,'o8ioe0QA-SPZN-iOgWdugf4Vgy4o',NULL,0);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `openid` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `userState` int(2) DEFAULT NULL,
  `point` int(10) DEFAULT '0',
  `deposit` int(10) DEFAULT '0',
  `money` double DEFAULT '0',
  PRIMARY KEY (`openid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`openid`,`phone`,`name`,`userState`,`point`,`deposit`,`money`) values (1,'13512345678','兰冬红',1,0,0,0),(2,'13512345678','张敏',1,0,0,0),(3,'13512345678','陈杰',1,0,0,0),(4,'13512345678','马义霞',1,0,0,0),(5,'13512345678','李晓蝶',1,0,0,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
