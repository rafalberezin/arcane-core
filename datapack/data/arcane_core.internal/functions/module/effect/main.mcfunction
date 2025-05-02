#> arcane_core.internal:module/effect/main
#
# @internal

execute unless score #arcane_core.internal:module.effect.enabled arcane_core.state matches 1 run return 0

function #arcane_core.api:module/effect/tick

execute if entity @s[tag=arcane_core.internal.effect.clear] run function arcane_core.internal:module/effect/clear
execute if entity @s[tag=arcane_core.internal.effect.ended] run function arcane_core.internal:module/effect/ended
