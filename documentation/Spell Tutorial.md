
# Phase 1: Creation

## Step 1: 
   Create a predicate file for the spell by copying one of the spell predicate files (located in "arkane:spells/") and modify values to reflect the new spell.
    
    To be precise, edit the following line (which will be different depending on the spell; just copy fireball.json if you don't know what I mean):

      "nbt": "{spellData:{Spell:\"Fireball\"}}"

     To match the name of the spell. For example:

      "nbt": "{spellData:{Spell:\"Example Spell Name\"}}"

    From here on out, this predicate will be referred to as the "Spell Predicate".

## Step 2: 
    Create a spell file (likely by copying another). The copy must be located in one of the category folders (which are themselves located in "arkane:libraries/magic/spells/").

## Step 3: 
    Under the "arkane:libraries/magic/spells/all" function, add an entry to the list (within the "##### Spells #####" header).

    It must use the following syntax in order to work as intended:

      #"Name Of Spell"

      execute as @a[tag=Cast_NameOfSpell,scores={Mana=25..}] at @s run execute as @s at @s run function arkane:libraries/magic/spells/_category_/_spell_name_

      execute as @a[tag=Cast_NameOfSpell,scores={Mana=25..}] at @s run execute as @s at @s run scoreboard players remove @s Mana 25

      execute as @a[tag=Cast_NameOfSpell] at @s run execute as @s at @s run tag @s remove Cast_NameOfSpell

## Step 4: 
    Under the "function arkane:libraries/magic/spells/all" function, add an entry to the list (within the "##### Spells #####" header).

    It must use the following syntax in order to work as intended:

      #"Name Of Spell"

      execute as @a[predicate=arkane:spells/_spell_predicate_,tag=!Cast_NameOfSpell,scores={Mana=25..}] at @s run execute as @s at @s run tag @s add Cast_NameOfSpell

## End Notes:

    If you've done everything correctly thus far, the spell itself should now function, but there won't be a spellbook for you to cast it with - proceed to the next (and last) section to add one if you wish.

# Phase 2: Implementation

The easiest way to actually add the spell so it can be used in-game is to add a "/give" command entry for it in the spellbook testing function ("arkane:give/loot/books/all").

## Step 1: 
    Under the "arkane:give/loot/books/all" function, add an entry to the list (under the "#### SPELLS ####" header).

    It must use the following syntax in order to work as intended:
    
      #"Name Of Spell"

      give @s written_book{display:{Name:'{"text":"Name Of Spell","color":"yellow","bold":true,"italic":true}',Lore:['{"text":"Spell Tier","color":"light_purple","bold":true}','{"text":"Spell Description.","color":"dark_purple","italic":true}']},HideFlags:1,SpellBook:1b,Uses:-1,spellData:{Spell:"Name Of Spell",Ritual:0b,MaxUses:-1,LimitedUse:0b},Enchantments:[{}],title:"Name Of Spell",author:"Spell Author",generation:3,resolved:1b,pages:['{"text":"Cast!","color":"gold","bold":true,"italic":true,"clickEvent":{"action":"run_command","value":"/trigger cast_spell set 1"}}','{"text":"\\"Spell Flavor Text\\"","color":"gold","italic":true}','[{"text":"\\"Spell Incantation\\"","color":"gold","bold":true,"italic":true},{"text":"\\n\\n(Spell Incantation Translation)"}]']} 1

## End Notes:
  Depending on whether you want to make the spellbook obtainable through normal methods (such as chests and drops), you may need to use loot tables. But that's a story for another time.
  
# Reference Notes

For those of you who don't get what exactly you are modifying, replace the following values (without quotes) as described.

  - "Name Of Spell" |->| The full (displayed) name of the spell.

  - "Spell Tier" |->| The tier text for the spell (eg. "Tier 1" or "Tier 3").

  - "Spell Tier" |->| The tier text for the spell (eg. "Tier 1" or "Tier 3").

  - "Spell Description" |->| The description text for the spell. Preferably, this should be a short and concise description of what the spell does.

  - "Spell Author" |->| The (in-lore) author of the spell. If the spell was discovered (in the lore) by an unknown person (or it wasn't discovered at all), just put "Unknown" (without the quotes) as this value (as always, leave the original quotes, just don't double quote it).

  - "Spell Flavor Text" |->| The flavor text for the spell. Preferably, this is a lore-friendly reference to a historic use of the spell.

  - "Spell Incantation" |->| The incantation text for the spell. Preferably, this is just an Arcane chant (typically in the Magi language) that is used to channel (cast) the spell in the lore.

  - "Spell Incantation Translation" |->| The incantation text for the spell, but translated into english.

  - "Cast_NameOfSpell" |->| Any name for a command tag, preferably in the format provided ("Cast_" and then the name of the spell).

  - "_category_" |->| The name of the spell file's category folder.

  - "_spell_name_" |->| The spell file's name.

  - "Mana=25.." |->| Change the value ('25') to match the cost of the spell.

  - "remove @s Mana 25" |->| Change the value ('25') to match the cost of the spell.

  - "_spell_predicate_" |->| Change to the spell predicate's file name.

# Afterword
Enjoy the spellcasting mayhem!
