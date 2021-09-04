##############################################################################################################
# Author: BronGhast014
# Date: 3/14/18
##############################################################################################################

scoreboard players set @s[tag=wet] CPP_wasWet 1

tag @s remove hurt
tag @s remove wet
tag @s add moving

tag @s[nbt={HurtTime:10s}] add hurt
tag @s[nbt={HurtTime:9s}] add hurt
tag @s[nbt={HurtTime:8s}] add hurt
tag @s[nbt={HurtTime:7s}] add hurt
tag @s[nbt={HurtTime:6s}] add hurt
tag @s[nbt={HurtTime:5s}] add hurt
tag @s[nbt={HurtTime:4s}] add hurt
tag @s[nbt={HurtTime:3s}] add hurt
tag @s[nbt={HurtTime:2s}] add hurt
tag @s[nbt={HurtTime:1s}] add hurt

tag @s[nbt={Motion:[0.0d,0.0d,0.0d]}] remove moving

execute at @s as @s if block ~ ~ ~ water run tag @s add wet
execute at @s as @s if block ~ ~1 ~ water run tag @s add wet
execute at @s as @s if block ~ ~2 ~ water run tag @s add wet

scoreboard players set @s[scores={CPP_wasWet=1},tag=!wet] CPP_isWet 2
scoreboard players set @s[scores={CPP_wasWet=0},tag=wet] CPP_isWet 1
