-- MySQL dump 10.13  Distrib 8.0.23, for osx10.16 (x86_64)
--
-- Host: localhost    Database: mbti
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `mbti`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mbti` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mbti`;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `answer` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `questions_id` int NOT NULL,
  PRIMARY KEY (`id`,`questions_id`),
  KEY `fk_answers_questions_idx` (`questions_id`),
  CONSTRAINT `fk_answers_questions` FOREIGN KEY (`questions_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,'예상치 못한 문제가 생겼을때 당신은?',1),(2,'시험 범위에 이해가 안되는 내용을 마주했을 때 당신은?',2),(3,'나 우울해서 머리 잘랐어라는 친구의 말에 드는 생각은?',3),(4,'청소하는 당신의 모습은?',4),(5,'새학기 친구를 사귈때 당신은?',5),(6,'멍 때릴 때 당신은?',6),(7,'나 시험에서 떨어졌어라는 친구의 말에 드는 생각은?',7),(8,'12시 30분까지인 영화를 예매했다.',8),(9,'당신이 지향하는 인간관계는?',9),(10,'커피하면 생각나는 것은?',10),(11,'약속시간에 10분 늦은 친구에게 당신은?',11),(12,'직장을 구하고 있는 당신, 어떤 곳으로 찾아볼까?',12);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_A` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question_B` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'말이 많아진다.','생각이 많아진다.'),(2,'이해가 안되는데 일단 외우자','이해가 안되는데 이걸 어떻게 기억하지?'),(3,'뭐야, 왜 우울해','헐 사진 봐바, 얼만큼 잘랐는데?'),(4,'빨래하는 시간에 방도 치우고 설거지를.. 일단 계획부터 세워서 틀을 잡는다.\n빨래하는 시간에 방도 치우고 설거지를.. 일단 계획부터 세워서 틀을 잡는다.\n빨래하는 시간에 방도 치우고 설거지를.. 일단 계획부터 세워서 틀을 잡는다.\n빨래하는 시간에 방도 치우고 설거지를.. 일단 계획부터 세워서 틀을 잡는다.','일단 책상부터 치워볼까... 일단 시작해서 틀을 잡는다.'),(5,'친구하고싶은 사람들을 찾아다닌다','친구들이 다가올때까지 기다리기'),(6,'아무 생각이 안든다.','상상의 나라를 펼친다.'),(7,'다음엔 꼭 붙을거야 - 일단 위로','무슨시험인데? 몇점받았는데? - 일단 질문'),(8,'그런 거 생각 안한다. 30분까지 영화관 건물 입구 도착','광고 시간, 화장실 시간까지 생각해서 35분에 입장해야지'),(9,'적당히 친한 수준의 넓은 인맥을 원해','깊고 좁은 인맥을 원해'),(10,'스타벅스, 아이스아메리카노','커피 향, 쓰다, 잠이 깬다'),(11,'왜늦었어? (나는 10분이나 더 기다려서 기분이 나빠 빨리 사과해)','왜늦었어? (오다가 무슨일이 있었니?)'),(12,'할 일과 목표가 명확하게 정해져 있는 곳이 좋겠다.','유연하게 일할 수 있는 곳이 좋겠다.');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `results` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mbti_type` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img_name` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sub_name` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `explain` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES (1,'ESFJ','소통하며 자신만의 아이덴티티를 확장하는  컨버스','https://msr-assets.s3.ap-northeast-2.amazonaws.com/mbti/converse.png','컨버스 x 조슈아 비데스 척 70 하이 블랙','따뜻하면서 성실한 성격의 당신,\n 소통하며 자신만의 아이덴티티를 확장하는 컨버스와 잘 어울려요!','싹싹한 오지라퍼 성격으로 어디서나 사랑받는 사람이에요.\n다른 사람을 도와주는 걸 즐겨서 누군가 슬퍼하면 바로 요즘 힘든 일 없냐고 물어봐요. 행여라도 힘든 일 있다고 하면 자기가 발 벗고 나서서 도와줄 기세의 성격이에요.\n사회생활 잘한다는 소리 꽤 듣는 편이라 어디 가서 굶어 죽진 않을 성격이에요.\n자신이 가진 행복을 나눠주고자 나서서 모임 만드는 걸 좋아하고 그것을 통해서 자신만의 행복을 충전하는 사람이에요.');
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-09 21:22:12
