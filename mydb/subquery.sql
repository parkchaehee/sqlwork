-- ���� ����(Sub Query) : �μ�����(��ø ����)
-- SELECT�� ���ο� �� SELECT���� ������

-- ������ ������ ���� ���� ������ �˻��Ͻÿ�
-- MAX(�āu��) : 35000
SELECT max(price) FROM book;

-- �����߿��� ���� ��� ������ �̸��� �˻��Ͻÿ�
SELECT bookname
FROM book
where price = (SELECT max(price) FROM book);

-- ������ ������ ���� �ִ� ���� �̸��� �˻�
SELECT custid FROM orders;

/*SELECT name 
FROM customer
WHERE custid IN(1,2,3,4);*/

SELECT name 
FROM customer
WHERE custid IN(SELECT custid FROM orders);

-- ���� ������� 
-- ������ ������ ���� �ִ� ���� �̸��� �˻�
SELECT DISTINCT cus.name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
ORDER BY name;

SELECT DISTINCT cus.name
FROM customer cus INNER JOIN orders ord
    ON cus.custid = ord.custid
ORDER BY name;

