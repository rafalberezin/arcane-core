#> arcane_core.internal:module/animation/root/auto_remount/teleport_recursive
#
# @internal

execute on passengers run function arcane_core.internal:module/animation/root/auto_remount/teleport_recursive

# Skip one animation tick on the passengers as the state changes may not persist after the teleportation
execute if entity @s[tag=arcane_core.internal.module.animation] run tag @s add arcane_core.internal.module.animation.skip_tick

ride @s dismount
tag @s add arcane_core.internal.module.animation.root.remount
tp @s ~ ~ ~
