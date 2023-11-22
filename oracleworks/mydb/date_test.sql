-- ��¥ Į�� 
-- 1. create_date DATE DEFAULT SYSDATE (���� ��¥�� �ð�)
-- 2. hire_date DATE (Ư����¥)
-- ��¥
SELECT SYSDATE FROM DUAL;

-- ��¥�� �ð�
SELECT SYSTIMESTAMP FROM DUAL;

-- 20������ ��¥ ���
SELECT SYSDATE - 20 FROM DUAL;

-- Ư���� ������ 20������ ��¥ ���
SELECT TO_DATE('2023-10-25') - 20 FROM DUAL;

-- ������ �ֹ� Ȯ������
SELECT orderid �ֹ���ȣ,
       orderdate �ֹ���,
       TO_DATE(orderdate) + 10 Ȯ����
FROM orders;

CREATE TABLE date_test1(
    reg_date  DATE,
    hire_date DATE
);
-- �߰�1.
INSERT INTO date_test1 VALUES (SYSDATE, '2023-11-01');
INSERT INTO date_test1 VALUES (SYSDATE, TO_DATE('2023-11-01'));

-- �ڹ� Ŭ������ ������ �� ���
CREATE TABLE date_test2(
    reg_date  DATE DEFAULT SYSDATE,
    hire_date DATE
);
-- �߰�2
INSERT INTO date_test2(hire_date) VALUES ('2023-11-01');
INSERT INTO date_test2(hire_date) VALUES (TO_DATE('2023-11-01'));

SELECT * FROM date_test1;
SELECT * FROM date_test2;

SELECT * FROM book;
DROP TABLE date_test;