-- ���� Ÿ�� ���� �Լ�
-- ���밪 ���ϱ� : ABS()
-- ���� ���̺� : dual
SELECT abs(-10) FROM dual;

-- �ݿø� : ROUND(����, �ڸ���)
SELECT ROUND(127.67, 1) FROM dual;  -- �Ҽ�ù° �ڸ�
SELECT ROUND(127.67, 0) FROM dual;  -- 0�� �ڸ�
SELECT ROUND(127.67, -1) FROM dual; -- ���� �ڸ��� �ݿø�
SELECT ROUND(127.67, -2) FROM dual; -- ���� �ڸ��� �ݿø�

-- ����(����) : TRUNC(����, �ڸ���)
SELECT TRUNC(127.67, 1) FROM dual; -- �Ҽ� ù°�ڸ����� ǥ��(���� ����)
SELECT TRUNC(127.67, 0) FROM dual;
SELECT TRUNC(127.67, -1) FROM dual;
SELECT TRUNC(127.67, -2) FROM dual;

-- ����(����) : FLOOR(����) - ������ �����Ѵ�.
SELECT FLOOR(127.67) FROM dual; -- �Ҽ� ù°�ڸ����� ǥ��(���� ����)
SELECT FLOOR(127.6) FROM dual;

-- �ŵ����� : POWER(��, ����)
SELECT POWER(2, 3) FROM dual;

-- ���� Ÿ��
-- �ҹ��ڷ� �����ϱ� : LOWER('ABCD')
-- �빮�ڷ� �����ϱ� : UPPER('abcd')
SELECT LOWER('ABCD') FROM dual;
SELECT UPPER('abcd') FROM dual;

-- ���ڿ��� �Ϻκ��� ���� : SUBSTR(���ڿ�, �ε���, �ڸ���)
-- �ε����� 1������ ����
SELECT SUBSTR('abcd', 1, 2) FROM dual;

-- ���ڿ��� ã�� �ٲٱ� : REPLACE(���ڿ�, ����������, �����Ĺ���)
SELECT REPLACE('abcd', 'c', 'e') FROM dual;

-- ���ڿ��� ���� : LENGTH(���ڿ�)
SELECT LENGTH('abcd') FROM dual;

-- ����ŷ ó��
-- LPAD(���ڿ�, ��ü����, Ư������) - ���ʺ��� Ư�����ڷ� ä��
-- RPAD(���ڿ�, ��ü����, Ư������) - �����ʺ��� Ư�����ڷ� ä��
SELECT LPAD('today', 8, '*') FROM dual;
SELECT RPAD('today', 8, '*') FROM dual;

-- �ֹ����̺�
-- ���� ��� �ֹ� �ݾ��� ��������� �ݿø��ϱ�
SELECT custid AS ����ȣ,
       SUM(saleprice) AS �հ�ݾ�,
       COUNT(saleprice) AS �ֹ��Ǽ�,
       ROUND(AVG(saleprice), -2) AS ����ֹ��ݾ�
FROM orders
GROUP BY custid;

-- �������̺�
-- å������ ���ڼ�
-- å������ ����Ʈ�� : �ѱ�-3byte, ����, Ư������- 1byte
SELECT bookname,
       LENGTH(bookname) as ���ڼ�,
       LENGTHB(bookname) as ����Ʈ��
FROM book;

-- '�౸'�� '��'�� �����Ͽ� �˻�
SELECT bookname,
       REPLACE(bookname, '�౸', '��') as bookname
FROM BOOK;

-- �� ���̺�
-- �� �̸��� ���� ���� ���� ���� �ο����� ���Ͻÿ�.
SELECT SUBSTR(name, 1, 1) ��,
       COUNT(*) �ο�
FROM customer
GROUP BY SUBSTR(name, 1, 1);


