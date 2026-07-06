-- =============================
-- Missing Customer IDs
-- =============================

SELECT COUNT(*) AS missing_customer_ids
FROM invoices
WHERE customer_id IS NULL;