# Joins

## Namespacing on Tables

Namespacing in databases refers to the practice of organizing and structuring database tables to avoid naming conflicts and make it easier to manage large sets of data. It's a common practice in situations where you have multiple tables with similar names or when you want to group related tables together logically.

When working with multiple tables, you can specify which table a field exists on using a `.`. For example:

```sql
table_name.column_name
```

## Joining tables

In SQL, a "join" is an operation that combines rows from two or more tables based on a related column between them. This allows you to retrieve data from multiple tables in a meaningful and structured way. Let's dive into the different types of joins in SQL and how they work.

### Inner Join

An **Inner Join** returns only the rows that have matching values in both tables being joined. It filters out rows from both tables that don't meet the specified condition.

```sql
SELECT
    orders.order_id,
    customers.customer_name
FROM orders
    JOIN customers ON orders.customer_id = customers.customer_id;
```

In this example, we're retrieving the order IDs and customer names for orders that have a matching customer ID in both the "orders" and "customers" tables.

### Left Join (or Left Outer Join)

A **Left Join** returns all the rows from the left table and the matching rows from the right table. If there's no match in the right table, it returns NULL values for columns from the right table.

```sql
SELECT
    employees.employee_id,
    departments.department_name
FROM employees
    LEFT JOIN departments ON employees.department_id = departments.department_id;
```

Here, we're getting a list of employees and their respective department names. If an employee is not assigned to any department, the "department_name" will be NULL.

### Right Join (or Right Outer Join)

A **Right Join** is similar to a Left Join but returns all the rows from the right table and the matching rows from the left table. If there's no match in the left table, it returns NULL values for columns from the left table.

```sql
SELECT
    orders.order_id,
    order_details.product_id
FROM orders
    RIGHT JOIN order_details ON orders.order_id = order_details.order_id;
```

In this query, we're getting a list of order IDs and the corresponding product IDs. If there's an order without any associated product details, the "product_id" will be NULL.

### Full Outer Join

A **Full Outer Join** returns all the rows when there is a match in either the left or the right table. It includes rows with NULL values when there's no match in one of the tables.

```sql
SELECT
    customers.customer_id,
    orders.order_id
FROM customers
    FULL OUTER JOIN orders ON customers.customer_id = orders.customer_id;
```

This query returns a list of customer IDs and order IDs, including cases where a customer has placed no orders (customer ID is NULL) or an order has no associated customer (order ID is NULL).

### Using Aliases in Joins

Aliases help simplify your SQL queries. They provide shorthand names for table names and columns. Let's see how to use aliases in joins:

```sql
SELECT
    E.Name,
    D.DepartmentName
FROM Employees AS E
    JOIN Departments AS D ON E.DepartmentID = D.ID;
```

Aliases can make your queries more readable, especially when dealing with long table and column names.
