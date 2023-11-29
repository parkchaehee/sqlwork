-- addrbook table ����
CREATE TABLE addrbook(
    bnum     NUMBER PRIMARY KEY,
    username VARCHAR2(20) NOT NULL,
    tel      VARCHAR2(20),
    email    VARCHAR2(30) UNIQUE,
    gender   VARCHAR2(6),
    regdate  TIMESTAMP DEFAULT SYSTIMESTAMP
);
CREATE SEQUENCE seq_bnum NOCACHE;  -- �ڵ� ����

INSERT INTO addrbook(bnum, username, tel, email, gender)
VALUES (seq_bnum.NEXTVAL, '����', '010-1234-5678', 'test@test.com', '��');
-- �̸��� �ߺ� üũ
INSERT INTO addrbook(bnum, username, tel, email, gender)
VALUES (seq_bnum.NEXTVAL, '���̷�', '010-1234-5678', 'test@test.com', '��');

COMMIT;

SELECT * FROM addrbook;

-- �̸��� khit@kh.kr ã��
SELECT email FROM addrbook
WHERE email = 'khit@kh.kr';
-- �ּ� ����
DELETE FROM addrbook WHERE bnum = 6;
-- �ּ� ����
UPDATE addrbook 
SET username = '�ݰ�', tel='010-6666-7777', gender='��'
WHERE bnum = 3;

COMMIT;
DROP TABLE addrbook;
DROP SEQUENCE seq_bnum;


