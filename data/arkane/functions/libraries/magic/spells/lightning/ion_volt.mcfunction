########## Ion Volt ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the spell "Ion Volt".
#
#--|Spell Data|--
#Description: Creates an AoE burst of electricity that deals no damage at first but stuns players, dealing heavy damage if they are already stunned this way.
#Effect: Slows nearby foes and deals damage to them, then displays impact particles and plays two sound effects to simulate an impact. 
##################################################
execute as @s at @s run tag @s add ActivateIonVolt
execute as @s at @s run execute as @e[tag=IonStunned,type=player,distance=..10,team=!Lightning,tag=!ActivateIonVolt] at @s run execute as @s at @s run effect give @s instant_damage 1 1 true
execute as @s at @s run execute as @e[tag=IonStunned,type=!player,distance=..10,team=!Lightning,tag=!ActivateIonVolt] at @s run execute as @s at @s run scoreboard players set @s TakeDamage 10
execute as @s at @s run execute as @e[tag=!IonStunned,distance=..10,team=!Lightning,tag=!ActivateIonVolt] at @s run execute as @s at @s run tag @s add IonStunned
execute as @s at @s run execute as @e[distance=..10,team=!Lightning,tag=!ActivateIonVolt] at @s run execute as @s at @s run scoreboard players set @s EffectDuration 200
#execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~1 ~1 ~1 0 1000 normal @a
#execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~2 ~1 ~2 0 1000 normal @a
#execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~3 ~1 ~3 0 1000 normal @a
#execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~4 ~1 ~4 0 1000 normal @a
#execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~5 ~1 ~5 0 1000 normal @a
#execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~6 ~1 ~6 0 1000 normal @a
#execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~7 ~1 ~7 0 1000 normal @a
#execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~8 ~1 ~8 0 1000 normal @a
#execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~9 ~1 ~9 0 1000 normal @a
#execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~10 ~1 ~10 0 1000 normal @a
#playsound entity.zombie.break_wooden_door hostile @a ~ ~ ~ 2 0.25 0
#playsound entity.generic.big_fall hostile @p ~ ~ ~ 2 0.25 0
execute as @s at @s run tag @s remove ActivateIonVolt