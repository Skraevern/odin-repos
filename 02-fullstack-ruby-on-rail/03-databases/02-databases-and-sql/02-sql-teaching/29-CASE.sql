/*
Menu
Lesson 29: CASE
You can use a CASE statement to return certain values when certain scenarios are true.

A CASE statement takes the following form:

CASE WHEN *first thing is true* THEN *value1*
WHEN *second thing is true* THEN *value2*
...
ELSE *value for all other situations*
END

For example, in order to return the number of legs for each row in friends_of_pickles, you could run:
SELECT *,
CASE WHEN species = 'human' THEN 2 ELSE 4 END AS num_legs
FROM friends_of_pickles;

Can you return the results with a column named sound that returns "talk" for humans, "bark" for dogs, and "meow" for cats? */

SELECT *,
CASE WHEN species = 'human' THEN 'talk'
WHEN species = 'dog' THEN 'bark'
WHEN species = 'cat' THEN 'meow'
 END AS sound
FROM friends_of_pickles;

Current tables:
friends_of_pickles
id	name	gender	species	height_cm
1	Dave	male	human	180
2	Mary	female	human	160
3	Fry	    male	cat	    30
4	Leela	female	cat	    25
5	Odie	male	dog	    40
6	Jumpy	male	dog	    35
7	Sneaker	male	dog	    55

id	name	gender	species	height_cm	sound
1	Dave	male	human	180	        talk
2	Mary	female	human	160	        talk
3	Fry	    male	cat	    30	        meow
4	Leela	female	cat	    25	        meow
5	Odie	male	dog	    40	        bark
6	Jumpy	male	dog	    35	        bark
7	Sneaker	male	dog	    55	        bark