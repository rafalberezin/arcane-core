#> arcane_core.api:module/animation/frame/stop
#
# Stop frame animation.
#
# @api
# @context entity

tag @s remove arcane_core.internal.module.animation.frame
execute if entity @s[tag=!arcane_core.internal.module.animation.tick,tag=!arcane_core.internal.module.animation.root] run tag @s add arcane_core.internal.module.animation
