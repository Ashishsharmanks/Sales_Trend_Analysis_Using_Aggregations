Sales Trend Analysis

Overview

A structured SQL-based data analysis project designed to uncover insights from sales data. This project explores customer behavior, sales performance, order trends, and regional insights using SQL queries on a relational database.

Objective

- Total & average sales, orders, and order value
- Sales breakdown by month, channel, gender, and category
- Top-performing products, cities, and customers
- Return analysis and least performing states
- Category-wise contribution and geographical distribution

Schema 

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

Insights Generated

- Identified top 10 best-selling categories
- Analyzed return rates by product category
- Determined highest-spending customers and top cities
- Uncovered sales trends by month and channel
- Found least-performing states and regional gaps

Conclusion

This project demonstrates how structured SQL queries can uncover meaningful insights from raw sales data in an e-commerce Industry. By leveraging basic to advanced SQL techniques, we analyzed customer behavior, identified sales trends, tracked product and channel performance, and highlighted areas of improvement such as returns and underperforming regions.
