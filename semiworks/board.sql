-- 여행후기

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
VALUES (seq_bno.NEXTVAL, '글제목', '글내용입니다.', 'show3239');

INSERT INTO board(bno, title, content, id)
VALUES (seq_bno.NEXTVAL, '코타오에서 다이빙', '거북이가 귀여워', 'chaeh');

SELECT * FROM board ORDER BY bno;

SELECT * FROM board ORDER BY like_count DESC;

COMMIT;

