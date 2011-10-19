# Sequential Query Language 

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
