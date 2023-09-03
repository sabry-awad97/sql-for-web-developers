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
