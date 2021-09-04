########## Magic Function ##########
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles, triggers, and facilitates magical effects within the game.
##################################################

##### Projectile Handling #####
execute as @e[tag=MagicMissile] at @s run execute as @s at @s if entity @e[distance=..2,tag=MagicMissile_Target] run execute as @s at @s run function arkane:libraries/magic/effects/magic_missile_explode
execute as @e[tag=MagicMissile_Target_Remove] at @s run execute as @s at @s run function arkane:libraries/magic/effects/magic_missile_target_remove

##### Spell Effects #####
execute as @e[tag=IonStunned,scores={EffectDuration=1..}] at @s run execute as @s at @s run effect give @s slowness 1 3 true
execute as @e[tag=IonStunned,scores={EffectDuration=1..}] at @s run execute as @s at @s run particle minecraft:dust 1 1 0 0.25 ~ ~ ~ 0.25 1 0.25 0 100 normal
execute as @e[tag=IonStunned,scores={EffectDuration=1..}] at @s run execute as @s at @s run scoreboard players remove @s EffectDuration 1
execute as @e[tag=IonStunned,scores={EffectDuration=..0}] at @s run execute as @s at @s run tag @s remove IonStunned
