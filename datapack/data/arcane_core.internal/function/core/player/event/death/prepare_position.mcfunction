#> arcane_core.internal:core/player/event/death/prepare_position
#
# @internal

data modify storage arcane_core.internal:temp /.any set from entity @s LastDeathLocation
data modify storage arcane_core.internal:temp /.macro set value { function: "#arcane_core.api:player/event/death" }

data modify storage arcane_core.internal:temp /.macro.dim set from storage arcane_core.internal:temp /.any.dimension
data modify storage arcane_core.internal:temp /.macro.x set from storage arcane_core.internal:temp /.any.pos[0]
data modify storage arcane_core.internal:temp /.macro.y set from storage arcane_core.internal:temp /.any.pos[1]
data modify storage arcane_core.internal:temp /.macro.z set from storage arcane_core.internal:temp /.any.pos[2]

function arcane_core.internal:util/macro/call/full_positioned with storage arcane_core.internal:temp /.macro
