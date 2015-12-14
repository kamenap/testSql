-- Generated by Oracle SQL Developer Data Modeler 4.0.0.799
--   at:        2013-04-01 16:31:10 EEST
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




CREATE TABLE Books
  (
    book_id           VARCHAR2 NOT NULL ,
    title             VARCHAR2 NOT NULL ,
    author_last_name  VARCHAR2 NOT NULL ,
    author_first_name VARCHAR2 ,
    rating            NUMBER (2)
  ) ;
ALTER TABLE Books ADD CONSTRAINT "Books PK" PRIMARY KEY
(
  book_id
)
;

CREATE TABLE Patrons
  (
    patron_id      NUMBER NOT NULL ,
    last_name      VARCHAR2 NOT NULL ,
    first_name     VARCHAR2 ,
    street_address VARCHAR2 ,
    city           VARCHAR2 ,
    state          VARCHAR2 ,
    zip            VARCHAR2 ,
    location MDSYS.SDO_GEOMETRY
  ) ;
ALTER TABLE Patrons ADD CONSTRAINT "Patrons PK" PRIMARY KEY
(
  patron_id
)
;

CREATE TABLE TABLE_4
  (
    Column_1 UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    Column_2 UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    Column_3 UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    Patrons_patron_id NUMBER NOT NULL
  ) ;

CREATE TABLE TABLE_7
  (
    Column_1 UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    Column_2 UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    Column_3 UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
  ) ;

CREATE TABLE TABLE_T
  (
    Column_1 UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    Column_2 UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    Column_3 UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
  ) ;

CREATE TABLE TABLE_T2
  (
    Column_1 UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    Column_2 UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
    ,
    Column_3 UNKNOWN
    --  ERROR: Datatype UNKNOWN is not allowed
  ) ;

CREATE TABLE Transactions
  (
    transaction_id   NUMBER NOT NULL ,
    transaction_date DATE NOT NULL ,
    transaction_type NUMBER NOT NULL ,
    book_id          VARCHAR2 NOT NULL ,
    patron_id        NUMBER NOT NULL
  ) ;
ALTER TABLE Transactions ADD CONSTRAINT "Transactions PK" PRIMARY KEY
(
  transaction_id
)
;

ALTER TABLE TABLE_4 ADD CONSTRAINT TABLE_4_Patrons_FK FOREIGN KEY ( Patrons_patron_id ) REFERENCES Patrons ( patron_id ) ;

ALTER TABLE Transactions ADD CONSTRAINT book_check_in_out FOREIGN KEY ( book_id ) REFERENCES Books ( book_id ) ON
DELETE CASCADE ;

ALTER TABLE Transactions ADD CONSTRAINT patron_check_in_out FOREIGN KEY ( patron_id ) REFERENCES Patrons ( patron_id ) ON
DELETE CASCADE ;

CREATE OR REPLACE VIEW Books_VIEW  AS
SELECT Books.title, Books.author_last_name, Books.author_first_name FROM Books ;




CREATE OR REPLACE VIEW "Transactions _VIEW"  AS
SELECT Transactions.transaction_date,
  Transactions.transaction_type
FROM Transactions ;




CREATE OR REPLACE VIEW VIEW_3  AS
z
z
z
SELECT Patrons.last_name, Patrons.patron_id, Patrons.location FROM Patrons ;





-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             0
-- ALTER TABLE                              6
-- CREATE VIEW                              3
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- ERRORS                                  12
-- WARNINGS                                 0


-- new comment (test purpose) for new commit
-- new second comment (test purpose) for second new commit


-- Added new test line
-- 151214 16:13