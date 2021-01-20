-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: textBoard
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

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
-- Current Database: `textBoard`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `textBoard` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `textBoard`;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `title` char(200) NOT NULL,
  `body` text NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  `memberId` int(10) unsigned NOT NULL,
  `boardId` int(10) unsigned NOT NULL,
  `recommendsCount` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,'2020-12-17 17:38:26','2021-01-20 22:25:25','(공지사항) MODIFY CODE에 오신걸 환영합니다.👨‍🔧','# MODIFY CODE 에서는\r\n## IT관련 강의 및 소식을 다룰 예정\r\n\r\n - 주된 개발언어\r\n  - JAVA\r\n  - SQL\r\n  - HTML\r\n  - CSS\r\n  - JS\r\n  - 그외 다수',16,1,1,0),(2,'2020-12-17 17:38:26','2021-01-20 22:25:24','JAVA / 1강 - JAVA란?','# 자바란?\r\n<br>\r\n<br>\r\n<br>\r\n## 자바의 탄생\r\n- 1995년에 썬 마이크로시스템즈에서 발표한 객체지향 언어\r\n- 현재 썬 마이크로시스템즈는 오라클에 인수가 된 상태\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n## 자바의 특징\r\n- 쉬운 언어이다.\r\n  - C와 C++언어의 문법을 기본으로 차용하여 개발된 언어\r\n  - C와 C++ 이 가진 어려운 문법인 포인터와 다중 상속 제거\r\n  - C와 C++에 비해 쉬운 언어이다.\r\n<br>\r\n<br>\r\n- 플랫폼에 독립적이다.\r\n  - 자바는 JVM() 만 있으면 윈도우, 리눅스, 맥등 어떤 플랫폼에서도 실행이 가능\\\r\n<br>\r\n<br>\r\n- 객체지향 언어이다.\r\n<br>\r\n<br>\r\n- 메모리 관리를 자동으로 해준다.\r\n',13,1,3,0),(3,'2020-12-17 17:38:26','2021-01-20 22:25:24','JAVA / 2강 - 변수','\r\n# 변수(variable)\r\n변수(variable)란 데이터(data)를 저장하기 위해 프로그램에 의해 이름을 할당받은 메모리 공간을 의미합니다.<br>\r\n즉, 변수란 데이터(data)를 저장할 수 있는 메모리 공간을 의미하며, 이렇게 저장된 값은 변경될 수 있습니다.\r\n<br>\r\n<br>\r\n<br>\r\n## 변수의 이름 생성 규칙\r\n자바에서는 변수뿐만 아니라 클래스, 메소드 등의 이름을 짓는데 반드시 지켜야 하는 공통된 규칙이 있습니다.\r\n<br>\r\n자바에서 이름을 생성할 때에 반드시 지켜야 하는 규칙은 다음과 같습니다.\r\n<br>\r\n<br>\r\n<br>\r\n1. 변수의 이름은 영문자(대소문자), 숫자, 언더스코어(_), 달러($)로만 구성할 수 있습니다.\r\n<br>\r\n2. 변수의 이름은 숫자로 시작할 수 없습니다.\r\n<br>\r\n3. 변수의 이름 사이에는 공백을 포함할 수 없습니다.\r\n<br>\r\n4. 변수의 이름으로 자바에서 미리 정의된 키워드(keyword)는 사용할 수 없습니다.\r\n<br>\r\n<br>\r\n<br>\r\n### 변수의 이름은 해당 변수에 저장될 데이터의 의미를 잘 나타내도록 짓는 것이 좋습니다.\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n## 변수의 종류\r\n자바에서 변수는 타입에 따라 크게 다음과 같이 구분할 수 있습니다.\r\n<br>\r\n<br>\r\n1. 기본형(primitive type) 변수\r\n\r\n2. 참조형(reference type) 변수\r\n<br>\r\n<br>\r\n### 기본형(primitive type) 변수는 실제 연산에 사용되는 변수입니다.\r\n<br>\r\n### 자바에서는 다음과 같이 8가지 종류의 기본형 변수를 제공하고 있습니다. \r\n<br>\r\n<br>\r\n<br>\r\n- 정수형 : byte, short, int, long\r\n\r\n- 실수형 : float, double\r\n\r\n- 문자형 : char\r\n\r\n- 논리형 : boolean\r\n<br>\r\n<br>\r\n<br>\r\n참조형 변수는 8개의 기본형 변수를 사용하여 사용자가 직접 만들어 사용하는 변수를 의미합니다.\r\n<br>\r\n<br>\r\n<br>\r\n\r\n### 변수의 선언\r\n자바에서는 변수를 사용하기 전에 반드시 먼저 변수를 선언하고 초기화해야 합니다.\r\n<br>\r\n변수를 선언하는 방법에는 다음과 같이 두 가지 방법이 있습니다.\r\n\r\n \r\n\r\n1. 변수의 선언만 하는 방법\r\n\r\n2. 변수의 선언과 동시에 초기화하는 방법\r\n<br>\r\n<br>\r\n<br>\r\n#### 변수의 선언만 하는 방법\r\n이 방법은 먼저 변수를 선언하여 메모리 공간을 할당받고, 나중에 변수를 초기화하는 방법입니다.\r\n<br>\r\n하지만 이렇게 선언만 된 변수는 초기화되지 않았으므로, 해당 메모리 공간에는 알 수 없는 쓰레깃값만이 들어가 있습니다.\r\n<br>\r\n따라서 선언만 된 변수는 반드시 초기화한 후에 사용해야만 합니다.\r\n<br>\r\n<br>\r\n<br>\r\n자바에서는 프로그램의 안전성을 위해 초기화하지 않은 변수는 사용할 수 없도록 하고 있습니다.\r\n<br>\r\n만약 초기화되지 않은 변수를 사용하려고 하면, 자바 컴파일러는 오류를 발생시킬 것입니다.\r\n\r\n \r\n\r\n### 문법\r\n<br>\r\n```java\r\n// 타입 변수이름;\r\n\r\nint num;                 // 변수의 선언\r\n\r\nSystem.out.println(num); // 오류 발생\r\n\r\nnum = 20;                // 변수의 초기화\r\n\r\nSystem.out.println(num); // 20\r\n```\r\n<br>\r\n\r\n위의 예제처럼 정수를 저장하기 위한 메모리 공간을 할당받으면, 반드시 해당 타입의 데이터만을 저장해야 합니다.\r\n\r\n만약 다른 타입의 데이터를 저장하려고 하면, 자바 컴파일러는 오류를 발생시킬 것입니다.\r\n\r\n변수의 선언과 동시에 초기화하는 방법\r\n자바에서는 변수의 선언과 동시에 그 값을 초기화할 수 있습니다.\r\n\r\n또한, 선언하고자 하는 변수들의 타입이 같다면 이를 동시에 선언할 수도 있습니다.\r\n\r\n \r\n\r\n### 문법\r\n```java\r\n\r\n// 1. 타입 변수이름[, 변수이름];\r\n\r\n// 2. 타입 변수이름 = 초깃값[, 변수이름 = 초깃값];\r\n\r\n\r\nint num1, num2;                  // 같은 타입의 변수를 동시에 선언함.\r\n\r\ndouble num3 = 3.14;              // 선언과 동시에 초기화함.\r\n\r\ndouble num4 = 1.23, num5 = 4.56; // 같은 타입의 변수를 동시에 선언하면서 초기화함.\r\n```\r\n \r\n\r\n선언하고자 하는 변수의 타입이 서로 다르면 동시에 선언할 수 없습니다.\r\n \r\n\r\n하지만 다음 예제처럼 여러 변수를 동시에 초기화할 수는 없습니다.\r\n\r\n만약 다음 예제처럼 변수의 초기화를 동시에 하려고 하면, 자바 컴파일러는 오류를 발생시킬 것입니다.\r\n\r\n \r\n\r\n### 잘못된 예제\r\n```java\r\ndouble num1, num2;        // 같은 타입의 변수를 동시에 선언함.\r\n\r\n...\r\n\r\nnum1 = 1.23, num2 = 4.56; // 하지만 이미 선언된 여러 변수를 동시에 초기화할 수는 없음.\r\n```',0,1,3,0),(4,'2020-12-17 17:38:26','2021-01-20 22:25:23','(자유게시판) 이곳은 자유게시판입니다.','# 자유게시판\r\n\r\n\r\n## IT 관련 뿐만아니라 모든 주제에 관해 자유롭게 이야기하는 공간.',10,1,2,0),(5,'2020-12-23 10:38:48','2021-01-20 22:25:22','JAVA / 3강 - 상수','# 상수\r\n### 상수(常數)란 수식에서 변하지 않는 값을 의미한다.\r\n<br>\r\n<br>\r\n## 상수의 선언\r\n- final 상수타입 상수명;\r\n  - final int J;\r\n<br>\r\n<br>\r\n## 상수의 사용\r\n- 상수명 = 값;\r\n  - J = 10; (J에는 값을 담을 수 있는 기회가 단 한 번만 허락됨)\r\n\r\n<br>\r\n<br>\r\n## 상수 명명 관례\r\n- 대문자로만 구성된 명사로 정함\r\n- 여러 단어로 구성된 이름의 경우 단어 사이에 \'_\'을 써서 구분함.\r\n<br>\r\n<br>\r\n## 상수를 사용해야 하는 경우\r\n- 값이 변하면 위험한 경우에 상수를 사용\r\n- 값만 봤을때 무엇을 의미하는지 쉽게 파악할 수 없는 값에도 값 자체를 사용하기 보다는 상수를 사용',0,1,3,0),(6,'2020-12-23 10:48:04','2021-01-20 22:25:22','JAVA / 4강 - 기본형 타입','# 기본형\r\n### 기본형 타입은 가장 기본이 되는 데이터 타입으로써 정수형, 실수형, 문자형, 불린형을 의미한다.\r\n<br>\r\n<br>\r\n\r\n## 논리형\r\n- 논리형은 크기가 1byte이고 true와 false 중에 한 가지 값을 가질 수 있다.\r\n<br>\r\n<br>\r\n## 문자형\r\n- 문자형은 char로 2byte크기를 가집니다. 문자는 작은따옴표를 이용하여 한 글자를 표현할 수 있다.\r\n<br>\r\n<br>\r\n## 정수형\r\n- 정수형은 정수를 표현하는 데이터 타입인데 표현할 수 있는 정수의 범위에 따라서 다양하게 제공된다.\r\n- 정수형에서 가장 자주 사용하는 int는 4바이트이다.\r\n- long형은 8byte크기를 가진다. int 보다 더 큰 범위의 정수를 표현하고 싶을때 사용한다.\r\n<br>\r\n<br>\r\n## 실수형\r\n- 실수형은 float과 double형이 있다.\r\n- float은 4바이트, double은 8바이트로 double은 float보다 더 큰 범위의 실수를 표현할 수 있다.\r\n<br>\r\n<br>\r\n## 리터럴\r\n- 컴퓨터 과학 분야에서 리터럴이란, 소스 코드의 고정된 값을 대표하는 용어다.\r\n- 리터럴은 일종의 값이다. true, false, 10, 11.1, a 등 이런 값 자체를 리터럴이라고 한다.\r\n\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n## 기본형 타입의 사용 방법\r\n```java\r\nboolean isFun = true;\r\nchar c =\'f\';\r\nint x = 59;\r\nlong big = 3456789L; //(값을 적을때는 뒤에 소문자 l이나 대문자 L을 적어야 합니다.)\r\nfloat f = 32.5f //(float에 값을 대입할 때는 실수 뒤에 소문자 f나 대문자 F를 붙여야 합니다.)\r\ndouble d = 23.34;\r\n```',0,1,3,1),(7,'2021-01-11 15:18:14','2021-01-20 22:25:21','JAVA / 5강 - 기본형 타입변환 (형변환)','# 기본형 타입변환\r\n### 기본형 타입(형)변환\r\n<br>\r\n<br>\r\n형변환이란, 변수 또는 리터럴의 타입을 다른 타입으로 변환하는 것이다.\r\n<br>\r\n<br>\r\n## 묵시적 형변환\r\n- 크기가 작은 타입을 크기가 더 큰 타입으로 바꿀 때에는 묵시적으로 형을 바꾸어 준다.\r\n<br>\r\n```java\r\nint x = 50000;\r\nlong y = x;\r\n```\r\n<br>\r\n- 이를 암묵적 형변환 이라고도 한다.\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n## 명시적 형변환\r\n- 크기가 더 큰 타입을 작은 타입으로 바꿀 때에는 명시적으로 변환 해주어야 한다.\r\n<br>\r\n```java\r\nlong x = 50000;\r\n//int y = x; //(이렇게 묵시적으로 수행하면 컴파일러는 오류를 발생 시킨다.)\r\nint y = (int) x; //(반드시 (타입) 으로 명시적으로 형을 바꾸어 주어야 한다.)\r\n```\r\n<br>\r\n- 이를 강제 형변환 이라고도 한다.',0,1,3,0),(8,'2021-01-11 15:20:46','2021-01-20 22:25:20','JAVA / 6강 - 산술 연산자','# 산술연산자\r\n### 부호(+,-), 증감(++,--), +,-,*,/,%\r\n<br>\r\n<br>\r\n- 연산식 ** x = y + z;**\r\n  - y와 z를 더한 값을 x에 대입한다는 것을 의미\r\n  - =과 + 는 연산자 = 은 대입연산자 이고, + 산술연산자 이다.\r\n  - y와 z 는 피연산자 이다.\r\n  - x = y+ z 는 연산식이다.\r\n  - 부호를 결정하는 부호 연산자\r\n<br>\r\n- 산술 연산을 할 수 있는 산술 연산자\r\n<br>\r\n- 1씩 증가하거나 감소 시키는 증감연산자\r\n<br>\r\n- 피 연산자가 1개인 연산자는 단항 연산자\r\n<br>\r\n  - 부호 연산자와, 증감연산자는 단항 연산자 이다.\r\n<br>\r\n<br>\r\n```java\r\n    //부호 연산자 \r\n    int i1 = -5;\r\n    int i2 = +i1;\r\n    int i3 = -i1;\r\n\r\n    //증감 연산자 \r\n    int i4 = ++i3;\r\n    int i5 = i3++;\r\n    int i6 = --i3;\r\n    int i7 = i3--;\r\n```\r\n<br>\r\n- 피연 산자 하나로 연산할 수 없는 연산자 이항 연산자\r\n<br>\r\n```java\r\n    int i = 5;\r\n    int j = 2;  \r\n```\r\n<br>\r\n- 2개의 변수 이용한 산술 연산\r\n<br>\r\n```java\r\n    System.out.println(i +  j);\r\n    System.out.println(i -  j);\r\n    System.out.println(i *  j);\r\n    System.out.println(i /  j);  \r\n    System.out.println(i %  j);  \r\n```',0,1,3,0),(9,'2021-01-20 21:48:53','2021-01-20 22:25:20','JSP / 커뮤니티 사이트 개발일지 [1회차]','# JSP 커뮤니티 개발일지 / 진행현황\r\n2021-01-20 (수)\r\n<br>\r\n---\r\n<br>\r\n## 디자인 : top-bar 디자인 진행중\r\n<br>\r\n- 반응형 디자인 (진행중)\r\n- 모바일 환경 사이드바로 메뉴 이동 (진행중)\r\n<br>\r\n<br>\r\n---\r\n<br>\r\n## 구현 기능\r\n### top-bar \r\n- 로그인 (로그아웃 상태일 경우)\r\n  - 폼체크\r\n<br>\r\n- 회원가입 (로그아웃 상태일 경우)\r\n  - 폼체크\r\n  - 로그인 아이디 중복체크 (추후 개선 예정)\r\n<br>\r\n- 공지사항 게시판 글 작성 (로그인 상태일 경우)\r\n- 로그아웃 (로그인 상태일 경우)\r\n<br>\r\n<br>\r\n### 메인화면 구현\r\n- (임시) 공지사항 게시판 게시물 리스트 이동버튼\r\n<br>\r\n<br>\r\n### 리스트 페이지 구현\r\n- 게시물 작성 가능\r\n<br>\r\n- 공지사항 게시판의 전체 게시물 리스트\r\n<br>\r\n<br>\r\n### CRUD 기능 구현\r\n- 권한 체크 ( 로그인시 / 본인이 작성한 글에 대하여 권한 획득 )\r\n<br>\r\n<br>\r\n### 관리자 기능으로 회원 전체 리스트 확인 (추후 권한체크 추가예정)\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n<br>\r\n### 개발 진행상황 및 구현기능 시연 동영상\r\n```youtube\r\nmtiGEw-hXhk\r\n```',0,1,4,0);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articleReply`
--

DROP TABLE IF EXISTS `articleReply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articleReply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `memberId` int(10) NOT NULL,
  `articleId` int(10) NOT NULL,
  `reply` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articleReply`
--

LOCK TABLES `articleReply` WRITE;
/*!40000 ALTER TABLE `articleReply` DISABLE KEYS */;
/*!40000 ALTER TABLE `articleReply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `name` char(50) NOT NULL,
  `code` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'2020-12-17 17:38:22','2020-12-17 17:38:22','공지사항','notice'),(2,'2020-12-17 17:38:22','2020-12-17 17:38:22','자유','free'),(3,'2020-12-17 17:38:24','2020-12-17 17:38:24','IT','it'),(4,'2021-01-20 21:47:01','2021-01-20 21:47:03','JSP','jsp');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ga4DataPagePath`
--

DROP TABLE IF EXISTS `ga4DataPagePath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ga4DataPagePath` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `pagePath` char(100) NOT NULL,
  `hit` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pagePath` (`pagePath`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ga4DataPagePath`
--

LOCK TABLES `ga4DataPagePath` WRITE;
/*!40000 ALTER TABLE `ga4DataPagePath` DISABLE KEYS */;
INSERT INTO `ga4DataPagePath` VALUES (41,'2021-01-06 16:23:23','2021-01-06 16:23:23','/',91),(42,'2021-01-06 16:23:23','2021-01-06 16:23:23','/article_list_it_1.html',24),(43,'2021-01-06 16:23:23','2021-01-06 16:23:23','/article_list_free_1.html',22),(44,'2021-01-06 16:23:23','2021-01-06 16:23:23','/article_list_notice_1.html',22),(45,'2021-01-06 16:23:23','2021-01-06 16:23:23','/index.html',18),(46,'2021-01-06 16:23:23','2021-01-06 16:23:23','/article_detail_1.html',16),(47,'2021-01-06 16:23:23','2021-01-06 16:23:23','/article_all_1.html',13),(48,'2021-01-06 16:23:23','2021-01-06 16:23:23','/article_detail_2.html',13),(49,'2021-01-06 16:23:23','2021-01-06 16:23:23','/statistics.html',13),(50,'2021-01-06 16:23:23','2021-01-06 16:23:23','/article_detail_4.html',10);
/*!40000 ALTER TABLE `ga4DataPagePath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `loginId` varchar(100) NOT NULL,
  `loginPw` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'2020-12-17 17:38:24','admin','admin','최형석');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommand`
--

DROP TABLE IF EXISTS `recommand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `memberId` int(10) NOT NULL,
  `articleId` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommand`
--

LOCK TABLES `recommand` WRITE;
/*!40000 ALTER TABLE `recommand` DISABLE KEYS */;
/*!40000 ALTER TABLE `recommand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `regDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `relTypeCode` char(20) NOT NULL,
  `relId` int(10) unsigned NOT NULL,
  `body` char(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `relTypeCode_2` (`relTypeCode`,`relId`,`body`),
  KEY `relTypeCode` (`relTypeCode`,`body`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'2021-01-16 14:35:18','2021-01-16 14:35:18','article',1,'JAVA'),(2,'2021-01-16 14:35:18','2021-01-16 14:35:18','article',1,'SQL'),(3,'2021-01-16 14:35:18','2021-01-16 14:35:18','article',1,'HTML');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-20 22:27:43
