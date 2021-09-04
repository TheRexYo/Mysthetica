########## Entity Function ##########
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles, triggers, and facilitates custom entity behaviors in the game.
##################################################

# Extension Functions
function arkane:libraries/entities/items/handle

# Spawn-Related
execute as @e[tag=ResetSpawned] run execute as @s at @s run tag @s remove Spawned
execute as @e[tag=ResetSpawned] run execute as @s at @s run tag @s remove ResetSpawned
execute as @e[tag=!Spawned,tag=!ForcedSpawn] run execute as @s at @s run function arkane:spawnfunction
execute as @e[tag=!Spawned,tag=SummonLimited] run execute as @s at @s run scoreboard players set @s lifetime 0
execute as @e[tag=!Spawned] run execute as @s at @s run tag @s add Spawned

# Entity Handling
execute as @e[tag=EarthElemental] run execute as @s at @s run function arkane:libraries/entities/mobs/earth_elemental/main
execute as @e[tag=Salamander] run execute as @s at @s run function arkane:libraries/entities/mobs/salamander/main
execute as @e[tag=LivingEarth] run execute as @s at @s run function arkane:libraries/entities/misc/living_earth/main
execute as @e[tag=AshWalker] run execute as @s at @s run function arkane:libraries/entities/mobs/ash_walker/main
execute as @e[tag=Inferno] run execute as @s at @s run function arkane:libraries/entities/mobs/inferno/main
execute as @e[tag=DustDevil] run execute as @s at @s run function arkane:libraries/entities/mobs/dust_devil/main

# Limited-Time Summon Handling
execute as @e[tag=SummonLimited] run execute as @s at @s run scoreboard players add @s lifetime 1
execute as @e[tag=SummonLimited] at @s run execute as @s if score @s lifetime >= @s maxlifetime run execute as @s at @s run kill @s

# Entity Model Handling
execute as @e[tag=salamander_model] run execute as @s at @s run function arkane:libraries/entities/mobs/salamander/model

#Health and Direct Damage Handling
execute as @e[tag=StoreHealth] run execute store result score @s health run data get entity @s Health
execute as @e[scores={TakeDamage=1..}] run execute store result score @s health run data get entity @s Health
execute as @e[scores={TakeDamage=1..}] store result entity @s Health float 1 run scoreboard players operation @s health -= @s TakeDamage
execute as @e[scores={TakeDamage=1..}] run scoreboard players set @s TakeDamage 0
