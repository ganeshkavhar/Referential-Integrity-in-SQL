--PARENT TABLE--
CREATE TABLE CUSTOM(
 ID INT NOT NULL,
 NAME VARCHAR (20) NOT NULL,
 AGE INT NOT NULL, 
 PRIMARY KEY (ID)
);

--INSERTING RECORDS--
INSERT INTO CUSTOM
(ID,NAME,AGE)VALUES(1,'SAM',23);
INSERT INTO CUSTOM
(ID,NAME,AGE)VALUES(2,'SAMS',23);
INSERT INTO CUSTOM
(ID,NAME,AGE)VALUES(3,'SAMF',23);

--DISPLAY RECORDS--
SELECT * FROM CUSTOM;



--CHILD TABLE--
CREATE TABLE ORDEd (
 ID INT NOT NULL,
 CUSTOMER_ID INT references CUSTOMERS(ID),
 AMOUNT number,
 PRIMARY KEY (ID)
);

--INSERTING RECORDS--
INSERT INTO ORDEd
(ID,CUSTOMER_ID,AMOUNT)VALUES(1,1,2003);
INSERT INTO ORDEd
(ID,CUSTOMER_ID,AMOUNT)VALUES(2,2,20303);
INSERT INTO ORDEd
(ID,CUSTOMER_ID,AMOUNT)VALUES(3,3,20203);

--DISPLAY RECORDS IN CHILD TABLE--
SELECT * FROM ORDEd;


--SCHEMA PRACTICE--
SELECT C.NAME,C.AGE,O.AMOUNT
FROM CUSTOM C 
JOIN ORDED O
ON C.ID=O.ID;

--SCHEMA PRACTICE--
SELECT C.NAME,O.AMOUNT,O.CUSTOMER_ID
FROM CUSTOM C 
JOIN ORDED O
ON C.ID=O.ID;

SELECT C.NAME,O.AMOUNT
FROM CUSTOM C 
JOIN ORDED O
ON C.ID=O.ID;



