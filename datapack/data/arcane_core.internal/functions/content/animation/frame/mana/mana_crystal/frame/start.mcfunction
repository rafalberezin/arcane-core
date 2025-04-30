#> arcane_core.internal:content/animation/frame/mana/mana_crystal/frame/start
#
# @internal

scoreboard players set @s arcane_core.api.module.animation.frame.length 5
data modify entity @s interpolation_duration set value 5

data modify entity @s start_interpolation set value 0
data modify entity @s transformation.translation set value [0f, 1f, 5f]

# arcane_core.state is an additional delay calculated at setup
# to stagger the animation between individual shards.
scoreboard players operation @s arcane_core.api.module.animation.frame.length += @s arcane_core.state
