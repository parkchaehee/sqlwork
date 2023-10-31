-- ��� �ű��, ntitle() ����-120, ����-80, ����-80
CREATE TABLE exam_score(
    �̸�   VARCHAR2(20),
    ����   NUMBER,
    ����   NUMBER,
    ����   NUMBER
);

INSERT INTO exam_score VALUES('���ϳ�', 116, 77, 75);
INSERT INTO exam_score VALUES('���ϳ�', 101, 69, 80);
INSERT INTO exam_score VALUES('���ϳ�', 118, 62, 60);
INSERT INTO exam_score VALUES('���ϳ�', 96, 72, 70);
INSERT INTO exam_score VALUES('���ϳ�', 103, 77, 55);
INSERT INTO exam_score VALUES('���ϳ�', 78, 66, 61);
INSERT INTO exam_score VALUES('���ϳ�', 85, 72, 75);
INSERT INTO exam_score VALUES('���ϳ�', 99, 70, 53);
INSERT INTO exam_score VALUES('���ϳ�', 105, 75, 69);
INSERT INTO exam_score VALUES('���ϳ�', 117, 68, 73);

SELECT * FROM exam_score;

-- NTILE(��) OVER(ORDER BY Į����)
-- �־��� ����ŭ ����� n�������
-- ���� �࿡ �ش��ϴ� ����� ���ϴ� �Լ�
-- ���� ���� ��� �˻�
SELECT �̸�,
       NTILE(8) OVER(ORDER BY ���� DESC) ������,
       ����
FROM exam_score;

-- '���ϳ�'�� ������ ���� ���� ��� �˻�
SELECT �̸�,
       NTILE(8) OVER(ORDER BY ���� DESC) ������,
       ����
FROM exam_score
WHERE �̸� <> '���ϳ�';  -- '<>'�� '='�� �ݴ�

-- ��ü ���� ��� �˻�
SELECT �̸�,
       NTILE(8) OVER(ORDER BY ���� DESC) ������,
       ����,
       NTILE(8) OVER(ORDER BY ���� DESC) ������,
       ����,
       NTILE(8) OVER(ORDER BY ���� DESC) ���е��,
       ����
FROM exam_score;

COMMIT;




