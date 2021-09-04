#==================NOTE====================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------SETTINGS------------------#
kill @s
kill @e[distance=0,limit=1]
particle minecraft:dragon_breath ~ ~ ~ 0.4 0.5 0.4 0.01 10 normal
execute as @a[distance=..5] at @s run playsound minecraft:block.bamboo.hit master @s ~ ~ ~ 1 0 1
#------------------------------------------#