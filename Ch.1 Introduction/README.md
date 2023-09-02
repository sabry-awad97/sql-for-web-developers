# Introduction to SQL

## What is SQL?

**SQL** stands for Structured Query Language, and it's a powerful tool for managing and manipulating databases. In this first lesson, we'll dive into the basics of SQL.

**Context**: SQL is the language used to communicate with relational databases, like MySQL, PostgreSQL, and Microsoft SQL Server. It allows you to interact with a database to retrieve, insert, update, or delete data.

**Example**: Imagine you have a table called "users" with columns for "name," and "age". To retrieve all students' columns, you'd use the SQL query:

```sql
SELECT * FROM users;
```

- The `SELECT` statement is used to retrieve data from one or more tables in a database. It's often the first SQL command you learn because it's fundamental to querying data.

- The asterisk `*` in `SELECT *` is a wildcard character that stands for "all columns." It tells SQL to retrieve all columns from the specified table(s).

- `FROM` is used to specify the table from which you want to retrieve data. In our example, it's the users table.

Assuming you have a database with a `users` table, here's how the query works:

- You issue the SQL command: `SELECT * FROM users;`

- SQL goes to the `users` table and fetches all rows and all columns of data.

- The result is a table-like structure with rows and columns, containing all the data stored in the `users` table.
