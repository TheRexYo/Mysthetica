#################################################################################################
#Author: BronGhast014
#https://www.instagram.com/bronghast014/?hl=en
#https://www.youtube.com/channel/UCIcRQv3vxsl18xS2l2-0HYg
#Date: March. 20th 2019
#Version: 1.14 +
#Description: Sets Up Creatures++
#################################################################################################

scoreboard objectives add CPP_rand dummy
scoreboard objectives add CPP_drownd dummy
scoreboard objectives add CPP_rand2 dummy
scoreboard objectives add CPP_hiding dummy
scoreboard objectives add CPP_shock dummy
scoreboard objectives add CPP_state dummy
scoreboard objectives add CPP_shockTime dummy
scoreboard objectives add CPP_hurtTime dummy
scoreboard objectives add CPP_spellTime dummy
scoreboard objectives add CPP_castTime dummy
scoreboard objectives add CPP_wasWet dummy
scoreboard objectives add CPP_isWet dummy
scoreboard objectives add CPP_time dummy
scoreboard objectives add CPP_installed dummy
scoreboard objectives add CPP_soundTime dummy
scoreboard objectives add CPP_bufferTime dummy
scoreboard objectives add CPP_findSpawner dummy
scoreboard objectives add CPP_Click minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add CPP_cutTree dummy
scoreboard objectives add CPP_mine1 minecraft.mined:minecraft.acacia_log
scoreboard objectives add CPP_mine2 minecraft.mined:minecraft.oak_log
scoreboard objectives add CPP_mine3 minecraft.mined:minecraft.birch_log
scoreboard objectives add CPP_mine4 minecraft.mined:minecraft.jungle_log
scoreboard objectives add CPP_mine5 minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add CPP_mine6 minecraft.mined:minecraft.spruce_log
scoreboard objectives add CPP_mine7 minecraft.mined:minecraft.acacia_sapling
scoreboard objectives add CPP_mine8 minecraft.mined:minecraft.oak_sapling
scoreboard objectives add CPP_mine9 minecraft.mined:minecraft.birch_sapling
scoreboard objectives add CPP_mine10 minecraft.mined:minecraft.jungle_sapling
scoreboard objectives add CPP_mine11 minecraft.mined:minecraft.dark_oak_sapling
scoreboard objectives add CPP_mine12 minecraft.mined:minecraft.spruce_sapling

team add CPP_nullVillager "CPPVILL"
team add CPP_nullPlayer "CPPPLAY"

function bgsf:setup

execute as @a run execute store success score @s CPP_installed run scoreboard players get @s CPP_installed
execute as @a[scores={CPP_installed=0}] run tellraw @a ["",{"text":"Creatures++ 3.0 for Minecraft 1.14 by BronGhast014 has been installed!\nGet help ","color":"dark_green"},{"text":"HERE","color":"dark_red","clickEvent":{"action":"run_command","value":"/function cpp:help"}}]
execute as @a[scores={CPP_installed=1..}] run tellraw @a {"text":"Reloaded!","color":"dark_green"}

advancement grant @a only cpp:root
