# SQL Query Bug: Handling NULLs and Ambiguity

This repository demonstrates a common SQL query error related to handling NULL values and ambiguous column names. The `bug.sql` file contains a query that produces incorrect results due to these issues.  The `bugSolution.sql` file provides a corrected version.

The bug arises because of how SQL handles NULL comparisons and potential column name ambiguity across tables or views.

**Key Learning Points:**

* **NULL handling:**  Understanding how NULL values affect comparison operators (`>`, `<`, `=`) in SQL is crucial.
* **Column qualification:**  Always qualify your column names with the table name to avoid ambiguity, especially when dealing with multiple tables or views.
* **COALESCE/IS NULL:** To handle NULL values correctly, functions like `COALESCE` (or `ISNULL` depending on the SQL dialect) are often necessary to replace NULLs with default values.