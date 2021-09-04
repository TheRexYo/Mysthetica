# Crafting Starts
execute as @s at @s run scoreboard players set @s RNG2 100
execute as @s at @s run function rng2:get_random
execute as @s at @s run execute as @s[scores={NUM=0..50}] at @s run function arkane:libraries/rituals/cauldron/thick/results/mishap
execute as @s at @s run execute as @s[scores={NUM=51..100}] at @s run function arkane:libraries/rituals/cauldron/thick/results/invoke
execute as @s at @s run kill @s[tag=!Result_NoDestroy]
execute as @s at @s run execute as @s[tag=Result_NoDestroy] run tag @s remove Result_NoDestroy
