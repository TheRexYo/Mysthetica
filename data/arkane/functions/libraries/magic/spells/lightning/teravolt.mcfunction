########## Teravolt ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the spell "Teravolt".
#
#--|Spell Data|--
#Description: Creates an AoE burst of electricity that deals immense damage to nearby foes, dealing additional damage to grounded targets.
#Effect: Deals 20 damage to nearby non-player entities and gives instant damage 3 to nearby players.
#TODO: Implement additional damage to grounded targets.
##################################################

execute as @s at @s run tag @s add ActivateTeravolt
execute as @s at @s run execute as @e[type=player,distance=..10,team=!Lightning,tag=!IonStunned,tag=!ActivateTeravolt] at @s run execute as @s at @s run effect give @s instant_damage 1 2 true
execute as @s at @s run execute as @e[type=!player,distance=..10,team=!Lightning,tag=!IonStunned,tag=!ActivateTeravolt] at @s run execute as @s at @s run scoreboard players set @s TakeDamage 20
execute as @s at @s run execute as @e[type=player,distance=..10,team=!Lightning,tag=IonStunned,tag=!ActivateTeravolt] at @s run execute as @s at @s run effect give @s instant_damage 1 4 true
execute as @s at @s run execute as @e[type=!player,distance=..10,team=!Lightning,tag=IonStunned,tag=!ActivateTeravolt] at @s run execute as @s at @s run scoreboard players set @s TakeDamage 40