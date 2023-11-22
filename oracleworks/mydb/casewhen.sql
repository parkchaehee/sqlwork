-- ���� ó�� �Լ�
CREATE TABLE Mytest(
    class VARCHAR2(1),   --��
    name VARCHAR2(6)    --�̸�
);

INSERT INTO Mytest VALUES ('A', '����');
INSERT INTO Mytest VALUES ('A', '����');
INSERT INTO Mytest VALUES ('A', '����');
INSERT INTO Mytest VALUES ('B', '����');
INSERT INTO Mytest VALUES ('B', '����');
INSERT INTO Mytest VALUES ('C', '����');
INSERT INTO Mytest VALUES ('C', '����');

CREATE TABLE Mytest2(
    COL1    NUMBER(1)
);
DROP TABLE Mytest2;

INSERT INTO Mytest2 VALUES (NULL);
INSERT INTO Mytest2 VALUES (0);
INSERT INTO Mytest2 VALUES (NULL);
INSERT INTO Mytest2 VALUES (0);
INSERT INTO Mytest2 VALUES (NULL);

COMMIT;
SELECT * FROM Mytest;

--�ݺ� �ο��� ���
SELECT class,
        count(*) �ο���
FROM Mytest
group by class;

--�ݺ� �ο���(�ߺ��̸�������) ���
SELECT class,
        count(DISTINCT name) �ο���
FROM Mytest
group by class;

-- DECODE(Į����, ����, ��, ����)�� �̿��� �ο��� ���
SELECT
    COUNT(DECODE(class, 'A', 1)) A,
    COUNT(DECODE(class, 'B', 1)) B,
    COUNT(DECODE(class, 'C', 1)) C
FROM Mytest;

/*
case
*/
SELECT
    COUNT(CASE
        WHEN class='A' THEN 1
            END) A,
    COUNT(CASE
        WHEN class='B' THEN 1
            END) B,
    COUNT(CASE
        WHEN class='C' THEN 1
            END) C
FROM Mytest;

-- Mytest2 ���� ó��
-- COL1�� �����Ͱ� NULL�̸� 0���� ǥ����
SELECT DECODE(COL1, NULL, -1, COL1)
FROM Mytest2;

SELECT 
    DECODE(COL1, NULL, -1, COL1) DATA1,
    CASE 
        WHEN COL1 IS NULL THEN -1 
    ELSE COL1
    END DATA2
FROM Mytest2;

-- ��Ī
SELECT 
    DECODE(T.COL1, NULL, -1, T.COL1) DATA1,
    CASE 
        WHEN T.COL1 IS NULL THEN -1 
    ELSE T.COL1
    END DATA2
FROM Mytest2 T;

SELECT * FROM Mytest2;











