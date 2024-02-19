--community
create table community(
review_no number primary key,
title varchar2(100) not null,
local_name varchar2(50),  -- 공간 이름
review_content clob,  --clob은 많은 양의 글자 담을때 씀
review_createdate timestamp default systimestamp, --댓글쓴날짜
review_modifydate timestamp,  --수정날짜
hit number default 0, -- 조회수
filename varchar2(50), --사진첨부
user_id varchar2(20) not null,
replycnt number default 0, --댓글 수
foreign key(user_id) references users(user_id) on delete cascade
);
drop table community;

create sequence seq_review_no nocache;
drop sequence seq_review_no;

UPDATE community SET title = '멍청이', review_content = '바보', local_name = '멍게' ,review_modifydate= timestamp
WHERE review_no = 7;
commit;

insert into community(review_no, local_name, title, review_content, user_id)
values (seq_review_no.nextval, '강남구', '코엑스에 다녀왔어요', 'COEX 아쿠아리움', 'kongnamu');
insert into community(review_no, local_name, title, review_content, user_id)
values (seq_review_no.nextval, '마포구', '연남동 맛집 추천', '연남동엔 맛집과 이쁜 카페가 많아요', 'ubin');
insert into community(review_no, local_name, title, review_content, user_id)
values (seq_review_no.nextval, '종로구', '익선동 분위기맛집!', '익선동 너무 이뻐요', 'foreunho');
insert into community(review_no, local_name, title, review_content, user_id)
values (seq_review_no.nextval, '종로구', '북촌 한옥마을 데이트코스', '북촌 한옥마을 너무 이뻐요', 'hirit');
insert into community(review_no, local_name, title, review_content, user_id)
values (seq_review_no.nextval, '용산구', '삼각지 맛집투어', '맛집 추천해드릴게요', 'firebyungjin');

--재귀복사
insert into community (review_no, local_name, title, review_content, user_id)
(select seq_review_no.nextval, local_name, title, review_content, user_id from community);

select * from community;