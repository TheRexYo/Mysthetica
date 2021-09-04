#execute as @s at @s run tp @s ^ ^ ^3
#TODO: Improve the accuracy of damage done to the player.
execute as @s at @s facing entity @e[distance=..5,team=!Earth,tag=!EarthElementalOwner,tag=!EarthElemental,limit=1,sort=nearest] eyes run tp @s ^ ^ ^5
execute as @s at @s run execute as @e[type=player,distance=..5,team=!Earth,tag=!EarthElementalOwner,tag=!EarthElemental] at @s run execute as @s at @s run effect give @s instant_damage 1 0 true
execute as @s at @s run execute as @e[type=!player,distance=..5,team=!Earth,tag=!EarthElementalOwner,tag=!EarthElemental] at @s run execute as @s at @s run scoreboard players set @s TakeDamage 5
execute as @s at @s run effect give @e[distance=..5,team=!Earth,tag=!EarthElementalOwner,tag=!EarthElemental] minecraft:slowness 2 5 true
execute as @s at @s run particle dust 0.600 0.373 0.259 10 ~ ~ ~ 5 5 5 1 50 normal
execute as @s at @s run playsound entity.zombie.break_wooden_door hostile @a[distance=..10] ~ ~ ~ 2 0.05 0
execute as @s at @s run playsound entity.generic.big_fall hostile @a[distance=..10] ~ ~ ~ 2 0.5 0