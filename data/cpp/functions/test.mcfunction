##############################################################################################################
# Author: BronGhast014
# Date: 10/5/18
##############################################################################################################

loot spawn ~ ~ ~ loot minecraft:biome/get

execute if entity @e[nbt={Item:{id:"minecraft:stone_button",tag:{Biome:"Jungle"}}}] run say hi
#execute as @s if entity @e[nbt={Item:{id:"minecraft:stone_button",tag:{Biome:"Jungle"}}}] run say hi

#kill @e[nbt={Item:{id:"minecraft:stone_button",tag:{Biome:"Jungle"}}}]