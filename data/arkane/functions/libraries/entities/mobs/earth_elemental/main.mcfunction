########## Main ("Earth Elemental") ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the entity "Earth Elemental".
#
##################################################

execute as @s at @s run scoreboard players set @s[tag=!Arkane_Init] PowerCharge 0
execute as @s at @s run scoreboard players set @s[tag=!Arkane_Init] PowerCooldown 0
execute as @s at @s run tag @s[tag=!Arkane_Init] add Arkane_Init

execute as @s at @s run scoreboard players remove @s[tag=!Activating,scores={PowerCharge=1..}] PowerCharge 1
execute as @s at @s run execute if entity @s[scores={PowerCooldown=..0},tag=Activating] run execute as @s at @s run scoreboard players add @s PowerCharge 1

execute as @s at @s run effect give @s minecraft:resistance 10 3 true
execute as @s at @s run scoreboard players remove @s PowerCooldown 1

execute as @s at @s run execute as @s at @s if entity @e[distance=..5,team=!Earth,tag=!EarthElementalOwner,tag=!EarthElemental] at @s run tag @s add Activating
execute as @s at @s run execute as @s at @s unless entity @e[distance=..5,team=!Earth,tag=!EarthElementalOwner,tag=!EarthElemental] at @s run tag @s remove Activating
execute as @s at @s run execute if entity @s[scores={PowerCharge=20..},tag=Activating] run execute as @s at @s run tag @s add Activate_Impact
execute as @s at @s run execute if entity @s[scores={PowerCharge=20..},tag=Activating] run execute as @s at @s run tag @s add Activate_Impact
execute as @s at @s run execute as @s[tag=Activate_Impact,scores={PowerCooldown=..0}] at @s if entity @e[distance=..5,team=!Earth,tag=!EarthElementalOwner,tag=!EarthElemental] run tp @s ~ ~ ~ facing entity @e[distance=..3,team=!Earth,tag=!EarthElemental,sort=nearest,limit=1]
execute as @s at @s run execute as @s[tag=Activate_Impact,scores={PowerCooldown=..0}] at @s if entity @e[distance=..5,team=!Earth,tag=!EarthElementalOwner,tag=!EarthElemental] run function arkane:libraries/entities/mobs/earth_elemental/powers/impact
execute as @s at @s run execute as @s[tag=Activate_Impact,scores={PowerCooldown=..0}] at @s if entity @e[distance=..5,team=!Earth,tag=!EarthElementalOwner,tag=!EarthElemental] at @s run scoreboard players set @s PowerCharge 0
execute as @s at @s run execute as @s[tag=Activate_Impact,scores={PowerCooldown=..0}] at @s if entity @e[distance=..5,team=!Earth,tag=!EarthElementalOwner,tag=!EarthElemental] at @s run scoreboard players set @s PowerCooldown 80
