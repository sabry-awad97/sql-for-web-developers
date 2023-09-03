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

## The IIF Function in SQL

### What Is the IIF Function?

The `IIF` function, short for "Immediate If," is a conditional function available in some SQL database systems. It allows you to perform conditional evaluations and return one of two values based on a specified condition. The `IIF` function is similar to the `CASE` statement but provides a more concise way to express simple conditional logic.

### Syntax of the IIF Function

The syntax of the `IIF` function typically follows this format:

`IIF(condition, value_if_true, value_if_false)`

- `condition`: A Boolean expression or a condition that evaluates to either true or false.
- `value_if_true`: The value to return if the condition is true.
- `value_if_false`: The value to return if the condition is false.

### Using the IIF Function

Here's an example of using the `IIF` function to categorize employees as "Full-time" or "Part-time" based on their weekly work hours:

```sql
SELECT
    employee_name,
    weekly_hours,
    IIF(
        weekly_hours >= 40,
        'Full-time',
        'Part-time'
    ) AS employment_status
FROM employees;
```

In this query, if the `weekly_hours` is greater than or equal to 40, the `IIF` function returns 'Full-time,' otherwise, it returns 'Part-time' as the `employment_status`.

### Benefits of the IIF Function

- **Simplicity**: The `IIF` function provides a concise and readable way to express simple conditional logic within SQL queries.
- **Readability**: It enhances query readability by reducing the need for lengthy `CASE` statements when dealing with basic conditions.
- **Performance**: For straightforward conditions, the `IIF` function can lead to more optimized query execution compared to more complex conditional constructs.
- **Ease of Use**: Developers familiar with programming languages may find the `IIF` function intuitive, as it resembles conditional statements in many programming languages.

### Limitations

- Not all database systems support the `IIF` function. Its availability may vary depending on the database you are using. In some databases, you may need to use a similar function like `CASE` instead.
- The `IIF` function is most suitable for simple conditional expressions. For complex conditions or multi-branch logic, the `CASE` statement is a more flexible choice.

### Example Use Case

Suppose you have a table of products with prices, and you want to categorize them as either "Expensive" or "Affordable" based on a price threshold:

```sql
SELECT
    product_name,
    price,
    IIF(
        price >= 100,
        'Expensive',
        'Affordable'
    ) AS price_category
FROM products;
```

In this example, the `IIF` function categorizes products as 'Expensive' or 'Affordable' based on the price.

## The BETWEEN Operator in SQL

### What Is the BETWEEN Operator?

The "BETWEEN" operator in SQL is used to filter rows in a database table based on a specified range of values. It checks if a column value falls within a given range, inclusive of both endpoints. The "BETWEEN" operator simplifies the process of filtering data within a range without writing complex conditional statements.

### Syntax of the BETWEEN Operator

The syntax of the "BETWEEN" operator typically follows this format:

```sql
column_name BETWEEN value1 AND value2;
```

- `column_name`: The name of the column you want to compare.
- `value1` and `value2`: The two values that define the range.

### Using the BETWEEN Operator

Here's an example of using the "BETWEEN" operator to retrieve all orders with order dates between January 1, 2023, and December 31, 2023:

```sql
SELECT order_id, order_date
FROM orders
WHERE order_date BETWEEN '2023-01-01' AND '2023-12-31';
```

In this query, "order_date BETWEEN '2023-01-01' AND '2023-12-31'" filters rows where the "order_date" falls within the specified date range.

### Benefits of the BETWEEN Operator

- **Simplicity**: The "BETWEEN" operator simplifies range-based filtering, making queries more concise and readable.
- **Inclusivity**: It includes both endpoints of the range, ensuring that values equal to the endpoints are included in the result.
- **Readability**: The "BETWEEN" operator makes the intention of range filtering clear in the SQL query.

### Limitations of the BETWEEN operator

- The "BETWEEN" operator is often used for numeric and date/time data types. When working with strings, be aware that sorting rules may affect the results, and case sensitivity may vary between databases.
- It's essential to specify the correct order for the range values. "value1" should be less than or equal to "value2" for the operator to work as expected.

### Example Use Case for the BETWEEN operator

Suppose you have a table of products with prices, and you want to retrieve products with prices between $50 and $100:

```sql
SELECT product_name, price
FROM products
WHERE price BETWEEN 50 AND 100;
```

In this example, the "BETWEEN" operator filters products with prices falling within the specified range.
