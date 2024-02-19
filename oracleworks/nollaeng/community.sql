--community
create table community(
review_no number primary key,
title varchar2(100) not null,
local_name varchar2(50),  -- ���� �̸�
review_content clob,  --clob�� ���� ���� ���� ������ ��
review_createdate timestamp default systimestamp, --��۾���¥
review_modifydate timestamp,  --������¥
hit number default 0, -- ��ȸ��
filename varchar2(50), --����÷��
user_id varchar2(20) not null,
replycnt number default 0, --��� ��
foreign key(user_id) references users(user_id) on delete cascade
);
drop table community;

create sequence seq_review_no nocache;
drop sequence seq_review_no;

UPDATE community SET title = '��û��', review_content = '�ٺ�', local_name = '�۰�' ,review_modifydate= timestamp
WHERE review_no = 7;
commit;

insert into community(review_no, local_name, title, review_content, user_id)
values (seq_review_no.nextval, '������', '�ڿ����� �ٳ�Ծ��', 'COEX ����Ƹ���', 'kongnamu');
insert into community(review_no, local_name, title, review_content, user_id)
values (seq_review_no.nextval, '������', '������ ���� ��õ', '�������� ������ �̻� ī�䰡 ���ƿ�', 'ubin');
insert into community(review_no, local_name, title, review_content, user_id)
values (seq_review_no.nextval, '���α�', '�ͼ��� ���������!', '�ͼ��� �ʹ� �̻���', 'foreunho');
insert into community(review_no, local_name, title, review_content, user_id)
values (seq_review_no.nextval, '���α�', '���� �ѿ����� ����Ʈ�ڽ�', '���� �ѿ����� �ʹ� �̻���', 'hirit');
insert into community(review_no, local_name, title, review_content, user_id)
values (seq_review_no.nextval, '��걸', '�ﰢ�� ��������', '���� ��õ�ص帱�Կ�', 'firebyungjin');

--��ͺ���
insert into community (review_no, local_name, title, review_content, user_id)
(select seq_review_no.nextval, local_name, title, review_content, user_id from community);

select * from community;