SELECT
    product_name,
	ROUND(SUM(sales),2) as total_sales,
	ROUND(SUM(profit),2) as total_profit,
	SUM(quantity) as total_quantity_sold
FROM public.superstore
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10