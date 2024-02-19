-- voter 테이블 생성
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

-- 해당 게시글의 총개수
SELECT COUNT(*) FROM voter WHERE bno = 1;

INSERT INTO voter(vno, bno, mid)
VALUES (seq_vno.NEXTVAL, 1, 'today');

commit;