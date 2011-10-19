CREATE TABLE 'users' (
	id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	name varchar(255)
);

CREATE TABLE 'posts' (
	id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	user_id INTEGER
	title varchar(255),
	posted date,
	published boolean,
	post_text text,
	FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE 'comments' (
	id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	post_id INTEGER,
	user_id INTEGER,
	posted date,
	published boolean,
	comment_text text,
	FOREIGN KEY(user_id) REFERENCES users(id),
	FOREIGN KEY(post_id) REFERENCES posts(id)
);
