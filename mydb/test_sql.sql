-- �ǽ�����

-- 1. ������ �̸��� �ּ� �˻�
SELECT name, address FROM customer;

-- 2. ��� ���� �̸�, �ּ�, ��ȭ��ȣ �˻�
SELECT name, address, phone FROM customer;

-- 3. �ּҰ� ������ �� �˻�
SELECT * FROM customer
WHERE address LIKE '%����%';

-- 4. ���� �̸��� �迬�� Ȥ�� �Ȼ��� �� �˻�
SELECT * FROM customer
WHERE name = '�迬��' OR name = '�Ȼ�'; --in �� ����

-- 5. �ּҰ� ���ѹα��� �ƴ� �� �˻�
SELECT * FROM customer
WHERE address NOT IN('���ѹα�'); --not like

-- 6. ��ȭ��ȣ�� ���� �� �˻�
SELECT * FROM customer
WHERE phone is null;

SELECT * FROM customer
WHERE phone is not null;

-- 7. ���� �̸������� ����(��������asc-����)
SELECT * FROM customer
ORDER BY name;

-- 8. ���� �� �ο���
SELECT COUNT(*) AS ���ο��� 
FROM customer;
