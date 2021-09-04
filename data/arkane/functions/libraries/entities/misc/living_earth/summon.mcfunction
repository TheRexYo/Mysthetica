########## Earthbind ##########
#--|File Information|--
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles the spell "Earthbind".
#
#--|Spell Data|--
#Description: Animates the ground around the caster to slow down all nearby entities and prevent jumping. 
#Effect: (TODO)
##################################################

execute as @s at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"block stone",CustomNameVisible:0b,ReapplicationDelay:0,Radius:5f,RadiusPerTick:0.025f,RadiusOnUse:0.05f,Duration:200,WaitTime:100,Tags:["LivingEarth"],Effects:[{Id:2b,Amplifier:1b,Duration:20,ShowParticles:0b}],CustomName:'{"text":"Living Earth"}'}