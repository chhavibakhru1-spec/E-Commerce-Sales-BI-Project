SELECT
    segment,
	ROUND(SUM(sales),2) as total_sales,
	ROUND(SUM(profit),2) as total_profit,
	COUNT(DISTINCT order_id) as total_orders
FROM public.superstore
GROUP BY segment
ORDER BY total_sales DESC