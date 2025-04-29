#> arcane_core.internal:core/player/event/death/main
#
# @internal

tag @s add arcane_core.internal.event.death.processed

# This executes on new tick, so if the doImmediateRespawn gamerul is true,
# we need to position the execution to the place of the last death.
execute store result score #arcane_core.internal:temp arcane_core.state run gamerule doImmediateRespawn

execute if score #arcane_core.internal:temp arcane_core.state matches 1 run return run function arcane_core.internal:core/player/event/death/prepare_position
function #arcane_core.internal:core/player/event/death
