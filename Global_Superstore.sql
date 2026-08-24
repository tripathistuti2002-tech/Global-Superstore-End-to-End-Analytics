create database  Global_Superstore ;
drop database  Global_Superstore;
use Global_Superstore;



ALTER TABLE global_superstore4 RENAME COLUMN `Row ID` TO row_id;
ALTER TABLE global_superstore4 RENAME COLUMN `Order ID` TO order_id;
ALTER TABLE global_superstore4 RENAME COLUMN `Order Date` TO order_date;
ALTER TABLE global_superstore4 RENAME COLUMN `Ship Date` TO ship_date;
ALTER TABLE global_superstore4 RENAME COLUMN `Ship Mode` TO ship_mode;
ALTER TABLE global_superstore4 RENAME COLUMN `Customer ID` TO customer_id;
ALTER TABLE global_superstore4 RENAME COLUMN `Customer Name` TO customer_name;
ALTER TABLE global_superstore4 RENAME COLUMN `Postal Code` TO postal_code;
ALTER TABLE global_superstore4 RENAME COLUMN `Product ID` TO product_id;
ALTER TABLE global_superstore4 RENAME COLUMN `Sub-Category` TO sub_category;
ALTER TABLE global_superstore4 RENAME COLUMN `Product Name` TO product_name;
ALTER TABLE global_superstore4 RENAME COLUMN `Shipping Cost` TO shipping_cost;
ALTER TABLE global_superstore4 RENAME COLUMN `Order Priority` TO order_priority;


#1.Which customers generate the highest total profit?

SELECT CUSTOMER_ID  ,
SUM(PROFIT)  
FROM global_superstore4
GROUP BY CUSTOMER_ID 
ORDER BY sum(PROFIT) DESC
limit 1;


#2.Which products have high sales but negative profit?

select  PRODUCT_name  , sum(SALES),
sum(Profit)  
FROM global_superstore4 
GROUP BY PRODUCT_name 
ORDER BY sum( PROFIT )ASC
limit 1;



#3Which sub-categories have the highest average discount?

select sub_category ,avg(discount)
 from global_superstore4
 group by sub_category 
 order by avg(discount) desc
 limit 1;
 
 
 
 #4 Which regions have the highest shipping cost relative to sales?
 select region ,(select
                  (sum(shipping_cost)*100/ sum(sales))
                  from global_superstore4) as shipping_cost_percentage
from global_superstore4
group by region 
order by shipping_cost_percentage desc ;


#5 Which customer segment has the best profit margin?

select city ,
( sum(sales) -sum(profit)) as profit_margin 
from global_superstore4                             
group by city 
order by  profit_margin desc 
limit 1;



#6 Which cities have high sales but low profitability?

select city , 
( sum(sales) -sum(profit)) as profit_margin 
from global_superstore4                             
group by city 
order by  profit_margin asc 
limit 1
; 

# 7 Which states have the highest number of loss-making orders?
select state ,sum(profit)  as  loss_making 
 from  global_superstore4
 where profit <0 
 group by state 
 order by  loss_making asc 
 limit 1;
 
 
 #8 
 select   segment , avg(quantity  ) 
 from  global_superstore4
 group by segment 
 order by avg(quantity) desc ;

#9 Which products contribute the most to total profit?

select product_name  ,sum(sales )
from global_superstore4
group by product_name 
order by sum(sales ) desc
limit 1  ;