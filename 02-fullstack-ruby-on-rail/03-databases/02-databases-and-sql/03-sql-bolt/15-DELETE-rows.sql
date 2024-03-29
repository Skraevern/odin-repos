/*
SQL Lesson 15: Deleting rows
When you need to delete data from a table in the database, you can use a DELETE statement, which describes the table to act on, and the rows of the table to delete through the WHERE clause.

Delete statement with condition */
DELETE FROM mytable
WHERE condition; /*
If you decide to leave out the WHERE constraint, then all rows are removed, which is a quick and easy way to clear out a table completely (if intentional).

Taking extra care
Like the UPDATE statement from last lesson, it's recommended that you run the constraint in a SELECT query first to ensure that you are removing the right rows. Without a proper backup or test database, it is downright easy to irrevocably remove data, so always read your DELETE statements twice and execute once.

Exercise
The database needs to be cleaned up a little bit, so try and delete a few rows in the tasks below. */

Id	Title	        Director        Year	Length_minutes
1	Toy Story	    John Lasseter	1995	81
2	A Bugs Life	    John Lasseter	1998	95
3	Toy Story 2	    John Lasseter	1999	93
4	Monsters, Inc.	Pete Docter	    2001	92
5	Finding Nemo	Andrew Stanton	2003	107
6	The Incredibles	Brad Bird	    2004	116
7	Cars	        John Lasseter	2006	117
8	Ratatouille	    Brad Bird	    2007	115
9	WALL-E	        Andrew Stanton	2008	104
10	Up	            Pete Docter	    2009	101
11	Toy Story 3	    Lee Unkrich 	2010	103
12	Cars 2	        John Lasseter	2011    120
13	Brave	        Brenda Chapman	2012	102
14	Monsters Uni	Dan Scanlon	    2013	110


--This database is getting too big, lets remove all movies that were released before 2005.
DELETE FROM movies
WHERE Year < 2005;

Id	Title	        Director	    Year	Length_minutes
7	Cars	        John Lasseter	2006	117
8	Ratatouille	    Brad Bird	    2007	115
9	WALL-E	        Andrew Stanton	2008	104
10	Up	            Pete Docter	    2009	101
11	Toy Story 3	    Lee Unkrich	    2010	103
12	Cars 2	        John Lasseter	2011	120
13	Brave	        Brenda Chapman	2012	102
14	Monsters Uni	Dan Scanlon	    2013	110


--Andrew Stanton has also left the studio, so please remove all movies directed by him.
DELETE FROM Movies
WHERE Director = "Andrew Stanton";

Id	Title	        Director        Year	Length_minutes
1	Toy Story	    John Lasseter	1995	81
2	A Bugs Life	    John Lasseter	1998	95
3	Toy Story 2	    John Lasseter	1999	93
4	Monsters, Inc.	Pete Docter	    2001	92
6	The Incredibles	Brad Bird	    2004	116
7	Cars	        John Lasseter	2006	117
8	Ratatouille	    Brad Bird	    2007	115
10	Up	            Pete Docter	    2009	101
11	Toy Story 3	    Lee Unkrich 	2010	103
12	Cars 2	        John Lasseter	2011    120
13	Brave	        Brenda Chapman	2012	102
14	Monsters Uni	Dan Scanlon	    2013	110