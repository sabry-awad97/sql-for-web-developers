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
