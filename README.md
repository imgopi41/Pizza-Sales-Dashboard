**I. Descirption**

This is Pizza Sales Dashboard created to Analyze the total sales on different types of Pizza's in the store. 
Project is implemented by using Excel, SQl Server, and PowerBi.

**II. Technology Stack**

Language: **Power BI Desktop, Microsoft Sql Sever** and **Microsoft Excel.**

IDE used: **Microsoft Power BI** **(2.118. 286.0)**, **Microsoft Excel** **(2019)** and **Microsoft Sql Server** **(16.0.4065.3)**

**III. Problem Statement**

**I. KPI's Requirement**

Analyze the key indicator's for Pizza sales data to gain insights into the Business performance, Also calculate the following metrics :

1. **Total Revenue**
2. **Average Order Value**
3. **Total Pizza Sold**
4. **Average Pizza Per Order**

**II. Chart Requirement**

Visualize various aspects in Pizza Sales data to gain insights and understand key trends, And also indentify the following requirements for creating charts:

1. **Daily Trend for Total Orders**:  Create bar chart that displays trend of total orders over a specific time period. This chart will help us identify any patterns or fluctuations in order volumes on a daily basis.

2. **Monthly Trend for Total Orders**:  Create a line chart thst illustrates the hourly trend of total orders throughout the day. This chart will allow us to identify peak hours or periods of high order activity.

3. **Percentage of Sales by Pizza Category**:  Create a Pie Chart that shows the distribution of sales across different pizza categories. This chart will provide insights into the popularity of various pizza categories and their contribution to overall sales.

4. **Percentage of Sales by Pizza Size**: Generate a Pie Chart that represents the percentage of sales attributes to different pizza sizes. This chart will help us understand customer preferences for pizza sizes and their impact on sales.

5. **Total Pizza's Sold by Pizza Category**: Create a funnel chart that presents the total number of Pizza's sold for each Pizza category. This chart will allow us to compare the sales performance of different Pizza categories.

6. **Top 5 Best Sellers by Revenue, Total Quantity & Total Orders**:  Create a bar chart highlighting the Top 5 best selling pizza's based on the Revenue, Total Quantity, Total Orders. This chart will help us identify the most popular pizza options. 

7. **Bottom 5 Best Sellers by Revenue, Total Quantity & Total Orders**:  Create a bar chart showcasing the Buttom 5 worst selling Pizza's  based on the Revenue, Total Quantity, Total Orders. This chart will enable us to identify underperforming or less popular pizza options.

**IV. Procedures:** 

1. **Importing Data into Sql Server**

2. **Performed Sql Queries**
     I. **Sql Queries for KPI's.**
     II. **Sql Queries for Daily & Monthly Trend**
     III. **Sql Queries for Percentage of Sales by Category & Size**
     IV. **Sql Queries for Top 5 & Bottom 5**

3. **Connecting Power-BI to Sql DB**
4. **Data Cleaning using Power Query**
5. **Data Processing in Power-BI**
6. **Building Daily & Monthly Trend Charts**
7. **Building Percentage of Sales by Category & size**
8. **Adding Insights**
9. **Adding Navigator Buttons**



**V. Steps involved in this Analysis:**

👉 **Data Gathering** : I have imported CSV file to Excel.

👉 **Data Cleaning:** Ensuring accurate and reliable results.

👉**Data Processing:** Transforming raw data into a structured format.

👉**Data Analysis:** Uncovering Patterns, Trends, and correlations.

👉**Interactive Dashboard:** Presenting the findings in a visually appealing manner.

👉**Insights:** Extracting valuable information to drive growth.


**VI. Data Cleaning using DAX Queries**

1. Replaced values for Pizza Size initially it was single Letter changed it with its names i.e ( M = "Medium")

2. To total Orders of Pizza by Order Id Dax Query was written
i.e [ Total Orders = Distinct Count (Pizza Sales [Order id]) ]

3. To check average amount spent per order was calculated by dividing it with total revenue
i.e [Avg Order Value = [ Total Revenue ] / [ Total Orders ] ]

4. To get Sum of Pizza Quantities of all Pizza Sold
i.e ( Total Pizza Sold = Sum (Pizza sales [ Quantity ] ))

5. To calculate Avg Number of Pizza's sold per order, & also Calculated it by dividing it with total number of Pizza sold by the total number of orders.
i.e ( Avg Pizza Per Order = [ Total Pizza sold ] / [ Total order] )


**Data Processing in Power BI**

1. Converted Date into day to display day name by using order date, From Day name i have took only first three letter to display "Monday" to "Mon".

Dax Query : Order day = Upper Left (( Pizza Sales ) [ Day name] , 3))

2. New Column has been created in the name of "Day Number" to display the Day number with respect to Day.
   Eg : Sunday day number is shown as 1 followed by other days too.

3. From Date i have Extracting Month from Order date in Pizza Sales by adding new column.

4.Dax Query has been written for extracting only 3 letters from month a new column has been created in the name of "Order Month" to display "January" to "Jan" this "Jan" is now stored in new column

i.e Order Month = upper( Left ( Pizza Sales [ Month Name] ,3 )) 


**VII. Demo**

![Home ](https://github.com/imgopi41/Pizza-Sales-Dashboard/assets/99798157/9325abfb-ebfc-41a6-94a4-81ad8a6d682e)


**VIII. Applications & Future enhancements**

An Interactive personalized Dashboards and reports on Pizza Sales has created. This type of Dashboards shows you the improvement and growth of your Sales, Displaying of your sales can 
be yearly, Monthly, Weekly, Daily and also sales can be calculated by hourly wise too. Widely used to show the reports of company sales in Pictorial format which helps clients to 
understand sales in depth

