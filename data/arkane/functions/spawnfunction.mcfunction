# Spawn Shuffling
execute as @s at @s run execute as @s[tag=Spawn_Shuffle] run execute as @s at @s run spreadplayers ~ ~ 1 16 true @s

# Terran Flats
execute as @s at @s run execute as @s[type=silverfish,predicate=biome:terran_flats,predicate=rng2:percent/20] run execute as @s at @s run tag @s add Replace_IronGolem
execute as @s at @s run execute as @s[type=iron_golem,predicate=biome:terran_flats,predicate=rng2:percent/80] run execute as @s at @s run function arkane:libraries/entities/mobs/earth_elemental/replace
execute as @s at @s run execute as @s[type=bat,predicate=biome:terran_flats] run execute as @s at @s run function arkane:libraries/entities/misc/living_earth/replace

# Cinder Plains
execute as @s at @s run execute as @s[type=blaze,predicate=biome:cinder_plains,predicate=rng2:percent/80] run execute as @s at @s run tag @s add Replace_Inferno

# Magnetic Spires
execute as @s at @s run execute as @s[type=silverfish,predicate=biome:magnetic_spires] run execute as @s at @s run tag @s add Replace_Lightning
execute as @s at @s run execute as @s[type=bat,predicate=biome:magnetic_spires] run execute as @s at @s run tag @s add Replace_Lightning

# Ash Barrens
execute as @s at @s run execute as @s[type=wither_skeleton,predicate=biome:ash_barrens,predicate=rng2:percent/80] run execute as @s at @s run function arkane:libraries/entities/mobs/ash_walker/replace

# Sand Sea
execute as @s at @s run execute as @s[type=zombie,predicate=biome:sand_sea] run execute as @s at @s run function arkane:libraries/entities/mobs/dust_devil/replace

# Infernal Beach
execute as @s at @s run execute as @s[type=blaze,predicate=biome:infernal_beach] run execute as @s at @s run function arkane:libraries/entities/mobs/salamander/replace

# Set Randoms
execute as @s at @s run execute as @s[tag=GetRandom] at @s run scoreboard players set @s RNG2 100
execute as @s at @s run execute as @s[tag=GetRandom] at @s run function rng2:get_random

# Replacements (Vanilla)
execute as @s at @s run execute as @s[tag=Replace_IronGolem] run execute as @s at @s run summon iron_golem ~ ~ ~ {Tags:["ResetSpawned"]}
execute as @s at @s run execute as @s[tag=Replace_IronGolem] run execute as @s at @s run tp @s ~ -1000 ~
execute as @s at @s run execute as @s[tag=Replace_IronGolem] run execute as @s at @s run kill @s

execute as @s at @s run execute as @s[tag=Replace_Blaze] run execute as @s at @s run summon blaze ~ ~ ~ {Tags:["ResetSpawned"]}
execute as @s at @s run execute as @s[tag=Replace_Blaze] run execute as @s at @s run tp @s ~ -1000 ~
execute as @s at @s run execute as @s[tag=Replace_Blaze] run execute as @s at @s run kill @s

execute as @s at @s run execute as @s[tag=Replace_Lightning] run execute as @s at @s run summon lightning_bolt ~ ~ ~ {Tags:["ResetSpawned"]}
execute as @s at @s run execute as @s[tag=Replace_Lightning] run execute as @s at @s run tp @s ~ -1000 ~
execute as @s at @s run execute as @s[tag=Replace_Lightning] run execute as @s at @s run kill @s

# Replacements (Custom Mobs)
execute as @s at @s run execute as @s[tag=Replace_Inferno] run execute as @s at @s run function arkane:libraries/entities/mobs/inferno/replace