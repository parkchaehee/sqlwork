
-- c##�� ������ �ʴ� ���
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

-- jweb user ����(db)
CREATE USER jweb IDENTIFIED BY pwjweb;

-- ���� �ο�, ���ҽ� ���� Ȯ��
GRANT CONNECT, RESOURCE, DBA TO jweb;




