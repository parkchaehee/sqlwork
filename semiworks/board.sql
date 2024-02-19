-- �����ı�

CREATE TABLE board (
    bno         NUMBER PRIMARY KEY,
    title       VARCHAR2(100),
    content     CLOB,
    createdate  TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifydate  TIMESTAMP,
    hit         NUMBER DEFAULT 0,
    filename    VARCHAR2(50),
    id          VARCHAR2(20) NOT NULL,
    reply_count int,
    like_count int,
    FOREIGN KEY(id) REFERENCES users(id) ON DELETE CASCADE    
);
DROP TABLE board;

CREATE SEQUENCE seq_bno NOCACHE;

INSERT INTO board(bno, title, content, id)
VALUES (seq_bno.NEXTVAL, '������', '�۳����Դϴ�.', 'show3239');

INSERT INTO board(bno, title, content, id)
VALUES (seq_bno.NEXTVAL, '��Ÿ������ ���̺�', '�ź��̰� �Ϳ���', 'chaeh');

SELECT * FROM board ORDER BY bno;

SELECT * FROM board ORDER BY like_count DESC;

COMMIT;
