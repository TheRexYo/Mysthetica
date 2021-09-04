########## Main ("Spawner") ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the entity "Spawner".
#
##################################################

execute as @s at @s run execute store result score @s operation_a run data get entity @s data.Cooldown
execute as @s at @s run execute as @s[nbt={data:{SpawnerType:"Fire",Cooldown:0}}] run function arkane:libraries/entities/misc/spawner/spawns/fire/base
execute as @s at @s run execute as @s[nbt={data:{SpawnerType:"Default",Cooldown:0}}] run function arkane:libraries/entities/misc/spawner/spawns/default
execute as @s at @s run execute as @s[nbt={data:{Cooldown:0}}] run data modify entity @s data.Cooldown set value 200
execute as @s at @s run execute store result entity @s data.Cooldown int 1 run scoreboard players get @s operation_a
execute as @s at @s run scoreboard players remove @s operation_a 1