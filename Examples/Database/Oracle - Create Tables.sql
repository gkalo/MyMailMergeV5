--------------------------------------------------------
--  DDL for Table SIGNATURES
--------------------------------------------------------

  CREATE TABLE "SIGNATURES" 
   (	"MY_CODE" NUMBER, 
	"MY_NAME" VARCHAR2(255 BYTE), 
	"MY_SIGNATURE" BLOB, 
	"MY_BALANCE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table TOYS
--------------------------------------------------------

  CREATE TABLE "TOYS" 
   (	"TOY_CODE" VARCHAR2(20 BYTE), 
	"TOY_DESCR" VARCHAR2(255 BYTE), 
	"TOY_IMAGE" BLOB, 
	"TOY_CUST_CODE" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table TRANSACTIONS
--------------------------------------------------------

  CREATE TABLE "TRANSACTIONS" 
   (	"TRANS_DATE" DATE, 
	"TRANS_DEBIT" NUMBER, 
	"TRANS_CREDIT" NUMBER, 
	"TRANS_BALANCE" NUMBER, 
	"TRANS_CUST_CODE" NUMBER
   ) ;
REM INSERTING into SIGNATURES
SET DEFINE OFF;
Insert into SIGNATURES (MY_CODE,MY_NAME,MY_BALANCE) values ('3','New Customer',null);
Insert into SIGNATURES (MY_CODE,MY_NAME,MY_BALANCE) values ('1','George Kalo','23');
Insert into SIGNATURES (MY_CODE,MY_NAME,MY_BALANCE) values ('2','Elvis','120');
REM INSERTING into TOYS
SET DEFINE OFF;
Insert into TOYS (TOY_CODE,TOY_DESCR,TOY_CUST_CODE) values ('1','Buzz Lightyear','1');
Insert into TOYS (TOY_CODE,TOY_DESCR,TOY_CUST_CODE) values ('2','Rex','1');
Insert into TOYS (TOY_CODE,TOY_DESCR,TOY_CUST_CODE) values ('3','Transformer','1');
Insert into TOYS (TOY_CODE,TOY_DESCR,TOY_CUST_CODE) values ('2','Rex','2');
Insert into TOYS (TOY_CODE,TOY_DESCR,TOY_CUST_CODE) values ('1','Buzz LightYear','2');
REM INSERTING into TRANSACTIONS
SET DEFINE OFF;
Insert into TRANSACTIONS (TRANS_DATE,TRANS_DEBIT,TRANS_CREDIT,TRANS_BALANCE,TRANS_CUST_CODE) values (to_date('25/04/20','DD/MM/RR'),'10',null,'10','1');
Insert into TRANSACTIONS (TRANS_DATE,TRANS_DEBIT,TRANS_CREDIT,TRANS_BALANCE,TRANS_CUST_CODE) values (to_date('28/04/20','DD/MM/RR'),'20','5','25','1');
Insert into TRANSACTIONS (TRANS_DATE,TRANS_DEBIT,TRANS_CREDIT,TRANS_BALANCE,TRANS_CUST_CODE) values (to_date('30/04/20','DD/MM/RR'),null,'2','23','1');
Insert into TRANSACTIONS (TRANS_DATE,TRANS_DEBIT,TRANS_CREDIT,TRANS_BALANCE,TRANS_CUST_CODE) values (to_date('01/05/20','DD/MM/RR'),'80',null,'80','2');
Insert into TRANSACTIONS (TRANS_DATE,TRANS_DEBIT,TRANS_CREDIT,TRANS_BALANCE,TRANS_CUST_CODE) values (to_date('19/06/20','DD/MM/RR'),'40',null,'120','2');
--------------------------------------------------------
--  DDL for Index SIGNATURES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SIGNATURES_PK" ON "SIGNATURES" ("MY_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index TOYS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TOYS_PK" ON "TOYS" ("TOY_CUST_CODE", "TOY_CODE") 
  ;
--------------------------------------------------------
--  DDL for Index TRANSACTIONS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TRANSACTIONS_PK" ON "TRANSACTIONS" ("TRANS_CUST_CODE", "TRANS_DATE") 
  ;
--------------------------------------------------------
--  Constraints for Table SIGNATURES
--------------------------------------------------------

  ALTER TABLE "SIGNATURES" MODIFY ("MY_CODE" NOT NULL ENABLE);
  ALTER TABLE "SIGNATURES" ADD CONSTRAINT "SIGNATURES_PK" PRIMARY KEY ("MY_CODE")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table TOYS
--------------------------------------------------------

  ALTER TABLE "TOYS" MODIFY ("TOY_CODE" NOT NULL ENABLE);
  ALTER TABLE "TOYS" MODIFY ("TOY_CUST_CODE" NOT NULL ENABLE);
  ALTER TABLE "TOYS" ADD CONSTRAINT "TOYS_PK" PRIMARY KEY ("TOY_CUST_CODE", "TOY_CODE")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table TRANSACTIONS
--------------------------------------------------------

  ALTER TABLE "TRANSACTIONS" MODIFY ("TRANS_DATE" NOT NULL ENABLE);
  ALTER TABLE "TRANSACTIONS" MODIFY ("TRANS_CUST_CODE" NOT NULL ENABLE);
  ALTER TABLE "TRANSACTIONS" ADD CONSTRAINT "TRANSACTIONS_PK" PRIMARY KEY ("TRANS_CUST_CODE", "TRANS_DATE")
  USING INDEX  ENABLE;
  
  Commit;
