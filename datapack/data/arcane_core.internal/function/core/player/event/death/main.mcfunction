#> arcane_core.internal:core/player/event/death/main
#
# @internal

tag @s add arcane_core.internal.event.death.processed

# This executes on new tick, so if the `immediate_respawn` gamerule is true,
# we need to position the execution to the place of the last death.
function arcane_core.internal:core/player/event/death/compat_store_gamerule

execute if score #arcane_core.internal:temp arcane_core.state matches 1 \
	run return run function arcane_core.internal:core/player/event/death/prepare_position
function #arcane_core.api:player/event/death
