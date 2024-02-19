-- voter ���̺� ����
CREATE TABLE voter(
    vno  NUMBER PRIMARY KEY,
    mid  VARCHAR2(20),
    bno  NUMBER,
    FOREIGN KEY (mid) REFERENCES member(id) ON DELETE CASCADE,
    FOREIGN KEY (bno) REFERENCES board(bno) ON DELETE CASCADE
);
CREATE SEQUENCE seq_vno NOCACHE;

SELECT * FROM voter;
SELECT COUNT(*) FROM voter WHERE bno = 3 AND mid = 'today';

-- �ش� �Խñ��� �Ѱ���
SELECT COUNT(*) FROM voter WHERE bno = 1;

INSERT INTO voter(vno, bno, mid)
VALUES (seq_vno.NEXTVAL, 1, 'today');

commit;