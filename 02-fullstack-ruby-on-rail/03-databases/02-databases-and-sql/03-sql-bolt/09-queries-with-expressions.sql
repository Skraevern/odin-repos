/*
SQL Lesson 9: Queries with expressions
In addition to querying and referencing raw column data with SQL, you can also use expressions to write more complex logic on column values in a query. These expressions can use mathematical and string functions along with basic arithmetic to transform values when the query is executed, as shown in this physics example.

Example query with expressions
SELECT particle_speed / 2.0 AS half_particle_speed
FROM physics_data
WHERE ABS(particle_position) * 10.0 > 500;
Each database has its own supported set of mathematical, string, and date functions that can be used in a query, which you can find in their own respective docs.

The use of expressions can save time and extra post-processing of the result data, but can also make the query harder to read, so we recommend that when expressions are used in the SELECT part of the query, that they are also given a descriptive alias using the AS keyword. */

Select query with expression aliases
SELECT col_expression AS expr_description, …
FROM mytable; /*
In addition to expressions, regular columns and even tables can also have aliases to make them easier to reference in the output and as a part of simplifying more complex queries.

Example query with both column and table name aliases */
SELECT column AS better_column_name, …
FROM a_long_widgets_table_name AS mywidgets
INNER JOIN widget_sales
  ON mywidgets.id = widget_sales.widget_id; /*
Exercise
You are going to have to use expressions to transform the BoxOffice data into something easier to understand for the tasks below. */

Table: Movies (Read-Only)
Id	Title	        Director	    Year	Length_minutes
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
11	Toy Story 3	    Lee Unkrich	    2010	103
12	Cars 2	        John Lasseter	2011	120
13	Brave	        Brenda Chapman	2012	102
14	Monsters Uni	Dan Scanlon	    2013	110

Table: Boxoffice (Read-Only)
Movie_id	Rating	Domestic_sales	International_sales
5	        8.2	    380843261	    555900000
14	        7.4	    268492764	    475066843
8	        8	    206445654	    417277164
12	        6.4	    191452396   	368400000
3	        7.9	    245852179	    239163000
6	        8	    261441092   	370001000
9	        8.5	    223808164	    297503696
11	        8.4	    415004880	    648167031
1	        8.3	    191796233   	170162503
7	        7.2	    244082982	    217900167
10	        8.3	    293004164	    438338580
4	        8.1	    289916256   	272900000
2	        7.2 	162798565   	200600000
13	        7.2 	237283207	    301700000

--List all movies and their combined sales in millions of dollars 
SELECT Movies.Title, (Domestic_sales +	International_sales) / 1000000 AS Combined_sales_in_millions
FROM Movies
INNER JOIN Boxoffice
ON Movies.Id = Boxoffice.Movie_id;

Title	            Combined_sales_in_millions
Finding Nemo	    936.743261
Monsters University	743.559607
Ratatouille	        623.722818
Cars 2	            559.852396
Toy Story 2	        485.015179
The Incredibles	    631.442092
WALL-E	            521.31186
Toy Story 3	        1063.171911
Toy Story	        361.958736
Cars	            461.983149
Up	                731.342744
Monsters, Inc.	    562.816256
A Bugs Life	        363.398565
Brave	            538.983207


--List all movies and their ratings in percent
SELECT Movies.Title, Boxoffice.Rating * 10 AS Percent
FROM Movies
LEFT JOIN Boxoffice
ON Movies.Id = Boxoffice.Movie_id
ORDER BY Percent DESC;

Title	            Percent
WALL-E	            85
Toy Story 3	        84
Toy Story	        83
Up	                83
Finding Nemo	    82
Monsters, Inc.	    81
The Incredibles	    80
Ratatouille	        80
Toy Story 2	        79
Monsters University	74
A Bugs Life	        72
Cars	            72
Brave	            72
Cars 2	            64


--List all movies that were released on even number years
SELECT Title, Year
FROM Movies
WHERE Year % 2 = 0;

Title	        Year
A Bugs Life	    1998
The Incredibles	2004
Cars	        2006
WALL-E      	2008
Toy Story 3	    2010
Brave	        2012