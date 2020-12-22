/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.14-MariaDB : Database - textBoard
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`textBoard` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `textBoard`;

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `title` char(200) NOT NULL,
  `body` text NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  `boardId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `article` */

insert  into `article`(`id`,`regDate`,`updateDate`,`title`,`body`,`hit`,`memberId`,`boardId`) values 
(1,'2020-12-17 17:38:26','2020-12-17 17:38:26','(공지사항) MODIFY CODE에 오신걸 환영합니다.','# MODIFY CODE 에서는\r\n## IT관련 강의 및 소식을 다룰 예정\r\n\r\n - 주된 개발언어\r\n  - JAVA\r\n  - SQL\r\n  - HTML\r\n  - CSS\r\n  - JS\r\n  - 그외 다수',0,1,1),
(2,'2020-12-17 17:38:26','2020-12-17 17:38:26','JAVA / 1강 - JAVA란?','# 자바란?\r\n<br>\r\n<br>\r\n<br>\r\n## 자바의 탄생\r\n- 1995년에 썬 마이크로시스템즈에서 발표한 객체지향 언어\r\n- 현재 썬 마이크로시스템즈는 오라클에 인수가 된 상태\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n## 자바의 특징\r\n- 쉬운 언어이다.\r\n  - C와 C++언어의 문법을 기본으로 차용하여 개발된 언어\r\n  - C와 C++ 이 가진 어려운 문법인 포인터와 다중 상속 제거\r\n  - C와 C++에 비해 쉬운 언어이다.\r\n<br>\r\n<br>\r\n- 플랫폼에 독립적이다.\r\n  - 자바는 JVM() 만 있으면 윈도우, 리눅스, 맥등 어떤 플랫폼에서도 실행이 가능\\\r\n<br>\r\n<br>\r\n- 객체지향 언어이다.\r\n<br>\r\n<br>\r\n- 메모리 관리를 자동으로 해준다.\r\n',0,1,3),
(3,'2020-12-17 17:38:26','2020-12-17 17:38:26','JAVA / 2강 - 변수','\r\n# 변수(variable)\r\n변수(variable)란 데이터(data)를 저장하기 위해 프로그램에 의해 이름을 할당받은 메모리 공간을 의미합니다.<br>\r\n즉, 변수란 데이터(data)를 저장할 수 있는 메모리 공간을 의미하며, 이렇게 저장된 값은 변경될 수 있습니다.\r\n<br>\r\n<br>\r\n<br>\r\n## 변수의 이름 생성 규칙\r\n자바에서는 변수뿐만 아니라 클래스, 메소드 등의 이름을 짓는데 반드시 지켜야 하는 공통된 규칙이 있습니다.\r\n<br>\r\n자바에서 이름을 생성할 때에 반드시 지켜야 하는 규칙은 다음과 같습니다.\r\n<br>\r\n<br>\r\n<br>\r\n1. 변수의 이름은 영문자(대소문자), 숫자, 언더스코어(_), 달러($)로만 구성할 수 있습니다.\r\n<br>\r\n2. 변수의 이름은 숫자로 시작할 수 없습니다.\r\n<br>\r\n3. 변수의 이름 사이에는 공백을 포함할 수 없습니다.\r\n<br>\r\n4. 변수의 이름으로 자바에서 미리 정의된 키워드(keyword)는 사용할 수 없습니다.\r\n<br>\r\n<br>\r\n<br>\r\n### 변수의 이름은 해당 변수에 저장될 데이터의 의미를 잘 나타내도록 짓는 것이 좋습니다.\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n## 변수의 종류\r\n자바에서 변수는 타입에 따라 크게 다음과 같이 구분할 수 있습니다.\r\n<br>\r\n<br>\r\n1. 기본형(primitive type) 변수\r\n\r\n2. 참조형(reference type) 변수\r\n<br>\r\n<br>\r\n### 기본형(primitive type) 변수는 실제 연산에 사용되는 변수입니다.\r\n<br>\r\n### 자바에서는 다음과 같이 8가지 종류의 기본형 변수를 제공하고 있습니다. \r\n<br>\r\n<br>\r\n<br>\r\n- 정수형 : byte, short, int, long\r\n\r\n- 실수형 : float, double\r\n\r\n- 문자형 : char\r\n\r\n- 논리형 : boolean\r\n<br>\r\n<br>\r\n<br>\r\n참조형 변수는 8개의 기본형 변수를 사용하여 사용자가 직접 만들어 사용하는 변수를 의미합니다.\r\n<br>\r\n<br>\r\n<br>\r\n\r\n### 변수의 선언\r\n자바에서는 변수를 사용하기 전에 반드시 먼저 변수를 선언하고 초기화해야 합니다.\r\n<br>\r\n변수를 선언하는 방법에는 다음과 같이 두 가지 방법이 있습니다.\r\n\r\n \r\n\r\n1. 변수의 선언만 하는 방법\r\n\r\n2. 변수의 선언과 동시에 초기화하는 방법\r\n<br>\r\n<br>\r\n<br>\r\n#### 변수의 선언만 하는 방법\r\n이 방법은 먼저 변수를 선언하여 메모리 공간을 할당받고, 나중에 변수를 초기화하는 방법입니다.\r\n<br>\r\n하지만 이렇게 선언만 된 변수는 초기화되지 않았으므로, 해당 메모리 공간에는 알 수 없는 쓰레깃값만이 들어가 있습니다.\r\n<br>\r\n따라서 선언만 된 변수는 반드시 초기화한 후에 사용해야만 합니다.\r\n<br>\r\n<br>\r\n<br>\r\n자바에서는 프로그램의 안전성을 위해 초기화하지 않은 변수는 사용할 수 없도록 하고 있습니다.\r\n<br>\r\n만약 초기화되지 않은 변수를 사용하려고 하면, 자바 컴파일러는 오류를 발생시킬 것입니다.\r\n\r\n \r\n\r\n### 문법\r\n<br>\r\n```java\r\n// 타입 변수이름;\r\n\r\nint num;                 // 변수의 선언\r\n\r\nSystem.out.println(num); // 오류 발생\r\n\r\nnum = 20;                // 변수의 초기화\r\n\r\nSystem.out.println(num); // 20\r\n```\r\n<br>\r\n\r\n위의 예제처럼 정수를 저장하기 위한 메모리 공간을 할당받으면, 반드시 해당 타입의 데이터만을 저장해야 합니다.\r\n\r\n만약 다른 타입의 데이터를 저장하려고 하면, 자바 컴파일러는 오류를 발생시킬 것입니다.\r\n\r\n변수의 선언과 동시에 초기화하는 방법\r\n자바에서는 변수의 선언과 동시에 그 값을 초기화할 수 있습니다.\r\n\r\n또한, 선언하고자 하는 변수들의 타입이 같다면 이를 동시에 선언할 수도 있습니다.\r\n\r\n \r\n\r\n### 문법\r\n```java\r\n\r\n// 1. 타입 변수이름[, 변수이름];\r\n\r\n// 2. 타입 변수이름 = 초깃값[, 변수이름 = 초깃값];\r\n\r\n\r\nint num1, num2;                  // 같은 타입의 변수를 동시에 선언함.\r\n\r\ndouble num3 = 3.14;              // 선언과 동시에 초기화함.\r\n\r\ndouble num4 = 1.23, num5 = 4.56; // 같은 타입의 변수를 동시에 선언하면서 초기화함.\r\n```\r\n \r\n\r\n선언하고자 하는 변수의 타입이 서로 다르면 동시에 선언할 수 없습니다.\r\n \r\n\r\n하지만 다음 예제처럼 여러 변수를 동시에 초기화할 수는 없습니다.\r\n\r\n만약 다음 예제처럼 변수의 초기화를 동시에 하려고 하면, 자바 컴파일러는 오류를 발생시킬 것입니다.\r\n\r\n \r\n\r\n### 잘못된 예제\r\n```java\r\ndouble num1, num2;        // 같은 타입의 변수를 동시에 선언함.\r\n\r\n...\r\n\r\nnum1 = 1.23, num2 = 4.56; // 하지만 이미 선언된 여러 변수를 동시에 초기화할 수는 없음.\r\n```',0,1,3),
(4,'2020-12-17 17:38:26','2020-12-17 17:38:26','(자유게시판) 이곳은 자유게시판입니다.','# 자유게시판\r\n\r\n\r\n## IT 관련 뿐만아니라 모든 주제에 관해 자유롭게 이야기하는 공간.',0,1,2);

/*Table structure for table `articleReply` */

DROP TABLE IF EXISTS `articleReply`;

CREATE TABLE `articleReply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `memberId` int(10) NOT NULL,
  `articleId` int(10) NOT NULL,
  `reply` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `articleReply` */

/*Table structure for table `board` */

DROP TABLE IF EXISTS `board`;

CREATE TABLE `board` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `name` char(50) NOT NULL,
  `code` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `board` */

insert  into `board`(`id`,`regDate`,`updateDate`,`name`,`code`) values 
(1,'2020-12-17 17:38:22','2020-12-17 17:38:22','공지사항','notice'),
(2,'2020-12-17 17:38:22','2020-12-17 17:38:22','자유','free'),
(3,'2020-12-17 17:38:24','2020-12-17 17:38:24','IT','it');

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `loginId` varchar(100) NOT NULL,
  `loginPw` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `member` */

insert  into `member`(`id`,`regDate`,`loginId`,`loginPw`,`name`) values 
(1,'2020-12-17 17:38:24','admin','admin','최형석');

/*Table structure for table `recommand` */

DROP TABLE IF EXISTS `recommand`;

CREATE TABLE `recommand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `memberId` int(10) NOT NULL,
  `articleId` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `recommand` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;