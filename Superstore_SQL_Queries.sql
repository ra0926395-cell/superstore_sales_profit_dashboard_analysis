use superstore_db;
select count(*) as total_rows
from sample_superstore;
select*
from sample_superstore
limit 10;
select category,
       sum(sales) as total_sales
from sample_superstore
group by category;       
select category,
      sum(profit) as total_profit
from sample_superstore
group by category;   
select region,
sum(sales) as total_sales
from sample_superstore
group by region;
select region,
sum(profit) as total_profit
from sample_superstore
group by region;

select 'Sub-Category',
sum(profit) as total_profit
from sample_superstore
group by 'Sub-Category';
select 'Sub-Category' ,
sum(sales) as total_sales
from sample_superstore
group by 'Sub-Category';
select 'Sub-Category' ,
sum(sales) as total_sales
from sample_superstore
group by 'Sub-Category'
order by total_sales desc
limit 10;
select 'Sub-Category' ,
   sum(profit) as total_profit
   from sample_superstore
   group by 'Sub-Category'
   order by total_profit asc;
 
 select 'ï»¿Ship' ,
 count(*) as total_orders
 from sample_superstore
 group by 'ï»¿Ship' ;
 --- sales of technology category
 select*
 from sample_superstore
 where category='technology';
 --- sales of Office Supplies
 select* 
 from sample_superstore
 where category='Office Supplies';
 --- sales of furniture
 select*
 from sample_superstore
 where category='Furniture';
 --- orders of west region
 select*
 from sample_superstore
 where region='West';
 --- high discount orders
select*
from sample_superstore
where discount > 0.5;
select avg(sales) as average_sales
from sample_superstore;
select max(sales) as highest_sales
from sample_superstore;
select min(sales) as lowest_sales
from sample_superstore;
select category,
sum(sales) as total_sales
from sample_superstore
group by category
having sum(sales)> 700000;

select region,
sum(profit) as total_profit
from sample_superstore
group by region
having sum(profit)> 50000;

select 'Sub-Category',
sum(sales) as total_sales
from sample_superstore
group by 'Sub-Category'
having sum(sales)> 200000; 

select 'Sub-Category',
sum(quantity) as total_quantity
from sample_superstore
group by 'Sub-Category'
order by total_quantity desc;

select state,
sum(sales) as total_sales
from sample_superstore
group by state
order by total_sales desc
limit 10;
select city, 
sum(sales) as total_sales
from sample_superstore
group by city
order by total_sales desc
limit 10;

select segment,
count(*) as total_orders
from sample_superstore
group by segment;

select segment,
sum(sales) as total_sales
from sample_superstore
group by segment;

select segment,
sum(profit) as total_profit
from sample_superstore
group by segment;









   