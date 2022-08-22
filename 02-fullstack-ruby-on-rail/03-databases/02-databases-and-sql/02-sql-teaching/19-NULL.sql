/*
Lesson 19: NULL
Sometimes, in a given row, there is no value at all for a given column. For example, a dog does not have a favorite book, so in that case there is no point in putting a value in the favorite_book column, and the value is NULL. In order to find the rows where the value for a column is or is not NULL, you would use IS NULL or IS NOT NULL.

Can you return all of the rows of family_members where favorite_book is not null? */

SELECT *
FROM family_members
WHERE favorite_book IS NOT NULL;

Current tables:
family_members
id	name	gender	species	favorite_book
1	Dave	male	human	To Kill a Mockingbird
2	Mary	female	human	Gone with the Wind
3	Pickles	male	dog	    null

Result:
id	name	gender	species	favorite_book
1	Dave	male	human	To Kill a Mockingbird
2	Mary	female	human	Gone with the Wind