########## Lightning Bolt ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the spell "Lightning Bolt".
#
#--|Spell Data|--
#Description: (TODO)
#Effect: (TODO)
##################################################

execute as @s at @s run summon fireball ~ ~1 ~ {Motion:[0.0,-1.0,0.0],direction:[0.0d,-1.5d,0.0],ExplosionPower:5b}
execute as @s at @s run summon fireball ~-7.5 ~1 ~7.5 {Motion:[15.0,-1.5,0.0],direction:[5.0d,-1.5d,0.0],ExplosionPower:2b}
execute as @s at @s run summon fireball ~7.5 ~1 ~-7.5 {Motion:[15.0,-1.5,0.0],direction:[5.0d,-1.5d,0.0],ExplosionPower:2b}
execute as @s at @s run summon fireball ~7.5 ~1 ~7.5 {Motion:[15.0,-1.5,0.0],direction:[5.0d,-1.5d,0.0],ExplosionPower:2b}
execute as @s at @s run summon fireball ~-7.5 ~1 ~-7.5 {Motion:[15.0,-1.5,0.0],direction:[5.0d,-1.5d,0.0],ExplosionPower:2b}
execute as @s at @s run summon fireball ~7.5 ~1 ~ {Motion:[15.0,-1.5,0.0],direction:[5.0d,-1.5d,0.0],ExplosionPower:2b}
execute as @s at @s run summon fireball ~-7.5 ~1 ~ {Motion:[15.0,-1.5,0.0],direction:[5.0d,-1.5d,0.0],ExplosionPower:2b}
execute as @s at @s run summon fireball ~ ~1 ~7.5 {Motion:[15.0,-1.5,0.0],direction:[5.0d,-1.5d,0.0],ExplosionPower:2b}
execute as @s at @s run summon fireball ~ ~1 ~-7.5 {Motion:[15.0,-1.5,0.0],direction:[5.0d,-1.5d,0.0],ExplosionPower:2b}
execute as @s at @s run playsound minecraft:entity.enderdragon_fireball.explode master @a ~ ~ ~ 10 0.2 1