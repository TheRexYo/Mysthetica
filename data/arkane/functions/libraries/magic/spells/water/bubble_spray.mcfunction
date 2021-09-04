########## Bubble Spray ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the spell "Bubble Spray".
#
#--|Spell Data|--
#Description: Creates a stream of bubbles that slow those they hit.
#Effect: (TODO)
##################################################
execute as @s at @s run tag @s add bubble_immunity
execute as @s at @s run particle bubble ^ ^ ^1 0.5 1 0.5 0 10 force
execute as @s at @s run particle bubble ^ ^ ^2 0.5 1 0.5 0 20 force
execute as @s at @s run particle bubble ^ ^ ^3 0.5 1 0.5 0 30 force
execute as @s at @s run particle bubble ^ ^ ^4 0.5 1 0.5 0 40 force
execute as @s at @s run particle bubble ^ ^ ^5 0.5 1 0.5 0 50 force
execute as @s at @s run execute positioned ^ ^ ^1 run execute as @e[distance=..1, tag=!bubble_immunity] at @s run execute as @s at @s run effect give @s minecraft:slowness 5 1 true
execute as @s at @s run execute positioned ^ ^ ^2 run execute as @e[distance=..1, tag=!bubble_immunity] at @s run execute as @s at @s run effect give @s minecraft:slowness 5 1 true
execute as @s at @s run execute positioned ^ ^ ^3 run execute as @e[distance=..1, tag=!bubble_immunity] at @s run execute as @s at @s run effect give @s minecraft:slowness 5 1 true
execute as @s at @s run execute positioned ^ ^ ^4 run execute as @e[distance=..1, tag=!bubble_immunity] at @s run execute as @s at @s run effect give @s minecraft:slowness 5 1 true
execute as @s at @s run execute positioned ^ ^ ^5 run execute as @e[distance=..1, tag=!bubble_immunity] at @s run execute as @s at @s run effect give @s minecraft:slowness 5 1 true
execute as @s at @s run tag @s remove bubble_immunity