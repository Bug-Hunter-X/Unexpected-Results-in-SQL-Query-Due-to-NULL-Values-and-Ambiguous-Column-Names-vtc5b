```sql
SELECT * FROM employees WHERE department = 'Sales' AND COALESCE(salary, 0) > 100000;
```
This corrected query uses `COALESCE(salary, 0)` to replace any NULL values in the `salary` column with 0.  This ensures that employees with NULL salaries are considered in the comparison, and the query will return the expected results.

To further enhance robustness, consider adding explicit table aliases to ensure clarity and avoid ambiguity: 

```sql
SELECT e.* FROM employees e WHERE e.department = 'Sales' AND COALESCE(e.salary, 0) > 100000;
```
This version explicitly uses `e` as the alias for the `employees` table, removing potential ambiguity if other tables are present in a more complex query.