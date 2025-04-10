#> arcane_core.internal:module/animation/root/tick
#
# @internal

# The remounting is split into 2 steps to avoid the internal race condition,
# where sometimes the entity is not yet accessible in the new dimension when the ride command runs.

# Why not tags? Read explanation in `arcane_core.internal:module/animation/root/teleport`.
execute unless score @s arcane_core.internal.module.animation.root.timeout matches 101 unless function arcane_core.api:entity/if_has_passengers run return run function arcane_core.api:entity/kill
execute if score @s arcane_core.internal.module.animation.root.timeout matches 101 as @e[tag=arcane_core.internal.module.animation.root.remount] run function arcane_core.internal:module/animation/root/auto_remount/remount

scoreboard players remove @s arcane_core.internal.module.animation.root.timeout 1

function arcane_core.api:entity/link/target/select
execute at @p[predicate=arcane_core.api:entity/link/owner/filter] run function arcane_core.internal:module/animation/root/teleport

execute unless score @s arcane_core.internal.module.animation.root.timeout matches 1.. run function arcane_core.api:entity/kill_recursive
