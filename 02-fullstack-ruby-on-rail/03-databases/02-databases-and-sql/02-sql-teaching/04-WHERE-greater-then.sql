/*
{Lesson 4: WHERE ... Greater than
If we want to only select family members based on a numerical field, we can also use the WHERE keyword. For example, if we wanted to select family members with a num_books_read, we would type
SELECT * FROM family_members WHERE num_books_read > 0;

Can you run return all rows of family members whose num_books_read is greater than 190?} */

SELECT *
FROM family_members
WHERE num_books_read > 190;

Current tables:
family_members
id	name	gender	species	num_books_read
1	Dave	male	human	200
2	Mary	female	human	180
3	Pickles	male	dog	    0

Result:
id	name	gender	species	num_books_read
1	Dave	male	human	200
