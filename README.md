# Sales Management Analysis Project
In this project I restore .bak database to SQL server, then cleaned and transform data using sql and exported data to CSV fiels, then joining CSV fiels in Power BI data model and created a dashboard.

## Busniess Problem:
The challenge for this data analyst project is outlined below. This has been used continuously to ensure that the right data has been selected, transformed and used in the data visualization which is meant to be passed on to the business users.
* [Example Business Request - Mail from Steven.pdf](https://github.com/elsayed100/sales-management-analysis-project/blob/main/Business%20Model/Example%20Business%20Request%20-%20Mail%20from%20Steven.pdf)

## ABOUT THE DATASET:
* The AdventureWorks database are sample databases that were originally published by Microsoft.
* database cosist of fact tables like fACT_internet_sales and dimension tables like dim_product,dim_customer,dim_calender.
* I used the AdventureWorks2019.bak file to restore database to SQL Server instance.

#### data set link: https://docs.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver15&tabs=ssms

## Project Steps:
1. Restore .bak database to SQL Server.
2. cleaning and joining data using SQL Server.
3. Export cleaned Data from privious step to CSV files.
4. Visualize data using Power BI.

## Data Cleaning & Transformation using SQL:
To create the necessary data model for doing analysis and fulfilling the business needs the following tables were extracted using SQL.
One data source (sales budgets) were provided in Excel format and were connected in the data model in a later step of the process.
Below are the SQL statements for cleaning and transforming necessary data.
* [FACT_InternetSales.sql](https://github.com/elsayed100/sales-management-analysis-project/blob/main/SQL%20Script/FACT_InternetSales.sql)
* [DIM_Product.sql](https://github.com/elsayed100/sales-management-analysis-project/blob/main/SQL%20Script/DIM_Product.sql)
* [DIM_Customer.sql](https://github.com/elsayed100/sales-management-analysis-project/blob/main/SQL%20Script/DIM_Customer.sql)
* [DIM_Calendar.sql](https://github.com/elsayed100/sales-management-analysis-project/blob/main/SQL%20Script/DIM_Calendar.sql)

## Data Model:
Below is a screenshot of the data model after cleaned and prepared tables were read into Power BI.
This data model also shows how FACT_Budget has been connected to FACT_InternetSales and other necessary DIM tables.

![3 data model](https://user-images.githubusercontent.com/104726222/166444570-0a9400f3-d3b5-44d6-9f84-16f2fdd51faf.PNG)


## Power BI dashboard:
The finished sales management dashboard with one page with works as a dashboard and overview, with two other pages focused on combining tables for necessary details and visualizations to show sales over time, per customers and per product.

#### click [here](https://app.powerbi.com/view?r=eyJrIjoiMjEyN2ZjOTctZjIyOC00MDczLTk1OTEtOTg5NTZlYzRkZjQ2IiwidCI6ImQzMTdiNDI0LWY4NDktNDk1Ni04NzIwLTAyZWNjOWIyNjJhYiJ9&pageName=ReportSection) to open dashboard.
![Capture](https://user-images.githubusercontent.com/104726222/166442553-74622ca0-f7e0-49c7-96f6-6511b675e121.PNG)


