#> arcane_core.internal:content/cooldown/ended
#
# @internal

# execute unless entity @s[tag=!arcane_core.internal.cooldown.mana.mana_crystal] run return 0

tag @s remove arcane_core.internal.cooldown

function arcane_core.api:module/cooldown/ended
