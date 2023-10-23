-- ���� �б� ���̺�
CREATE TABLE summer_class(
    sid      NUMBER,        -- �й�
    subject  VARCHAR2(20),  -- ��������
    price    NUMBER         -- ������
);

INSERT INTO summer_class VALUES (100, 'C', 30000);
INSERT INTO summer_class VALUES (101, 'Java', 45000);
INSERT INTO summer_class VALUES (200, 'Python', 40000);
INSERT INTO summer_class VALUES (201, 'Java', 45000);

-- �����б⸦ �����ϴ� �л��� �й��� �����ϴ� ������?
SELECT sid, subject
FROM summer_class;

-- 'Python' ������ �������?
SELECT price
FROM summer_class
--WHERE subject LIKE 'Python';
WHERE subject = 'Python';

-- �����б⸦ ��� �л����� ������ �Ѿ���?
SELECT COUNT(sid) �л���,
       SUM(price) �������Ѿ�
FROM summer_class;

-- 200�� �л��� ���� ���(����)
DELETE FROM summer_class 
WHERE sid = 200;

-- ���� �̻�
-- 'Python' ������ �������?
SELECT price
FROM summer_class
WHERE subject = 'Python';

-- ���� �̻�
-- C++ ���� ���� :  ��û�� �л��� ����
INSERT INTO summer_class VALUES (NULL, 'C++', 35000);

-- �л� 3��, Ʃ���� 4���� ����ġ �߻�
SELECT COUNT(*) �����ο�
FROM summer_class;

SELECT COUNT(sid) �����ο�
FROM summer_class;

-- Java �����ᰡ 45,000������ 40,000������ �����
UPDATE summer_class 
SET price = 40000
WHERE subject = 'Java';

-- ���� �̻�
-- ���� UPDATE���� ����ó�� �̻� ���� �߻�
-- 1�Ǹ� ����
UPDATE summer_class 
SET price = 40000
WHERE subject = 'Java' 
  AND sid = 101;
  
-- Java �������?
SELECT price
FROM summer_class
WHERE subject = 'Java';

COMMIT;

ROLLBACK;

