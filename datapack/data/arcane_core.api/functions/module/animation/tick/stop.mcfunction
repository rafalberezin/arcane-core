#> arcane_core.api:module/animation/tick/stop
#
# Stop tick animation.
#
# @api
# @context entity

tag @s remove arcane_core.internal.module.animation.tick
execute if entity @s[tag=!arcane_core.internal.module.animation.frame,tag=!arcane_core.internal.module.animation.root] run tag @s add arcane_core.internal.module.animation
