SELECT 
	country, 
	SUM(quantity) AS total_quantity, 
	SUM(revenue) AS total_revenue
FROM vw_sales
WHERE invoice_no LIKE 'C%'
GROUP BY country
ORDER BY total_revenue ASC;
