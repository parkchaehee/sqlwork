CREATE TABLE boards(
    bno         NUMBER PRIMARY KEY,
    btitle      VARCHAR2(100) NOT NULL,
    bcontent    CLOB NOT NULL,  -- CLOB(Character Large Of Byte)
    bwriter     VARCHAR2(50) NOT NULL,
    bdate       DATE DEFAULT SYSDATE,
    bfilename   VARCHAR2(50),
    bfiledata  BLOB -- BLOB(Binary Large Of Byte)
);
-- ������ ����
CREATE SEQUENCE seq_bno NOCACHE;
    
-- �Խñ� �߰�
INSERT INTO boards (bno, btitle, bcontent, bwriter)
VALUES(seq_bno.NEXTVAL, 'smartPhone', '�Ｚ ������ S21�Դϴ�', 'today');
  
INSERT INTO boards (bno, btitle, bcontent, bwriter, bdate, bfilename, bfiledata)
VALUES(seq_bno.NEXTVAL,'smartPhone', '�Ｚ ������ S21�Դϴ�', 'today', 
            SYSDATE, null, null);
    
COMMIT;

SELECT * FROM boards WHERE bwriter = 'sky123'
ORDER BY bno DESC;
    
DROP TABLE boards;
    
    