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
