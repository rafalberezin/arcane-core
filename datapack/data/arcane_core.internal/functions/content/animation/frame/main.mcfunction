#> arcane_core.internal:content/animation/frame/main
#
# @internal
#
# @handles #arcane_core.internal:module/animation/frame

execute unless entity @s[tag=arcane_core.internal.animation] run return 0

execute if entity @s[tag=arcane_core.internal.animation.mana.mana_crystal] run function arcane_core.internal:content/animation/frame/mana/mana_crystal/main
