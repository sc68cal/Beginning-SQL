### Normalization

One advantage of relational databases is that with foreign keys,
data can be linked between tables and a single update to a row will
be reflected in all the related data.

For example: Consider our example database that contains users, posts, and
comments. If a user updates their name in the users database, the update is
reflected across all the blog posts and comments, since those tables
reference the users table instead of having a copy of the user's name 
and forcing each row in the tables to be modified.

### Normal Forms
[Normal Forms](http://en.wikipedia.org/wiki/Database_normalization#Normal_forms)

* [First Normal Form](http://en.wikipedia.org/wiki/First_normal_form)
* [Second Normal Form](http://en.wikipedia.org/wiki/Second_normal_form)
* [Third Normal Form](http://en.wikipedia.org/wiki/Third_normal_form)

### Sources
[Database normalization](http://en.wikipedia.org/wiki/Database_normalization)
