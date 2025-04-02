#> arcane_core.api:module/animation/frame/apply
#
# Apply frame animation.
#
# @api
# @context entity

tag @s add arcane_core.internal.module.animation
tag @s add arcane_core.internal.module.animation.frame
tag @s add arcane_core.internal.module.animation.skip_tick

scoreboard players set @s arcane_core.api.module.animation.frame.frame 0
