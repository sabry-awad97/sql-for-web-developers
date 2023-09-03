# Constraints in SQL Databases

## What Are Constraints?

Constraints in SQL databases are rules and restrictions applied to tables and columns to maintain the integrity, accuracy, and consistency of the data stored within the database. They ensure that data meets certain criteria or conditions, and they help enforce data quality and reliability.

## Types of Constraints

### 1\. **Primary Key Constraint:**

- Ensures that each row in a table has a unique identifier.
- A primary key uniquely identifies each record in a table, and it cannot contain NULL values.

### 2\. **Foreign Key Constraint:**

- Establishes relationships between tables.
- A foreign key in one table references the primary key of another table, enforcing referential integrity.

### 3\. **Unique Constraint:**

- Ensures that the values in a column or a set of columns are unique across all records in the table.
- Unlike the primary key, unique constraints can allow NULL values.

### 4\. **Check Constraint:**

- Specifies a condition that data must meet for an INSERT or UPDATE statement to be successful.
- It is used to enforce business rules or data validation rules.

### 5\. **Default Constraint:**

- Specifies a default value for a column when no value is explicitly provided during an INSERT operation.

## Why Use Constraints?

Constraints serve several critical purposes:

1. **Data Integrity:** They ensure that data remains accurate and consistent by enforcing rules and relationships.
2. **Data Quality:** Constraints prevent the insertion of incorrect or incomplete data.
3. **Relationships:** Foreign key constraints maintain relationships between tables, ensuring referential integrity.
4. **Business Rules:** Check constraints allow you to enforce specific business rules within the database.

## Examples of Constraints

Here are a few examples of how constraints are defined in SQL:

- Defining a primary key constraint:

  ```sql
  CREATE TABLE employees (
      employee_id INT PRIMARY KEY,
      first_name VARCHAR(50),
      last_name VARCHAR(50)
  );
  ```

- Defining a foreign key constraint:

  ```sql
  CREATE TABLE orders (
      order_id INT PRIMARY KEY,
      customer_id INT,
      order_date DATE,
      FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
  );
  ```

- Defining a unique constraint:

  ```sql
  CREATE TABLE products (
      product_id INT PRIMARY KEY,
      product_name VARCHAR(100) UNIQUE
  );
  ```

- Defining a check constraint:

  ```sql
  CREATE TABLE students (
      student_id INT PRIMARY KEY,
      age INT CHECK (age >= 18)
  );
  ```
