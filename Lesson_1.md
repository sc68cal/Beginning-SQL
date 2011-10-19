#Set Theory

Set theory is a branch of mathematics, used to describe
collections of objects (sets).

Sets can be visualized through the use of Venn diagrams, which
illustrate the relationships between two or more sets.

[The classic two circle Venn Diagram](http://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/Venn_A_intersect_B.svg/220px-Venn_A_intersect_B.svg.png) describes
two sets that contain an intersection. 

##Operations
* Union
* Intersection
* Set Difference
* Symmetric Difference
* Cartesian Product
* Power Set

##Set Builder Notation

Formal rules and expressions used to define sets.

# Sequential Query Language 

##Foreign Keys

Example: Adding a blog post by a user that doesn't exist.

	sqlite> INSERT INTO posts (user_id,post_text) VALUES (230, "Hello, World");
	Error: foreign key constraint failed

###Sources:
[Relational Algebra lecture](http://databasteknik.se/webbkursen/relalg-lecture/index.html)

[Set Notation](http://www.purplemath.com/modules/setnotn.htm)

[SQLite Documentation](http://www.sqlite.org/docs.html)

[SQL As Understood By SQLite](http://www.sqlite.org/lang.html)

[SQLite Foreign Key Support](http://www.sqlite.org/foreignkeys.html#fk_enable)
