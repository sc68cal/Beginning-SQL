###Foreign Keys

Example: Adding a blog post by a user that doesn't exist.

	sqlite> INSERT INTO posts (user_id,post_text) VALUES (2, "Hello, World");
	Error: foreign key constraint failed

###Sources:
[Relational Algebra lecture](http://databasteknik.se/webbkursen/relalg-lecture/index.html)

[SQLite Documentation](http://www.sqlite.org/docs.html)

[SQL As Understood By SQLite](http://www.sqlite.org/lang.html)

[SQLite Foreign Key Support](http://www.sqlite.org/foreignkeys.html#fk_enable)
