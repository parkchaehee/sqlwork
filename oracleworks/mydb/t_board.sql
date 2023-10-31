-- �ڹ� �Խ��� ������ board ���̺� ����
CREATE TABLE t_board(
    bno       NUMBER PRIMARY KEY,
    btitle    VARCHAR2(100) NOT NULL,
    bcontent  CLOB NOT NULL,   -- CLOB(Character Large Of Byte)
    bwriter   VARCHAR2(50) NOT NULL,
    bdate     DATE DEFAULT SYSDATE
);
CREATE SEQUENCE seq_b1 NOCACHE;

INSERT INTO t_board(bno, btitle, bcontent, bwriter)
VALUES (seq_b1.NEXTVAL, '���� �λ�', '�ȳ��ϼ���~ ������ �ݰ����ϴ�.', 'today10');
INSERT INTO t_board(bno, btitle, bcontent, bwriter)
VALUES (seq_b1.NEXTVAL, '���� ����', 'õ�� ������ û���մϴ�.', 'admin0000');

-- ��� ����
INSERT INTO t_board(bno, btitle, bcontent, bwriter)
(SELECT seq_b1.NEXTVAL, btitle, bcontent, bwriter FROM t_board);

SELECT * FROM t_board;

-- ROWNUM�� �̿��� ������ó��
SELECT ROWNUM, bno, btitle, bcontent, bwriter, bdate 
FROM t_board
WHERE ROWNUM > 0 AND ROWNUM <= 10;
--ORDER BY bno DESC;

-- ROWNUM�� 1�� �����ؾ��ϹǷ� rn�� ����Ͽ� ������ ó����
SELECT *
  FROM (SELECT ROWNUM rn, bno, btitle, bcontent, bwriter, bdate
        FROM t_board  order by bno desc)
WHERE rn >= 10 AND rn <= 20;

DROP SEQUENCE seq_b1;
TRUNCATE TABLE t_board;