  CREATE DATABASE QUAN_LY_CHI_TIEU
USE QUAN_LY_CHI_TIEU

CREATE TABLE USER_
(
	ID_USER INT IDENTITY(1,1) PRIMARY KEY,
	FULL_NAME NVARCHAR(MAX),
	NUMBER_PHONE NVARCHAR(20),
	MAIL NVARCHAR(200)
)

CREATE TABLE CATEGORY
(
	CATEGORY_ID INT IDENTITY(1,1) PRIMARY KEY,
	CATEGORY_NAME NVARCHAR(MAX)
)

CREATE TABLE UNIT
(
	UNIT_ID INT IDENTITY(1,1) PRIMARY KEY,
	UNIT_NAME NVARCHAR(MAX)
)

CREATE TABLE INPUT
(
	INPUT_ID INT IDENTITY(1,1) PRIMARY KEY,
	DATE_INPUT DATETIME
)

CREATE TABLE OUTPUT
(
	OUTPUT_ID INT IDENTITY(1,1) PRIMARY KEY,
	DATE_OUTPUT DATETIME
)

CREATE TABLE ACCOUNT 
(
	ACCOUNT_ID INT IDENTITY(1,1) PRIMARY KEY,
	ID_USER INT,
	ACCOUNT_PASSWORD NVARCHAR(200),
	ACCOUNT_TYPE NVARCHAR(50),
	DATE_CREATED DATETIME

	CONSTRAINT FK_ACC_USER FOREIGN KEY (ID_USER) REFERENCES USER_ (ID_USER)
)

ALTER TABLE ACCOUNT ADD
ACCOUNT_USERNAME NVARCHAR(200)

CREATE TABLE MONEY_
(	
	MONEY_ID INT IDENTITY(1,1) PRIMARY KEY,
	AMOUNT FLOAT DEFAULT 0,
	UNIT_ID INT 
)


CREATE TABLE INPUT_INFOR
(
	INPUT_INFOR_ID INT IDENTITY(1,1) PRIMARY KEY,
	INPUT_ID INT CONSTRAINT FK_INF_IN FOREIGN KEY (INPUT_ID) REFERENCES INPUT (INPUT_ID),
	ACCOUNT_ID INT CONSTRAINT FK_INF_ACC FOREIGN KEY (ACCOUNT_ID) REFERENCES ACCOUNT (ACCOUNT_ID),
	MONEY_ID INT CONSTRAINT FK_INF_MN FOREIGN KEY (MONEY_ID) REFERENCES MONEY_ (MONEY_ID),
	TYPE_INPUT NVARCHAR(50),
	PERIODIC NVARCHAR(50)
)

CREATE TABLE OUTPUT_INFOR
(
	OUTPUT_INFOR_ID INT IDENTITY(1,1) PRIMARY KEY,
	OUTPUT_ID INT CONSTRAINT FK_OUF_OU FOREIGN KEY (OUTPUT_ID) REFERENCES OUTPUT (OUTPUT_ID),
	ACCOUNT_ID INT CONSTRAINT FK_OUF_ACC FOREIGN KEY (ACCOUNT_ID) REFERENCES ACCOUNT (ACCOUNT_ID),
	MONEY_ID INT CONSTRAINT FK_OUF_MN FOREIGN KEY (MONEY_ID) REFERENCES MONEY_ (MONEY_ID),
	TYPE_OUTPUT NVARCHAR(50),
	PAY NVARCHAR(20)
)

ALTER TABLE MONEY_
DROP CONSTRAINT FK_MN_CTGR;

ALTER TABLE MONEY_
DROP COLUMN CATEGORY_ID

DROP TABLE UNIT

DROP TABLE CATEGORY

ALTER TABLE MONEY_
DROP CONSTRAINT FK_MN_UN;
