########## Main ("Dust Devil") ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the entity "Dust Devil".
#
##################################################

#execute as @s at @s run scoreboard players remove @s PowerCooldown 1
execute as @s at @s run effect give @s minecraft:invisibility 10 0 true
execute as @s at @s run effect give @e[distance=..3,tag=!DustDevil,team=!Earth,tag=!DustDevilOwner] minecraft:blindness 5 0 true
particle minecraft:dust 0.75 0.55 0.0 10.0 ~ ~ ~ 0.5 0.5 0.5 0 10 normal
