-- �ǽ� ����

-- 1. ��� ���� �̸��� �ּҸ� �˻��Ͻÿ�
select name, address from customer;
-- 2. ��� ���� �̸�, �ּ�, ��ȭ��ȣ�� �˻��Ͻÿ�
select name, address, phone from customer;
-- 3. �ּҰ� '����'�� ���� �˻��Ͻÿ�
select * from customer 
where address LIKE '����%';
-- 4. ���� �̸��� '�迬��' Ȥ�� '�Ȼ�'�� ���� �˻��Ͻÿ�
select * from customer 
where name in ('�迬��', '�Ȼ�');

select * from customer 
where name = '�迬��' or name = '�Ȼ�';
-- 5. �ּҰ� '���ѹα�'�� �ƴ� ���� �˻��Ͻÿ�
select * from customer
where address not like '���ѹα�%';
-- 6. ��ȭ��ȣ�� ���� ���� �˻��Ͻÿ�
select * from customer
where phone is null;

select * from customer
where phone is not null;
-- 7. ���� �̸������� �����Ͻÿ�(��������)
select * from customer
order by name asc; --asc ����������
-- 8 ���� �� �ο����� ���Ͻÿ�
select count(*) as ���ο�
from customer;





