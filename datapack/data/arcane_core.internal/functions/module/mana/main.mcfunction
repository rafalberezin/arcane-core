#> arcane_core.internal:module/mana/main
#
# @internal
#
# @handles #arcane_core.internal:core/player/tick

execute unless score #arcane_core.internal:module.mana.enabled arcane_core.state matches 1 run return 0

execute unless score @s arcane_core.api.module.mana.current >= @s arcane_core.api.module.mana.max if score @s arcane_core.api.module.mana.regen matches 1.. run function arcane_core.internal:module/mana/regen
