-- ��(VIEW) ����
-- UPDATE, DELETE ����� ����Ҽ�����
-- �ּҿ� '���ѹα�'�� �����ϴ� ����� ������ �並 ����ÿ�

CREATE VIEW vw_customer
AS SELECT * FROM customer
    WHERE address LIKE '���ѹα�%';
    
SELECT * FROM vw_customer;

-- UPDATE//�̸��� �迬�Ƹ� ���������� �����ϱ�
UPDATE vw_customer
    SET name = '������'
    WHERE name = '�迬��';
    
-- �����̵� 3�� ���� ����
-- �����ϰ� �ִ� order���̺��� �־ ���� �Ұ�
DELETE FROM vw_customer
     WHERE custid = 3;
    
COMMIT;

INSERT INTO vw_customer
VALUES (11, '���쿵', '��õ', '031-1234');

ROLLBACK;

-- VIEW ����
DROP VIEW vw_customer;
    
    
