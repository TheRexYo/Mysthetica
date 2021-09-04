########## Earthbind ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the spell "Earthbind".
#
#--|Spell Data|--
#Description: Animates the ground around the caster to slow down all nearby entities and prevent jumping. 
#Effect: (TODO)
##################################################

execute as @s at @s run summon marker ~ ~ ~ {Tags:["Spawner","Spawned"],data:{SpawnerType:"Default",Cooldown:0}}