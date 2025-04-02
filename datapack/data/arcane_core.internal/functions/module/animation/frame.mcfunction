#> arcane_core.internal:module/animation/frame
#
# @internal

scoreboard players add @s arcane_core.api.module.animation.frame.timer 1
execute if score @s arcane_core.api.module.animation.frame.timer < @s arcane_core.api.module.animation.frame.length run return 0

function #arcane_core.internal:module/animation/frame

scoreboard players add @s arcane_core.api.module.animation.frame.frame 1
scoreboard players set @s arcane_core.api.module.animation.frame.timer 0
