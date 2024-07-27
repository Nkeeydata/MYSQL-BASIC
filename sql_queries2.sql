select *
from sql_store.customers
where state in ('va', 'ga', 'ma');

select *
from sql_store.customers
where state regexp 'a';


select *
from sql_store.customers
where phone is null;

 
