########## Summon Dust Devil ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the spell "Summon Dust Devil".
#
#--|Spell Data|--
#Description: 
#Effect: 
##################################################
execute as @s at @s run tag @s add SummonDustDevil
#execute as @s at @s run team join Earth @s
execute as @a[tag=DustDevilOwner] at @s run execute as @s at @s run tag @s remove DustDevilOwner
execute as @s at @s run tag @s add DustDevilOwner
execute as @s at @s run function arkane:libraries/entities/mobs/dust_devil/summon_limited
execute as @s at @s run execute as @e[tag=DustDevil,tag=SummonLimited,tag=!LifetimeInit] at @s run execute as @s at @s run scoreboard players set @s maxlifetime 200
execute as @s at @s run execute as @e[tag=DustDevil,tag=SummonLimited,tag=!LifetimeInit] at @s run execute as @s at @s run tag @s add LifetimeInit
execute as @s at @s run tag @s remove SummonDustDevil
