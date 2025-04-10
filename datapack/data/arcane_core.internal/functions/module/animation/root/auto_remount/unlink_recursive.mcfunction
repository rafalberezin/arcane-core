#> arcane_core.internal:module/animation/root/auto_remount/unlink_recursive
#
# @internal

scoreboard players reset @s arcane_core.internal.module.animation.root.linked_to
execute on passengers if score @s arcane_core.internal.module.animation.root.linked_to matches 0.. run function arcane_core.internal:module/animation/root/auto_remount/unlink_recursive

