#################################################################################################
#Author: BronGhast014
#http://bronghast014.weebly.com/
#https://www.youtube.com/channel/UCIcRQv3vxsl18xS2l2-0HYg
#Date: 6/6/2019
#Version: 1.14 +
#Description: Runs the Frozen Creeper
#################################################################################################
execute as @s at @s run tag @s remove Salamander
execute as @s at @s run execute as @s at @s run tag @s remove Hurt
execute as @s at @s run execute as @s at @s run tag @s remove Moving
execute as @s at @s positioned as @s positioned ~ ~-1.4626 ~ if entity @e[tag=Hurt,tag=Salamander,limit=1,distance=0..0.0001] run execute as @s at @s run tag @s add Hurt
execute as @s at @s positioned as @s positioned ~ ~-1.4626 ~ if entity @e[tag=Moving,tag=Salamander,limit=1,distance=0..0.0001] run execute as @s at @s run tag @s add Moving
execute as @s at @s run execute as @s at @s run tp @s @e[tag=Salamander,limit=1,distance=0..1.4626,sort=nearest]
execute as @s at @s run execute as @s at @s run execute store result entity @s Rotation[0] float 1 run data get entity @e[tag=Salamander,limit=1,distance=0..1.4626,sort=nearest] Rotation[0]
execute as @s at @s unless entity @e[tag=Salamander,distance=0..1.4626] run execute as @s at @s run function arkane:libraries/entities/mobs/salamander/death
execute as @s at @s run execute as @s at @s run item replace entity @s[tag=!Hurt,tag=Moving] armor.head with structure_void{CustomModelData:10000001} 1
execute as @s at @s run execute as @s at @s run item replace entity @s[tag=!Hurt,tag=!Moving] armor.head with structure_void{CustomModelData:10000001} 1
execute as @s at @s run execute as @s at @s run item replace entity @s[tag=Hurt] armor.head with structure_void{CustomModelData:10000001} 1
execute as @s at @s run execute as @s at @s run item replace entity @s[tag=fuse,tag=!Moving] armor.head with structure_void{CustomModelData:10000001} 1
execute as @s at @s run execute as @s at @s run item replace entity @s[tag=fuse,tag=Moving] armor.head with structure_void{CustomModelData:10000001} 1