-- 스키마:system
-- 테이블
CREATE TABLE ex1(
    column1 CHAR(10),     --고정길이 문자(10Byte)
    column2 VARCHAR2(10)  --가변길이 문자(10Byte)//arraylist
);

-- 데이터 추가
INSERT INTO ex1(column1, column2) VALUES('abc', 'abc');--쌍따옴표 안됨 무조건 홑따, 값은 고칠수없음
INSERT INTO ex1 VALUES('당산', '당산');

-- 데이터 조회
SELECT column1, LENGTH(column1), column2, LENGTH(column2) FROM ex1; --ex1로부터 column1을 출력하세요

-- 트랜잭션 : COMMIT, ROLLBACK
COMMIT; --INSERT한경우