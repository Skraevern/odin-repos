/*
Lesson 14: SUM
We can use the SUM keyword in order to find the sum of a given value.

For example, running SELECT SUM(num_legs) FROM family_members; returns the total number of legs in the family.

Can you find the total num_books_read made by this family?
*/

SELECT SUM(num_books_read)
FROM family_members;

Current tables:
family_members
id	name	species	num_books_read	num_legs
1	Dave	human	200	2
2	Mary	human	180	2
3	Pickles	dog 	0	4

Result:
SUM(num_books_read)
380