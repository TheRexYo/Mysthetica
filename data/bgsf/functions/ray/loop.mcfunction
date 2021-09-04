##############################################################################################################
# Author: BronGhast014
# Date: 3/14/18
##############################################################################################################

scoreboard players add @s BGSF_rayCount 1
execute unless block ~ ~ ~ #bgsf:void run scoreboard players set @s BGSF_rayCount 1111

#execute as @s[scores={BGSF_rayCount=1111..},gamemode=!creative] run replaceitem entity @s weapon.mainhand air
execute as @s[scores={BGSF_rayCount=1111..}] positioned ^ ^ ^-0.1 run function bgsf:ray/hit
execute as @s[scores={BGSF_rayCount=..60}] positioned ^ ^ ^0.1 run function bgsf:ray/loop
