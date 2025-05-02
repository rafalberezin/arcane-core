#> arcane_core.internal:core/entity/tick
#
# @internal

execute if entity @s[tag=arcane_core.internal.entity.kill.dead] run return 0

function #arcane_core.api:entity/tick

execute if score #arcane_core.internal:module.effect.enabled arcane_core.state matches 1 run function arcane_core.internal:module/effect/main
execute if score #arcane_core.internal:module.animation.enabled arcane_core.state matches 1 run function arcane_core.internal:module/animation/main

execute if entity @s[tag=arcane_core.internal.entity.kill] run function arcane_core.internal:util/entity/kill
