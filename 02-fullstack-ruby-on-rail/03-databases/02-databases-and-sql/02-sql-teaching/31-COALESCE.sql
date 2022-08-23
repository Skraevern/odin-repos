/*
Lesson 31: COALESCE
COALESCE takes a list of columns, and returns the value of the first column that is not null.

Suppose we wanted to find the most powerful weapon that a combatant has on hand. If value of gun is not null, that is the value returned. Otherwise, the value of sword is returned. Then you would run:
SELECT name, COALESCE(gun, sword) AS weapon FROM fighters;

Suppose that a fighter's tank could count as a weapon, and it would take precedence over the gun and the sword. Could you find each fighter's weapon in that scenario? */

SELECT name, COALESCE(tank, gun, sword) AS weapon
FROM fighters;

Current tables:
fighters
id	name	            gun	                    sword	            tank
1	US Marine	        Colt 9mm SMG	        Swiss Army Knife	M1A1 Abrams Tank
2	John Wilkes Booth	.44 caliber Derringer	null	            null
3	Zorro	            null	                Sword of Zorro	    null
4	Innocent Bystander	null	                null	            null

Result:
name	            weapon
US Marine	        M1A1 Abrams Tank
John Wilkes Booth	.44 caliber Derringer
Zorro	            Sword of Zorro
Innocent Bystander	null