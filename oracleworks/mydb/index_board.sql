-- ���� ��ȹ : ��Ƽ������
DESC PLAN_TABLE;

SELECT * FROM board;

-- �ۼ��ڰ� admin0000�� �Խñ� �˻�
SELECT * FROM board WHERE bwriter='admin0000';

-- �ε��� ����
-- CREATE INDEX �ε����̸� ON ���̺��(Į����)
CREATE INDEX idx_b1 ON board(bwriter);

-- ����Ŭ ��Ʈ ����
-- /*+ INDEX(���̺�� �ε�����) */
-- �ۼ��ڰ� admin0000�� �Խñ� �˻�
SELECT /*+ INDEX(board idx_b1) */ * FROM board WHERE bwriter='admin0000';

DROP INDEX idx_b1;
