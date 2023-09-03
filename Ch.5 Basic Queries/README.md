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

Certainly! Let's explore SQL functions.

## SQL Functions

### What Are SQL Functions?

SQL functions are pre-defined or user-defined routines that accept one or more arguments, perform specific operations, and return a single value. Functions are an integral part of SQL and are used to manipulate data, perform calculations, and retrieve information from databases.

### Types of SQL Functions

SQL functions can be categorized into several types:

#### 1\. Built-in Functions

Built-in or system functions are provided by the database management system (DBMS) and are available for common operations. Examples include:

- **Mathematical Functions**: `SUM()`, `AVG()`, `MIN()`, `MAX()`
- **String Functions**: `CONCAT()`, `LENGTH()`, `SUBSTRING()`
- **Date and Time Functions**: `NOW()`, `DATE()`, `YEAR()`

#### 2\. Aggregate Functions

Aggregate functions perform calculations on sets of values and return a single result. They are often used with the `GROUP BY` clause for summarizing data. Examples include:

- `SUM()`: Calculates the sum of a set of values.
- `AVG()`: Computes the average of a set of values.
- `COUNT()`: Counts the number of rows in a result set.
- `MIN()`: Retrieves the minimum value from a set of values.
- `MAX()`: Retrieves the maximum value from a set of values.

#### 3\. Scalar Functions

Scalar functions operate on individual values and return a single value. They can be used within SQL expressions or queries. Examples include:

- `UPPER()`: Converts a string to uppercase.
- `LOWER()`: Converts a string to lowercase.
- `ROUND()`: Rounds a numeric value to a specified number of decimal places.
- `COALESCE()`: Returns the first non-null value from a list of expressions.

#### 4\. User-Defined Functions (UDFs)

User-defined functions are created by users to perform custom operations. These functions can encapsulate complex logic and be reused in SQL queries. There are two types of UDFs:

- **Scalar UDFs**: Return a single value.
- **Table-valued UDFs**: Return a table as a result, which can be used in a query.

### Using SQL Functions

Here's an example of using a built-in function to calculate the average salary of employees:

```sql
SELECT AVG(salary) AS "Average Salary"
FROM employees;
```

In this query, `AVG()` is a built-in aggregate function that calculates the average salary.

## Benefits of SQL Functions

- **Data Manipulation**: Functions allow you to manipulate data within SQL queries, making it possible to transform, aggregate, or format data as needed.
- **Reusability**: User-defined functions promote code reusability by encapsulating custom logic, which can be called from multiple queries.
- **Performance**: Functions can enhance query performance by avoiding the need for complex calculations in client applications.
