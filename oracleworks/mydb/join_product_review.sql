-- ���� ����
-- product, product_review
select * from product;
select * from product_review;

-- ���䰡 �ִ� ��ǰ�� ������ �˻��Ͻÿ�
-- ���� ���̺� product_name Į���� ���
select b.review_no,
       b.product_code,
       a.product_name,
       b.content,
       b.regdate
from product a, product_review b
where a.product_code = b.product_code;

select a.product_name,
       b.*
from product a, product_review b
where a.product_code = b.product_code;

-- ANSI(�̱���ȸ) ���� - STANDARD JOIN(ǥ������)
-- ��������(INNER JOIN ~ ON)
select b.review_no,
       b.product_code,
       a.product_name,
       b.content,
       b.regdate
from product a JOIN product_review b
  ON a.product_code = b.product_code;

-- �ܺ�����(LEFT OUTER, RIGHT ���� )
-- ������ ������ ������� ��� ��ǰ�� ������ �˻�
select a.product_name,
       b.review_no,
       b.product_code,
       b.content,
       b.regdate
from product a LEFT JOIN product_review b
  ON a.product_code = b.product_code;
  
-- ���䰡 ���� ��ǰ�� ������ �˻��Ͻÿ�
select a.product_name "��ǰ�ıⰡ ���� ��ǰ"
from product a LEFT JOIN product_review b
  ON a.product_code = b.product_code
WHERE b.content IS NULL;

-- ��ǰ ���� ���̺� product_name Į�� �߰�
-- ��Į�� �������� : �� Į���� ��ȯ��, SELECT ������ ���
SELECT  A.review_no,
        A.product_code,
       (SELECT B.product_name 
         FROM product B
         WHERE A.product_code = B.product_code)
        product_name,
        A.content,
        A.member_id
FROM product_review A;

