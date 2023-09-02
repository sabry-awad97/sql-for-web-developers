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

## Which Databases Use SQL?

Relational databases are a type of database management system (DBMS) that store and manage data in a structured manner, with tables that relate to each other through keys. SQL is commonly used in various relational database systems. Here are some of the popular databases that use SQL:

1. `MySQL`: MySQL is one of the most widely used open-source relational database management systems. It's known for its speed, reliability, and ease of use. Many web applications, including WordPress and Joomla, use MySQL as their database backend.

1. `PostgreSQL`: PostgreSQL is another powerful open-source relational database system known for its extensibility and support for advanced data types. It is often used for complex and large-scale applications.

1. `Oracle Database`: Oracle Database is a commercial relational database management system. It's known for its robustness, scalability, and support for enterprise-level applications. It's commonly used in large corporations and organizations.

1. `Microsoft SQL Server`: SQL Server is a relational database management system developed by Microsoft. It's often used in Windows-based environments and integrates well with other Microsoft products like .NET and Excel.

1. `SQLite`: SQLite is a lightweight and embedded relational database system. It's used in a wide range of applications, including mobile apps, desktop applications, and embedded systems. It doesn't require a separate server process and is self-contained within the application.

1. `IBM Db2`: Db2 is a family of data management products, including both relational and non-relational database systems. It's used in enterprise-level applications and supports a wide range of data types and data warehousing capabilities.

1. `MariaDB`: MariaDB is an open-source relational database management system and a MySQL fork. It aims to be compatible with MySQL and is often used as a drop-in replacement for MySQL.

1. `SQLite`: SQLite is a self-contained, serverless, and zero-configuration SQL database engine. It's commonly used in mobile applications and as an embedded database in various software products.

1. `Amazon RDS`: Amazon RDS (Relational Database Service) is a cloud-based service that allows you to set up, operate, and scale a relational database in the cloud. It supports several database engines, including MySQL, PostgreSQL, Microsoft SQL Server, and Oracle Database.

1. `Google Cloud SQL`: Google Cloud SQL is a fully managed relational database service on Google Cloud Platform. It supports MySQL, PostgreSQL, and SQL Server as database engines.

## NoSQL vs SQL

In the world of database management systems, there are two primary categories: SQL (Structured Query Language) databases and NoSQL databases. These two categories differ in their data models, storage mechanisms, and use cases. Let's explore the differences between them.

### SQL Databases

**1\. Data Structure:**

- SQL databases are relational, meaning they use a structured schema with tables, rows, and columns.
- Data in SQL databases follows a predefined structure, and changes to the schema can be complex.

**2\. Query Language:**

- SQL databases use SQL as the query language, which is powerful for complex queries and joins.
- SQL allows for precise control over data retrieval and manipulation.

**3\. ACID Transactions:**

- SQL databases typically support ACID (Atomicity, Consistency, Isolation, Durability) transactions, ensuring data integrity.
- ACID transactions are essential for applications where data consistency is critical, such as banking systems.

**4\. Scaling:**

- SQL databases can scale vertically (adding more resources to a single server) or horizontally (using sharding), but horizontal scaling can be complex.

**5\. Use Cases:**

- SQL databases are well-suited for applications with structured data and complex relationships, such as e-commerce platforms, financial systems, and traditional business applications.

### NoSQL Databases

**1\. Data Structure:**

- NoSQL databases are non-relational and use various data models, including document, key-value, column-family, and graph.
- Data in NoSQL databases can be more flexible, with different records having different fields.

**2\. Query Language:**

- NoSQL databases often use query languages specific to their data model, which may be less expressive than SQL.
- Queries are optimized for specific use cases but may not support complex joins.

**3\. ACID Transactions:**

- NoSQL databases may provide varying levels of ACID compliance, with some favoring eventual consistency over strict consistency.

**4\. Scaling:**

- NoSQL databases are designed for horizontal scalability, making it easier to handle large amounts of data and high traffic loads.

**5\. Use Cases:**

- NoSQL databases excel in scenarios with rapidly changing data, unstructured or semi-structured data, and distributed systems. They are commonly used in real-time analytics, content management systems, and social media platforms.

### When to Choose SQL or NoSQL

- **Choose SQL** when you have a well-defined schema, require ACID transactions, and need complex querying capabilities.
- **Choose NoSQL** when your data is unstructured, rapidly evolving, or distributed across multiple locations. NoSQL databases are well-suited for applications that prioritize scalability and can tolerate eventual consistency.

Remember that the choice between SQL and NoSQL depends on the specific requirements of your application. In some cases, hybrid solutions combine both types of databases to leverage the strengths of each for different parts of an application.

## SQLite - A Self-contained Database Engine

SQLite is a powerful and lightweight relational database management system (RDBMS) known for its simplicity and self-contained nature. Here's a closer look at SQLite:

### 1\. Embedded Database

- SQLite is often referred to as an "embedded" or "serverless" database because it doesn't require a separate server process to function.
- It's included as a library in various programming languages, making it easy to integrate into applications.

### 2\. Single-File Database

- SQLite databases are stored in a single file on disk, making them easy to transport, backup, and manage.
- This simplicity makes it a great choice for mobile applications and small to medium-sized projects.

### 3\. Self-Contained

- SQLite databases are self-contained, meaning the entire database, including tables, indexes, and data, is contained within a single file.
- This file can be as simple as a plain text file with a `.db` extension.

### 4\. ACID Compliant

- SQLite follows the ACID (Atomicity, Consistency, Isolation, Durability) properties, ensuring data integrity and reliability.
- It supports transactions, making it suitable for applications requiring data consistency.

### 5\. Data Types

- SQLite supports various data types, including INTEGER, TEXT, REAL, BLOB, and NULL, providing flexibility in data storage.

### 6\. Use Cases

- SQLite is commonly used in mobile applications, desktop software, web browsers, and embedded systems.
- It's an excellent choice for applications with modest data storage needs.

### 7\. SQL Compatibility

- SQLite uses SQL (Structured Query Language) as its query language, making it easy for developers familiar with SQL to work with it.
- It supports standard SQL commands, including SELECT, INSERT, UPDATE, DELETE, and JOIN.

### 8\. Open-Source

- SQLite is open-source, making it freely available for anyone to use, modify, and distribute.
- It has a large and active community of developers.

### 9\. Limitations

- While SQLite is versatile, it may not be suitable for very large-scale applications with high concurrent access due to its file-based nature.
- It may not be the best choice for multi-user, heavily concurrent server-based applications.

In summary, SQLite is an excellent choice for small to medium-sized projects, mobile applications, and scenarios where simplicity, portability, and self-containment are essential. It offers ACID compliance, SQL compatibility, and versatility, making it a valuable tool for developers.
