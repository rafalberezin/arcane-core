#> arcane_core.internal:content/cooldown/main
#
# @internal

execute unless entity @s[tag=arcane_core.internal.cooldown] run return 0

execute if entity @s[tag=arcane_core.internal.cooldown.mana.mana_crystal] run function arcane_core.internal:content/cooldown/mana/mana_crystal/main
