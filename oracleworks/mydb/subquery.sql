-- ���� ����(Sub Query): �μ�����(��ø ����)
-- SELECT�� ���ο� �� SELECT���� ������

-- ������ ������ ���� ���� ������ �˻��Ͻÿ�
-- MAX(price) : 35000
SELECT MAX(price) FROM book;
-- ������ ��������
-- �����߿��� ���� ��� ������ �̸��� �˻��Ͻÿ�
SELECT bookname, price
FROM book
WHERE price = 
      (SELECT MAX(price) FROM book);
      
-- ������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
SELECT custid FROM orders;

SELECT name
FROM customer
WHERE custid = 3;

-- ������ ��������
-- ������ ������ ���� �ִ� ���� �̸� ���
SELECT name
FROM customer
WHERE custid IN (SELECT custid FROM orders);

-- ������ ��������
-- ������ ������ ���� ���� ���� �̸� ���
SELECT name
FROM customer
WHERE custid NOT IN (SELECT custid FROM orders);

-- ���� ��� : customer, orders
-- ������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
SELECT DISTINCT cus.name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;

-- FROM���� �ִ� �������� - �ζ��κ��� ��
-- ���� �̸��� �� ���� �Ǹž� �˻�(customer, orders)
-- �׷캰 : Group by
-- ��, �� ��ȣ�� 2 ������ 

-- ���� ����
SELECT cs.name, SUM(od.saleprice) total
FROM customer cs, orders od
WHERE cs.custid = od.custid
  AND cs.custid <= 2
GROUP BY cs.name
  HAVING SUM(od.saleprice) >= 30000;
  
/*
  ���� ����
  1. FROM�� ���̺��
  2. WHERE, GROUP BY
  3. SELECT ��
  4. ORDER ��
*/

-- ���� ����
SELECT cs.name, SUM(od.saleprice)
FROM (SELECT * FROM customer
        WHERE custid <= 2) cs, 
     orders od
WHERE cs.custid = od.custid
GROUP BY cs.name;

select * from product;
select * from product_review;
-- ��Į�� �������� : select ���� �ִ� select���� ����
-- ��ǰ ���� ���̺� �ִ� ��ǰ �̸� �˻�
select a.product_code,
       (select b.product_name
         from product b
         where a.product_code = b.product_code) product_name,
       a.member_id,
       a.content
from product_review a;

SELECT *
FROM product a LEFT JOIN product_review b
  ON a.product_code = b.product_code
 WHERE b.content IS NULL;
  

