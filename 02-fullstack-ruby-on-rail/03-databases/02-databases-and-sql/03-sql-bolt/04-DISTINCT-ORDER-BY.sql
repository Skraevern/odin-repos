/*SQL Lesson 4: Filtering and sorting Query results
Even though the data in a database may be unique, the results of any particular query may not be – take our Movies table for example, many different movies can be released the same year. In such cases, SQL provides a convenient way to discard rows that have a duplicate column value by using the DISTINCT keyword.

Select query with unique results */
SELECT DISTINCT column, another_column, …
FROM mytable
WHERE condition(s); /*
Since the DISTINCT keyword will blindly remove duplicate rows, we will learn in a future lesson how to discard duplicates based on specific columns using grouping and the GROUP BY clause.

Ordering results
Unlike our neatly ordered table in the last few lessons, most data in real databases are added in no particular column order. As a result, it can be difficult to read through and understand the results of a query as the size of a table increases to thousands or even millions rows.

To help with this, SQL provides a way to sort your results by a given column in ascending or descending order using the ORDER BY clause.

Select query with ordered results */
SELECT column, another_column, …
FROM mytable
WHERE condition(s)
ORDER BY column ASC/DESC; /*
When an ORDER BY clause is specified, each row is sorted alpha-numerically based on the specified column's value. In some databases, you can also specify a collation to better sort data containing international text.

Limiting results to a subset
Another clause which is commonly used with the ORDER BY clause are the LIMIT and OFFSET clauses, which are a useful optimization to indicate to the database the subset of the results you care about.
The LIMIT will reduce the number of rows to return, and the optional OFFSET will specify where to begin counting the number rows from.

Select query with limited rows */
SELECT column, another_column, …
FROM mytable
WHERE condition(s)
ORDER BY column ASC/DESC
LIMIT num_limit OFFSET num_offset; /*
If you think about websites like Reddit or Pinterest, the front page is a list of links sorted by popularity and time, and each subsequent page can be represented by sets of links at different offsets in the database. Using these clauses, the database can then execute queries faster and more efficiently by processing and returning only the requested content.

Did you know?
If you are curious about when the LIMIT and OFFSET are applied relative to the other parts of a query, they are generally done last after the other clauses have been applied. We'll touch more on this in Lesson 12: Order of execution after introducting a few more parts of the query.

Exercise
There are a few concepts in this lesson, but all are pretty straight-forward to apply. To spice things up, we've gone and scrambled the Movies table for you in the exercise to better mimic what kind of data you might see in real life. Try and use the necessary keywords and clauses introduced above in your queries. */

SELECT * FROM movies;

Table: Movies
Id	Title	            Director	    Year	Length_minutes
1	WALL-E	            Andrew Stanton	2008	104
2	Toy Story 2	        John Lasseter	1999	93
3	Monsters University	Dan Scanlon	    2013	110
4	A Bugs Life	        John Lasseter	1998	95
5	Cars	            John Lasseter	2006	117
6	Monsters, Inc.	    Pete Docter	    2001	92
7	Up	                Pete Docter	    2009	101
8	Finding Nem         Andrew Stanton	2003	107
9	Brave	            Brenda Chapman	2012	102
10	Ratatouille        	Brad Bird	    2007	115
11	The Incredibles     Brad Bird	    2004	116
12	Toy Story	        John Lasseter	1995	81
13	Toy Story 3         Lee Unkrich	    2010	103
14	Cars 2	            John Lasseter	2011	120

--List all directors of Pixar movies (alphabetically), without duplicates
SELECT DISTINCT Director 
FROM movies
ORDER BY Director;

Director
Andrew Stanton
Brad Bird
Brenda Chapman
Dan Scanlon
John Lasseter
Lee Unkrich
Pete Docter

--List the last four Pixar movies released (ordered from most recent to least)
SELECT *
FROM movies
ORDER BY Year DESC LIMIT 4;

Id	Title	            Director	    Year	Length_minutes
3	Monsters University	Dan Scanlon	    2013	110
9	Brave	            Brenda Chapman	2012	102
14	Cars 2	            John Lasseter	2011	120
13	Toy Story 3	        Lee Unkrich	    2010	103

--List the first five Pixar movies sorted alphabetically
SELECT *
FROM movies
ORDER BY Title LIMIT 5;

Id	Title	            Director	    Year	Length_minutes
4	A Bugs Life	        John Lasseter	1998	95
9	Brave	            Brenda Chapman	2012	102
5	Cars	            John Lasseter	2006	117
14	Cars 2	            John Lasseter	2011	120
8	Finding Nemo	    Andrew Stanton	2003	107

--List the next five Pixar movies sorted alphabetically
SELECT *
FROM movies
ORDER BY Title LIMIT 5 OFFSET 5;