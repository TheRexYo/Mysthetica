########## Summon ("[NAME]") ##########
#Replace all instances of "[NAME]" (without quotation marks) with the singular name for the mob. Replace all instances of [NAME_P] (without quotation marks) with the plural name for the mob. Replace all instances of "template" (without quotation marks, noting the lack of brackets this time) with the mob's directory name. Replace all instances of Template (without quotation marks, noting the lack of brackets this time) with the title-case version of the mob's name.
#--|File Information|--
#Author: TheRexYo
#Datapack: NWM ("New World Monsters") Datapack
#Purpose: Replaces this entity with the entity "[NAME]".
#
##################################################

execute as @s at @s run function arkane:libraries/entities/mobs/inferno/summon
execute as @s at @s run tp @s ~ ~-600 ~
execute as @s at @s run kill @s
