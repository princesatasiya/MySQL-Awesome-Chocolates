select * from Sales;

-- Select needed columns
select SaleDate, Amount,Customers from sales

-- create calculation as needed and give the new column a name
select SaleDate, Amount, boxes, Amount / boxes 'Amount per  Boxes' from sales

-- finding the sales more then 10K
select * from sales 
where Amount > '10000'

-- finding the sales more then 10K and ordering it by amount order
select * from sales 
where Amount > '10000'
order by Amount;

-- finding all the values with in 2022
select * from sales
where amount > '10000' and saledate >= '2022-01-01';

-- finding the sales by date and there amount
select saleDate, Amount from Sales
where amount > '10000' and year(saledate)= 2022
order by amount desc;

-- find the number of sold boxes between 0-50
select * from sales 
where boxes between 0 and 50
order by boxes;

-- all the sales only on friday 
select SaleDate, Amount, Boxes, weekday(SaleDate) as 'Day of week'
from Sales
where weekday(SaleDate) = 4;

-- using people table
select * from people

-- find the members who are from 'Delish' or 'Jucies'  team
select * from people 
where team = 'Jucies' or team = 'Delish';

-- another method 
select * from people
where team in ('Delish', 'Jucies');

-- Finding the sales person name starts with 'B'
select * from people 
where Salesperson like 'B%';

-- see sales by category
select SaleDate, Amount,
	case when amount < 1000 then 'Under 1k' 
		 when amount < 5000 then 'Under 5k'
		 when amount < 10000 then 'Under 10k'
else '10k or more'
end as 'Amount category'
from Sales;

-- 
