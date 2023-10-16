-- 은행 계좌 테이블 생성
CREATE TABLE account(
    ano      VARCHAR2(20) PRIMARY KEY,
    owner    VARCHAR2(20) NOT NULL,
    balance  NUMBER NOT NULL
);

INSERT INTO account VALUES ('11-11-111', '박채희', 10000);

-- 자료 변경(입, 출금)
UPDATE account
SET balance = 50000000,
    owner = '채'
WHERE ano = '44-44-444';

-- 계좌 삭제
DELETE FROM account
WHERE ano = '11-11-111';

ROLLBACK;
COMMIT;

SELECT * FROM account;

