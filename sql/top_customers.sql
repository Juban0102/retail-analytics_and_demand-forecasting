SELECT 
	customer_id,
	SUM(revenue) AS revenue,
	SUM(quantity) AS total_quantity
FROM vw_sales
WHERE customer_id IS NOT NULL
GROUP BY customer_id
ORDER BY revenue DESC;