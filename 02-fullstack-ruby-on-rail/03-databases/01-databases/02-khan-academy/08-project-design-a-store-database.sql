/*
Create your own store! Your store should sell one type of things, like clothing or bikes, whatever you want your store to specialize in. You should have a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. You should sell at least 15 items, and use select statements to order your items by price and show at least one statistic about the items. */

CREATE TABLE store_database (id INTEGER PRIMARY KEY, whare TEXT, color TEXT, size TEXT, quantity INTEGER );

INSERT INTO store_database VALUES (1, "hat", "black", "m", 7);
INSERT INTO store_database VALUES (2, "shirt", "gray", "xl", 2);
INSERT INTO store_database VALUES (3, "bandana", "green", "one-size", 19);
INSERT INTO store_database VALUES (4, "pants", "red", "s", 3);
INSERT INTO store_database VALUES (5, "hoodie", "pink", "m", 0);
INSERT INTO store_database VALUES (6, "gloves", "blue", "xl", 3);
INSERT INTO store_database VALUES (7, "t-shirt", "red", "xxl", 4);
INSERT INTO store_database VALUES (8, "hoodie", "blue", "s", 5);
INSERT INTO store_database VALUES (9, "bandana", "gray", "one-size", 1);
INSERT INTO store_database VALUES (10, "pants", "olive", "m", 3);
INSERT INTO store_database VALUES (11, "shirt", "white", "xs", 15);
INSERT INTO store_database VALUES (12, "hat", "peach", "l", 2);
INSERT INTO store_database VALUES (13, "gloves", "red", "s", 3);
INSERT INTO store_database VALUES (14, "sweater", "black", "xxxl", 1);
INSERT INTO store_database VALUES (15, "pants", "green", "s", 9);


SELECT *
FROM store_database
ORDER BY quantity;