########## Magic Function ##########
#Author: TheRexYo
#Datapack: Arkane Datapack
#Purpose: Handles, triggers, and facilitates spells and similar effects within the game.
##################################################

##### Mana Functions #####
#Initialize maxMana score for those without it
execute as @a run execute as @s at @s run execute unless score @s maxMana matches 1.. run scoreboard players set @s Mana 0
execute as @a run execute as @s at @s run execute unless score @s maxMana matches 1.. run scoreboard players set @s maxMana 100
execute as @a run execute as @s at @s run execute unless score @s AutoCast matches 0..1 run scoreboard players set @s AutoCast 0
#Increase player mana unless they are "Mana Stunned".
execute as @a run execute as @s at @s run execute if score @s Mana < @s maxMana run scoreboard players add @s[tag=!ManaStunned] Mana 1
#Limit player's mana to their maximum mana.
execute as @a run execute as @s at @s run execute if score @s Mana >= @s maxMana run scoreboard players operation @s Mana = @s maxMana

##### Player Config Functions #####
execute as @a[tag=!Ban_AutoCast] run execute as @s at @s run scoreboard players enable @s AutoCast

##### Spell Functions #####
function arkane:libraries/magic/spells/spellfunction

##### Wand and Staff Functions #####
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

### Holding End Functions
execute as @a[tag=Hold_BubbleWand] run tag @s remove Hold_BubbleWand
execute as @a[tag=Hold_JumpWand] run tag @s remove Hold_JumpWand
execute as @a[tag=Hold_HealthWand] run tag @s remove Hold_HealthWand
execute as @a[tag=Hold_LevitationWand] run tag @s remove Hold_LevitationWand


##### Ending Functions #####
execute as @a run execute as @s[predicate=!arkane:spell_equipped] at @s run scoreboard players reset @s cast_spell