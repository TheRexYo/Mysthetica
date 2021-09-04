execute as @s at @s run function shulker_bullet:shoot
execute as @s at @s run function shulker_bullet:shoot
execute as @s at @s run function shulker_bullet:shoot
#Summon first missile
#execute as @e[tag=CastMagicMissile] at @s run summon minecraft:shulker_bullet ^ ^ ^2 {CustomNameVisible:0b,Steps:0,CustomName:'{"text":"Magic Missile"}'}
#execute as @e[tag=CastMagicMissile] at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] owner.L set from entity @e[tag=!CastMagicMissile,type=!shulker_bullet,limit=1,sort=nearest] UUIDLeast
#execute as @e[tag=CastMagicMissile] at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] owner.M set from entity @e[tag=!CastMagicMissile,type=!shulker_bullet,limit=1,sort=nearest] UUIDMost
#execute as @e[tag=CastMagicMissile] at @s run tag @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned] add Summoned
#Summon second missile
#execute as @e[tag=CastMagicMissile] at @s run summon minecraft:shulker_bullet ^ ^1 ^1 {CustomNameVisible:0b,Steps:0,CustomName:'{"text":"Magic Missile"}'}
#execute as @e[tag=CastMagicMissile] at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] owner.L set from entity @e[tag=!CastMagicMissile,type=!shulker_bullet,limit=1,sort=nearest] UUIDLeast
#execute as @e[tag=CastMagicMissile] at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] owner.M set from entity @e[tag=!CastMagicMissile,type=!shulker_bullet,limit=1,sort=nearest] UUIDMost
#execute as @e[tag=CastMagicMissile] at @s run tag @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned] add Summoned
#Summon third missile
#execute as @e[tag=CastMagicMissile] at @s run summon minecraft:shulker_bullet ^ ^-1 ^1 {CustomNameVisible:0b,Steps:0,CustomName:'{"text":"Magic Missile"}'}
#execute as @e[tag=CastMagicMissile] at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] owner.L set from entity @e[tag=!CastMagicMissile,type=!shulker_bullet,limit=1,sort=nearest] UUIDLeast
#execute as @e[tag=CastMagicMissile] at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] owner.M set from entity @e[tag=!CastMagicMissile,type=!shulker_bullet,limit=1,sort=nearest] UUIDMost
#execute as @e[tag=CastMagicMissile] at @s run tag @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned] add Summoned