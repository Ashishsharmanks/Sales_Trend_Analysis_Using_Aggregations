Create Database Online_sales;
use Online_sales;
create table Sales_data (
S_no int,
Order_ID text not null,
Cust_ID	int,
Gender text,
Age	int,
Order_Date date,
Status text,
Channel text,
Product_ID text,
Category text,	
Size text,
Qty int,
currency text,
Amount int,
ship_city text,
ship_state text,
ship_postal_code int,
ship_country text,
B2B text);

-- What is the total number of orders placed?
Select distinct Count(order_id) from sales_data;

-- Show Count of Orders on Basis of there Status?
Select count(order_id) as Num_of_orders, status from sales_data group by status;

-- Show Montly Sales Generated
Select sum(amount*qty) as Tot_sales, monthname(order_Date)as Monthly from sales_data group by monthname(order_Date);

-- Show Channel wise Sales generation.
Select sum(amount*qty) as Tot_sales, channel from sales_data group by channel order by Tot_sales desc;

-- Show Monthly Channel wise Sales.
Select sum(amount) as Tot_revenue,channel,monthname(order_Date)as Month from sales_data group by monthname(order_Date),
channel order by channel asc;

-- What is the total sales amount?
Select sum(amount*qty) as Total_sales from sales_data;

-- What are the top 10 best-selling products category along with sales?
Select sum(amount*qty) as sales, category from sales_data group by category order by sales desc limit 10;

-- What is the average order value?
Select avg(amount) from sales_data;

-- What is the average quantity of items per order?
Select avg(qty) as Avg_qty_per_order from sales_data;

-- What is the average age of customer?
select avg(age) as Avg_age from sales_data;

-- Show Sales data on basis of Gender.
Select sum(amount*qty) as sales, gender from sales_data group by gender;

-- What is the category-wise sales contribution?
Select Category,sum(qty*amount) as Total_sales,round((sum(qty*amount)/(Select sum(qty*amount) from
sales_data) * 100),2) as Sales_contribution_percent from sales_data group by Category order by Total_sales desc;

-- Top 10 sales generating cities with total sales.
Select sum(amount*qty) as Tot_sales, ship_city from sales_data group by ship_city order by Tot_sales desc limit 10;

-- Which category products are most frequently returned ?
Select count(order_id) as Num_of_order,category, status from sales_data where status ="returned" group by category order by Num_of_order desc;

-- Who are the top 10 customers by total spend?
Select Sum(amount*qty) as Tot_sales, cust_id from Sales_data group by cust_id order by Tot_sales desc limit 10;

-- What is the average number of orders per customer?
Select Avg(order_id) as Avg_order, Cust_id from sales_data group by cust_id order by Avg_order desc;

-- What is the geographical distribution of customers?
Select count(Cust_id) as Count_of_cust, Ship_city from sales_data group by ship_city order by Count_of_cust desc;

-- Which is Least Performing State?
Select sum(amount*qty) as Tot_sales, ship_state from sales_data group by ship_state order by Tot_sales asc limit 1;

-- Which Channel generated Most sales at Mumbai Location?
Select Sum(Qty*amount) as Tot_sales, Channel from Sales_data where ship_city="Mumbai" group by channel order by Tot_sales desc limit 1;

