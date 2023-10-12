
SELECT * FROM orders;
-- 주문 테이블의 칼럼과 자료형 검색
DESC orders;

-- 통계 함수 - 개수(COUNT), 합계(SUM), 평균(AVG), 최대값(MAX), 최소값(MIN)
-- COUNT(*) : * - 칼럼명을 뜻함
-- COUNT(칼럼명) : 그 칼럼의 개수
SELECT COUNT(orderid) AS 총판매건수
FROM orders;

SELECT SUM(saleprice) AS 총판매액,
       AVG(saleprice) AS 총편균액
FROM orders;

-- 고객이 주문한 도서의 총판매액
SELECT SUM(saleprice) AS 총판매액
FROM orders;

-- 고객별로 주문한 도서의 총판매액
-- 그룹으로 묶을때 사용 - GROUP BY 칼럼명
SELECT custid,
       COUNT(*) AS 도서수량,
       SUM(saleprice) AS 총판매액
FROM orders
GROUP BY custid;

-- 고객별로 주문한 도서의 총판매액과 도서수량
-- 도서수량이 3권 이상인 자료 검색
-- HAVING절 사용 - GROUP BY절에서 조건이 있을때 사용
SELECT custid,
       COUNT(*) AS 도서수량,
       SUM(saleprice) AS 총판매액
FROM orders
GROUP BY custid --이름별, 그룹별
HAVING COUNT(*) >=3;
    --AND SUM(saleprice) >= 35000;

-- phone에 1명이 //NULL//인경우 주의
SELECT COUNT(*) AS 총고객수, COUNT(phone) AS 전화번호수 
FROM customer;

-- 도서중에서 최대가격, 최저가격 알기
SELECT MAX(price) 최고가격, MIN(price) 최저가격
FROM book;

select * from customer;

-- 3번 고객(안산)이 주문한 도서의 총 판매액
select sum(saleprice) as 총판매액
from orders
where custid = 3; -- 조건 고객=3번고객

-- 조인(Join)
-- 동등조인(EZUI JOIN) : equal(=)을 사용하는 조인
-- 테이블a.칼럼명 = 테이블b.칼럼명 //칼럼 - 외래키 참조
-- 고객의 이름과 고객이 주문한 도서의 판매가격을 검색하시오(costomer, orders 조인)
select customer.name, orders.saleprice
from customer, orders
where customer.custid = orders.custid;

-- 별칭 사용 조인
-- 고객 이름별 1차 정렬(오름차순), 주문 가격별 내림차순 2차 정렬
select cus.name, ord.saleprice
from customer cus, orders ord
where cus.custid = ord.custid
order by cus.name, ord.saleprice desc;

-- 3번 고객의 아이디, 도서이름, 주문가격
select custid, bookname, saleprice
from orders, book
where orders.bookid = book.bookid
    and orders.custid = 3;

select customer.custid, book.bookname, orders.saleprice
from orders, customer, book
where orders.custid = customer.custid
    and orders.bookid = book.bookid
    and customer.name = '안산';
    
    
    
