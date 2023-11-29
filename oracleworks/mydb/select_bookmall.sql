
SELECT * FROM customer;

select * from customer where phone is null;

SELECT * FROM orders;
-- �ֹ� ���̺��� Į��, �ڷ��� ����
DESC orders;

-- ��� �Լ� - ����(COUNT), �հ�(SUM), ���(AVG), �ִ밪(MAX), �ּҰ�(MIN)
-- COUNT(*) : '*' - Į����
-- COUNT(Į����) : 
SELECT COUNT(*) AS ���ǸŰǼ�
FROM orders;

SELECT SUM(saleprice) AS ���Ǹž�,
       AVG(saleprice) AS ����վ�
FROM orders;

-- ������ �ֹ��� ������ ���Ǹ��� ���
-- �׷����� ������ ��� - GROUP BY Į����
SELECT custid,
       COUNT(*) AS ��������,
       SUM(saleprice) AS ���Ǹž�
FROM orders
GROUP BY custid;

-- ������ �ֹ��� ������ ���Ǹžװ� ���������� ���
-- ���������� 3�� �̻��� �ڷ� �˻�
-- HAVING �� ��� - GROUP BY������ ������ ������ ���
SELECT custid, 
       COUNT(*) AS ��������,
       SUM(saleprice) AS ���Ǹž�
FROM orders
GROUP BY custid
HAVING COUNT(*) >=3
  AND SUM(saleprice) > 35000;

SELECT COUNT(*) AS �Ѱ���, COUNT(phone) AS ��ȭ��ȣ�� 
FROM customer;

-- �����߿��� �ִ밡��, �������� �˱�
SELECT MAX(price) �ְ���, MIN(price) ��������
FROM book;
select * from book;

select bookname
from book
where price = (select max(price) from book);

-- '3�� ��(�Ȼ�)'�� �ֹ��� ������ �� �Ǹž� ���ϱ�
select sum(saleprice) as ���Ǹž�
from orders
where custid = 3;

-- 3�� ���� ���̵�� �ֹ� ������ �˻�
select custid, saleprice
from orders
where custid = 3;

-- ����(Join)
-- ��������(EQUI JOIN): equal(=)�� ����ϴ� ����
-- ���̺�A.Į���� = ���̺�B.Į���� (Į�� - �⺻Ű�� �ܷ�Ű)
-- ���� �̸��� ���� �ֹ��� �ֹ������� �˻��Ͻÿ�(customer, orders ����)
select customer.name, orders.saleprice
from customer, orders
where customer.custid = orders.custid;

-- ��Ī ��� ����
-- �� �̸��� 1�� ����(��������), �ֹ� ���ݺ� �������� 2�� ����
select cus.name, ord.saleprice
from customer cus, orders ord
where cus.custid = ord.custid
order by cus.name, ord.saleprice desc;

-- 3�� ���� ���̵�� �����̸��� �ֹ� ������ �˻�
select custid, bookname, saleprice
from orders, book
where orders.bookid = book.bookid
   and orders.custid = 3;

select customer.custid, book.bookname, orders.saleprice
from orders, customer, book
where orders.custid = customer.custid
   and orders.bookid = book.bookid
   and customer.name = '�Ȼ�';
