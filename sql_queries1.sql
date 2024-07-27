select *
from sql_hr.employees;

select *
from sql_hr.offices;

select o.address, o.city, e.employee_id, e.salary
from sql_hr.employees e
join sql_hr.offices o
on e.office_id = o.office_id
order by salary desc
limit 5,5;

select distinct city, address
from sql_hr.offices;
