-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: online_judge
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'harshit','6706573e67f456089891aa8ad2fd0c9711640c85','harshitgarg30920@gmail.com','harshit');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `sender_id` int(6) NOT NULL,
  `receiver_id` int(6) NOT NULL,
  `message` tinytext NOT NULL,
  `date_time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_details`
--

DROP TABLE IF EXISTS `contest_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_details` (
  `contest_id` int(6) NOT NULL AUTO_INCREMENT,
  `user_id` int(6) NOT NULL,
  `contest_name` varchar(30) NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_date` date NOT NULL,
  `end_time` time NOT NULL,
  `org_type` set('school','company','non-profit','other') NOT NULL,
  `org_name` tinytext NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`contest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_details`
--

LOCK TABLES `contest_details` WRITE;
/*!40000 ALTER TABLE `contest_details` DISABLE KEYS */;
INSERT INTO `contest_details` VALUES (2,6,'Insomnia','2019-09-25','06:30:00','2019-09-30','06:30:00','school','MNNIT','2019-09-20');
/*!40000 ALTER TABLE `contest_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_logins`
--

DROP TABLE IF EXISTS `contest_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_logins` (
  `contest_id` int(6) NOT NULL,
  `user_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_logins`
--

LOCK TABLES `contest_logins` WRITE;
/*!40000 ALTER TABLE `contest_logins` DISABLE KEYS */;
INSERT INTO `contest_logins` VALUES (1,7),(1,2),(1,1);
/*!40000 ALTER TABLE `contest_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_new_problems`
--

DROP TABLE IF EXISTS `contest_new_problems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_new_problems` (
  `problem_id` int(6) NOT NULL AUTO_INCREMENT,
  `contest_id` int(6) NOT NULL,
  `problem_name` varchar(30) NOT NULL,
  `difficulty` set('easy','medium','hard') DEFAULT NULL,
  `subdomain` set('strings','sorting','search','arrays','graph','greedy','dp','bitman','game','recursion','algorithm','np') NOT NULL,
  `time_limit` float NOT NULL,
  `memory_limit` int(3) NOT NULL,
  `problem_statement` text NOT NULL,
  `input` text NOT NULL,
  `constraints` text NOT NULL,
  `output` text NOT NULL,
  `sample_in` text NOT NULL,
  `sample_out` text NOT NULL,
  `explanation` text NOT NULL,
  `date` date NOT NULL,
  `status` set('1','0') NOT NULL,
  PRIMARY KEY (`problem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_new_problems`
--

LOCK TABLES `contest_new_problems` WRITE;
/*!40000 ALTER TABLE `contest_new_problems` DISABLE KEYS */;
/*!40000 ALTER TABLE `contest_new_problems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_old_problems`
--

DROP TABLE IF EXISTS `contest_old_problems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_old_problems` (
  `contest_id` int(6) NOT NULL,
  `problem_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_old_problems`
--

LOCK TABLES `contest_old_problems` WRITE;
/*!40000 ALTER TABLE `contest_old_problems` DISABLE KEYS */;
INSERT INTO `contest_old_problems` VALUES (1,3),(1,4),(1,2);
/*!40000 ALTER TABLE `contest_old_problems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_signups`
--

DROP TABLE IF EXISTS `contest_signups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_signups` (
  `contest_id` int(6) NOT NULL,
  `user_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_signups`
--

LOCK TABLES `contest_signups` WRITE;
/*!40000 ALTER TABLE `contest_signups` DISABLE KEYS */;
INSERT INTO `contest_signups` VALUES (1,2),(1,7),(1,1);
/*!40000 ALTER TABLE `contest_signups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contest_submission`
--

DROP TABLE IF EXISTS `contest_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contest_submission` (
  `problem_id` int(6) NOT NULL,
  `contest_id` int(6) NOT NULL,
  `user_id` int(6) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` set('AC','WA','TLE','RE','CE') DEFAULT NULL,
  `solution` text NOT NULL,
  `time` float NOT NULL,
  `memory` float NOT NULL,
  `language` set('c','cpp','csharp','golang','java','javscript','python2','python3','ruby','rust') DEFAULT NULL,
  `id` int(6) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contest_submission`
--

LOCK TABLES `contest_submission` WRITE;
/*!40000 ALTER TABLE `contest_submission` DISABLE KEYS */;
INSERT INTO `contest_submission` VALUES (4,1,7,'2019-09-20 09:00:05','WA','#include<stdio.h>\nint main()\n{\n    int n ;\n    scanf(\"%d\",&n);\n    printf(\"%d\",n*20);\n    return 0;\n}',0.007,1,'c',1),(4,1,7,'2019-09-20 09:02:05','AC','#include<stdio.h>\nint main()\n{\n    int n ;\n    scanf(\"%d\",&n);\n    printf(\"%d\",n*20);\n    return 0;\n}',0.005,1,'c',2),(4,1,2,'2019-09-20 09:58:04','CE','#include<iostream>\nusing namespace std;\nint main(){\n    int n;\n  cin>>n;\n  cout<<n*20;\n    return 0;\n}',0,0,'c',3),(4,1,2,'2019-09-20 09:59:01','AC','#include<iostream>\nusing namespace std;\nint main(){\n    int n;\n  cin>>n;\n  cout<<n*20;\n    return 0;\n}',0.004,1,'cpp',4),(4,1,2,'2019-09-20 10:01:03','AC','#include<iostream>\nusing namespace std;\nint main(){\n    int n;\n  cin>>n;\n  cout<<n*20;\n    return 0;\n}',0.008,1,'cpp',5);
/*!40000 ALTER TABLE `contest_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editor_submission`
--

DROP TABLE IF EXISTS `editor_submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editor_submission` (
  `user_id` int(6) NOT NULL,
  `solution` text,
  `language` set('c','cpp','csharp','golang','java','javascript','python2','python3','ruby','rust') NOT NULL,
  `problem_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editor_submission`
--

LOCK TABLES `editor_submission` WRITE;
/*!40000 ALTER TABLE `editor_submission` DISABLE KEYS */;
INSERT INTO `editor_submission` VALUES (1,'','c',2),(7,'#include<stdio.h>\nint main()\n{\n    int n ;\n    scanf(\"%d\",&n);\n    printf(\"%d\",n*20);\n    return 0;\n}','c',4),(7,'','c',2),(2,'#include<iostream>\nusing namespace std;\nint main(){\n    int n;\n  cin>>n;\n  cout<<n*20;\n    return 0;\n}','c',4),(2,'#include<iostream>\nusing namespace std;\nint main(){\n    int n;\n  cin>>n;\n  cout<<n*20;\n    return 0;\n}','cpp',4),(2,'','c',1),(2,'#include <bits/stdc++.h>\r\n\r\nusing namespace std;\r\n\r\nvector<string> split_string(string);\r\n\r\n\r\n\r\nint main()\r\n{\r\n    string nd_temp;\r\n    getline(cin, nd_temp);\r\n\r\n    vector<string> nd = split_string(nd_temp);\r\n\r\n    int n = stoi(nd[0]);\r\n\r\n    int d = stoi(nd[1]);\r\n\r\n    string a_temp_temp;\r\n    getline(cin, a_temp_temp);\r\n\r\n    vector<string> a_temp = split_string(a_temp_temp);\r\n\r\n    vector<int> a(n);\r\n\r\n    for (int i = 0; i < n; i++) {\r\n        int a_item = stoi(a_temp[i]);\r\n\r\n        a[i] = a_item;\r\n    }\r\n\r\n    return 0;\r\n}\r\n\r\nvector<string> split_string(string input_string) {\r\n    string::iterator new_end = unique(input_string.begin(), input_string.end(), [] (const char &x, const char &y) {\r\n        return x == y and x == \' \';\r\n    });\r\n\r\n    input_string.erase(new_end, input_string.end());\r\n\r\n    while (input_string[input_string.length() - 1] == \' \') {\r\n        input_string.pop_back();\r\n    }\r\n\r\n    vector<string> splits;\r\n    char delimiter = \' \';\r\n\r\n    size_t i = 0;\r\n    size_t pos = input_string.find(delimiter);\r\n\r\n    while (pos != string::npos) {\r\n        splits.push_back(input_string.substr(i, pos - i));\r\n\r\n        i = pos + 1;\r\n        pos = input_string.find(delimiter, i);\r\n    }\r\n\r\n    splits.push_back(input_string.substr(i, min(pos, input_string.length()) - i + 1));\r\n\r\n    return splits;\r\n}\r\n','cpp',1),(2,'import java.util.*;\r\n class Solution {\r\n    \r\n    public static int[] rotateArray(int[] arr, int d){\r\n        // Because the constraints state d < n, we need not concern ourselves with shifting > n units.\r\n        int n = arr.length;\r\n        \r\n        // Create a temporary d-element array to store elements shifted to the left of index 0:\r\n        int[] temp_arr = Arrays.copyOfRange(arr, 0, d);\r\n        \r\n        // Shift elements from indices d through n to indices 0 through d - 1:\r\n        for(int i = d; i < n; i++) {\r\n            arr[i - d] = arr[i];\r\n        }\r\n        \r\n        // Copy the d shifted elements from the temporary array back to the original array:\r\n        for(int i = n - d; i < n; i++) {\r\n            arr[i] = temp_arr[i-n+d];\r\n        }\r\n        \r\n        return arr;\r\n    }\r\n    \r\n    public static void main(String[] args) {\r\n        \r\n        Scanner scanner = new Scanner(System.in);\r\n        int n = scanner.nextInt();\r\n        int d = scanner.nextInt();\r\n        int[] numbers = new int[n];\r\n        \r\n        // Fill initial array:\r\n        for(int i = 0; i < n; i++){\r\n            numbers[i] = scanner.nextInt();\r\n        }\r\n        \r\n        // Rotate array by d elements:\r\n        numbers = rotateArray(numbers, d);\r\n        \r\n        // Print array\'s elements as a single line of space-separated values:\r\n        for(int i : numbers) {\r\n            System.out.print(i + \" \");\r\n        }\r\n        System.out.println();\r\n        \r\n        scanner.close();\r\n    } \r\n        \r\n}\r\n','java',1);
/*!40000 ALTER TABLE `editor_submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `followers`
--

DROP TABLE IF EXISTS `followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `followers` (
  `follower_id` int(6) NOT NULL,
  `following_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followers`
--

LOCK TABLES `followers` WRITE;
/*!40000 ALTER TABLE `followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend`
--

DROP TABLE IF EXISTS `friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend` (
  `friend1` int(6) NOT NULL,
  `friend2` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend`
--

LOCK TABLES `friend` WRITE;
/*!40000 ALTER TABLE `friend` DISABLE KEYS */;
/*!40000 ALTER TABLE `friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp_table`
--

DROP TABLE IF EXISTS `otp_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otp_table` (
  `username` varchar(30) NOT NULL,
  `otp` int(4) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp_table`
--

LOCK TABLES `otp_table` WRITE;
/*!40000 ALTER TABLE `otp_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `otp_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pending_friend`
--

DROP TABLE IF EXISTS `pending_friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pending_friend` (
  `friend1` int(6) NOT NULL,
  `friend2` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pending_friend`
--

LOCK TABLES `pending_friend` WRITE;
/*!40000 ALTER TABLE `pending_friend` DISABLE KEYS */;
/*!40000 ALTER TABLE `pending_friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `problems`
--

DROP TABLE IF EXISTS `problems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `problems` (
  `problem_id` int(6) NOT NULL AUTO_INCREMENT,
  `user_id` int(6) NOT NULL,
  `problem_name` varchar(30) NOT NULL,
  `difficulty` set('easy','medium','hard') DEFAULT NULL,
  `subdomain` set('strings','sorting','search','arrays','graph','greedy','dp','bitman','game','recursion','algorithm','np') NOT NULL,
  `time_limit` float NOT NULL,
  `memory_limit` int(3) NOT NULL,
  `problem_statement` text NOT NULL,
  `input` text NOT NULL,
  `constraints` text NOT NULL,
  `output` text NOT NULL,
  `sample_in` text NOT NULL,
  `sample_out` text NOT NULL,
  `explanation` text NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`problem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problems`
--

LOCK TABLES `problems` WRITE;
/*!40000 ALTER TABLE `problems` DISABLE KEYS */;
/*!40000 ALTER TABLE `problems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission`
--

DROP TABLE IF EXISTS `submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `submission` (
  `problem_id` int(6) NOT NULL,
  `user_id` int(6) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `solution` text NOT NULL,
  `time` float NOT NULL,
  `memory` float NOT NULL,
  `language` set('c','cpp','csharp','golang','java','javascript','python2','python3','ruby','rust') NOT NULL,
  `status` set('AC','WA','TLE','RE','CE') DEFAULT NULL,
  `id` int(6) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission`
--

LOCK TABLES `submission` WRITE;
/*!40000 ALTER TABLE `submission` DISABLE KEYS */;
INSERT INTO `submission` VALUES (1,2,'2019-09-19 11:34:00','#include <bits/stdc++.h>\r\n\r\nusing namespace std;\r\n\r\nvector<string> split_string(string);\r\n\r\n\r\n\r\nint main()\r\n{\r\n    string nd_temp;\r\n    getline(cin, nd_temp);\r\n\r\n    vector<string> nd = split_string(nd_temp);\r\n\r\n    int n = stoi(nd[0]);\r\n\r\n    int d = stoi(nd[1]);\r\n\r\n    string a_temp_temp;\r\n    getline(cin, a_temp_temp);\r\n\r\n    vector<string> a_temp = split_string(a_temp_temp);\r\n\r\n    vector<int> a(n);\r\n\r\n    for (int i = 0; i < n; i++) {\r\n        int a_item = stoi(a_temp[i]);\r\n\r\n        a[i] = a_item;\r\n    }\r\n\r\n    return 0;\r\n}\r\n\r\nvector<string> split_string(string input_string) {\r\n    string::iterator new_end = unique(input_string.begin(), input_string.end(), [] (const char &x, const char &y) {\r\n        return x == y and x == \' \';\r\n    });\r\n\r\n    input_string.erase(new_end, input_string.end());\r\n\r\n    while (input_string[input_string.length() - 1] == \' \') {\r\n        input_string.pop_back();\r\n    }\r\n\r\n    vector<string> splits;\r\n    char delimiter = \' \';\r\n\r\n    size_t i = 0;\r\n    size_t pos = input_string.find(delimiter);\r\n\r\n    while (pos != string::npos) {\r\n        splits.push_back(input_string.substr(i, pos - i));\r\n\r\n        i = pos + 1;\r\n        pos = input_string.find(delimiter, i);\r\n    }\r\n\r\n    splits.push_back(input_string.substr(i, min(pos, input_string.length()) - i + 1));\r\n\r\n    return splits;\r\n}\r\n',0.076,6,'cpp',NULL,1),(1,2,'2019-09-19 11:35:02','#include <bits/stdc++.h>\r\n\r\nusing namespace std;\r\n\r\nvector<string> split_string(string);\r\n\r\n\r\n\r\nint main()\r\n{\r\n    string nd_temp;\r\n    getline(cin, nd_temp);\r\n\r\n    vector<string> nd = split_string(nd_temp);\r\n\r\n    int n = stoi(nd[0]);\r\n\r\n    int d = stoi(nd[1]);\r\n\r\n    string a_temp_temp;\r\n    getline(cin, a_temp_temp);\r\n\r\n    vector<string> a_temp = split_string(a_temp_temp);\r\n\r\n    vector<int> a(n);\r\n\r\n    for (int i = 0; i < n; i++) {\r\n        int a_item = stoi(a_temp[i]);\r\n\r\n        a[i] = a_item;\r\n    }\r\n\r\n    return 0;\r\n}\r\n\r\nvector<string> split_string(string input_string) {\r\n    string::iterator new_end = unique(input_string.begin(), input_string.end(), [] (const char &x, const char &y) {\r\n        return x == y and x == \' \';\r\n    });\r\n\r\n    input_string.erase(new_end, input_string.end());\r\n\r\n    while (input_string[input_string.length() - 1] == \' \') {\r\n        input_string.pop_back();\r\n    }\r\n\r\n    vector<string> splits;\r\n    char delimiter = \' \';\r\n\r\n    size_t i = 0;\r\n    size_t pos = input_string.find(delimiter);\r\n\r\n    while (pos != string::npos) {\r\n        splits.push_back(input_string.substr(i, pos - i));\r\n\r\n        i = pos + 1;\r\n        pos = input_string.find(delimiter, i);\r\n    }\r\n\r\n    splits.push_back(input_string.substr(i, min(pos, input_string.length()) - i + 1));\r\n\r\n    return splits;\r\n}\r\n',0.07,8,'cpp',NULL,2),(1,2,'2019-09-19 11:37:00','import java.util.*;\r\n\r\npublic class Solution {\r\n    \r\n    public static int[] rotateArray(int[] arr, int d){\r\n        // Because the constraints state d < n, we need not concern ourselves with shifting > n units.\r\n        int n = arr.length;\r\n        \r\n        // Create a temporary d-element array to store elements shifted to the left of index 0:\r\n        int[] temp_arr = Arrays.copyOfRange(arr, 0, d);\r\n        \r\n        // Shift elements from indices d through n to indices 0 through d - 1:\r\n        for(int i = d; i < n; i++) {\r\n            arr[i - d] = arr[i];\r\n        }\r\n        \r\n        // Copy the d shifted elements from the temporary array back to the original array:\r\n        for(int i = n - d; i < n; i++) {\r\n            arr[i] = temp_arr[i-n+d];\r\n        }\r\n        \r\n        return arr;\r\n    }\r\n    \r\n    public static void main(String[] args) {\r\n        \r\n        Scanner scanner = new Scanner(System.in);\r\n        int n = scanner.nextInt();\r\n        int d = scanner.nextInt();\r\n        int[] numbers = new int[n];\r\n        \r\n        // Fill initial array:\r\n        for(int i = 0; i < n; i++){\r\n            numbers[i] = scanner.nextInt();\r\n        }\r\n        \r\n        // Rotate array by d elements:\r\n        numbers = rotateArray(numbers, d);\r\n        \r\n        // Print array\'s elements as a single line of space-separated values:\r\n        for(int i : numbers) {\r\n            System.out.print(i + \" \");\r\n        }\r\n        System.out.println();\r\n        \r\n        scanner.close();\r\n    } \r\n        \r\n}\r\n',0,0,'java','CE',3),(1,2,'2019-09-19 11:38:04','import java.util.*;\r\n class Solution {\r\n    \r\n    public static int[] rotateArray(int[] arr, int d){\r\n        // Because the constraints state d < n, we need not concern ourselves with shifting > n units.\r\n        int n = arr.length;\r\n        \r\n        // Create a temporary d-element array to store elements shifted to the left of index 0:\r\n        int[] temp_arr = Arrays.copyOfRange(arr, 0, d);\r\n        \r\n        // Shift elements from indices d through n to indices 0 through d - 1:\r\n        for(int i = d; i < n; i++) {\r\n            arr[i - d] = arr[i];\r\n        }\r\n        \r\n        // Copy the d shifted elements from the temporary array back to the original array:\r\n        for(int i = n - d; i < n; i++) {\r\n            arr[i] = temp_arr[i-n+d];\r\n        }\r\n        \r\n        return arr;\r\n    }\r\n    \r\n    public static void main(String[] args) {\r\n        \r\n        Scanner scanner = new Scanner(System.in);\r\n        int n = scanner.nextInt();\r\n        int d = scanner.nextInt();\r\n        int[] numbers = new int[n];\r\n        \r\n        // Fill initial array:\r\n        for(int i = 0; i < n; i++){\r\n            numbers[i] = scanner.nextInt();\r\n        }\r\n        \r\n        // Rotate array by d elements:\r\n        numbers = rotateArray(numbers, d);\r\n        \r\n        // Print array\'s elements as a single line of space-separated values:\r\n        for(int i : numbers) {\r\n            System.out.print(i + \" \");\r\n        }\r\n        System.out.println();\r\n        \r\n        scanner.close();\r\n    } \r\n        \r\n}\r\n',0.168,13,'java',NULL,4),(1,2,'2019-09-19 11:47:01','import java.util.*;\r\n class Solution {\r\n    \r\n    public static int[] rotateArray(int[] arr, int d){\r\n        // Because the constraints state d < n, we need not concern ourselves with shifting > n units.\r\n        int n = arr.length;\r\n        \r\n        // Create a temporary d-element array to store elements shifted to the left of index 0:\r\n        int[] temp_arr = Arrays.copyOfRange(arr, 0, d);\r\n        \r\n        // Shift elements from indices d through n to indices 0 through d - 1:\r\n        for(int i = d; i < n; i++) {\r\n            arr[i - d] = arr[i];\r\n        }\r\n        \r\n        // Copy the d shifted elements from the temporary array back to the original array:\r\n        for(int i = n - d; i < n; i++) {\r\n            arr[i] = temp_arr[i-n+d];\r\n        }\r\n        \r\n        return arr;\r\n    }\r\n    \r\n    public static void main(String[] args) {\r\n        \r\n        Scanner scanner = new Scanner(System.in);\r\n        int n = scanner.nextInt();\r\n        int d = scanner.nextInt();\r\n        int[] numbers = new int[n];\r\n        \r\n        // Fill initial array:\r\n        for(int i = 0; i < n; i++){\r\n            numbers[i] = scanner.nextInt();\r\n        }\r\n        \r\n        // Rotate array by d elements:\r\n        numbers = rotateArray(numbers, d);\r\n        \r\n        // Print array\'s elements as a single line of space-separated values:\r\n        for(int i : numbers) {\r\n            System.out.print(i + \" \");\r\n        }\r\n        System.out.println();\r\n        \r\n        scanner.close();\r\n    } \r\n        \r\n}\r\n',0.168,13,'java','RE',6),(4,2,'2019-09-19 11:47:04','#include<iostream>\nusing namespace std;\nint main(){\n    int n;\n  cin>>n;\n  cout<<n*20;\n    return 0;\n}',0,0,'c','CE',7),(4,2,'2019-09-19 11:48:00','#include<iostream>\nusing namespace std;\nint main(){\n    int n;\n  cin>>n;\n  cout<<n*20;\n    return 0;\n}',0.006,1,'cpp','AC',8);
/*!40000 ALTER TABLE `submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL,
  `gender` set('male','female','other') DEFAULT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `college` varchar(100) NOT NULL,
  `points` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Harshit Garg','harshit','harshitgarg3092000@gmail.com','6706573e67f456089891aa8ad2fd0c9711640c85','male','firozabad','uttar pradesh','mnnit',5000),(2,'Sujeet Kushwaha','su050300','ks99737@gmail.com','329e9c785ece4cc43fc7da27759c957ca8b1788d','male','Allahabad','UTTAR PRADESH','Motilal Nehru National Institute of Technology',1100),(6,'Shivam Gupta','shivam','sgrocket6@gmail.com','6706573e67f456089891aa8ad2fd0c9711640c85','male','Allahabad','uttar pradesh','mnnit',5000),(7,'SHIVAM GUPTA','shivam123','samsoldeinstein@gmail.com','6706573e67f456089891aa8ad2fd0c9711640c85','male','AZAMGARH','Uttar Pradesh','mnnit',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verified_contest_details`
--

DROP TABLE IF EXISTS `verified_contest_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verified_contest_details` (
  `contest_id` int(6) NOT NULL AUTO_INCREMENT,
  `user_id` int(6) NOT NULL,
  `contest_name` varchar(30) NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_date` date NOT NULL,
  `end_time` time NOT NULL,
  `org_type` set('school','company','non-profit','other') NOT NULL,
  `org_name` tinytext NOT NULL,
  `date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `description` text NOT NULL,
  `prizes` text NOT NULL,
  `rules` text NOT NULL,
  `scoring` text NOT NULL,
  PRIMARY KEY (`contest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verified_contest_details`
--

LOCK TABLES `verified_contest_details` WRITE;
/*!40000 ALTER TABLE `verified_contest_details` DISABLE KEYS */;
INSERT INTO `verified_contest_details` VALUES (1,6,'Webster','2019-09-20','09:00:00','2019-09-21','00:00:00','school','mnnit','2019-09-20','Webster1','2d58a48232318d157738d6d6490eb749748908fe','This contest is being organized by mnnit','There are a lot of exciting prizes waiting for you like codespark t-shirts and codespark stickers and other goodies.','Do not copy code otherwise you will be disqualified from the contest.','Each question contains equal marks and can be arranged in any order of difficulty.');
/*!40000 ALTER TABLE `verified_contest_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verified_problems`
--

DROP TABLE IF EXISTS `verified_problems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verified_problems` (
  `problem_id` int(6) NOT NULL AUTO_INCREMENT,
  `user_id` int(6) NOT NULL,
  `problem_name` varchar(30) NOT NULL,
  `difficulty` set('easy','medium','hard') DEFAULT NULL,
  `subdomain` set('strings','sorting','search','arrays','graph','greedy','dp','bitman','game','recursion','algorithm','np') NOT NULL,
  `time_limit` float NOT NULL,
  `memory_limit` int(3) NOT NULL,
  `problem_statement` text NOT NULL,
  `input` text NOT NULL,
  `constraints` text NOT NULL,
  `output` text NOT NULL,
  `sample_in` text NOT NULL,
  `sample_out` text NOT NULL,
  `explanation` text NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`problem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verified_problems`
--

LOCK TABLES `verified_problems` WRITE;
/*!40000 ALTER TABLE `verified_problems` DISABLE KEYS */;
INSERT INTO `verified_problems` VALUES (1,2,'left rotation','easy','arrays',1,256,'<p>A left rotation operation on an array of size n shifts each of the array\'s elements&nbsp; 1 unit to the left. For example, if&nbsp; 2 left rotations are performed on array [1,2,3,4,5 ], then the array would become [3,4,5,1,2].</p>\r\n<p>&nbsp;</p>\r\n<p>Given an array of n integers and a number,d , perform d left rotations on the array. Then print the updated array as a single line of space-separated integers.</p>','<p>The first line contains two space-separated integers denoting the respective values of n (the number of integers) and d (the number of left rotations you must perform).</p>\r\n<p>The second line contains n&nbsp; space-separated integers describing the respective elements of the array\'s initial state.</p>','<p>1&lt;=n&lt;=100000.</p>\r\n<p>1&lt;=d&lt;=n.</p>\r\n<p>1&lt;=ai&lt;=1000000.</p>','<p>Print a single line of n space-separated integers denoting the final state of the array after performing d left rotations.</p>','<p>5 4</p>\r\n<p>1 2 3 4 5</p>','<p>5 1 2 3 4</p>','<p>When we perform&nbsp; left rotations, the array undergoes the following sequence of changes:</p>\r\n<p>[1,2,3,4,5]-&gt;[2,3,4,5,1]-&gt;[3,4,5,1,2]-&gt;[4,5,1,2,3]-&gt;[5,1,2,3,4].</p>\r\n<p>Thus, we print the array\'s final state as a single line of space-separated values, which is 5 1 2 3 4.</p>','2019-09-11'),(2,2,'median updates','hard','arrays',1,256,'<p>The median of M numbers is defined as the middle number after sorting them in order if M is odd. Or it is the average of the middle two numbers if M is even. You start with an empty number list. Then, you can add numbers to the list, or remove existing numbers from it. After each add or remove operation, output the median.</p>\r\n<p>&nbsp;</p>\r\n<p>Example:</p>\r\n<p>For a set of M=5 numbers 9,2,8,4,1 the median is the third number in the sorted set 1,2,4,8,9 , which is 4. Similarly, for a set of M=4 numbers,5,2,10,4 , the median is the average of the second and the third element in the sorted set 2,4,5,10 , which is .&nbsp; (4+5)/2=4.5.</p>','<p>The first line is an integer, N, that indicates the number of operations. Each of the next N lines is either a x or r x. a x indicates that x is added to the set, and r x indicates that x is removed from the set.</p>','<p>0&lt;=N&lt;=100000<br style=\"overflow-wrap: break-word; word-break: break-word; color: #576871; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #576871; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ffffff;\">For each&nbsp;</span><span style=\"border: 0px; font-style: inherit; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; overflow-wrap: break-word; word-break: break-word; color: #576871; background-color: #ffffff;\">a x</span><span style=\"color: #576871; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ffffff;\">&nbsp;or&nbsp;</span><span style=\"border: 0px; font-style: inherit; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; overflow-wrap: break-word; word-break: break-word; color: #576871; background-color: #ffffff;\">r x</span><span style=\"color: #576871; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ffffff;\">, x </span><span style=\"color: #576871; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ffffff;\">will always be a signed integer (which will fit in 32 bits).</span></p>','<p><span style=\"color: #576871; font-family: OpenSans, Arial, Helvetica, sans-serif;\"><span style=\"font-size: 14px;\">For each operation: If the operation is add, output the median after adding x in a single line. If the operation is remove and the number x is not in the list, output Wrong! in a single line. If the operation is remove and the number x is in the list, output the median after deleting x in a single line. (If the result is an integer DO NOT output decimal point. And if the result is a real number, DO NOT output trailing 0s.)</span></span></p>','<p>7&nbsp;&nbsp;</p>\r\n<p>r 1&nbsp;&nbsp;</p>\r\n<p>a 1&nbsp;&nbsp;</p>\r\n<p>a 2&nbsp;&nbsp;</p>\r\n<p>a 1&nbsp;&nbsp;</p>\r\n<p>r 1&nbsp;&nbsp;</p>\r\n<p>r 2&nbsp;&nbsp;</p>\r\n<p>r 1&nbsp;&nbsp;</p>','<p>Wrong!&nbsp;&nbsp;</p>\r\n<p>1&nbsp;&nbsp;</p>\r\n<p>1.5&nbsp;&nbsp;</p>\r\n<p>1&nbsp;&nbsp;</p>\r\n<p>1.5&nbsp;&nbsp;</p>\r\n<p>1&nbsp;&nbsp;</p>\r\n<p>Wrong!</p>','<p><span style=\"color: #576871; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ffffff;\">As evident from the last line of the input, if after remove operation the list becomes empty, you have to print&nbsp;</span><span style=\"border: 0px; font-style: inherit; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 14px; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; overflow-wrap: break-word; word-break: break-word; color: #576871; background-color: #ffffff;\">Wrong!</span><span style=\"color: #576871; font-family: OpenSans, Arial, Helvetica, sans-serif; font-size: 14px; background-color: #ffffff;\">.</span></p>','2019-09-11'),(3,2,'array pairs','hard','arrays',1,256,'<p>Consider an array of n&nbsp; integers,A={a1,a2,a3,....an} . Find and print the total number of (i,j) pairs such that ai*aj&lt;=max(a1,a1+1,....aj)&nbsp; where i&lt;j .</p>','<p>The first line contains an integer,n , denoting the number of elements in the array.</p>\r\n<p>The second line consists of n space-separated integers describing the respective values of a1,a2,a3,a4........,an.</p>','<p>1&lt;=n&lt;=500000.</p>\r\n<p>1&lt;=ai&lt;=1000000000.</p>','<p>Print a long integer denoting the total number (i,j) pairs satisfying&nbsp;&nbsp;ai*aj&lt;=max(a1,a1+1,....aj) where i&lt;j.</p>','<p>5&nbsp;&nbsp;</p>\r\n<p>1 1 2 4 2</p>','<pre style=\"border: none; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: 20px; font-family: var(--font-family-input); font-size: 14px; margin-top: 12px; margin-bottom: 0px; outline: 0px; padding: 20px; vertical-align: baseline; color: #0e141e; border-radius: 2px; word-break: break-word; overflow-wrap: break-word; white-space: pre-wrap; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-x: auto;\"><code style=\"border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: var(--font-family-input); font-size: 1em; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: var(--color-text-medium-dark); background: transparent; overflow-wrap: break-word; word-break: break-word; overflow-x: auto; word-spacing: -2px;\">8</code></pre>','<p>There are eight pairs of indices satisfying the given criteria:(1,2) ,(1,3) ,(1,4) ,(1,5) ,(2,3) ,(2,4) ,(2,5)&nbsp; and(3,5) . Thus, we print&nbsp; as our answer.</p>','2019-09-20'),(4,6,'jabardast problem','hard','strings',2,256,'<p>solve the problem.</p>','<p>put anything.</p>','<p>no constraints</p>','<p>anything</p>','<p>1 2 3 4</p>','<p>4 3 2 1</p>','<p>reverse</p>','2019-09-20');
/*!40000 ALTER TABLE `verified_problems` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-20  2:05:52
