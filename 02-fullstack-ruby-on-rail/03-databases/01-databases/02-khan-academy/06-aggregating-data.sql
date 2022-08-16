CREATE TABLE groceries (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, aisle INTEGER);
INSERT INTO groceries VALUES (1, "Bananas", 56, 7);
INSERT INTO groceries VALUES(2, "Peanut Butter", 1, 2);
INSERT INTO groceries VALUES(3, "Dark Chocolate Bars", 2, 2);
INSERT INTO groceries VALUES(4, "Ice cream", 1, 12);
INSERT INTO groceries VALUES(5, "Cherries", 6, 2);
INSERT INTO groceries VALUES(6, "Chocolate syrup", 1, 4);

SELECT SUM(quantity) 
FROM groceries;

SUM(quantity)
67


SELECT AVG(quantity) 
FROM groceries;

AVG(quantity)
11.166666666666666


SELECT MIN(quantity) 
FROM groceries;

MIN(quantity)
1


SELECT aisle, SUM(quantity) 
FROM groceries 
GROUP BY aisle;

aisle	SUM(quantity)
2	     9
4	     1
7	     56
12	     1