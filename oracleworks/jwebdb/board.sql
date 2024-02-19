-- board ���̺� ����
CREATE TABLE board(
    bno         NUMBER PRIMARY KEY,
    title       VARCHAR2(100) NOT NULL,
    content     CLOB NOT NULL,
    createdate  TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifydate  TIMESTAMP,
    hit         NUMBER DEFAULT 0,
    filename    VARCHAR2(50),
    id          VARCHAR2(20) NOT NULL,
    FOREIGN KEY(id) REFERENCES member(id) ON DELETE CASCADE
);
CREATE SEQUENCE seq_bno NOCACHE;

INSERT INTO board (bno, title, content, id)
VALUES (seq_bno.NEXTVAL, '������1', '�۳���1�Դϴ�.', 'khit');
INSERT INTO board (bno, title, content, id)
VALUES (seq_bno.NEXTVAL, '������2', '�۳���2�Դϴ�.', 'today');
INSERT INTO board (bno, title, content, id)
VALUES (seq_bno.NEXTVAL, '������3', '�۳���3�Դϴ�.', 'khit');
INSERT INTO board (bno, title, content, id)
VALUES (seq_bno.NEXTVAL, '������4', '�۳���4�Դϴ�.', 'cloud');

SELECT * FROM board;

-- ��� ����
INSERT INTO board (bno, title, content, id)
(SELECT seq_bno.NEXTVAL, title, content, id FROM board); 

-- ������ ó��
SELECT ROWNUM, board.*
FROM board
WHERE ROWNUM >= 11 AND ROWNUM <= 20;  -- ROWNUM 1�� �����ؼ� �˻�

-- ������ ó��(��������)
SELECT *
FROM (SELECT ROWNUM RN, board.* 
        FROM board ORDER BY bno DESC)
WHERE RN >= 1 AND RN <= 10;

-- ������ ó��(�������� - deep2�ܰ�) -- bo ��Ī ����
SELECT *
FROM (SELECT ROWNUM RN, bo.* 
        FROM (SELECT * FROM board ORDER BY bno DESC) bo)  
WHERE RN >= 1 AND RN <= 10;

-- ��ü �Խñ� ��
SELECT COUNT(*) AS total FROM board;

-- ���ڿ� �˻�(����, ���̵�)
SELECT * FROM board 
-- WHERE title LIKE '%2%';
WHERE id LIKE 'today';


COMMIT;
SELECT * FROM board ORDER BY createdate DESC;

-- ��ȣ�� 7���� �Խñ��� ������ '�������� ����', ������ '�������� �����Դϴ�.'
UPDATE board SET title = '�������� ����', content = '�������� �����Դϴ�.'
WHERE bno = 7;

-- �Խñ� 3�� ����
DELETE FROM board;

-- ��ȣ�� 8���� �Խñ��� ��õ���� 1����(����)
UPDATE board SET hit = hit + 1
WHERE bno = 8;

DROP SEQUENCE seq_bno;


