-- ���� ���� ���̺� ����
CREATE TABLE account(
    ano      VARCHAR2(20) PRIMARY KEY,
    owner    VARCHAR2(20) NOT NULL,
    balance  NUMBER NOT NULL
);

INSERT INTO account VALUES ('11-11-111', '����', 10000);

-- �ڷ� ����(��,���)
UPDATE account
SET owner = '�ڴ��',
    balance = 50000
WHERE ano = '44-44-444';

DELETE FROM account 
WHERE ano = '22-22-222';

ROLLBACK;
COMMIT;

SELECT * FROM account;