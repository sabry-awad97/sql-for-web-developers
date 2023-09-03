# Aggregations

## What Are Aggregations in SQL?

### Understanding Aggregations

In SQL, aggregations refer to the process of performing calculations on a set of values and returning a single summarized result. Aggregations are commonly used to analyze and extract meaningful insights from data. They allow you to answer questions like:

- What is the total sales revenue for a specific period?
- What is the average age of employees in a company?
- What is the maximum temperature recorded in a given region?

Aggregations are applied to columns that contain numeric data, and they help transform raw data into useful statistics.

### Common SQL Aggregation Functions

SQL provides a set of built-in aggregation functions that perform various calculations on a dataset. Some of the most commonly used aggregation functions include:

1. **SUM**: Calculates the sum of values in a numeric column.
2. **AVG**: Computes the average (mean) value of a numeric column.
3. **COUNT**: Counts the number of rows in a dataset, often used to count the occurrences of a specific condition.
4. **MAX**: Finds the maximum value in a numeric column.
5. **MIN**: Finds the minimum value in a numeric column.

These functions are often used in conjunction with the "SELECT" statement to retrieve aggregated results.

### Syntax of Aggregation Functions

The syntax for using an aggregation function typically follows this format:

```sql
AGGREGATE_FUNCTION(column_name)
```

- `AGGREGATE_FUNCTION`: The name of the aggregation function (e.g., SUM, AVG, COUNT).
- `column_name`: The name of the column you want to perform the aggregation on.

### Example Use Cases

#### 1\. Total Sales Revenue

Suppose you have a table of sales transactions and you want to find the total sales revenue:

`SELECT SUM(sales_amount) AS total_revenue
FROM sales;`

In this query, the "SUM" function calculates the sum of the "sales_amount" column, providing the total revenue.

#### 2\. Average Employee Salary

To find the average salary of employees in a company:

```sql
SELECT AVG(salary) AS average_salary
FROM employees;
```

Here, the "AVG" function calculates the average salary from the "salary" column.

#### 3\. Counting Customers

If you want to count the number of customers in a table:

```sql
SELECT COUNT(*) AS customer_count
FROM customers;
```

The "COUNT" function is used to count all rows in the "customers" table.
