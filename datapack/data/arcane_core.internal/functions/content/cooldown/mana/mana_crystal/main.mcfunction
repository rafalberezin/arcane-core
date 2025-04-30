#> arcane_core.internal:cooldown/mana/mana_crystal/main
#
# @internal

scoreboard players remove @s arcane_core.internal.cooldown.mana.mana_crystal 1

execute unless score @s arcane_core.internal.cooldown.mana.mana_crystal matches 1.. run function arcane_core.internal:content/cooldown/mana/mana_crystal/ended
