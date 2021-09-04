########## Winter's Grasp ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the spell "Winter's Grasp"
#
#--|Spell Data|--
#Description: Slows nearby enemies.
#Effect: (TODO)
##################################################
execute as @s at @s run tag @s add Activate_WintersGrasp
execute as @s at @s run effect give @e[distance=..10,tag=!Activate_WintersGrasp] minecraft:slowness 30 2 true
execute as @s at @s run effect give @e[distance=..10,tag=!Activate_WintersGrasp] minecraft:mining_fatigue 30 2 true
execute as @s at @s run tag @s remove Activate_WintersGrasp