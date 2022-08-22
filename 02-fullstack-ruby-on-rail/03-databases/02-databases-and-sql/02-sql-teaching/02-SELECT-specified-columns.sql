/*
Lesson 2: SELECT specific columns
SELECT * grabs all fields (called columns) in a table. If we only wanted to see the name and num_books_read columns, we would type
SELECT name, num_books_read FROM family_members;.

Can you return just the name and species columns?
*/

SELECT name, species
FROM family_members;

Current tables:
family_members
id	name	gender	species	num_books_read
1	Dave	male	human	200
2	Mary	female	human	180
3	Pickles	male	dog	    0

Result:
name	species
Dave	human
Mary	human
Pickles	dog
