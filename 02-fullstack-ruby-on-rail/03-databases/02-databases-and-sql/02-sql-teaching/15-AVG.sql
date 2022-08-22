/*
Lesson 15: AVG
We can use the AVG keyword in order to find the average of a given value.

For example, running SELECT AVG(num_legs) FROM family_members; returns the average number of legs of each family member.

Can you find the average num_books_read made by each family member?

Note:
- Because of the way computers handle numbers, averages will not always be completely exact. */

SELECT AVG(num_books_read)
FROM family_members;

Current tables:
family_members
id	name	species	num_books_read	num_legs
1	Dave	human	200	2
2	Mary	human	180	2
3	Pickles	dog	    0	4

AVG(num_books_read)
126.66666666666667