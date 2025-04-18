#> arcane_core.api:module/animation/root/select_player
#
# Select the player for mounting entities on it's animation root.
#
# Usage:
# 	1. run `arcane_core.api:module/animation/root/select_player` as the player you want to mount the entity to
# 	2. run `arcane_core.api:module/animation/root/mount_entity` as the entity you want to mount
#
# @api
# @context player

execute if entity @s[type=!minecraft:player] run return fail

execute if function arcane_core.api:entity/link/owner/select if entity @e[type=minecraft:item_display,tag=arcane_core.internal.module.animation.root,predicate=arcane_core.api:entity/link/target/filter] run return 1

function arcane_core.api:entity/link/owner/create
execute summon minecraft:item_display run function arcane_core.internal:module/animation/root/setup
function arcane_core.api:entity/link/owner/select

return 1
