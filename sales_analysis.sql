


--value >1000 & year 2022

select * from sales 
where sales>1000 and order_date >= '2022-01-01' and order_date <'2023-01-01';
--sales by region 
SELECT region, SUM(sales) AS total_sales
FROM sales
GROUP BY region;
--top 5 best saling product

select product_name , sum(sales) as total_sales 
from sales
group by product_name
order by total_sales desc limit 5;

--Monthly sales trend
select date_trunc('month',order_date::date) as month,
sum(sales) as total_sales,
product_name 
from sales
group by month,product_name
order by month,total_sales desc;

--Average order value by month
SELECT
    date_trunc('month',order_date::date) AS month,
    ROUND(SUM(sales) / COUNT(*), 2) AS average_order_value
FROM sales
GROUP BY date_trunc('month',order_date::date)
ORDER BY month;
--Category-wise sales contribution
select category,
sum(sales) as total_sales
from sales
group by category
order by category,total_sales;
-- Rank products by sales using window functions
select product_name,
rank() over (order by sum(sales) desc) as product_rank
from sales
group by product_name;

-- Month-over-month sales growth
bbjb
-- Identify low-performing regions

-- Customer segmentation (high / medium / low value)


-- Detect seasonal sales patterns
