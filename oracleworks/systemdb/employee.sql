-- ��� ���̺� ����
CREATE TABLE employee(
    empid    NUMBER(3),
    empname  VARCHAR2(20) NOT NULL,
    age      NUMBER(3),
    deptid   NUMBER,
    PRIMARY KEY(empid),   -- �⺻Ű
    FOREIGN KEY(deptid) REFERENCES department(deptid) -- �ܷ�Ű
);

-- ��� �ڷ� �߰�
INSERT INTO employee(empid, empname, age, deptid)
VALUES (101, '�̰�', 27, 10);
-- �μ��ڵ尡 ��� �ܷ�Ű �������� ����, ���� �̻�
INSERT INTO employee(empid, empname, age, deptid)
VALUES (102, '���', 34, 30);  
INSERT INTO employee(empid, empname, deptid)
VALUES (103, '����', 20);
INSERT INTO employee(empid, empname, age, deptid)
VALUES (104, '���Ѱ�', 41, 20);

-- ����� ��� ���� ���
SELECT * FROM employee;

-- ����̸��� ���� Į�� ���
SELECT empname, age FROM employee;

-- ����̸��� '���'�� ������ ���
SELECT * FROM employee
WHERE empname = '���';

-- ���� 30�� �̻��� ��� �˻�
SELECT * FROM employee
WHERE age > 30;

-- ���̰� �Էµ��� ���� ��� �˻�
SELECT * FROM employee
WHERE age IS NULL;

-- ���ڿ� �˻�(����̸����� '��'�� �����ϴ� ��� �˻�)
SELECT * FROM employee
WHERE empname LIKE '%��%';

-- ���ڿ� �˻�(����̸����� '��'�� �����ϰų� �Ǵ� ���̰� ������� ���� ��� �˻�)
SELECT * FROM employee
WHERE empname LIKE '%��%' OR age IS NULL;

-- ���ڿ� �˻�(����̸����� '��'�� �����ϰ� ���̰� ������� ���� ��� �˻�)
SELECT * FROM employee
WHERE empname LIKE '%��%' AND age IS NULL;

-- �μ���ȣ�� 20�� ��� �˻�
SELECT * FROM employee
WHERE deptid = 20;

COMMIT;

DROP TABLE employee;