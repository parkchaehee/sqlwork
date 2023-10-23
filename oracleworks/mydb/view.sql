-- ��(VIEW) ����
-- UPDATE, DELETE ����� ����� �� ����
-- �ּҿ� '���ѹα�'�� �����ϴ� ����� ������ �並 ����ÿ�
CREATE VIEW vw_customer
AS SELECT * FROM customer
   WHERE address LIKE '���ѹα�%';
   
SELECT * FROM vw_customer;

-- �̸��� �迬�Ƹ� ���������� ������
UPDATE vw_customer 
  SET name = '������'
  WHERE name = '�迬��';
  
-- �����̵� 3�� ���� ����
-- �����ϰ� �ִ� order ���̺��� �־ ���� �Ұ�
DELETE FROM vw_customer
WHERE custid = 3;

COMMIT;

-- ���� ���� �ֹ��� ���� ������ �˻�
-- �� �����
CREATE VIEW vw_book_order AS
SELECT cs.name, bk.bookname, od.saleprice
FROM book bk, customer cs, orders od
WHERE bk.bookid = od.bookid
  AND cs.custid = od.custid;
  
SELECT * FROM vw_book_order;

SELECT COUNT(*) ��ü�Ǽ�
FROM vw_book_order;

-- VIEW ����
DROP VIEW vw_customer;