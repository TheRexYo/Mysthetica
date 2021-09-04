#################################################################################################
#Author: BronGhast014
#https://www.instagram.com/bronghast014/?hl=en
#https://www.youtube.com/channel/UCIcRQv3vxsl18xS2l2-0HYg
#Date: March. 20th 2019
#Version: 1.14 +
#Description: Sets Up BGSF++
#################################################################################################

scoreboard objectives add BGSF_direction dummy
scoreboard objectives add BGSF_rayCount dummy
scoreboard objectives add BGSF_success dummy
scoreboard objectives add BGSF_installed dummy

execute as @a run execute store success score @s BGSF_installed run scoreboard players get @s BGSF_installed
execute as @a[scores={BGSF_installed=0}] run tellraw @a [{"text":"Imported BronGhast014's Standard Library","color":"dark_purple"}]
