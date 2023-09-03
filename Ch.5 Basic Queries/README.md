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

## The DISTINCT Keyword in SQL

### What Is the DISTINCT Keyword?

The "DISTINCT" keyword in SQL is used to filter duplicate rows from the result set of a query. It ensures that only unique values are returned for a specific column or combination of columns. The "DISTINCT" keyword is particularly useful when you want to retrieve a list of unique values from a column in a database table.

### Syntax of the DISTINCT Keyword

The "DISTINCT" keyword is typically used in the "SELECT" statement and follows this format:

```sql
SELECT DISTINCT column1, column2, ...
FROM table_name;
```

- `column1, column2, ...`: The columns for which you want to retrieve unique values.
- `table_name`: The name of the table from which you are retrieving data.

### Using the DISTINCT Keyword

Here's an example of using the "DISTINCT" keyword to retrieve a list of unique customer names from a "customers" table:

```sql
SELECT DISTINCT customer_name
FROM customers;
```

In this query, the "DISTINCT" keyword ensures that only unique customer names are returned in the result set, eliminating duplicates.

### Benefits of the DISTINCT Keyword

- **De-Duplication**: It helps remove duplicate rows from query results, providing a clean list of unique values.
- **Data Exploration**: When you need to explore the distinct values within a specific column, the "DISTINCT" keyword simplifies the process.
- **Aggregate Calculations**: It is useful when you want to perform aggregate calculations (e.g., counting unique values) on a specific column.

### Limitations of the DISTINCT Keyword

- The "DISTINCT" keyword considers all selected columns when evaluating uniqueness. If you select multiple columns, it ensures that combinations of values are unique.
- It may impact query performance when used on large datasets because it requires the database to perform additional sorting and elimination of duplicates.

## Example Use Case for DISTINCT Keyword

Suppose you have a table of orders with customer names, and you want to retrieve a list of unique customer names:

```sql
SELECT DISTINCT customer_name
FROM orders;
```

In this example, the "DISTINCT" keyword ensures that each customer name is listed only once in the result set.

## Logical Operators in SQL

### What Are Logical Operators?

Logical operators in SQL are used to perform logical operations on one or more conditions in SQL queries. These operators allow you to combine conditions to filter and retrieve data based on more complex criteria. There are three main logical operators in SQL:

1. **AND**: The "AND" operator is used to combine two or more conditions, and it returns true if all the conditions are true. It acts as a logical "and" between conditions.
2. **OR**: The "OR" operator is used to combine two or more conditions, and it returns true if at least one of the conditions is true. It acts as a logical "or" between conditions.
3. **NOT**: The "NOT" operator is used to negate or reverse the result of a condition. It returns true if the condition is false and vice versa.

### Using Logical Operators

#### 1\. AND Operator

The "AND" operator is typically used in the "WHERE" clause to filter rows that meet multiple conditions simultaneously. For example:

```sql
SELECT product_name, price
FROM products
WHERE
    category = 'Electronics'
    AND price < 500;
```

In this query, the "AND" operator combines two conditions: "category = 'Electronics'" and "price < 500," ensuring that both conditions must be true for a row to be included in the result.

#### 2\. OR Operator

The "OR" operator is also used in the "WHERE" clause to filter rows based on multiple conditions, but it returns true if at least one of the conditions is true. For example:

```sql
SELECT customer_name, city
FROM customers
WHERE
    city = 'New York'
    OR city = 'Los Angeles';
```

In this query, the "OR" operator allows rows with either "city = 'New York'" or "city = 'Los Angeles'" to be included in the result.

#### 3\. NOT Operator

The "NOT" operator negates the result of a condition. It is often used to filter rows that do not meet a specific condition. For example:

```sql
SELECT product_name, price
FROM products
WHERE NOT category = 'Clothing';
```

In this query, the "NOT" operator excludes rows where the "category" is 'Clothing.'

### Combining Logical Operators

You can combine logical operators to create more complex conditions. Parentheses can be used to control the order of evaluation. For example:

```sql
SELECT
    customer_name,
    order_date
FROM orders
WHERE (
        order_date >= '2023-01-01'
        AND order_date <= '2023-12-31'
    )
    OR (order_total > 1000);
```

In this query, we use both "AND" and "OR" operators to filter rows based on date range and order total.

### Benefits of Logical Operators

- **Complex Filtering**: Logical operators allow you to create complex conditions by combining multiple criteria.
- **Precise Data Retrieval**: You can precisely filter the data you need by specifying conditions that must be met.
- **Flexibility**: Logical operators make SQL queries flexible and adaptable to various filtering requirements.

## The IN Operator in SQL

### What Is the IN Operator?

The "IN" operator in SQL is used to filter rows based on a set of values or a subquery. It allows you to specify multiple values or a list of values to check if a column's value matches any of them. The "IN" operator simplifies querying when you want to filter data that matches any value from a predefined set.

### Syntax of the IN Operator

The syntax of the "IN" operator typically follows this format:

`column_name IN (value1, value2, ...);`

- `column_name`: The name of the column you want to compare.
- `(value1, value2, ...)`: The set of values or a subquery against which you want to compare the column's value.

### Using the IN Operator

Here's an example of using the "IN" operator to retrieve products that belong to a specific category:

```sql
SELECT
    product_name,
    category
FROM products
WHERE
    category IN (
        'Electronics',
        'Clothing',
        'Toys'
    );
```

In this query, the "IN" operator checks if the "category" column's value matches any of the specified values ('Electronics', 'Clothing', 'Toys'). Products in any of these categories will be included in the result.

### Benefits of the IN Operator

- **Simplicity**: The "IN" operator simplifies queries when you want to filter data based on multiple possible values.
- **Readability**: It enhances query readability by clearly indicating that you are comparing a column against a predefined set of values.
- **Efficiency**: When compared to using multiple "OR" conditions, the "IN" operator can be more efficient, especially with a large set of values.

### Using the IN Operator with Subqueries

The "IN" operator can also be used with subqueries to filter data based on the result of a subquery. For example:

```sql
SELECT employee_name
FROM employees
WHERE department_id IN (
        SELECT department_id
        FROM departments
        WHERE location = 'New York'
    );
```

In this query, the "IN" operator filters employees based on whether their department's location matches 'New York' according to the subquery.

### Limitations for the IN operator

- The "IN" operator is typically used for filtering against a single column. It can be less suitable for complex multi-column comparisons.
- Be cautious when using a long list of values with the "IN" operator, as it may impact query performance.

### Example Use Case for the IN operator

Suppose you have a table of orders, and you want to retrieve orders placed by specific customers:

```sql
SELECT
    order_id,
    order_date
FROM orders
WHERE
    customer_id IN (101, 102, 105);
```

In this example, the "IN" operator filters orders placed by customers with IDs 101, 102, or 105.

## The LIKE Operator in SQL

### What Is the LIKE Operator?

The "LIKE" operator in SQL is used to filter rows based on a pattern of characters in a column's value. It is particularly useful for searching and retrieving rows that match a specific pattern, such as finding names that contain a certain sequence of letters or email addresses with a specific domain.

### Syntax of the LIKE Operator

The syntax of the "LIKE" operator typically follows this format:

```sql
column_name LIKE pattern;
```

- `column_name`: The name of the column you want to search within.
- `pattern`: The pattern you want to match. It can include wildcard characters.

### Using the LIKE Operator with Wildcards

The "LIKE" operator is often used with wildcard characters to create flexible pattern matching:

- `%` (percent sign): Matches any sequence of characters (including zero characters).
- `_` (underscore): Matches any single character.

Here are some examples of using the "LIKE" operator with wildcards:

- To find all customers with names starting with "John":

  ```sql
  SELECT customer_name
  FROM customers
  WHERE customer_name LIKE 'John%';
  ```

- To find all email addresses with the domain "example.com":

  ```sql
  SELECT email
  FROM contacts
  WHERE email LIKE '%@example.com';
  ```

- To find all products with a name that contains the word "blue" anywhere:

  ```sql
  SELECT product_name
  FROM products
  WHERE product_name LIKE '%blue%';
  ```

### Benefits of the LIKE Operator

- **Pattern Matching**: The "LIKE" operator allows you to perform pattern matching for flexible searching.
- **Text-Based Searches**: It is valuable for searching text data, such as names, email addresses, or product descriptions.
- **Wildcard Usage**: The wildcard characters `%` and `_` provide flexibility in specifying patterns.

### Limitations of the LIKE operator

- Pattern matching using the "LIKE" operator can be resource-intensive when used on large datasets, as it may require scanning through all rows.
- Depending on the database system, the behavior of case sensitivity (whether the pattern matching is case-sensitive or case-insensitive) may vary.

### Example Use Case for the LIKE operator

Suppose you have a table of employees, and you want to retrieve employees with email addresses from a specific domain, such as "example.com":

```sql
SELECT employee_name, email
FROM employees
WHERE email LIKE '%@example.com';
```

In this example, the "LIKE" operator with the '%@example.com' pattern matches employees with email addresses from the specified domain.
