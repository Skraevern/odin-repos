/*
Lesson 13: COUNT(*) ... WHERE
We can combine COUNT(*) with WHERE to return the number of rows that matches the WHERE clause.

For example, SELECT COUNT(*) FROM friends_of_pickles WHERE species = 'human'; returns 2.

Can you return the number of rows in friends_of_pickles where the species is a dog? */

SELECT COUNT(*)
FROM friends_of_pickles
WHERE species = "dog";

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
3