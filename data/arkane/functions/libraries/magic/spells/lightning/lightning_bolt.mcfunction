########## Lightning Bolt ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the spell "Lightning Bolt".
#
#--|Spell Data|--
#Description: Summons a lightning bolt to strike a random foe within 20 blocks.
#Effect: (TODO)
##################################################

execute as @s at @s run execute as @e[limit=1,sort=nearest,distance=1..20,type=!#arkane:inanimate] at @s run execute as @s at @s run summon minecraft:lightning_bolt ~ ~ ~
