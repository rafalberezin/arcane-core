#> arcane_core.internal:module/cooldown/main
#
# @internal
#
# @handles #arcane_core.internal:core/player/tick

execute unless score #arcane_core.internal:module.cooldown.enabled arcane_core.state matches 1 run return 0
execute if entity @s[tag=arcane_core.internal.module.cooldown] run function #arcane_core.internal:module/cooldown/tick
