SELECT *
FROM(
SELECT
	country,
	customer_id,
	SUM(revenue) AS revenue,
	ROW_NUMBER() OVER (
		PARTITION BY country
		ORDER BY SUM(revenue) DESC
	) AS rn
FROM vw_sales
WHERE customer_id IS NOT NULL
GROUP BY country, customer_id

)

WHERE rn <= 3;