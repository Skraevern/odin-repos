/*
Lesson 23: Joins with WHERE
You can also use joins with the WHERE clause.

To get a list of characters and TV shows that are not in "Buffy the Vampire Slayer" and are not Barney Stinson, you would run:
SELECT character.name, tv_show.name
FROM character
INNER JOIN character_tv_show
ON character.id = character_tv_show.character_id
INNER JOIN tv_show
ON character_tv_show.tv_show_id = tv_show.id WHERE character.name != 'Barney Stinson' AND tv_show.name != 'Buffy the Vampire Slayer';

Can you return a list of characters and TV shows that are not named "Willow Rosenberg" and not in the show "How I Met Your Mother"? */

SELECT character.name, tv_show.name
FROM character
INNER JOIN character_tv_show
ON character.id = character_tv_show.character_id
INNER JOIN tv_show
ON character_tv_show.tv_show_id = tv_show.id WHERE character.name != 'Willow Rosenberg' AND tv_show.name != 'How I Met Your Mother';

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
name	        name
Doogie Howser	Doogie Howser, M.D.
