select * from pizza_sales

--select sum(total_price) as Total_Revenue from pizza_sales-->

--select sum(total_price) / COUNT (distinct order_id) as Average_Order_Value from pizza_sales-->

--select sum(quantity) as Pizza_Quantity from pizza_sales-->

--select count(distinct order_id) as Total_orders from pizza_sales-->

--select cast(cast(sum(quantity) as decimal (10,2)) / cast(count(distinct order_id) as decimal (10,2))  as decimal (10,2)) as Avg_pizza_order from pizza_sales-->

--Daily Trend-->
--select DATENAME(DW, order_date) as order_day, Count(distinct order_id) as Total_Orders from pizza_sales Group by DATENAME(DW, order_date)-->

--Hourly Trend-->

--select DATEPART( HOUR, order_time) as order_hours, COUNT(distinct order_id) as total_orders from pizza_sales group by DATEPART( HOUR, order_time) order by DATEPART( HOUR, order_time)-->

--Percentage of Sales by Pizza Category

--select pizza_category, sum(total_price) as Total_Sales, sum(total_price) * 100 / (select sum(total_price)from pizza_sales where month(order_date)=1) as Per_Total_Salesfrom pizza_sales where month(order_date) = 1 group by pizza_category

--Percentage of sales by pizza size

--SELECT pizza_size, CAST(SUM(total_price) AS DECIMAL(10,2)) as total_revenue,CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) from pizza_sales) AS DECIMAL(10,2)) AS PCTFROM pizza_salesGROUP BY pizza_sizeORDER BY pizza_size

--select pizza_category, sum(quantity) as Total_Pizza_sold from pizza_sales group by pizza_category


--select Top 5 pizza_name, sum(quantity) as Total_Pizza_sold from pizza_sales group by pizza_name order by sum(quantity) desc 

