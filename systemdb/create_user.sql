-- ���ο� �����(user) ���� //user ���̵� ���
CREATE USER c##mydb IDENTIFIED BY pwmydb; --c##���̱�

-- ����(���� ����) ���� ���� �ο�
GRANT CREATE SESSION TO c##mydb;
-- ���̺� �ڿ�(resource) ����
GRANT CREATE TABLE, RESOURCE TO c##mydb;
-- DBA(�����ͺ��̽�������Ʈ/����Ŭ) �� ����(����)�� ���� �ο�
GRANT CONNECT, DBA TO c##mydb;

