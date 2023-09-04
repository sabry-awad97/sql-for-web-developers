# Normalization

## Table Relationships

### Understanding Table Relationships

In a relational database management system (RDBMS), data is typically organized into tables. Table relationships define how these tables are related to each other and how data can be retrieved and manipulated across multiple tables. There are three primary types of table relationships in relational databases:

1. **One-to-One (1:1) Relationship:**

   In a one-to-one relationship, each record in the first table is related to one and only one record in the second table, and vice versa. This type of relationship is relatively rare and is often used to separate data into smaller, more manageable tables for various reasons, such as security or optimization.

   Example: A database might have a "Person" table and a "Passport" table. Each person has only one passport, and each passport belongs to one person.

2. **One-to-Many (1:N) Relationship:**

   In a one-to-many relationship, each record in the first table can be related to one or more records in the second table, but each record in the second table is related to only one record in the first table. This is the most common type of relationship in relational databases.

   Example: A database might have an "Author" table and a "Book" table. Each author can write multiple books, but each book is authored by only one author.

3. **Many-to-Many (N:M) Relationship:**

   In a many-to-many relationship, each record in the first table can be related to multiple records in the second table, and vice versa. This type of relationship is often implemented using an intermediate table, known as a junction or link table, to connect the two tables.

   Example: A database might have a "Student" table and a "Course" table. Each student can enroll in multiple courses, and each course can have multiple students. To represent this relationship, a "StudentCourse" junction table is used to link students to courses.

### Representing Table Relationships

Table relationships are typically represented using keys, specifically primary keys and foreign keys:

- **Primary Key**: A primary key uniquely identifies each record in a table. It is used to enforce data integrity and is often used as the basis for creating relationships. In a one-to-many relationship, the primary key of the "one" table becomes a foreign key in the "many" table.
- **Foreign Key**: A foreign key is a field in a table that is used to establish a link between tables. It refers to the primary key in another table. It ensures referential integrity by preventing orphaned records and ensuring that related data exists.

### Benefits of Table Relationships

- **Data Integrity**: Table relationships ensure that data is accurate and consistent by enforcing constraints and preventing data anomalies.
- **Efficient Data Retrieval**: Relationships enable efficient retrieval of related data using SQL JOIN operations, allowing complex queries and reporting.
- **Normalization**: Properly designed relationships can lead to normalized database structures, reducing data redundancy and improving data maintenance.

### Example Query with Table Relationships

Suppose you have a database with "Customer" and "Order" tables linked by a one-to-many relationship, where each customer can have multiple orders. You can retrieve all orders for a specific customer using a SQL query like this:

sqlCopy code

```sql
SELECT *
FROM Customer
    JOIN Order ON Customer.CustomerID = Order.CustomerID
WHERE Customer.CustomerID = 123;
```

In this query, the JOIN operation connects the "Customer" and "Order" tables using the "CustomerID" field, and the WHERE clause filters the results for a specific customer.
