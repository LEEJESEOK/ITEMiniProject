--------------------------------------------------------
--  파일이 생성됨 - 월요일-5월-09-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type CART_RECORD_TYPE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "CART_RECORD_TYPE" AS OBJECT(
    pid varchar2(30),
    pcolor varchar2(10),
    psize varchar2(10),
    pamount number,
    pname varchar2(50),
    bname varchar2(50),
    pprice number
);

/
--------------------------------------------------------
--  DDL for Type PRODUCT_DETAIL_RECORD_TYPE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "PRODUCT_DETAIL_RECORD_TYPE" AS OBJECT(
   pimg1 varchar2(500),
   pimg2 varchar2(500),
   pimg3 varchar2(500),
   bname varchar2(50),
   pname varchar2(50),
   pprice number,
   pid varchar2(30),
   pdetail varchar2(4000),
   ccolorname varchar2(10),
   psize varchar2(10),
    paveragerate number
);

/
--------------------------------------------------------
--  DDL for Type PRODUCT_RECORD_TYPE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "PRODUCT_RECORD_TYPE" AS OBJECT (
    pimg1        VARCHAR2(500),
    pimg2        VARCHAR2(500),
    pimg3        VARCHAR2(500),
    bname        VARCHAR2(50),
    pname        VARCHAR2(50),
    pprice       NUMBER,
    ccolorname   VARCHAR2(10),
    psize        VARCHAR2(10),
    paveragerate NUMBER,
    preleasedate DATE,
    pid          VARCHAR(30),
    bno          NUMBER,
    clarge       VARCHAR2(50),
    cmedium      VARCHAR2(50),
    csmall       VARCHAR2(50)
);

/
--------------------------------------------------------
--  DDL for Type QNA_RECORD_TYPE
--------------------------------------------------------

 CREATE OR REPLACE TYPE "QNA_SITE_RECORD_TYPE" AS OBJECT (
    qid           NUMBER,
    mid           VARCHAR2(100),
    qtitle        VARCHAR2(1000),
    qcontent      VARCHAR2(4000),
    qdate         DATE,
    qmanager      VARCHAR2(100),
    qreplytitle   VARCHAR2(1000),
    qreplycontent VARCHAR2(4000),
    qreplydate    DATE
);

/
--------------------------------------------------------
--  DDL for Type QNA_RECORD_TYPE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "QNA_RECORD_TYPE" AS OBJECT (
    qid            NUMBER,
    pid            VARCHAR2(30),
    mid            VARCHAR2(100),
    qtitle         VARCHAR2(1000),
    qcontent       VARCHAR2(4000),
    qdate          DATE,
    qmanager       VARCHAR2(100),
    qreplytitle    VARCHAR2(1000),
    qreplycontent  VARCHAR2(4000),
    qreplydate     DATE
);

/
--------------------------------------------------------
--  DDL for Type REVIEW_RECORD_TYPE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "REVIEW_RECORD_TYPE" AS OBJECT (
    rno       NUMBER,
    mid       VARCHAR2(100),
    pid       VARCHAR2(30),
    pcolor    VARCHAR2(10),
    psize     VARCHAR2(10),
    rdate     DATE,
    rrate     NUMBER,
    rcontent  VARCHAR2(4000),
    rimage    VARCHAR2(4000)
);

/
--------------------------------------------------------
--  DDL for Type CART_RECORD_TABLE_TYPE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "CART_RECORD_TABLE_TYPE" AS TABLE OF cart_record_type;


/
--------------------------------------------------------
--  DDL for Type PRODUCT_DETAIL_RECORD_TABLE_TYPE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "PRODUCT_DETAIL_RECORD_TABLE_TYPE" AS TABLE OF product_detail_record_type;


/
--------------------------------------------------------
--  DDL for Type PRODUCT_RECORD_TABLE_TYPE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "PRODUCT_RECORD_TABLE_TYPE" AS TABLE OF product_record_type;


/
--------------------------------------------------------
--  DDL for Type QNA_SITE_RECORD_TABLE_TYPE
--------------------------------------------------------

 CREATE OR REPLACE TYPE "QNA_SITE_RECORD_TABLE_TYPE" AS
    TABLE OF QNA_SITE_RECORD_TYPE;


/
--------------------------------------------------------
--  DDL for Type QNA_RECORD_TABLE_TYPE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "QNA_RECORD_TABLE_TYPE" AS
    TABLE OF qna_record_type;


/
--------------------------------------------------------
--  DDL for Type REVIEW_RECORD_TABLE_TYPE
--------------------------------------------------------

  CREATE OR REPLACE TYPE "REVIEW_RECORD_TABLE_TYPE" AS
    TABLE OF review_record_type;


/
--------------------------------------------------------
--  DDL for Sequence SEQ_QNA_SITE
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_QNA_SITE"  START WITH 1 INCREMENT BY 1;
--------------------------------------------------------
--  DDL for Sequence SEQ_REVIEW
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_QNA_PRODUCT"  START WITH 1 INCREMENT BY 1;
--------------------------------------------------------
--  DDL for Sequence SEQ_REVIEW
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_REVIEW"  START WITH 1 INCREMENT BY 1;
--------------------------------------------------------
--  DDL for Table BRAND
--------------------------------------------------------

  CREATE TABLE "BRAND" 
   (	"BNO" NUMBER, 
	"BNAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "CATEGORY" 
   (	"CLARGE" VARCHAR2(50 BYTE), 
	"CMEDIUM" VARCHAR2(50 BYTE), 
	"CSMALL" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "PRODUCT" 
   (	"PID" VARCHAR2(30 BYTE), 
	"BNO" NUMBER, 
	"CLARGE" VARCHAR2(50 BYTE), 
	"CMEDIUM" VARCHAR2(50 BYTE), 
	"CSMALL" VARCHAR2(50 BYTE), 
	"PNAME" VARCHAR2(50 BYTE), 
	"PPRICE" NUMBER, 
	"PDETAIL" VARCHAR2(4000 BYTE), 
	"PSEASON" VARCHAR2(10 BYTE), 
	"PRELEASEDATE" DATE, 
	"PAVERAGERATE" NUMBER DEFAULT 0, 
	"PIMG1" VARCHAR2(500 BYTE) DEFAULT 'default.jpg', 
	"PIMG2" VARCHAR2(500 BYTE) DEFAULT 'default.jpg', 
	"PIMG3" VARCHAR2(500 BYTE) DEFAULT 'default.jpg'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COLOR
--------------------------------------------------------

  CREATE TABLE "COLOR" 
   (	"PID" VARCHAR2(30 BYTE), 
	"CCOLORNAME" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCT_SIZE
--------------------------------------------------------

  CREATE TABLE "PRODUCT_SIZE" 
   (	"PID" VARCHAR2(30 BYTE), 
	"PSIZE" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GRADE
--------------------------------------------------------

  CREATE TABLE "GRADE" 
   (	"GNAME" VARCHAR2(100 BYTE), 
	"GMIN" NUMBER, 
	"GMAX" NUMBER, 
	"GSALE" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"MID" VARCHAR2(100 BYTE), 
	"MPASSWORD" VARCHAR2(20 BYTE), 
	"MNAME" VARCHAR2(50 BYTE), 
	"MEMAIL" VARCHAR2(100 BYTE), 
	"MTEL" VARCHAR2(20 BYTE), 
	"MZIPCODE" NUMBER, 
	"MADDRESS1" VARCHAR2(200 BYTE), 
	"MADDRESS2" VARCHAR2(200 BYTE), 
	"MGRADE" VARCHAR2(100 BYTE), 
	"MDATE" DATE, 
	"MMILEAGE" NUMBER, 
	"MENABLED" VARCHAR2(1 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MY_CART
--------------------------------------------------------

  CREATE TABLE "MY_CART" 
   (	"MID" VARCHAR2(100 BYTE), 
	"PID" VARCHAR2(30 BYTE), 
	"PSIZE" VARCHAR2(10 BYTE), 
	"PCOLOR" VARCHAR2(10 BYTE), 
	"PAMOUNT" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ORDER_ITEM
--------------------------------------------------------

  CREATE TABLE "ORDER_ITEM" 
   (	"OID" VARCHAR2(20 BYTE), 
	"PID" VARCHAR2(30 BYTE), 
	"CCOLORNAME" VARCHAR2(10 BYTE), 
	"SSIZE" VARCHAR2(10 BYTE), 
	"OAMOUNT" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ORDER_LIST
--------------------------------------------------------

  CREATE TABLE "ORDER_LIST" 
   (	"OID" VARCHAR2(20 BYTE), 
	"MID" VARCHAR2(100 BYTE), 
	"OZIPCODE" NUMBER, 
	"OADDRESS1" VARCHAR2(200 BYTE), 
	"OADDRESS2" VARCHAR2(200 BYTE), 
	"ORECEIVER" VARCHAR2(50 BYTE), 
	"OTEL" VARCHAR2(20 BYTE), 
	"OMESSAGE" VARCHAR2(40 BYTE), 
	"ODATE" DATE, 
	"OUSEDMILEAGE" NUMBER, 
	"OPAYMENT" NUMBER, 
	"ODISCOUNTED" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table QNA_PRODUCT
--------------------------------------------------------

  CREATE TABLE "QNA_PRODUCT" 
   (	"QID" NUMBER, 
	"PID" VARCHAR2(30 BYTE), 
	"MID" VARCHAR2(100 BYTE), 
	"QTITLE" VARCHAR2(1000 BYTE), 
	"QCONTENT" VARCHAR2(4000 BYTE), 
	"QDATE" DATE, 
	"QMANAGER" VARCHAR2(100 BYTE), 
	"QREPLYTITLE" VARCHAR2(1000 BYTE), 
	"QREPLYCONTENT" VARCHAR2(4000 BYTE), 
	"QREPLYDATE" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table QNA_SITE
--------------------------------------------------------

  CREATE TABLE "QNA_SITE" 
   (	"QID" NUMBER, 
	"MID" VARCHAR2(100 BYTE), 
	"QTITLE" VARCHAR2(1000 BYTE), 
	"QCONTENT" VARCHAR2(4000 BYTE), 
	"QDATE" DATE, 
	"QMANAGER" VARCHAR2(100 BYTE), 
	"QREPLYTITLE" VARCHAR2(1000 BYTE), 
	"QREPLYCONTENT" VARCHAR2(4000 BYTE), 
	"QREPLYDATE" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "REVIEW" 
   (	"RNO" NUMBER, 
	"MID" VARCHAR2(100 BYTE), 
	"PID" VARCHAR2(30 BYTE), 
	"PCOLOR" VARCHAR2(10 BYTE), 
	"PSIZE" VARCHAR2(10 BYTE), 
	"RDATE" DATE, 
	"RRATE" NUMBER, 
	"RCONTENT" VARCHAR2(4000 BYTE), 
	"RIMAGE" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table WISH_LIST
--------------------------------------------------------

  CREATE TABLE "WISH_LIST" 
   (	"MID" VARCHAR2(100 BYTE), 
	"PID" VARCHAR2(30 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View PRODUCT_DISPLAY_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "PRODUCT_DISPLAY_VIEW" ("PIMG1", "PIMG2", "PIMG3", "BNAME", "PNAME", "PPRICE", "CCOLORNAME", "PSIZE", "PAVERAGERATE", "PRELEASEDATE", "PID", "BNO", "CLARGE", "CMEDIUM", "CSMALL") AS 
  select p.pimg1, p.pimg2, p.pimg3, b.bname, p.pname, p.pprice, c.ccolorname, ps.psize,
p.paveragerate, p.preleasedate, p.pid, b.bno, p.clarge, p.cmedium, p.csmall
from product p, brand b, color c, product_size ps
where p.bno = b.bno and p.pid = c.pid and p.pid = ps.pid
;
--------------------------------------------------------
--  DDL for Index PK_BRAND
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_BRAND" ON "BRAND" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_CATEGORY
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_CATEGORY" ON "CATEGORY" ("CLARGE", "CMEDIUM", "CSMALL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_COLOR
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_COLOR" ON "COLOR" ("PID", "CCOLORNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_GRADE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_GRADE" ON "GRADE" ("GNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_MEMBER" ON "MEMBER" ("MID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_MY_CART
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_MY_CART" ON "MY_CART" ("MID", "PID", "PSIZE", "PCOLOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ORDER_ITEM
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ORDER_ITEM" ON "ORDER_ITEM" ("OID", "PID", "CCOLORNAME", "SSIZE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_ORDER_LIST
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_ORDER_LIST" ON "ORDER_LIST" ("OID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_PRODUCT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_PRODUCT" ON "PRODUCT" ("PID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_SIZE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_SIZE" ON "PRODUCT_SIZE" ("PID", "PSIZE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_QNA_PRODUCT
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_QNA_PRODUCT" ON "QNA_PRODUCT" ("QID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_QNA_SITE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_QNA_SITE" ON "QNA_SITE" ("QID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_REVIEW
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_REVIEW" ON "REVIEW" ("RNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PK_WISH_LIST
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_WISH_LIST" ON "WISH_LIST" ("MID", "PID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Procedure DELETE_QNA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "DELETE_QNA" (
    p_qid qna_product.qid%TYPE
) IS
BEGIN
    DELETE FROM qna_product
    WHERE
        qid = p_qid;

    COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_QNA_SITE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "DELETE_QNA_SITE" (
    p_qid qna_site.qid%TYPE
) IS
BEGIN
    DELETE FROM qna_site
    WHERE
        qid = p_qid;

    COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure DELETE_REVIEW
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "DELETE_REVIEW" (
    p_rno review.rno%TYPE
) IS
BEGIN
    DELETE FROM review
    WHERE
        rno = p_rno;

    COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure INSERT_QNA_SITE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INSERT_QNA_SITE" (
    p_qid            qna_site.qid%TYPE,
    p_mid            qna_site.mid%TYPE,
    p_qtitle         qna_site.qtitle%TYPE,
    p_qcontent       qna_site.qcontent%TYPE,
    p_qdate          qna_site.qdate%TYPE,
    p_qmanager       qna_site.qmanager%TYPE,
    p_qreplytitle    qna_site.qreplytitle%TYPE,
    p_qreplycontent  qna_site.qreplycontent%TYPE,
    p_qreplydate     qna_site.qreplydate%TYPE
) IS
BEGIN
    INSERT INTO qna_site (
        qid,
        mid,
        qtitle,
        qcontent,
        qdate,
        qmanager,
        qreplytitle,
        qreplycontent,
        qreplydate
    ) VALUES (
        seq_qna_site.NEXTVAL,
        p_mid,
        p_qtitle,
        p_qcontent,
        p_qdate,
        p_qmanager,
        p_qreplytitle,
        p_qreplycontent,
        p_qreplydate
    );

    COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure INSERT_REVIEW
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "INSERT_REVIEW" (
    p_rno       review.rno%TYPE,
    p_mid       review.mid%TYPE,
    p_pid       review.pid%TYPE,
    p_pcolor    review.pcolor%TYPE,
    p_psize     review.psize%TYPE,
    p_rdate     review.rdate%TYPE,
    p_rrate     review.rrate%TYPE,
    p_rcontent  review.rcontent%TYPE,
    p_rimage    review.rimage%TYPE
) IS
BEGIN
    INSERT INTO review (
        rno,
        mid,
        pid,
        pcolor,
        psize,
        rdate,
        rrate,
        rcontent,
        rimage
    ) VALUES (
        seq_review.NEXTVAL,
        p_mid,
        p_pid,
        p_pcolor,
        p_psize,
        p_rdate,
        p_rrate,
        p_rcontent,
        p_rimage
    );

    COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_CART_AMOUNT_UPDATE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SP_CART_AMOUNT_UPDATE" 
(p_pid in my_cart.pid%type, p_pamount in my_cart.pamount%type)
is
begin
	update my_cart set pamount = p_pamount
	where pid = p_pid;
end;

/
--------------------------------------------------------
--  DDL for Procedure SP_CART_DELETE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SP_CART_DELETE" 
(p_pid in my_cart.pid%type)
is
begin
	delete from my_cart
	where pid = p_pid;
end;

/
--------------------------------------------------------
--  DDL for Procedure SP_CART_INSERT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SP_CART_INSERT" 
(p_mid in my_cart.mid%type,
p_pid in my_cart.pid%type,
p_psize in my_cart.psize%type,
p_pcolor in my_cart.pcolor%type,
p_pamount in my_cart.pamount%type
)
is
begin
	insert into my_cart(mid, pid, psize, pcolor, pamount)
	values(p_mid, p_pid, p_psize, p_pcolor, p_pamount);
end;

/
--------------------------------------------------------
--  DDL for Procedure SP_MEMBER_INSERT
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SP_MEMBER_INSERT" (
    p_id        member.mid%TYPE,
    p_password  member.mpassword%TYPE,
    p_name      member.mname%TYPE,
    p_email     member.memail%TYPE,
    p_tel       member.mtel%TYPE default null,
    p_zipcode   member.mzipcode%TYPE default null,
    p_address1  member.maddress1%TYPE default null,
    p_address2  member.maddress2%TYPE default null
) IS
BEGIN
    INSERT INTO member (
        mid,
        mpassword,
        mname,
        memail,
        mtel,
        mzipcode,
        maddress1,
        maddress2,
        mgrade,
        mdate,
        mmileage,
        menabled
    ) VALUES (
        p_id,
        p_password,
        p_name,
        p_email,
        p_tel,
        p_zipcode,
        p_address1,
        p_address2,
        null,
        sysdate,
        0,
        'T'
    );

    commit;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_REVIEW_RATE_UPDATE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SP_REVIEW_RATE_UPDATE" 
(p_pid in product.pid%type)
is
begin
    update product 
    set paveragerate = (select avg(rrate) from review where pid = p_pid)
    where pid = p_pid;
end;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_QNA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "UPDATE_QNA" (
    p_qid       qna_product.qid%TYPE,
    p_qtitle    qna_product.qtitle%TYPE,
    p_qcontent  qna_product.qcontent%TYPE
) IS
BEGIN
    UPDATE qna_product
    SET
        qcontent = p_qcontent,
        qtitle = p_qtitle,
        qdate = sysdate
    WHERE
        qid = p_qid;

    COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_QNA_SITE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "UPDATE_QNA_SITE" (
    p_qid       qna_site.qid%TYPE,
    p_qtitle    qna_site.qtitle%TYPE,
    p_qcontent  qna_site.qcontent%TYPE
) IS
BEGIN
    UPDATE qna_site
    SET
        qtitle = p_qtitle,
        qcontent = p_qcontent,
        qdate = sysdate
    WHERE
        qid = p_qid;

    COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_REVIEW
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "UPDATE_REVIEW" (
    p_rno       review.rno%TYPE,
    p_rcontent  review.rcontent%TYPE,
    p_rimage    review.rimage%TYPE,
    p_rrate     review.rrate%TYPE
) IS
BEGIN
    UPDATE review
    SET
        rcontent = p_rcontent,
        rdate = sysdate,
        rrate = p_rrate,
        rimage = p_rimage
    WHERE
        rno = p_rno;

    COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Function SF_CART_DISPLAY
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SF_CART_DISPLAY" 
(p_mid in my_cart.mid%type)
return cart_record_table_type
PIPELINED
is
	cart_rec cart_record_type;
begin
	FOR rec IN (
		select c.pid, c.pcolor, c.psize, c.pamount, p.pname, b.bname, p.pprice
		from my_cart c, product p, brand b
		where c.mid = p_mid and c.pid = p.pid and p.bno = b.bno
	) LOOP
		cart_rec := cart_record_type(rec.pid, rec.pcolor, rec.psize, rec.pamount, rec.pname, rec.bname, rec.pprice);
		PIPE ROW(cart_rec);
	END LOOP;

	RETURN;
END;

/
--------------------------------------------------------
--  DDL for Function SF_PRODUCT_DETAIL_DISPLAY
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SF_PRODUCT_DETAIL_DISPLAY" -- 상품 상세보기
(p_pid in product.pid%type)
return product_detail_record_table_type
PIPELINED
is
    product_detail_rec product_detail_record_type;
begin
    FOR rec IN(
        select p.pimg1, p.pimg2, p.pimg3, b.bname, p.pname, 
      p.pprice, p.pid, p.pdetail, c.ccolorname, ps.psize, p.paveragerate
        from product p, color c, brand b, product_size ps
        where p.pid = p_pid and p.pid = c.pid and p.bno = b.bno and p.pid = ps.pid
    ) LOOP
        product_detail_rec := product_detail_record_type(rec.pimg1, rec.pimg2, rec.pimg3,
            rec.bname, rec.pname, rec.pprice, rec.pid, rec.pdetail,
            rec.ccolorname, rec.psize, rec.paveragerate);
        PIPE ROW(product_detail_rec);
    END LOOP;

    RETURN;
END;

/
--------------------------------------------------------
--  DDL for Function SF_PRODUCT_DISPLAY
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SF_PRODUCT_DISPLAY" -- 신상품, 베스트 상품 나열
(p_mode in NUMBER)
return product_record_table_type
PIPELINED
is
   product_rec product_record_type;
begin
   CASE p_mode
      WHEN 1 then -- 신상품
         FOR rec IN (
            select *
            from product_display_view
            order by preleasedate desc
         ) LOOP
            product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3,
            rec.bname, rec.pname, rec.pprice, rec.ccolorname, 
            rec.psize, rec.paveragerate, rec.preleasedate, rec.pid, rec.bno,
                rec.clarge, rec.cmedium, rec.csmall);
            PIPE ROW(product_rec);
         END LOOP;
         RETURN;

      WHEN 2 then -- 베스트상품
            FOR rec IN (
            select *
            from product_display_view
                order by paveragerate desc
         ) LOOP
            product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3,
            rec.bname, rec.pname, rec.pprice, rec.ccolorname, 
            rec.psize, rec.paveragerate, rec.preleasedate, rec.pid, rec.bno,
                rec.clarge, rec.cmedium, rec.csmall);
            PIPE ROW(product_rec);
         END LOOP;
         RETURN;
   END CASE;
END;

/
--------------------------------------------------------
--  DDL for Function SF_PRODUCT_DISPLAY_BY_BRAND
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SF_PRODUCT_DISPLAY_BY_BRAND" -- 브랜드별 상품 display
(p_bno in brand.bno%type)
return product_record_table_type
PIPELINED
is
    product_rec product_record_type;
begin
    FOR rec IN(
        select *
        from product_display_view v
        where v.bno = p_bno
    ) LOOP
        product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3,
            rec.bname, rec.pname, rec.pprice, rec.ccolorname, 
            rec.psize, rec.paveragerate, rec.preleasedate, rec.pid, rec.bno,
                rec.clarge, rec.cmedium, rec.csmall);
        PIPE ROW(product_rec);
    END LOOP;

    RETURN;
END;

/
--------------------------------------------------------
--  DDL for Function SF_PRODUCT_DISPLAY_BY_BRAND_COLOR
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SF_PRODUCT_DISPLAY_BY_BRAND_COLOR" -- 브랜드, 색상별 상품 display
(p_bno in brand.bno%type, p_ccolorname in color.ccolorname%type)
return product_record_table_type
PIPELINED
is
    product_rec product_record_type;
begin
    FOR rec IN(
        select *
        from product_display_view v
        where v.bno = p_bno and v.ccolorname = p_ccolorname
    ) LOOP
        product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3,
            rec.bname, rec.pname, rec.pprice, rec.ccolorname, 
            rec.psize, rec.paveragerate, rec.preleasedate, rec.pid, rec.bno,
                rec.clarge, rec.cmedium, rec.csmall);
        PIPE ROW(product_rec);
    END LOOP;

    RETURN;
END;

/
--------------------------------------------------------
--  DDL for Function SF_PRODUCT_DISPLAY_BY_BRAND_SIZE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SF_PRODUCT_DISPLAY_BY_BRAND_SIZE" -- 브랜드, 사이즈별 상품 display
(p_bno in brand.bno%type, p_psize in product_size.psize%type)
return product_record_table_type
PIPELINED
is
    product_rec product_record_type;
begin
    FOR rec IN(
        select *
        from product_display_view v
        where v.bno = p_bno and v.psize = p_psize
    ) LOOP
        product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3,
            rec.bname, rec.pname, rec.pprice, rec.ccolorname, 
            rec.psize, rec.paveragerate, rec.preleasedate, rec.pid, rec.bno,
                rec.clarge, rec.cmedium, rec.csmall);
        PIPE ROW(product_rec);
    END LOOP;

    RETURN;
END;

/
--------------------------------------------------------
--  DDL for Function SF_PRODUCT_DISPLAY_BY_BRAND_SORT
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SF_PRODUCT_DISPLAY_BY_BRAND_SORT" -- 브랜드별 신상품, 베스트 상품 나열
(p_mode in NUMBER, p_bno in brand.bno%type)
return product_record_table_type
PIPELINED
is
   product_rec product_record_type;
begin
   CASE p_mode
      WHEN 1 then -- 신상품
         FOR rec IN (
            select *
            from product_display_view v
            where v.bno = p_bno
            order by preleasedate desc
         ) LOOP
            product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3,
            rec.bname, rec.pname, rec.pprice, rec.ccolorname, 
            rec.psize, rec.paveragerate, rec.preleasedate, rec.pid, rec.bno,
                rec.clarge, rec.cmedium, rec.csmall);
            PIPE ROW(product_rec);
         END LOOP;
         RETURN;

      WHEN 2 then -- 베스트상품
            FOR rec IN (
            select *
            from product_display_view v
            where v.bno = p_bno
                order by paveragerate desc
         ) LOOP
            product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3,
            rec.bname, rec.pname, rec.pprice, rec.ccolorname, 
            rec.psize, rec.paveragerate, rec.preleasedate, rec.pid, rec.bno,
                rec.clarge, rec.cmedium, rec.csmall);
            PIPE ROW(product_rec);
         END LOOP;
         RETURN;

      WHEN 3 then -- 가격높은순
            FOR rec IN (
            select *
            from product_display_view v
            where v.bno = p_bno
                order by v.pprice desc
         ) LOOP
            product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3,
            rec.bname, rec.pname, rec.pprice, rec.ccolorname, 
            rec.psize, rec.paveragerate, rec.preleasedate, rec.pid, rec.bno,
                rec.clarge, rec.cmedium, rec.csmall);
            PIPE ROW(product_rec);
         END LOOP;
         RETURN;

      WHEN 4 then -- 가격낮은순
            FOR rec IN (
            select *
            from product_display_view v
            where v.bno = p_bno
                order by v.pprice asc
         ) LOOP
            product_rec := product_record_type(rec.pimg1, rec.pimg2, rec.pimg3,
            rec.bname, rec.pname, rec.pprice, rec.ccolorname, 
            rec.psize, rec.paveragerate, rec.preleasedate, rec.pid, rec.bno,
                rec.clarge, rec.cmedium, rec.csmall);
            PIPE ROW(product_rec);
         END LOOP;
         RETURN;

   END CASE;
END;

/
--------------------------------------------------------
--  Constraints for Table BRAND
--------------------------------------------------------

  ALTER TABLE "BRAND" MODIFY ("BNAME" NOT NULL ENABLE);
  ALTER TABLE "BRAND" ADD CONSTRAINT "PK_BRAND" PRIMARY KEY ("BNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "CATEGORY" ADD CONSTRAINT "PK_CATEGORY" PRIMARY KEY ("CLARGE", "CMEDIUM", "CSMALL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COLOR
--------------------------------------------------------

  ALTER TABLE "COLOR" ADD CONSTRAINT "PK_COLOR" PRIMARY KEY ("PID", "CCOLORNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GRADE
--------------------------------------------------------

  ALTER TABLE "GRADE" MODIFY ("GNAME" NOT NULL ENABLE);
  ALTER TABLE "GRADE" MODIFY ("GMIN" NOT NULL ENABLE);
  ALTER TABLE "GRADE" MODIFY ("GMAX" NOT NULL ENABLE);
  ALTER TABLE "GRADE" MODIFY ("GSALE" NOT NULL ENABLE);
  ALTER TABLE "GRADE" ADD CONSTRAINT "PK_GRADE" PRIMARY KEY ("GNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" MODIFY ("MPASSWORD" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("MNAME" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("MEMAIL" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("MTEL" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("MDATE" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" MODIFY ("MENABLED" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY ("MID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MY_CART
--------------------------------------------------------

  ALTER TABLE "MY_CART" MODIFY ("PAMOUNT" NOT NULL ENABLE);
  ALTER TABLE "MY_CART" ADD CONSTRAINT "PK_MY_CART" PRIMARY KEY ("MID", "PID", "PSIZE", "PCOLOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ORDER_ITEM
--------------------------------------------------------

  ALTER TABLE "ORDER_ITEM" MODIFY ("OAMOUNT" NOT NULL ENABLE);
  ALTER TABLE "ORDER_ITEM" ADD CONSTRAINT "PK_ORDER_ITEM" PRIMARY KEY ("OID", "PID", "CCOLORNAME", "SSIZE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ORDER_LIST
--------------------------------------------------------

  ALTER TABLE "ORDER_LIST" MODIFY ("OZIPCODE" NOT NULL ENABLE);
  ALTER TABLE "ORDER_LIST" MODIFY ("OADDRESS1" NOT NULL ENABLE);
  ALTER TABLE "ORDER_LIST" MODIFY ("ORECEIVER" NOT NULL ENABLE);
  ALTER TABLE "ORDER_LIST" MODIFY ("OTEL" NOT NULL ENABLE);
  ALTER TABLE "ORDER_LIST" MODIFY ("ODATE" NOT NULL ENABLE);
  ALTER TABLE "ORDER_LIST" MODIFY ("OPAYMENT" NOT NULL ENABLE);
  ALTER TABLE "ORDER_LIST" ADD CONSTRAINT "PK_ORDER_LIST" PRIMARY KEY ("OID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "PRODUCT" ADD CONSTRAINT "PK_PRODUCT" PRIMARY KEY ("PID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "PRODUCT" MODIFY ("PAVERAGERATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT_SIZE
--------------------------------------------------------

  ALTER TABLE "PRODUCT_SIZE" ADD CONSTRAINT "PK_SIZE" PRIMARY KEY ("PID", "PSIZE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table QNA_PRODUCT
--------------------------------------------------------

  ALTER TABLE "QNA_PRODUCT" MODIFY ("PID" NOT NULL ENABLE);
  ALTER TABLE "QNA_PRODUCT" MODIFY ("MID" NOT NULL ENABLE);
  ALTER TABLE "QNA_PRODUCT" MODIFY ("QTITLE" NOT NULL ENABLE);
  ALTER TABLE "QNA_PRODUCT" MODIFY ("QCONTENT" NOT NULL ENABLE);
  ALTER TABLE "QNA_PRODUCT" MODIFY ("QDATE" NOT NULL ENABLE);
  ALTER TABLE "QNA_PRODUCT" ADD CONSTRAINT "PK_QNA_PRODUCT" PRIMARY KEY ("QID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table QNA_SITE
--------------------------------------------------------

  ALTER TABLE "QNA_SITE" MODIFY ("MID" NOT NULL ENABLE);
  ALTER TABLE "QNA_SITE" MODIFY ("QTITLE" NOT NULL ENABLE);
  ALTER TABLE "QNA_SITE" MODIFY ("QCONTENT" NOT NULL ENABLE);
  ALTER TABLE "QNA_SITE" MODIFY ("QDATE" NOT NULL ENABLE);
  ALTER TABLE "QNA_SITE" ADD CONSTRAINT "PK_QNA_SITE" PRIMARY KEY ("QID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "REVIEW" MODIFY ("MID" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("PID" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" ADD CONSTRAINT "PK_REVIEW" PRIMARY KEY ("RNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table WISH_LIST
--------------------------------------------------------

  ALTER TABLE "WISH_LIST" ADD CONSTRAINT "PK_WISH_LIST" PRIMARY KEY ("MID", "PID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COLOR
--------------------------------------------------------

  ALTER TABLE "COLOR" ADD CONSTRAINT "FK_COLOR_PID" FOREIGN KEY ("PID")
	  REFERENCES "PRODUCT" ("PID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" ADD CONSTRAINT "FK_MEMBER_GRADE" FOREIGN KEY ("MGRADE")
	  REFERENCES "GRADE" ("GNAME") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MY_CART
--------------------------------------------------------

  ALTER TABLE "MY_CART" ADD CONSTRAINT "FK_MY_CART_MEMBER" FOREIGN KEY ("MID")
	  REFERENCES "MEMBER" ("MID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDER_ITEM
--------------------------------------------------------

  ALTER TABLE "ORDER_ITEM" ADD CONSTRAINT "FK_ORDER_ITEM_OID" FOREIGN KEY ("OID")
	  REFERENCES "ORDER_LIST" ("OID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "PRODUCT" ADD CONSTRAINT "FK_PRODUCT_BNO" FOREIGN KEY ("BNO")
	  REFERENCES "BRAND" ("BNO") ON DELETE CASCADE ENABLE;
  ALTER TABLE "PRODUCT" ADD CONSTRAINT "FK_PRODUCT_CATEGORY" FOREIGN KEY ("CLARGE", "CMEDIUM", "CSMALL")
	  REFERENCES "CATEGORY" ("CLARGE", "CMEDIUM", "CSMALL") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT_SIZE
--------------------------------------------------------

  ALTER TABLE "PRODUCT_SIZE" ADD CONSTRAINT "FK_SIZE_PID" FOREIGN KEY ("PID")
	  REFERENCES "PRODUCT" ("PID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QNA_PRODUCT
--------------------------------------------------------

  ALTER TABLE "QNA_PRODUCT" ADD CONSTRAINT "FK_QNA_PRODUCT_PID" FOREIGN KEY ("PID")
	  REFERENCES "PRODUCT" ("PID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "QNA_PRODUCT" ADD CONSTRAINT "FK_QNA_PRODUCT_MID" FOREIGN KEY ("MID")
	  REFERENCES "MEMBER" ("MID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QNA_SITE
--------------------------------------------------------

  ALTER TABLE "QNA_SITE" ADD CONSTRAINT "FK_QNA_SITE_PRODUCT_MID" FOREIGN KEY ("MID")
	  REFERENCES "MEMBER" ("MID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "REVIEW" ADD CONSTRAINT "FK_MEMBER_MID" FOREIGN KEY ("MID")
	  REFERENCES "MEMBER" ("MID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "REVIEW" ADD CONSTRAINT "FK_MEMBER_PID" FOREIGN KEY ("PID")
	  REFERENCES "PRODUCT" ("PID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WISH_LIST
--------------------------------------------------------

  ALTER TABLE "WISH_LIST" ADD CONSTRAINT "FK_WISH_LIST_ID" FOREIGN KEY ("MID")
	  REFERENCES "MEMBER" ("MID") ON DELETE CASCADE ENABLE;
