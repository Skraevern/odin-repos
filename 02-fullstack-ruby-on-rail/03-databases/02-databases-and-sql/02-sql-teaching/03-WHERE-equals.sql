/*
Lesson 3: WHERE ... Equals
In order to select particular rows from this table, we use the WHERE keyword. So for example, if we wanted to grab all of the rows that correspond to humans, we would type
SELECT * FROM family_members WHERE species = 'human';
Note that the quotes have to be around the word human, as it is an explicit value, unlike a keyword such as WHERE.

Can you run a query that returns all of the rows that refer to dogs? */

SELECT *
FROM family_members
WHERE species = 'dog';

family_members
id	name	gender	species	num_books_read
1	Dave	male	human	200
2	Mary	female	human	180
3	Pickles	male	dog	    0

Result:
id	name	gender	species	num_books_read
3	Pickles	male	dog	    0