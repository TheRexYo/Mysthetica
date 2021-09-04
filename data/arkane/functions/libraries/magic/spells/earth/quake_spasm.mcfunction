########## Summon Earth Elemental ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the spell "Quake Spasm".
#
#--|Spell Data|--
#Description: Creates an AoE burst of solid earth around the caster, similar to the "Impact" ability of the Earth Elemental, but much stronger.
#Effect: Slows nearby foes and deals damage to them, then displays impact particles and plays two sound effects to simulate an impact. 
##################################################
execute as @s at @s run tag @s add ActivateQuakeSpasm
execute as @s at @s run execute as @e[distance=..10,team=!Earth,tag=!ActivateQuakeSpasm,tag=!EarthElemental] at @s run execute as @s at @s run effect give @s slowness 2 4 true
execute as @s at @s run execute as @e[type=player,distance=..10,team=!Earth,tag=!ActivateQuakeSpasm,tag=!EarthElemental] at @s run execute as @s at @s run effect give @s instant_damage 1 2 true
execute as @s at @s run execute as @e[type=!player,distance=..10,team=!Earth,tag=!ActivateQuakeSpasm,tag=!EarthElemental] at @s run execute as @s at @s run scoreboard players set @s TakeDamage 10
execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~1 ~1 ~1 0 1000 normal @a
execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~2 ~1 ~2 0 1000 normal @a
execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~3 ~1 ~3 0 1000 normal @a
execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~4 ~1 ~4 0 1000 normal @a
execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~5 ~1 ~5 0 1000 normal @a
execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~6 ~1 ~6 0 1000 normal @a
execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~7 ~1 ~7 0 1000 normal @a
execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~8 ~1 ~8 0 1000 normal @a
execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~9 ~1 ~9 0 1000 normal @a
execute as @s at @s run particle minecraft:block dirt ~ ~ ~ ~10 ~1 ~10 0 1000 normal @a
playsound entity.zombie.break_wooden_door hostile @a ~ ~ ~ 2 0.25 0
playsound entity.generic.big_fall hostile @p ~ ~ ~ 2 0.25 0
execute as @s at @s run tag @s remove ActivateQuakeSpasm