/*
this code was writen by Ernie on 8/3/15
Basically keeping track of the recuiters and keep myself from building a
mess of folder fill with notes and numbers on my desk.
*/
Drop Table Atest_Company;
Drop Table Atest_Employee;
Drop Table Atest_Log_SignIn;
Drop Table Atest_Calls_Message;

CREATE TABLE ATest_Company
(
Comp_ID VARCHAR(4000 byte) NOT NULL,
Comp_Name VARCHAR(120 CHAR),
Comp_WEBD VARCHAR(200 CHAR),
CONSTRAINT Comp_ID_pk PRIMARY KEY (Comp_ID)
);

CREATE TABLE Atest_Employee
(
Employee_ID VARCHAR(4000 byte)	NOT NULL,
F_name VARCHAR(50 CHAR)	NOT NULL,
L_name VARCHAR(50 CHAR)	NOT NULL,
Phone_Work NUMBER(11) NOT NULL,
Phone_Ext NUMBER(4)	NOT NULL,
Phone_Cell NUMBER(11) NOT NULL,
Emp_Postion_Title VARCHAR(30 CHAR) NOT NULL,
Emp_Email VARCHAR(100 CHAR) NOT NULL,
CONSTRAINT Employee_ID_pk PRIMARY KEY (Employee_ID)
);

CREATE TABLE Atest_Log_SignIn
(
Log_ID VARCHAR(4000 byte) NOT NULL,
Log_Name VARCHAR(50 CHAR) NOT NULL,
Log_Pass VARCHAR(50 CHAR) NOT NULL,
PRIMARY KEY (Log_ID)
);


CREATE TABLE Atest_Calls_Message
(
CM_ID VARCHAR(4000 byte) NOT NULL,
Message VARCHAR(400 byte),
Date_Time_Rec DATE,
CONSTRAINT CM_ID_pk PRIMARY KEY (CM_ID),
CONSTRAINT fk_Comp_ID FOREIGN KEY Comp_ID) REFERENCES Atest_Company(Comp_ID),
CONSTRAINT fk_Employee_ID FOREIGN KEY (Employee_ID) REFERENCES Atest_Employee (Employee_ID),
CONSTRAINT fk_Log_ID FOREIGN KEY (Log_ID) REFERENCES Atest_Log_SignIn (Log_ID)
);