/* 
Menu
Lesson 27: Self joins
Sometimes, it may make sense for you to do a self join. In that case, you need to use table aliases to determine which data is from the "first"/"left" table.

For example, to get a list of Rock Paper Scissors objects and the objects they beat, you can run the following:
SELECT r1.name AS object, r2.name AS beats
FROM rps AS r1
INNER JOIN rps AS r2
ON r1.defeats_id = r2.id;

Can you run a query that returns the name of an employee and the name of their boss? Use column aliases to make the columns employee_name and boss_name. */

SELECT e2.name AS employee_name, e1.name AS boss_name
FROM employees AS e1
INNER JOIN employees AS e2
ON  e2.boss_id = e1.id;

Current tables:
rps
id	name	    defeats_id
1	Rock	    3
2	Paper	    1
3	Scissors	2

employees
id	name	        title	                boss_id
1	Patrick Smith	Software Engineer	    2
2	Abigail Reed	Engineering Manager	    3
3	Bob Carey	    Director of Engineering	4
4	Maxine Tang	    CEO                 	null