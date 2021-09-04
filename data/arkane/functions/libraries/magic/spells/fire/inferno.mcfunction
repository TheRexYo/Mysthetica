########## Ion Volt ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the spell "Ion Volt".
#
#--|Spell Data|--
#Description: (TODO)
#Effect: (TODO)
##################################################
execute as @s at @s run function arkane:libraries/entities/mobs/inferno/summon_limited
execute as @s at @s run function arkane:libraries/entities/mobs/inferno/summon_limited
execute as @s at @s run function arkane:libraries/entities/mobs/inferno/summon_limited
execute as @s at @s run function arkane:libraries/entities/mobs/inferno/summon_limited
execute as @s at @s run function arkane:libraries/entities/mobs/inferno/summon_limited
execute as @s at @s run execute as @e[tag=Inferno,tag=SummonLimited,tag=!LifetimeInit] at @s run execute as @s at @s run scoreboard players set @s maxlifetime 200
execute as @s at @s run execute as @e[tag=Inferno,tag=!LifetimeInit] at @s run execute as @s at @s run tag @s add LifetimeInit
