#################################################################################################
#Author: BronGhast014
#http://bronghast014.weebly.com/
#https://www.youtube.com/channel/UCIcRQv3vxsl18xS2l2-0HYg
#Date: 6/1/2019
#Version: 1.14 +
#################################################################################################

advancement revoke @s only cpp:onhitbynauseamob
effect give @s nausea 7 11

#scoreboard players set @s BGSF_success 0
#loot spawn ~ ~ ~ loot minecraft:precent/50
#execute as @e[type=item,nbt={Item:{id:"minecraft:stone_button",tag:{Result:"Success"}}}] at @s run scoreboard players set @e[distance=0..2,type=!item,limit=1] BGSF_success 1
#execute as @e[type=item,nbt={Item:{id:"minecraft:stone_button",tag:{Result:"Success"}}}] at @s run say @s[distance=0..2,type=!item,limit=1]
#execute as @e[type=item,nbt={Item:{id:"minecraft:stone_button",tag:{Result:"Success"}}}] run kill @s

#execute as @s at @s run function bgsf:math/rand/1in2
#effect give @s[scores={BGSF_success=1..}] poison 4 1
#scoreboard players set @s BGSF_success 0
