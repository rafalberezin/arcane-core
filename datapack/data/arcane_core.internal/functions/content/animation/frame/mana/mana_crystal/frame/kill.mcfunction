#> arcane_core.internal:content/animation/frame/mana/mana_crystal/frame/start
#
# @internal

particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.15 3 normal
particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.15 3 normal
playsound minecraft:block.amethyst_block.break master @a ~ ~1.5 ~ 0.5 0

function arcane_core.api:entity/kill
execute if entity @s[tag=arcane_core.internal.animation.mana.mana_crystal.last_shard] on vehicle run function arcane_core.api:entity/kill_recursive
