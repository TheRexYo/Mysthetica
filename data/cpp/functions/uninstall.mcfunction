#################################################################################################
#Author: BronGhast014
#https://www.instagram.com/bronghast014/?hl=en
#https://www.youtube.com/channel/UCIcRQv3vxsl18xS2l2-0HYg
#Date: March. 20th 2019
#Version: 1.14 +
#Description: Uninstalls Creatures++
#################################################################################################

scoreboard objectives remove CPP_rand
scoreboard objectives remove CPP_drownd
scoreboard objectives remove CPP_rand2
scoreboard objectives remove CPP_hiding
scoreboard objectives remove CPP_shock
scoreboard objectives remove CPP_state
scoreboard objectives remove CPP_shockTime
scoreboard objectives remove CPP_hurtTime
scoreboard objectives remove CPP_spellTime
scoreboard objectives remove CPP_castTime
scoreboard objectives remove CPP_time
scoreboard objectives remove CPP_wasWet
scoreboard objectives remove CPP_isWet
scoreboard objectives remove CPP_installed
scoreboard objectives remove CPP_soundTime
scoreboard objectives remove CPP_bufferTime
scoreboard objectives remove CPP_findSpawner
scoreboard objectives remove CPP_Click

scoreboard objectives remove CPP_cutTree
scoreboard objectives remove CPP_mine1
scoreboard objectives remove CPP_mine2
scoreboard objectives remove CPP_mine3
scoreboard objectives remove CPP_mine4
scoreboard objectives remove CPP_mine5
scoreboard objectives remove CPP_mine6
scoreboard objectives remove CPP_mine7
scoreboard objectives remove CPP_mine8
scoreboard objectives remove CPP_mine9
scoreboard objectives remove CPP_mine10
scoreboard objectives remove CPP_mine11
scoreboard objectives remove CPP_mine12

team remove CPP_nullVillager
team remove CPP_nullPlayer

tp @e[tag=cpp_mob] ~ ~-600 ~
tp @e[type=armor_stand,nbt={ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b}]}] ~ ~-600 ~

advancement revoke @a only cpp:root
tellraw @a {"text":"Uninstalled!","color":"dark_red"}
tellraw @a {"text":"To complete the process please remove the datapack and resources.zip from your world folder","color":"yellow"}
