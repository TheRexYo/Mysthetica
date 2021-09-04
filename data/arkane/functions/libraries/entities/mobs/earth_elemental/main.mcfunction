########## Main ("Earth Elemental") ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the entity "Earth Elemental".
#
##################################################
execute as @s at @s run execute as @s[tag=!PowerInit] run scoreboard players set @s PowerCooldown 0
execute as @s at @s run execute as @s[tag=!PowerInit] run tag @s add PowerInit
execute as @s at @s run effect give @s minecraft:resistance 10 3 true
execute as @s at @s run scoreboard players remove @s PowerCooldown 1
execute as @s at @s run execute as @s at @s if entity @e[distance=..5,team=!Earth,tag=!EarthElementalOwner,tag=!EarthElemental] at @s run tag @s add Activate_Impact
execute as @s at @s run execute as @s[tag=Activate_Impact,scores={PowerCooldown=..0}] at @s if entity @e[distance=..5,team=!Earth,tag=!EarthElementalOwner,tag=!EarthElemental] run function arkane:libraries/entities/mobs/earth_elemental/powers/impact
execute as @s at @s run execute as @s[tag=Activate_Impact,scores={PowerCooldown=..0}] at @s if entity @e[distance=..5,team=!Earth,tag=!EarthElementalOwner,tag=!EarthElemental] at @s run scoreboard players set @s PowerCooldown 100
