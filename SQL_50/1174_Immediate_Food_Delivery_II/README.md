# 1174. Immediate Food Delivery II

- Problem: [https://leetcode.com](https://leetcode.com/problems/immediate-food-delivery-ii)

```sql
# Write your MySQL query statement below
SELECT
    ROUND(AVG(order_date = customer_pref_delivery_date) * 100, 2) AS immediate_percentage
FROM
    Delivery
WHERE
    (customer_id, order_date) IN (
        SELECT 
            customer_id, 
            MIN(order_date)
        FROM
            Delivery
        GROUP BY
            customer_id
    )
```