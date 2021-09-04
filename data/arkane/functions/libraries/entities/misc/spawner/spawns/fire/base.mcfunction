########## Earthbind ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the spell "Earthbind".
#
#--|Spell Data|--
#Description: Animates the ground around the caster to slow down all nearby entities and prevent jumping. 
#Effect: (TODO)
##################################################
execute as @s at @s run scoreboard players set @s RNG2 100
execute as @s at @s run function rng2:get_random
execute as @s[scores={NUM=1..}] at @s run summon marker ~ ~ ~ {Tags:["Replace_Inferno","Spawn_Shuffle"]}