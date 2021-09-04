########## Main ("Salamander") ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the entity "Salamander".
#
##################################################

execute as @s at @s run scoreboard players set @s[tag=!Arkane_Init] PowerCharge 0
execute as @s at @s run tag @s[tag=!Arkane_Init] add Arkane_Init

execute as @s at @s run tag @s remove Hurt
execute as @s at @s run tag @s remove Activate_MoltenBreath
execute as @s at @s run tag @s[nbt={HurtTime:0s}] remove Hurt_Duration
execute as @s at @s run tag @s[nbt={HurtTime:10s}] add Hurt_Duration
execute as @s at @s run tag @s[nbt={HurtTime:10s}] add Hurt
execute as @s at @s run scoreboard players remove @s[tag=!Activating,scores={PowerCharge=1..}] PowerCharge 1
execute as @s[nbt={HurtTime:10s}] at @s run execute as @s at @s run playsound minecraft:entity.salamander.hurt hostile @a ~ ~ ~ 1 1 0

execute as @s at @s run execute if entity @s[scores={PowerCooldown=..0},tag=Activating] run execute as @s at @s run scoreboard players add @s PowerCharge 1
execute as @s at @s run execute if entity @s[scores={PowerCooldown=..0},tag=Activating] run execute as @s at @s run particle flame ^ ^ ^0.2 0.3 0.3 0.3 0 10 normal
execute as @s at @s run execute unless entity @s[scores={PowerCooldown=..0}] run execute as @s at @s run scoreboard players remove @s PowerCooldown 1
execute as @s at @s run effect give @s minecraft:fire_resistance 10 4 true
execute as @s at @s run execute as @s at @s if entity @e[distance=..5,team=!Fire,tag=!Salamander,tag=!salamander_model] at @s run tag @s add Activating
execute as @s at @s run execute as @s at @s unless entity @e[distance=..5,team=!Fire,tag=!Salamander,tag=!salamander_model] at @s run tag @s remove Activating
execute as @s at @s run execute if entity @s[scores={PowerCharge=40..},tag=Activating] run execute as @s at @s run tag @s add Activate_MoltenBreath
execute as @s at @s run execute as @s[tag=Activate_MoltenBreath,scores={PowerCooldown=..0}] at @s if entity @e[distance=..3,team=!Fire,tag=!Salamander,tag=!salamander_model] run tp @s ~ ~ ~ facing entity @e[distance=..3,team=!Fire,tag=!Salamander,tag=!salamander_model,sort=nearest,limit=1]
execute as @s at @s run execute as @s[tag=Activate_MoltenBreath,scores={PowerCooldown=..0}] at @s if entity @e[distance=..3,team=!Fire,tag=!Salamander,tag=!salamander_model] run function arkane:libraries/entities/mobs/salamander/powers/molten_breath
execute as @s at @s run execute as @s[tag=Activate_MoltenBreath,scores={PowerCooldown=..0}] at @s if entity @e[distance=..3,team=!Fire,tag=!Salamander,tag=!salamander_model] at @s run scoreboard players set @s PowerCharge 0
execute as @s at @s run execute as @s[tag=Activate_MoltenBreath,scores={PowerCooldown=..0}] at @s if entity @e[distance=..3,team=!Fire,tag=!Salamander,tag=!salamander_model] at @s run scoreboard players set @s PowerCooldown 20
