CREATE TABLE notice (
    nno         NUMBER PRIMARY KEY,
    ntitle       VARCHAR2(100),
    ncontent     CLOB,
    ncreatedate  TIMESTAMP DEFAULT SYSTIMESTAMP,
    nmodifydate  TIMESTAMP,
    nhit         NUMBER DEFAULT 0,
    nfilename    VARCHAR2(50),
    id          VARCHAR2(20) NOT NULL,
    nreply_count int,
    nlike_count int,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE    
);
DROP TABLE notice;

CREATE SEQUENCE seq_nno NOCACHE;

INSERT INTO notice(nno, ntitle, ncontent, id)
VALUES (seq_nno.NEXTVAL, '��������', '���������Դϴ�.', 'show3239');

commit;

select * from notice;

SELECT * FROM notice ORDER BY nno DESC;
SELECT * FROM (SELECT ROWNUM RN, no.* FROM (SELECT * FROM notice WHERE " + field + " LIKE ? ORDER BY nno DESC) no);

CREATE TABLE nreply (
    nrno         NUMBER PRIMARY KEY,                 -- ��۹�ȣ
    nno         NUMBER NOT NULL,                    -- �Խñ۹�ȣ
    nrcontent    VARCHAR2(2000) NOT NULL,            -- ��۳���
    nreplyer     VARCHAR2(20) NOT NULL,              -- �ۼ���
    nrdate       TIMESTAMP DEFAULT SYSTIMESTAMP,     -- �ۼ���
    nrupdate     TIMESTAMP,                          -- ������
    FOREIGN KEY (nno) REFERENCES notice(nno) ON DELETE CASCADE
);
DROP TABLE nreply;

CREATE SEQUENCE seq_nrno NOCACHE;

INSERT INTO nreply(nrno, nno, nrcontent, nreplyer)
VALUES (seq_nrno.NEXTVAL, 4, 'ù��° ����Դϴ�.', 'show3239');

CREATE TABLE nlike(
    nlikeno NUMBER PRIMARY KEY,
    nno    NUMBER NOT NULL,
    id     VARCHAR2(20) NOT NULL,
    FOREIGN KEY (nno) REFERENCES notice(nno) ON DELETE CASCADE,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE   
);
DROP TABLE nlike;

CREATE SEQUENCE seq_nlikeno NOCACHE;


COMMIT;

