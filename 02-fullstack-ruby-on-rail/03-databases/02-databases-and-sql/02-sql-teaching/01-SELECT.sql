/*
Lesson 1: SELECT *
In SQL, data is usually organized in various tables. For example, a sports team database might have the tables teams, players, and games. A wedding database might have tables guests, vendors, and music_playlist.

Imagine we have a table that stores family members with each member's name, species, gender, and number of books read.

Let's start by grabbing all of the data in one table. We have a table called family_members that is shown below. In order to grab all of that data, please run the following command: SELECT * FROM family_members;

The * above means that all of the columns will be returned, which in this case are id, name, gender, species, and num_books_read.

Note: This tutorial uses the SQLite database engine. The different variants of SQL use slightly different syntax. /*/

SELECT *
FROM family_members;

Current tables:
family_members
id	name	gender	species	num_books_read
1	Dave	male	human	200
2	Mary	female	human	180
3	Pickles	male	dog	    0

Result:
id	name	gender	species	num_books_read
1	Dave	male	human	200
2	Mary	female	human	180
3	Pickles	male	dog	    0