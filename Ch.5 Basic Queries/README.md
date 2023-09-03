# Basic Queries

SQL (Structured Query Language) is a powerful tool for managing and retrieving data from relational databases. Here are some fundamental SQL queries:

## AS Clause in SQL

### What Is the AS Clause?

In SQL, the **AS** clause is used to give a table or column an **alias** or a temporary name. This alias can be used in the query to make column names more readable or to shorten long table names. The AS clause is commonly used in the SELECT statement and can be applied to tables, columns, or even expressions.

### Using AS with Columns

You can use the AS clause to create an alias for a column. This is often used to rename columns in the result set, making them more descriptive.

```sql
SELECT
    first_name AS "First Name",
    last_name AS "Last Name"
FROM employees;
```

In this example, the AS clause renames the "first_name" column as "First Name" and the "last_name" column as "Last Name" in the query result.

### Using AS with Tables

You can also use the AS clause to provide an alias for tables. This is helpful when dealing with complex queries involving multiple tables, as it simplifies table references.

```sql
SELECT
    o.order_id,
    c.customer_name
FROM orders AS o
    JOIN customers AS c ON o.customer_id = c.customer_id;
```

Here, "orders AS o" and "customers AS c" are table aliases, which make it easier to reference the tables when specifying columns.

### Using AS with Expressions

The AS clause can be used to alias expressions or calculated values in the SELECT statement. This is helpful for creating temporary names for calculated columns.

```sql
SELECT
    product_name,
    unit_price * quantity AS "Total Price"
FROM order_details;
```

In this case, the AS clause assigns the alias "Total Price" to the calculated expression "unit_price \* quantity."

### Benefits of Using AS

- **Readability**: AS makes query results more readable by providing meaningful column names or simplifying table references.
- **Column Renaming**: You can rename columns without altering the underlying table structure.
- **Complex Queries**: AS is essential for complex queries involving joins, subqueries, or calculated columns.
- **Aggregation**: It's useful when performing aggregation functions like SUM, AVG, COUNT, etc., where you want to assign a name to the result.

### Considerations for AS

- Be cautious when using AS with reserved words or special characters. Use double quotes or square brackets (depending on the database) to enclose such aliases.
- Avoid overly long or cryptic aliases, as they may reduce query readability.
