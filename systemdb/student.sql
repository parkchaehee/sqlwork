-- �л� ���̺� ����
CREATE TABLE student(
    snumber NUMBER PRIMARY KEY,
    sname   VARCHAR2(20) NOT NULL,
    age     NUMBER(2) NOT NULL,
    gender  VARCHAR2(6) NOT NULL, --�ѱ��ڿ� 3����Ʈ
    address VARCHAR2(50),
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



--��ü �л� ��ȸ
SELECT * FROM student;

--�̸��� �̰��� �л��� �̸��� ���� ��ȸ�ϱ�
SELECT snumber, sname, age FROM student
WHERE sname = '�̰�'; --����

--�̸��� '��'�� ���Ե� �л��� ��� ������ ����Ͻÿ�
SELECT * FROM student
WHERE sname LIKE '%��%'; --���� % �츦 �����ϰ� �ִ�

--���̰� 30�� �̻��̰� ������ ������ �л��� ������� ���
SELECT * FROM student
WHERE age >= 30 AND gender = '����'; --�ΰ��� ���� and

--�ּҰ� ���� �л��� �������
SELECT * FROM student
WHERE address IS NULL; --NULL�ΰ�� IS ���

--�ּҰ� ���� �л� ����(NULL)
DELETE FROM student 
WHERE address IS NULL;

-- �����ϱ�(��������-ASC, ��������-DESC)
-- �л��� ���̰� ���������� �����Ͽ� ���
SELECT * FROM student
ORDER BY age; --ASC �����ϸ� �������� //���� ������ ����
-- �а����� �������ڰ��а��� �л��߿��� �л��� ���̰� ���������� �����Ͽ� ���
SELECT * FROM student
WHERE mname = '�������ڰ��а�'

ORDER BY age DESC; --���� ������ ����//������order by �����


--Ʈ�����(�ѹ��� Ŀ���ϱ����� �����ϸ� ���, ������ ��)
ROLLBACK; --����

--�ּҰ� ���� �л� ����(���鹮��)
DELETE FROM student 
WHERE address = ' ';

-- �ּҰ� NULL�� �����Ϳ� '������ ���뱸'�� �Է�
UPDATE student SET address = '������ ���뱸' --UPDATE ����
WHERE address IS NULL; --NULL�ΰ���

COMMIT;

DROP TABLE student;