
use [Tableau Project 2];

Select * from [dbo].[abc_sales];

select year(Order_Date) as order_year,        
       MONTH(Order_Date) as order_month, 
	   SUM(unit_price) as total_revenue,
	   COUNT(distinct Order_ID) as D_ordrr_id
	   from [dbo].abc_sales
	   Group by YEAR(Order_Date),MONTH(Order_Date)
	   Order by order_year, order_month;


select Top 3 Unit_price
from [dbo].abc_sales
order by Unit_Price desc;


