CREATE TABLE users(
    id      VARCHAR2(30) NOT NULL,
    pw      VARCHAR2(30) NOT NULL,
    tel     VARCHAR2(15) NOT NULL,
    email   VARCHAR2(50) NOT NULL,
    birth   NUMBER NOT NULL,
    gender  VARCHAR2(6) NOT NULL,
    accountDay    TIMESTAMP DEFAULT SYSTIMESTAMP,
    modifiedDay   TIMESTAMP,  
    PRIMARY KEY(id)
);

INSERT INTO users(id, pw, tel, email, birth, gender)
VALUES ('show3239', '123456', '010-6345-3239', 'show3239@naver.com', '19920129', '害');

INSERT INTO users(id, pw, tel, email, birth, gender)
VALUES ('show1111', '1234567', '010-1111-2222', 'show1111@naver.com', '19990202', '食');

INSERT INTO users(id, pw, tel, email, birth, gender)
VALUES ('khit123', '123456', '010-1111-1111', 'khit123@naver.com', '19920129', '食');

INSERT INTO users(id, pw, tel, email, birth, gender)
VALUES ('2', '2', '010-2222-2222', '123@naver.com', '19990101', '食');

INSERT INTO users(id, pw, tel, email, birth, gender)
VALUES ('chaeh', '123456789@q', '010-6297-9736', 'chaeh@naver.com', '19990207', '食');

UPDATE users SET id = ?, introduction = ? WHERE id = ?;

UPDATE users SET pw = '11', tel = '11', email = 'khit123@naver.com' 
WHERE id = 'khit123';

select * from users;
UPDATE users SET pw = 1, tel = 1, email = 1 WHERE id = 'し';


commit;