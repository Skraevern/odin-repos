/*
Lesson 17: GROUP BY
You can use aggregate functions such as COUNT, SUM, AVG, MAX, and MIN with the GROUP BY clause.

When you GROUP BY something, you split the table into different piles based on the value of each row.

For example,
SELECT COUNT(*), species FROM friends_of_pickles GROUP BY species; would return the number of rows for each species.

Can you return the tallest height for each species? Remember to return the species name next to the height too, like in the example query. */

SELECT MAX(height_cm), species
FROM friends_of_pickles
GROUP BY species;

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
MAX(height_cm)	species
30	cat
55	dog
180	human
