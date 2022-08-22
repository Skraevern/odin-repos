/*
Lesson 16: MAX and MIN
We can use the MAX and MIN to find the maximum or minimum value of a table.

To find the least number of legs in a family member (2), you can run
SELECT MIN(num_legs) FROM family_members;

Can you find the highest num_books_read that a family member makes? */

SELECT MAX(num_books_read)
FROM family_members;

Current tables:
family_members
id	name	species	num_books_read	num_legs
1	Dave	human	200	2
2	Mary	human	180	2
3	Pickles	dog 	0	4

Result:
MAX(num_books_read)
200