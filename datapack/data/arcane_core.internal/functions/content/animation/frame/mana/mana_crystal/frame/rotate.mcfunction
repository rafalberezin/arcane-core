#> arcane_core.internal:content/animation/frame/mana/mana_crystal/frame/rotate
#
# @internal

# frame duration is longer so the shard stays idle for some time
scoreboard players set @s arcane_core.api.module.animation.frame.length 10
data modify entity @s interpolation_duration set value 5

data modify entity @s start_interpolation set value 0
data modify entity @s transformation.left_rotation set value [0.271f, -0.653f, 0.271f, -0.653f]
