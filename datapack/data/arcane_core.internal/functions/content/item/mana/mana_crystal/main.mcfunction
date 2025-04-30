#> arcane_core.internal:content/item/mana/mana_crystal/main
#
# @internal

execute unless score #arcane_core.internal:config.global.module.mana.mana_crystal.enabled arcane_core.config matches 1 run return 0

execute if function arcane_core.api:module/actionbar/if_can_then_use run function arcane_core.internal:content/item/mana/mana_crystal/info

execute unless function arcane_core.api:module/item/is_used run return 0
execute if score @s arcane_core.api.module.mana.max >= #arcane_core.internal:config.global.module.mana.max_mana.max arcane_core.config run return 0

execute if score #arcane_core.internal:config.global.module.mana.mana_crystal.animation arcane_core.config matches 1 if entity @s[tag=arcane_core.internal.cooldown.mana.mana_crystal] run return 0

execute unless function arcane_core.api:module/item/consume/current_1 run return 0

scoreboard players operation @s arcane_core.api.module.mana.max += #arcane_core.internal:config.global.module.mana.max_mana.gain arcane_core.config
scoreboard players operation @s arcane_core.api.module.mana.max < #arcane_core.internal:config.global.module.mana.max_mana.max arcane_core.config
scoreboard players operation @s arcane_core.api.module.mana.max > #arcane_core.api:const.0 arcane_core.math

# use a regular potion effect instead of a custom unclearable one
# for simplicity and to avoid activating the effects module
effect give @s minecraft:slowness 2 3 true

playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 0.5 0
playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 2 1
playsound minecraft:block.amethyst_block.resonate master @a ~ ~ ~ 0.5 0
playsound minecraft:block.bell.resonate master @a ~ ~ ~ 0.5 0
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.5 0
playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 2 0

particle minecraft:end_rod ~ ~1 ~ 0 0 0 0.2 20 normal
particle minecraft:soul_fire_flame ~ ~1 ~ 0 0 0 0.2 20 normal

title @s times 5t 2s 5t
title @s subtitle [ \
	 {"text": ""} \
	,{"text": "Max", "color": "#2bb5ff"} \
	,{"font": "arcane_core.icon:module", "translate": "arcane_core.icon:module.mana.crystal", "fallback": ""} \
	,{"text": " increased to "} \
	,{"score": {"name": "@s", "objective": "arcane_core.api.module.mana.max"}, "color": "#2bb5ff"} \
]
title @s title [{"text":""}]

execute unless score #arcane_core.internal:config.global.module.mana.mana_crystal.animation arcane_core.config matches 1 run return 0

function arcane_core.internal:content/cooldown/mana/mana_crystal/apply
function arcane_core.internal:content/animation/frame/mana/mana_crystal/create/main
