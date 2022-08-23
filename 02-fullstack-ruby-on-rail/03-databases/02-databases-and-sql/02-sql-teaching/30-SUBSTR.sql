/*
Lesson 30: SUBSTR
In SQL, you can search for the substring of a given value. Perhaps a location is stored in the format "city, state" and you just want to grab the state.

SUBSTR is used in this format: SUBSTR(column_name, index, number_of_characters)

index is a number that denotes where you would start the substring. 1 would indicate the first character, 2 would indicated the second character, etc. The index could also be negative, which means you would count from the end of the string. -1 would denote the last character, -2 would denote the 2nd to last character, etc.

number_of_characters is optional; if it is not included, the substring contains the "rest of the string".

Here are some examples:
SUBSTR(name, 1, 5) is the first 5 characters of the name.
SUBSTR(name, -4) is the last 4 characters of the name.

SELECT * FROM robots WHERE SUBSTR(name, -4) LIKE '20__'; is another way of returning all of the robots that have been released between 2000 and 2099.

Note: In other versions of SQL, you could use RIGHT to do this.

Can you return all of the robots that are located in NY? */

SELECT * FROM robots 
WHERE SUBSTR(location, -2) LIKE 'NY';

Current tables:
robots
id	name	                                location
1	R2000 - Robot 2000	                    New City, NY
2	R2001 - Champion Robot 2001	            Palo Alto, CA
3	D0001 - Dragon	                        New York City, NY
4	R2002 - Turbo Robot 2002	            Spring Valley, NY
5	R2003 - Super Robot 2003	            Nyack, NY
6	R2004 - Super Turbo Robot 2004	        Tampa, FL
7	N0001 - Not A Robot	                    Seattle, WA
8	U2111 - Unreleased Turbo Robot 2111	    Buffalo, NY

Result:
id	name	                                location
1	R2000 - Robot 2000	                    New City, NY
3	D0001 - Dragon	                        New York City, NY
4	R2002 - Turbo Robot 2002	            Spring Valley, NY
5	R2003 - Super Robot 2003	            Nyack, NY
8	U2111 - Unreleased Turbo Robot 2111	    Buffalo, NY