# Tables in Relational Databases

Tables are fundamental components of relational databases. They serve as the structure for organizing and storing data. In a relational database, data is organized into tables, which consist of rows and columns. Here's an in-depth look at tables:

## Structure of a Table

- A table is a two-dimensional structure that resembles a spreadsheet or grid.
- It consists of rows (also known as records or tuples) and columns (also known as fields or attributes).

### Rows

- Each row in a table represents a single data record.
- Rows are horizontally aligned and contain specific data related to the record.

### Columns

- Columns in a table define the types of data that can be stored in each row.
- Columns are vertically aligned and represent a particular attribute or property of the data.

### Attributes

- Each column in a table is associated with a specific attribute or piece of information.
- For example, in a "Users" table, attributes might include "User ID," "First Name," "Last Name," and "Email."

### Data Types

- Columns have data types that define the kind of data they can store. Common data types include INTEGER, TEXT, DATE, and BOOLEAN.
- Data types help enforce data integrity and ensure that data is stored correctly.

### Primary Key

- In most tables, one of the columns is designated as the primary key. The primary key uniquely identifies each row in the table.
- It ensures that each record is distinct and can be retrieved efficiently.

### Relationships

- Tables in a relational database are often related to each other through keys, such as primary keys and foreign keys.
- These relationships establish connections between data in different tables.

### SQL Operations

- Tables are manipulated using SQL (Structured Query Language) operations. Common SQL operations include:
  - SELECT: To retrieve data from a table.
  - INSERT: To add new data records to a table.
  - UPDATE: To modify existing data records.
  - DELETE: To remove data records from a table.

### Example

Let's consider an example of a "Products" table:

| ProductID | ProductName | Price | Category    |
| --------- | ----------- | ----- | ----------- |
| 1         | Laptop      | 800   | Electronics |
| 2         | Smartphone  | 500   | Electronics |
| 3         | Desk Chair  | 150   | Furniture   |

In this example, "Products" is the table, and each row represents a different product with attributes like "ProductID," "ProductName," "Price," and "Category."

Tables play a vital role in structuring and organizing data in relational databases. They allow for efficient storage, retrieval, and manipulation of information, making them a foundational concept in database management.

## Creating a Table

Creating a table in a relational database is an essential task when designing a database schema. To create a table, you typically use SQL (Structured Query Language) commands.

Let's assume we want to create a simple table to store information about employees in a company.

The table will have the following columns:

1. `id`: This column will hold unique identification numbers (INTEGER) for each employee. These ID numbers help differentiate one employee from another.

1. `name`: The "name" column will store the names (TEXT) of the employees. It allows for variable-length text values to accommodate different names.

1. `age`: The "age" column will capture the ages (INTEGER) of the employees. This data can be useful for various HR-related analyses.

1. `is_manager`: This column, using the data type BOOLEAN, will indicate whether an employee is a manager or not. BOOLEAN values typically represent true (for managers) or false (for non-managers).

1. `salary`: The "salary" column is designed to hold salary information (INTEGER) for each employee, typically in the form of whole numbers representing currency.

Here's the SQL command to create such a table:

```sql
CREATE TABLE
    employees (
        id INTEGER,
        name TEXT,
        age INTEGER,
        is_manager BOOLEAN,
        salary INTEGER
    );
```

### "CREATE TABLE" STATEMENT

The "CREATE TABLE" statement is a command used in database management systems (DBMS) to define and create a new table within a relational database. This statement specifies the table's name, the structure of its columns, and certain characteristics of those columns. Here's an explanation of its components:

1. `CREATE TABLE`: This part of the statement is the command itself, indicating that you want to create a new table.

1. `Table Name`: Following "CREATE TABLE," you provide a name for the new table. This name should be unique within the database and is used to reference the table in subsequent SQL operations.

1. `Column Definitions`: Within parentheses, you define the structure of the table by specifying its columns. Each column definition includes:

   - Column Name: The name of the column.
   - Data Type: The data type that defines the kind of data the column can store (e.g., INTEGER, TEXT, DATE).
   - Additional Constraints (Optional): You can include constraints like primary key, unique, not null, default values, and more for each column.

## Altering tables

Altering tables in a relational database involves making changes to the structure or characteristics of an existing table. This can include adding new columns, modifying existing columns, or even deleting columns. Here are some common operations you can perform to alter tables:

1. Adding a New Column:

   You can add a new column to an existing table using the ALTER TABLE statement.
   For example, to add a new column named "email" with the data type TEXT to a table called "customers," you can use the following SQL command:

   ```sql
   ALTER TABLE customers
   ADD COLUMN email TEXT;
   ```

1. Modifying an Existing Column:

   You can modify the data type or constraints of an existing column.
   For example, to change the data type of an "age" column from INTEGER to SMALLINT in a table called "employees," you can use:

   ```sql
   ALTER TABLE employees
   ALTER COLUMN age SET DATA TYPE SMALLINT;
   ```

1. Renaming a Column:

   You can rename an existing column using the ALTER TABLE statement.
   For instance, to rename a column "phone_number" to "contact_number" in a table called "contacts," you can do:

   ```sql
   ALTER TABLE contacts
   RENAME COLUMN phone_number TO contact_number;
   ```

1. Dropping a Column:

   You can remove an existing column from a table using the ALTER TABLE statement.
   Be cautious when dropping columns, as it permanently removes data.
   For example, to remove a column "credit_score" from a table named "applicants," you can use:

   ```sql
   ALTER TABLE applicants
   DROP COLUMN credit_score;
   ```

1. Adding Constraints:

   You can add constraints like NOT NULL or UNIQUE to existing columns.
   For instance, to make sure that the "email" column in the "customers" table cannot contain NULL values and must be unique, you can use:

   ```sql
   ALTER TABLE customers
   ALTER COLUMN email SET NOT NULL;

   ALTER TABLE customers
   ADD CONSTRAINT unique_email UNIQUE (email);
   ```

1. Dropping Constraints:

   Conversely, you can remove constraints from columns.
   For example, to remove the unique constraint from the "email" column in the "customers" table, you can do:

   ```sql
   ALTER TABLE customers
   DROP CONSTRAINT unique_email;
   ```
