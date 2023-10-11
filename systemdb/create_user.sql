-- 새로운 사용자(user) 생성 //user 아이디 비번
CREATE USER c##mydb IDENTIFIED BY pwmydb; --c##붙이기

-- 세션(저장 유지) 생성 권한 부여
GRANT CREATE SESSION TO c##mydb;
-- 테이블 자원(resource) 생성
GRANT CREATE TABLE, RESOURCE TO c##mydb;
-- DBA(데이터베이스에이전트/오라클) 에 접속(연결)할 권한 부여
GRANT CONNECT, DBA TO c##mydb;

