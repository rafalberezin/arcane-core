#> arcane_core.internal:module/item/main
#
# @internal
#
# @handles #arcane_core.internal:core/player/tick

execute unless score #arcane_core.internal:module.item.enabled arcane_core.api.state matches 1 run return 0

function arcane_core.internal:module/item/cache_data
execute unless data storage arcane_core.internal:module.item / run return 0

scoreboard players set #arcane_core.internal:module.item.primary arcane_core.api.state 1
scoreboard players set #arcane_core.internal:module.item.valid_cache arcane_core.api.state 1

execute if data storage arcane_core.internal:module.item /.mainhand.tick.function \
	run function arcane_core.internal:module/item/mainhand

execute unless score #arcane_core.internal:module.item.valid_cache arcane_core.api.state matches 1 \
	run function arcane_core.internal:module/item/cache_data

execute if data storage arcane_core.internal:module.item /.offhand.tick.function \
	run function arcane_core.internal:module/item/offhand


