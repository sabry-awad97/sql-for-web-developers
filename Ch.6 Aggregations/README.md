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

Certainly! Let's explore the "GROUP BY" clause in SQL.

## The GROUP BY Clause in SQL

### Understanding the GROUP BY Clause

In SQL, the "GROUP BY" clause is used to group rows in a result set based on the values in one or more columns. It is particularly useful for performing aggregate calculations (such as SUM, AVG, COUNT) on groups of data rather than on individual rows. The "GROUP BY" clause helps summarize data and gain insights into specific categories or groups within a dataset.

### Syntax of the GROUP BY Clause

The syntax of the "GROUP BY" clause typically follows this format:

```sql
SELECT column1, column2, ...
FROM table_name
GROUP BY column1, column2, ...;
```

- `column1, column2, ...`: The columns you want to include in the result set.
- `table_name`: The name of the table you are querying.
- `column1, column2, ...`: The columns by which you want to group the data.

### Using the GROUP BY Clause

Here's an example of using the "GROUP BY" clause to group sales data by product category:

```sql
SELECT category, SUM(sales_amount) AS total_sales
FROM sales
GROUP BY category;
```

In this query, the "GROUP BY" clause groups the sales data by the "category" column, and the "SUM" function calculates the total sales for each category.

### Benefits of the GROUP BY Clause

- **Data Summarization**: It allows you to summarize and analyze data by groups, making it easier to understand trends and patterns within the data.
- **Aggregate Calculations**: You can perform aggregate functions (e.g., SUM, AVG, COUNT) on grouped data, providing insights into each group's characteristics.
- **Reporting and Analytics**: The "GROUP BY" clause is commonly used in business intelligence and reporting to create summary reports.

### Aggregations with GROUP BY

The "GROUP BY" clause is often used in conjunction with aggregate functions to perform calculations within each group. For example:

- To find the total sales for each product category:

  ```sql
  SELECT category, SUM(sales_amount) AS total_sales
  FROM sales
  GROUP BY category;
  ```

- To calculate the average salary for each department:

  ```sql
  SELECT department, AVG(salary) AS average_salary
  FROM employees
  GROUP BY department;
  ```

- To count the number of orders placed by each customer:

  ```sql
  SELECT customer_id, COUNT(order_id) AS order_count
  FROM orders
  GROUP BY customer_id;
  ```

### Limitations with GROUP BY

- When using the "GROUP BY" clause, you can only include columns in the SELECT statement that are either part of the GROUP BY clause or used in aggregate functions. Other columns are not accessible in the result set.
- The order in which groups are displayed in the result set may not always be guaranteed unless you use an "ORDER BY" clause.

### Example Use Case for GROUP BY

Suppose you have a table of student scores, and you want to find the average score for each subject:

```sql
SELECT subject, AVG(score) AS average_score
FROM student_scores
GROUP BY subject;
```

In this example, the "GROUP BY" clause groups the scores by "subject," and the "AVG" function calculates the average score for each subject.

## The HAVING Clause in SQL

### Understanding the HAVING Clause

The "HAVING" clause is used in conjunction with the "GROUP BY" clause to filter the results of grouped data based on a condition. While the "WHERE" clause filters individual rows before they are grouped, the "HAVING" clause filters groups of data after they have been grouped using the "GROUP BY" clause. It is particularly useful for applying conditions to aggregated data.

### Syntax of the HAVING Clause

The syntax of the "HAVING" clause typically follows this format:

```sql
SELECT column1, column2, ...
FROM table_name
GROUP BY column1, column2, ...
HAVING condition;
```

- `column1, column2, ...`: The columns you want to include in the result set.
- `table_name`: The name of the table you are querying.
- `column1, column2, ...`: The columns by which you want to group the data using the "GROUP BY" clause.
- `condition`: The condition applied to grouped data using the "HAVING" clause.

### Using the HAVING Clause

Here's an example of using the "HAVING" clause to filter product categories that have total sales greater than a specified amount:

```sql
SELECT category, SUM(sales_amount) AS total_sales
FROM sales
GROUP BY category
HAVING SUM(sales_amount) > 10000;
```

In this query, the "GROUP BY" clause groups the sales data by the "category" column, and the "HAVING" clause filters out categories with a total sales amount less than or equal to 10,000.

### Benefits of the HAVING Clause

- **Filtering Aggregated Data**: The "HAVING" clause allows you to filter groups of data based on aggregate calculations (e.g., SUM, AVG, COUNT).
- **Conditional Analysis**: You can apply conditions to summarized data, helping you focus on specific groups of interest.
- **Granular Control**: It provides granular control over which groups are included in the result set, allowing for more precise data analysis.

### Example Use Cases for HAVING

#### 1\. Filtering Averages

Suppose you have a table of exam scores, and you want to find subjects where the average score is above a certain threshold:

```sql
SELECT subject, AVG(score) AS average_score
FROM student_scores
GROUP BY subject
HAVING AVG(score) > 75;
```

In this query, the "HAVING" clause filters out subjects with an average score less than or equal to 75.

#### 2\. Counting Orders

To find customers who have placed more than a certain number of orders:

```sql
SELECT customer_id, COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 5;
```

Here, the "HAVING" clause filters out customers who have placed fewer than six orders.

#### 3\. Summarizing Employee Salaries

To identify departments with a total salary cost exceeding a specific amount:

```sql
SELECT department, SUM(salary) AS total_salary_cost
FROM employees
GROUP BY department
HAVING SUM(salary) > 50000;
```

In this query, the "HAVING" clause filters out departments with a total salary cost less than or equal to 50,000.

Certainly! Let's explore the "ROUND" function in SQL.

## The ROUND Function in SQL

### Understanding the ROUND Function

In SQL, the "ROUND" function is used to round numeric values to a specified number of decimal places. It is particularly useful when you want to control the precision of numeric values in your query results. The "ROUND" function can round values both up and down based on a set of rules.

### Syntax of the ROUND Function

The syntax of the "ROUND" function typically follows this format:

```sql
ROUND(numeric_expression, decimal_places)
```

- `numeric_expression`: The numeric value you want to round.
- `decimal_places`: The number of decimal places to which you want to round the value.

### Using the ROUND Function

Here's an example of using the "ROUND" function to round a numeric value to two decimal places:

```sql
SELECT ROUND(3.4567, 2) AS rounded_value;
```

In this query, the "ROUND" function rounds the value `3.4567` to two decimal places, resulting in `3.46`.

### Benefits of the ROUND Function

- **Precision Control**: It allows you to control the precision of numeric values, making them more suitable for presentation or specific calculations.
- **Consistent Formatting**: The "ROUND" function helps ensure that numbers in your result set have consistent formatting, which can be important for financial or statistical data.
- **Improved Readability**: Rounded values are often easier to read and understand than long, unrounded decimal numbers.

### Rounding Rules

The "ROUND" function follows standard rounding rules:

- If the digit immediately to the right of the specified decimal places is 5 or greater, the value is rounded up.
- If the digit immediately to the right of the specified decimal places is less than 5, the value is rounded down.

For example:

- `ROUND(3.678, 1)` rounds to `3.7` because the digit immediately to the right (8) is 5 or greater.
- `ROUND(3.123, 1)` rounds to `3.1` because the digit immediately to the right (2) is less than 5.

### Example Use Cases for Rounding

#### 1\. Financial Calculations

Suppose you have a table of financial transactions with various decimal values, and you want to round the transaction amounts to two decimal places for financial reporting:

```sql
SELECT transaction_id, ROUND(amount, 2) AS rounded_amount
FROM financial_transactions;
```

In this query, the "ROUND" function is used to round the "amount" column to two decimal places for reporting purposes.

#### 2\. Grade Calculation

To calculate the average grade for a set of student scores and round it to the nearest whole number:

```sql
SELECT student_id, ROUND(AVG(score)) AS average_grade
FROM student_scores
GROUP BY student_id;
```

Here, the "ROUND" function is applied to the average score to round it to the nearest whole number.

The "ROUND" function is a valuable tool for controlling the precision of numeric values in SQL queries, making results more readable and suitable for various applications.
