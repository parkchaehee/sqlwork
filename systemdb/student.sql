-- 학생 테이블 생성
CREATE TABLE student(
    snumber NUMBER PRIMARY KEY,
    sname   VARCHAR2(20) NOT NULL,
    age     NUMBER(2) NOT NULL,
    gender  VARCHAR2(6) NOT NULL, --한글자에 3바이트
    address VARCHAR2(50),
    mname   VARCHAR2(30) NOT NULL,
    FOREIGN KEY(mname) REFERENCES major(mname) --외래키
);

-- 학생 추가
INSERT INTO student(snumber, sname, age, gender, address, mname)
VALUES (1001, '이강', 22, '여자', '서울시 강서구', '소프트웨어학과');
INSERT INTO student(snumber, sname, age, gender, address, mname)
VALUES (1002, '박대양', 34, '남자', '인천시 남구', '전기전자공학과');
INSERT INTO student(snumber, sname, age, gender, address, mname)
VALUES (1003, '우영우', 31, '여자', '', '전기전자공학과');
-- 부모키에 없는 데이터는 삽입 이상 발생
INSERT INTO student(snumber, sname, age, gender, address, mname)
VALUES (1003, '김산', 29, '남자', '서울시 동대문구', '회계학과');



--전체 학생 조회
SELECT * FROM student;

--이름이 이강인 학생의 이름과 나이 조회하기
SELECT snumber, sname, age FROM student
WHERE sname = '이강'; --같다

--이름에 '우'가 포함된 학생의 모든 정보를 출력하시오
SELECT * FROM student
WHERE sname LIKE '%우%'; --양쪽 % 우를 포함하고 있다

--나이가 30세 이상이고 성별이 남자인 학생의 모든정보 출력
SELECT * FROM student
WHERE age >= 30 AND gender = '남자'; --두가지 조건 and

--주소가 없는 학생의 정보출력
SELECT * FROM student
WHERE address IS NULL; --NULL인경우 IS 사용

--주소가 없는 학생 삭제(NULL)
DELETE FROM student 
WHERE address IS NULL;

-- 정렬하기(오름차순-ASC, 내림차순-DESC)
-- 학생의 나이가 적은순으로 정렬하여 출력
SELECT * FROM student
ORDER BY age; --ASC 생략하면 오름차순 //나이 적은순 정렬
-- 학과명이 전기전자공학과인 학생중에서 학생의 나이가 많은순으로 정렬하여 출력
SELECT * FROM student
WHERE mname = '전기전자공학과'

ORDER BY age DESC; --나이 많은순 정렬//구문중order by 가장밑


--트랜잭션(롤백은 커밋하기전에 실행하면 취소, 복원이 됨)
ROLLBACK; --복원

--주소가 없는 학생 삭제(공백문자)
DELETE FROM student 
WHERE address = ' ';

-- 주소가 NULL인 데이터에 '수원시 영통구'로 입력
UPDATE student SET address = '수원시 영통구' --UPDATE 세팅
WHERE address IS NULL; --NULL인곳에

COMMIT;

DROP TABLE student;