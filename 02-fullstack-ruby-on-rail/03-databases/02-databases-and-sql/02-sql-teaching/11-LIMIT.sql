/*
Lesson 11: LIMIT # of returned rows
Often, tables contain millions of rows, and it can take a while to grab everything. If we just want to see a few examples of the data in a table, we can select the first few rows with the LIMIT keyword. If you use ORDER BY, you would get the first rows for that order.

If you wanted to see the two shortest friends_of_pickles, you would run: SELECT * FROM friends_of_pickles ORDER BY height_cm LIMIT 2;

Can you return the single row (and all columns) of the tallest friends_of_pickles?

Note:
- Some variants of SQL do not use the LIMIT keyword.
- The LIMIT keyword comes after the DESC keyword. */

SELECT *
FROM friends_of_pickles
ORDER BY height_cm DESC LIMIT 1;

Current tables:
friends_of_pickles
id	name	gender	species	height_cm
1	Dave	male	human	180
2	Mary	female	human	160
3	Fry 	male	cat 	30
4	Leela	female	cat	    25
5	Odie	male	dog	    40
6	Jumpy	male	dog	    35
7	Sneaker	male	dog	    55

Result:
id	name	gender	species	height_cm
1	Dave	male	human	180
