#> arcane_core.internal:module/animation/tick
#
# @internal

scoreboard players add @s arcane_core.api.module.animation.tick.timer 1

execute if score @s arcane_core.api.module.animation.tick.timer matches ..-1 run return 1

function #arcane_core.api:module/animation/tick

execute if entity @s[tag=arcane_core.internal.module.animation.auto_kill] if score @s arcane_core.api.module.animation.tick.timer >= @s arcane_core.api.module.animation.tick.length run function arcane_core.api:entity/kill_recursive
