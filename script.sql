CREATE DATABASE TestDb FROM sysadmin 
    AS PERMANENT = 60000000, 
       SPOOL = 120000000, 
       FALLBACK PROTECTION, 
       AFTER JOURNAL, 
       BEFORE JOURNAL, 
       DEFAULT JOURNAL TABLE = TestDb.journals, 
       ACCOUNT = 'ACCTG';
drop table TestDb.TPT_TEST_CSV3;
CREATE SET TABLE TestDb.TPT_TEST_CSV3
(
Col_ID VARCHAR(10) NOT NULL,
Col_Attr VARCHAR(1),
Col_Value VARCHAR(10),
Col_CreatedDate VARCHAR(10),
Col_Comments VARCHAR(255)
)
PRIMARY INDEX(Col_ID); 

select * from TestDb.TPT_TEST_CSV3;

delete from TestDb.TPT_TEST_CSV3;

select * from TestDb.TPT_TEST_CSV_2_log;

drop table  TestDb.TPT_TEST_CSV3_log;