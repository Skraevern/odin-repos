/*
Lesson 8: IN
Using the WHERE clause, we can find rows where a value is in a list of several possible values.

SELECT * FROM friends_of_pickles WHERE species IN ('cat', 'human'); would return the friends_of_pickles that are either a cat or a human.

To find rows that are not in a list, you use NOT IN instead of IN.

Can you run a query that would return the rows that are not cats or dogs? */

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

SELECT *
FROM friends_of_pickles
WHERE species NOT IN ('cat', 'dog');

Result:
id	name	gender	species	height_cm
1	Dave	male	human	180
2	Mary	female	human	160