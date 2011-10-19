# Structured Query Language 

SQL uses relational algebra concepts to organize and store data.

## SQL Concepts

A SQL database is comprised of _tables_ that contain _columns_ and _rows_.

Each column in a table has a [specific data type](http://www.sqlite.org/datatype3.html) that is used to store data. SQLite supports a number of data types including integers, text, dates, and booleans. 

A row of data, similar to a row in popular spreadsheet programs, encapsulates a single object in the table. Put simply, in the example database you are provided with, a single
row in the posts table represents a single blog post.

## The NULL value

Part of the requirements for a true relational database include supporting
a representation for "missing and inapplicable data"

As such, the NULL value is used to fulfil this requirement.

In our example database, consider a query that selects all blog posts
written by a user, who has never written a blog post. This query will return a
NULL value.

## Query Language

## Data Manipulation Language
[Example DML](https://github.com/sc68cal/Beginning-SQL/blob/master/data.sql)

## Data Definition Language
[Example DDL](https://github.com/sc68cal/Beginning-SQL/blob/master/ddl.sql)

##Foreign Keys

Example: Adding a blog post by a user that doesn't exist.

	sqlite> INSERT INTO posts (user_id,post_text) VALUES (23, "Hello, World");
	Error: foreign key constraint failed
# Sources

[SQLite Documentation](http://www.sqlite.org/docs.html)

[SQL As Understood By SQLite](http://www.sqlite.org/lang.html)

[SQLite Foreign Key Support](http://www.sqlite.org/foreignkeys.html#fk_enable)

[DDL & DML] (http://www.tomjewett.com/dbdesign/dbdesign.php?page=ddldml.php)

[Zero: The Biography of a Dangerous Idea] (http://www.amazon.com/Zero-Biography-Dangerous-Charles-Seife/dp/0140296476)
