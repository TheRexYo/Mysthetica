tag @s add shulker.temp.owner
execute unless entity @e[tag=shulker.temp.target] run tag @e[distance=0.01..20,limit=1,sort=random,type=!shulker_bullet,type=!item,tag=!MagicMissile,tag=!Cast_MagicMissile] add shulker.temp.target
tag @e[tag=shulker.temp.target] add MagicMissile_Target
function shulker_bullet:sub/summon
execute as @e[tag=shulker.temp.data,limit=1,type=minecraft:armor_stand] run function shulker_bullet:sub/data

function shulker_bullet:sub/end