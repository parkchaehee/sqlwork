create database team4db;

use team4db;

select * from t_member;

create table kakao_table (
	k_number bigint auto_increment,
    k_name varchar(20) not null,
    k_email varchar(50) not null,
    constraint primary key(k_number)
);


select * from kakao_table;