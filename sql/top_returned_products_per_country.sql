SELECT *
FROM(

SELECT 
	country,
	stock_code,
	SUM(revenue) AS total_revenue,
	SUM(quantity) AS total_quantity,
	ROW_NUMBER() OVER(
		PARTITION BY country
		ORDER BY SUM(revenue) ASC
	) AS rn,
	
	SUM(SUM(revenue)) OVER(
		PARTITION BY country
	) AS country_total_revenue
FROM vw_sales
WHERE invoice_no LIKE 'C%'
GROUP BY country, stock_code

)
WHERE rn < 5
ORDER BY country_total_revenue ASC;