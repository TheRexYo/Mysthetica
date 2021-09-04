########## Winds of Zephyr ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the spell "Winds of Zephyr".
#
#--|Spell Data|--
#Description: Gives the user a speed boost and slow falling for 30 seconds, as well as a short jump boost that wears off after 5 seconds.
#Effect: (TODO)
##################################################

execute as @s at @s run effect give @s minecraft:slow_falling 30 0 true
execute as @s at @s run effect give @s minecraft:jump_boost 5 4 true
execute as @s at @s run effect give @s minecraft:speed 30 2 true