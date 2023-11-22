-- 조건 처리 함수
CREATE TABLE Mytest(
    class VARCHAR2(1),   --반
    name VARCHAR2(6)    --이름
);

INSERT INTO Mytest VALUES ('A', '조조');
INSERT INTO Mytest VALUES ('A', '조조');
INSERT INTO Mytest VALUES ('A', '조조');
INSERT INTO Mytest VALUES ('B', '유비');
INSERT INTO Mytest VALUES ('B', '관우');
INSERT INTO Mytest VALUES ('C', '여포');
INSERT INTO Mytest VALUES ('C', '여포');

CREATE TABLE Mytest2(
    COL1    NUMBER(1)
);
DROP TABLE Mytest2;

INSERT INTO Mytest2 VALUES (NULL);
INSERT INTO Mytest2 VALUES (0);
INSERT INTO Mytest2 VALUES (NULL);
INSERT INTO Mytest2 VALUES (0);
INSERT INTO Mytest2 VALUES (NULL);

COMMIT;
SELECT * FROM Mytest;

--반별 인원수 계산
SELECT class,
        count(*) 인원수
FROM Mytest
group by class;

--반별 인원수(중복이름제거후) 계산
SELECT class,
        count(DISTINCT name) 인원수
FROM Mytest
group by class;

-- DECODE(칼럼명, 조건, 참, 거짓)를 이용한 인원수 계산
SELECT
    COUNT(DECODE(class, 'A', 1)) A,
    COUNT(DECODE(class, 'B', 1)) B,
    COUNT(DECODE(class, 'C', 1)) C
FROM Mytest;

/*
case
*/
SELECT
    COUNT(CASE
        WHEN class='A' THEN 1
            END) A,
    COUNT(CASE
        WHEN class='B' THEN 1
            END) B,
    COUNT(CASE
        WHEN class='C' THEN 1
            END) C
FROM Mytest;

-- Mytest2 조건 처리
-- COL1의 데이터가 NULL이면 0으로 표기함
SELECT DECODE(COL1, NULL, -1, COL1)
FROM Mytest2;

SELECT 
    DECODE(COL1, NULL, -1, COL1) DATA1,
    CASE 
        WHEN COL1 IS NULL THEN -1 
    ELSE COL1
    END DATA2
FROM Mytest2;

-- 별칭
SELECT 
    DECODE(T.COL1, NULL, -1, T.COL1) DATA1,
    CASE 
        WHEN T.COL1 IS NULL THEN -1 
    ELSE T.COL1
    END DATA2
FROM Mytest2 T;

SELECT * FROM Mytest2;











