
#> arcane_core.internal:module/animation/root/auto_remount/remount
#
# @internal

scoreboard players operation #arcane_core.internal:temp arcane_core.internal.module.animation.root.link_id = @s arcane_core.internal.module.animation.root.linked_to
ride @s mount @e[predicate=arcane_core.internal:module/animation/root/filter_owner,limit=1]
tag @s remove arcane_core.internal.module.animation.root.remount
