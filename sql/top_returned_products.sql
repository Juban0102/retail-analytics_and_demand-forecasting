SELECT 
	stock_code, 
	SUM(quantity) AS total_quantity, 
	SUM(revenue) AS total_revenue
FROM vw_sales
WHERE invoice_no LIKE 'C%'
GROUP BY stock_code
ORDER BY total_revenue ASC;
