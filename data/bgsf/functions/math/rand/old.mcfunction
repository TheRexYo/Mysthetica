scoreboard objectives add rand_seed dummy
scoreboard objectives add rand_multiplier dummy
scoreboard objectives add rand_divider dummy
scoreboard objectives add rand_max dummy
scoreboard objectives add rand_result dummy

#################################################

scoreboard players set @s rand_multiplier 6579
scoreboard players set @s rand_divider 165247
scoreboard players set @s rand_max 11
scoreboard players set @s rand_result 0

summon tropical_fish ~ ~ ~
data merge entity @e[type=tropical_fish,limit=1,sort=nearest] {Silent:1b,NoAI:1b,Tags:["seeding"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20}]}
execute store result score @s rand_seed run data get entity @e[tag=seeding,limit=1,sort=nearest] Variant
execute as @s run tp @e[tag=seeding,limit=1,sort=nearest] ~ ~-1000 ~

scoreboard players operation @s rand_seed *= @s rand_multiplier
scoreboard players operation @s rand_seed %= @s rand_divider
scoreboard players operation @s rand_result = @s rand_seed
scoreboard players operation @s rand_result %= @s rand_max