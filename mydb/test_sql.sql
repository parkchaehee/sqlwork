-- 실습문제

-- 1. 모든고객의 이름과 주소 검색
SELECT name, address FROM customer;

-- 2. 모든 고객의 이름, 주소, 전화번호 검색
SELECT name, address, phone FROM customer;

-- 3. 주소가 영국인 고객 검색
SELECT * FROM customer
WHERE address LIKE '%영국%';

-- 4. 고객의 이름이 김연아 혹은 안산인 고객 검색
SELECT * FROM customer
WHERE name = '김연아' OR name = '안산'; --in 도 가능

-- 5. 주소가 대한민국이 아닌 고객 검색
SELECT * FROM customer
WHERE address NOT IN('대한민국'); --not like

-- 6. 전화번호가 없는 고객 검색
SELECT * FROM customer
WHERE phone is null;

SELECT * FROM customer
WHERE phone is not null;

-- 7. 고객을 이름순으로 정렬(오름차순asc-생략)
SELECT * FROM customer
ORDER BY name;

-- 8. 고객의 총 인원수
SELECT COUNT(*) AS 총인원수 
FROM customer;
