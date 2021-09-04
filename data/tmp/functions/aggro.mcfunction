execute as @s at @s run summon snowball ~ ~ ~ {Tags:["Aggro_Temp"]}
execute as @s at @s run data modify entity @e[type=snowball,tag=Aggro_Temp,limit=1] Owner set from entity @s UUID
execute as @s at @s run tp @e[type=snowball,tag=Aggro_Temp,limit=1] @e[tag=Aggro,limit=1,sort=nearest]
execute as @s at @s run execute as @e[tag=Aggro,limit=1,sort=nearest] at @s run tag @s remove Aggro
execute as @s at @s run execute as @e[type=snowball,tag=Aggro_Temp,limit=1] at @s run kill @s
