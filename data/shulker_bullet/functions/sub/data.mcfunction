#owner
data modify entity @s ArmorItems[3].tag.bullet_data.Owner.L set from entity @e[tag=shulker.temp.owner,limit=1] UUIDLeast
data modify entity @s ArmorItems[3].tag.bullet_data.Owner.M set from entity @e[tag=shulker.temp.owner,limit=1] UUIDMost

execute store result entity @s ArmorItems[3].tag.bullet_data.Owner.X int 1 run data get entity @e[tag=shulker.temp.owner,limit=1] Pos[0]
execute store result entity @s ArmorItems[3].tag.bullet_data.Owner.Y int 1 run data get entity @e[tag=shulker.temp.owner,limit=1] Pos[1]
execute store result entity @s ArmorItems[3].tag.bullet_data.Owner.Z int 1 run data get entity @e[tag=shulker.temp.owner,limit=1] Pos[2]

#target
data modify entity @s ArmorItems[3].tag.bullet_data.Target.L set from entity @e[tag=shulker.temp.target,limit=1] UUIDLeast
data modify entity @s ArmorItems[3].tag.bullet_data.Target.M set from entity @e[tag=shulker.temp.target,limit=1] UUIDMost

execute store result entity @s ArmorItems[3].tag.bullet_data.Target.X int 1 run data get entity @e[tag=shulker.temp.target,limit=1] Pos[0]
execute store result entity @s ArmorItems[3].tag.bullet_data.Target.Y int 1 run data get entity @e[tag=shulker.temp.target,limit=1] Pos[1]
execute store result entity @s ArmorItems[3].tag.bullet_data.Target.Z int 1 run data get entity @e[tag=shulker.temp.target,limit=1] Pos[2]

#copy to bullet
data modify entity @e[tag=shulker.temp.proj,limit=1,type=minecraft:shulker_bullet] {} merge from entity @s ArmorItems[3].tag.bullet_data