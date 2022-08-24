/*
SQL Lesson 3: Queries with constraints (Pt. 2)
When writing WHERE clauses with columns containing text data, SQL supports a number of useful operators to do things like case-insensitive string comparison and wildcard pattern matching. We show a few common text-data specific operators below:
*/
Operator	Condition	                                                                                            Example
=	        Case sensitive exact string comparison (notice the single equals)	                                    col_name = "abc"
!= or <>	Case sensitive exact string inequality comparison	                                                    col_name != "abcd"
LIKE	    Case insensitive exact string comparison	                                                            col_name LIKE "ABC"
NOT LIKE	Case insensitive exact string inequality comparison	                                                    col_name NOT LIKE "ABCD"
%	        Used anywhere in a string to match a sequence of zero or more characters (only with LIKE or NOT LIKE)	col_name LIKE "%AT%" (matches "AT", "ATTIC", "CAT" or even "BATS")
_	        Used anywhere in a string to match a single character (only with LIKE or NOT LIKE)	                    col_name LIKE "AN_"(matches "AND", but not "AN")
IN (…)	    String exists in a list	                                                                                col_name IN ("A", "B", "C")
NOT IN (…)	String does not exist in a list	                                                                        col_name NOT IN ("D", "E", "F")
/*
Did you know?
All strings must be quoted so that the query parser can distinguish words in the string from SQL keywords.

We should note that while most database implementations are quite efficient when using these operators, full-text search is best left to dedicated libraries like Apache Lucene or Sphinx. These libraries are designed specifically to do full text search, and as a result are more efficient and can support a wider variety of search features including internationalization and advanced queries.

Exercise
Here's the definition of a query with a WHERE clause again, go ahead and try and write some queries with the operators above to limit the results to the information we need in the tasks below.
*/
Select query with constraints
SELECT column, another_column, …
FROM mytable
WHERE condition
    AND/OR another_condition
    AND/OR …;
SELECT * FROM movies;


SELECT * FROM movies;

Table: Movies
Id	Title	            Director	    Year	Length_minutes
1	Toy Story	        John Lasseter	1995	81
2	A Bugs Life	        John Lasseter	1998	95
3	Toy Story 2	        John Lasseter	1999	93
4	Monsters, Inc.	    Pete Docter	    2001	92
5	Finding Nemo	    Andrew Stanton	2003	107
6	The Incredibles	    Brad Bird	    2004	116
7	Cars	            John Lasseter	2006	117
8	Ratatouille	        Brad Bird	    2007	115
9	WALL-E	            Andrew Stanton	2008	104
10	Up	                Pete Docter	    2009	101
11	Toy Story 3	        Lee Unkrich	    2010	103
12	Cars 2	            John Lasseter	2011	120
13	Brave	            Brenda Chapman	2012	102
14	Monsters University	Dan Scanlon	    2013	110

--Find all the Toy Story movies
SELECT * 
FROM movies
WHERE Title LIKE "%Toy Story%";

Id	Title	            Director	    Year	Length_minutes
1	Toy Story	        John Lasseter	1995	81
3	Toy Story 2	        John Lasseter	1999	93
11	Toy Story 3	        Lee Unkrich	    2010	103

--Find all the movies directed by John Lasseter
SELECT * 
FROM movies
WHERE Director LIKE "%John Lasseter%";

Id	Title	            Director	    Year	Length_minutes
1	Toy Story	        John Lasseter	1995	81
2	A Bugs Life	        John Lasseter	1998	95
3	Toy Story 2	        John Lasseter	1999	93
7	Cars	            John Lasseter	2006	117
12	Cars 2	            John Lasseter	2011	120

--Find all the movies (and director) not directed by John Lasseter
SELECT Title, Director 
FROM movies
WHERE Director NOT LIKE "%John Lasseter%";

Title	                Director
Monsters, Inc.	        Pete Docter
Finding Nemo	        Andrew Stanton
The Incredibles	        Brad Bird
Ratatouille	            Brad Bird
WALL-E	                Andrew Stanton
Up	                    Pete Docter
Toy Story 3	            Lee Unkrich
Brave	                Brenda Chapman
Monsters University	    Dan Scanlon
WALL-G	                Brenda Chapman

--Find all the WALL-* movies
SELECT Title 
FROM movies
WHERE Title LIKE "%Wall-%";

Title
WALL-E
WALL-G