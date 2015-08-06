/*
this code was writen by Ernie on 8/6/2015
Basically keeping track of the recuiters and keep myself from building a
mess of folder fill with notes and numbers on my desk.
*/
Drop Table Atest_Calls_Message;
Drop Table Atest_Employee;
Drop Table Atest_Log_SignIn;
Drop Table Atest_Company;



CREATE TABLE ATest_Company
  (
    Comp_ID   VARCHAR2 (4000 BYTE) NOT NULL ,
    Comp_Name VARCHAR2 (120 CHAR) ,
    Comp_WEBD VARCHAR2 (200 CHAR)
  ) ;
ALTER TABLE ATest_Company ADD CONSTRAINT ATest_Company_PK 
PRIMARY KEY ( Comp_ID ) ;


CREATE TABLE Atest_Calls_Message
  (
    CM_ID                      VARCHAR2 (4000 BYTE) NOT NULL ,
    MESSAGE                    VARCHAR2 (4000) ,
    Date_Time_Rec              DATE ,
    Atest_Employee_Employee_ID VARCHAR2 (4000 BYTE) NOT NULL ,
    Atest_Log_SignIn_Log_ID    VARCHAR2 (4000 BYTE) NOT NULL ,
    ATest_Company_Comp_ID      VARCHAR2 (4000 BYTE) NOT NULL
  ) ;
ALTER TABLE Atest_Calls_Message ADD CONSTRAINT Atest_Calls_Message_PK 
PRIMARY KEY ( CM_ID ) ;


CREATE TABLE Atest_Employee
  (
    Employee_ID           VARCHAR2 (4000 BYTE) NOT NULL ,
    F_name                VARCHAR2 (50 CHAR) NOT NULL ,
    L_name                VARCHAR2 (50 CHAR) NOT NULL ,
    Phone_Work            NUMBER (11) NOT NULL ,
    Phone_Ext             NUMBER (4) NOT NULL ,
    Phone_Cell            NUMBER (11) NOT NULL ,
    Emp_Postion_Title     VARCHAR2 (30 CHAR) NOT NULL ,
    Emp_Email             VARCHAR2 (100 CHAR) NOT NULL ,
    ATest_Company_Comp_ID VARCHAR2 (4000 BYTE) NOT NULL
  ) ;
ALTER TABLE Atest_Employee ADD CONSTRAINT Atest_Employee_PK 
PRIMARY KEY ( Employee_ID ) ;


CREATE TABLE Atest_Log_SignIn
  (
    Log_ID   VARCHAR2 (4000 BYTE) NOT NULL ,
    Log_Name VARCHAR2 (50 CHAR) NOT NULL ,
    Log_Pass VARCHAR2 (50 CHAR) NOT NULL ,
    "E-mail_Address" VARCHAR2 (4000 BYTE)
  ) ;
ALTER TABLE Atest_Log_SignIn ADD CONSTRAINT Atest_Log_SignIn_PK 
PRIMARY KEY ( Log_ID ) ;


ALTER TABLE Atest_Calls_Message 
ADD CONSTRAINT CM_Company_FK 
FOREIGN KEY ( ATest_Company_Comp_ID )
REFERENCES ATest_Company ( Comp_ID ) ;

ALTER TABLE Atest_Calls_Message 
ADD CONSTRAINT CM_Employee_FK 
FOREIGN KEY ( Atest_Employee_Employee_ID ) 
REFERENCES Atest_Employee ( Employee_ID ) ;

ALTER TABLE Atest_Calls_Message 
ADD CONSTRAINT CM_Log_SignIn_FK 
FOREIGN KEY ( Atest_Log_SignIn_Log_ID ) 
REFERENCES Atest_Log_SignIn ( Log_ID ) ;


ALTER TABLE Atest_Employee 
ADD CONSTRAINT EM_Company_FK 
FOREIGN KEY ( ATest_Company_Comp_ID ) 
REFERENCES ATest_Company ( Comp_ID ) ;
