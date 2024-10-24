SELECT * FROM production_data.prod_data;

                                  -- KPI 1 --
select sum(manufactured_QTY) as MANUFACTURED_QTY from production_data.prod_data;

                                  -- KPI 2 --
select sum(Rejected_QTY) as REJECTED_QTY from production_data.prod_data;

                                  -- KPI 3 --
select sum(Processed_QTY) as Processed_QTY from production_data.prod_data;

                                  -- KPI 4 --
select sum(Rejected_Qty) / sum(Processed_Qty) as Wastage_Qty from production_data.prod_data;

								  -- KPI 5 --
                      -- Employee Wise Rejected Qty --
Select Emp_Name, Count(Rejected_Qty) as Total_Rejected_Qty 
from production_data.prod_data group by Emp_Name order by Total_Rejected_Qty desc;


                                  -- KPI 6 --
                       -- Machine Wise Rejected Qty --
Select Machine_Name , Count(Rejected_Qty) as Total_Rejected_Qty 
from production_data.prod_data group by Machine_Name order by Total_Rejected_Qty desc;

                                 
                                 -- KPI 7 --
                      -- Production Comparison Trend--
Select Fiscal_Date, Sum(Manufactured_Qty), Sum(Rejected_Qty) from production_data.prod_data
group by Fiscal_Date order by fiscal_date;

								
                                -- KPI 8 --
                        -- Manufacture Vs Rejected --
Select Sum(Manufactured_Qty) as Manufactured, Sum(Rejected_Qty) as Rejected from production_data.prod_data;


                                 -- KPI 9 --
                      -- Dept wise Manufacture Vs Reject--
Select Department_Name, Sum(Manufactured_Qty) as Total_Manufactured_Qty, Sum(Rejected_Qty) as Total_Rejected_Qty 
from production_data.prod_data group by Department_Name order by Department_Name;