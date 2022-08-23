/*
Lesson 25: Table alias
These queries are starting to get pretty long!

In the previous exercise, we ran a query containing the tables character, tv_show, and character_tv_show. We can write a shorter query if we used aliases for those tables. Basically, we create a "nickname" for that table.

If you want to use an alias for a table, you add AS *alias_name* after the table name.

For example, to use left joins between characters and tv shows with aliases, you would run:
SELECT c.name, t.name
FROM character AS c
LEFT JOIN character_tv_show AS ct
ON c.id = ct.character_id
LEFT JOIN tv_show AS t
ON ct.tv_show_id = t.id;

As you can see, it is shorter than the query in the previous exercise.

Can you use left joins to match character names with the actors that play them, and use aliases to make the query shorter? The aliases for character, character_actor, and actor should be c, ca, and a.

Select the columns: c.name, a.name */

SELECT c.name, a.name
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
name	            name
Doogie Howser	    Neil Patrick Harris
Barney Stinson	    Neil Patrick Harris
Lily Aldrin	        Alyson Hannigan
Willow Rosenberg	Alyson Hannigan
Steve Urkel	        null
Homer Simpson	    null