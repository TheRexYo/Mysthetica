##############################################################################################################
# Author: BronGhast014
# Date: 3/10/19
# Description: random chance of success
##############################################################################################################

scoreboard players set @s BGSF_success 0
loot spawn ~ ~ ~ loot minecraft:precent/15
execute as @e[type=item,nbt={Item:{id:"minecraft:stone_button",tag:{Result:"Success"}}}] at @s run scoreboard players set @e[distance=0..2,type=!item,limit=1] BGSF_success 1
execute as @e[type=item,nbt={Item:{id:"minecraft:stone_button",tag:{Result:"Success"}}}] run kill @s