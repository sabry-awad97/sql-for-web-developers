# CRUD Operations in Databases

## What Are CRUD Operations?

**CRUD** stands for Create, Read, Update, and Delete. These are the four basic operations that can be performed on data in a database or data storage system. CRUD operations are fundamental to interacting with data in various applications, from web and mobile apps to database management.

### 1\. Create (C) - Adding Data

**Create** is the operation used to add new data or records to a database. When you want to insert new information into a database, you are performing a create operation.

```sql
-- Insert a new employee record into the "employees" table
INSERT INTO
    employees (
        employee_id,
        first_name,
        last_name,
        job_title
    )
VALUES (
        101,
        'John',
        'Doe',
        'Software Engineer'
    );
```

### 2\. Read (R) - Retrieving Data

**Read** is the operation used to retrieve or query existing data from a database. It involves searching for and displaying data that meets specific criteria.

```sql
-- Retrieve the names of all employees in the "HR" department
SELECT
    first_name,
    last_name
FROM employees
WHERE department = 'HR';
```

### 3\. Update (U) - Modifying Data

**Update** is the operation used to modify or update existing data in a database. It allows you to make changes to records that already exist.

```sql
-- Update the job title of an employee
UPDATE employees
SET
    job_title = 'Senior Software Engineer'
WHERE employee_id = 101;
```

### 4\. Delete (D) - Removing Data

**Delete** is the operation used to remove or delete data from a database. It involves eliminating records or data that are no longer needed.

```sql
-- Delete an employee record
DELETE FROM employees WHERE employee_id = 101;
```

## Use Cases

- **Create**: Used when adding new user accounts, product listings, or any data entry.
- **Read**: Essential for retrieving user profiles, product details, or generating reports.
- **Update**: Used to modify user preferences, update inventory quantities, or correct errors.
- **Delete**: Helpful for removing outdated records, user accounts, or content.

## Importance of CRUD Operations

CRUD operations are essential for data management, application functionality, and maintaining data integrity. They form the foundation for building interactive and dynamic applications that interact with databases.

## The INSERT Statement

The **INSERT statement** in SQL is used to add new records or rows into a table. It allows you to insert data into specific columns of a table, creating new records with each insertion.

### Syntax of the INSERT Statement

The basic syntax of the INSERT statement is as follows:

```sql
INSERT INTO
    table_name (column1, column2, column3,...)
VALUES (value1, value2, value3,...);
```

- `table_name`: The name of the table where you want to insert data.
- `(column1, column2, column3, ...)`: A comma-separated list of columns into which you want to insert data. This part is optional, and if omitted, values must be provided for all columns in the same order as they appear in the table.
- `VALUES (value1, value2, value3, ...)`: The values you want to insert into the specified columns. These values should match the data types of the corresponding columns.

### Examples of Using the INSERT Statement

#### Inserting Data into All Columns

```sql
-- Insert a new employee record into the "employees" table
INSERT INTO employees VALUES (101, 'John', 'Doe', 'Software Engineer', '2023-09-01');
```

In this example, data is inserted into all columns of the "employees" table in the order they appear.

#### Inserting Data into Specific Columns

```sql
-- Insert a new customer record with specific columns
INSERT INTO customers (customer_id, first_name, last_name, email)
VALUES (201, 'Alice', 'Smith', 'alice@example.com');
```

Here, data is inserted only into the specified columns of the "customers" table, leaving other columns with their default or null values.

### Importance of the INSERT Statement

- The INSERT statement is essential for populating tables with initial data.
- It allows you to add new records to a database, ensuring that data is correctly structured and consistent.
- INSERT is used in conjunction with other SQL statements to maintain and manipulate data in databases.

## HTTP CRUD Database Lifecycle

In web development, the HTTP CRUD database lifecycle refers to the set of operations used to manage data stored in a database using the HTTP methods: GET, POST, PUT, and DELETE. These operations correspond to CRUD operations in a database.

### 1\. Create (HTTP POST)

- **Create** involves adding new data to a database.
- In the HTTP CRUD lifecycle, the corresponding HTTP method is **POST**.
- When you submit data to a web server using a POST request, you create a new record in the database.

```http
POST /api/users
Content-Type: application/json

{
  "name": "Alice",
  "email": "alice@example.com"
}
```

### 2\. Read (HTTP GET)

- **Read** involves retrieving data from a database.
- In the HTTP CRUD lifecycle, the corresponding HTTP method is **GET**.
- When you make a GET request to a specific endpoint, you retrieve data from the database.

```http
GET /api/users/1
```

### 3\. Update (HTTP PUT)

- **Update** involves modifying existing data in a database.
- In the HTTP CRUD lifecycle, the corresponding HTTP method is **PUT**.
- When you send a PUT request with updated data to a specific resource, you update the corresponding record in the database.

```http
PUT /api/users/1
Content-Type: application/json

{
  "name": "Alice Smith",
  "email": "alice.smith@example.com"
}
```

### 4\. Delete (HTTP DELETE)

- **Delete** involves removing data from a database.
- In the HTTP CRUD lifecycle, the corresponding HTTP method is **DELETE**.
- When you send a DELETE request to a specific resource, you delete the corresponding record from the database.

```http
DELETE /api/users/1
```

### Use Cases of CRUD

- **Create**: Used when adding new user accounts, product listings, or any data entry.
- **Read**: Essential for retrieving user profiles, product details, or generating reports.
- **Update**: Used to modify user preferences, update inventory quantities, or correct errors.
- **Delete**: Helpful for removing outdated records, user accounts, or content.

## Importance of the HTTP CRUD Database Lifecycle

- This lifecycle is fundamental for building interactive and dynamic web applications.
- It allows web developers to interact with databases over the HTTP protocol, enabling data management in web applications.
- It follows a RESTful design pattern, making APIs predictable and easy to use.

## Auto Increment

### What Is Auto Increment?

Auto Increment is a database feature that automatically generates a unique numeric value for each new record or row added to a table. It is commonly used for creating primary keys, which are unique identifiers for database records.

### Key Characteristics of Auto Increment

- **Uniqueness**: Each generated value is unique within the table, ensuring that no two records have the same identifier.

- **Sequential**: Auto Increment values are typically generated in sequential order. The first record gets the lowest value, and subsequent records receive incrementally higher values.

- **Primary Key Usage**: Auto Increment values are often used as primary keys, providing a reliable way to identify and retrieve records.

In SQL databases, you can specify a column as an auto-incrementing primary key. Here's an example using MySQL:

```sql
CREATE TABLE
    employees (
        employee_id INT AUTO_INCREMENT PRIMARY KEY,
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        job_title VARCHAR(100)
    );
```

In this example, the `employee_id` column is designated as an auto-incrementing primary key. When you insert a new record into the "employees" table without specifying a value for `employee_id`, the database system automatically generates a unique and sequential value for it.

### Benefits of Auto Increment

1. **Uniqueness**: Auto Increment ensures that each record in a table has a unique identifier, eliminating duplicates.

1. **Simplicity**: It simplifies the process of creating primary keys, as you don't need to manually generate unique values.

1. **Efficiency**: Auto Increment values are generated efficiently and quickly by the database system.

### Use Cases for Auto Increment

Auto Increment is commonly used in scenarios where unique identifiers are needed, such as:

- Employee IDs in HR databases.
- Customer IDs in e-commerce systems.
- Order numbers in inventory management.
- Student IDs in educational databases.

### Note

While auto incrementing values are typically numeric, some databases offer similar features for other data types like UUIDs (Universally Unique Identifiers) for globally unique identifiers.

## SQL Injection

### What Is SQL Injection?

**SQL Injection** is a type of cyberattack that occurs when an attacker injects malicious SQL code into an application's input fields or parameters, with the intention of manipulating or accessing a database. SQL Injection attacks can lead to unauthorized access, data theft, or data manipulation.

### How SQL Injection Works

1. **Input Fields**: Many web applications take user input through forms or URL parameters, which are used to construct SQL queries to the database.
2. **Malicious Input**: An attacker enters malicious input that includes SQL code into the input fields. For example, an attacker might input `' OR 1=1; --` into a username or password field.
3. **Vulnerable Query**: If the application doesn't properly validate or sanitize user input, the attacker's input might be directly included in an SQL query constructed by the application.
4. **Unauthorized Access**: The injected SQL code can alter the query's logic, potentially bypassing authentication, accessing sensitive data, or even modifying the database.

### Example of SQL Injection

Consider a login form where a user enters a username and password. If the application is vulnerable to SQL Injection and doesn't validate inputs correctly, an attacker might input the following:

```sql
' OR 1=1; --
```

If the application's query isn't properly protected, it might construct a query like this:

```sql
SELECT * FROM users WHERE username = '' OR 1=1; --' AND password = 'password';
```

This modified query always evaluates to true (`1=1`), effectively bypassing the login check and allowing the attacker to log in without a valid password.

### Preventing SQL Injection

To prevent SQL Injection, it's essential to follow secure coding practices:

1. **Parameterized Statements**: Use parameterized queries or prepared statements provided by database libraries. These methods automatically handle input sanitization.
2. **Input Validation**: Validate and sanitize user input. Only accept expected values and reject or sanitize any input that doesn't conform.
3. **Least Privilege**: Ensure that database accounts used by your application have the least privilege necessary to perform their tasks.
4. **Error Handling**: Implement proper error handling to avoid exposing sensitive information in error messages.
5. **Web Application Firewall (WAF)**: Consider using a WAF to filter and block potentially harmful requests.

### Importance of SQL Injection Prevention

Preventing SQL Injection is crucial because it helps protect the confidentiality, integrity, and availability of your data. Failing to secure your application against SQL Injection can lead to data breaches and other security incidents.

## The COUNT Function

### What Is the COUNT Function?

The **COUNT** function in SQL is used to count the number of rows that match a specified condition in a database table. It is a powerful tool for generating summary information about data, such as the total number of records that meet specific criteria.

### Syntax of the COUNT Function

The basic syntax of the COUNT function is as follows:

```sql
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
```

- `COUNT(column_name)`: Specifies the column you want to count. You can also use `COUNT(*)` to count all rows in the table.
- `FROM table_name`: Specifies the table from which you want to count rows.
- `WHERE condition`: (Optional) Specifies the condition that determines which rows to count. If omitted, all rows are counted.

### Examples of Using the COUNT Function

#### Example 1: Count All Rows in a Table

```sql
SELECT COUNT(*)
FROM employees;
```

This query counts all the rows in the "employees" table, providing the total number of employees.

#### Example 2: Count Rows Based on a Condition

```sql
SELECT COUNT(*)
FROM orders
WHERE status = 'Shipped';
```

In this query, the COUNT function is used to count the number of orders with the status "Shipped."

### Use Cases for the COUNT Function

1. **Data Analysis**: COUNT helps analyze datasets by providing the number of records that meet specific criteria.
2. **Reporting**: It's used in generating reports to summarize data, such as counting the number of products in a certain category.
3. **Pagination**: COUNT is useful for implementing pagination in web applications, helping determine the total number of pages based on the number of records.
4. **Quality Assurance**: It's used in QA testing to verify data integrity by ensuring the expected number of records exists.

### Note on **COUNT**

- The COUNT function returns an integer value.
- It's often used in combination with other SQL functions and clauses to perform complex queries.

## The WHERE Clause

## What Is the WHERE Clause?

The **WHERE** clause in SQL is used to filter and retrieve specific rows from a database table that meet a specified condition or set of conditions. It allows you to narrow down your query results and focus on the data that matches your criteria.

## Syntax of the WHERE Clause

The basic syntax of the WHERE clause in a SELECT statement is as follows:

```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

- `column1, column2, ...`: The columns you want to retrieve.
- `table_name`: The name of the table from which you want to retrieve data.
- `condition`: The condition that specifies which rows to include in the result set. Rows that satisfy this condition will be returned.

### Examples of Using the WHERE Clause

#### Example 1: Basic WHERE Clause

```sql
SELECT
    first_name,
    last_name
FROM employees
WHERE department = 'HR';
```

In this query, the WHERE clause filters the "employees" table to retrieve only the first and last names of employees who work in the HR department.

#### Example 2: Combining Conditions

```sql
SELECT
    product_name,
    unit_price
FROM products
WHERE
    category = 'Electronics'
    AND stock_quantity > 10;
```

This query retrieves the product name and unit price from the "products" table for products in the "Electronics" category with a stock quantity greater than 10.

### Use Cases for the WHERE Clause

- **Data Retrieval**: Use WHERE to extract specific data subsets, such as all orders placed by a particular customer.
- **Filtering**: It's useful for filtering records based on various criteria, such as date ranges, numerical values, or text patterns.
- **Conditional Joins**: Combine WHERE with JOIN clauses to specify conditions for joining multiple tables.
- **Aggregate Functions**: Use WHERE to filter data before applying aggregate functions like COUNT, SUM, or AVG.

### Note on **WHERE** Clause

- You can use logical operators such as AND, OR, and NOT to create complex conditions in the WHERE clause.
- Be cautious with the use of the WHERE clause, as incorrect conditions may result in unintended data retrieval.

## The DELETE Statement

### What Is the DELETE Statement?

The **DELETE** statement in SQL is used to remove one or more rows from a database table based on a specified condition. It allows you to selectively delete data from a table while preserving the remaining records.

### Syntax of the DELETE Statement

The basic syntax of the DELETE statement is as follows:

```sql
DELETE FROM table_name
WHERE condition;
```

- `table_name`: The name of the table from which you want to delete rows.
- `condition`: The condition that determines which rows to delete. Rows that satisfy this condition will be removed from the table.

### Example of Using the DELETE Statement

### Example: Deleting Rows Based on a Condition

```sql
DELETE FROM customers
WHERE registration_date < '2023-01-01';
```

In this query, the DELETE statement removes all rows from the "customers" table where the registration date is earlier than January 1, 2023.

### Important Considerations

- Be cautious when using the DELETE statement, as it permanently removes data from a table. Ensure that the condition is correctly specified to avoid unintentional data loss.
- Some databases support additional options with the DELETE statement, such as using the RETURNING clause to return the deleted data or using JOINs to delete rows from multiple tables.

### Use Cases for the DELETE Statement

- **Data Cleanup**: Use DELETE to remove obsolete or redundant records from a table.
- **Data Archiving**: It can be used to archive data by deleting older records while preserving recent ones.
- **Data Retention Policies**: Implement data retention policies by deleting records that are no longer required for legal or operational reasons.
- **Data Privacy**: Delete records containing sensitive or personal information when they are no longer needed.
