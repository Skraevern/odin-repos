/*
Lesson 18: Nested queries
In SQL, you can put a SQL query inside another SQL query.

For example, to find the family members with the least number of legs,
you can run:
SELECT * FROM family_members WHERE num_legs = (SELECT MIN(num_legs) FROM family_members);

The SELECT query inside the parentheses is executed first, and returns the minimum number of legs. Then, that value (2) is used in the outside query, to find all family members that have 2 legs.

Can you return the family members that have the highest num_books_read? */

SELECT * 
FROM family_members
WHERE num_books_read = (
    SELECT MAX(num_books_read)
    FROM family_members )

Current tables:
family_members
id	name	species	num_books_read	num_legs
1	Dave	human	200	2
2	Mary	human	180	2
3	Pickles	dog 	0	4

Result:
id	name	species	num_books_read	num_legs
1	Dave	human	200	            2
