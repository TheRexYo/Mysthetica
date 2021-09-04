execute as @s at @s run function shulker_bullet:shoot
execute as @s at @s run function shulker_bullet:shoot
execute as @s at @s run function shulker_bullet:shoot
#Summon first missile
#execute as @s at @s run summon minecraft:shulker_bullet ^ ^ ^2 {CustomNameVisible:0b,Steps:10,Owner:{X:0,Y:0,Z:0,L:0L,M:0L},Target:{X:0,Y:0,Z:0,L:0L,M:0L},Tags:["MagicMissile"],NoGravity:1b,CustomName:'{"text":"Magic Missile"}',TXD:0,TYD:0,TZD:0}
#execute as @s at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] Target.X set from entity @e[tag=!Cast_MagicMissile,type=!shulker_bullet,limit=1,sort=nearest] Pos[0]
#execute as @s at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] Target.Y set from entity @e[tag=!Cast_MagicMissile,type=!shulker_bullet,limit=1,sort=nearest] Pos[1]
#execute as @s at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] Target.Z set from entity @e[tag=!Cast_MagicMissile,type=!shulker_bullet,limit=1,sort=nearest] Pos[2]
#execute as @s at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] Target.L set from entity @e[tag=!Cast_MagicMissile,type=!shulker_bullet,limit=1,sort=nearest] UUIDLeast
#execute as @s at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] Target.M set from entity @e[tag=!Cast_MagicMissile,type=!shulker_bullet,limit=1,sort=nearest] UUIDMost
#execute as @s at @s run execute store result entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] Target.L long 1 run data get entity @e[tag=!Cast_MagicMissile,type=!shulker_bullet,limit=1,sort=nearest] UUIDLeast
#execute as @s at @s run execute store result entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] Target.M long 1 run data get entity @e[tag=!Cast_MagicMissile,type=!shulker_bullet,limit=1,sort=nearest] UUIDMost
#execute as @s at @s run tag @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned] add Summoned
#Summon second missile
#execute as @s at @s run summon minecraft:shulker_bullet ^1 ^ ^1 {CustomNameVisible:0b,Steps:10,Owner:{X:0,Y:0,Z:0,L:0L,M:0L},Target:{X:0,Y:0,Z:0,L:0L,M:0L},Tags:["MagicMissile"],NoGravity:1b,CustomName:'{"text":"Magic Missile"}',TXD:0,TYD:0,TZD:0}
#execute as @s at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] Target.X set from entity @e[tag=!Cast_MagicMissile,type=!shulker_bullet,limit=1,sort=nearest] Pos[0]
#execute as @s at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] Target.Y set from entity @e[tag=!Cast_MagicMissile,type=!shulker_bullet,limit=1,sort=nearest] Pos[1]
#execute as @s at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] Target.Z set from entity @e[tag=!Cast_MagicMissile,type=!shulker_bullet,limit=1,sort=nearest] Pos[2]
#execute as @s at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] Target.L set from entity @e[tag=!Cast_MagicMissile,type=!shulker_bullet,limit=1,sort=nearest] UUIDLeast
#execute as @s at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] Target.M set from entity @e[tag=!Cast_MagicMissile,type=!shulker_bullet,limit=1,sort=nearest] UUIDMost
#execute as @s at @s run tag @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned] add Summoned
#Summon third missile
#execute as @s at @s run summon minecraft:shulker_bullet ^-1 ^ ^1 {CustomNameVisible:0b,Steps:10,Owner:{X:0,Y:0,Z:0,L:0L,M:0L},Target:{X:0,Y:0,Z:0,L:0L,M:0L},Tags:["MagicMissile"],NoGravity:1b,CustomName:'{"text":"Magic Missile"}',TXD:0,TYD:0,TZD:0}
#execute as @s at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] Target.X set from entity @e[tag=!Cast_MagicMissile,type=!shulker_bullet,limit=1,sort=nearest] Pos[0]
#execute as @s at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] Target.Y set from entity @e[tag=!Cast_MagicMissile,type=!shulker_bullet,limit=1,sort=nearest] Pos[1]
#execute as @s at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] Target.Z set from entity @e[tag=!Cast_MagicMissile,type=!shulker_bullet,limit=1,sort=nearest] Pos[2]
#execute as @s at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] Target.L set from entity @e[tag=!Cast_MagicMissile,type=!shulker_bullet,limit=1,sort=nearest] UUIDLeast
#execute as @s at @s run data modify entity @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned,sort=nearest,limit=1] Target.M set from entity @e[tag=!Cast_MagicMissile,type=!shulker_bullet,limit=1,sort=nearest] UUIDMost
#execute as @s at @s run tag @e[type=shulker_bullet,tag=MagicMissile,tag=!Summoned] add Summoned