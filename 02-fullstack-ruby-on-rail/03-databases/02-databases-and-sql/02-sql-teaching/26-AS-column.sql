/*
Lesson 26: Column alias
In addition to making aliases for tables, you can also make them for columns.

This clears up confusion on which column is which. In the previous exercise, both columns in the result are simply called "name", and that can be confusing.

If you want to use an alias for a column, you add AS *alias_name* after the column name.

If we wanted to use left joins between character names and TV shows and clearly denote which column has character names, and which has TV show names, it would look like this:
SELECT character.name AS character, tv_show.name AS name
FROM character
LEFT JOIN character_tv_show
ON character.id = character_tv_show.character_id
LEFT JOIN tv_show
ON character_tv_show.tv_show_id = tv_show.id;

Can you use left joins to match character names with the actors that play them, and use aliases to call the two columns returned character and actor? */

SELECT c.name AS character, a.name AS actor
FROM character AS c
LEFT JOIN character_actor AS ca
ON c.id = ca.character_id
LEFT JOIN actor AS a
ON ca.actor_id = a.id;

Current tables:
character
id	name
1	Doogie Howser
2	Barney Stinson
3	Lily Aldrin
4	Willow Rosenberg

tv_show
id	name
1	Buffy the Vampire Slayer
2	How I Met Your Mother
3	Doogie Howser, M.D.

character_tv_show
id	character_id	tv_show_id
1	1	            3
2	2	            2
3	3	            2
4	4	            1

actor
id	name
1	Alyson Hannigan
2	Neil Patrick Harris

character_actor
id	character_id	actor_id
1	1	            2
2	2	            2
3	3	            1
4	4	            1

Result:
character           actor
Doogie Howser	    Neil Patrick Harris
Barney Stinson	    Neil Patrick Harris
Lily Aldrin	        Alyson Hannigan
Willow Rosenberg	Alyson Hannigan
Steve Urkel	        null
Homer Simpson	    null
