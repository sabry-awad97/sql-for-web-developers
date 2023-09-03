# Subqueries

## Understanding Subqueries

In SQL, a subquery (also known as a nested query or inner query) is a query embedded within another query. Subqueries are used to retrieve data that will be used in the main query's condition or to perform operations on the result of the main query. They provide a way to break down complex problems into smaller, more manageable parts.

## Syntax of Subqueries

The syntax of a subquery typically follows this format:

```sql
SELECT column1, column2, ...
FROM table_name
WHERE column_name operator (
        SELECT column_name
        FROM another_table
        WHERE condition
    );
```

- `column1, column2, ...`: The columns you want to retrieve data from in the main query.
- `table_name`: The name of the table you are querying in the main query.
- `column_name`: The column you want to compare in the main query.
- `operator`: The comparison operator (e.g., =, >, <, IN) used to compare the column in the main query with the result of the subquery.
- `SELECT column_name FROM another_table WHERE condition`: The subquery itself, which retrieves data from another table based on a condition.

## Using Subqueries

Here are a few common use cases for subqueries:

### 1\. Subquery with the IN Operator

Suppose you want to retrieve a list of employees who work in departments with a certain budget range. You can use a subquery with the `IN` operator:

```sql
SELECT
    employee_name,
    department
FROM employees
WHERE department_id IN (
        SELECT department_id
        FROM departments
        WHERE budget > 100000
    );
```

In this example, the subquery retrieves department IDs with budgets greater than 100,000, and the main query selects employees working in those departments.

### 2\. Subquery in the SELECT Clause

You can use a subquery in the SELECT clause to calculate values based on aggregated data. For example, to find the average salary in each department and display it along with the department name:

```sql
SELECT department_name, (
        SELECT AVG(salary)
        FROM employees
        WHERE
            department_id = d.department_id
    ) AS average_salary
FROM departments d;
```

In this case, the subquery calculates the average salary for each department and includes it in the main query's result set.

### 3\. Subquery in the WHERE Clause

You can use a subquery in the WHERE clause to filter rows based on a condition from another table. For instance, to find customers who have made orders in the last month:

```sql
SELECT customer_name
FROM customers
WHERE customer_id IN (
        SELECT customer_id
        FROM orders
        WHERE
            order_date >= DATE_SUB(NOW(), INTERVAL 1 MONTH)
    );
```

The subquery retrieves customer IDs with recent orders, and the main query selects the corresponding customer names.

## Benefits of Subqueries

- **Modularity**: Subqueries make complex queries more manageable by breaking them into smaller, logical parts.
- **Dynamic Filtering**: Subqueries allow you to dynamically filter data based on conditions from other tables or calculated values.
- **Flexible Analysis**: Subqueries enable you to perform various types of analysis and data retrieval in a single SQL statement.

## Subquery Types

There are two main types of subqueries: correlated and non-correlated (or independent).

- **Correlated Subqueries**: Correlated subqueries reference columns from the outer query within the subquery. They execute once for each row processed by the outer query.
- **Non-Correlated Subqueries**: Non-correlated subqueries are independent of the outer query and execute only once.

The choice between these types depends on the specific requirements of your query.
