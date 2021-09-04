########## Magic Function ##########
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles, triggers, and facilitates spells and similar effects within the game.
##################################################

##### Spells #####
#Summon Earth Elemental
execute as @a[tag=Cast_SummonEarthElemental,scores={Mana=75..}] at @s run execute as @s at @s run function arkane:libraries/magic/spells/earth/summon_earth_elemental
execute as @a[tag=Cast_SummonEarthElemental,scores={Mana=75..}] at @s run execute as @s at @s run scoreboard players remove @s Mana 75
execute as @a[tag=Cast_SummonEarthElemental] at @s run execute as @s at @s run tag @s remove Cast_SummonEarthElemental

#Summon Dust Devil
execute as @a[tag=Cast_SummonDustDevil,scores={Mana=25..}] at @s run execute as @s at @s run function arkane:libraries/magic/spells/earth/summon_dust_devil
execute as @a[tag=Cast_SummonDustDevil,scores={Mana=25..}] at @s run execute as @s at @s run scoreboard players remove @s Mana 25
execute as @a[tag=Cast_SummonDustDevil] at @s run execute as @s at @s run tag @s remove Cast_SummonDustDevil

#Earthbind
execute as @a[tag=Cast_Earthbind,scores={Mana=25..}] at @s run execute as @s at @s run function arkane:libraries/magic/spells/earth/earthbind
execute as @a[tag=Cast_Earthbind,scores={Mana=25..}] at @s run execute as @s at @s run scoreboard players remove @s Mana 25
execute as @a[tag=Cast_Earthbind] at @s run execute as @s at @s run tag @s remove Cast_Earthbind

#Quake Spasm
execute as @a[tag=Cast_QuakeSpasm,scores={Mana=50..}] at @s run execute as @s at @s run function arkane:libraries/magic/spells/earth/quake_spasm
execute as @a[tag=Cast_QuakeSpasm,scores={Mana=50..}] at @s run execute as @s at @s run scoreboard players remove @s Mana 50
execute as @a[tag=Cast_QuakeSpasm] at @s run execute as @s at @s run tag @s remove Cast_QuakeSpasm

#Magic Missile
execute as @a[tag=Cast_MagicMissile,scores={Mana=25..}] at @s run execute as @s at @s run function arkane:libraries/magic/spells/generic/magic_missile
execute as @a[tag=Cast_MagicMissile,scores={Mana=25..}] at @s run execute as @s at @s run scoreboard players remove @s Mana 25
execute as @a[tag=Cast_MagicMissile] at @s run execute as @s at @s run tag @s remove Cast_MagicMissile

#Ion Volt
execute as @a[tag=Cast_IonVolt,scores={Mana=50..}] at @s run execute as @s at @s run function arkane:libraries/magic/spells/lightning/ion_volt
execute as @a[tag=Cast_IonVolt,scores={Mana=50..}] run execute as @s at @s run scoreboard players remove @s Mana 50
execute as @a[tag=Cast_IonVolt] at @s run execute as @s at @s run tag @s remove Cast_IonVolt

#Teravolt
execute as @a[tag=Cast_Teravolt,scores={Mana=75..}] at @s run execute as @s at @s run function arkane:libraries/magic/spells/lightning/teravolt
execute as @a[tag=Cast_Teravolt,scores={Mana=75..}] run execute as @s at @s run scoreboard players remove @s Mana 75
execute as @a[tag=Cast_Teravolt] at @s run execute as @s at @s run tag @s remove Cast_Teravolt

#Lightning Bolt
execute as @a[tag=Cast_LightningBolt,scores={Mana=25..}] at @s run execute as @s at @s run function arkane:libraries/magic/spells/lightning/lightning_bolt
execute as @a[tag=Cast_LightningBolt,scores={Mana=25..}] run execute as @s at @s run scoreboard players remove @s Mana 25
execute as @a[tag=Cast_LightningBolt] at @s run execute as @s at @s run tag @s remove Cast_LightningBolt

#Fireball
execute as @a[tag=Cast_Fireball,scores={Mana=25..}] at @s run execute as @s at @s run function arkane:libraries/magic/spells/fire/fireball
execute as @a[tag=Cast_Fireball,scores={Mana=25..}] run execute as @s at @s run scoreboard players remove @s Mana 25
execute as @a[tag=Cast_Fireball] at @s run execute as @s at @s run tag @s remove Cast_Fireball

#Inferno
execute as @a[tag=Cast_Inferno,scores={Mana=50..}] at @s run execute as @s at @s run function arkane:libraries/magic/spells/fire/inferno
execute as @a[tag=Cast_Inferno,scores={Mana=50..}] run execute as @s at @s run scoreboard players remove @s Mana 50
execute as @a[tag=Cast_Inferno] at @s run execute as @s at @s run tag @s remove Cast_Inferno

#Firebomb
execute as @a[tag=Cast_Firebomb,scores={Mana=75..}] at @s run execute as @s at @s run function arkane:libraries/magic/spells/fire/firebomb
execute as @a[tag=Cast_Firebomb,scores={Mana=75..}] run execute as @s at @s run scoreboard players remove @s Mana 75
execute as @a[tag=Cast_Firebomb] at @s run execute as @s at @s run tag @s remove Cast_Firebomb

#Winter's Grasp
execute as @a[tag=Cast_WintersGrasp,scores={Mana=50..}] at @s run execute as @s at @s run function arkane:libraries/magic/spells/ice/winters_grasp
execute as @a[tag=Cast_WintersGrasp,scores={Mana=50..}] run execute as @s at @s run scoreboard players remove @s Mana 50
execute as @a[tag=Cast_WintersGrasp] at @s run execute as @s at @s run tag @s remove Cast_WintersGrasp

#Light
execute as @a[tag=Cast_Light,scores={Mana=15..}] at @s run execute as @s at @s run function arkane:libraries/magic/spells/light/light
execute as @a[tag=Cast_Light,scores={Mana=15..}] run execute as @s at @s run scoreboard players remove @s Mana 15
execute as @a[tag=Cast_Light] at @s run execute as @s at @s run tag @s remove Cast_Light

#Radiant Sight
execute as @a[tag=Cast_RadiantSight,scores={Mana=25..}] at @s run execute as @s at @s run function arkane:libraries/magic/spells/light/radiant_sight
execute as @a[tag=Cast_RadiantSight,scores={Mana=25..}] run execute as @s at @s run scoreboard players remove @s Mana 25
execute as @a[tag=Cast_RadiantSight] at @s run execute as @s at @s run tag @s remove Cast_RadiantSight

#Bubble Spray
execute as @a[tag=Cast_BubbleSpray,scores={Mana=15..}] at @s run execute as @s at @s run function arkane:libraries/magic/spells/water/bubble_spray
execute as @a[tag=Cast_BubbleSpray,scores={Mana=15..}] run execute as @s at @s run scoreboard players remove @s Mana 15
execute as @a[tag=Cast_BubbleSpray] at @s run execute as @s at @s run tag @s remove Cast_BubbleSpray

#Conjure Carrot
execute as @a[tag=Cast_ConjureCarrot,scores={Mana=5..}] at @s run execute as @s at @s run function arkane:libraries/magic/spells/generic/summon_items/conjure_carrot
execute as @a[tag=Cast_ConjureCarrot,scores={Mana=5..}] run execute as @s at @s run scoreboard players remove @s Mana 5
execute as @a[tag=Cast_ConjureCarrot] at @s run execute as @s at @s run tag @s remove Cast_ConjureCarrot

#Summon Snow Golem
execute as @a[tag=Cast_SummonSnowGolem,scores={Mana=25..}] at @s run execute as @s at @s run function arkane:libraries/magic/spells/ice/summon_snow_golem
execute as @a[tag=Cast_SummonSnowGolem,scores={Mana=25..}] run execute as @s at @s run scoreboard players remove @s Mana 25
execute as @a[tag=Cast_SummonSnowGolem] at @s run execute as @s at @s run tag @s remove Cast_SummonSnowGolem

##### Wands and Staffs #####
### Holding Start Functions ###
execute as @a[nbt={SelectedItem:{id:"minecraft:stick",tag:{BubbleWand:1}}},scores={Mana=2..}] run execute as @s at @s run tag @s add Hold_BubbleWand
execute as @a[nbt={SelectedItem:{id:"minecraft:stick",tag:{JumpWand:1}}},scores={Mana=2..}] run execute as @s at @s run tag @s add Hold_JumpWand
execute as @a[nbt={SelectedItem:{id:"minecraft:stick",tag:{HealthWand:1}}},scores={Mana=5..}] run execute as @s at @s run tag @s add Hold_HealthWand
execute as @a[nbt={SelectedItem:{id:"minecraft:stick",tag:{LevitationWand:1}}},scores={Mana=2..}] run execute as @s at @s run tag @s add Hold_LevitationWand
execute as @a[nbt={SelectedItem:{id:"minecraft:stick",tag:{ManaWand:1}}}] run execute as @s at @s run tag @s add Hold_ManaWand

### Wand Execution Functions ###
execute as @a[tag=Hold_BubbleWand,scores={Mana=2..}] run execute as @s at @s run function arkane:libraries/magic/spells/water/bubble_spray
execute as @a[tag=Hold_BubbleWand,scores={Mana=2..}] run execute as @s at @s run scoreboard players remove @s Mana 2
execute as @a[tag=Hold_JumpWand,scores={Mana=2..}] run execute as @s at @s run effect give @s jump_boost 1 3 false
execute as @a[tag=Hold_JumpWand,scores={Mana=2..}] run execute as @s at @s run scoreboard players remove @s Mana 2
execute as @a[tag=Hold_HealthWand,scores={Mana=5..}] run execute as @s at @s run effect give @s regeneration 2 3 false
execute as @a[tag=Hold_HealthWand,scores={Mana=5..}] run execute as @s at @s run scoreboard players remove @s Mana 5
execute as @a[tag=Hold_LevitationWand,scores={Mana=3..}] run execute as @s at @s run effect give @s levitation 2 0 false
execute as @a[tag=Hold_LevitationWand,scores={Mana=3..}] run execute as @s at @s run scoreboard players remove @s Mana 3
execute as @a[tag=Hold_ManaWand] run execute as @s at @s run execute if score @s Mana < @s maxMana run scoreboard players add @s[tag=!ManaStunned] Mana 1

### Unfinished Spell Test Functions (Move these to their own files later) ###

execute as @a[tag=Cast_Cantrip,scores={Mana=..1000}] run scoreboard players add @s Mana 20
execute as @a[tag=Cast_Cantrip,scores={Mana=1000..}] run scoreboard players set @s Mana 1000
execute as @a[tag=Cast_Cantrip] run tellraw @s ["",{"text":"Your Mana is: "},{"score":{"name":"@s","objective":"Mana"}}]
tag @a[tag=Cast_Cantrip] remove Cast_Cantrip

execute as @a[tag=Cast_SmokeBomb,scores={Mana=25..}] at @s run execute as @s at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"poof",ReapplicationDelay:1,Radius:1f,RadiusPerTick:0.05f,RadiusOnUse:0f,Duration:200,Effects:[{Id:14b,Amplifier:1b,Duration:20}],CustomName:'{"text":"Smoke Bomb"}'}
execute as @a[tag=Cast_SmokeBomb,scores={Mana=25..}] run scoreboard players remove @s Mana 25
tag @a[tag=Cast_SmokeBomb] remove Cast_SmokeBomb
