-- 조인 연습
-- product, product_review
select * from product;
select * from product_review;

-- 리뷰가 있는 상품의 정보를 검색하시오
-- 리뷰 테이블에 product_name 칼럼을 출력
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

-- ANSI(미국협회) 조인 - STANDARD JOIN(표준조인)
-- 내부조인(INNER JOIN ~ ON)
select b.review_no,
       b.product_code,
       a.product_name,
       b.content,
       b.regdate
from product a JOIN product_review b
  ON a.product_code = b.product_code;

-- 외부조인(LEFT OUTER, RIGHT 조인 )
-- 리뷰의 유무와 상관없이 모든 상품의 정보를 검색
select a.product_name,
       b.review_no,
       b.product_code,
       b.content,
       b.regdate
from product a LEFT JOIN product_review b
  ON a.product_code = b.product_code;
  
-- 리뷰가 없는 상품의 정보를 검색하시오
select a.product_name "상품후기가 없는 상품"
from product a LEFT JOIN product_review b
  ON a.product_code = b.product_code
WHERE b.content IS NULL;

-- 상품 리뷰 테이블에 product_name 칼럼 추가
-- 스칼라 서브쿼리 : 한 칼럼만 반환함, SELECT 절에서 사용
SELECT  A.review_no,
        A.product_code,
       (SELECT B.product_name 
         FROM product B
         WHERE A.product_code = B.product_code)
        product_name,
        A.content,
        A.member_id
FROM product_review A;

