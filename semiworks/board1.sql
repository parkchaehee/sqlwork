-- ������ ã��

CREATE TABLE board1 (
    bno1         NUMBER PRIMARY KEY,
    title1       VARCHAR2(100),
    content1     CLOB,
    createdate1  TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifydate1  TIMESTAMP,
    hit1         NUMBER DEFAULT 0,
    filename1    VARCHAR2(50),
    id          VARCHAR2(20) NOT NULL,
    reply_count1 int,
    like_count1 int,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE    
);
DROP TABLE board1;

CREATE SEQUENCE seq_bno1 NOCACHE;

INSERT INTO board1(bno1, title1, content1, id)
VALUES (seq_bno1.NEXTVAL, '������', '�۳����Դϴ�.', 'show3239');
INSERT INTO board1(bno1, title1, content1, id)
VALUES (seq_bno1.NEXTVAL, '������1', '�۳���1�Դϴ�.', 'show3239');
INSERT INTO board1(bno1, title1, content1, id)
VALUES (seq_bno1.NEXTVAL, '������2', '�۳���2�Դϴ�.', 'show3239');
INSERT INTO board1(bno1, title1, content1, id)
VALUES (seq_bno1.NEXTVAL, '������ 20�� ������ ���մϴ�', '9��10���� ��ȹ�� ���� 2~3������ �����ϽǺ� ����ּ���', 'chaeh');

SELECT * FROM board1;


SELECT * FROM board1 ORDER BY like_count1 DESC;


-- reply ���̺� ����
CREATE TABLE reply1 (
    rno1         NUMBER PRIMARY KEY,                 -- ��۹�ȣ
    bno1         NUMBER NOT NULL,                    -- �Խñ۹�ȣ
    rcontent1    VARCHAR2(2000) NOT NULL,            -- ��۳���
    replyer1     VARCHAR2(20) NOT NULL,              -- �ۼ���
    rdate1       TIMESTAMP DEFAULT SYSTIMESTAMP,     -- �ۼ���
    rupdate1     TIMESTAMP,                          -- ������
    FOREIGN KEY (bno1) REFERENCES board1(bno1) ON DELETE CASCADE
);
DROP TABLE reply1;

CREATE SEQUENCE seq_rno1 NOCACHE;

INSERT INTO reply1(rno1, bno1, rcontent1, replyer1)
VALUES (seq_rno1.NEXTVAL, 1, 'ù��° ����Դϴ�.', 'show3239');

select * from reply1;
drop table reply1;
drop SEQUENCE seq_rno1;


CREATE TABLE blike1(
    likeno1 NUMBER PRIMARY KEY,
    bno1    NUMBER NOT NULL,
    id     VARCHAR2(20) NOT NULL,
    FOREIGN KEY (bno1) REFERENCES board1(bno1) ON DELETE CASCADE,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE   
);
DROP TABLE blike1;

CREATE SEQUENCE seq_likeno1 NOCACHE;

commit;