-- user sample
DROP USER c##sample CASCADE;

-- user �� ��й�ȣ ����
CREATE USER c##sample IDENTIFIED BY pw1234;

-- user ��й�ȣ ����
ALTER USER c##sample IDENTIFIED BY pw12345;

-- ����(����) ���� �ο�
GRANT CREATE SESSION TO c##sample;

-- ���̺� ���� ���� �ο�
GRANT CREATE TABLE, RESOURCE TO c##sample;

-- ������ ����(����, ��ȸ, ����, ����) ���� �ο�
GRANT CONNECT, DBA TO c##sample;
