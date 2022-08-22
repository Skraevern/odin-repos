/*
Lesson 12: COUNT(*)
Another way to explore a table is to check the number of rows in it. For example, if we are querying a table states_of_us, we'd expect 50 rows, or 500 rows in a table called fortune_500_companies.

SELECT COUNT(*) FROM friends_of_pickles; returns the total number of rows in the table friends_of_pickles. Try this for yourself. */

SELECT COUNT(*)
FROM friends_of_pickles;

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
COUNT(*)
7