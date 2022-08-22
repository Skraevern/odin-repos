/*
Lesson 20: Date
Sometimes, a column can contain a date value. The first 4 digits represents the year, the next 2 digits represents the month, and the next 2 digits represents the day of the month. For example, 1985-07-20 would mean July 20, 1985.

You can compare dates by using < and >. For example, SELECT * FROM celebs_born WHERE birthdate < '1985-08-17'; returns a list of celebrities that were born before August 17th, 1985.

Can you return a list of celebrities that were born after September 1st, 1980? */

SELECT *
FROM celebs_born
WHERE birthdate > '1980-10-1';

Current tables:
celebs_born
id	name	            birthdate
1	Michael Jordan	    1963-02-17
2	Justin Timberlake	1981-01-31
3	Taylor Swift	    1989-12-13

Result:
id	name	            birthdate
2	Justin Timberlake	1981-01-31
3	Taylor Swift	    1989-12-13
