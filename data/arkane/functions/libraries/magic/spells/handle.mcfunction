########## Magic Function ##########
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles, triggers, and facilitates spells and similar effects within the game.
##################################################

##### Casting Functions #####
execute as @s at @s run scoreboard players enable @s cast_spell
execute as @s[scores={AutoCast=1}] at @s run function arkane:libraries/magic/spells/cast

##### Spells #####
function arkane:libraries/magic/spells/all
