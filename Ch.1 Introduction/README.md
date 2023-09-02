# Introduction to SQL

## What is SQL?

**SQL** stands for Structured Query Language, and it's a powerful tool for managing and manipulating databases. In this first lesson, we'll dive into the basics of SQL.

**Context**: SQL is the language used to communicate with relational databases, like MySQL, PostgreSQL, and Microsoft SQL Server. It allows you to interact with a database to retrieve, insert, update, or delete data.

**Example**: Imagine you have a table called "users" with columns for "name," and "age". To retrieve all students' columns, you'd use the SQL query:

```sql
SELECT * FROM users;
```

- The `SELECT` statement is used to retrieve data from one or more tables in a database. It's often the first SQL command you learn because it's fundamental to querying data.

- The asterisk `*` in `SELECT *` is a wildcard character that stands for "all columns." It tells SQL to retrieve all columns from the specified table(s).

- `FROM` is used to specify the table from which you want to retrieve data. In our example, it's the users table.

Assuming you have a database with a `users` table, here's how the query works:

- You issue the SQL command: `SELECT * FROM users;`

- SQL goes to the `users` table and fetches all rows and all columns of data.

- The result is a table-like structure with rows and columns, containing all the data stored in the `users` table.

## SQL `SELECT` Statement

In the world of databases and SQL (Structured Query Language), the `SELECT` statement is a fundamental tool for retrieving data from a database. This statement allows you to specify what data you want to retrieve and from which table

### The Basic Syntax

The basic syntax of a `SELECT` statement looks like this:

```sql
SELECT column1, column2, ...
FROM table_name;
```

- `SELECT`: This keyword is used to indicate that you want to retrieve data.
- `column1, column2, ...`: Here, you list the names of the columns you want to retrieve. You can select one or more columns separated by commas, or you can use `*` to select all columns.
- `FROM table_name`: This part specifies from which table you want to retrieve data. You replace `table_name` with the actual name of the table.

### Retrieving All Columns

If you want to retrieve all columns from a table, you can use the wildcard `*` symbol:

```sql
SELECT *
FROM table_name;
```

### Retrieving Specific Columns

To retrieve specific columns, you list their names after the `SELECT` keyword:

```sql
SELECT first_name, last_name, email
FROM employees;
```

### Filtering Data

You can also filter the data you retrieve using the `WHERE` clause. For example:

```sql
SELECT product_name, price
FROM products
WHERE price < 50;
```

In this query, we're selecting `product_name` and `price` from the `products` table but only for rows where the `price` is less than 50.

### Ordering Results

You can control the order in which results are displayed using the `ORDER BY` clause. For example:

```sql
SELECT product_name, price
FROM products
ORDER BY price DESC;
```

This query retrieves `product_name` and `price` from the `products` table and orders them in descending order based on the `price` column.

### Limiting Results

To limit the number of results returned, you can use the `LIMIT` clause:

```sql
SELECT product_name, price
FROM products
LIMIT 10;
```

This query retrieves the first 10 rows from the `products` table.
