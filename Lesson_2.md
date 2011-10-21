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

SQL queries take the form of:

	SELECT <columns> FROM <table> WHERE <conditions>;

Note the semicolon at the end of the statement, which is used as a line
terminator. 

For example, if you want to get all the blog posts by a certain author:

	SELECT * FROM posts WHERE author_id = 5;

The star is a special symbol that tells the relational database to return 
all the columns in the results.

If you wanted to get only the date and the title of the blog post, you would
use:

	SELECT post_date, post_text FROM posts WHERE author_id = 5;

Multiple conditions can be specified by joining them together with an "AND":

	SELECT * FROM posts WHERE author_id = 5 AND id > 5 AND published = TRUE;


## Data Manipulation Language
In addition to querying the database, SQL has a subset of commands
that are used to insert new data into the database. The important
things to note are that the commands take the form of:

	INSERT INTO <table> (<columns>) VALUES (<values>);

The ordering of the columns in the statement is important, because
that indicates which values are used for which columns in the following
piece of the SQL code.

For example:

	INSERT INTO posts (author_id, post_text) VALUES (5, "HELLO");

Is quite different from:

	INSERT INTO posts (post_text, author_id) VALUES (5, "HELLO");

[Example DML](https://github.com/sc68cal/Beginning-SQL/blob/master/data.sql)

## Data Definition Language
Relational databases also have a subset of commands that are used
to define tables and their columns. 

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
