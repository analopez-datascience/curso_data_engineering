-- models/facts/fact_budget.sql
SELECT
  month::DATE AS month,
  product_id,
  SUM(quantity) AS total_quantity
FROM
  stg_budget
GROUP BY
  1, 2
