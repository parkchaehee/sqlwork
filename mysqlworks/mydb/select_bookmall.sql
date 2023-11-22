-- bookmall select
use mydb;



select count(*) as 총판매건수
from orders;

select sum(saleprice) as 총판매액,
	   avg(saleprice) as 총평균액
from orders;

select custid,
	   count(*) as 도서수량,
       sum(saleprice) as 총판매액
from orders group by custid
  having count(*) >= 3;
  
-- join
select cs.name,
	   od.saleprice
from customer cs, orders od
where cs.custid = od.custid;

select cs.name,
       od.saleprice
  from customer cs join orders od
  on cs.custid = od.custid;
  
select cs.name,
       od.saleprice
  from customer cs left join orders od
  on cs.custid = od.custid;


