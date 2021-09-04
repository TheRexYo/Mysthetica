########## Magic Function ##########
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles, triggers, and facilitates spells and similar effects within the game.
##################################################

##### Casting Functions #####
execute as @s at @s run function arkane:libraries/magic/spells/get
execute as @s at @s run scoreboard players reset @s cast_spell

##### Spells #####
function arkane:libraries/magic/spells/all
