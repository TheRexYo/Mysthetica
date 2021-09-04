execute unless data storage arkane:utils {Loaded:"True"} run function arkane:load
function arkane:libraries/magic/magicfunction
function arkane:libraries/magic/effects/effectfunction
function arkane:libraries/entities/entityfunction
function arkane:libraries/crafting/craftingfunction
function arkane:libraries/rituals/ritualfunction
function arkane:libraries/display/displayfunction

execute store result storage minecraft:gamerule mobGriefing byte 1 run gamerule mobGriefing
execute store result storage minecraft:gamerule doFireTick byte 1 run gamerule doFireTick
execute as @e[type=item,nbt={item:{id:"minecraft:blaze_powder"}}] at @s run execute as @s at @s run data merge entity @s {Fire:-1,Invulnerable:1}
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:1b,tag:{LivingFire:1b}}}] at @s run execute as @s at @s run execute if block ~ ~-1 ~ minecraft:campfire run function arkane:libraries/rituals/fire/main
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:1b,tag:{LivingFire:1b}}}] at @s run execute as @s at @s run execute if block ~ ~-2 ~ minecraft:campfire run function arkane:libraries/rituals/fire/main
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",Count:1b,tag:{LivingFire:1b}}}] at @s run execute as @s at @s run execute if block ~ ~ ~ minecraft:campfire run function arkane:libraries/rituals/fire/main

execute as @a[scores={Use_WrittenBook=1..}] at @s run scoreboard players reset @s Use_WrittenBook
execute as @a[scores={Use_WrittenBook=..0}] at @s run scoreboard players reset @s Use_WrittenBook

#function arkane:libraries/legacy/handle_fire

