particle flame ~ ~ ~ 0.3 0.3 0.3 0 50 normal
effect give @e[distance=..1,team=!Fire,tag=!Salamander,predicate=!minecraft:effects/fire_resistance,type=player] instant_damage 1 0 true
scoreboard players set @e[distance=..1,team=!Fire,tag=!Salamander,predicate=!minecraft:effects/fire_resistance,type=!player] TakeDamage 5
execute if data storage minecraft:gamerule {mobGriefing:1b} run execute if data storage minecraft:gamerule {doFireTick:1b} run fill ~ ~ ~ ~ ~ ~ fire replace air