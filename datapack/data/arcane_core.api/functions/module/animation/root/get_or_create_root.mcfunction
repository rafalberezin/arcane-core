#> arcane_core.api:module/animation/root/get_or_create_root
#
# Get the animation root of the given player.
# Create a new root if the player doesn't have one.
#
# Then run the 'run' macro as that root and return it's result.
#
# Example:
# ```
# function arcane_core.api:module/animation/root/get_or_create_root {run:"function my_namespace:function/to/run/as/animation/root"}
# ```
#
# TIP: Minimize this function's use for best performance.
# Create your own entity with a custom effect or animation (tick/frame)
# and attach it to this root using `/ride`.
#
# @api
# @context player
#
# @input
# 	macro
# 		run: `string`
# 			command to run as the root (without /)

execute if entity @s[type=!minecraft:player] run return fail

$execute if function arcane_core.api:entity/link/find_targets/cache_owner as @e[type=minecraft:item_display, tag=arcane_core.internal.module.animation.root] if function arcane_core.api:entity/link/find_targets/filter_targets at @s run return run $(run)

function arcane_core.api:entity/link/create/owner
$execute summon minecraft:item_display at @s if function arcane_core.internal:module/animation/root/setup run return run $(run)
