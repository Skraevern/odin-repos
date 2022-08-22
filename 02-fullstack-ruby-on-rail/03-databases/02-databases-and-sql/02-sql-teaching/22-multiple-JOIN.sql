/*
Lesson 22: Multiple joins
In the previous exercise, we explained that TV show character names were not duplicated, so if the name of a character were to change, you would only have to change the name of the character in one row.

However, the previous example was a bit artificial because the TV show names and actor names were duplicated.

In order to not duplicate any names, we need to have more tables, and use multiple joins.

We have tables for characters, TV shows, and actors. Those tables represent things (also known as entities).

In addition to those tables, we have the relationship tables character_tv_show and character_actor, which capture the relationship between two entities.

This is a flexible way of capturing the relationship between different entities, as some TV show characters might be in multiple shows, and some actors are known for playing multiple characters.

To get each character name with his/her TV show name, we can write
SELECT character.name, tv_show.name
FROM character
INNER JOIN character_tv_show
ON character.id = character_tv_show.character_id
INNER JOIN tv_show
ON character_tv_show.tv_show_id = tv_show.id;

Can you use two joins to pair each character name with the actor who plays them? Select the columns: character.name, actor.name */

SELECT character.name, actor.name
FROM character
INNER JOIN character_actor
ON character.id = character_actor.character_id
INNER JOIN actor
ON actor.id = character_actor.actor_id;


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
