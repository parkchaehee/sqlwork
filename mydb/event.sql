-- event ���̺� ����
CREATE TABLE event(
    event_no    NUMBER PRIMARY KEY,     -- �̺�Ʈ ��ȣ
    event_name  VARCHAR2(50) NOT NULL,  -- �̺�Ʈ �̸�
    start_date  VARCHAR2(20) NOT NULL,  -- ���� ��¥
    end_date    VARCHAR2(20) NOT NULL   -- ���� ��¥
);
-- �ڵ� �Ϸù�ȣ
CREATE SEQUENCE seq_eno NOCACHE;    

INSERT INTO event(event_no, event_name, start_date, end_date)
VALUES(seq_eno.NEXTVAL, '20% ���� ���� ����', '2023-10-10', '2023-10-20');
INSERT INTO event(event_no, event_name, start_date, end_date)
VALUES(seq_eno.NEXTVAL, '���콺 �е� ����', '2023-11-15', '2023-11-25');
INSERT INTO event(event_no, event_name, start_date, end_date)
VALUES(seq_eno.NEXTVAL, '���� ���� �佺Ƽ��', '2023-12-10', '2023-12-30');
COMMIT;
SELECT * FROM event;


DROP SEQUENCE seq_eno;
TRUNCATE TABLE event;

-- �̺�Ʈ �Ⱓ���ȿ� ���並 �ۼ��� ������ ����ǰ�� �ִ� ���
-- �������̺�� �̺�Ʈ ���̺� ����
-- �ϴ��(�̺�Ʈ�� ����)
-- �񵿵�����(>=,<=, between and)
SELECT a.event_name,
       b.member_id,
       b.content,
       b.regdate
FROM event a, product_review b
WHERE b.regdate
    between a.start_date and a.end_date;
    
-- ��������(inner join)
SELECT a.event_name,
       b.member_id,
       b.content,
       b.regdate
FROM event a inner join product_review b
on b.regdate
    -- between a.start_date and a.end_date; // ==
    >= a.start_date and b.regdate <= a.end_date;












