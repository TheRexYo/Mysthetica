##############################################################################################################
# Author: BronGhast014
# Date: 3/14/18
##############################################################################################################

execute if entity @s positioned ^ ^ ^-0.1 run summon leash_knot ~ ~ ~ {Tags:["place"]}

execute if entity @s[scores={BGSF_direction=16}] positioned ^ ^ ^-0.1 run summon leash_knot ~ ~ ~ {Tags:["rot1"]}
execute if entity @s[scores={BGSF_direction=1..3}] positioned ^ ^ ^-0.1 run summon leash_knot ~ ~ ~ {Tags:["rot1"]}
execute if entity @s[scores={BGSF_direction=4..7}] positioned ^ ^ ^-0.1 run summon leash_knot ~ ~ ~ {Tags:["rot5"]}
execute if entity @s[scores={BGSF_direction=8..11}] positioned ^ ^ ^-0.1 run summon leash_knot ~ ~ ~ {Tags:["rot9"]}
execute if entity @s[scores={BGSF_direction=12..15}] positioned ^ ^ ^-0.1 run summon leash_knot ~ ~ ~ {Tags:["rot13"]}
