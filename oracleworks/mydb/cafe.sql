-- ���̺� ����, �ڷ� ����
CREATE TABLE drink(
    drink_code   VARCHAR2(3) PRIMARY KEY,  -- ���� �ڵ�
    drink_name  VARCHAR2(30) NOT NULL  -- ���� �̸�
);

CREATE TABLE cafe_order(
    order_no     VARCHAR2(10) PRIMARY KEY,  -- �ֹ� ��ȣ
    drink_code   VARCHAR2(3) NOT NULL,      -- ���� �ڵ�
    order_cnt    NUMBER NOT NULL,       -- �ֹ� ����
    FOREIGN KEY(drink_code) REFERENCES drink(drink_code) --�ܷ�Ű
);

-- drink �ڷ� ����
INSERT INTO drink VALUES ('A01', '�Ƹ޸�ī��');
INSERT INTO drink VALUES ('B01', 'ī���');
INSERT INTO drink VALUES ('C01', '�ڸ�');

-- cafe_order �ڷ� ����
INSERT INTO cafe_order VALUES ('2023100101', 'A01', 3);
INSERT INTO cafe_order VALUES ('2023100102', 'B01', 1);
INSERT INTO cafe_order VALUES ('2023100103', 'A01', 2);

SELECT * FROM drink;
SELECT * FROM cafe_order;

-- ��������
SELECT b.order_no,
       b.drink_code,
       a.drink_name,
       b.order_cnt
FROM drink a, cafe_order b
WHERE a.drink_code = b.drink_code;

-- ��������
SELECT b.order_no,
       b.drink_code,
       a.drink_name,
       b.order_cnt
FROM drink a JOIN cafe_order b
  ON a.drink_code = b.drink_code;
 
-- JOIN ~ USING 
SELECT b.order_no,
       drink_code,
       a.drink_name,
       b.order_cnt
FROM drink a JOIN cafe_order b
  USING (drink_code);
  
DROP TABLE drink;
DROP TABLE cafe_order;

-- �ֹ��� ���� ���Ḧ �����Ͽ� ��� �ֹ� ������ ����Ͻÿ�
-- �ܺ�����(LEFT, RIGHT)
SELECT a.drink_name,
       a.drink_code,
       b.order_no,
       b.order_cnt
FROM drink a LEFT JOIN cafe_order b
  ON a.drink_code = b.drink_code;
