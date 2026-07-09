SELECT *
FROM (
SELECT
	country,
	stock_code,
	SUM(revenue) AS revenue,
	ROW_NUMBER() OVER(
		PARTITION BY country
		ORDER BY SUM(revenue) DESC
	) AS rn
FROM vw_sales
WHERE customer_id IS NOT NULL
GROUP BY country, stock_code
)
WHERE rn < 5;