execute as @s as @s unless block ~ ~ ~ minecraft:water run effect give @s water_breathing 60 0 true
execute as @s as @s if block ~ ~ ~ minecraft:water run effect give @s jump_boost 60 1 true
execute as @s at @s unless predicate utilities:effects/jump_boost run effect give @s wither 1 0 true