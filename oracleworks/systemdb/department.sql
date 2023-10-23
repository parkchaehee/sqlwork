-- �μ��� ��� ���̺� ����
CREATE TABLE department(
    deptid    NUMBER PRIMARY KEY,   -- �⺻Ű
    deptname  VARCHAR2(20) NOT NULL, -- NULL ����
    location  VARCHAR2(20) NOT NULL
);

-- �μ� �ڷ� �߰� --
INSERT INTO department(deptid, deptname, location)
VALUES (10, '������', '����');
INSERT INTO department(deptid, deptname, location)
VALUES (20, '������', '��õ');
INSERT INTO department(deptid, deptname, location)
VALUES (30, '��������', '����');

-- �ڷ� �˻�(Ư�� Į�� �˻�)
SELECT deptid, deptname FROM department;

-- ��� Į�� �˻�('*' ���)
SELECT * FROM department;

-- Ư���� ������(��:�ο�) �˻� -> WHERE ������ ���
-- �μ��̸��� �������� row(���ڵ�) �˻�
SELECT * FROM department 
WHERE deptname = '������';

-- �ڷ� ����(�μ���ȣ�� 20���� �ο��� �μ��̸��� ���� ������ -> �濵��)
UPDATE department SET deptname = '�濵��'
WHERE deptid = 20;

ROLLBACK; -- COMMIT ������ �����ϸ� ��ҵ�

-- �ڷ� ����(�μ���ȣ�� 30���� �������� ����)
-- ���� �̻�(�ڽ��� �����ϰ� �����Ƿ� ���� �ȵ�)
DELETE FROM department
WHERE deptid = 10;

COMMIT;
