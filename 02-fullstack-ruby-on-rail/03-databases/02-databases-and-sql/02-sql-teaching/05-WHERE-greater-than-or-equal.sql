/*
Lesson 5: WHERE ... Greater than or equal
SQL accepts various inequality symbols, including:
= "equal to"
> "greater than"
< "less than"
>= "greater than or equal to"
<= "less than or equal to"

Can you return all rows in family_members where num_books_read is a value greater or equal to 180?
*/

SELECT *
FROM family_members
WHERE num_books_read >= 180;

Current tables:
family_members
id	name	gender	species	num_books_read
1	Dave	male	human	200
2	Mary	female	human	180
3	Pickles	male	dog 	0

Result:
id	name	gender	species	num_books_read
1	Dave	male	human	200
2	Mary	female	human	180
