/*
Lesson 10: ORDER BY
If you want to sort the rows by some kind of attribute, you can use the ORDER BY keyword. For example, if you want to sort the friends_of_pickles by name, you would run: SELECT * FROM friends_of_pickles ORDER BY name;. That returns the names in ascending alphabetical order.

In order to put the names in descending order, you would add a DESC at the end of the query.

Can you run a query that sorts the friends_of_pickles by height_cm in descending order? */

SELECT *
FROM friends_of_pickles
ORDER BY height_cm DESC;

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
2	Mary	female	human	160
7	Sneaker	male	dog	    55
5	Odie	male	dog	    40
6	Jumpy	male	dog	    35
3	Fry	    male	cat	    30
4	Leela	female	cat	    25