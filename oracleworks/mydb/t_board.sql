-- 자바 게시판 구현할 board 테이블 생성
CREATE TABLE t_board(
    bno       NUMBER PRIMARY KEY,
    btitle    VARCHAR2(100) NOT NULL,
    bcontent  CLOB NOT NULL,   -- CLOB(Character Large Of Byte)
    bwriter   VARCHAR2(50) NOT NULL,
    bdate     DATE DEFAULT SYSDATE
);
CREATE SEQUENCE seq_b1 NOCACHE;

INSERT INTO t_board(bno, btitle, bcontent, bwriter)
VALUES (seq_b1.NEXTVAL, '가입 인사', '안녕하세요~ 만나서 반갑습니다.', 'today10');
INSERT INTO t_board(bno, btitle, bcontent, bwriter)
VALUES (seq_b1.NEXTVAL, '공지 사항', '천장 에어컨 청소합니다.', 'admin0000');

-- 재귀 복사
INSERT INTO t_board(bno, btitle, bcontent, bwriter)
(SELECT seq_b1.NEXTVAL, btitle, bcontent, bwriter FROM t_board);

SELECT * FROM t_board;

-- ROWNUM을 이용한 페이지처리
SELECT ROWNUM, bno, btitle, bcontent, bwriter, bdate 
FROM t_board
WHERE ROWNUM > 0 AND ROWNUM <= 10;
--ORDER BY bno DESC;

-- ROWNUM은 1을 포함해야하므로 rn을 사용하여 페이지 처리함
SELECT *
  FROM (SELECT ROWNUM rn, bno, btitle, bcontent, bwriter, bdate
        FROM t_board  order by bno desc)
WHERE rn >= 10 AND rn <= 20;

DROP SEQUENCE seq_b1;
TRUNCATE TABLE t_board;