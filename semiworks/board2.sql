-- ���� ��ȹ

CREATE TABLE board2 (
    bno2         NUMBER PRIMARY KEY,
    title2       VARCHAR2(100),
    content2     CLOB,
    createdate2  TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifydate2  TIMESTAMP,
    hit2         NUMBER DEFAULT 0,
    filename2    VARCHAR2(50),
    id          VARCHAR2(20) NOT NULL,
    reply_count2 int,
    like_count2 int,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE    
);
DROP TABLE board2;

CREATE SEQUENCE seq_bno2 NOCACHE;

INSERT INTO board2(bno2, title2, content2, id)
VALUES (seq_bno2.NEXTVAL, '������', '�۳����Դϴ�.', 'show3239');
INSERT INTO board2(bno2, title2, content2, id)
VALUES (seq_bno2.NEXTVAL, '������1', '�۳���1�Դϴ�.', 'show3239');
INSERT INTO board2(bno2, title2, content2, id)
VALUES (seq_bno2.NEXTVAL, '������2', '�۳���2�Դϴ�.', 'show3239');
INSERT INTO board2(bno2, title2, content2, id)
VALUES (seq_bno2.NEXTVAL, '�±����� �Ѵ�', '���ִ°� �Ա�', 'chaeh');

SELECT * FROM board2;


SELECT * FROM board2 ORDER BY like_count2 DESC;


-- reply ���̺� ����
CREATE TABLE reply2 (
    rno2         NUMBER PRIMARY KEY,                 -- ��۹�ȣ
    bno2         NUMBER NOT NULL,                    -- �Խñ۹�ȣ
    rcontent2    VARCHAR2(2000) NOT NULL,            -- ��۳���
    replyer2     VARCHAR2(20) NOT NULL,              -- �ۼ���
    rdate2       TIMESTAMP DEFAULT SYSTIMESTAMP,     -- �ۼ���
    rupdate2     TIMESTAMP,                          -- ������
    FOREIGN KEY (bno2) REFERENCES board2(bno2) ON DELETE CASCADE
);
DROP TABLE reply2;

CREATE SEQUENCE seq_rno2 NOCACHE;

INSERT INTO reply2(rno2, bno2, rcontent2, replyer2)
VALUES (seq_rno2.NEXTVAL, 1, 'ù��° ����Դϴ�.', 'show3239');

select * from reply2;

CREATE TABLE blike2(
    likeno2 NUMBER PRIMARY KEY,
    bno2    NUMBER NOT NULL,
    id     VARCHAR2(20) NOT NULL,
    FOREIGN KEY (bno2) REFERENCES board2(bno2) ON DELETE CASCADE,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE   
);
DROP TABLE blike2;

CREATE SEQUENCE seq_likeno2 NOCACHE;

commit;