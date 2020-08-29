CREATE TABLE `signatures` (
  `my_code` varchar(20) NOT NULL,
  `my_name` varchar(255) DEFAULT NULL,
  `my_signature` blob,
  `my_balance` double DEFAULT NULL,
  PRIMARY KEY (`my_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `transactions` (
  `TRANS_DATE` date NOT NULL,
  `TRANS_DEBIT` double DEFAULT NULL,
  `TRANS_CREDIT` double DEFAULT NULL,
  `TRANS_BALANCE` double DEFAULT NULL,
  `TRANS_CUST_CODE` varchar(20) NOT NULL,
  PRIMARY KEY (`TRANS_CUST_CODE`,`TRANS_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `toys` (
  `TOY_CODE` varchar(20) NOT NULL,
  `TOY_DESCR` varchar(255) DEFAULT NULL,
  `TOY_IMAGE` blob,
  `TOY_CUST_CODE` int NOT NULL,
  PRIMARY KEY (`TOY_CUST_CODE`,`TOY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

INSERT INTO `signatures` (`my_code`,`my_name`,`my_signature`,`my_balance`) VALUES ('1','George Kalo',NULL,23);
INSERT INTO `signatures` (`my_code`,`my_name`,`my_signature`,`my_balance`) VALUES ('2','Elvis President',NULL,120);
INSERT INTO `signatures` (`my_code`,`my_name`,`my_signature`,`my_balance`) VALUES ('3','New Customer',NULL,NULL);

INSERT INTO `transactions` (`TRANS_DATE`,`TRANS_DEBIT`,`TRANS_CREDIT`,`TRANS_BALANCE`,`TRANS_CUST_CODE`) VALUES ('2020-04-25',10,NULL,10,'1');
INSERT INTO `transactions` (`TRANS_DATE`,`TRANS_DEBIT`,`TRANS_CREDIT`,`TRANS_BALANCE`,`TRANS_CUST_CODE`) VALUES ('2020-04-28',20,5,25,'1');
INSERT INTO `transactions` (`TRANS_DATE`,`TRANS_DEBIT`,`TRANS_CREDIT`,`TRANS_BALANCE`,`TRANS_CUST_CODE`) VALUES ('2020-04-30',NULL,2,23,'1');
INSERT INTO `transactions` (`TRANS_DATE`,`TRANS_DEBIT`,`TRANS_CREDIT`,`TRANS_BALANCE`,`TRANS_CUST_CODE`) VALUES ('2020-05-01',80,NULL,80,'2');
INSERT INTO `transactions` (`TRANS_DATE`,`TRANS_DEBIT`,`TRANS_CREDIT`,`TRANS_BALANCE`,`TRANS_CUST_CODE`) VALUES ('2020-06-19',40,NULL,120,'2');

INSERT INTO `toys` (`TOY_CODE`,`TOY_DESCR`,`TOY_IMAGE`,`TOY_CUST_CODE`) VALUES ('1','Buzz Lightyear',NULL,1);
INSERT INTO `toys` (`TOY_CODE`,`TOY_DESCR`,`TOY_IMAGE`,`TOY_CUST_CODE`) VALUES ('2','Rex',NULL,1);
INSERT INTO `toys` (`TOY_CODE`,`TOY_DESCR`,`TOY_IMAGE`,`TOY_CUST_CODE`) VALUES ('3','Transformer',NULL,1);
INSERT INTO `toys` (`TOY_CODE`,`TOY_DESCR`,`TOY_IMAGE`,`TOY_CUST_CODE`) VALUES ('1','Buzz Lightyear',NULL,2);
INSERT INTO `toys` (`TOY_CODE`,`TOY_DESCR`,`TOY_IMAGE`,`TOY_CUST_CODE`) VALUES ('2','Rex',NULL,2);

commit;