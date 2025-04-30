#> arcane_core.internal:content/animation/frame/mana/mana_crystal/create/setup_shard
#
# @internal

scoreboard players set @s arcane_core.api.module.animation.frame.length 1
scoreboard players set @s arcane_core.api.module.animation.frame.timer 0

tag @s add arcane_core.internal.animation
tag @s add arcane_core.internal.animation.mana.mana_crystal
function arcane_core.api:module/animation/frame/apply

loot replace entity @s container.0 loot arcane_core.internal:module/mana/mana_shard

data modify entity @s transformation.translation set value [0f, 1f, 0f]
data modify entity @s brightness set value {sky: 15, block: 15}

execute store result entity @s Rotation[0] float 1.0 run random value -180..179
execute store result entity @s Rotation[1] float 1.0 run random value -30..0

scoreboard players set @s arcane_core.state 2
scoreboard players operation @s arcane_core.state *= #arcane_core.internal:temp arcane_core.state

scoreboard players add #arcane_core.internal:temp arcane_core.state 1
execute if score #arcane_core.internal:temp arcane_core.state matches 10 run tag @s add arcane_core.internal.animation.mana.mana_crystal.last_shard
