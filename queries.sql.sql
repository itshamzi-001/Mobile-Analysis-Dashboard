create database Analysis;
use analysis;
select * from mobiles;

-- check mobile features and price list
select phone_name , price from mobiles;



-- find out the price of five most expensive phones
select * from mobiles
order by price desc limit 5;

-- find out the price of five most cheapest phones
select * from mobiles
order by price asc limit 5;

-- list of top 5 samsung phones of price and features 
select * from mobiles
where brands =  'samsung'
order by price desc limit 5;

-- list top 5 high price android phone
select * from mobiles
where operating_system_type = 'android'
order by price desc limit 5;

-- list top 5 low price android phone
select * from mobiles
where operating_system_type = 'android'
order by price asc limit 5;

-- list top 5 high price ios phone
select * from mobiles
where operating_system_type = 'ios'
order by price desc limit 5;

-- list top 5 low price ios phone
select * from mobiles
where operating_system_type = 'ios'
order by price asc limit 5;


-- write a query which phone support 5G and also top 5 phone with 5G support
select * from mobiles
where 5G_availability = 'yes'
order by price desc limit 5;

-- Total price of all mobiles is to be found with brand name 
select Brands , sum(price) as Total_Price from mobiles
group by brands 
order by Total_Price desc;