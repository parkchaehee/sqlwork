-- reply ���̺� ����
CREATE TABLE reply(
    rno      NUMBER PRIMARY KEY,       -- ��۹�ȣ
    bno      NUMBER NOT NULL,          -- �Խñ۹�ȣ
    rcontent VARCHAR2(2000) NOT NULL,  -- ��۳���
    replyer  VARCHAR2(20) NOT NULL,    -- �ۼ���
    rdate    TIMESTAMP DEFAULT SYSTIMESTAMP, --�ۼ���
    rupdate  TIMESTAMP,                      --������
    FOREIGN KEY(bno) REFERENCES board(bno) ON DELETE CASCADE  --�ܷ�Ű
);
CREATE SEQUENCE seq_rno NOCACHE;

-- 1�� �Խñ� �˻�
SELECT * FROM reply WHERE bno = 1;

-- 1�� �Խñۿ� ��� �ޱ�
INSERT INTO reply(rno, bno, rcontent, replyer)
VALUES (seq_rno.NEXTVAL, 1, 'ù��° ����Դϴ�.', 'today');

INSERT INTO reply(rno, bno, rcontent, replyer)
VALUES (seq_rno.NEXTVAL, 1, '�ι�° ����Դϴ�.', 'sky123');

COMMIT;
SELECT * FROM reply;

-- ��� 1�� ����
DELETE FROM reply WHERE rno = 1;


