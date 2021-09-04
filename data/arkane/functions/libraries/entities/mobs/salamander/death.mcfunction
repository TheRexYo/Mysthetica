#################################################################################################
#Author: TheRexYo
#Date: 6/6/2019
#Version: 1.14 +
#Description: Controls what happens when the Occulus dies
#################################################################################################

execute as @s at @s run playsound minecraft:entity.salamander.death hostile @a ~ ~ ~ 1 1.0 1
kill @s
