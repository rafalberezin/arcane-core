#> arcane_core.internal:content/animation/frame/mana/mana_crystal/main
#
# @internal

execute if score @s arcane_core.api.module.animation.frame.frame matches 0 run function arcane_core.internal:content/animation/frame/mana/mana_crystal/frame/start
execute if score @s arcane_core.api.module.animation.frame.frame matches 1 run function arcane_core.internal:content/animation/frame/mana/mana_crystal/frame/rotate
execute if score @s arcane_core.api.module.animation.frame.frame matches 2 run function arcane_core.internal:content/animation/frame/mana/mana_crystal/frame/end
execute if score @s arcane_core.api.module.animation.frame.frame matches 3.. run function arcane_core.internal:content/animation/frame/mana/mana_crystal/frame/kill
