# Write your MySQL query statement below
SELECT
    product_name,
    SUM(unit) AS unit
FROM
    Products
LEFT JOIN
    Orders ON
    Orders.product_id = Products.product_id
WHERE
    DATE_FORMAT(order_date,"%Y-%m") = "2020-02"
GROUP BY
    Products.product_id
HAVING
    SUM(unit) >= 100