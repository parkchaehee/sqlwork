-- �����б� ������, ��� ���̺�
select * from summer_price;
select * from summer_register;

-- �л��� ��� ���������� �˻��Ͻÿ� 
select b.sid,
       b.subject,
       a.price
from summer_price a, summer_register b
where a.subject = b.subject;

-- �л��� ��� ���������� �˻��Ͻÿ� 
-- JOIN ~ ON
select b.sid,
       b.subject,
       a.price
from summer_price a join summer_register b
  on a.subject = b.subject;
  
-- �л��� ��� ���������� �˻��Ͻÿ� 
-- JOIN ~ USING(Į����) : ���� Į�� �̸��� ���� ���
                      -- ��Ī�� ����� �� ����
select b.sid,
       subject,
       a.price
from summer_price a join summer_register b
  USING (subject);

-- ���� ������ �հ踦 ���Ͻÿ�
select b.subject,
       sum(a.price)
from summer_price a, summer_register b
where a.subject = b.subject
group by b.subject;

-- ���� ������ �հ� �� ��ü �Ѱ踦 ���Ͻÿ�
-- ROLLUP(), CUBE()
-- NVL(����, '�Ѱ�')
-- ������ NULL�� �ƴϸ� ���� ���, NULL�̸� '�Ѱ�' ���
select NVL(b.subject, '�Ѱ�') ��������,
       sum(a.price) �������հ�
from summer_price a, summer_register b
where a.subject = b.subject
group by rollup(b.subject);

insert into summer_register 
values (301, 'Python');

insert into summer_price 
values ('Python', 40000);






