# 1978. Employees Whose Manager Left the Company

- Problem: [https://leetcode.com](https://leetcode.com/problems/employees-whose-manager-left-the-company)

```sql
# Write your MySQL query statement below
SELECT
    employee_id
FROM
    Employees
WHERE
    salary < 30000
    AND manager_id NOT IN (
        SELECT
            employee_id
        FROM
            Employees
    )
ORDER BY
    employee_id
```