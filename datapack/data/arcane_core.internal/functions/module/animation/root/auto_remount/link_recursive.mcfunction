#> arcane_core.internal:module/animation/root/auto_remount/link_recursive
#
# @internal

execute store result score @s arcane_core.internal.module.animation.root.link_id run random value 0..2147483646
scoreboard players operation #arcane_core.internal:temp arcane_core.internal.module.animation.root.link_id = @s arcane_core.internal.module.animation.root.link_id

execute on passengers run scoreboard players operation @s arcane_core.internal.module.animation.root.linked_to = #arcane_core.internal:temp arcane_core.internal.module.animation.root.link_id
execute on passengers if function arcane_core.api:entity/if_has_passengers run function arcane_core.internal:module/animation/root/auto_remount/link_recursive
