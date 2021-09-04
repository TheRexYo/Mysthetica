#################################################################################################
#Author: BronGhast014
#http://bronghast014.weebly.com/
#https://www.youtube.com/channel/UCIcRQv3vxsl18xS2l2-0HYg
#Date: 6/13/2019
#Version: 1.14 +
#Description: Converts mob running this to a drowned
#################################################################################################

scoreboard players add @s CPP_drownd 1
execute as @s[scores={CPP_drownd=800..}] at @s run summon drowned ~ ~ ~ {Tags:["biome_determined"]}
execute as @s[scores={CPP_drownd=800..}] at @s run particle minecraft:bubble ~ ~ ~ 0.5 1 0.5 0 100
execute as @s[scores={CPP_drownd=800..}] at @s run tp @s ~ ~-600 ~
