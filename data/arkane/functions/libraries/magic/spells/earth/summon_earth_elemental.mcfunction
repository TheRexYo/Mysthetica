########## Summon Earth Elemental ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the spell "Summon Earth Elemental".
#
#--|Spell Data|--
#Description: Summons a powerful Earth Elemental that attacks nearby foes and leaves a huge impact wherever it is summoned. The Earth Elemental has high knockback, armor, and knockback resistance, making it quite dangerous in melee. However, it is incredibly slow and thus vulnerable to ranged attacks.
#Effect: Slows nearby foes and deals damage to them, then displays impact particles and plays two sound effects to simulate an impact. Afterwards, an iron golem with special stats is spawned with a different "PlayerCreated" variable depending on whether or not the executor is a player. 
##################################################
execute as @s at @s run tag @s add SummonEarthElemental
#execute as @s at @s run team join Earth @s
execute as @a[tag=EarthElementalOwner] at @s run execute as @s at @s run tag @s remove EarthElementalOwner
execute as @s at @s run tag @s add EarthElementalOwner
execute as @s at @s run execute as @e[type=player,distance=..5,team=!Earth,tag=!EarthElementalOwner,tag=!EarthElemental] at @s run execute as @s at @s run effect give @s slowness 2 4 true
execute as @s at @s run execute as @e[type=!player,distance=..5,team=!Earth,tag=!EarthElementalOwner,tag=!EarthElemental] at @s run execute as @s at @s run scoreboard players set @s TakeDamage 5
#execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~1 ~1 ~1 0 100000 normal @a
#execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~2 ~1 ~2 0 100000 normal @a
#execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~3 ~1 ~3 0 100000 normal @a
#execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~4 ~1 ~4 0 100000 normal @a
#execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~5 ~1 ~5 0 100000 normal @a
playsound entity.zombie.break_wooden_door hostile @a
playsound entity.generic.big_fall hostile @p ~ ~ ~ 2 0.5 0
execute as @s at @s run function arkane:libraries/entities/mobs/earth_elemental/summon_limited
execute as @s at @s run execute as @e[tag=EarthElemental,tag=SummonLimited,tag=!LifetimeInit] at @s run execute as @s at @s run scoreboard players set @s maxlifetime 300
execute as @s at @s run execute as @e[tag=EarthElemental,tag=SummonLimited,tag=!LifetimeInit] at @s run execute as @s at @s run tag @s add LifetimeInit
execute as @s at @s run tag @s remove SummonEarthElemental
