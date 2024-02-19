CREATE TABLE member (
   id               VARCHAR2(20)  PRIMARY KEY,
   passwd           VARCHAR2(25)   NOT NULL,
   name             VARCHAR2(30),
   email            VARCHAR2(30),
   phone            VARCHAR2(20)  NOT NULL,
   joindate         TIMESTAMP     DEFAULT SYSTIMESTAMP,
   zip_code         VARCHAR2(10),
   address          VARCHAR2(40),
   detailaddress    VARCHAR2(40)
);
CREATE TABLE cart (
   cartnum      NUMBER,
   cnt			NUMBER,
   cartdate     TIMESTAMP	DEFAULT SYSTIMESTAMP,
   pno          NUMBER,
   id           VARCHAR2(20),
   FOREIGN KEY(id) REFERENCES member,
   FOREIGN KEY(pno) REFERENCES product
);
CREATE SEQUENCE seq_cartnum NOCACHE;

CREATE TABLE product (
   pno          NUMBER          PRIMARY KEY,
   pname        VARCHAR2(40)    NOT NULL,
   price        NUMBER          NOT NULL,
   p_score      NUMBER,
   sal_num      NUMBER,
   pcontent     VARCHAR2(200),
   pfilename    VARCHAR2(50),
   category     VARCHAR2(30)
);
CREATE SEQUENCE seq_pno NOCACHE;

CREATE TABLE purchasehistory(
    phno            NUMBER PRIMARY KEY,
    pdate           TIMESTAMP	DEFAULT SYSTIMESTAMP,
    pcnt            NUMBER,
    id              VARCHAR(20),
    pno             NUMBER,
    FOREIGN KEY(id) REFERENCES member,
    FOREIGN KEY(pno) REFERENCES product
);
CREATE SEQUENCE phno nocache;

CREATE TABLE qa (
   qno      NUMBER          PRIMARY KEY,
   qtitle   VARCHAR2(50)    NOT NULL,
   qcontent VARCHAR2(500)   NOT NULL,
   qfilename   VARCHAR2(100),
   qdate    TIMESTAMP   DEFAULT SYSTIMESTAMP,
   qupdate TIMESTAMP,
   qhit     NUMBER DEFAULT 0,
   id       VARCHAR2(30)    NOT NULL,
   FOREIGN KEY(id) REFERENCES member
);
create sequence seq_qno nocache;
CREATE TABLE review (
   rno       NUMBER             PRIMARY KEY,
   rtitle    VARCHAR2(50)       NOT NULL,
   rdate     TIMESTAMP  DEFAULT SYSTIMESTAMP,
   rcontent  VARCHAR2(200),
   rfilename   VARCHAR2(100),
   rupdate TIMESTAMP,
   rrate     NUMBER,
   likes      NUMBER,
   rhit      NUMBER DEFAULT 0,
   id        VARCHAR2(30)
);

CREATE TABLE notice (
   nno      NUMBER          PRIMARY KEY,
   ntitle   VARCHAR2(50)    NOT NULL,
   ncontent VARCHAR2(600)   NOT NULL,
   nfilename   VARCHAR2(100),
   ndate    TIMESTAMP   DEFAULT SYSTIMESTAMP,
   nupdate TIMESTAMP,
   nhit     NUMBER DEFAULT 0
);

CREATE TABLE qareply(
    qreno    NUMBER PRIMARY KEY,
    qno     NUMBER,
    recontent    VARCHAR2(200) NOT NULL,
    replyer     VARCHAR2(20)  NOT NULL,
    redate       TIMESTAMP DEFAULT SYSTIMESTAMP,
    reupdate     TIMESTAMP,
    FOREIGN KEY(qno) REFERENCES qa(qno) ON DELETE CASCADE
);
CREATE TABLE rvreply(
    rvrno    NUMBER PRIMARY KEY,
    rno     NUMBER,
    recontent    VARCHAR2(200) NOT NULL,
    replyer     VARCHAR2(20)  NOT NULL,
    redate       TIMESTAMP DEFAULT SYSTIMESTAMP,
    reupdate     TIMESTAMP,
    FOREIGN KEY(rno) REFERENCES review(rno) ON DELETE CASCADE
);