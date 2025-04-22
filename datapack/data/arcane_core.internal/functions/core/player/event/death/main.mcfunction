#> arcane_core.internal:core/player/event/death/main
#
# @internal

tag @s add arcane_core.internal.event.death.processed

# This executes on new tick, so if the doImmediateRespawn gamerul is true,
# we need to position the execution to the place of the last death.
execute store result score #arcane_core.internal:temp arcane_core.state run gamerule doImmediateRespawn

execute if score #arcane_core.internal:temp arcane_core.state matches 0 run return run function #arcane_core.internal:core/player/event/death

data modify storage arcane_core.internal:temp root.proxy set from entity @s LastDeathLocation
data modify storage arcane_core.internal:temp root.macro set value {}
data modify storage arcane_core.internal:temp root.macro.dim set from storage arcane_core.internal:temp root.proxy.dimension
data modify storage arcane_core.internal:temp root.macro.x set from storage arcane_core.internal:temp root.proxy.pos[0]
data modify storage arcane_core.internal:temp root.macro.y set from storage arcane_core.internal:temp root.proxy.pos[1]
data modify storage arcane_core.internal:temp root.macro.z set from storage arcane_core.internal:temp root.proxy.pos[2]

function arcane_core.internal:core/player/event/death/position with storage arcane_core.internal:temp root.macro
