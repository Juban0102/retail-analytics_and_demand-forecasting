SELECT 
	customer_id, 
	SUM(quantity) AS total_quantity, 
	SUM(revenue) AS total_revenue
FROM vw_sales
WHERE invoice_no LIKE 'C%'
GROUP BY customer_id
ORDER BY total_revenue ASC;
