########## Main ("Ash Walker") ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the entity "Ash Walker".
#
##################################################

execute as @s at @s run execute as @s[tag=!PowerInit] run scoreboard players set @s PowerCooldown 0
execute as @s at @s run execute as @s[tag=!PowerInit] run tag @s add PowerInit
execute as @s at @s run scoreboard players remove @s PowerCooldown 1
execute as @s at @s run execute as @s at @s if entity @e[distance=..5,team=!Fire,tag=!AshWalker] at @s run tag @s add Activate_Aura
execute as @s at @s run execute as @s[tag=Activate_Aura,scores={PowerCooldown=..0}] at @s if entity @e[distance=..5,team=!Fire,tag=!AshWalker] run function arkane:libraries/entities/mobs/ash_walker/powers/ash_cloud
execute as @s at @s run execute as @s[tag=Activate_Aura,scores={PowerCooldown=..0}] at @s if entity @e[distance=..5,team=!Fire,tag=!AshWalker] at @s run scoreboard players set @s PowerCooldown 100
