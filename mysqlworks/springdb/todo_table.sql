use springdb;

-- todo 테이블 생성
drop table if exists tbl_todo;
create table tbl_todo(
   tno     bigint primary key auto_increment,
    title   varchar(100) not null, 
    writer   varchar(20) not null,
    createddate   datetime default now()
);
select * from tbl_todo;
select * from tbl_todo order by tno desc limit 3;
select * from tbl_todo order by tno desc limit 1, 4;

select * from tbl_todo
where title like '%d%'
order by tno desc;

select * from tbl_todo
where title like '%d%' or writer like '%하늘%'
order by tno desc;


-- 재귀 복사
insert into tbl_todo(title, writer)
(select title, writer from tbl_todo);
