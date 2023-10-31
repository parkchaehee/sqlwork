-- ROLLUP(), CUBE(), GROUPING SETS()
CREATE TABLE tbl_dept(
    dept_no   varchar2(3),
    job_nm    varchar2(30),
    salary    number
);

INSERT INTO tbl_dept VALUES('100', '���ǻ�', 3300000);
INSERT INTO tbl_dept VALUES('100', '������', 4300000);
INSERT INTO tbl_dept VALUES('100', '������', 2500000);
INSERT INTO tbl_dept VALUES('200', '���ǻ�', 5000000);
INSERT INTO tbl_dept VALUES('200', '�����ͺм���', 4000000);
INSERT INTO tbl_dept VALUES('200', '������', 6000000);

SELECT * FROM tbl_dept;

-- �μ� ��ü�� �ο����� �޿� �հ�
SELECT COUNT(*) �ο���,
       SUM(salary) �޿��հ�
FROM tbl_dept;

-- �μ���, �����̸��� �ο��� �� �޿� �հ�
SELECT dept_no,
       job_nm,
       COUNT(*) �ο���,
       SUM(salary) �޿��հ�
FROM tbl_dept
GROUP BY dept_no, job_nm;

-- �μ���, �����̸��� �ο��� �� �޿� �հ�(�Ұ�, �Ѱ�)
SELECT dept_no,
       job_nm,
       COUNT(*) �ο���,
       SUM(salary) �޿��հ�
FROM tbl_dept
GROUP BY ROLLUP(dept_no, job_nm);

-- �μ���, �����̸��� �ο��� �� �޿� �հ�(�Ұ�, �Ѱ�)
SELECT dept_no,
       job_nm,
       COUNT(*) �ο���,
       SUM(salary) �޿��հ�
FROM tbl_dept
GROUP BY CUBE(dept_no, job_nm)
ORDER BY dept_no;

-- �μ���, �����̸��� �ο��� �� �޿� �հ�(�Ұ�, �Ѱ谡 ������ ����)
SELECT dept_no,
       job_nm,
       COUNT(*) �ο���,
       SUM(salary) �޿��հ�
FROM tbl_dept
GROUP BY GROUPING SETS(dept_no, job_nm)
ORDER BY dept_no;

COMMIT;


