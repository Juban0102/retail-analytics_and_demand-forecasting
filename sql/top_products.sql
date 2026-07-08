SELECT
	stock_code,
	SUM(quantity * unit_price) AS revenue,
	SUM(quantity) AS total_quantity,
	ROUND(
		SUM(quantity * unit_price) / NULLIF(SUM(quantity), 0),
		2
	) AS average_unit_price
FROM vw_sales
GROUP BY stock_code
ORDER BY revenue DESC;