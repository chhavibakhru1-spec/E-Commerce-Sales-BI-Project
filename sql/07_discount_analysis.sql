SELECT
    discount,
	ROUND(SUM(sales),2) as total_sales,
	ROUND(SUM(profit),2) as total_profit,
	SUM(quantity) as total_quantity_sold
FROM public.superstore
GROUP BY discount
ORDER BY discount