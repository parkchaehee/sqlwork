
create database springdb;
use springdb;

drop table if exists boards; -- boards 테이블 있을 시 drop
create table boards(
   id            bigint primary key auto_increment,
    boardtitle      varchar(100) not null,
    userid          varchar(20) not null,
    boardcontent   text not null,
    hit int default 0,
    createdtime      datetime default now(),
    updatedtime    datetime,
    foreign key(userid) references users(userid) on delete cascade
);
select * from boards;

drop table if exists users;
create table users(
   id         bigint primary key auto_increment, -- long
    userid      varchar(20) unique,
    userpasswd   varchar(20) not null,
    username   varchar(30) not null,
    userage      int
);
select * from users;


