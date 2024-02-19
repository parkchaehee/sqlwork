--user table
create TABLE users(
    user_no      INT,
    user_id       VARCHAR2(20) unique,
    user_passwd   VARCHAR2(20) NOT NULL,
    user_name     VARCHAR2(30) NOT NULL,
    user_phone    VARCHAR2(30),
    user_addr     VARCHAR2(60),
    user_joindate TIMESTAMP DEFAULT SYSTIMESTAMP,
    PRIMARY KEY(user_no)
);

create sequence seq_user_no nocache;


drop table Users;
drop sequence seq_user_no;

--회원 탈퇴
DELETE FORM users WHERE user_id = 'asdf123';

SELECT * FROM users WHERE user_id = 'ubin';

insert into users (user_no, user_id, user_passwd, user_name, user_phone, user_addr)
values(seq_user_no.nextval, 'ubin', 'u1234567', '장유빈', '010-1234-5678','서울특별시 당산로82');
insert into users (user_no, user_id, user_passwd, user_name, user_phone, user_addr)
values(seq_user_no.nextval, 'foreunho', 'e12345678', '최은호', '010-1234-5678','서울시 강서구');
insert into users (user_no, user_id, user_passwd, user_name, user_phone, user_addr)
values(seq_user_no.nextval, 'hirit', 'u1234567', '김희린', '010-5465-6789','서울시 관악구');
insert into users (user_no, user_id, user_passwd, user_name, user_phone, user_addr)
values(seq_user_no.nextval, 'firebyungjin', 'u1234567', '고병진', '010-4654-7890','서울시 마포구');
insert into users (user_no, user_id, user_passwd, user_name, user_phone, user_addr)
values(seq_user_no.nextval, 'kongnamu', 'u1234567', '김정수', '010-4643-5678','서울시 은평구');

commit;
select * from users;