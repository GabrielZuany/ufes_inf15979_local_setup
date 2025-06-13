-- Adminer 5.3.0 MySQL 8.4.5 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `db_banking` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_banking`;

-- Access denied for user &#039;aluno&#039;@&#039;%&#039; to database &#039;db_banking&#039;
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `account_number` varchar(15) NOT NULL,
  `branch_name` varchar(15) NOT NULL,
  `balance` int NOT NULL,
  PRIMARY KEY (`account_number`),
  UNIQUE KEY `account_number` (`account_number`),
  KEY `branch_name` (`branch_name`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`branch_name`) REFERENCES `branch` (`branch_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `account` (`account_number`, `branch_name`, `balance`) VALUES
('A-101',	'Downtown',	500),
('A-102',	'Perryridge',	400),
('A-201',	'Perryridge',	900),
('A-215',	'Mianus',	700),
('A-217',	'Brighton',	750),
('A-222',	'Redwood',	700),
('A-305',	'Round Hill',	350),
('A-333',	'Central',	850),
('A-444',	'North Town',	625);

DROP TABLE IF EXISTS `borrower`;
CREATE TABLE `borrower` (
  `customer_name` varchar(15) NOT NULL,
  `loan_number` varchar(15) NOT NULL,
  PRIMARY KEY (`customer_name`,`loan_number`),
  KEY `loan_number` (`loan_number`),
  CONSTRAINT `borrower_ibfk_1` FOREIGN KEY (`customer_name`) REFERENCES `customer` (`customer_name`),
  CONSTRAINT `borrower_ibfk_2` FOREIGN KEY (`loan_number`) REFERENCES `loan` (`loan_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `borrower` (`customer_name`, `loan_number`) VALUES
('Smith',	'L-11'),
('Jackson',	'L-14'),
('Hayes',	'L-15'),
('Adams',	'L-16'),
('Jones',	'L-17'),
('Williams',	'L-17'),
('McBride',	'L-20'),
('Smith',	'L-21'),
('Smith',	'L-23'),
('Curry',	'L-93');

DROP TABLE IF EXISTS `branch`;
CREATE TABLE `branch` (
  `branch_name` varchar(15) NOT NULL,
  `branch_city` varchar(15) NOT NULL,
  `assets` int NOT NULL,
  PRIMARY KEY (`branch_name`),
  UNIQUE KEY `branch_name` (`branch_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `branch` (`branch_name`, `branch_city`, `assets`) VALUES
('Brighton',	'Brooklyn',	7000000),
('Central',	'Rye',	400280),
('Downtown',	'Brooklyn',	900000),
('Mianus',	'Horseneck',	400200),
('North Town',	'Rye',	3700000),
('Perryridge',	'Horseneck',	1700000),
('Pownal',	'Bennington',	400000),
('Redwood',	'Palo Alto',	2100000),
('Round Hill',	'Horseneck',	8000000);

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_name` varchar(15) NOT NULL,
  `customer_street` varchar(12) NOT NULL,
  `customer_city` varchar(15) NOT NULL,
  PRIMARY KEY (`customer_name`),
  UNIQUE KEY `customer_name` (`customer_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `customer` (`customer_name`, `customer_street`, `customer_city`) VALUES
('Adams',	'Spring',	'Pittsfield'),
('Brooks',	'Senator',	'Brooklyn'),
('Curry',	'North',	'Rye'),
('Glenn',	'Sand Hill',	'Woodside'),
('Green',	'Walnut',	'Stamford'),
('Hayes',	'Main',	'Harrison'),
('Jackson',	'University',	'Salt Lake'),
('Johnson',	'Alma',	'Palo Alto'),
('Jones',	'Main',	'Harrison'),
('Lindsay',	'Park',	'Pittsfield'),
('Majeris',	'First',	'Rye'),
('McBride',	'Safety',	'Rye'),
('Smith',	'Main',	'Rye'),
('Turner',	'Putnam',	'Stamford'),
('Williams',	'Nassau',	'Princeton');

DROP TABLE IF EXISTS `depositor`;
CREATE TABLE `depositor` (
  `customer_name` varchar(15) NOT NULL,
  `account_number` varchar(15) NOT NULL,
  PRIMARY KEY (`customer_name`,`account_number`),
  KEY `account_number` (`account_number`),
  CONSTRAINT `depositor_ibfk_1` FOREIGN KEY (`account_number`) REFERENCES `account` (`account_number`),
  CONSTRAINT `depositor_ibfk_2` FOREIGN KEY (`customer_name`) REFERENCES `customer` (`customer_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `depositor` (`customer_name`, `account_number`) VALUES
('Hayes',	'A-101'),
('Johnson',	'A-101'),
('Hayes',	'A-102'),
('Johnson',	'A-201'),
('Smith',	'A-215'),
('Jones',	'A-217'),
('Lindsay',	'A-222'),
('Turner',	'A-305'),
('Majeris',	'A-333'),
('Smith',	'A-444');

DROP TABLE IF EXISTS `loan`;
CREATE TABLE `loan` (
  `loan_number` varchar(15) NOT NULL,
  `branch_name` varchar(15) NOT NULL,
  `amount` int NOT NULL,
  PRIMARY KEY (`loan_number`),
  UNIQUE KEY `loan_number` (`loan_number`),
  KEY `branch_name` (`branch_name`),
  CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`branch_name`) REFERENCES `branch` (`branch_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `loan` (`loan_number`, `branch_name`, `amount`) VALUES
('L-11',	'Round Hill',	900),
('L-14',	'Downtown',	1500),
('L-15',	'Perryridge',	1500),
('L-16',	'Perryridge',	1300),
('L-17',	'Downtown',	1000),
('L-20',	'North Town',	7500),
('L-21',	'Central',	570),
('L-23',	'Redwood',	2000),
('L-93',	'Mianus',	500);

-- 2025-06-13 13:13:31 UTC
