#> arcane_core.internal:module/animation/root/auto_remount/setup
#
# @internal

execute on vehicle run scoreboard players operation #arcane_core.internal:temp arcane_core.internal.module.animation.root.link_id = @s arcane_core.internal.module.animation.root.link_id

scoreboard players operation @s arcane_core.internal.module.animation.root.linked_to = #arcane_core.internal:temp arcane_core.internal.module.animation.root.link_id
execute if function arcane_core.api:entity/if_has_passengers run function arcane_core.internal:module/animation/root/auto_remount/link_recursive
