/*
Lesson 9: DISTINCT
By putting DISTINCT after SELECT, you do not return duplicates.

For example, if you run
SELECT DISTINCT gender, species FROM friends_of_pickles WHERE height_cm < 100;, you will get the gender/species combinations of the animals less than 100cm in height.

Note that even though there are multiple male dogs under that height, we only see one row that returns "male" and "dog".

Can you return a list of the distinct species of animals greater than 50cm in height? */

SELECT DISTINCT species
FROM friends_of_pickles
WHERE height_cm > 50;

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
species
human
dog