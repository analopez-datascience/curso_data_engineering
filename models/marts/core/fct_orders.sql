-- models/facts/fact_orders.sql
SELECT
  order_id,
  service,
  shipping_cost,
  created_at,
  id_promo,
  promo_id,
  estimated_delivery_at,
  order_cost,
  user_id,
  order_total,
  delivered_at,
  tracking_id,
  estado_id
FROM
  orders_renamed;
