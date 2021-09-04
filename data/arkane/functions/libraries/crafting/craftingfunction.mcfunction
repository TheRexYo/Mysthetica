# Crafting Starts
execute as @e[tag=!AdCraft,nbt={Item:{id:"minecraft:blaze_powder",tag:{display:{Name:'{"text":"Living Fire"}',Lore:['{"text":"It\'s seething with energy...","color":"gray","italic":true}']},LivingFire:1b}}}] at @s at @e[tag=!AdCraft,nbt={Item:{id:"minecraft:torch"}},distance=..1] unless entity @e[type=item,nbt={OnGround:0b},distance=..4] unless entity @e[distance=..1,scores={ItemCountTransf=1..}] run summon item ~ ~ ~ {Tags:["AdCraft"],PickupDelay:20,Item:{id:"minecraft:blaze_powder",Count:1b,tag:{display:{Name:'{"text":"Unstable Fire"}',Lore:['{"text":"If let free, this object could create a rift into the elemental planes.","color":"gray","italic":true}']},UnstableFire:1b,Unstable:1b}}}

# Crafting Results
execute as @e[tag=!AdCraft,nbt={Item:{id:"minecraft:blaze_powder",tag:{display:{Name:'{"text":"Living Fire"}',Lore:['{"text":"It\'s seething with energy...","color":"gray","italic":true}']},LivingFire:1b}}}] at @s at @e[tag=!AdCraft,nbt={Item:{id:"minecraft:torch"}},distance=..1] unless entity @e[type=item,nbt={OnGround:0b},distance=..4,tag=!AdCraft] run function libraries:floorcraft