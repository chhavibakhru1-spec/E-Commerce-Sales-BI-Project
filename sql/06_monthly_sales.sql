SELECT
    TO_CHAR(order_date,'YYYY-MM') as sales_month,
	ROUND(SUM(sales),2) as total_sales,
	ROUND(SUM(profit),2) as total_profit
FROM public.superstore
GROUP BY TO_CHAR(order_date,'YYYY-MM')
ORDER BY sales_month