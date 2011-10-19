PRAGMA foreign_keys = ON;

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

INSERT INTO 'users' (name) VALUES ('Sean');
INSERT INTO 'users' (name) VALUES ('Michael');
INSERT INTO 'users' (name) VALUES ('Jeff');
INSERT INTO 'users' (name) VALUES ('John');
INSERT INTO 'users' (name) VALUES ('Samuel L. Jackson');

INSERT INTO 'posts' (user_id, post_text) VALUES (5,"You think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a week to climb out. Now, I don't know exactly when we turned on each other, but I know that seven of us survived the slide... and only five made it out. Now we took an oath, that I'm breaking now. We said we'd say it was the snow that killed the other two, but it wasn't. Nature is lethal but it doesn't hold a candle to man.");

INSERT INTO 'posts' (user_id, post_text) VALUES (1,"Git allows you to keep your changes locally and simply push and pull changes as you see fit. If you are like me, where you use a versioning tool to keep code up to date, while making site-specific changes that will never be sent upstream, Git really makes sense. ");

INSERT INTO 'posts' (user_id, post_text) VALUES (5, "Do you see any Teletubbies in here? Do you see a slender plastic tag clipped to my shirt with my name printed on it? Do you see a little Asian child with a blank expression on his face sitting outside on a mechanical helicopter that shakes when you put quarters in it? No? Well, that's what you see at a toy store. And you must think you're in a toy store, because you're here shopping for an infant named Jeb.");

INSERT INTO 'posts' (user_id,post_text) VALUES (5, "Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing.");

INSERT INTO 'posts' (user_id, post_text) VALUES (2, "Nulla ac dignissim erat. Suspendisse ut ipsum at quam tincidunt feugiat ac vel sapien. Praesent vestibulum convallis orci et sodales. Sed gravida facilisis congue. Donec nisi odio, gravida ut mattis a, scelerisque non neque. Donec viverra ullamcorper lobortis. Etiam ligula sapien, volutpat in gravida sit amet, auctor non ipsum. Nulla in fringilla odio. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; ");

INSERT INTO 'posts' (user_id, post_text) VALUES (3, "Fusce a tellus diam, ullamcorper convallis justo. In imperdiet lacinia lectus vitae placerat. Mauris ut sem arcu. Morbi mattis iaculis augue. Phasellus diam nunc, placerat vel iaculis ut, elementum quis est. Mauris volutpat turpis eu felis viverra fermentum. Vestibulum eu mauris sem, et tempus odio. Nulla diam est, tempor vitae sodales scelerisque, vehicula ac leo. Vivamus vitae neque sit amet erat viverra tristique vel vitae mauris. Duis vel nulla nunc, eu gravida dui. Donec sapien neque, fermentum nec interdum vel, aliquet non mi. Morbi nulla justo, placerat et gravida a, ullamcorper a enim. Pellentesque congue dolor id nisl rhoncus id commodo nunc placerat. Donec eros urna, ultricies sed hendrerit eu, molestie nec neque. Nam venenatis, orci sit amet feugiat pulvinar, leo est varius purus, vitae consectetur ante arcu ac est. ");

INSERT INTO 'comments' (post_id, user_id, comment_text) VALUES (1,3, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tristique consectetur justo, vel vestibulum.");

INSERT INTO 'comments' (post_id, user_id, comment_text) VALUES (1,4, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed viverra nunc a tellus adipiscing.");

INSERT INTO 'comments' (post_id, user_id, comment_text) VALUES (3,3, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tristique consectetur justo, vel vestibulum.");

INSERT INTO 'comments' (post_id, user_id, comment_text) VALUES (4,4, "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed viverra nunc a tellus adipiscing.");

