
use mydb;

-- 날짜 
select now() from dual;

create table date_test1(
	reg_date DATE,
    hire_date DATE
);

INSERT INTO date_test1 VALUES (now(), '2023-10-1');
INSERT INTO date_test1 VALUES (now(), '2023-10-11');
INSERT INTO date_test1 VALUES (now(), '2023/10/11');
INSERT INTO date_test1 VALUES (now(), '2023-07-31');

-- INSERT INTO date_test1 VALUES (now(), str_to_date('20231011', '%Y%m%d'));

create table date_test2(
	reg_date DATE default (current_date()),  -- 날짜
    create_date TIMESTAMP default now(),     -- 날짜와 시간
    hire_date DATE                           -- 특정한 날짜
);
-- 날짜 입력시 '-'을 사용함
INSERT INTO date_test2(hire_date) VALUES ('2023-07-31');
INSERT INTO date_test2(hire_date) VALUES ('2023-10-05');

SELECT * FROM date_test2;



SELECT * FROM date_test1;
DROP TABLE date_test2;



