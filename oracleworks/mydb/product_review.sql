-- product_review ���̺� ����
-- clob(character large object) - �ſ� ū ���ڿ� �ڷ���(4GB)
CREATE TABLE product_review(
    review_no     NUMBER PRIMARY KEY,     -- �����ȣ
    product_code  CHAR(6) NOT NULL,       -- ��ǰ�ڵ�
    member_id     VARCHAR2(20) NOT NULL,  -- ȸ�����̵�
    content       CLOB NOT NULL,          -- ���䳻��
    regdate       DATE DEFAULT SYSDATE,   -- �ۼ���
    FOREIGN KEY(product_code) REFERENCES product(product_code) --�ܷ�Ű
);
-- �ڵ� ����(nocache - �ʱ�ȭ�ϸ� 1���� ����)
CREATE SEQUENCE seq_rno NOCACHE;

INSERT INTO product_review(review_no, product_code, member_id, content)
VALUES (seq_rno.NEXTVAL, '100001', 'today10', '�������ε� ������ ���� �ִ� ��...');
INSERT INTO product_review(review_no, product_code, member_id, content)
VALUES (seq_rno.NEXTVAL, '100001', 'cloud100', '�����̶� ���� ���ϳ׿�!');
INSERT INTO product_review(review_no, product_code, member_id, content)
VALUES (seq_rno.NEXTVAL, '100002', 'sky123', '������ �� ���ϴ�.');

COMMIT;
SELECT * FROM product_review;

-- ���̺� �����ϰ� ������ ��ü ����
TRUNCATE TABLE product_review;
-- ������ ����
DROP SEQUENCE seq_rno;

-- ��ǰ�ڵ尡 '100001'�̰�, ȸ�����̵� 'cloud100'��
-- ��ǰ�� ������ ����Ͻÿ�
select * 
from product_review
where product_code = '100001' 
  and member_id = 'cloud100';
  
-- ��ǰ ������ - 3��, �����ִ� ������ - 2��
-- ���䰡 �ִ� ��ǰ�� �˻��Ͻÿ�(���� ����)
-- ������ġ : a���̺��� �⺻Ű = b���̺��� �ܷ�Ű
SELECT *
FROM product a, product_review b
WHERE a.product_code = b.product_code;

-- ǥ�� ��� - ��������(INNER JOIN)
SELECT *
FROM product a JOIN product_review b
  ON a.product_code = b.product_code;
  
-- ������ ������ ������� ��ǰ�� ������ �˻��Ͻÿ�
-- �������� ���(Product�� ��ǰ�� ��� ��µǰ�, 
-- ����� �ִ� ���� �������, ���䰡 ������ NULL�� ��µ�)
SELECT *
FROM product a, product_review b
WHERE a.product_code = b.product_code(+);

-- ǥ�� ���(�ܺ����� - 0UTER JOIN)
-- OUTER ���� ����
SELECT *
FROM product a LEFT JOIN product_review b
  ON a.product_code = b.product_code;
  
SELECT b.product_code,
       b.product_name,
       b.price,
       a.member_id,
       a.content,
       a.regdate
FROM product_review a RIGHT JOIN product b
  ON a.product_code = b.product_code;
