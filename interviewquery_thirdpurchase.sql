--interviewquery_thirdpurchase.sql

SELECT user_id, created_at, product_id, quantity
FROM (
  SELECT 
    t.id,
    t.user_id,
    t.created_at,
    t.product_id,
    t.quantity,
    ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY created_at, id) AS rn
  FROM transactions t
) AS t2
WHERE rn = 3
ORDER BY user_id;
