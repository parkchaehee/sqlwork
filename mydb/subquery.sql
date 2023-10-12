-- 서브 쿼리(Sub Query) : 부속질의(중첩 쿼리)
-- SELECT문 내부에 또 SELECT문이 존재함

-- 도서중 가격이 가장 높은 도서를 검색하시오
-- MAX(ㅔ걏ㄷ) : 35000
SELECT max(price) FROM book;

-- 도서중에서 가장 비싼 도서의 이름을 검색하시오
SELECT bookname
FROM book
where price = (SELECT max(price) FROM book);

-- 도서를 구매한 적이 있는 고객의 이름을 검색
SELECT custid FROM orders;

/*SELECT name 
FROM customer
WHERE custid IN(1,2,3,4);*/

SELECT name 
FROM customer
WHERE custid IN(SELECT custid FROM orders);

-- 조인 방식으로 
-- 도서를 구매한 적이 있는 고객의 이름을 검색
SELECT DISTINCT cus.name
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
ORDER BY name;

SELECT DISTINCT cus.name
FROM customer cus INNER JOIN orders ord
    ON cus.custid = ord.custid
ORDER BY name;

