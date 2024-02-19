-- Q&A

CREATE TABLE board3 (
    bno3         NUMBER PRIMARY KEY,
    title3       VARCHAR2(100),
    content3     CLOB,
    createdate3  TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifydate3  TIMESTAMP,
    hit3         NUMBER DEFAULT 0,
    filename3    VARCHAR2(50),
    id          VARCHAR2(20) NOT NULL,
    reply_count3 int,
    like_count3 int,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE    
);
DROP TABLE board3;

CREATE SEQUENCE seq_bno3 NOCACHE;

INSERT INTO board3(bno3, title3, content3, id)
VALUES (seq_bno3.NEXTVAL, '������', '�۳����Դϴ�.', 'show3239');
INSERT INTO board3(bno3, title3, content3, id)
VALUES (seq_bno3.NEXTVAL, '������1', '�۳���1�Դϴ�.', 'show3239');
INSERT INTO board3(bno3, title3, content3, id)
VALUES (seq_bno3.NEXTVAL, '������2', '�۳���2�Դϴ�.', 'show3239');
INSERT INTO board3(bno3, title3, content3, id)
VALUES (seq_bno3.NEXTVAL, '�������� ġ��', '�ڵ��� ������ ���ٴ��� ������ ������ ����ϸ� ���������?', 'chaeh');

SELECT * FROM board3;


SELECT * FROM board3 ORDER BY like_count3 DESC;


-- reply ���̺� ����
CREATE TABLE reply3 (
    rno3         NUMBER PRIMARY KEY,                 -- ��۹�ȣ
    bno3         NUMBER NOT NULL,                    -- �Խñ۹�ȣ
    rcontent3    VARCHAR2(2000) NOT NULL,            -- ��۳���
    replyer3     VARCHAR2(20) NOT NULL,              -- �ۼ���
    rdate3       TIMESTAMP DEFAULT SYSTIMESTAMP,     -- �ۼ���
    rupdate3     TIMESTAMP,                          -- ������
    FOREIGN KEY (bno3) REFERENCES board3(bno3) ON DELETE CASCADE
);
DROP TABLE reply3;

CREATE SEQUENCE seq_rno3 NOCACHE;

INSERT INTO reply3(rno3, bno3, rcontent3, replyer3)
VALUES (seq_rno3.NEXTVAL, 1, 'ù��° ����Դϴ�.', 'show3239');

select * from reply3;

CREATE TABLE blike3(
    likeno3 NUMBER PRIMARY KEY,
    bno3    NUMBER NOT NULL,
    id     VARCHAR2(20) NOT NULL,
    FOREIGN KEY (bno3) REFERENCES board3(bno3) ON DELETE CASCADE,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE   
);
DROP TABLE blike3;

CREATE SEQUENCE seq_likeno3 NOCACHE;

commit;