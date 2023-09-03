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

## Null Values

### What Are Null Values?

In SQL, a **null value** represents the absence of data in a particular column of a table. It is not the same as an empty string or zero; rather, it signifies that no data or value exists in that field. Null values are used to indicate missing or unknown information.

### Key Characteristics of Null Values

- **Absence of Data:** Null values indicate that the data for a particular column is not available or has not been provided.
- **Not the Same as Zero or Empty String:** Null is distinct from the number zero or an empty string (''). Zero and empty string are actual values, whereas null represents the lack of a value.
- **Applicable to All Data Types:** Null values can be used in columns with various data types, including numbers, text, dates, and more.

### Handling Null Values in SQL

1. **IS NULL**: SQL provides the `IS NULL` condition to check if a column contains null values. For example:

   `SELECT * FROM employees WHERE manager_id IS NULL;`

1. **IS NOT NULL**: Conversely, you can use `IS NOT NULL` to filter rows that do not contain null values.

   ```sql
   SELECT * FROM orders WHERE ship_date IS NOT NULL;
   ```

1. **COALESCE**: The `COALESCE` function allows you to provide a default value when a column contains null. It returns the first non-null value in a list.

   ```sql
   SELECT COALESCE(salary, 0) AS actual_salary FROM employees;
   ```

1. **NULL Functions**: SQL provides functions like `IFNULL`, `NULLIF`, and `NVL` (depending on the database system) to handle null values in specific ways

### Why Are Null Values Used?

Null values serve several essential purposes in databases:

1. **Flexibility**: They allow for flexibility in data entry, as not all information may be available at the time of data insertion.
2. **Unknown or Missing Data**: They represent cases where the data is either unknown or missing.
3. **Data Integrity**: Null values are a part of maintaining data integrity, as they indicate that the data is intentionally absent.
4. **Complex Queries**: They enable the distinction between empty and non-empty values when constructing complex queries.

### Considerations When Using Null Values

- While null values are useful, they can introduce complexity when writing queries, so it's essential to handle them carefully.
- When designing a database schema, consider whether certain columns should allow null values or if default values or constraints are more appropriate.

## Defining a NOT NULL Constraint in SQL

### What Is a NOT NULL Constraint?

In SQL, a **NOT NULL constraint** is used to ensure that a specific column in a database table cannot contain null values. When you define a column with a NOT NULL constraint, it means that every row in the table must have a value in that column; it cannot be left empty or null.

### Syntax for Defining a NOT NULL Constraint

You can define a NOT NULL constraint while creating a table or altering an existing table. Here's the syntax for defining a NOT NULL constraint during table creation:

```sql
CREATE TABLE table_name (
    column1 datatype NOT NULL,
    column2 datatype,
    ...
);
```

And here's how you can add a NOT NULL constraint to an existing table using the ALTER TABLE statement:

```sql
ALTER TABLE table_name
MODIFY column_name datatype NOT NULL;
```

### Examples of Using NOT NULL Constraint

#### Table Creation

Let's say you want to create a table called `employees` and ensure that the `first_name` and `last_name` columns cannot contain null values:

```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);
```

With this definition, every row inserted into the `employees` table must include non-null values for both `first_name` and `last_name`.

#### Adding NOT NULL Constraint to an Existing Table

If you want to add a NOT NULL constraint to an existing table, such as ensuring that the `email` column in the `customers` table cannot contain null values, you can use the ALTER TABLE statement:

```sql
ALTER TABLE customers
MODIFY email VARCHAR(100) NOT NULL;
```

### Benefits of Using NOT NULL Constraints

- **Data Integrity**: NOT NULL constraints enforce data integrity by ensuring that essential information is always present in a column.
- **Query Accuracy**: Queries and reports that depend on certain columns being non-null can rely on the data's consistency.
- **Error Prevention**: It prevents unintentional omission of critical data during data entry.
- **Simplified Validation**: When you insert or update records, you don't need to perform additional checks for null values; the constraint handles it for you.

Certainly! Let's explore the concept of primary keys in SQL databases.

## Primary Keys in SQL Databases

### What Is a Primary Key?

A **primary key** in a SQL database is a special column or combination of columns that uniquely identifies each row (record) in a table. It serves as a fundamental component of a relational database by ensuring the uniqueness of each record and providing a means to establish relationships between tables.

### Key Characteristics of Primary Keys

- **Uniqueness**: Every value in a primary key column must be unique within the table. This uniqueness ensures that each row can be uniquely identified.
- **Non-null**: A primary key column cannot contain null values. Every record must have a non-null value in the primary key column(s).
- **Single or Composite**: A primary key can consist of a single column (simple primary key) or a combination of multiple columns (composite primary key).

### Defining a Primary Key

You can define a primary key when creating a table using the `PRIMARY KEY` constraint. Here's the syntax:

```sql
CREATE TABLE table_name (
    column1 datatype PRIMARY KEY,
    column2 datatype,
    ...
);
```

You can also add a primary key to an existing table using the `ALTER TABLE` statement:

```sql
ALTER TABLE table_name
ADD PRIMARY KEY (column_name);
```

### Why Use a Primary Key?

Primary keys serve several critical purposes in databases:

1. **Uniqueness**: They ensure that each record in a table has a unique identifier, preventing data duplication.
2. **Data Integrity**: Primary keys enforce data integrity by requiring non-null, unique values, reducing the risk of errors and inconsistencies.
3. **Relationships**: Primary keys are used as references in foreign keys to establish relationships between tables, ensuring referential integrity.
4. **Efficient Data Retrieval**: They enhance the speed of data retrieval, as databases can use primary keys for indexing and optimizing queries.

### Examples of Using Primary Keys

#### Simple Primary Key

Let's say you want to create a table called `students` with a simple primary key on the `student_id` column:

```sql
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);
```

#### Composite Primary Key

In some cases, you may need a composite primary key. For example, in an order details table, you might have a composite primary key consisting of `order_id` and `product_id` to ensure each product in an order is unique:

```sql
CREATE TABLE order_details (
    order_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (order_id, product_id)
);
```
