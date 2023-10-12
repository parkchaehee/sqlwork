
SELECT * FROM orders;
-- �ֹ� ���̺��� Į���� �ڷ��� �˻�
DESC orders;

-- ��� �Լ� - ����(COUNT), �հ�(SUM), ���(AVG), �ִ밪(MAX), �ּҰ�(MIN)
-- COUNT(*) : * - Į������ ����
-- COUNT(Į����) : �� Į���� ����
SELECT COUNT(orderid) AS ���ǸŰǼ�
FROM orders;

SELECT SUM(saleprice) AS ���Ǹž�,
       AVG(saleprice) AS ����վ�
FROM orders;

-- ���� �ֹ��� ������ ���Ǹž�
SELECT SUM(saleprice) AS ���Ǹž�
FROM orders;

-- ������ �ֹ��� ������ ���Ǹž�
-- �׷����� ������ ��� - GROUP BY Į����
SELECT custid,
       COUNT(*) AS ��������,
       SUM(saleprice) AS ���Ǹž�
FROM orders
GROUP BY custid;

-- ������ �ֹ��� ������ ���Ǹžװ� ��������
-- ���������� 3�� �̻��� �ڷ� �˻�
-- HAVING�� ��� - GROUP BY������ ������ ������ ���
SELECT custid,
       COUNT(*) AS ��������,
       SUM(saleprice) AS ���Ǹž�
FROM orders
GROUP BY custid --�̸���, �׷캰
HAVING COUNT(*) >=3;
    --AND SUM(saleprice) >= 35000;

-- phone�� 1���� //NULL//�ΰ�� ����
SELECT COUNT(*) AS �Ѱ���, COUNT(phone) AS ��ȭ��ȣ�� 
FROM customer;

-- �����߿��� �ִ밡��, �������� �˱�
SELECT MAX(price) �ְ���, MIN(price) ��������
FROM book;

select * from customer;

-- 3�� ��(�Ȼ�)�� �ֹ��� ������ �� �Ǹž�
select sum(saleprice) as ���Ǹž�
from orders
where custid = 3; -- ���� ��=3����

-- ����(Join)
-- ��������(EZUI JOIN) : equal(=)�� ����ϴ� ����
-- ���̺�a.Į���� = ���̺�b.Į���� //Į�� - �ܷ�Ű ����
-- ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� �˻��Ͻÿ�(costomer, orders ����)
select customer.name, orders.saleprice
from customer, orders
where customer.custid = orders.custid;

-- ��Ī ��� ����
-- �� �̸��� 1�� ����(��������), �ֹ� ���ݺ� �������� 2�� ����
select cus.name, ord.saleprice
from customer cus, orders ord
where cus.custid = ord.custid
order by cus.name, ord.saleprice desc;

-- 3�� ���� ���̵�, �����̸�, �ֹ�����
select custid, bookname, saleprice
from orders, book
where orders.bookid = book.bookid
    and orders.custid = 3;

select customer.custid, book.bookname, orders.saleprice
from orders, customer, book
where orders.custid = customer.custid
    and orders.bookid = book.bookid
    and customer.name = '�Ȼ�';
    
    
    
