#Crimson Tardis

summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["RNG2"]}
scoreboard players add @e[type=area_effect_cloud,tag=RNG2,distance=..1] NUM 1
scoreboard players remove @s RNG2 1

execute as @s[scores={RNG2=1..}] at @s run function rng2:number
execute as @s[scores={RNG2=..0}] at @s run function rng2:random