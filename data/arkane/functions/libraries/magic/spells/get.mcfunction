########## Magic Function ##########
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles, triggers, and facilitates spells and similar effects within the game.
##################################################

##### Spells #####
# Lightning Bolt
execute as @a[predicate=arkane:spells/lightning_bolt,tag=!Cast_LightningBolt,scores={Mana=25..}] at @s run execute as @s at @s run tag @s add Cast_LightningBolt

# Ion Volt
execute as @a[predicate=arkane:spells/ion_volt,tag=!Cast_IonVolt,scores={Mana=50..}] at @s run execute as @s at @s run tag @s add Cast_IonVolt

# Teravolt
execute as @a[predicate=arkane:spells/teravolt,tag=!Cast_Teravolt,scores={Mana=75..}] at @s run execute as @s at @s run tag @s add Cast_Teravolt

# Fireball
execute as @a[predicate=arkane:spells/fireball,tag=!Cast_Fireball,scores={Mana=25..}] at @s run execute as @s at @s run tag @s add Cast_Fireball

# Inferno
execute as @a[predicate=arkane:spells/inferno,tag=!Cast_Inferno,scores={Mana=50..}] at @s run execute as @s at @s run tag @s add Cast_Inferno

# Firebomb
execute as @a[predicate=arkane:spells/firebomb,tag=!Cast_Firebomb,scores={Mana=75..}] at @s run execute as @s at @s run tag @s add Cast_Firebomb

# Summon Dust Devil
execute as @a[predicate=arkane:spells/summon_dust_devil,tag=!Cast_SummonDustDevil,scores={Mana=25..}] at @s run execute as @s at @s run tag @s add Cast_SummonDustDevil

# Earthbind
execute as @a[predicate=arkane:spells/earthbind,tag=!Cast_Earthbind,scores={Mana=25..}] at @s run execute as @s at @s run tag @s add Cast_Earthbind

# Quake Spasm
execute as @a[predicate=arkane:spells/quake_spasm,tag=!Cast_QuakeSpasm,scores={Mana=50..}] at @s run execute as @s at @s run tag @s add Cast_QuakeSpasm

# Summon Earth Elemental
execute as @a[predicate=arkane:spells/summon_earth_elemental,tag=!Cast_SummonEarthElemental,scores={Mana=75..}] at @s run execute as @s at @s run tag @s add Cast_SummonEarthElemental

# Light
execute as @a[predicate=arkane:spells/light,tag=!Cast_Light,scores={Mana=15..}] at @s run execute as @s at @s run tag @s add Cast_Light

# Bubble Spray
execute as @a[predicate=arkane:spells/bubble_spray,tag=!Cast_BubbleSpray,scores={Mana=15..}] at @s run execute as @s at @s run tag @s add Cast_BubbleSpray

# Radiant Sight
execute as @a[predicate=arkane:spells/radiant_sight,tag=!Cast_RadiantSight,scores={Mana=25..}] at @s run execute as @s at @s run tag @s add Cast_RadiantSight

# Magic Missile (UNFINISHED)

#### LEGACY RITUALS ####

# Conjure Carrot
execute as @a[predicate=arkane:spells/conjure_carrot,tag=!Cast_ConjureCarrot,scores={Mana=5..}] at @s run execute as @s at @s run tag @s add Cast_ConjureCarrot

# Summon Snow Golem
execute as @a[predicate=arkane:spells/summon_snow_golem,tag=!Cast_SummonSnowGolem,scores={Mana=25..}] at @s run execute as @s at @s run tag @s add Cast_SummonSnowGolem

#### RITUALS ####
