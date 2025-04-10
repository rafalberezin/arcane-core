#> arcane_core.internal:module/animation/root/setup
#
# @internal

function arcane_core.api:entity/link/target/link
execute store result score @s arcane_core.internal.module.animation.root.link_id run random value 0..2147483646

data modify entity @s CustomName set value '{"text": "Animation Root", "color": "#edb97e"}'
data modify entity @s teleport_duration set value 1

tag @s add arcane_core.internal.module.animation
tag @s add arcane_core.internal.module.animation.root
