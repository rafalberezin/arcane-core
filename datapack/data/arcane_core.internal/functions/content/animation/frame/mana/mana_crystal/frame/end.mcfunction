#> arcane_core.internal:content/animation/frame/mana/mana_crystal/frame/start
#
# @internal

scoreboard players set @s arcane_core.api.module.animation.frame.length 3
data modify entity @s interpolation_duration set value 3

data modify entity @s start_interpolation set value 0
data modify entity @s transformation.translation set value [0f, 1f, 0f]
