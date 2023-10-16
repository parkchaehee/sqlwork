-- �л� ���̺� ����
CREATE TABLE student(
    snumber  NUMBER PRIMARY KEY,
    sname    VARCHAR2(20) NOT NULL,
    age      NUMBER(2) NOT NULL,
    gender   VARCHAR2(6) NOT NULL,
    address  VARCHAR2(50),
    mname   VARCHAR2(30) NOT NULL,
    FOREIGN KEY(mname) REFERENCES major(mname) --�ܷ�Ű
);

-- �л� �߰�
INSERT INTO student(snumber, sname, age, gender, address, mname) 
VALUES (1001, '�̰�', 22, '����', '����� ������', '����Ʈ�����а�');
INSERT INTO student(snumber, sname, age, gender, address, mname) 
VALUES (1002, '�ڴ��', 34, '����', '��õ�� ����', '�������ڰ��а�');
INSERT INTO student(snumber, sname, age, gender, address, mname) 
VALUES (1003, '�쿵��', 31, '����', '', '�������ڰ��а�');
-- �θ�Ű�� ���� �����ʹ� ���� �̻� �߻�
INSERT INTO student(snumber, sname, age, gender, address, mname) 
VALUES (1003, '���', 29, '����', '����� ���빮��', 'ȸ���а�');

-- ��ü �л� ��ȸ
SELECT * FROM student;

-- �̸��� �̰��� �л��� �й��� �̸��� ���̸� ��ȸ�ϱ�
SELECT snumber, sname, age FROM student
WHERE sname = '�̰�';

-- �̸��� '��'�� ���Ե� �л��� ��� ������ ����Ͻÿ�
SELECT * FROM student
WHERE sname LIKE '%��%';

-- ���̰� 30�� �̻��̰�, ������ ������ �л��� ��� ������ ����Ͻÿ�.
SELECT * FROM student
WHERE age >= 30 AND gender = '����';

-- �ּҰ� ���� �л��� ������ ����Ͻÿ�
SELECT * FROM student
WHERE address IS NULL;

-- �ּҰ� ���� �л� �����ϱ�(NULL)
DELETE FROM student
WHERE address IS NULL;

-- �ּҰ� ���� �л� �����ϱ�(���鹮��)
DELETE FROM student
WHERE address = ' ';

-- �ּҰ� null�� �����Ϳ� '������ ���뱸'�� �Է�
UPDATE student SET address = '������ ���뱸'
WHERE address IS NULL;

-- �����ϱ�(��������-ASC, ��������-DESC)
-- asc�� �����ϸ� ����������
-- �л��� ���̰� ���� ������ �����Ͽ� ����Ͻÿ�
SELECT * FROM student
ORDER BY age;

-- �а����� '�������ڰ��а�' �л��߿��� ���̰� ���� ������ �����Ͽ� ����Ͻÿ�
SELECT * FROM student
WHERE mname = '�������ڰ��а�'
ORDER BY age DESC;

-- Ʈ�����(�ѹ��� Ŀ���ϱ����� �����ϸ� ���, ������ ��)
ROLLBACK;

COMMIT;

DROP TABLE student; 