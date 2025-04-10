#> arcane_core.api:module/animation/root/mount_entity
#
# Mount this entity on the animation root of the selected player.
#
# Usage:
# 	1. run `arcane_core.api:module/animation/root/select_player` as the player you want to mount the entity to
# 	2. run `arcane_core.api:module/animation/root/mount_entity` as the entity you want to mount
#
# The animation root provides binding of the entire entity passenger tree
# to be automatically teleported and remounted when traveling across dimensions.
# If you want to keep your entity after dismounting from the animation root
# you need to call `arcane_core.api:module/animation/root/dismount_entity`.
#
# @api
# @context entity to mount

execute store success score #arcane_core.internal:temp arcane_core.state run ride @s mount @e[type=minecraft:item_display,tag=arcane_core.internal.module.animation.root,predicate=arcane_core.api:entity/link/target/filter,limit=1]

execute if score #arcane_core.internal:temp arcane_core.state matches 1 run return run function arcane_core.internal:module/animation/root/auto_remount/setup
return fail
