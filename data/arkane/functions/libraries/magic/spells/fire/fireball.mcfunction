########## Call Lightning ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the spell "Call Lightning".
#
#--|Spell Data|--
#Description: Changes the weather to a lightning storm for 2 minutes.
#Effect: (TODO)
##################################################

execute as @s at @s run summon fireball ~ ~1.5 ~ {Motion:[25.0,0.0,0.0],direction:[0.0,0.0,0.0],ExplosionPower:1b,power:[0.0,-0.0002,0.0]}