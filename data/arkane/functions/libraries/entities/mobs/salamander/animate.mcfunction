#################################################################################################
#Author: BronGhast014
#http://bronghast014.weebly.com/
#https://www.youtube.com/channel/UCIcRQv3vxsl18xS2l2-0HYg
#Date: 6/6/2019
#Version: 1.14 +
#Description: Animates the Frozen Creeper
#################################################################################################

item replace entity @s[tag=!wet,tag=!hurt] armor.head with structure_void{CustomModelData:10000001} 1
item replace entity @s[tag=!wet,tag=hurt] armor.head with structure_void{CustomModelData:10000001} 1
item replace entity @s[tag=!wet,tag=search] armor.head with structure_void{CustomModelData:10000001} 1
item replace entity @s[tag=wet,tag=!search,tag=!hurt] armor.head with water_bucket{CustomModelData:10000001} 1
item replace entity @s[tag=wet,tag=search] armor.head with water_bucket{CustomModelData:10000001} 1
item replace entity @s[tag=wet,tag=!search,tag=hurt] armor.head with lava_bucket{CustomModelData:10000001} 1
execute as @s at @s run execute as @s at @s run item replace entity @s[tag=!Hurt,tag=Moving] armor.head with structure_void{CustomModelData:10000001} 1
execute as @s at @s run execute as @s at @s run item replace entity @s[tag=!Hurt,tag=!Moving] armor.head with structure_void{CustomModelData:10000001} 1
execute as @s at @s run execute as @s at @s run item replace entity @s[tag=Hurt] armor.head with structure_void{CustomModelData:10000001} 1
execute as @s at @s run execute as @s at @s run item replace entity @s[tag=fuse,tag=!Moving] armor.head with structure_void{CustomModelData:10000001} 1
execute as @s at @s run execute as @s at @s run item replace entity @s[tag=fuse,tag=Moving] armor.head with structure_void{CustomModelData:10000001} 1