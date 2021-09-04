execute as @s at @s run scoreboard players set @s RNG2 100
execute as @s at @s run function rng2:get_random
execute as @s at @s run execute if entity @e[nbt={Item:{id:"minecraft:rabbit_foot"}},type=item,distance=..1,predicate=arkane:on_cauldron] run function arkane:libraries/rituals/cauldron/thick/invocations/drops/luck_potion
execute as @s at @s run execute if entity @e[nbt={Item:{id:"minecraft:rabbit_foot"}},type=item,distance=..1,predicate=arkane:on_cauldron] run tag @s add Successful
execute as @s at @s run execute if entity @e[nbt={Item:{id:"minecraft:rabbit_foot"}},type=item,distance=..1,predicate=arkane:on_cauldron] run kill @e[nbt={Item:{id:"minecraft:rabbit_foot"}},type=item,distance=..1,predicate=arkane:on_cauldron,limit=1,sort=random]
execute as @s at @s run execute as @s[scores={NUM=0..95},tag=!Successful] at @s run function arkane:libraries/rituals/cauldron/thick/invocations/return_to_sender
execute as @s at @s run execute as @s[scores={NUM=96..100},tag=!Successful] at @s run function arkane:libraries/rituals/cauldron/thick/mishaps/destroy_item
execute as @s at @s run execute as @s[tag=Successful] at @s run tag @s remove Successful