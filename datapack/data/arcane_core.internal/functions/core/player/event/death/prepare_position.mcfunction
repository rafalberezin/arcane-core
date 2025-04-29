#> arcane_core.internal:core/player/event/death/prepare_position
#
# @internal

data modify storage arcane_core.internal:temp root.proxy set from entity @s LastDeathLocation
data modify storage arcane_core.internal:temp root.macro set value {}
data modify storage arcane_core.internal:temp root.macro.dim set from storage arcane_core.internal:temp root.proxy.dimension
data modify storage arcane_core.internal:temp root.macro.x set from storage arcane_core.internal:temp root.proxy.pos[0]
data modify storage arcane_core.internal:temp root.macro.y set from storage arcane_core.internal:temp root.proxy.pos[1]
data modify storage arcane_core.internal:temp root.macro.z set from storage arcane_core.internal:temp root.proxy.pos[2]

function arcane_core.internal:core/player/event/death/position with storage arcane_core.internal:temp root.macro
