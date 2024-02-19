-- tmember 테이블 생성

use springdb;

drop table if exists t_member;

create table t_member(
	id			bigint primary key auto_increment,
    email		varchar(50) unique,
    password	varchar(20) not null,
    name		varchar(20) not null,
    age			int
);

select * from t_member;

INSERT INTO t_member(id, email, password, name, age) VALUES (1, '1@naver.com', '123', '박명수', 1);
INSERT INTO t_member(id, email, password, name, age) VALUES (222, '2@naver.com', '123', '유재석', 1);
INSERT INTO t_member(id, email, password, name, age) VALUES (333, '3@naver.com', '123', '노홍철', 1);
INSERT INTO t_member(id, email, password, name, age) VALUES (444, '4@naver.com', '123', '정형돈', 1);
INSERT INTO t_member(id, email, password, name, age) VALUES (555, '5@naver.com', '123', '하하', 1);




