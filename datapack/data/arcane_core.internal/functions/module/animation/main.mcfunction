#> arcane_core.internal:module/animation/main
#
# @internal

# enabled check in arcane_core.internal:core/entity/tick
execute unless entity @s[tag=arcane_core.internal.module.animation] run return 0

execute if entity @s[tag=arcane_core.internal.module.animation.skip_tick] run return run tag @s remove arcane_core.internal.module.animation.skip_tick

execute if entity @s[tag=arcane_core.internal.module.animation.tick] run function arcane_core.internal:module/animation/tick
execute if entity @s[tag=arcane_core.internal.module.animation.frame] run function arcane_core.internal:module/animation/frame
execute if entity @s[tag=arcane_core.internal.module.animation.root] run function arcane_core.internal:module/animation/root/tick
