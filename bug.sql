```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This query might seem simple, but it can lead to unexpected results if the `salary` column contains NULL values.  The condition `salary > 100000` will evaluate to `UNKNOWN` for NULL salaries, and `UNKNOWN` is treated as `FALSE` in most SQL dialects. This means that employees with NULL salaries will not be included in the results, even if they are in the 'Sales' department.

Another less obvious issue might arise if the 'Sales' department is the name of a view or temporary table with a different schema.  If you don't qualify the `salary` column with the table name (e.g., `employees.salary`), you might encounter unexpected behavior or an ambiguous column error if another table used in the query shares the same column name.