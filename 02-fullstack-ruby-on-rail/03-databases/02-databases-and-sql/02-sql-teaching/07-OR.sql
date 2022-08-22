/*
Lesson 7: OR
In the WHERE part of a query, you can search for rows that match any of multiple attributes by using the OR keyword. For example, if you wanted to find the friends of Pickles that are over 25cm in height or are cats, you would run:
SELECT * FROM friends_of_pickles WHERE height_cm > 25 OR species = 'cat';

Can you find all of Pickles' friends that are dogs or under the height of 45cm?
*/

SELECT *
FROM friends_of_pickles
WHERE species = 'dog' OR height_cm < 45

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
3	Fry	    male	cat	    30
4	Leela	female	cat	    25
5	Odie	male	dog 	40
6	Jumpy	male	dog 	35
7	Sneaker	male	dog	    55