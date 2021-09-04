scoreboard objectives add Mana dummy "Mana"
scoreboard objectives add lifetime dummy "Lifetime"
scoreboard objectives add maxlifetime dummy "Maximum Lifetime"
#scoreboard objectives setdisplay sidebar Mana
scoreboard objectives add value dummy "Value"
scoreboard objectives add maxMana dummy "MaxMana"
scoreboard objectives add health dummy "Health"
scoreboard objectives add TakeDamage dummy
scoreboard objectives add PowerCooldown dummy "Cooldown"
scoreboard objectives add operation_a dummy
scoreboard objectives add operation_b dummy
scoreboard objectives add PowerCharge dummy "Charge"
scoreboard objectives add EffectDuration dummy "Effects Duration"
scoreboard objectives add cast_spell trigger
scoreboard objectives add Use_WrittenBook minecraft.used:minecraft.written_book
scoreboard objectives add AutoCast trigger "Auto Cast"
scoreboard players set @e lifetime 0
team add Earth "Earth"
team modify Earth color gold
team add Fire "Fire"
team modify Fire color red
execute as @a run execute as @s at @s run scoreboard players set @s maxMana 100
#execute as @a run execute as @s at @s run execute unless score @s maxMana matches 1.. run scoreboard players set @s maxMana 100
execute as @a run execute as @s at @s run scoreboard players set @s Mana 0
execute as @a run execute as @s at @s run scoreboard players operation @s Mana = @s maxMana
function arkane:libraries/display/mana/reset
tellraw @a ["",{"text":"Datapack Loaded - Arkane: Magical Survival!","bold":true,"italic":true,"color":"gold"}]
data merge storage arkane:utils {Loaded:"True"}