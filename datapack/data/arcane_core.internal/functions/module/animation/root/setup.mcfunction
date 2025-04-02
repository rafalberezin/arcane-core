#> arcane_core.internal:module/animation/root/setup
#
# @internal

function arcane_core.api:entity/link/create/target

data modify entity @s CustomName set value '{"text": "Animation Root", "color": "#edb97e"}'
data modify entity @s teleport_duration set value 1

tag @s add arcane_core.internal.module.animation
tag @s add arcane_core.internal.module.animation.root

# this is just if/unless function chaining
return 1
