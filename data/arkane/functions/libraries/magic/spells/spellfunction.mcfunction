########## Magic Function ##########
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles, triggers, and facilitates spells and similar effects within the game.
##################################################

##### Casting Functions #####
execute as @a[scores={Use_WrittenBook=1..}] at @s run execute as @s[predicate=arkane:spell_equipped] at @s run function arkane:libraries/magic/spells/handle
execute as @a[scores={cast_spell=1..}] at @s run execute as @s[predicate=arkane:spell_equipped] at @s run function arkane:libraries/magic/spells/cast

##### Spells #####
function arkane:libraries/magic/spells/all
