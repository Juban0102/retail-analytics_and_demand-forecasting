SELECT 
	country,
	SUM(quantity * unit_price) as revenue
FROM vw_sales
GROUP BY country
ORDER BY revenue DESC
